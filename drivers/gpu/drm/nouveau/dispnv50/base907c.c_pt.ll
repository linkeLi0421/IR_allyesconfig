; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/base907c.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/base907c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_wndw_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_wndw_atom = type { %struct.drm_plane_state, ptr, i8, %struct.anon.92, %struct.anon.93, [4 x i8], %struct.anon.94, %struct.anon.96, %struct.anon.97, %struct.anon.98, %struct.anon.99, %struct.anon.100, %union.nv50_wndw_atom_mask, %union.nv50_wndw_atom_mask }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.anon.92 = type { i32, i16 }
%struct.anon.93 = type { i32, i16, i32, i32 }
%struct.anon.94 = type { i32, [4 x i8], %struct.anon.95 }
%struct.anon.95 = type { [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.96 = type { [12 x i32], i8 }
%struct.anon.97 = type { i8, i8, i16, [3 x i16], [3 x i32], i16, i16, [6 x i32], [6 x i64] }
%struct.anon.98 = type { i16, i16, i16, i16, i16, i16 }
%struct.anon.99 = type { i16, i16 }
%struct.anon.100 = type { i8, i8, i8 }
%union.nv50_wndw_atom_mask = type { %struct.anon.101 }
%struct.anon.101 = type { i8 }
%struct.nv50_wndw = type { ptr, ptr, i32, %struct.nv50_disp_interlock, %struct.anon.118, %struct.drm_plane, %struct.nv50_lut, %struct.nv50_dmac, %struct.nv50_dmac, %struct.nvif_notify, i16, i16, i32 }
%struct.nv50_disp_interlock = type { i32, i32, i32 }
%struct.anon.118 = type { ptr, %struct.list_head }
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
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.117 }
%struct.anon.117 = type { ptr, i64 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@base907c = dso_local constant { %struct.nv50_wndw_func, [36 x i8] } { %struct.nv50_wndw_func { ptr @base507c_acquire, ptr @base507c_release, ptr null, ptr @base507c_sema_set, ptr @base507c_sema_clr, ptr @base507c_ntfy_reset, ptr @base507c_ntfy_set, ptr @base507c_ntfy_clr, ptr @base507c_ntfy_wait_begun, ptr @base907c_ilut, ptr @base907c_csc, ptr @base907c_csc_set, ptr @base907c_csc_clr, i8 0, i32 1024, i8 1, ptr @base907c_xlut_set, ptr @base907c_xlut_clr, ptr @base907c_image_set, ptr @base507c_image_clr, ptr null, ptr null, ptr @base507c_update }, [36 x i8] zeroinitializer }, align 32
@base507c_format = external dso_local constant [0 x i32], align 4
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/base907c.c\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.base907c_csc_set = private unnamed_addr constant [17 x i8] c"base907c_csc_set\00", align 1
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907C_SET_CSC_RED2RED\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907C_SET_CSC_GRN2RED+0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.base907c_csc_clr = private unnamed_addr constant [17 x i8] c"base907c_csc_clr\00", align 1
@__func__.base907c_xlut_set = private unnamed_addr constant [18 x i8] c"base907c_xlut_set\00", align 1
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907C_SET_BASE_LUT_LO\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907C_SET_BASE_LUT_HI\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907C_SET_OUTPUT_LUT_LO\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907C_SET_CONTEXT_DMA_LUT\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.base907c_xlut_clr = private unnamed_addr constant [18 x i8] c"base907c_xlut_clr\00", align 1
@__func__.base907c_image_set = private unnamed_addr constant [19 x i8] c"base907c_image_set\00", align 1
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907C_SET_PRESENT_CONTROL\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907C_SET_CONTEXT_DMAS_ISO(0)+0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907C_SURFACE_SET_OFFSET(0, 0)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907C_SURFACE_SET_OFFSET(0, 1)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907C_SURFACE_SET_SIZE(0)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907C_SURFACE_SET_STORAGE(0)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907C_SURFACE_SET_PARAMS(0)\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [9 x i8] c"base907c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 188, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 179, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 93, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 102, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 37, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 42, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/base907c.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 44, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @base907c, ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base907c to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @base907c_csc(ptr nocapture readnone %wndw, ptr nocapture noundef writeonly %asyw, ptr nocapture noundef readonly %ctm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %csc = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 7
  br label %if.else

if.else:                                          ; preds = %if.end.3.if.else_crit_edge, %entry
  %j.022 = phi i32 [ 0, %entry ], [ %inc10, %if.end.3.if.else_crit_edge ]
  %mul = shl i32 %j.022, 2
  %mul6 = mul nuw nsw i32 %j.022, 3
  %arrayidx = getelementptr [12 x i32], ptr %csc, i32 0, i32 %mul
  %arrayidx8 = getelementptr [9 x i64], ptr %ctm, i32 0, i32 %mul6
  %0 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx8, align 8
  %shr.i = lshr i64 %1, 32
  %2 = trunc i64 %shr.i to i32
  %conv.i = and i32 %2, 2147483644
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %conv.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %in.lobit.i = lshr i64 %1, 63
  %3 = trunc i64 %in.lobit.i to i32
  %sub.i = add nuw nsw i32 %3, 262143
  br label %if.else.1

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %conv3.i = trunc i64 %1 to i32
  %or.i = tail call i32 @llvm.fshl.i32(i32 %2, i32 %conv3.i, i32 16) #5
  %sub10.i = sub i32 0, %or.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not19.i = icmp slt i64 %1, 0
  %spec.select.i = select i1 %tobool.not19.i, i32 %sub10.i, i32 %or.i
  %and11.i = and i32 %spec.select.i, 524287
  br label %if.else.1

if.else.1:                                        ; preds = %if.else.i, %if.then.i
  %storemerge = phi i32 [ %sub.i, %if.then.i ], [ %and11.i, %if.else.i ]
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge, ptr %arrayidx, align 4
  %add.1 = or i32 %mul, 1
  %arrayidx.1 = getelementptr [12 x i32], ptr %csc, i32 0, i32 %add.1
  %add7.1 = add nuw nsw i32 %mul6, 1
  %arrayidx8.1 = getelementptr [9 x i64], ptr %ctm, i32 0, i32 %add7.1
  %5 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx8.1, align 8
  %shr.i.1 = lshr i64 %6, 32
  %7 = trunc i64 %shr.i.1 to i32
  %conv.i.1 = and i32 %7, 2147483644
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.1)
  %cmp.not.i.1 = icmp eq i32 %conv.i.1, 0
  br i1 %cmp.not.i.1, label %if.else.i.1, label %if.then.i.1

if.then.i.1:                                      ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #7
  %in.lobit.i.1 = lshr i64 %6, 63
  %8 = trunc i64 %in.lobit.i.1 to i32
  %sub.i.1 = add nuw nsw i32 %8, 262143
  br label %if.else.2

if.else.i.1:                                      ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #7
  %conv3.i.1 = trunc i64 %6 to i32
  %or.i.1 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %conv3.i.1, i32 16) #5
  %sub10.i.1 = sub i32 0, %or.i.1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not19.i.1 = icmp slt i64 %6, 0
  %spec.select.i.1 = select i1 %tobool.not19.i.1, i32 %sub10.i.1, i32 %or.i.1
  %and11.i.1 = and i32 %spec.select.i.1, 524287
  br label %if.else.2

