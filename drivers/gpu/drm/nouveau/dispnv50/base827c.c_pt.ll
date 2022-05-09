; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/base827c.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/base827c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_wndw_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
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

@base827c = internal constant { %struct.nv50_wndw_func, [36 x i8] } { %struct.nv50_wndw_func { ptr @base507c_acquire, ptr @base507c_release, ptr null, ptr @base507c_sema_set, ptr @base507c_sema_clr, ptr @base507c_ntfy_reset, ptr @base507c_ntfy_set, ptr @base507c_ntfy_clr, ptr @base507c_ntfy_wait_begun, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, i8 1, ptr @base507c_xlut_set, ptr @base507c_xlut_clr, ptr @base827c_image_set, ptr @base507c_image_clr, ptr null, ptr null, ptr @base507c_update }, [36 x i8] zeroinitializer }, align 32
@base507c_format = external dso_local constant [0 x i32], align 4
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/base827c.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.base827c_image_set = private unnamed_addr constant [19 x i8] c"base827c_image_set\00", align 1
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827C_SET_PRESENT_CONTROL\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827C_SET_CONTEXT_DMAS_ISO(0)+0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827C_SET_PROCESSING\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827C_SET_CONVERSION\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827C_SURFACE_SET_OFFSET(0, 0)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827C_SURFACE_SET_OFFSET(0, 1)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827C_SURFACE_SET_SIZE(0)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827C_SURFACE_SET_STORAGE(0)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s/%08x:%s] %08x: %08x-> NV827C_SURFACE_SET_PARAMS(0)\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"base827c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 81, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 37, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 41, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 44, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/base827c.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 59, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @base827c, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base827c to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @base827c_new(ptr noundef %drm, i32 noundef %head, i32 noundef %oclass, ptr noundef %pwndw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %head, 3
  %shl = shl i32 2, %mul
  %call = tail call i32 @base507c_new_(ptr noundef nonnull @base827c, ptr noundef nonnull @base507c_format, ptr noundef %drm, i32 noundef %head, i32 noundef %oclass, i32 noundef %shl, ptr noundef %pwndw) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_acquire(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @base507c_release(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_sema_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_sema_clr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @base507c_ntfy_reset(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_ntfy_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_ntfy_clr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_ntfy_wait_begun(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_xlut_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_xlut_clr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @base827c_image_set(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end44_crit_edge, label %if.then.i

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end44

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 13) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end44_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then.i.if.end44_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end44

if.end44:                                         ; preds = %if.then.i.if.end44_crit_edge, %entry.if.end44_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 13
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !35

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !35

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 9, ptr noundef nonnull @.str.4) #2
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262276, i32 noundef 132, i32 noundef 1, ptr noundef nonnull @__func__.base827c_image_set) #2
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
  %bf.lshr = lshr i8 %bf.load, 6
  %conv = zext i8 %bf.lshr to i32
  %shl = shl nuw nsw i32 %conv, 8
  %37 = shl i8 %bf.load, 2
  %38 = and i8 %37, -16
  %shl152 = zext i8 %38 to i32
  %or = or i32 %shl, %shl152
  %39 = load ptr, ptr %cur.i, align 4
  %40 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %seg.i, align 8
  %cmp158.not = icmp ult ptr %39, %41
  br i1 %cmp158.not, label %if.end117.if.end183_crit_edge, label %do.end177, !prof !35

if.end117.if.end183_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end183

do.end177:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end183

if.end183:                                        ; preds = %do.end177, %if.end117.if.end183_crit_edge
  %42 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cur.i, align 4
  %44 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %end.i, align 4
  %cmp197.not = icmp ult ptr %43, %45
  br i1 %cmp197.not, label %if.end183.if.end222_crit_edge, label %do.end216, !prof !35

if.end183.if.end222_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end222

do.end216:                                        ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end222

if.end222:                                        ; preds = %do.end216, %if.end183.if.end222_crit_edge
  %46 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur.i, align 4
  %48 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast240 = ptrtoint ptr %47 to i32
  %sub.ptr.rhs.cast241 = ptrtoint ptr %49 to i32
  %sub.ptr.sub242 = sub i32 %sub.ptr.lhs.cast240, %sub.ptr.rhs.cast241
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
  %name254 = getelementptr inbounds %struct.nvif_object, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %name254 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name254, align 8
  %60 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %handle, align 4
  %62 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %55(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %59, i32 noundef %61, ptr noundef %63, i32 noundef %sub.ptr.sub242, i32 noundef %or) #2
  %64 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur.i, align 4
  %incdec.ptr263 = getelementptr i32, ptr %65, i32 1
  store ptr %incdec.ptr263, ptr %cur.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or, ptr %65, align 4
  %67 = load ptr, ptr %cur.i, align 4
  %68 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %seg.i, align 8
  %cmp335.not = icmp ult ptr %67, %69
  br i1 %cmp335.not, label %if.end222.if.end360_crit_edge, label %do.end354, !prof !35

if.end222.if.end360_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end360

do.end354:                                        ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end360

if.end360:                                        ; preds = %do.end354, %if.end222.if.end360_crit_edge
  %70 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cur.i, align 4
  %72 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %end.i, align 4
  %cmp374.not = icmp ult ptr %71, %73
  br i1 %cmp374.not, label %if.end360.if.end399_crit_edge, label %do.end393, !prof !35

if.end360.if.end399_crit_edge:                    ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end399

do.end393:                                        ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end399

if.end399:                                        ; preds = %do.end393, %if.end360.if.end399_crit_edge
  %74 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cur.i, align 4
  %76 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast417 = ptrtoint ptr %75 to i32
  %sub.ptr.rhs.cast418 = ptrtoint ptr %77 to i32
  %sub.ptr.sub419 = sub i32 %sub.ptr.lhs.cast417, %sub.ptr.rhs.cast418
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
  %name431 = getelementptr inbounds %struct.nvif_object, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %name431 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %name431, align 8
  %88 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %handle, align 4
  %90 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %83(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %87, i32 noundef %89, ptr noundef %91, i32 noundef %sub.ptr.sub419, i32 noundef 262336, i32 noundef 192, i32 noundef 1, ptr noundef nonnull @__func__.base827c_image_set) #2
  %92 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cur.i, align 4
  %incdec.ptr440 = getelementptr i32, ptr %93, i32 1
  store ptr %incdec.ptr440, ptr %cur.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 262336, ptr %93, align 4
  %handle447 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 7
  %95 = ptrtoint ptr %handle447 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %handle447, align 4
  %97 = load ptr, ptr %cur.i, align 4
  %98 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %seg.i, align 8
  %cmp458.not = icmp ult ptr %97, %99
  br i1 %cmp458.not, label %if.end399.if.end483_crit_edge, label %do.end477, !prof !35

if.end399.if.end483_crit_edge:                    ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end483

do.end477:                                        ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end483

if.end483:                                        ; preds = %do.end477, %if.end399.if.end483_crit_edge
  %100 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur.i, align 4
  %102 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %end.i, align 4
  %cmp497.not = icmp ult ptr %101, %103
  br i1 %cmp497.not, label %if.end483.if.end522_crit_edge, label %do.end516, !prof !35

if.end483.if.end522_crit_edge:                    ; preds = %if.end483
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end522

do.end516:                                        ; preds = %if.end483
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end522

if.end522:                                        ; preds = %do.end516, %if.end483.if.end522_crit_edge
  %104 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cur.i, align 4
  %106 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast540 = ptrtoint ptr %105 to i32
  %sub.ptr.rhs.cast541 = ptrtoint ptr %107 to i32
  %sub.ptr.sub542 = sub i32 %sub.ptr.lhs.cast540, %sub.ptr.rhs.cast541
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
  %name554 = getelementptr inbounds %struct.nvif_object, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %name554 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %name554, align 8
  %118 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %handle, align 4
  %120 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %113(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %117, i32 noundef %119, ptr noundef %121, i32 noundef %sub.ptr.sub542, i32 noundef %96, i32 noundef 0) #2
  %122 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur.i, align 4
  %incdec.ptr563 = getelementptr i32, ptr %123, i32 1
  store ptr %incdec.ptr563, ptr %cur.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %96, ptr %123, align 4
  %format = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 1
  %125 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %format, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -54, i8 %126)
  %cmp691 = icmp eq i8 %126, -54
  %127 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cur.i, align 4
  %129 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %seg.i, align 8
  %cmp791.not = icmp ult ptr %128, %130
  br i1 %cmp691, label %if.end774, label %if.end1215

if.end774:                                        ; preds = %if.end522
  br i1 %cmp791.not, label %if.end774.if.end816_crit_edge, label %do.end810, !prof !35

if.end774.if.end816_crit_edge:                    ; preds = %if.end774
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end816

do.end810:                                        ; preds = %if.end774
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end816

if.end816:                                        ; preds = %do.end810, %if.end774.if.end816_crit_edge
  %131 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cur.i, align 4
  %133 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %end.i, align 4
  %cmp830.not = icmp ult ptr %132, %134
  br i1 %cmp830.not, label %if.end816.if.end855_crit_edge, label %do.end849, !prof !35

if.end816.if.end855_crit_edge:                    ; preds = %if.end816
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end855

do.end849:                                        ; preds = %if.end816
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end855

if.end855:                                        ; preds = %do.end849, %if.end816.if.end855_crit_edge
  %135 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cur.i, align 4
  %137 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast873 = ptrtoint ptr %136 to i32
  %sub.ptr.rhs.cast874 = ptrtoint ptr %138 to i32
  %sub.ptr.sub875 = sub i32 %sub.ptr.lhs.cast873, %sub.ptr.rhs.cast874
  %139 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mem, align 8
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %145 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %client, align 4
  %name887 = getelementptr inbounds %struct.nvif_object, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %name887 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %name887, align 8
  %149 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %handle, align 4
  %151 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %144(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %148, i32 noundef %150, ptr noundef %152, i32 noundef %sub.ptr.sub875, i32 noundef 524560, i32 noundef 272, i32 noundef 2, ptr noundef nonnull @__func__.base827c_image_set) #2
  %153 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %cur.i, align 4
  %incdec.ptr896 = getelementptr i32, ptr %154, i32 1
  store ptr %incdec.ptr896, ptr %cur.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 524560, ptr %154, align 4
  %156 = load ptr, ptr %cur.i, align 4
  %157 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %seg.i, align 8
  %cmp908.not = icmp ult ptr %156, %158
  br i1 %cmp908.not, label %if.end855.if.end933_crit_edge, label %do.end927, !prof !35

if.end855.if.end933_crit_edge:                    ; preds = %if.end855
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end933

do.end927:                                        ; preds = %if.end855
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end933

if.end933:                                        ; preds = %do.end927, %if.end855.if.end933_crit_edge
  %159 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cur.i, align 4
  %161 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %end.i, align 4
  %cmp947.not = icmp ult ptr %160, %162
  br i1 %cmp947.not, label %if.end933.if.end972_crit_edge, label %do.end966, !prof !35

if.end933.if.end972_crit_edge:                    ; preds = %if.end933
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end972

do.end966:                                        ; preds = %if.end933
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end972

if.end972:                                        ; preds = %do.end966, %if.end933.if.end972_crit_edge
  %163 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cur.i, align 4
  %165 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast990 = ptrtoint ptr %164 to i32
  %sub.ptr.rhs.cast991 = ptrtoint ptr %166 to i32
  %sub.ptr.sub992 = sub i32 %sub.ptr.lhs.cast990, %sub.ptr.rhs.cast991
  %167 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mem, align 8
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %173 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %client, align 4
  %name1004 = getelementptr inbounds %struct.nvif_object, ptr %174, i32 0, i32 2
  %175 = ptrtoint ptr %name1004 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %name1004, align 8
  %177 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %handle, align 4
  %179 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %172(ptr noundef %mem, ptr noundef nonnull @.str.9, ptr noundef %176, i32 noundef %178, ptr noundef %180, i32 noundef %sub.ptr.sub992, i32 noundef 1) #2
  %181 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1013 = getelementptr i32, ptr %182, i32 1
  store ptr %incdec.ptr1013, ptr %cur.i, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 1, ptr %182, align 4
  %184 = load ptr, ptr %cur.i, align 4
  %185 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %seg.i, align 8
  %cmp1025.not = icmp ult ptr %184, %186
  br i1 %cmp1025.not, label %if.end972.if.end1050_crit_edge, label %do.end1044, !prof !35

if.end972.if.end1050_crit_edge:                   ; preds = %if.end972
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1050

do.end1044:                                       ; preds = %if.end972
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end1050

if.end1050:                                       ; preds = %do.end1044, %if.end972.if.end1050_crit_edge
  %187 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %cur.i, align 4
  %189 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %end.i, align 4
  %cmp1064.not = icmp ult ptr %188, %190
  br i1 %cmp1064.not, label %if.end1050.if.end1089_crit_edge, label %do.end1083, !prof !35

if.end1050.if.end1089_crit_edge:                  ; preds = %if.end1050
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1089

do.end1083:                                       ; preds = %if.end1050
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end1089

if.end1089:                                       ; preds = %do.end1083, %if.end1050.if.end1089_crit_edge
  %191 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cur.i, align 4
  %193 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1107 = ptrtoint ptr %192 to i32
  %sub.ptr.rhs.cast1108 = ptrtoint ptr %194 to i32
  %sub.ptr.sub1109 = sub i32 %sub.ptr.lhs.cast1107, %sub.ptr.rhs.cast1108
  %195 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %mem, align 8
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 4
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %198, align 4
  %201 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %client, align 4
  %name1121 = getelementptr inbounds %struct.nvif_object, ptr %202, i32 0, i32 2
  %203 = ptrtoint ptr %name1121 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %name1121, align 8
  %205 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %handle, align 4
  %207 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %200(ptr noundef %mem, ptr noundef nonnull @.str.10, ptr noundef %204, i32 noundef %206, ptr noundef %208, i32 noundef %sub.ptr.sub1109, i32 noundef 6553600) #2
  %209 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1130 = getelementptr i32, ptr %210, i32 1
  store ptr %incdec.ptr1130, ptr %cur.i, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 6553600, ptr %210, align 4
  br label %if.end1747

if.end1215:                                       ; preds = %if.end522
  br i1 %cmp791.not, label %if.end1215.if.end1257_crit_edge, label %do.end1251, !prof !35

if.end1215.if.end1257_crit_edge:                  ; preds = %if.end1215
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1257

do.end1251:                                       ; preds = %if.end1215
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end1257

if.end1257:                                       ; preds = %do.end1251, %if.end1215.if.end1257_crit_edge
  %212 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %cur.i, align 4
  %214 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %end.i, align 4
  %cmp1271.not = icmp ult ptr %213, %215
  br i1 %cmp1271.not, label %if.end1257.if.end1296_crit_edge, label %do.end1290, !prof !35

if.end1257.if.end1296_crit_edge:                  ; preds = %if.end1257
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1296

do.end1290:                                       ; preds = %if.end1257
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end1296

if.end1296:                                       ; preds = %do.end1290, %if.end1257.if.end1296_crit_edge
  %216 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %cur.i, align 4
  %218 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1314 = ptrtoint ptr %217 to i32
  %sub.ptr.rhs.cast1315 = ptrtoint ptr %219 to i32
  %sub.ptr.sub1316 = sub i32 %sub.ptr.lhs.cast1314, %sub.ptr.rhs.cast1315
  %220 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mem, align 8
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %221, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 4
  %226 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %client, align 4
  %name1328 = getelementptr inbounds %struct.nvif_object, ptr %227, i32 0, i32 2
  %228 = ptrtoint ptr %name1328 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %name1328, align 8
  %230 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %handle, align 4
  %232 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %225(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %229, i32 noundef %231, ptr noundef %233, i32 noundef %sub.ptr.sub1316, i32 noundef 524560, i32 noundef 272, i32 noundef 2, ptr noundef nonnull @__func__.base827c_image_set) #2
  %234 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1337 = getelementptr i32, ptr %235, i32 1
  store ptr %incdec.ptr1337, ptr %cur.i, align 4
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 524560, ptr %235, align 4
  %237 = load ptr, ptr %cur.i, align 4
  %238 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %seg.i, align 8
  %cmp1349.not = icmp ult ptr %237, %239
  br i1 %cmp1349.not, label %if.end1296.if.end1374_crit_edge, label %do.end1368, !prof !35

if.end1296.if.end1374_crit_edge:                  ; preds = %if.end1296
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1374

do.end1368:                                       ; preds = %if.end1296
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end1374

if.end1374:                                       ; preds = %do.end1368, %if.end1296.if.end1374_crit_edge
  %240 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %cur.i, align 4
  %242 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %end.i, align 4
  %cmp1388.not = icmp ult ptr %241, %243
  br i1 %cmp1388.not, label %if.end1374.if.end1413_crit_edge, label %do.end1407, !prof !35

if.end1374.if.end1413_crit_edge:                  ; preds = %if.end1374
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1413

do.end1407:                                       ; preds = %if.end1374
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end1413

if.end1413:                                       ; preds = %do.end1407, %if.end1374.if.end1413_crit_edge
  %244 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %cur.i, align 4
  %246 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1431 = ptrtoint ptr %245 to i32
  %sub.ptr.rhs.cast1432 = ptrtoint ptr %247 to i32
  %sub.ptr.sub1433 = sub i32 %sub.ptr.lhs.cast1431, %sub.ptr.rhs.cast1432
  %248 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %mem, align 8
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %249, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 4
  %254 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %client, align 4
  %name1445 = getelementptr inbounds %struct.nvif_object, ptr %255, i32 0, i32 2
  %256 = ptrtoint ptr %name1445 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %name1445, align 8
  %258 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %handle, align 4
  %260 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %253(ptr noundef %mem, ptr noundef nonnull @.str.9, ptr noundef %257, i32 noundef %259, ptr noundef %261, i32 noundef %sub.ptr.sub1433, i32 noundef 0) #2
  %262 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1454 = getelementptr i32, ptr %263, i32 1
  store ptr %incdec.ptr1454, ptr %cur.i, align 4
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 0, ptr %263, align 4
  %265 = load ptr, ptr %cur.i, align 4
  %266 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %seg.i, align 8
  %cmp1466.not = icmp ult ptr %265, %267
  br i1 %cmp1466.not, label %if.end1413.if.end1491_crit_edge, label %do.end1485, !prof !35

if.end1413.if.end1491_crit_edge:                  ; preds = %if.end1413
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1491

do.end1485:                                       ; preds = %if.end1413
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end1491

if.end1491:                                       ; preds = %do.end1485, %if.end1413.if.end1491_crit_edge
  %268 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %cur.i, align 4
  %270 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %end.i, align 4
  %cmp1505.not = icmp ult ptr %269, %271
  br i1 %cmp1505.not, label %if.end1491.if.end1530_crit_edge, label %do.end1524, !prof !35

if.end1491.if.end1530_crit_edge:                  ; preds = %if.end1491
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1530

do.end1524:                                       ; preds = %if.end1491
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end1530

if.end1530:                                       ; preds = %do.end1524, %if.end1491.if.end1530_crit_edge
  %272 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %cur.i, align 4
  %274 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1548 = ptrtoint ptr %273 to i32
  %sub.ptr.rhs.cast1549 = ptrtoint ptr %275 to i32
  %sub.ptr.sub1550 = sub i32 %sub.ptr.lhs.cast1548, %sub.ptr.rhs.cast1549
  %276 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %mem, align 8
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %277, align 4
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %279, align 4
  %282 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %client, align 4
  %name1562 = getelementptr inbounds %struct.nvif_object, ptr %283, i32 0, i32 2
  %284 = ptrtoint ptr %name1562 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %name1562, align 8
  %286 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %handle, align 4
  %288 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %281(ptr noundef %mem, ptr noundef nonnull @.str.10, ptr noundef %285, i32 noundef %287, ptr noundef %289, i32 noundef %sub.ptr.sub1550, i32 noundef 0) #2
  %290 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1571 = getelementptr i32, ptr %291, i32 1
  store ptr %incdec.ptr1571, ptr %cur.i, align 4
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 0, ptr %291, align 4
  br label %if.end1747

if.end1747:                                       ; preds = %if.end1530, %if.end1089
  %293 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %cur.i, align 4
  %295 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %seg.i, align 8
  %cmp1764.not = icmp ult ptr %294, %296
  br i1 %cmp1764.not, label %if.end1747.if.end1789_crit_edge, label %do.end1783, !prof !35

if.end1747.if.end1789_crit_edge:                  ; preds = %if.end1747
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1789

do.end1783:                                       ; preds = %if.end1747
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end1789

if.end1789:                                       ; preds = %do.end1783, %if.end1747.if.end1789_crit_edge
  %297 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %cur.i, align 4
  %299 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %end.i, align 4
  %cmp1803.not = icmp ult ptr %298, %300
  br i1 %cmp1803.not, label %if.end1789.if.end1828_crit_edge, label %do.end1822, !prof !35

if.end1789.if.end1828_crit_edge:                  ; preds = %if.end1789
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1828

do.end1822:                                       ; preds = %if.end1789
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end1828

if.end1828:                                       ; preds = %do.end1822, %if.end1789.if.end1828_crit_edge
  %301 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %cur.i, align 4
  %303 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1846 = ptrtoint ptr %302 to i32
  %sub.ptr.rhs.cast1847 = ptrtoint ptr %304 to i32
  %sub.ptr.sub1848 = sub i32 %sub.ptr.lhs.cast1846, %sub.ptr.rhs.cast1847
  %305 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %mem, align 8
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %306, align 4
  %309 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %308, align 4
  %311 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %client, align 4
  %name1860 = getelementptr inbounds %struct.nvif_object, ptr %312, i32 0, i32 2
  %313 = ptrtoint ptr %name1860 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %name1860, align 8
  %315 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %handle, align 4
  %317 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %310(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %314, i32 noundef %316, ptr noundef %318, i32 noundef %sub.ptr.sub1848, i32 noundef 1312768, i32 noundef 2048, i32 noundef 5, ptr noundef nonnull @__func__.base827c_image_set) #2
  %319 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1869 = getelementptr i32, ptr %320, i32 1
  store ptr %incdec.ptr1869, ptr %cur.i, align 4
  %321 = ptrtoint ptr %320 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 1312768, ptr %320, align 4
  %offset = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 8
  %322 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %322)
  %323 = load i64, ptr %offset, align 8
  %shr = lshr i64 %323, 8
  %conv1878 = trunc i64 %shr to i32
  %324 = load ptr, ptr %cur.i, align 4
  %325 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %seg.i, align 8
  %cmp1883.not = icmp ult ptr %324, %326
  br i1 %cmp1883.not, label %if.end1828.if.end1908_crit_edge, label %do.end1902, !prof !35

