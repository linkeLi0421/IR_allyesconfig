; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/wndwc67e.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/wndwc67e.c"
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

@wndwc67e = internal constant { %struct.nv50_wndw_func, [36 x i8] } { %struct.nv50_wndw_func { ptr @wndwc37e_acquire, ptr @wndwc37e_release, ptr null, ptr @wndwc37e_sema_set, ptr @wndwc37e_sema_clr, ptr @corec37d_ntfy_init, ptr @wndwc37e_ntfy_set, ptr @wndwc37e_ntfy_clr, ptr @base507c_ntfy_wait_begun, ptr @wndwc57e_ilut, ptr @base907c_csc, ptr @wndwc57e_csc_set, ptr @wndwc57e_csc_clr, i8 1, i32 1024, i8 0, ptr @wndwc57e_ilut_set, ptr @wndwc57e_ilut_clr, ptr @wndwc67e_image_set, ptr @wndwc37e_image_clr, ptr null, ptr @wndwc37e_blend_set, ptr @wndwc37e_update }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/wndwc67e.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.wndwc67e_image_set = private unnamed_addr constant [19 x i8] c"wndwc67e_image_set\00", align 1
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_PRESENT_CONTROL\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_SIZE\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_STORAGE\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_PARAMS\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_PLANAR_STORAGE(0)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_CONTEXT_DMA_ISO(0)+0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_OFFSET(0)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_POINT_IN(0)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_SIZE_IN\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_SIZE_OUT\0A\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"wndwc67e\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 78, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 38, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 43, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 60, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 61, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 63, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 67, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/wndwc67e.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 71, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @wndwc67e, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wndwc67e to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wndwc67e_new(ptr noundef %drm, i32 noundef %type, i32 noundef %index, i32 noundef %oclass, ptr noundef %pwndw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = ashr i32 %index, 1
  %shl = shl nuw i32 1, %shr
  %call = tail call i32 @wndwc37e_new_(ptr noundef nonnull @wndwc67e, ptr noundef %drm, i32 noundef %type, i32 noundef %index, i32 noundef %oclass, i32 noundef %shl, ptr noundef %pwndw) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_acquire(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wndwc37e_release(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_sema_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_sema_clr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @corec37d_ntfy_init(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_ntfy_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_ntfy_clr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_ntfy_wait_begun(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wndwc57e_ilut(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @base907c_csc(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc57e_csc_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc57e_csc_clr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc57e_ilut_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc57e_ilut_clr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wndwc67e_image_set(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) #0 align 64 {
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
  %add.ptr.i = getelementptr i32, ptr %3, i32 17
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
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 17) #2
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
  %add.ptr4.i = getelementptr i32, ptr %9, i32 17
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !38

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !38

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.4) #2
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262920, i32 noundef 776, i32 noundef 1, ptr noundef nonnull @__func__.wndwc67e_image_set) #2
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262920, ptr %34, align 4
  %image = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8
  %36 = ptrtoint ptr %image to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %image, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %conv154 = zext i8 %bf.lshr to i32
  %37 = load ptr, ptr %cur.i, align 4
  %38 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %seg.i, align 8
  %cmp159.not = icmp ult ptr %37, %39
  br i1 %cmp159.not, label %if.end117.if.end184_crit_edge, label %do.end178, !prof !38

if.end117.if.end184_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end184

do.end178:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end184

if.end184:                                        ; preds = %do.end178, %if.end117.if.end184_crit_edge
  %40 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cur.i, align 4
  %42 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i, align 4
  %cmp198.not = icmp ult ptr %41, %43
  br i1 %cmp198.not, label %if.end184.if.end223_crit_edge, label %do.end217, !prof !38

if.end184.if.end223_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end223

do.end217:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end223

if.end223:                                        ; preds = %do.end217, %if.end184.if.end223_crit_edge
  %44 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cur.i, align 4
  %46 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast241 = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast242 = ptrtoint ptr %47 to i32
  %sub.ptr.sub243 = sub i32 %sub.ptr.lhs.cast241, %sub.ptr.rhs.cast242
  %48 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mem, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %54 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %client, align 4
  %name255 = getelementptr inbounds %struct.nvif_object, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %name255 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name255, align 8
  %58 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %handle, align 4
  %60 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %53(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %57, i32 noundef %59, ptr noundef %61, i32 noundef %sub.ptr.sub243, i32 noundef %conv154) #2
  %62 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cur.i, align 4
  %incdec.ptr264 = getelementptr i32, ptr %63, i32 1
  store ptr %incdec.ptr264, ptr %cur.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv154, ptr %63, align 4
  %65 = load ptr, ptr %cur.i, align 4
  %66 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %seg.i, align 8
  %cmp426.not = icmp ult ptr %65, %67
  br i1 %cmp426.not, label %if.end223.if.end451_crit_edge, label %do.end445, !prof !38

if.end223.if.end451_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end451

do.end445:                                        ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end451

if.end451:                                        ; preds = %do.end445, %if.end223.if.end451_crit_edge
  %68 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur.i, align 4
  %70 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %end.i, align 4
  %cmp465.not = icmp ult ptr %69, %71
  br i1 %cmp465.not, label %if.end451.if.end490_crit_edge, label %do.end484, !prof !38

if.end451.if.end490_crit_edge:                    ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end490

do.end484:                                        ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end490

if.end490:                                        ; preds = %do.end484, %if.end451.if.end490_crit_edge
  %72 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cur.i, align 4
  %74 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast508 = ptrtoint ptr %73 to i32
  %sub.ptr.rhs.cast509 = ptrtoint ptr %75 to i32
  %sub.ptr.sub510 = sub i32 %sub.ptr.lhs.cast508, %sub.ptr.rhs.cast509
  %76 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mem, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %82 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %client, align 4
  %name522 = getelementptr inbounds %struct.nvif_object, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %name522 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %name522, align 8
  %86 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %handle, align 4
  %88 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %81(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %85, i32 noundef %87, ptr noundef %89, i32 noundef %sub.ptr.sub510, i32 noundef 1049124, i32 noundef 548, i32 noundef 4, ptr noundef nonnull @__func__.wndwc67e_image_set) #2
  %90 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cur.i, align 4
  %incdec.ptr531 = getelementptr i32, ptr %91, i32 1
  store ptr %incdec.ptr531, ptr %cur.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1049124, ptr %91, align 4
  %w = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 5
  %93 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %w, align 8
  %conv540 = zext i16 %94 to i32
  %h = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 6
  %95 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %h, align 2
  %conv544 = zext i16 %96 to i32
  %shl546 = shl nuw i32 %conv544, 16
  %or547 = or i32 %shl546, %conv540
  %97 = load ptr, ptr %cur.i, align 4
  %98 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %seg.i, align 8
  %cmp553.not = icmp ult ptr %97, %99
  br i1 %cmp553.not, label %if.end490.if.end578_crit_edge, label %do.end572, !prof !38

if.end490.if.end578_crit_edge:                    ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end578

do.end572:                                        ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end578

if.end578:                                        ; preds = %do.end572, %if.end490.if.end578_crit_edge
  %100 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur.i, align 4
  %102 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %end.i, align 4
  %cmp592.not = icmp ult ptr %101, %103
  br i1 %cmp592.not, label %if.end578.if.end617_crit_edge, label %do.end611, !prof !38

if.end578.if.end617_crit_edge:                    ; preds = %if.end578
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end617

do.end611:                                        ; preds = %if.end578
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end617

if.end617:                                        ; preds = %do.end611, %if.end578.if.end617_crit_edge
  %104 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cur.i, align 4
  %106 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast635 = ptrtoint ptr %105 to i32
  %sub.ptr.rhs.cast636 = ptrtoint ptr %107 to i32
  %sub.ptr.sub637 = sub i32 %sub.ptr.lhs.cast635, %sub.ptr.rhs.cast636
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
  %name649 = getelementptr inbounds %struct.nvif_object, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %name649 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %name649, align 8
  %118 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %handle, align 4
  %120 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %113(ptr noundef %mem, ptr noundef nonnull @.str.10, ptr noundef %117, i32 noundef %119, ptr noundef %121, i32 noundef %sub.ptr.sub637, i32 noundef %or547) #2
  %122 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur.i, align 4
  %incdec.ptr658 = getelementptr i32, ptr %123, i32 1
  store ptr %incdec.ptr658, ptr %cur.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or547, ptr %123, align 4
  %blockh = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 2
  %125 = ptrtoint ptr %blockh to i32
  call void @__asan_load2_noabort(i32 %125)
  %bf.load667 = load i16, ptr %blockh, align 2
  %126 = lshr i16 %bf.load667, 4
  %127 = and i16 %126, 15
  %conv673 = zext i16 %127 to i32
  %128 = load ptr, ptr %cur.i, align 4
  %129 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %seg.i, align 8
  %cmp678.not = icmp ult ptr %128, %130
  br i1 %cmp678.not, label %if.end617.if.end703_crit_edge, label %do.end697, !prof !38

if.end617.if.end703_crit_edge:                    ; preds = %if.end617
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end703

do.end697:                                        ; preds = %if.end617
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end703

if.end703:                                        ; preds = %do.end697, %if.end617.if.end703_crit_edge
  %131 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cur.i, align 4
  %133 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %end.i, align 4
  %cmp717.not = icmp ult ptr %132, %134
  br i1 %cmp717.not, label %if.end703.if.end742_crit_edge, label %do.end736, !prof !38

if.end703.if.end742_crit_edge:                    ; preds = %if.end703
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end742

do.end736:                                        ; preds = %if.end703
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end742

if.end742:                                        ; preds = %do.end736, %if.end703.if.end742_crit_edge
  %135 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cur.i, align 4
  %137 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast760 = ptrtoint ptr %136 to i32
  %sub.ptr.rhs.cast761 = ptrtoint ptr %138 to i32
  %sub.ptr.sub762 = sub i32 %sub.ptr.lhs.cast760, %sub.ptr.rhs.cast761
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
  %name774 = getelementptr inbounds %struct.nvif_object, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %name774 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %name774, align 8
  %149 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %handle, align 4
  %151 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %144(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %148, i32 noundef %150, ptr noundef %152, i32 noundef %sub.ptr.sub762, i32 noundef %conv673) #2
  %153 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %cur.i, align 4
  %incdec.ptr783 = getelementptr i32, ptr %154, i32 1
  store ptr %incdec.ptr783, ptr %cur.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %conv673, ptr %154, align 4
  %format = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 1
  %156 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %format, align 1
  %conv798 = zext i8 %157 to i32
  %158 = load ptr, ptr %cur.i, align 4
  %159 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %seg.i, align 8
  %cmp803.not = icmp ult ptr %158, %160
  br i1 %cmp803.not, label %if.end742.if.end828_crit_edge, label %do.end822, !prof !38

if.end742.if.end828_crit_edge:                    ; preds = %if.end742
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end828

do.end822:                                        ; preds = %if.end742
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end828

if.end828:                                        ; preds = %do.end822, %if.end742.if.end828_crit_edge
  %161 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %cur.i, align 4
  %163 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %end.i, align 4
  %cmp842.not = icmp ult ptr %162, %164
  br i1 %cmp842.not, label %if.end828.if.end867_crit_edge, label %do.end861, !prof !38

if.end828.if.end867_crit_edge:                    ; preds = %if.end828
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end867

do.end861:                                        ; preds = %if.end828
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end867

if.end867:                                        ; preds = %do.end861, %if.end828.if.end867_crit_edge
  %165 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %cur.i, align 4
  %167 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast885 = ptrtoint ptr %166 to i32
  %sub.ptr.rhs.cast886 = ptrtoint ptr %168 to i32
  %sub.ptr.sub887 = sub i32 %sub.ptr.lhs.cast885, %sub.ptr.rhs.cast886
  %169 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %mem, align 8
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  %175 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %client, align 4
  %name899 = getelementptr inbounds %struct.nvif_object, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %name899 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %name899, align 8
  %179 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %handle, align 4
  %181 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %174(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %178, i32 noundef %180, ptr noundef %182, i32 noundef %sub.ptr.sub887, i32 noundef %conv798) #2
  %183 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %cur.i, align 4
  %incdec.ptr908 = getelementptr i32, ptr %184, i32 1
  store ptr %incdec.ptr908, ptr %cur.i, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %conv798, ptr %184, align 4
  %blocks = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 3
  %186 = ptrtoint ptr %blocks to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %blocks, align 4
  %188 = and i16 %187, 8191
  %and918 = zext i16 %188 to i32
  %pitch = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 4
  %189 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %pitch, align 4
  %shr = lshr i32 %190, 6
  %191 = and i32 %shr, 8191
  %or925 = or i32 %191, %and918
  %192 = load ptr, ptr %cur.i, align 4
  %193 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %seg.i, align 8
  %cmp931.not = icmp ult ptr %192, %194
  br i1 %cmp931.not, label %if.end867.if.end956_crit_edge, label %do.end950, !prof !38

if.end867.if.end956_crit_edge:                    ; preds = %if.end867
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end956

do.end950:                                        ; preds = %if.end867
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end956

if.end956:                                        ; preds = %do.end950, %if.end867.if.end956_crit_edge
  %195 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %cur.i, align 4
  %197 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %end.i, align 4
  %cmp970.not = icmp ult ptr %196, %198
  br i1 %cmp970.not, label %if.end956.if.end995_crit_edge, label %do.end989, !prof !38

if.end956.if.end995_crit_edge:                    ; preds = %if.end956
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end995

do.end989:                                        ; preds = %if.end956
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end995

if.end995:                                        ; preds = %do.end989, %if.end956.if.end995_crit_edge
  %199 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %cur.i, align 4
  %201 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1013 = ptrtoint ptr %200 to i32
  %sub.ptr.rhs.cast1014 = ptrtoint ptr %202 to i32
  %sub.ptr.sub1015 = sub i32 %sub.ptr.lhs.cast1013, %sub.ptr.rhs.cast1014
  %203 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %mem, align 8
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %204, align 4
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %206, align 4
  %209 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %client, align 4
  %name1027 = getelementptr inbounds %struct.nvif_object, ptr %210, i32 0, i32 2
  %211 = ptrtoint ptr %name1027 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %name1027, align 8
  %213 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %handle, align 4
  %215 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %208(ptr noundef %mem, ptr noundef nonnull @.str.13, ptr noundef %212, i32 noundef %214, ptr noundef %216, i32 noundef %sub.ptr.sub1015, i32 noundef %or925) #2
  %217 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1036 = getelementptr i32, ptr %218, i32 1
  store ptr %incdec.ptr1036, ptr %cur.i, align 4
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %or925, ptr %218, align 4
  %220 = load ptr, ptr %cur.i, align 4
  %221 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %seg.i, align 8
  %cmp1108.not = icmp ult ptr %220, %222
  br i1 %cmp1108.not, label %if.end995.if.end1133_crit_edge, label %do.end1127, !prof !38

if.end995.if.end1133_crit_edge:                   ; preds = %if.end995
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1133

do.end1127:                                       ; preds = %if.end995
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end1133

if.end1133:                                       ; preds = %do.end1127, %if.end995.if.end1133_crit_edge
  %223 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %cur.i, align 4
  %225 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %end.i, align 4
  %cmp1147.not = icmp ult ptr %224, %226
  br i1 %cmp1147.not, label %if.end1133.if.end1172_crit_edge, label %do.end1166, !prof !38

if.end1133.if.end1172_crit_edge:                  ; preds = %if.end1133
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1172

do.end1166:                                       ; preds = %if.end1133
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end1172

if.end1172:                                       ; preds = %do.end1166, %if.end1133.if.end1172_crit_edge
  %227 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %cur.i, align 4
  %229 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1190 = ptrtoint ptr %228 to i32
  %sub.ptr.rhs.cast1191 = ptrtoint ptr %230 to i32
  %sub.ptr.sub1192 = sub i32 %sub.ptr.lhs.cast1190, %sub.ptr.rhs.cast1191
  %231 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %mem, align 8
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %232, align 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %234, align 4
  %237 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %client, align 4
  %name1204 = getelementptr inbounds %struct.nvif_object, ptr %238, i32 0, i32 2
  %239 = ptrtoint ptr %name1204 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %name1204, align 8
  %241 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %handle, align 4
  %243 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %236(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %240, i32 noundef %242, ptr noundef %244, i32 noundef %sub.ptr.sub1192, i32 noundef 262720, i32 noundef 576, i32 noundef 1, ptr noundef nonnull @__func__.wndwc67e_image_set) #2
  %245 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1213 = getelementptr i32, ptr %246, i32 1
  store ptr %incdec.ptr1213, ptr %cur.i, align 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 262720, ptr %246, align 4
  %handle1220 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 7
  %248 = ptrtoint ptr %handle1220 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %handle1220, align 4
  %250 = load ptr, ptr %cur.i, align 4
  %251 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %seg.i, align 8
  %cmp1231.not = icmp ult ptr %250, %252
  br i1 %cmp1231.not, label %if.end1172.if.end1256_crit_edge, label %do.end1250, !prof !38

if.end1172.if.end1256_crit_edge:                  ; preds = %if.end1172
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1256

do.end1250:                                       ; preds = %if.end1172
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end1256

if.end1256:                                       ; preds = %do.end1250, %if.end1172.if.end1256_crit_edge
  %253 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %cur.i, align 4
  %255 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %end.i, align 4
  %cmp1270.not = icmp ult ptr %254, %256
  br i1 %cmp1270.not, label %if.end1256.if.end1295_crit_edge, label %do.end1289, !prof !38

if.end1256.if.end1295_crit_edge:                  ; preds = %if.end1256
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1295

do.end1289:                                       ; preds = %if.end1256
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end1295

if.end1295:                                       ; preds = %do.end1289, %if.end1256.if.end1295_crit_edge
  %257 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %cur.i, align 4
  %259 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1313 = ptrtoint ptr %258 to i32
  %sub.ptr.rhs.cast1314 = ptrtoint ptr %260 to i32
  %sub.ptr.sub1315 = sub i32 %sub.ptr.lhs.cast1313, %sub.ptr.rhs.cast1314
  %261 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %mem, align 8
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %262, align 4
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %264, align 4
  %267 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %client, align 4
  %name1327 = getelementptr inbounds %struct.nvif_object, ptr %268, i32 0, i32 2
  %269 = ptrtoint ptr %name1327 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %name1327, align 8
  %271 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %handle, align 4
  %273 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %266(ptr noundef %mem, ptr noundef nonnull @.str.14, ptr noundef %270, i32 noundef %272, ptr noundef %274, i32 noundef %sub.ptr.sub1315, i32 noundef %249, i32 noundef 0) #2
  %275 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1336 = getelementptr i32, ptr %276, i32 1
  store ptr %incdec.ptr1336, ptr %cur.i, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %249, ptr %276, align 4
  %278 = load ptr, ptr %cur.i, align 4
  %279 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %seg.i, align 8
  %cmp1529.not = icmp ult ptr %278, %280
  br i1 %cmp1529.not, label %if.end1295.if.end1554_crit_edge, label %do.end1548, !prof !38

if.end1295.if.end1554_crit_edge:                  ; preds = %if.end1295
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1554

do.end1548:                                       ; preds = %if.end1295
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end1554

if.end1554:                                       ; preds = %do.end1548, %if.end1295.if.end1554_crit_edge
  %281 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %cur.i, align 4
  %283 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %end.i, align 4
  %cmp1568.not = icmp ult ptr %282, %284
  br i1 %cmp1568.not, label %if.end1554.if.end1593_crit_edge, label %do.end1587, !prof !38

if.end1554.if.end1593_crit_edge:                  ; preds = %if.end1554
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1593

do.end1587:                                       ; preds = %if.end1554
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end1593

if.end1593:                                       ; preds = %do.end1587, %if.end1554.if.end1593_crit_edge
  %285 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %cur.i, align 4
  %287 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1611 = ptrtoint ptr %286 to i32
  %sub.ptr.rhs.cast1612 = ptrtoint ptr %288 to i32
  %sub.ptr.sub1613 = sub i32 %sub.ptr.lhs.cast1611, %sub.ptr.rhs.cast1612
  %289 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %mem, align 8
  %291 = ptrtoint ptr %290 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %290, align 4
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %292, align 4
  %295 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %client, align 4
  %name1625 = getelementptr inbounds %struct.nvif_object, ptr %296, i32 0, i32 2
  %297 = ptrtoint ptr %name1625 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %name1625, align 8
  %299 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %handle, align 4
  %301 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %294(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %298, i32 noundef %300, ptr noundef %302, i32 noundef %sub.ptr.sub1613, i32 noundef 262752, i32 noundef 608, i32 noundef 1, ptr noundef nonnull @__func__.wndwc67e_image_set) #2
  %303 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1634 = getelementptr i32, ptr %304, i32 1
  store ptr %incdec.ptr1634, ptr %cur.i, align 4
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 262752, ptr %304, align 4
  %offset = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 8
  %306 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %306)
  %307 = load i64, ptr %offset, align 8
  %shr1644 = lshr i64 %307, 8
  %conv1645 = trunc i64 %shr1644 to i32
  %308 = load ptr, ptr %cur.i, align 4
  %309 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %seg.i, align 8
  %cmp1650.not = icmp ult ptr %308, %310
  br i1 %cmp1650.not, label %if.end1593.if.end1675_crit_edge, label %do.end1669, !prof !38

if.end1593.if.end1675_crit_edge:                  ; preds = %if.end1593
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1675

do.end1669:                                       ; preds = %if.end1593
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end1675

if.end1675:                                       ; preds = %do.end1669, %if.end1593.if.end1675_crit_edge
  %311 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %cur.i, align 4
  %313 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %end.i, align 4
  %cmp1689.not = icmp ult ptr %312, %314
  br i1 %cmp1689.not, label %if.end1675.if.end1714_crit_edge, label %do.end1708, !prof !38

if.end1675.if.end1714_crit_edge:                  ; preds = %if.end1675
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1714

do.end1708:                                       ; preds = %if.end1675
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end1714

if.end1714:                                       ; preds = %do.end1708, %if.end1675.if.end1714_crit_edge
  %315 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %cur.i, align 4
  %317 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1732 = ptrtoint ptr %316 to i32
  %sub.ptr.rhs.cast1733 = ptrtoint ptr %318 to i32
  %sub.ptr.sub1734 = sub i32 %sub.ptr.lhs.cast1732, %sub.ptr.rhs.cast1733
  %319 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %mem, align 8
  %321 = ptrtoint ptr %320 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %320, align 4
  %323 = ptrtoint ptr %322 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %322, align 4
  %325 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %client, align 4
  %name1746 = getelementptr inbounds %struct.nvif_object, ptr %326, i32 0, i32 2
  %327 = ptrtoint ptr %name1746 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %name1746, align 8
  %329 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %handle, align 4
  %331 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %324(ptr noundef %mem, ptr noundef nonnull @.str.15, ptr noundef %328, i32 noundef %330, ptr noundef %332, i32 noundef %sub.ptr.sub1734, i32 noundef %conv1645) #2
  %333 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1755 = getelementptr i32, ptr %334, i32 1
  store ptr %incdec.ptr1755, ptr %cur.i, align 4
  %335 = ptrtoint ptr %334 to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %conv1645, ptr %334, align 4
  %336 = load ptr, ptr %cur.i, align 4
  %337 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %seg.i, align 8
  %cmp1827.not = icmp ult ptr %336, %338
  br i1 %cmp1827.not, label %if.end1714.if.end1852_crit_edge, label %do.end1846, !prof !38

if.end1714.if.end1852_crit_edge:                  ; preds = %if.end1714
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1852

do.end1846:                                       ; preds = %if.end1714
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 65, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end1852

if.end1852:                                       ; preds = %do.end1846, %if.end1714.if.end1852_crit_edge
  %339 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %cur.i, align 4
  %341 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %end.i, align 4
  %cmp1866.not = icmp ult ptr %340, %342
  br i1 %cmp1866.not, label %if.end1852.if.end1891_crit_edge, label %do.end1885, !prof !38

if.end1852.if.end1891_crit_edge:                  ; preds = %if.end1852
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1891

do.end1885:                                       ; preds = %if.end1852
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 65, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end1891

if.end1891:                                       ; preds = %do.end1885, %if.end1852.if.end1891_crit_edge
  %343 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %cur.i, align 4
  %345 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1909 = ptrtoint ptr %344 to i32
  %sub.ptr.rhs.cast1910 = ptrtoint ptr %346 to i32
  %sub.ptr.sub1911 = sub i32 %sub.ptr.lhs.cast1909, %sub.ptr.rhs.cast1910
  %347 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %mem, align 8
  %349 = ptrtoint ptr %348 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %348, align 4
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %350, align 4
  %353 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %client, align 4
  %name1923 = getelementptr inbounds %struct.nvif_object, ptr %354, i32 0, i32 2
  %355 = ptrtoint ptr %name1923 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %name1923, align 8
  %357 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %handle, align 4
  %359 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %352(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %356, i32 noundef %358, ptr noundef %360, i32 noundef %sub.ptr.sub1911, i32 noundef 262800, i32 noundef 656, i32 noundef 1, ptr noundef nonnull @__func__.wndwc67e_image_set) #2
  %361 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1932 = getelementptr i32, ptr %362, i32 1
  store ptr %incdec.ptr1932, ptr %cur.i, align 4
  %363 = ptrtoint ptr %362 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 262800, ptr %362, align 4
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 8
  %364 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %src_x, align 8
  %shr1940 = lshr i32 %365, 16
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 9
  %366 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %src_y, align 4
  %shr1945 = and i32 %367, -65536
  %or19493000 = or i32 %shr1945, %shr1940
  %368 = load ptr, ptr %cur.i, align 4
  %369 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %seg.i, align 8
  %cmp1955.not = icmp ult ptr %368, %370
  br i1 %cmp1955.not, label %if.end1891.if.end1980_crit_edge, label %do.end1974, !prof !38

if.end1891.if.end1980_crit_edge:                  ; preds = %if.end1891
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1980

do.end1974:                                       ; preds = %if.end1891
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 65, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end1980

if.end1980:                                       ; preds = %do.end1974, %if.end1891.if.end1980_crit_edge
  %371 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %cur.i, align 4
  %373 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %end.i, align 4
  %cmp1994.not = icmp ult ptr %372, %374
  br i1 %cmp1994.not, label %if.end1980.if.end2019_crit_edge, label %do.end2013, !prof !38

if.end1980.if.end2019_crit_edge:                  ; preds = %if.end1980
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2019

do.end2013:                                       ; preds = %if.end1980
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 65, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end2019

if.end2019:                                       ; preds = %do.end2013, %if.end1980.if.end2019_crit_edge
  %375 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %cur.i, align 4
  %377 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2037 = ptrtoint ptr %376 to i32
  %sub.ptr.rhs.cast2038 = ptrtoint ptr %378 to i32
  %sub.ptr.sub2039 = sub i32 %sub.ptr.lhs.cast2037, %sub.ptr.rhs.cast2038
  %379 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %mem, align 8
  %381 = ptrtoint ptr %380 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %380, align 4
  %383 = ptrtoint ptr %382 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %382, align 4
  %385 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %client, align 4
  %name2051 = getelementptr inbounds %struct.nvif_object, ptr %386, i32 0, i32 2
  %387 = ptrtoint ptr %name2051 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %name2051, align 8
  %389 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %handle, align 4
  %391 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %384(ptr noundef %mem, ptr noundef nonnull @.str.16, ptr noundef %388, i32 noundef %390, ptr noundef %392, i32 noundef %sub.ptr.sub2039, i32 noundef %or19493000) #2
  %393 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2060 = getelementptr i32, ptr %394, i32 1
  store ptr %incdec.ptr2060, ptr %cur.i, align 4
  %395 = ptrtoint ptr %394 to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 %or19493000, ptr %394, align 4
  %396 = load ptr, ptr %cur.i, align 4
  %397 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %seg.i, align 8
  %cmp2132.not = icmp ult ptr %396, %398
  br i1 %cmp2132.not, label %if.end2019.if.end2157_crit_edge, label %do.end2151, !prof !38

if.end2019.if.end2157_crit_edge:                  ; preds = %if.end2019
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2157

do.end2151:                                       ; preds = %if.end2019
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end2157

if.end2157:                                       ; preds = %do.end2151, %if.end2019.if.end2157_crit_edge
  %399 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %cur.i, align 4
  %401 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %end.i, align 4
  %cmp2171.not = icmp ult ptr %400, %402
  br i1 %cmp2171.not, label %if.end2157.if.end2196_crit_edge, label %do.end2190, !prof !38

if.end2157.if.end2196_crit_edge:                  ; preds = %if.end2157
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2196

do.end2190:                                       ; preds = %if.end2157
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end2196

if.end2196:                                       ; preds = %do.end2190, %if.end2157.if.end2196_crit_edge
  %403 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %cur.i, align 4
  %405 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2214 = ptrtoint ptr %404 to i32
  %sub.ptr.rhs.cast2215 = ptrtoint ptr %406 to i32
  %sub.ptr.sub2216 = sub i32 %sub.ptr.lhs.cast2214, %sub.ptr.rhs.cast2215
  %407 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %mem, align 8
  %409 = ptrtoint ptr %408 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %408, align 4
  %411 = ptrtoint ptr %410 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %410, align 4
  %413 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %client, align 4
  %name2228 = getelementptr inbounds %struct.nvif_object, ptr %414, i32 0, i32 2
  %415 = ptrtoint ptr %name2228 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %name2228, align 8
  %417 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %handle, align 4
  %419 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %412(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %416, i32 noundef %418, ptr noundef %420, i32 noundef %sub.ptr.sub2216, i32 noundef 262808, i32 noundef 664, i32 noundef 1, ptr noundef nonnull @__func__.wndwc67e_image_set) #2
  %421 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2237 = getelementptr i32, ptr %422, i32 1
  store ptr %incdec.ptr2237, ptr %cur.i, align 4
  %423 = ptrtoint ptr %422 to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 262808, ptr %422, align 4
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 11
  %424 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %src_w, align 4
  %shr2246 = lshr i32 %425, 16
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 10
  %426 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %src_h, align 8
  %shr2251 = and i32 %427, -65536
  %or22553001 = or i32 %shr2251, %shr2246
  %428 = load ptr, ptr %cur.i, align 4
  %429 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %seg.i, align 8
  %cmp2261.not = icmp ult ptr %428, %430
  br i1 %cmp2261.not, label %if.end2196.if.end2286_crit_edge, label %do.end2280, !prof !38

if.end2196.if.end2286_crit_edge:                  ; preds = %if.end2196
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2286

do.end2280:                                       ; preds = %if.end2196
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end2286

if.end2286:                                       ; preds = %do.end2280, %if.end2196.if.end2286_crit_edge
  %431 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %cur.i, align 4
  %433 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %end.i, align 4
  %cmp2300.not = icmp ult ptr %432, %434
  br i1 %cmp2300.not, label %if.end2286.if.end2325_crit_edge, label %do.end2319, !prof !38

if.end2286.if.end2325_crit_edge:                  ; preds = %if.end2286
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2325

do.end2319:                                       ; preds = %if.end2286
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end2325

if.end2325:                                       ; preds = %do.end2319, %if.end2286.if.end2325_crit_edge
  %435 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %cur.i, align 4
  %437 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2343 = ptrtoint ptr %436 to i32
  %sub.ptr.rhs.cast2344 = ptrtoint ptr %438 to i32
  %sub.ptr.sub2345 = sub i32 %sub.ptr.lhs.cast2343, %sub.ptr.rhs.cast2344
  %439 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %mem, align 8
  %441 = ptrtoint ptr %440 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %440, align 4
  %443 = ptrtoint ptr %442 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %442, align 4
  %445 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %client, align 4
  %name2357 = getelementptr inbounds %struct.nvif_object, ptr %446, i32 0, i32 2
  %447 = ptrtoint ptr %name2357 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %name2357, align 8
  %449 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %handle, align 4
  %451 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %444(ptr noundef %mem, ptr noundef nonnull @.str.17, ptr noundef %448, i32 noundef %450, ptr noundef %452, i32 noundef %sub.ptr.sub2345, i32 noundef %or22553001) #2
  %453 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2366 = getelementptr i32, ptr %454, i32 1
  store ptr %incdec.ptr2366, ptr %cur.i, align 4
  %455 = ptrtoint ptr %454 to i32
  call void @__asan_store4_noabort(i32 %455)
  store i32 %or22553001, ptr %454, align 4
  %456 = load ptr, ptr %cur.i, align 4
  %457 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %seg.i, align 8
  %cmp2438.not = icmp ult ptr %456, %458
  br i1 %cmp2438.not, label %if.end2325.if.end2463_crit_edge, label %do.end2457, !prof !38

if.end2325.if.end2463_crit_edge:                  ; preds = %if.end2325
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2463

do.end2457:                                       ; preds = %if.end2325
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end2463

if.end2463:                                       ; preds = %do.end2457, %if.end2325.if.end2463_crit_edge
  %459 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %cur.i, align 4
  %461 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %end.i, align 4
  %cmp2477.not = icmp ult ptr %460, %462
  br i1 %cmp2477.not, label %if.end2463.if.end2502_crit_edge, label %do.end2496, !prof !38

if.end2463.if.end2502_crit_edge:                  ; preds = %if.end2463
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2502

do.end2496:                                       ; preds = %if.end2463
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end2502

if.end2502:                                       ; preds = %do.end2496, %if.end2463.if.end2502_crit_edge
  %463 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %cur.i, align 4
  %465 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2520 = ptrtoint ptr %464 to i32
  %sub.ptr.rhs.cast2521 = ptrtoint ptr %466 to i32
  %sub.ptr.sub2522 = sub i32 %sub.ptr.lhs.cast2520, %sub.ptr.rhs.cast2521
  %467 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %mem, align 8
  %469 = ptrtoint ptr %468 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %468, align 4
  %471 = ptrtoint ptr %470 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %470, align 4
  %473 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %client, align 4
  %name2534 = getelementptr inbounds %struct.nvif_object, ptr %474, i32 0, i32 2
  %475 = ptrtoint ptr %name2534 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %name2534, align 8
  %477 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %handle, align 4
  %479 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %472(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %476, i32 noundef %478, ptr noundef %480, i32 noundef %sub.ptr.sub2522, i32 noundef 262820, i32 noundef 676, i32 noundef 1, ptr noundef nonnull @__func__.wndwc67e_image_set) #2
  %481 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2543 = getelementptr i32, ptr %482, i32 1
  store ptr %incdec.ptr2543, ptr %cur.i, align 4
  %483 = ptrtoint ptr %482 to i32
  call void @__asan_store4_noabort(i32 %483)
  store i32 262820, ptr %482, align 4
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 6
  %484 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %crtc_w, align 8
  %486 = and i32 %485, 65535
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 7
  %487 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %crtc_h, align 4
  %489 = shl i32 %488, 16
  %or25593002 = or i32 %489, %486
  %490 = load ptr, ptr %cur.i, align 4
  %491 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %seg.i, align 8
  %cmp2565.not = icmp ult ptr %490, %492
  br i1 %cmp2565.not, label %if.end2502.if.end2590_crit_edge, label %do.end2584, !prof !38

if.end2502.if.end2590_crit_edge:                  ; preds = %if.end2502
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2590

do.end2584:                                       ; preds = %if.end2502
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end2590

if.end2590:                                       ; preds = %do.end2584, %if.end2502.if.end2590_crit_edge
  %493 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %cur.i, align 4
  %495 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %end.i, align 4
  %cmp2604.not = icmp ult ptr %494, %496
  br i1 %cmp2604.not, label %if.end2590.if.end2629_crit_edge, label %do.end2623, !prof !38

if.end2590.if.end2629_crit_edge:                  ; preds = %if.end2590
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2629

do.end2623:                                       ; preds = %if.end2590
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end2629

if.end2629:                                       ; preds = %do.end2623, %if.end2590.if.end2629_crit_edge
  %497 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %cur.i, align 4
  %499 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2647 = ptrtoint ptr %498 to i32
  %sub.ptr.rhs.cast2648 = ptrtoint ptr %500 to i32
  %sub.ptr.sub2649 = sub i32 %sub.ptr.lhs.cast2647, %sub.ptr.rhs.cast2648
  %501 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %mem, align 8
  %503 = ptrtoint ptr %502 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %502, align 4
  %505 = ptrtoint ptr %504 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %504, align 4
  %507 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %client, align 4
  %name2661 = getelementptr inbounds %struct.nvif_object, ptr %508, i32 0, i32 2
  %509 = ptrtoint ptr %name2661 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %name2661, align 8
  %511 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %handle, align 4
  %513 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %506(ptr noundef %mem, ptr noundef nonnull @.str.18, ptr noundef %510, i32 noundef %512, ptr noundef %514, i32 noundef %sub.ptr.sub2649, i32 noundef %or25593002) #2
  %515 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2670 = getelementptr i32, ptr %516, i32 1
  store ptr %incdec.ptr2670, ptr %cur.i, align 4
  %517 = ptrtoint ptr %516 to i32
  call void @__asan_store4_noabort(i32 %517)
  store i32 %or25593002, ptr %516, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2629, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2629 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_image_clr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_blend_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_update(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !21, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @wndwc67e, !1, !"wndwc67e", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc67e.c", i32 78, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc67e.c", i32 38, i32 2}
!4 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.wndwc67e_image_set, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc67e.c", i32 43, i32 2}
!13 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.11, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.12, !12, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.13, !12, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc67e.c", i32 60, i32 2}
!21 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc67e.c", i32 61, i32 2}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc67e.c", i32 63, i32 2}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc67e.c", i32 67, i32 2}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc67e.c", i32 71, i32 2}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 2000, i32 1}