if.else.2:                                        ; preds = %if.else.i.1, %if.then.i.1
  %storemerge.1 = phi i32 [ %sub.i.1, %if.then.i.1 ], [ %and11.i.1, %if.else.i.1 ]
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %storemerge.1, ptr %arrayidx.1, align 4
  %add.2 = or i32 %mul, 2
  %arrayidx.2 = getelementptr [12 x i32], ptr %csc, i32 0, i32 %add.2
  %add7.2 = add nuw nsw i32 %mul6, 2
  %arrayidx8.2 = getelementptr [9 x i64], ptr %ctm, i32 0, i32 %add7.2
  %10 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx8.2, align 8
  %shr.i.2 = lshr i64 %11, 32
  %12 = trunc i64 %shr.i.2 to i32
  %conv.i.2 = and i32 %12, 2147483644
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.2)
  %cmp.not.i.2 = icmp eq i32 %conv.i.2, 0
  br i1 %cmp.not.i.2, label %if.else.i.2, label %if.then.i.2

if.then.i.2:                                      ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #7
  %in.lobit.i.2 = lshr i64 %11, 63
  %13 = trunc i64 %in.lobit.i.2 to i32
  %sub.i.2 = add nuw nsw i32 %13, 262143
  br label %if.end.3

if.else.i.2:                                      ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #7
  %conv3.i.2 = trunc i64 %11 to i32
  %or.i.2 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %conv3.i.2, i32 16) #5
  %sub10.i.2 = sub i32 0, %or.i.2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not19.i.2 = icmp slt i64 %11, 0
  %spec.select.i.2 = select i1 %tobool.not19.i.2, i32 %sub10.i.2, i32 %or.i.2
  %and11.i.2 = and i32 %spec.select.i.2, 524287
  br label %if.end.3

if.end.3:                                         ; preds = %if.else.i.2, %if.then.i.2
  %storemerge.2 = phi i32 [ %sub.i.2, %if.then.i.2 ], [ %and11.i.2, %if.else.i.2 ]
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge.2, ptr %arrayidx.2, align 4
  %add.3 = or i32 %mul, 3
  %arrayidx.3 = getelementptr [12 x i32], ptr %csc, i32 0, i32 %add.3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx.3, align 4
  %inc10 = add nuw nsw i32 %j.022, 1
  %exitcond.not = icmp eq i32 %inc10, 3
  br i1 %exitcond.not, label %for.end11, label %if.end.3.if.else_crit_edge

if.end.3.if.else_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

for.end11:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @base907c_ilut(ptr nocapture noundef readnone %wndw, ptr nocapture noundef %asyw, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %size)
  %cmp = icmp eq i32 %size, 1024
  %i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 6)
  %bf.load = load i48, ptr %i, align 8
  %bf.clear = and i48 %bf.load, -127
  %. = select i1 %cmp, i48 8, i48 14
  %bf.set5 = or i48 %bf.clear, %.
  %i7 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 6, i32 2
  %bf.set10 = or i48 %bf.set5, 64
  %1 = ptrtoint ptr %i7 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 6)
  store i48 %bf.set10, ptr %i7, align 8
  %load = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 6, i32 2, i32 2
  %2 = ptrtoint ptr %load to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @head907d_olut_load, ptr %load, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @base907c_csc_set(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  br i1 %cmp.not.i, label %entry.if.end74_crit_edge, label %if.then.i

entry.if.end74_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end74_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.if.end74_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.end74:                                         ; preds = %if.then.i.if.end74_crit_edge, %entry.if.end74_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 13
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end74.if.end110_crit_edge, label %do.end104, !prof !47

if.end74.if.end110_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

do.end104:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 183, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end110

if.end110:                                        ; preds = %do.end104, %if.end74.if.end110_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp123.not = icmp ult ptr %12, %14
  br i1 %cmp123.not, label %if.end110.if.end147_crit_edge, label %do.end141, !prof !47

if.end110.if.end147_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end147

do.end141:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 183, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end147

if.end147:                                        ; preds = %do.end141, %if.end110.if.end147_crit_edge
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
  %name164 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 3146048, i32 noundef 320, i32 noundef 12, ptr noundef nonnull @__func__.base907c_csc_set) #5
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3146048, ptr %34, align 4
  %csc = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 7
  %36 = ptrtoint ptr %csc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %csc, align 8
  %38 = and i32 %37, 524287
  %39 = or i32 %38, -2147483648
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %seg.i, align 8
  %cmp182.not = icmp ult ptr %40, %42
  br i1 %cmp182.not, label %if.end147.if.end207_crit_edge, label %do.end201, !prof !47

if.end147.if.end207_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end207

do.end201:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 183, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end207

if.end207:                                        ; preds = %do.end201, %if.end147.if.end207_crit_edge
  %43 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %end.i, align 4
  %cmp221.not = icmp ult ptr %44, %46
  br i1 %cmp221.not, label %if.end207.if.end246_crit_edge, label %do.end240, !prof !47

if.end207.if.end246_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end246

do.end240:                                        ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 183, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end246

if.end246:                                        ; preds = %do.end240, %if.end207.if.end246_crit_edge
  %47 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cur.i, align 4
  %49 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast264 = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast265 = ptrtoint ptr %50 to i32
  %sub.ptr.sub266 = sub i32 %sub.ptr.lhs.cast264, %sub.ptr.rhs.cast265
  %51 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mem, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %57 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %client, align 4
  %name278 = getelementptr inbounds %struct.nvif_object, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %name278 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name278, align 8
  %61 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %handle, align 4
  %63 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %56(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %60, i32 noundef %62, ptr noundef %64, i32 noundef %sub.ptr.sub266, i32 noundef %39) #5
  %65 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cur.i, align 4
  %incdec.ptr287 = getelementptr i32, ptr %66, i32 1
  store ptr %incdec.ptr287, ptr %cur.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %39, ptr %66, align 4
  %arrayidx295 = getelementptr %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 7, i32 0, i32 1
  %incdec.ptr301 = getelementptr %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 7, i32 0, i32 2
  %68 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx295, align 4
  %70 = load ptr, ptr %cur.i, align 4
  %71 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %seg.i, align 8
  %cmp306.not = icmp ult ptr %70, %72
  br i1 %cmp306.not, label %if.end246.if.end331_crit_edge, label %do.end325, !prof !47

if.end246.if.end331_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end331

do.end325:                                        ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 183, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end331

if.end331:                                        ; preds = %do.end325, %if.end246.if.end331_crit_edge
  %73 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cur.i, align 4
  %75 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %end.i, align 4
  %cmp345.not = icmp ult ptr %74, %76
  br i1 %cmp345.not, label %if.end331.if.end370_crit_edge, label %do.end364, !prof !47

if.end331.if.end370_crit_edge:                    ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end370

do.end364:                                        ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 183, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end370

if.end370:                                        ; preds = %do.end364, %if.end331.if.end370_crit_edge
  %77 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cur.i, align 4
  %79 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast388 = ptrtoint ptr %78 to i32
  %sub.ptr.rhs.cast389 = ptrtoint ptr %80 to i32
  %sub.ptr.sub390 = sub i32 %sub.ptr.lhs.cast388, %sub.ptr.rhs.cast389
  %81 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mem, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %87 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %client, align 4
  %name402 = getelementptr inbounds %struct.nvif_object, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %name402 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %name402, align 8
  %91 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %handle, align 4
  %93 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %86(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %90, i32 noundef %92, ptr noundef %94, i32 noundef %sub.ptr.sub390, i32 noundef %69, i32 noundef 0) #5
  %95 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cur.i, align 4
  %incdec.ptr411 = getelementptr i32, ptr %96, i32 1
  store ptr %incdec.ptr411, ptr %cur.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %69, ptr %96, align 4
  br label %do.body416