if.end1828.if.end1908_crit_edge:                  ; preds = %if.end1828
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1908

do.end1902:                                       ; preds = %if.end1828
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end1908

if.end1908:                                       ; preds = %do.end1902, %if.end1828.if.end1908_crit_edge
  %327 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %cur.i, align 4
  %329 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %end.i, align 4
  %cmp1922.not = icmp ult ptr %328, %330
  br i1 %cmp1922.not, label %if.end1908.if.end1947_crit_edge, label %do.end1941, !prof !35

if.end1908.if.end1947_crit_edge:                  ; preds = %if.end1908
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1947

do.end1941:                                       ; preds = %if.end1908
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end1947

if.end1947:                                       ; preds = %do.end1941, %if.end1908.if.end1947_crit_edge
  %331 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %cur.i, align 4
  %333 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1965 = ptrtoint ptr %332 to i32
  %sub.ptr.rhs.cast1966 = ptrtoint ptr %334 to i32
  %sub.ptr.sub1967 = sub i32 %sub.ptr.lhs.cast1965, %sub.ptr.rhs.cast1966
  %335 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %mem, align 8
  %337 = ptrtoint ptr %336 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %336, align 4
  %339 = ptrtoint ptr %338 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %338, align 4
  %341 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %client, align 4
  %name1979 = getelementptr inbounds %struct.nvif_object, ptr %342, i32 0, i32 2
  %343 = ptrtoint ptr %name1979 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %name1979, align 8
  %345 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %handle, align 4
  %347 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %340(ptr noundef %mem, ptr noundef nonnull @.str.14, ptr noundef %344, i32 noundef %346, ptr noundef %348, i32 noundef %sub.ptr.sub1967, i32 noundef %conv1878) #2
  %349 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1988 = getelementptr i32, ptr %350, i32 1
  store ptr %incdec.ptr1988, ptr %cur.i, align 4
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %conv1878, ptr %350, align 4
  %352 = load ptr, ptr %cur.i, align 4
  %353 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %seg.i, align 8
  %cmp2000.not = icmp ult ptr %352, %354
  br i1 %cmp2000.not, label %if.end1947.if.end2025_crit_edge, label %do.end2019, !prof !35

