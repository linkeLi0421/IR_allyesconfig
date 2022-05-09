; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/ovly827e.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/ovly827e.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_wndw_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nv50_wndw = type { ptr, ptr, i32, %struct.nv50_disp_interlock, %struct.anon.141, %struct.drm_plane, %struct.nv50_lut, %struct.nv50_dmac, %struct.nv50_dmac, %struct.nvif_notify, i16, i16, i32 }
%struct.nv50_disp_interlock = type { i32, i32, i32 }
%struct.anon.141 = type { ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.95 }
%struct.anon.95 = type { ptr, i64 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nv50_wndw_atom = type { %struct.drm_plane_state, ptr, i8, %struct.anon.116, %struct.anon.117, [4 x i8], %struct.anon.118, %struct.anon.120, %struct.anon.121, %struct.anon.122, %struct.anon.123, %struct.anon.124, %union.nv50_wndw_atom_mask, %union.nv50_wndw_atom_mask }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.anon.116 = type { i32, i16 }
%struct.anon.117 = type { i32, i16, i32, i32 }
%struct.anon.118 = type { i32, [4 x i8], %struct.anon.119 }
%struct.anon.119 = type { [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.120 = type { [12 x i32], i8 }
%struct.anon.121 = type { i8, i8, i16, [3 x i16], [3 x i32], i16, i16, [6 x i32], [6 x i64] }
%struct.anon.122 = type { i16, i16, i16, i16, i16, i16 }
%struct.anon.123 = type { i16, i16 }
%struct.anon.124 = type { i8, i8, i8 }
%union.nv50_wndw_atom_mask = type { %struct.anon.125 }
%struct.anon.125 = type { i8 }

@ovly827e_format = dso_local constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1448695129, i32 1498831189, i32 875713112, i32 892424792, i32 808665688, i32 0], [40 x i8] zeroinitializer }, align 32
@ovly827e = internal constant { %struct.nv50_wndw_func, [36 x i8] } { %struct.nv50_wndw_func { ptr @ovly507e_acquire, ptr @ovly507e_release, ptr null, ptr null, ptr null, ptr @ovly827e_ntfy_reset, ptr @base507c_ntfy_set, ptr @base507c_ntfy_clr, ptr @ovly827e_ntfy_wait_begun, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, i8 0, ptr null, ptr null, ptr @ovly827e_image_set, ptr @base507c_image_clr, ptr @ovly507e_scale_set, ptr null, ptr @base507c_update }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/ovly827e.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.ovly827e_image_set = private unnamed_addr constant [19 x i8] c"ovly827e_image_set\00", align 1
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827E_SET_PRESENT_CONTROL\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827E_SET_CONTEXT_DMA_ISO\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827E_SET_COMPOSITION_CONTROL\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827E_SURFACE_SET_OFFSET\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827E_SURFACE_SET_SIZE\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827E_SURFACE_SET_STORAGE\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827E_SURFACE_SET_PARAMS\0A\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"ovly827e_format\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 105, i32 1 }
@___asan_gen_.18 = private unnamed_addr constant [9 x i8] c"ovly827e\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 91, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 41, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 45, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 47, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 50, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/ovly827e.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 52, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @ovly827e_format, ptr @ovly827e, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovly827e_format to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovly827e to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovly827e_ntfy_wait_begun(ptr noundef %bo, i32 noundef %offset, ptr noundef %device) #0 align 64 {
entry:
  %_wait = alloca %struct.nvif_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #4
  %0 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvif_timer_wait_init(ptr noundef %device, i64 noundef 2000000000, ptr noundef nonnull %_wait) #4
  %div9 = lshr i32 %offset, 2
  %add = add nuw nsw i32 %div9, 3
  %call11 = call i32 @nouveau_bo_rd32(ptr noundef %bo, i32 noundef %add) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %call11)
  %cmp12 = icmp ugt i32 %call11, -65537
  br i1 %cmp12, label %entry.do.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.body:                                          ; preds = %if.end
  %call = call i32 @nouveau_bo_rd32(ptr noundef %bo, i32 noundef %add) #4
  %cmp = icmp ugt i32 %call, -65537
  br i1 %cmp, label %do.body.do.end_crit_edge, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end:                                           ; preds = %do.body.if.end_crit_edge, %entry.if.end_crit_edge
  call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #4
  %call2 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %_wait) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call2)
  %cmp3 = icmp sgt i64 %call2, -1
  br i1 %cmp3, label %do.body, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %do.body.do.end_crit_edge, %entry.do.end_crit_edge
  %_taken.1 = phi i64 [ 0, %entry.do.end_crit_edge ], [ %call2, %do.body.do.end_crit_edge ], [ %call2, %if.end.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  %1 = call i64 @llvm.smin.i64(i64 %_taken.1, i64 0)
  %2 = trunc i64 %1 to i32
  ret i32 %2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovly827e_ntfy_reset(ptr noundef %bo, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %div13 = lshr i32 %offset, 2
  tail call void @nouveau_bo_wr32(ptr noundef %bo, i32 noundef %div13, i32 noundef 0) #4
  %add2 = add nuw nsw i32 %div13, 1
  tail call void @nouveau_bo_wr32(ptr noundef %bo, i32 noundef %add2, i32 noundef 0) #4
  %add4 = add nuw nsw i32 %div13, 2
  tail call void @nouveau_bo_wr32(ptr noundef %bo, i32 noundef %add4, i32 noundef 0) #4
  %add6 = add nuw nsw i32 %div13, 3
  tail call void @nouveau_bo_wr32(ptr noundef %bo, i32 noundef %add6, i32 noundef -2147483648) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovly827e_new(ptr noundef %drm, i32 noundef %head, i32 noundef %oclass, ptr noundef %pwndw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %head, 3
  %shl = shl i32 4, %mul
  %call = tail call i32 @ovly507e_new_(ptr noundef nonnull @ovly827e, ptr noundef nonnull @ovly827e_format, ptr noundef %drm, i32 noundef %head, i32 noundef %oclass, i32 noundef %shl, ptr noundef %pwndw) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovly507e_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovly507e_acquire(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovly507e_release(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_ntfy_set(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_ntfy_clr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovly827e_image_set(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 12
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end44_crit_edge, label %if.then.i

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end44_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.if.end44_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.end44:                                         ; preds = %if.then.i.if.end44_crit_edge, %entry.if.end44_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 12
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !34

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !34

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end117

if.end117:                                        ; preds = %do.end111, %if.end80.if.end117_crit_edge
  %15 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 6
  %17 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 3
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %handle, align 4
  %name134 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262276, i32 noundef 132, i32 noundef 1, ptr noundef nonnull @__func__.ovly827e_image_set) #4
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262276, ptr %34, align 4
  %image = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8
  %36 = ptrtoint ptr %image to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %image, align 8
  %37 = shl i8 %bf.load, 2
  %38 = and i8 %37, -16
  %conv147 = zext i8 %38 to i32
  %39 = load ptr, ptr %cur.i, align 4
  %40 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %seg.i, align 8
  %cmp152.not = icmp ult ptr %39, %41
  br i1 %cmp152.not, label %if.end117.if.end177_crit_edge, label %do.end171, !prof !34

if.end117.if.end177_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end177

do.end171:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end177

if.end177:                                        ; preds = %do.end171, %if.end117.if.end177_crit_edge
  %42 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cur.i, align 4
  %44 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %end.i, align 4
  %cmp191.not = icmp ult ptr %43, %45
  br i1 %cmp191.not, label %if.end177.if.end216_crit_edge, label %do.end210, !prof !34

if.end177.if.end216_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end216

do.end210:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end216

if.end216:                                        ; preds = %do.end210, %if.end177.if.end216_crit_edge
  %46 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur.i, align 4
  %48 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast234 = ptrtoint ptr %47 to i32
  %sub.ptr.rhs.cast235 = ptrtoint ptr %49 to i32
  %sub.ptr.sub236 = sub i32 %sub.ptr.lhs.cast234, %sub.ptr.rhs.cast235
  %50 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mem, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %56 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %client, align 4
  %name248 = getelementptr inbounds %struct.nvif_object, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %name248 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name248, align 8
  %60 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %handle, align 4
  %62 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %55(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %59, i32 noundef %61, ptr noundef %63, i32 noundef %sub.ptr.sub236, i32 noundef %conv147) #4
  %64 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur.i, align 4
  %incdec.ptr257 = getelementptr i32, ptr %65, i32 1
  store ptr %incdec.ptr257, ptr %cur.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv147, ptr %65, align 4
  %67 = load ptr, ptr %cur.i, align 4
  %68 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %seg.i, align 8
  %cmp329.not = icmp ult ptr %67, %69
  br i1 %cmp329.not, label %if.end216.if.end354_crit_edge, label %do.end348, !prof !34

if.end216.if.end354_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end354

do.end348:                                        ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end354

if.end354:                                        ; preds = %do.end348, %if.end216.if.end354_crit_edge
  %70 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cur.i, align 4
  %72 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %end.i, align 4
  %cmp368.not = icmp ult ptr %71, %73
  br i1 %cmp368.not, label %if.end354.if.end393_crit_edge, label %do.end387, !prof !34

if.end354.if.end393_crit_edge:                    ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end393

do.end387:                                        ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end393

if.end393:                                        ; preds = %do.end387, %if.end354.if.end393_crit_edge
  %74 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cur.i, align 4
  %76 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast411 = ptrtoint ptr %75 to i32
  %sub.ptr.rhs.cast412 = ptrtoint ptr %77 to i32
  %sub.ptr.sub413 = sub i32 %sub.ptr.lhs.cast411, %sub.ptr.rhs.cast412
  %78 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mem, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %84 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %client, align 4
  %name425 = getelementptr inbounds %struct.nvif_object, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %name425 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %name425, align 8
  %88 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %handle, align 4
  %90 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %83(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %87, i32 noundef %89, ptr noundef %91, i32 noundef %sub.ptr.sub413, i32 noundef 262336, i32 noundef 192, i32 noundef 1, ptr noundef nonnull @__func__.ovly827e_image_set) #4
  %92 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cur.i, align 4
  %incdec.ptr434 = getelementptr i32, ptr %93, i32 1
  store ptr %incdec.ptr434, ptr %cur.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 262336, ptr %93, align 4
  %handle443 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 7
  %95 = ptrtoint ptr %handle443 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %handle443, align 4
  %97 = load ptr, ptr %cur.i, align 4
  %98 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %seg.i, align 8
  %cmp448.not = icmp ult ptr %97, %99
  br i1 %cmp448.not, label %if.end393.if.end473_crit_edge, label %do.end467, !prof !34

if.end393.if.end473_crit_edge:                    ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end473

do.end467:                                        ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end473

if.end473:                                        ; preds = %do.end467, %if.end393.if.end473_crit_edge
  %100 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur.i, align 4
  %102 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %end.i, align 4
  %cmp487.not = icmp ult ptr %101, %103
  br i1 %cmp487.not, label %if.end473.if.end512_crit_edge, label %do.end506, !prof !34

if.end473.if.end512_crit_edge:                    ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end512

do.end506:                                        ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end512

if.end512:                                        ; preds = %do.end506, %if.end473.if.end512_crit_edge
  %104 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cur.i, align 4
  %106 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast530 = ptrtoint ptr %105 to i32
  %sub.ptr.rhs.cast531 = ptrtoint ptr %107 to i32
  %sub.ptr.sub532 = sub i32 %sub.ptr.lhs.cast530, %sub.ptr.rhs.cast531
  %108 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mem, align 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %114 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %client, align 4
  %name544 = getelementptr inbounds %struct.nvif_object, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %name544 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %name544, align 8
  %118 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %handle, align 4
  %120 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %113(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %117, i32 noundef %119, ptr noundef %121, i32 noundef %sub.ptr.sub532, i32 noundef %96) #4
  %122 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur.i, align 4
  %incdec.ptr553 = getelementptr i32, ptr %123, i32 1
  store ptr %incdec.ptr553, ptr %cur.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %96, ptr %123, align 4
  %125 = load ptr, ptr %cur.i, align 4
  %126 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %seg.i, align 8
  %cmp625.not = icmp ult ptr %125, %127
  br i1 %cmp625.not, label %if.end512.if.end650_crit_edge, label %do.end644, !prof !34

if.end512.if.end650_crit_edge:                    ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end650

do.end644:                                        ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end650

if.end650:                                        ; preds = %do.end644, %if.end512.if.end650_crit_edge
  %128 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cur.i, align 4
  %130 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %end.i, align 4
  %cmp664.not = icmp ult ptr %129, %131
  br i1 %cmp664.not, label %if.end650.if.end689_crit_edge, label %do.end683, !prof !34

if.end650.if.end689_crit_edge:                    ; preds = %if.end650
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end689

do.end683:                                        ; preds = %if.end650
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end689

if.end689:                                        ; preds = %do.end683, %if.end650.if.end689_crit_edge
  %132 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cur.i, align 4
  %134 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast707 = ptrtoint ptr %133 to i32
  %sub.ptr.rhs.cast708 = ptrtoint ptr %135 to i32
  %sub.ptr.sub709 = sub i32 %sub.ptr.lhs.cast707, %sub.ptr.rhs.cast708
  %136 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mem, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %142 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %client, align 4
  %name721 = getelementptr inbounds %struct.nvif_object, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %name721 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %name721, align 8
  %146 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %handle, align 4
  %148 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %141(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %145, i32 noundef %147, ptr noundef %149, i32 noundef %sub.ptr.sub709, i32 noundef 262400, i32 noundef 256, i32 noundef 1, ptr noundef nonnull @__func__.ovly827e_image_set) #4
  %150 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cur.i, align 4
  %incdec.ptr730 = getelementptr i32, ptr %151, i32 1
  store ptr %incdec.ptr730, ptr %cur.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 262400, ptr %151, align 4
  %153 = load ptr, ptr %cur.i, align 4
  %154 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %seg.i, align 8
  %cmp742.not = icmp ult ptr %153, %155
  br i1 %cmp742.not, label %if.end689.if.end767_crit_edge, label %do.end761, !prof !34

if.end689.if.end767_crit_edge:                    ; preds = %if.end689
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end767

do.end761:                                        ; preds = %if.end689
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end767

if.end767:                                        ; preds = %do.end761, %if.end689.if.end767_crit_edge
  %156 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cur.i, align 4
  %158 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %end.i, align 4
  %cmp781.not = icmp ult ptr %157, %159
  br i1 %cmp781.not, label %if.end767.if.end806_crit_edge, label %do.end800, !prof !34

if.end767.if.end806_crit_edge:                    ; preds = %if.end767
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end806

do.end800:                                        ; preds = %if.end767
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end806

if.end806:                                        ; preds = %do.end800, %if.end767.if.end806_crit_edge
  %160 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cur.i, align 4
  %162 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast824 = ptrtoint ptr %161 to i32
  %sub.ptr.rhs.cast825 = ptrtoint ptr %163 to i32
  %sub.ptr.sub826 = sub i32 %sub.ptr.lhs.cast824, %sub.ptr.rhs.cast825
  %164 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mem, align 8
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %170 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %client, align 4
  %name838 = getelementptr inbounds %struct.nvif_object, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %name838 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %name838, align 8
  %174 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %handle, align 4
  %176 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %169(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %173, i32 noundef %175, ptr noundef %177, i32 noundef %sub.ptr.sub826, i32 noundef 2) #4
  %178 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %cur.i, align 4
  %incdec.ptr847 = getelementptr i32, ptr %179, i32 1
  store ptr %incdec.ptr847, ptr %cur.i, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 2, ptr %179, align 4
  %181 = load ptr, ptr %cur.i, align 4
  %182 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %seg.i, align 8
  %cmp919.not = icmp ult ptr %181, %183
  br i1 %cmp919.not, label %if.end806.if.end944_crit_edge, label %do.end938, !prof !34

if.end806.if.end944_crit_edge:                    ; preds = %if.end806
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end944

do.end938:                                        ; preds = %if.end806
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 50, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end944

if.end944:                                        ; preds = %do.end938, %if.end806.if.end944_crit_edge
  %184 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %cur.i, align 4
  %186 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %end.i, align 4
  %cmp958.not = icmp ult ptr %185, %187
  br i1 %cmp958.not, label %if.end944.if.end983_crit_edge, label %do.end977, !prof !34

if.end944.if.end983_crit_edge:                    ; preds = %if.end944
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end983

do.end977:                                        ; preds = %if.end944
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 50, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end983

if.end983:                                        ; preds = %do.end977, %if.end944.if.end983_crit_edge
  %188 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cur.i, align 4
  %190 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1001 = ptrtoint ptr %189 to i32
  %sub.ptr.rhs.cast1002 = ptrtoint ptr %191 to i32
  %sub.ptr.sub1003 = sub i32 %sub.ptr.lhs.cast1001, %sub.ptr.rhs.cast1002
  %192 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mem, align 8
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %193, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %198 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %client, align 4
  %name1015 = getelementptr inbounds %struct.nvif_object, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %name1015 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %name1015, align 8
  %202 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %handle, align 4
  %204 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %197(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %201, i32 noundef %203, ptr noundef %205, i32 noundef %sub.ptr.sub1003, i32 noundef 264192, i32 noundef 2048, i32 noundef 1, ptr noundef nonnull @__func__.ovly827e_image_set) #4
  %206 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1024 = getelementptr i32, ptr %207, i32 1
  store ptr %incdec.ptr1024, ptr %cur.i, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 264192, ptr %207, align 4
  %offset = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 8
  %209 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %offset, align 8
  %shr = lshr i64 %210, 8
  %conv1034 = trunc i64 %shr to i32
  %211 = load ptr, ptr %cur.i, align 4
  %212 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %seg.i, align 8
  %cmp1039.not = icmp ult ptr %211, %213
  br i1 %cmp1039.not, label %if.end983.if.end1064_crit_edge, label %do.end1058, !prof !34

if.end983.if.end1064_crit_edge:                   ; preds = %if.end983
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1064

do.end1058:                                       ; preds = %if.end983
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 50, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end1064

if.end1064:                                       ; preds = %do.end1058, %if.end983.if.end1064_crit_edge
  %214 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %cur.i, align 4
  %216 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %end.i, align 4
  %cmp1078.not = icmp ult ptr %215, %217
  br i1 %cmp1078.not, label %if.end1064.if.end1103_crit_edge, label %do.end1097, !prof !34

if.end1064.if.end1103_crit_edge:                  ; preds = %if.end1064
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1103

do.end1097:                                       ; preds = %if.end1064
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 50, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end1103

if.end1103:                                       ; preds = %do.end1097, %if.end1064.if.end1103_crit_edge
  %218 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %cur.i, align 4
  %220 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1121 = ptrtoint ptr %219 to i32
  %sub.ptr.rhs.cast1122 = ptrtoint ptr %221 to i32
  %sub.ptr.sub1123 = sub i32 %sub.ptr.lhs.cast1121, %sub.ptr.rhs.cast1122
  %222 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %mem, align 8
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 4
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %225, align 4
  %228 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %client, align 4
  %name1135 = getelementptr inbounds %struct.nvif_object, ptr %229, i32 0, i32 2
  %230 = ptrtoint ptr %name1135 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %name1135, align 8
  %232 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %handle, align 4
  %234 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %227(ptr noundef %mem, ptr noundef nonnull @.str.9, ptr noundef %231, i32 noundef %233, ptr noundef %235, i32 noundef %sub.ptr.sub1123, i32 noundef %conv1034) #4
  %236 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1144 = getelementptr i32, ptr %237, i32 1
  store ptr %incdec.ptr1144, ptr %cur.i, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %conv1034, ptr %237, align 4
  %239 = load ptr, ptr %cur.i, align 4
  %240 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %seg.i, align 8
  %cmp1276.not = icmp ult ptr %239, %241
  br i1 %cmp1276.not, label %if.end1103.if.end1301_crit_edge, label %do.end1295, !prof !34

if.end1103.if.end1301_crit_edge:                  ; preds = %if.end1103
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1301

do.end1295:                                       ; preds = %if.end1103
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end1301

if.end1301:                                       ; preds = %do.end1295, %if.end1103.if.end1301_crit_edge
  %242 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %cur.i, align 4
  %244 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %end.i, align 4
  %cmp1315.not = icmp ult ptr %243, %245
  br i1 %cmp1315.not, label %if.end1301.if.end1340_crit_edge, label %do.end1334, !prof !34

if.end1301.if.end1340_crit_edge:                  ; preds = %if.end1301
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1340

do.end1334:                                       ; preds = %if.end1301
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end1340

if.end1340:                                       ; preds = %do.end1334, %if.end1301.if.end1340_crit_edge
  %246 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %cur.i, align 4
  %248 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1358 = ptrtoint ptr %247 to i32
  %sub.ptr.rhs.cast1359 = ptrtoint ptr %249 to i32
  %sub.ptr.sub1360 = sub i32 %sub.ptr.lhs.cast1358, %sub.ptr.rhs.cast1359
  %250 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %mem, align 8
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 4
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %253, align 4
  %256 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %client, align 4
  %name1372 = getelementptr inbounds %struct.nvif_object, ptr %257, i32 0, i32 2
  %258 = ptrtoint ptr %name1372 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %name1372, align 8
  %260 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %handle, align 4
  %262 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %255(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %259, i32 noundef %261, ptr noundef %263, i32 noundef %sub.ptr.sub1360, i32 noundef 788488, i32 noundef 2056, i32 noundef 3, ptr noundef nonnull @__func__.ovly827e_image_set) #4
  %264 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1381 = getelementptr i32, ptr %265, i32 1
  store ptr %incdec.ptr1381, ptr %cur.i, align 4
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 788488, ptr %265, align 4
  %w = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 5
  %267 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %w, align 8
  %269 = and i16 %268, 32767
  %and1391 = zext i16 %269 to i32
  %h = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 6
  %270 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %h, align 2
  %272 = and i16 %271, 32767
  %and1395 = zext i16 %272 to i32
  %shl1396 = shl nuw nsw i32 %and1395, 16
  %or1397 = or i32 %shl1396, %and1391
  %273 = load ptr, ptr %cur.i, align 4
  %274 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %seg.i, align 8
  %cmp1403.not = icmp ult ptr %273, %275
  br i1 %cmp1403.not, label %if.end1340.if.end1428_crit_edge, label %do.end1422, !prof !34

if.end1340.if.end1428_crit_edge:                  ; preds = %if.end1340
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1428

do.end1422:                                       ; preds = %if.end1340
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end1428

if.end1428:                                       ; preds = %do.end1422, %if.end1340.if.end1428_crit_edge
  %276 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %cur.i, align 4
  %278 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %end.i, align 4
  %cmp1442.not = icmp ult ptr %277, %279
  br i1 %cmp1442.not, label %if.end1428.if.end1467_crit_edge, label %do.end1461, !prof !34

if.end1428.if.end1467_crit_edge:                  ; preds = %if.end1428
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1467

do.end1461:                                       ; preds = %if.end1428
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end1467

if.end1467:                                       ; preds = %do.end1461, %if.end1428.if.end1467_crit_edge
  %280 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %cur.i, align 4
  %282 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1485 = ptrtoint ptr %281 to i32
  %sub.ptr.rhs.cast1486 = ptrtoint ptr %283 to i32
  %sub.ptr.sub1487 = sub i32 %sub.ptr.lhs.cast1485, %sub.ptr.rhs.cast1486
  %284 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %mem, align 8
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %285, align 4
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %287, align 4
  %290 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %client, align 4
  %name1499 = getelementptr inbounds %struct.nvif_object, ptr %291, i32 0, i32 2
  %292 = ptrtoint ptr %name1499 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %name1499, align 8
  %294 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %handle, align 4
  %296 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %289(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %293, i32 noundef %295, ptr noundef %297, i32 noundef %sub.ptr.sub1487, i32 noundef %or1397) #4
  %298 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1508 = getelementptr i32, ptr %299, i32 1
  store ptr %incdec.ptr1508, ptr %cur.i, align 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %or1397, ptr %299, align 4
  %blockh = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 2
  %301 = ptrtoint ptr %blockh to i32
  call void @__asan_load2_noabort(i32 %301)
  %bf.load1517 = load i16, ptr %blockh, align 2
  %302 = lshr i16 %bf.load1517, 4
  %303 = and i16 %302, 15
  %conv1520 = zext i16 %303 to i32
  %pitch = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 4
  %304 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %pitch, align 4
  %306 = and i32 %305, 261888
  %or1529 = or i32 %306, %conv1520
  %blocks = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 3
  %307 = ptrtoint ptr %blocks to i32
  call void @__asan_load2_noabort(i32 %307)
  %308 = load i16, ptr %blocks, align 4
  %309 = and i16 %308, 1023
  %and1533 = zext i16 %309 to i32
  %shl1534 = shl nuw nsw i32 %and1533, 8
  %or1535 = or i32 %or1529, %shl1534
  %bf.lshr1538 = lshr i16 %bf.load1517, 8
  %310 = and i16 %bf.lshr1538, 1
  %311 = zext i16 %310 to i32
  %shl1543 = shl nuw nsw i32 %311, 20
  %or1544 = or i32 %or1535, %shl1543
  %312 = load ptr, ptr %cur.i, align 4
  %313 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %seg.i, align 8
  %cmp1550.not = icmp ult ptr %312, %314
  br i1 %cmp1550.not, label %if.end1467.if.end1575_crit_edge, label %do.end1569, !prof !34

if.end1467.if.end1575_crit_edge:                  ; preds = %if.end1467
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1575

do.end1569:                                       ; preds = %if.end1467
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end1575

if.end1575:                                       ; preds = %do.end1569, %if.end1467.if.end1575_crit_edge
  %315 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %cur.i, align 4
  %317 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %end.i, align 4
  %cmp1589.not = icmp ult ptr %316, %318
  br i1 %cmp1589.not, label %if.end1575.if.end1614_crit_edge, label %do.end1608, !prof !34

if.end1575.if.end1614_crit_edge:                  ; preds = %if.end1575
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1614

do.end1608:                                       ; preds = %if.end1575
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end1614

if.end1614:                                       ; preds = %do.end1608, %if.end1575.if.end1614_crit_edge
  %319 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %cur.i, align 4
  %321 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1632 = ptrtoint ptr %320 to i32
  %sub.ptr.rhs.cast1633 = ptrtoint ptr %322 to i32
  %sub.ptr.sub1634 = sub i32 %sub.ptr.lhs.cast1632, %sub.ptr.rhs.cast1633
  %323 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %mem, align 8
  %325 = ptrtoint ptr %324 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %324, align 4
  %327 = ptrtoint ptr %326 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %326, align 4
  %329 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %client, align 4
  %name1646 = getelementptr inbounds %struct.nvif_object, ptr %330, i32 0, i32 2
  %331 = ptrtoint ptr %name1646 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %name1646, align 8
  %333 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %handle, align 4
  %335 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %328(ptr noundef %mem, ptr noundef nonnull @.str.13, ptr noundef %332, i32 noundef %334, ptr noundef %336, i32 noundef %sub.ptr.sub1634, i32 noundef %or1544) #4
  %337 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1655 = getelementptr i32, ptr %338, i32 1
  store ptr %incdec.ptr1655, ptr %cur.i, align 4
  %339 = ptrtoint ptr %338 to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %or1544, ptr %338, align 4
  %format = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 1
  %340 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %format, align 1
  %conv1664 = zext i8 %341 to i32
  %shl1666 = shl nuw nsw i32 %conv1664, 8
  %342 = ptrtoint ptr %image to i32
  call void @__asan_load1_noabort(i32 %342)
  %bf.load1668 = load i8, ptr %image, align 8
  %343 = and i8 %bf.load1668, 3
  %and1671 = zext i8 %343 to i32
  %or1673 = or i32 %shl1666, %and1671
  %344 = load ptr, ptr %cur.i, align 4
  %345 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %seg.i, align 8
  %cmp1679.not = icmp ult ptr %344, %346
  br i1 %cmp1679.not, label %if.end1614.if.end1704_crit_edge, label %do.end1698, !prof !34

if.end1614.if.end1704_crit_edge:                  ; preds = %if.end1614
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1704

do.end1698:                                       ; preds = %if.end1614
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end1704

if.end1704:                                       ; preds = %do.end1698, %if.end1614.if.end1704_crit_edge
  %347 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %cur.i, align 4
  %349 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %end.i, align 4
  %cmp1718.not = icmp ult ptr %348, %350
  br i1 %cmp1718.not, label %if.end1704.if.end1743_crit_edge, label %do.end1737, !prof !34

if.end1704.if.end1743_crit_edge:                  ; preds = %if.end1704
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1743

do.end1737:                                       ; preds = %if.end1704
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end1743

if.end1743:                                       ; preds = %do.end1737, %if.end1704.if.end1743_crit_edge
  %351 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %cur.i, align 4
  %353 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1761 = ptrtoint ptr %352 to i32
  %sub.ptr.rhs.cast1762 = ptrtoint ptr %354 to i32
  %sub.ptr.sub1763 = sub i32 %sub.ptr.lhs.cast1761, %sub.ptr.rhs.cast1762
  %355 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %mem, align 8
  %357 = ptrtoint ptr %356 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %356, align 4
  %359 = ptrtoint ptr %358 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %358, align 4
  %361 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %client, align 4
  %name1775 = getelementptr inbounds %struct.nvif_object, ptr %362, i32 0, i32 2
  %363 = ptrtoint ptr %name1775 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %name1775, align 8
  %365 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %handle, align 4
  %367 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %360(ptr noundef %mem, ptr noundef nonnull @.str.14, ptr noundef %364, i32 noundef %366, ptr noundef %368, i32 noundef %sub.ptr.sub1763, i32 noundef %or1673) #4
  %369 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1784 = getelementptr i32, ptr %370, i32 1
  store ptr %incdec.ptr1784, ptr %cur.i, align 4
  %371 = ptrtoint ptr %370 to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 %or1673, ptr %370, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1743, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1743 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_image_clr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovly507e_scale_set(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_update(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !13, !15, !17, !19, !21, !22, !23, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @ovly827e_format, !1, !"ovly827e_format", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/ovly827e.c", i32 105, i32 1}
!2 = !{ptr @ovly827e, !3, !"ovly827e", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv50/ovly827e.c", i32 91, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/dispnv50/ovly827e.c", i32 41, i32 2}
!6 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__func__.ovly827e_image_set, !5, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/dispnv50/ovly827e.c", i32 45, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/dispnv50/ovly827e.c", i32 47, i32 2}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/dispnv50/ovly827e.c", i32 50, i32 2}
!19 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/dispnv50/ovly827e.c", i32 52, i32 2}
!21 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 2000, i32 1}