do.body416:                                       ; preds = %if.end488.do.body416_crit_edge, %if.end370
  %dec414613 = phi i32 [ 9, %if.end370 ], [ %dec414, %if.end488.do.body416_crit_edge ]
  %_i.0612 = phi i32 [ 4, %if.end370 ], [ %add, %if.end488.do.body416_crit_edge ]
  %_dd.0611 = phi ptr [ %incdec.ptr301, %if.end370 ], [ %incdec.ptr419, %if.end488.do.body416_crit_edge ]
  %incdec.ptr419 = getelementptr i32, ptr %_dd.0611, i32 1
  %98 = ptrtoint ptr %_dd.0611 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %_dd.0611, align 4
  %100 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur.i, align 4
  %102 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %seg.i, align 8
  %cmp424.not = icmp ult ptr %101, %103
  br i1 %cmp424.not, label %do.body416.if.end449_crit_edge, label %do.end443, !prof !47

do.body416.if.end449_crit_edge:                   ; preds = %do.body416
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end449

do.end443:                                        ; preds = %do.body416
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 183, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end449

if.end449:                                        ; preds = %do.end443, %do.body416.if.end449_crit_edge
  %104 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cur.i, align 4
  %106 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %end.i, align 4
  %cmp463.not = icmp ult ptr %105, %107
  br i1 %cmp463.not, label %if.end449.if.end488_crit_edge, label %do.end482, !prof !47

if.end449.if.end488_crit_edge:                    ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end488

do.end482:                                        ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 183, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end488

if.end488:                                        ; preds = %do.end482, %if.end449.if.end488_crit_edge
  %108 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cur.i, align 4
  %110 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast506 = ptrtoint ptr %109 to i32
  %sub.ptr.rhs.cast507 = ptrtoint ptr %111 to i32
  %sub.ptr.sub508 = sub i32 %sub.ptr.lhs.cast506, %sub.ptr.rhs.cast507
  %112 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mem, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %118 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %client, align 4
  %name520 = getelementptr inbounds %struct.nvif_object, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %name520 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %name520, align 8
  %122 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %handle, align 4
  %124 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %117(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %121, i32 noundef %123, ptr noundef %125, i32 noundef %sub.ptr.sub508, i32 noundef %99, i32 noundef %_i.0612) #5
  %126 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cur.i, align 4
  %incdec.ptr529 = getelementptr i32, ptr %127, i32 1
  store ptr %incdec.ptr529, ptr %cur.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %99, ptr %127, align 4
  %add = add nuw nsw i32 %_i.0612, 4
  %dec414 = add nsw i32 %dec414613, -1
  %tobool415.not = icmp eq i32 %dec414613, 0
  br i1 %tobool415.not, label %if.end488.cleanup_crit_edge, label %if.end488.do.body416_crit_edge

if.end488.do.body416_crit_edge:                   ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body416

if.end488.cleanup_crit_edge:                      ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end488.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.i.cleanup_crit_edge ], [ 0, %if.end488.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @base907c_csc_clr(ptr nocapture noundef readonly %wndw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 2
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end44_crit_edge, label %if.then.i

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end44_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.if.end44_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.end44:                                         ; preds = %if.then.i.if.end44_crit_edge, %entry.if.end44_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 2
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !47

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 166, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !47

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 166, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262464, i32 noundef 320, i32 noundef 1, ptr noundef nonnull @__func__.base907c_csc_clr) #5
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262464, ptr %34, align 4
  %36 = load ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %seg.i, align 8
  %cmp151.not = icmp ult ptr %36, %38
  br i1 %cmp151.not, label %if.end117.if.end175_crit_edge, label %do.end169, !prof !47

if.end117.if.end175_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end175

do.end169:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 166, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end175

if.end175:                                        ; preds = %do.end169, %if.end117.if.end175_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %cmp189.not = icmp ult ptr %40, %42
  br i1 %cmp189.not, label %if.end175.if.end213_crit_edge, label %do.end207, !prof !47

if.end175.if.end213_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end213

do.end207:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 166, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end213

if.end213:                                        ; preds = %do.end207, %if.end175.if.end213_crit_edge
  %43 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast231 = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast232 = ptrtoint ptr %46 to i32
  %sub.ptr.sub233 = sub i32 %sub.ptr.lhs.cast231, %sub.ptr.rhs.cast232
  %47 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mem, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client, align 4
  %name245 = getelementptr inbounds %struct.nvif_object, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %name245 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name245, align 8
  %57 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %handle, align 4
  %59 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %52(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %56, i32 noundef %58, ptr noundef %60, i32 noundef %sub.ptr.sub233, i32 noundef 0) #5
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %incdec.ptr254 = getelementptr i32, ptr %62, i32 1
  store ptr %incdec.ptr254, ptr %cur.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %62, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end213, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end213 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @base907c_xlut_set(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 6
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end104_crit_edge, label %if.then.i

entry.if.end104_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end104_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.if.end104_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.end104:                                        ; preds = %if.then.i.if.end104_crit_edge, %entry.if.end104_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 6
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end104.if.end140_crit_edge, label %do.end134, !prof !47

if.end104.if.end140_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end140

do.end134:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end140

if.end140:                                        ; preds = %do.end134, %if.end104.if.end140_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp153.not = icmp ult ptr %12, %14
  br i1 %cmp153.not, label %if.end140.if.end177_crit_edge, label %do.end171, !prof !47

if.end140.if.end177_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177

do.end171:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end177

if.end177:                                        ; preds = %do.end171, %if.end140.if.end177_crit_edge
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
  %name194 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %name194 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name194, align 8
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 786656, i32 noundef 224, i32 noundef 3, ptr noundef nonnull @__func__.base907c_xlut_set) #5
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 786656, ptr %34, align 4
  %xlut = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 6
  %i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 6, i32 2
  %36 = ptrtoint ptr %i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 6)
  %bf.load = load i48, ptr %i, align 8
  %37 = trunc i48 %bf.load to i32
  %38 = shl i32 %37, 25
  %shl = and i32 %38, -1073741824
  %39 = shl i32 %37, 23
  %shl215 = and i32 %39, 251658240
  %or = or i32 %shl, %shl215
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %seg.i, align 8
  %cmp221.not = icmp ult ptr %40, %42
  br i1 %cmp221.not, label %if.end177.if.end246_crit_edge, label %do.end240, !prof !47

if.end177.if.end246_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end246

do.end240:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end246

if.end246:                                        ; preds = %do.end240, %if.end177.if.end246_crit_edge
  %43 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %end.i, align 4
  %cmp260.not = icmp ult ptr %44, %46
  br i1 %cmp260.not, label %if.end246.if.end285_crit_edge, label %do.end279, !prof !47

if.end246.if.end285_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end285

do.end279:                                        ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end285

if.end285:                                        ; preds = %do.end279, %if.end246.if.end285_crit_edge
  %47 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cur.i, align 4
  %49 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast303 = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast304 = ptrtoint ptr %50 to i32
  %sub.ptr.sub305 = sub i32 %sub.ptr.lhs.cast303, %sub.ptr.rhs.cast304
  %51 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mem, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %57 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %client, align 4
  %name317 = getelementptr inbounds %struct.nvif_object, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %name317 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name317, align 8
  %61 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %handle, align 4
  %63 = ptrtoint ptr %name194 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name194, align 8
  tail call void (ptr, ptr, ...) %56(ptr noundef %mem, ptr noundef nonnull @.str.10, ptr noundef %60, i32 noundef %62, ptr noundef %64, i32 noundef %sub.ptr.sub305, i32 noundef %or) #5
  %65 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cur.i, align 4
  %incdec.ptr326 = getelementptr i32, ptr %66, i32 1
  store ptr %incdec.ptr326, ptr %cur.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or, ptr %66, align 4
  %68 = ptrtoint ptr %i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 6)
  %bf.load336 = load i48, ptr %i, align 8
  %bf.lshr337 = lshr i48 %bf.load336, 16
  %conv339 = trunc i48 %bf.lshr337 to i32
  %69 = load ptr, ptr %cur.i, align 4
  %70 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %seg.i, align 8
  %cmp344.not = icmp ult ptr %69, %71
  br i1 %cmp344.not, label %if.end285.if.end369_crit_edge, label %do.end363, !prof !47