if.end1947.if.end2025_crit_edge:                  ; preds = %if.end1947
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2025

do.end2019:                                       ; preds = %if.end1947
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end2025

if.end2025:                                       ; preds = %do.end2019, %if.end1947.if.end2025_crit_edge
  %355 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %cur.i, align 4
  %357 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %end.i, align 4
  %cmp2039.not = icmp ult ptr %356, %358
  br i1 %cmp2039.not, label %if.end2025.if.end2064_crit_edge, label %do.end2058, !prof !35

if.end2025.if.end2064_crit_edge:                  ; preds = %if.end2025
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2064

do.end2058:                                       ; preds = %if.end2025
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end2064

if.end2064:                                       ; preds = %do.end2058, %if.end2025.if.end2064_crit_edge
  %359 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %cur.i, align 4
  %361 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2082 = ptrtoint ptr %360 to i32
  %sub.ptr.rhs.cast2083 = ptrtoint ptr %362 to i32
  %sub.ptr.sub2084 = sub i32 %sub.ptr.lhs.cast2082, %sub.ptr.rhs.cast2083
  %363 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %mem, align 8
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %364, align 4
  %367 = ptrtoint ptr %366 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %366, align 4
  %369 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %client, align 4
  %name2096 = getelementptr inbounds %struct.nvif_object, ptr %370, i32 0, i32 2
  %371 = ptrtoint ptr %name2096 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %name2096, align 8
  %373 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %handle, align 4
  %375 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %368(ptr noundef %mem, ptr noundef nonnull @.str.15, ptr noundef %372, i32 noundef %374, ptr noundef %376, i32 noundef %sub.ptr.sub2084, i32 noundef 0) #2
  %377 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2105 = getelementptr i32, ptr %378, i32 1
  store ptr %incdec.ptr2105, ptr %cur.i, align 4
  %379 = ptrtoint ptr %378 to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 0, ptr %378, align 4
  %w = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 5
  %380 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %380)
  %381 = load i16, ptr %w, align 8
  %382 = and i16 %381, 32767
  %and2115 = zext i16 %382 to i32
  %h = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 6
  %383 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %383)
  %384 = load i16, ptr %h, align 2
  %385 = and i16 %384, 32767
  %and2119 = zext i16 %385 to i32
  %shl2120 = shl nuw nsw i32 %and2119, 16
  %or2121 = or i32 %shl2120, %and2115
  %386 = load ptr, ptr %cur.i, align 4
  %387 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %seg.i, align 8
  %cmp2127.not = icmp ult ptr %386, %388
  br i1 %cmp2127.not, label %if.end2064.if.end2152_crit_edge, label %do.end2146, !prof !35