if.end285.if.end369_crit_edge:                    ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end369

do.end363:                                        ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end369

if.end369:                                        ; preds = %do.end363, %if.end285.if.end369_crit_edge
  %72 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cur.i, align 4
  %74 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %end.i, align 4
  %cmp383.not = icmp ult ptr %73, %75
  br i1 %cmp383.not, label %if.end369.if.end408_crit_edge, label %do.end402, !prof !47

if.end369.if.end408_crit_edge:                    ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end408

do.end402:                                        ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end408

if.end408:                                        ; preds = %do.end402, %if.end369.if.end408_crit_edge
  %76 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cur.i, align 4
  %78 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast426 = ptrtoint ptr %77 to i32
  %sub.ptr.rhs.cast427 = ptrtoint ptr %79 to i32
  %sub.ptr.sub428 = sub i32 %sub.ptr.lhs.cast426, %sub.ptr.rhs.cast427
  %80 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mem, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %86 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %client, align 4
  %name440 = getelementptr inbounds %struct.nvif_object, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %name440 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %name440, align 8
  %90 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %handle, align 4
  %92 = ptrtoint ptr %name194 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %name194, align 8
  tail call void (ptr, ptr, ...) %85(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %89, i32 noundef %91, ptr noundef %93, i32 noundef %sub.ptr.sub428, i32 noundef %conv339) #5
  %94 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cur.i, align 4
  %incdec.ptr449 = getelementptr i32, ptr %95, i32 1
  store ptr %incdec.ptr449, ptr %cur.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv339, ptr %95, align 4
  %97 = load ptr, ptr %cur.i, align 4
  %98 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %seg.i, align 8
  %cmp461.not = icmp ult ptr %97, %99
  br i1 %cmp461.not, label %if.end408.if.end486_crit_edge, label %do.end480, !prof !47

if.end408.if.end486_crit_edge:                    ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end486

do.end480:                                        ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end486

if.end486:                                        ; preds = %do.end480, %if.end408.if.end486_crit_edge
  %100 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur.i, align 4
  %102 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %end.i, align 4
  %cmp500.not = icmp ult ptr %101, %103
  br i1 %cmp500.not, label %if.end486.if.end525_crit_edge, label %do.end519, !prof !47

if.end486.if.end525_crit_edge:                    ; preds = %if.end486
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end525

do.end519:                                        ; preds = %if.end486
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end525

if.end525:                                        ; preds = %do.end519, %if.end486.if.end525_crit_edge
  %104 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cur.i, align 4
  %106 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast543 = ptrtoint ptr %105 to i32
  %sub.ptr.rhs.cast544 = ptrtoint ptr %107 to i32
  %sub.ptr.sub545 = sub i32 %sub.ptr.lhs.cast543, %sub.ptr.rhs.cast544
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
  %name557 = getelementptr inbounds %struct.nvif_object, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %name557 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %name557, align 8
  %118 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %handle, align 4
  %120 = ptrtoint ptr %name194 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %name194, align 8
  tail call void (ptr, ptr, ...) %113(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %117, i32 noundef %119, ptr noundef %121, i32 noundef %sub.ptr.sub545, i32 noundef 1073741824) #5
  %122 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur.i, align 4
  %incdec.ptr566 = getelementptr i32, ptr %123, i32 1
  store ptr %incdec.ptr566, ptr %cur.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1073741824, ptr %123, align 4
  %125 = load ptr, ptr %cur.i, align 4
  %126 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %seg.i, align 8
  %cmp638.not = icmp ult ptr %125, %127
  br i1 %cmp638.not, label %if.end525.if.end663_crit_edge, label %do.end657, !prof !47

if.end525.if.end663_crit_edge:                    ; preds = %if.end525
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end663

do.end657:                                        ; preds = %if.end525
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 102, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end663

if.end663:                                        ; preds = %do.end657, %if.end525.if.end663_crit_edge
  %128 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cur.i, align 4
  %130 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %end.i, align 4
  %cmp677.not = icmp ult ptr %129, %131
  br i1 %cmp677.not, label %if.end663.if.end702_crit_edge, label %do.end696, !prof !47

if.end663.if.end702_crit_edge:                    ; preds = %if.end663
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end702

do.end696:                                        ; preds = %if.end663
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 102, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end702

if.end702:                                        ; preds = %do.end696, %if.end663.if.end702_crit_edge
  %132 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cur.i, align 4
  %134 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast720 = ptrtoint ptr %133 to i32
  %sub.ptr.rhs.cast721 = ptrtoint ptr %135 to i32
  %sub.ptr.sub722 = sub i32 %sub.ptr.lhs.cast720, %sub.ptr.rhs.cast721
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
  %name734 = getelementptr inbounds %struct.nvif_object, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %name734 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %name734, align 8
  %146 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %handle, align 4
  %148 = ptrtoint ptr %name194 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %name194, align 8
  tail call void (ptr, ptr, ...) %141(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %145, i32 noundef %147, ptr noundef %149, i32 noundef %sub.ptr.sub722, i32 noundef 262396, i32 noundef 252, i32 noundef 1, ptr noundef nonnull @__func__.base907c_xlut_set) #5
  %150 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cur.i, align 4
  %incdec.ptr743 = getelementptr i32, ptr %151, i32 1
  store ptr %incdec.ptr743, ptr %cur.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 262396, ptr %151, align 4
  %153 = ptrtoint ptr %xlut to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %xlut, align 8
  %155 = load ptr, ptr %cur.i, align 4
  %156 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %seg.i, align 8
  %cmp757.not = icmp ult ptr %155, %157
  br i1 %cmp757.not, label %if.end702.if.end782_crit_edge, label %do.end776, !prof !47

if.end702.if.end782_crit_edge:                    ; preds = %if.end702
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end782

do.end776:                                        ; preds = %if.end702
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 102, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end782

if.end782:                                        ; preds = %do.end776, %if.end702.if.end782_crit_edge
  %158 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cur.i, align 4
  %160 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %end.i, align 4
  %cmp796.not = icmp ult ptr %159, %161
  br i1 %cmp796.not, label %if.end782.if.end821_crit_edge, label %do.end815, !prof !47

if.end782.if.end821_crit_edge:                    ; preds = %if.end782
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end821

do.end815:                                        ; preds = %if.end782
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 102, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end821