if.end2064.if.end2152_crit_edge:                  ; preds = %if.end2064
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2152

do.end2146:                                       ; preds = %if.end2064
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end2152

if.end2152:                                       ; preds = %do.end2146, %if.end2064.if.end2152_crit_edge
  %389 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %cur.i, align 4
  %391 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %end.i, align 4
  %cmp2166.not = icmp ult ptr %390, %392
  br i1 %cmp2166.not, label %if.end2152.if.end2191_crit_edge, label %do.end2185, !prof !35

if.end2152.if.end2191_crit_edge:                  ; preds = %if.end2152
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2191

do.end2185:                                       ; preds = %if.end2152
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end2191

if.end2191:                                       ; preds = %do.end2185, %if.end2152.if.end2191_crit_edge
  %393 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %cur.i, align 4
  %395 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2209 = ptrtoint ptr %394 to i32
  %sub.ptr.rhs.cast2210 = ptrtoint ptr %396 to i32
  %sub.ptr.sub2211 = sub i32 %sub.ptr.lhs.cast2209, %sub.ptr.rhs.cast2210
  %397 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %mem, align 8
  %399 = ptrtoint ptr %398 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %398, align 4
  %401 = ptrtoint ptr %400 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %400, align 4
  %403 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %client, align 4
  %name2223 = getelementptr inbounds %struct.nvif_object, ptr %404, i32 0, i32 2
  %405 = ptrtoint ptr %name2223 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %name2223, align 8
  %407 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %handle, align 4
  %409 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %402(ptr noundef %mem, ptr noundef nonnull @.str.16, ptr noundef %406, i32 noundef %408, ptr noundef %410, i32 noundef %sub.ptr.sub2211, i32 noundef %or2121) #2
  %411 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2232 = getelementptr i32, ptr %412, i32 1
  store ptr %incdec.ptr2232, ptr %cur.i, align 4
  %413 = ptrtoint ptr %412 to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %or2121, ptr %412, align 4
  %blockh = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 2
  %414 = ptrtoint ptr %blockh to i32
  call void @__asan_load2_noabort(i32 %414)
  %bf.load2241 = load i16, ptr %blockh, align 2
  %415 = lshr i16 %bf.load2241, 4
  %416 = and i16 %415, 15
  %conv2244 = zext i16 %416 to i32
  %pitch = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 4
  %417 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %pitch, align 4
  %419 = and i32 %418, 261888
  %or2253 = or i32 %419, %conv2244
  %blocks = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 3
  %420 = ptrtoint ptr %blocks to i32
  call void @__asan_load2_noabort(i32 %420)
  %421 = load i16, ptr %blocks, align 4
  %422 = and i16 %421, 1023
  %and2257 = zext i16 %422 to i32
  %shl2258 = shl nuw nsw i32 %and2257, 8
  %or2259 = or i32 %or2253, %shl2258
  %bf.lshr2262 = lshr i16 %bf.load2241, 8
  %423 = and i16 %bf.lshr2262, 1
  %424 = zext i16 %423 to i32
  %shl2267 = shl nuw nsw i32 %424, 20
  %or2268 = or i32 %or2259, %shl2267
  %425 = load ptr, ptr %cur.i, align 4
  %426 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %seg.i, align 8
  %cmp2274.not = icmp ult ptr %425, %427
  br i1 %cmp2274.not, label %if.end2191.if.end2299_crit_edge, label %do.end2293, !prof !35