if.end821:                                        ; preds = %do.end815, %if.end782.if.end821_crit_edge
  %162 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %cur.i, align 4
  %164 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast839 = ptrtoint ptr %163 to i32
  %sub.ptr.rhs.cast840 = ptrtoint ptr %165 to i32
  %sub.ptr.sub841 = sub i32 %sub.ptr.lhs.cast839, %sub.ptr.rhs.cast840
  %166 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mem, align 8
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 4
  %172 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %client, align 4
  %name853 = getelementptr inbounds %struct.nvif_object, ptr %173, i32 0, i32 2
  %174 = ptrtoint ptr %name853 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %name853, align 8
  %176 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %handle, align 4
  %178 = ptrtoint ptr %name194 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %name194, align 8
  tail call void (ptr, ptr, ...) %171(ptr noundef %mem, ptr noundef nonnull @.str.13, ptr noundef %175, i32 noundef %177, ptr noundef %179, i32 noundef %sub.ptr.sub841, i32 noundef %154) #5
  %180 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %cur.i, align 4
  %incdec.ptr862 = getelementptr i32, ptr %181, i32 1
  store ptr %incdec.ptr862, ptr %cur.i, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %154, ptr %181, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end821, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end821 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @base907c_xlut_clr(ptr nocapture noundef readonly %wndw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 6
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end44_crit_edge, label %if.then.i

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end44_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.if.end44_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.end44:                                         ; preds = %if.then.i.if.end44_crit_edge, %entry.if.end44_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 6
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !47

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !47

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262368, i32 noundef 224, i32 noundef 1, ptr noundef nonnull @__func__.base907c_xlut_clr) #5
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262368, ptr %34, align 4
  %36 = load ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %seg.i, align 8
  %cmp151.not = icmp ult ptr %36, %38
  br i1 %cmp151.not, label %if.end117.if.end175_crit_edge, label %do.end169, !prof !47

if.end117.if.end175_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end175

do.end169:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end175

if.end175:                                        ; preds = %do.end169, %if.end117.if.end175_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %cmp189.not = icmp ult ptr %40, %42
  br i1 %cmp189.not, label %if.end175.if.end213_crit_edge, label %do.end207, !prof !47

if.end175.if.end213_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end213

do.end207:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end213

if.end213:                                        ; preds = %do.end207, %if.end175.if.end213_crit_edge
  %43 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast231 = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast232 = ptrtoint ptr %46 to i32
  %sub.ptr.sub233 = sub i32 %sub.ptr.lhs.cast231, %sub.ptr.rhs.cast232
  %47 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mem, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client, align 4
  %name245 = getelementptr inbounds %struct.nvif_object, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %name245 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name245, align 8
  %57 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %handle, align 4
  %59 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %52(ptr noundef %mem, ptr noundef nonnull @.str.10, ptr noundef %56, i32 noundef %58, ptr noundef %60, i32 noundef %sub.ptr.sub233, i32 noundef 0) #5
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %incdec.ptr254 = getelementptr i32, ptr %62, i32 1
  store ptr %incdec.ptr254, ptr %cur.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %62, align 4
  %64 = load ptr, ptr %cur.i, align 4
  %65 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %seg.i, align 8
  %cmp326.not = icmp ult ptr %64, %66
  br i1 %cmp326.not, label %if.end213.if.end350_crit_edge, label %do.end344, !prof !47

if.end213.if.end350_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end350

do.end344:                                        ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end350

if.end350:                                        ; preds = %do.end344, %if.end213.if.end350_crit_edge
  %67 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cur.i, align 4
  %69 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %end.i, align 4
  %cmp364.not = icmp ult ptr %68, %70
  br i1 %cmp364.not, label %if.end350.if.end388_crit_edge, label %do.end382, !prof !47

if.end350.if.end388_crit_edge:                    ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end388

do.end382:                                        ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end388

if.end388:                                        ; preds = %do.end382, %if.end350.if.end388_crit_edge
  %71 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cur.i, align 4
  %73 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast406 = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast407 = ptrtoint ptr %74 to i32
  %sub.ptr.sub408 = sub i32 %sub.ptr.lhs.cast406, %sub.ptr.rhs.cast407
  %75 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mem, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %81 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %client, align 4
  %name420 = getelementptr inbounds %struct.nvif_object, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %name420 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %name420, align 8
  %85 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %handle, align 4
  %87 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %80(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %84, i32 noundef %86, ptr noundef %88, i32 noundef %sub.ptr.sub408, i32 noundef 262376, i32 noundef 232, i32 noundef 1, ptr noundef nonnull @__func__.base907c_xlut_clr) #5
  %89 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cur.i, align 4
  %incdec.ptr429 = getelementptr i32, ptr %90, i32 1
  store ptr %incdec.ptr429, ptr %cur.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 262376, ptr %90, align 4
  %92 = load ptr, ptr %cur.i, align 4
  %93 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %seg.i, align 8
  %cmp441.not = icmp ult ptr %92, %94
  br i1 %cmp441.not, label %if.end388.if.end465_crit_edge, label %do.end459, !prof !47

if.end388.if.end465_crit_edge:                    ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end465

do.end459:                                        ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end465

if.end465:                                        ; preds = %do.end459, %if.end388.if.end465_crit_edge
  %95 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cur.i, align 4
  %97 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %end.i, align 4
  %cmp479.not = icmp ult ptr %96, %98
  br i1 %cmp479.not, label %if.end465.if.end503_crit_edge, label %do.end497, !prof !47

if.end465.if.end503_crit_edge:                    ; preds = %if.end465
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end503

do.end497:                                        ; preds = %if.end465
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end503

if.end503:                                        ; preds = %do.end497, %if.end465.if.end503_crit_edge
  %99 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cur.i, align 4
  %101 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast521 = ptrtoint ptr %100 to i32
  %sub.ptr.rhs.cast522 = ptrtoint ptr %102 to i32
  %sub.ptr.sub523 = sub i32 %sub.ptr.lhs.cast521, %sub.ptr.rhs.cast522
  %103 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mem, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %109 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %client, align 4
  %name535 = getelementptr inbounds %struct.nvif_object, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %name535 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %name535, align 8
  %113 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %handle, align 4
  %115 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %108(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %112, i32 noundef %114, ptr noundef %116, i32 noundef %sub.ptr.sub523, i32 noundef 0) #5
  %117 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cur.i, align 4
  %incdec.ptr544 = getelementptr i32, ptr %118, i32 1
  store ptr %incdec.ptr544, ptr %cur.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %118, align 4
  %120 = load ptr, ptr %cur.i, align 4
  %121 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %seg.i, align 8
  %cmp616.not = icmp ult ptr %120, %122
  br i1 %cmp616.not, label %if.end503.if.end640_crit_edge, label %do.end634, !prof !47

if.end503.if.end640_crit_edge:                    ; preds = %if.end503
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end640

do.end634:                                        ; preds = %if.end503
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end640

if.end640:                                        ; preds = %do.end634, %if.end503.if.end640_crit_edge
  %123 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cur.i, align 4
  %125 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %end.i, align 4
  %cmp654.not = icmp ult ptr %124, %126
  br i1 %cmp654.not, label %if.end640.if.end678_crit_edge, label %do.end672, !prof !47

if.end640.if.end678_crit_edge:                    ; preds = %if.end640
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end678

do.end672:                                        ; preds = %if.end640
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end678

if.end678:                                        ; preds = %do.end672, %if.end640.if.end678_crit_edge
  %127 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cur.i, align 4
  %129 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast696 = ptrtoint ptr %128 to i32
  %sub.ptr.rhs.cast697 = ptrtoint ptr %130 to i32
  %sub.ptr.sub698 = sub i32 %sub.ptr.lhs.cast696, %sub.ptr.rhs.cast697
  %131 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mem, align 8
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %137 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %client, align 4
  %name710 = getelementptr inbounds %struct.nvif_object, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %name710 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %name710, align 8
  %141 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %handle, align 4
  %143 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %136(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %140, i32 noundef %142, ptr noundef %144, i32 noundef %sub.ptr.sub698, i32 noundef 262396, i32 noundef 252, i32 noundef 1, ptr noundef nonnull @__func__.base907c_xlut_clr) #5
  %145 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cur.i, align 4
  %incdec.ptr719 = getelementptr i32, ptr %146, i32 1
  store ptr %incdec.ptr719, ptr %cur.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 262396, ptr %146, align 4
  %148 = load ptr, ptr %cur.i, align 4
  %149 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %seg.i, align 8
  %cmp731.not = icmp ult ptr %148, %150
  br i1 %cmp731.not, label %if.end678.if.end755_crit_edge, label %do.end749, !prof !47

if.end678.if.end755_crit_edge:                    ; preds = %if.end678
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end755

do.end749:                                        ; preds = %if.end678
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end755

if.end755:                                        ; preds = %do.end749, %if.end678.if.end755_crit_edge
  %151 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cur.i, align 4
  %153 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %end.i, align 4
  %cmp769.not = icmp ult ptr %152, %154
  br i1 %cmp769.not, label %if.end755.if.end793_crit_edge, label %do.end787, !prof !47

if.end755.if.end793_crit_edge:                    ; preds = %if.end755
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end793

do.end787:                                        ; preds = %if.end755
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end793

if.end793:                                        ; preds = %do.end787, %if.end755.if.end793_crit_edge
  %155 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %cur.i, align 4
  %157 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast811 = ptrtoint ptr %156 to i32
  %sub.ptr.rhs.cast812 = ptrtoint ptr %158 to i32
  %sub.ptr.sub813 = sub i32 %sub.ptr.lhs.cast811, %sub.ptr.rhs.cast812
  %159 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mem, align 8
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 4
  %165 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %client, align 4
  %name825 = getelementptr inbounds %struct.nvif_object, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %name825 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %name825, align 8
  %169 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %handle, align 4
  %171 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %164(ptr noundef %mem, ptr noundef nonnull @.str.13, ptr noundef %168, i32 noundef %170, ptr noundef %172, i32 noundef %sub.ptr.sub813, i32 noundef 0) #5
  %173 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %cur.i, align 4
  %incdec.ptr834 = getelementptr i32, ptr %174, i32 1
  store ptr %incdec.ptr834, ptr %cur.i, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %174, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end793, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end793 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @base907c_image_set(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 10
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end44_crit_edge, label %if.then.i

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end44_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.if.end44_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.end44:                                         ; preds = %if.then.i.if.end44_crit_edge, %entry.if.end44_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 10
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !47

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !47

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef nonnull @.str.5) #5
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262276, i32 noundef 132, i32 noundef 1, ptr noundef nonnull @__func__.base907c_image_set) #5
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
  %or153 = or i32 %shl, %shl152
  %39 = load ptr, ptr %cur.i, align 4
  %40 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %seg.i, align 8
  %cmp159.not = icmp ult ptr %39, %41
  br i1 %cmp159.not, label %if.end117.if.end184_crit_edge, label %do.end178, !prof !47

if.end117.if.end184_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end184

do.end178:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end184

if.end184:                                        ; preds = %do.end178, %if.end117.if.end184_crit_edge
  %42 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cur.i, align 4
  %44 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %end.i, align 4
  %cmp198.not = icmp ult ptr %43, %45
  br i1 %cmp198.not, label %if.end184.if.end223_crit_edge, label %do.end217, !prof !47

if.end184.if.end223_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end223

do.end217:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end223

if.end223:                                        ; preds = %do.end217, %if.end184.if.end223_crit_edge
  %46 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur.i, align 4
  %48 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast241 = ptrtoint ptr %47 to i32
  %sub.ptr.rhs.cast242 = ptrtoint ptr %49 to i32
  %sub.ptr.sub243 = sub i32 %sub.ptr.lhs.cast241, %sub.ptr.rhs.cast242
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
  %name255 = getelementptr inbounds %struct.nvif_object, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %name255 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name255, align 8
  %60 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %handle, align 4
  %62 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %55(ptr noundef %mem, ptr noundef nonnull @.str.14, ptr noundef %59, i32 noundef %61, ptr noundef %63, i32 noundef %sub.ptr.sub243, i32 noundef %or153) #5
  %64 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur.i, align 4
  %incdec.ptr264 = getelementptr i32, ptr %65, i32 1
  store ptr %incdec.ptr264, ptr %cur.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or153, ptr %65, align 4
  %67 = load ptr, ptr %cur.i, align 4
  %68 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %seg.i, align 8
  %cmp336.not = icmp ult ptr %67, %69
  br i1 %cmp336.not, label %if.end223.if.end361_crit_edge, label %do.end355, !prof !47

if.end223.if.end361_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end361

do.end355:                                        ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end361

if.end361:                                        ; preds = %do.end355, %if.end223.if.end361_crit_edge
  %70 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cur.i, align 4
  %72 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %end.i, align 4
  %cmp375.not = icmp ult ptr %71, %73
  br i1 %cmp375.not, label %if.end361.if.end400_crit_edge, label %do.end394, !prof !47

if.end361.if.end400_crit_edge:                    ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end400

do.end394:                                        ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end400

if.end400:                                        ; preds = %do.end394, %if.end361.if.end400_crit_edge
  %74 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cur.i, align 4
  %76 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast418 = ptrtoint ptr %75 to i32
  %sub.ptr.rhs.cast419 = ptrtoint ptr %77 to i32
  %sub.ptr.sub420 = sub i32 %sub.ptr.lhs.cast418, %sub.ptr.rhs.cast419
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
  %name432 = getelementptr inbounds %struct.nvif_object, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %name432 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %name432, align 8
  %88 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %handle, align 4
  %90 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %83(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %87, i32 noundef %89, ptr noundef %91, i32 noundef %sub.ptr.sub420, i32 noundef 262336, i32 noundef 192, i32 noundef 1, ptr noundef nonnull @__func__.base907c_image_set) #5
  %92 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cur.i, align 4
  %incdec.ptr441 = getelementptr i32, ptr %93, i32 1
  store ptr %incdec.ptr441, ptr %cur.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 262336, ptr %93, align 4
  %handle448 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 7
  %95 = ptrtoint ptr %handle448 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %handle448, align 4
  %97 = load ptr, ptr %cur.i, align 4
  %98 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %seg.i, align 8
  %cmp459.not = icmp ult ptr %97, %99
  br i1 %cmp459.not, label %if.end400.if.end484_crit_edge, label %do.end478, !prof !47

if.end400.if.end484_crit_edge:                    ; preds = %if.end400
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end484

do.end478:                                        ; preds = %if.end400
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end484

if.end484:                                        ; preds = %do.end478, %if.end400.if.end484_crit_edge
  %100 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur.i, align 4
  %102 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %end.i, align 4
  %cmp498.not = icmp ult ptr %101, %103
  br i1 %cmp498.not, label %if.end484.if.end523_crit_edge, label %do.end517, !prof !47

if.end484.if.end523_crit_edge:                    ; preds = %if.end484
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end523

do.end517:                                        ; preds = %if.end484
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end523

if.end523:                                        ; preds = %do.end517, %if.end484.if.end523_crit_edge
  %104 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cur.i, align 4
  %106 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast541 = ptrtoint ptr %105 to i32
  %sub.ptr.rhs.cast542 = ptrtoint ptr %107 to i32
  %sub.ptr.sub543 = sub i32 %sub.ptr.lhs.cast541, %sub.ptr.rhs.cast542
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
  %name555 = getelementptr inbounds %struct.nvif_object, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %name555 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %name555, align 8
  %118 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %handle, align 4
  %120 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %113(ptr noundef %mem, ptr noundef nonnull @.str.15, ptr noundef %117, i32 noundef %119, ptr noundef %121, i32 noundef %sub.ptr.sub543, i32 noundef %96, i32 noundef 0) #5
  %122 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur.i, align 4
  %incdec.ptr564 = getelementptr i32, ptr %123, i32 1
  store ptr %incdec.ptr564, ptr %cur.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %96, ptr %123, align 4
  %125 = load ptr, ptr %cur.i, align 4
  %126 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %seg.i, align 8
  %cmp877.not = icmp ult ptr %125, %127
  br i1 %cmp877.not, label %if.end523.if.end902_crit_edge, label %do.end896, !prof !47