if.end2191.if.end2299_crit_edge:                  ; preds = %if.end2191
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2299

do.end2293:                                       ; preds = %if.end2191
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end2299

if.end2299:                                       ; preds = %do.end2293, %if.end2191.if.end2299_crit_edge
  %428 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %cur.i, align 4
  %430 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %end.i, align 4
  %cmp2313.not = icmp ult ptr %429, %431
  br i1 %cmp2313.not, label %if.end2299.if.end2338_crit_edge, label %do.end2332, !prof !35

if.end2299.if.end2338_crit_edge:                  ; preds = %if.end2299
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2338

do.end2332:                                       ; preds = %if.end2299
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end2338

if.end2338:                                       ; preds = %do.end2332, %if.end2299.if.end2338_crit_edge
  %432 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %cur.i, align 4
  %434 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2356 = ptrtoint ptr %433 to i32
  %sub.ptr.rhs.cast2357 = ptrtoint ptr %435 to i32
  %sub.ptr.sub2358 = sub i32 %sub.ptr.lhs.cast2356, %sub.ptr.rhs.cast2357
  %436 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %mem, align 8
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %437, align 4
  %440 = ptrtoint ptr %439 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %439, align 4
  %442 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %client, align 4
  %name2370 = getelementptr inbounds %struct.nvif_object, ptr %443, i32 0, i32 2
  %444 = ptrtoint ptr %name2370 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %name2370, align 8
  %446 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %handle, align 4
  %448 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %441(ptr noundef %mem, ptr noundef nonnull @.str.17, ptr noundef %445, i32 noundef %447, ptr noundef %449, i32 noundef %sub.ptr.sub2358, i32 noundef %or2268) #2
  %450 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2379 = getelementptr i32, ptr %451, i32 1
  store ptr %incdec.ptr2379, ptr %cur.i, align 4
  %452 = ptrtoint ptr %451 to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %or2268, ptr %451, align 4
  %453 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %format, align 1
  %conv2389 = zext i8 %454 to i32
  %shl2391 = shl nuw nsw i32 %conv2389, 8
  %455 = load ptr, ptr %cur.i, align 4
  %456 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %seg.i, align 8
  %cmp2400.not = icmp ult ptr %455, %457
  br i1 %cmp2400.not, label %if.end2338.if.end2425_crit_edge, label %do.end2419, !prof !35