if.end523.if.end902_crit_edge:                    ; preds = %if.end523
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end902

do.end896:                                        ; preds = %if.end523
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end902

if.end902:                                        ; preds = %do.end896, %if.end523.if.end902_crit_edge
  %128 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cur.i, align 4
  %130 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %end.i, align 4
  %cmp916.not = icmp ult ptr %129, %131
  br i1 %cmp916.not, label %if.end902.if.end941_crit_edge, label %do.end935, !prof !47

if.end902.if.end941_crit_edge:                    ; preds = %if.end902
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end941

do.end935:                                        ; preds = %if.end902
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end941

if.end941:                                        ; preds = %do.end935, %if.end902.if.end941_crit_edge
  %132 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cur.i, align 4
  %134 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast959 = ptrtoint ptr %133 to i32
  %sub.ptr.rhs.cast960 = ptrtoint ptr %135 to i32
  %sub.ptr.sub961 = sub i32 %sub.ptr.lhs.cast959, %sub.ptr.rhs.cast960
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
  %name973 = getelementptr inbounds %struct.nvif_object, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %name973 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %name973, align 8
  %146 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %handle, align 4
  %148 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %141(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %145, i32 noundef %147, ptr noundef %149, i32 noundef %sub.ptr.sub961, i32 noundef 1311744, i32 noundef 1024, i32 noundef 5, ptr noundef nonnull @__func__.base907c_image_set) #5
  %150 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cur.i, align 4
  %incdec.ptr982 = getelementptr i32, ptr %151, i32 1
  store ptr %incdec.ptr982, ptr %cur.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 1311744, ptr %151, align 4
  %offset = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 8
  %153 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %offset, align 8
  %shr = lshr i64 %154, 8
  %conv991 = trunc i64 %shr to i32
  %155 = load ptr, ptr %cur.i, align 4
  %156 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %seg.i, align 8
  %cmp996.not = icmp ult ptr %155, %157
  br i1 %cmp996.not, label %if.end941.if.end1021_crit_edge, label %do.end1015, !prof !47

if.end941.if.end1021_crit_edge:                   ; preds = %if.end941
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1021

do.end1015:                                       ; preds = %if.end941
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1021

if.end1021:                                       ; preds = %do.end1015, %if.end941.if.end1021_crit_edge
  %158 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cur.i, align 4
  %160 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %end.i, align 4
  %cmp1035.not = icmp ult ptr %159, %161
  br i1 %cmp1035.not, label %if.end1021.if.end1060_crit_edge, label %do.end1054, !prof !47

if.end1021.if.end1060_crit_edge:                  ; preds = %if.end1021
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1060

do.end1054:                                       ; preds = %if.end1021
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1060

if.end1060:                                       ; preds = %do.end1054, %if.end1021.if.end1060_crit_edge
  %162 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %cur.i, align 4
  %164 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1078 = ptrtoint ptr %163 to i32
  %sub.ptr.rhs.cast1079 = ptrtoint ptr %165 to i32
  %sub.ptr.sub1080 = sub i32 %sub.ptr.lhs.cast1078, %sub.ptr.rhs.cast1079
  %166 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mem, align 8
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 4
  %172 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %client, align 4
  %name1092 = getelementptr inbounds %struct.nvif_object, ptr %173, i32 0, i32 2
  %174 = ptrtoint ptr %name1092 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %name1092, align 8
  %176 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %handle, align 4
  %178 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %171(ptr noundef %mem, ptr noundef nonnull @.str.18, ptr noundef %175, i32 noundef %177, ptr noundef %179, i32 noundef %sub.ptr.sub1080, i32 noundef %conv991) #5
  %180 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1101 = getelementptr i32, ptr %181, i32 1
  store ptr %incdec.ptr1101, ptr %cur.i, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %conv991, ptr %181, align 4
  %183 = load ptr, ptr %cur.i, align 4
  %184 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %seg.i, align 8
  %cmp1113.not = icmp ult ptr %183, %185
  br i1 %cmp1113.not, label %if.end1060.if.end1138_crit_edge, label %do.end1132, !prof !47

if.end1060.if.end1138_crit_edge:                  ; preds = %if.end1060
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1138

do.end1132:                                       ; preds = %if.end1060
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1138

if.end1138:                                       ; preds = %do.end1132, %if.end1060.if.end1138_crit_edge
  %186 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %cur.i, align 4
  %188 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %end.i, align 4
  %cmp1152.not = icmp ult ptr %187, %189
  br i1 %cmp1152.not, label %if.end1138.if.end1177_crit_edge, label %do.end1171, !prof !47

if.end1138.if.end1177_crit_edge:                  ; preds = %if.end1138
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1177

do.end1171:                                       ; preds = %if.end1138
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1177

if.end1177:                                       ; preds = %do.end1171, %if.end1138.if.end1177_crit_edge
  %190 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %cur.i, align 4
  %192 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1195 = ptrtoint ptr %191 to i32
  %sub.ptr.rhs.cast1196 = ptrtoint ptr %193 to i32
  %sub.ptr.sub1197 = sub i32 %sub.ptr.lhs.cast1195, %sub.ptr.rhs.cast1196
  %194 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %mem, align 8
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 4
  %200 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %client, align 4
  %name1209 = getelementptr inbounds %struct.nvif_object, ptr %201, i32 0, i32 2
  %202 = ptrtoint ptr %name1209 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %name1209, align 8
  %204 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %handle, align 4
  %206 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %199(ptr noundef %mem, ptr noundef nonnull @.str.19, ptr noundef %203, i32 noundef %205, ptr noundef %207, i32 noundef %sub.ptr.sub1197, i32 noundef 0) #5
  %208 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1218 = getelementptr i32, ptr %209, i32 1
  store ptr %incdec.ptr1218, ptr %cur.i, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 0, ptr %209, align 4
  %w = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 5
  %211 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %w, align 8
  %conv1227 = zext i16 %212 to i32
  %h = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 6
  %213 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %h, align 2
  %conv1231 = zext i16 %214 to i32
  %shl1233 = shl nuw i32 %conv1231, 16
  %or1234 = or i32 %shl1233, %conv1227
  %215 = load ptr, ptr %cur.i, align 4
  %216 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %seg.i, align 8
  %cmp1240.not = icmp ult ptr %215, %217
  br i1 %cmp1240.not, label %if.end1177.if.end1265_crit_edge, label %do.end1259, !prof !47

if.end1177.if.end1265_crit_edge:                  ; preds = %if.end1177
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1265

do.end1259:                                       ; preds = %if.end1177
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1265

if.end1265:                                       ; preds = %do.end1259, %if.end1177.if.end1265_crit_edge
  %218 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %cur.i, align 4
  %220 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %end.i, align 4
  %cmp1279.not = icmp ult ptr %219, %221
  br i1 %cmp1279.not, label %if.end1265.if.end1304_crit_edge, label %do.end1298, !prof !47

if.end1265.if.end1304_crit_edge:                  ; preds = %if.end1265
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1304

do.end1298:                                       ; preds = %if.end1265
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1304