if.end2338.if.end2425_crit_edge:                  ; preds = %if.end2338
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2425

do.end2419:                                       ; preds = %if.end2338
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end2425

if.end2425:                                       ; preds = %do.end2419, %if.end2338.if.end2425_crit_edge
  %458 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %cur.i, align 4
  %460 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %end.i, align 4
  %cmp2439.not = icmp ult ptr %459, %461
  br i1 %cmp2439.not, label %if.end2425.if.end2464_crit_edge, label %do.end2458, !prof !35

if.end2425.if.end2464_crit_edge:                  ; preds = %if.end2425
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2464

do.end2458:                                       ; preds = %if.end2425
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end2464

if.end2464:                                       ; preds = %do.end2458, %if.end2425.if.end2464_crit_edge
  %462 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %cur.i, align 4
  %464 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2482 = ptrtoint ptr %463 to i32
  %sub.ptr.rhs.cast2483 = ptrtoint ptr %465 to i32
  %sub.ptr.sub2484 = sub i32 %sub.ptr.lhs.cast2482, %sub.ptr.rhs.cast2483
  %466 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %mem, align 8
  %468 = ptrtoint ptr %467 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %467, align 4
  %470 = ptrtoint ptr %469 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %469, align 4
  %472 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %client, align 4
  %name2496 = getelementptr inbounds %struct.nvif_object, ptr %473, i32 0, i32 2
  %474 = ptrtoint ptr %name2496 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %name2496, align 8
  %476 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %handle, align 4
  %478 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %471(ptr noundef %mem, ptr noundef nonnull @.str.18, ptr noundef %475, i32 noundef %477, ptr noundef %479, i32 noundef %sub.ptr.sub2484, i32 noundef %shl2391) #2
  %480 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2505 = getelementptr i32, ptr %481, i32 1
  store ptr %incdec.ptr2505, ptr %cur.i, align 4
  %482 = ptrtoint ptr %481 to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 %shl2391, ptr %481, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2464, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2464 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_image_clr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_update(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !13, !15, !16, !17, !19, !20, !21, !22, !23, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @base827c, !1, !"base827c", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base827c.c", i32 81, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base827c.c", i32 37, i32 2}
!4 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.base827c_image_set, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base827c.c", i32 41, i32 2}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base827c.c", i32 44, i32 3}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base827c.c", i32 59, i32 2}
!19 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.14, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.15, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.16, !18, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.17, !18, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.18, !18, !"<string literal>", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 2000, i32 1}