if.end1304:                                       ; preds = %do.end1298, %if.end1265.if.end1304_crit_edge
  %222 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %cur.i, align 4
  %224 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1322 = ptrtoint ptr %223 to i32
  %sub.ptr.rhs.cast1323 = ptrtoint ptr %225 to i32
  %sub.ptr.sub1324 = sub i32 %sub.ptr.lhs.cast1322, %sub.ptr.rhs.cast1323
  %226 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %mem, align 8
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %227, align 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %229, align 4
  %232 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %client, align 4
  %name1336 = getelementptr inbounds %struct.nvif_object, ptr %233, i32 0, i32 2
  %234 = ptrtoint ptr %name1336 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %name1336, align 8
  %236 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %handle, align 4
  %238 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %231(ptr noundef %mem, ptr noundef nonnull @.str.20, ptr noundef %235, i32 noundef %237, ptr noundef %239, i32 noundef %sub.ptr.sub1324, i32 noundef %or1234) #5
  %240 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1345 = getelementptr i32, ptr %241, i32 1
  store ptr %incdec.ptr1345, ptr %cur.i, align 4
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %or1234, ptr %241, align 4
  %blockh = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 2
  %243 = ptrtoint ptr %blockh to i32
  call void @__asan_load2_noabort(i32 %243)
  %bf.load1354 = load i16, ptr %blockh, align 2
  %244 = lshr i16 %bf.load1354, 4
  %245 = and i16 %244, 15
  %conv1357 = zext i16 %245 to i32
  %pitch = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 4
  %246 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %pitch, align 4
  %248 = and i32 %247, 2096896
  %or1366 = or i32 %248, %conv1357
  %blocks = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 3
  %249 = ptrtoint ptr %blocks to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %blocks, align 4
  %251 = and i16 %250, 8191
  %and1370 = zext i16 %251 to i32
  %shl1371 = shl nuw nsw i32 %and1370, 8
  %or1372 = or i32 %or1366, %shl1371
  %bf.lshr1375 = lshr i16 %bf.load1354, 8
  %252 = and i16 %bf.lshr1375, 1
  %253 = zext i16 %252 to i32
  %shl1380 = shl nuw nsw i32 %253, 24
  %or1381 = or i32 %or1372, %shl1380
  %254 = load ptr, ptr %cur.i, align 4
  %255 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %seg.i, align 8
  %cmp1387.not = icmp ult ptr %254, %256
  br i1 %cmp1387.not, label %if.end1304.if.end1412_crit_edge, label %do.end1406, !prof !47

if.end1304.if.end1412_crit_edge:                  ; preds = %if.end1304
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1412

do.end1406:                                       ; preds = %if.end1304
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1412

if.end1412:                                       ; preds = %do.end1406, %if.end1304.if.end1412_crit_edge
  %257 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %cur.i, align 4
  %259 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %end.i, align 4
  %cmp1426.not = icmp ult ptr %258, %260
  br i1 %cmp1426.not, label %if.end1412.if.end1451_crit_edge, label %do.end1445, !prof !47

if.end1412.if.end1451_crit_edge:                  ; preds = %if.end1412
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1451

do.end1445:                                       ; preds = %if.end1412
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1451

if.end1451:                                       ; preds = %do.end1445, %if.end1412.if.end1451_crit_edge
  %261 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %cur.i, align 4
  %263 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1469 = ptrtoint ptr %262 to i32
  %sub.ptr.rhs.cast1470 = ptrtoint ptr %264 to i32
  %sub.ptr.sub1471 = sub i32 %sub.ptr.lhs.cast1469, %sub.ptr.rhs.cast1470
  %265 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %mem, align 8
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %266, align 4
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %268, align 4
  %271 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %client, align 4
  %name1483 = getelementptr inbounds %struct.nvif_object, ptr %272, i32 0, i32 2
  %273 = ptrtoint ptr %name1483 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %name1483, align 8
  %275 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %handle, align 4
  %277 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %270(ptr noundef %mem, ptr noundef nonnull @.str.21, ptr noundef %274, i32 noundef %276, ptr noundef %278, i32 noundef %sub.ptr.sub1471, i32 noundef %or1381) #5
  %279 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1492 = getelementptr i32, ptr %280, i32 1
  store ptr %incdec.ptr1492, ptr %cur.i, align 4
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %or1381, ptr %280, align 4
  %format = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 1
  %282 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %format, align 1
  %conv1501 = zext i8 %283 to i32
  %shl1503 = shl nuw nsw i32 %conv1501, 8
  %284 = load ptr, ptr %cur.i, align 4
  %285 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %seg.i, align 8
  %cmp1512.not = icmp ult ptr %284, %286
  br i1 %cmp1512.not, label %if.end1451.if.end1537_crit_edge, label %do.end1531, !prof !47

if.end1451.if.end1537_crit_edge:                  ; preds = %if.end1451
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1537

do.end1531:                                       ; preds = %if.end1451
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1537

if.end1537:                                       ; preds = %do.end1531, %if.end1451.if.end1537_crit_edge
  %287 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %cur.i, align 4
  %289 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %end.i, align 4
  %cmp1551.not = icmp ult ptr %288, %290
  br i1 %cmp1551.not, label %if.end1537.if.end1576_crit_edge, label %do.end1570, !prof !47

if.end1537.if.end1576_crit_edge:                  ; preds = %if.end1537
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1576

do.end1570:                                       ; preds = %if.end1537
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1576

if.end1576:                                       ; preds = %do.end1570, %if.end1537.if.end1576_crit_edge
  %291 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %cur.i, align 4
  %293 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1594 = ptrtoint ptr %292 to i32
  %sub.ptr.rhs.cast1595 = ptrtoint ptr %294 to i32
  %sub.ptr.sub1596 = sub i32 %sub.ptr.lhs.cast1594, %sub.ptr.rhs.cast1595
  %295 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %mem, align 8
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %296, align 4
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %298, align 4
  %301 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %client, align 4
  %name1608 = getelementptr inbounds %struct.nvif_object, ptr %302, i32 0, i32 2
  %303 = ptrtoint ptr %name1608 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %name1608, align 8
  %305 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %handle, align 4
  %307 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %300(ptr noundef %mem, ptr noundef nonnull @.str.22, ptr noundef %304, i32 noundef %306, ptr noundef %308, i32 noundef %sub.ptr.sub1596, i32 noundef %shl1503) #5
  %309 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1617 = getelementptr i32, ptr %310, i32 1
  store ptr %incdec.ptr1617, ptr %cur.i, align 4
  %311 = ptrtoint ptr %310 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %shl1503, ptr %310, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1576, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1576 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_image_clr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_update(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @base907c_new(ptr noundef %drm, i32 noundef %head, i32 noundef %oclass, ptr noundef %pwndw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %head, 2
  %shl = shl i32 2, %mul
  %call = tail call i32 @base507c_new_(ptr noundef nonnull @base907c, ptr noundef nonnull @base507c_format, ptr noundef %drm, i32 noundef %head, i32 noundef %oclass, i32 noundef %shl, ptr noundef %pwndw) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @head907d_olut_load(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !15, !17, !18, !19, !20, !21, !23, !25, !27, !28, !30, !32, !33, !34, !35, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @base907c, !1, !"base907c", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base907c.c", i32 188, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base907c.c", i32 179, i32 2}
!4 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__func__.base907c_csc_set, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !3, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !3, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__func__.base907c_csc_clr, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base907c.c", i32 165, i32 2}
!15 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base907c.c", i32 93, i32 2}
!17 = !{ptr @__func__.base907c_xlut_set, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base907c.c", i32 102, i32 2}
!23 = !{ptr @__func__.base907c_xlut_clr, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base907c.c", i32 74, i32 2}
!25 = !{ptr @__func__.base907c_image_set, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base907c.c", i32 37, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base907c.c", i32 42, i32 2}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base907c.c", i32 44, i32 2}
!32 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 2000, i32 1}
