; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/wndwc57e.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/wndwc57e.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_wndw_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_wndw = type { ptr, ptr, i32, %struct.nv50_disp_interlock, %struct.anon.119, %struct.drm_plane, %struct.nv50_lut, %struct.nv50_dmac, %struct.nv50_dmac, %struct.nvif_notify, i16, i16, i32 }
%struct.nv50_disp_interlock = type { i32, i32, i32 }
%struct.anon.119 = type { ptr, %struct.list_head }
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
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.118 }
%struct.anon.118 = type { ptr, i64 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.drm_color_lut = type { i16, i16, i16, i16 }

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/wndwc57e.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.wndwc57e_csc_clr = private unnamed_addr constant [17 x i8] c"wndwc57e_csc_clr\00", align 1
@.str.6 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_FMT_COEFFICIENT_C00+0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.wndwc57e_csc_set = private unnamed_addr constant [17 x i8] c"wndwc57e_csc_set\00", align 1
@__func__.wndwc57e_ilut_clr = private unnamed_addr constant [18 x i8] c"wndwc57e_ilut_clr\00", align 1
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_CONTEXT_DMA_ILUT\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.wndwc57e_ilut_set = private unnamed_addr constant [18 x i8] c"wndwc57e_ilut_set\00", align 1
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_ILUT_CONTROL\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_OFFSET_ILUT\0A\00", [46 x i8] zeroinitializer }, align 32
@wndwc57e_modifiers = dso_local constant { [8 x i64], [32 x i8] } { [8 x i64] [i64 216172782120099856, i64 216172782120099857, i64 216172782120099858, i64 216172782120099859, i64 216172782120099860, i64 216172782120099861, i64 0, i64 72057594037927935], [32 x i8] zeroinitializer }, align 32
@wndwc57e = internal constant { %struct.nv50_wndw_func, [36 x i8] } { %struct.nv50_wndw_func { ptr @wndwc37e_acquire, ptr @wndwc37e_release, ptr null, ptr @wndwc37e_sema_set, ptr @wndwc37e_sema_clr, ptr @corec37d_ntfy_init, ptr @wndwc37e_ntfy_set, ptr @wndwc37e_ntfy_clr, ptr @base507c_ntfy_wait_begun, ptr @wndwc57e_ilut, ptr @base907c_csc, ptr @wndwc57e_csc_set, ptr @wndwc57e_csc_clr, i8 1, i32 1024, i8 0, ptr @wndwc57e_ilut_set, ptr @wndwc57e_ilut_clr, ptr @wndwc57e_image_set, ptr @wndwc37e_image_clr, ptr null, ptr @wndwc37e_blend_set, ptr @wndwc37e_update }, [36 x i8] zeroinitializer }, align 32
@__func__.wndwc57e_image_set = private unnamed_addr constant [19 x i8] c"wndwc57e_image_set\00", align 1
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_PRESENT_CONTROL\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_SIZE\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_STORAGE\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_PARAMS\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_PLANAR_STORAGE(0)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_CONTEXT_DMA_ISO(0)+0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_OFFSET(0)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_POINT_IN(0)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_SIZE_IN\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57E_SET_SIZE_OUT\0A\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 97, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 123, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 136, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c"wndwc57e_modifiers\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 204, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [9 x i8] c"wndwc57e\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 216, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 43, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 48, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 66, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 67, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 69, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 73, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/wndwc57e.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 77, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @wndwc57e_modifiers, ptr @wndwc57e, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wndwc57e_modifiers to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wndwc57e to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wndwc57e_csc_clr(ptr nocapture noundef readonly %wndw) #0 align 64 {
entry:
  %identity = alloca [12 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %identity) #5
  %2 = getelementptr inbounds i8, ptr %identity, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 44)
  %4 = ptrtoint ptr %identity to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65536, ptr %identity, align 4
  %5 = getelementptr inbounds [12 x i32], ptr %identity, i32 0, i32 5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 65536, ptr %5, align 4
  %7 = getelementptr inbounds [12 x i32], ptr %identity, i32 0, i32 10
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65536, ptr %7, align 4
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %10, i32 13
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %12
  br i1 %cmp.not.i, label %entry.if.end44_crit_edge, label %if.then.i

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then.i:                                        ; preds = %entry
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %14(ptr noundef %1, i32 noundef 13) #5
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
  %15 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %16, i32 13
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %16, %add.ptr4.i
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !52

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %18 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur.i, align 4
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %19, %21
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !52

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end117

if.end117:                                        ; preds = %do.end111, %if.end80.if.end117_crit_edge
  %22 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 6
  %24 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %25 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %26 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mem, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 1
  %32 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 3
  %36 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %handle, align 4
  %name134 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %38 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %31(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %35, i32 noundef %37, ptr noundef %39, i32 noundef %sub.ptr.sub, i32 noundef 3146752, i32 noundef 1024, i32 noundef 12, ptr noundef nonnull @__func__.wndwc57e_csc_clr) #5
  %40 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %41, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3146752, ptr %41, align 4
  %43 = load ptr, ptr %cur.i, align 4
  %44 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %seg.i, align 8
  %cmp155.not = icmp ult ptr %43, %45
  br i1 %cmp155.not, label %if.end117.if.end179_crit_edge, label %do.end173, !prof !52

if.end117.if.end179_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end179

do.end173:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end179

if.end179:                                        ; preds = %do.end173, %if.end117.if.end179_crit_edge
  %46 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur.i, align 4
  %48 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %end.i, align 4
  %cmp193.not = icmp ult ptr %47, %49
  br i1 %cmp193.not, label %if.end179.if.end217_crit_edge, label %do.end211, !prof !52

if.end179.if.end217_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end217

do.end211:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end217

if.end217:                                        ; preds = %do.end211, %if.end179.if.end217_crit_edge
  %50 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cur.i, align 4
  %52 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast235 = ptrtoint ptr %51 to i32
  %sub.ptr.rhs.cast236 = ptrtoint ptr %53 to i32
  %sub.ptr.sub237 = sub i32 %sub.ptr.lhs.cast235, %sub.ptr.rhs.cast236
  %54 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mem, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %60 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %client, align 4
  %name249 = getelementptr inbounds %struct.nvif_object, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %name249 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name249, align 8
  %64 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %handle, align 4
  %66 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %59(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %63, i32 noundef %65, ptr noundef %67, i32 noundef %sub.ptr.sub237, i32 noundef 65536, i32 noundef 0) #5
  %68 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur.i, align 4
  %incdec.ptr258 = getelementptr i32, ptr %69, i32 1
  store ptr %incdec.ptr258, ptr %cur.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 65536, ptr %69, align 4
  br label %do.body263

do.body263:                                       ; preds = %if.end333.do.body263_crit_edge, %if.end217
  %dec261442 = phi i32 [ 10, %if.end217 ], [ %dec261, %if.end333.do.body263_crit_edge ]
  %identity.pn = phi ptr [ %identity, %if.end217 ], [ %_dd.0441, %if.end333.do.body263_crit_edge ]
  %_i.0440 = phi i32 [ 4, %if.end217 ], [ %add, %if.end333.do.body263_crit_edge ]
  %_dd.0441 = getelementptr i32, ptr %identity.pn, i32 1
  %71 = ptrtoint ptr %_dd.0441 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %_dd.0441, align 4
  %73 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cur.i, align 4
  %75 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %seg.i, align 8
  %cmp271.not = icmp ult ptr %74, %76
  br i1 %cmp271.not, label %do.body263.if.end295_crit_edge, label %do.end289, !prof !52

do.body263.if.end295_crit_edge:                   ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end295

do.end289:                                        ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end295

if.end295:                                        ; preds = %do.end289, %do.body263.if.end295_crit_edge
  %77 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cur.i, align 4
  %79 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %end.i, align 4
  %cmp309.not = icmp ult ptr %78, %80
  br i1 %cmp309.not, label %if.end295.if.end333_crit_edge, label %do.end327, !prof !52

if.end295.if.end333_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end333

do.end327:                                        ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end333

if.end333:                                        ; preds = %do.end327, %if.end295.if.end333_crit_edge
  %81 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cur.i, align 4
  %83 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast351 = ptrtoint ptr %82 to i32
  %sub.ptr.rhs.cast352 = ptrtoint ptr %84 to i32
  %sub.ptr.sub353 = sub i32 %sub.ptr.lhs.cast351, %sub.ptr.rhs.cast352
  %85 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mem, align 8
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %91 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %client, align 4
  %name365 = getelementptr inbounds %struct.nvif_object, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %name365 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %name365, align 8
  %95 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %handle, align 4
  %97 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %90(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %94, i32 noundef %96, ptr noundef %98, i32 noundef %sub.ptr.sub353, i32 noundef %72, i32 noundef %_i.0440) #5
  %99 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cur.i, align 4
  %incdec.ptr374 = getelementptr i32, ptr %100, i32 1
  store ptr %incdec.ptr374, ptr %cur.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %72, ptr %100, align 4
  %add = add nuw nsw i32 %_i.0440, 4
  %dec261 = add nsw i32 %dec261442, -1
  %tobool262.not = icmp eq i32 %dec261442, 0
  br i1 %tobool262.not, label %if.end333.cleanup_crit_edge, label %if.end333.do.body263_crit_edge

if.end333.do.body263_crit_edge:                   ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body263

if.end333.cleanup_crit_edge:                      ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end333.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.i.cleanup_crit_edge ], [ 0, %if.end333.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %identity) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wndwc57e_csc_set(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) #0 align 64 {
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
  br i1 %cmp.not.i, label %entry.if.end44_crit_edge, label %if.then.i

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 13) #5
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
  %add.ptr4.i = getelementptr i32, ptr %9, i32 13
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !52

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !52

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 9, ptr noundef nonnull @.str.4) #5
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 3146752, i32 noundef 1024, i32 noundef 12, ptr noundef nonnull @__func__.wndwc57e_csc_set) #5
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3146752, ptr %34, align 4
  %csc = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 7
  %incdec.ptr150 = getelementptr %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 7, i32 0, i32 1
  %36 = ptrtoint ptr %csc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %csc, align 4
  %38 = load ptr, ptr %cur.i, align 4
  %39 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %seg.i, align 8
  %cmp155.not = icmp ult ptr %38, %40
  br i1 %cmp155.not, label %if.end117.if.end179_crit_edge, label %do.end173, !prof !52

if.end117.if.end179_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end179

do.end173:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end179

if.end179:                                        ; preds = %do.end173, %if.end117.if.end179_crit_edge
  %41 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur.i, align 4
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i, align 4
  %cmp193.not = icmp ult ptr %42, %44
  br i1 %cmp193.not, label %if.end179.if.end217_crit_edge, label %do.end211, !prof !52

if.end179.if.end217_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end217

do.end211:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end217

if.end217:                                        ; preds = %do.end211, %if.end179.if.end217_crit_edge
  %45 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i, align 4
  %47 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast235 = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast236 = ptrtoint ptr %48 to i32
  %sub.ptr.sub237 = sub i32 %sub.ptr.lhs.cast235, %sub.ptr.rhs.cast236
  %49 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mem, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %client, align 4
  %name249 = getelementptr inbounds %struct.nvif_object, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %name249 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name249, align 8
  %59 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %handle, align 4
  %61 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %54(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %58, i32 noundef %60, ptr noundef %62, i32 noundef %sub.ptr.sub237, i32 noundef %37, i32 noundef 0) #5
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %incdec.ptr258 = getelementptr i32, ptr %64, i32 1
  store ptr %incdec.ptr258, ptr %cur.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %37, ptr %64, align 4
  br label %do.body263

do.body263:                                       ; preds = %if.end333.do.body263_crit_edge, %if.end217
  %dec261440 = phi i32 [ 10, %if.end217 ], [ %dec261, %if.end333.do.body263_crit_edge ]
  %_dd.0439 = phi ptr [ %incdec.ptr150, %if.end217 ], [ %incdec.ptr266, %if.end333.do.body263_crit_edge ]
  %_i.0438 = phi i32 [ 4, %if.end217 ], [ %add, %if.end333.do.body263_crit_edge ]
  %incdec.ptr266 = getelementptr i32, ptr %_dd.0439, i32 1
  %66 = ptrtoint ptr %_dd.0439 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %_dd.0439, align 4
  %68 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur.i, align 4
  %70 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %seg.i, align 8
  %cmp271.not = icmp ult ptr %69, %71
  br i1 %cmp271.not, label %do.body263.if.end295_crit_edge, label %do.end289, !prof !52

do.body263.if.end295_crit_edge:                   ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end295

do.end289:                                        ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end295

if.end295:                                        ; preds = %do.end289, %do.body263.if.end295_crit_edge
  %72 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cur.i, align 4
  %74 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %end.i, align 4
  %cmp309.not = icmp ult ptr %73, %75
  br i1 %cmp309.not, label %if.end295.if.end333_crit_edge, label %do.end327, !prof !52

if.end295.if.end333_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end333

do.end327:                                        ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end333

if.end333:                                        ; preds = %do.end327, %if.end295.if.end333_crit_edge
  %76 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cur.i, align 4
  %78 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast351 = ptrtoint ptr %77 to i32
  %sub.ptr.rhs.cast352 = ptrtoint ptr %79 to i32
  %sub.ptr.sub353 = sub i32 %sub.ptr.lhs.cast351, %sub.ptr.rhs.cast352
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
  %name365 = getelementptr inbounds %struct.nvif_object, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %name365 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %name365, align 8
  %90 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %handle, align 4
  %92 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %85(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %89, i32 noundef %91, ptr noundef %93, i32 noundef %sub.ptr.sub353, i32 noundef %67, i32 noundef %_i.0438) #5
  %94 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cur.i, align 4
  %incdec.ptr374 = getelementptr i32, ptr %95, i32 1
  store ptr %incdec.ptr374, ptr %cur.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %67, ptr %95, align 4
  %add = add nuw nsw i32 %_i.0438, 4
  %dec261 = add nsw i32 %dec261440, -1
  %tobool262.not = icmp eq i32 %dec261440, 0
  br i1 %tobool262.not, label %if.end333.cleanup_crit_edge, label %if.end333.do.body263_crit_edge

if.end333.do.body263_crit_edge:                   ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body263

if.end333.cleanup_crit_edge:                      ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end333.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.i.cleanup_crit_edge ], [ 0, %if.end333.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wndwc57e_ilut_clr(ptr nocapture noundef readonly %wndw) #0 align 64 {
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
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !52

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !52

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef nonnull @.str.4) #5
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 263236, i32 noundef 1092, i32 noundef 1, ptr noundef nonnull @__func__.wndwc57e_ilut_clr) #5
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 263236, ptr %34, align 4
  %36 = load ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %seg.i, align 8
  %cmp151.not = icmp ult ptr %36, %38
  br i1 %cmp151.not, label %if.end117.if.end175_crit_edge, label %do.end169, !prof !52

if.end117.if.end175_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end175

do.end169:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end175

if.end175:                                        ; preds = %do.end169, %if.end117.if.end175_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %cmp189.not = icmp ult ptr %40, %42
  br i1 %cmp189.not, label %if.end175.if.end213_crit_edge, label %do.end207, !prof !52

if.end175.if.end213_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end213

do.end207:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef nonnull @.str.4) #5
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
define dso_local i32 @wndwc57e_ilut_set(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) #0 align 64 {
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
  %add.ptr.i = getelementptr i32, ptr %3, i32 4
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
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 4) #5
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
  %add.ptr4.i = getelementptr i32, ptr %9, i32 4
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end104.if.end140_crit_edge, label %do.end134, !prof !52

if.end104.if.end140_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end140

do.end134:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end140

if.end140:                                        ; preds = %do.end134, %if.end104.if.end140_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp153.not = icmp ult ptr %12, %14
  br i1 %cmp153.not, label %if.end140.if.end177_crit_edge, label %do.end171, !prof !52

if.end140.if.end177_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177

do.end171:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef nonnull @.str.4) #5
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 787520, i32 noundef 1088, i32 noundef 3, ptr noundef nonnull @__func__.wndwc57e_ilut_set) #5
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 787520, ptr %34, align 4
  %xlut = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 6
  %i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 6, i32 2
  %size = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 6, i32 2, i32 1
  %36 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load = load i16, ptr %size, align 2
  %bf.lshr = lshr i16 %bf.load, 5
  %conv = zext i16 %bf.lshr to i32
  %shl = shl nuw nsw i32 %conv, 8
  %37 = ptrtoint ptr %i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 6)
  %bf.load209 = load i48, ptr %i, align 8
  %38 = trunc i48 %bf.load209 to i32
  %39 = shl i32 %38, 1
  %40 = and i32 %39, 12
  %or = or i32 %40, %shl
  %41 = lshr i16 %bf.load, 1
  %42 = and i16 %41, 1
  %43 = zext i16 %42 to i32
  %or223 = or i32 %or, %43
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %seg.i, align 8
  %cmp229.not = icmp ult ptr %44, %46
  br i1 %cmp229.not, label %if.end177.if.end254_crit_edge, label %do.end248, !prof !52

if.end177.if.end254_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end254

do.end248:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end254

if.end254:                                        ; preds = %do.end248, %if.end177.if.end254_crit_edge
  %47 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cur.i, align 4
  %49 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %end.i, align 4
  %cmp268.not = icmp ult ptr %48, %50
  br i1 %cmp268.not, label %if.end254.if.end293_crit_edge, label %do.end287, !prof !52

if.end254.if.end293_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end293

do.end287:                                        ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end293

if.end293:                                        ; preds = %do.end287, %if.end254.if.end293_crit_edge
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast311 = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast312 = ptrtoint ptr %54 to i32
  %sub.ptr.sub313 = sub i32 %sub.ptr.lhs.cast311, %sub.ptr.rhs.cast312
  %55 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mem, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %61 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %client, align 4
  %name325 = getelementptr inbounds %struct.nvif_object, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %name325 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name325, align 8
  %65 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %handle, align 4
  %67 = ptrtoint ptr %name194 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %name194, align 8
  tail call void (ptr, ptr, ...) %60(ptr noundef %mem, ptr noundef nonnull @.str.10, ptr noundef %64, i32 noundef %66, ptr noundef %68, i32 noundef %sub.ptr.sub313, i32 noundef %or223) #5
  %69 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cur.i, align 4
  %incdec.ptr334 = getelementptr i32, ptr %70, i32 1
  store ptr %incdec.ptr334, ptr %cur.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or223, ptr %70, align 4
  %72 = ptrtoint ptr %xlut to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %xlut, align 8
  %74 = load ptr, ptr %cur.i, align 4
  %75 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %seg.i, align 8
  %cmp348.not = icmp ult ptr %74, %76
  br i1 %cmp348.not, label %if.end293.if.end373_crit_edge, label %do.end367, !prof !52

if.end293.if.end373_crit_edge:                    ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end373

do.end367:                                        ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end373

if.end373:                                        ; preds = %do.end367, %if.end293.if.end373_crit_edge
  %77 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cur.i, align 4
  %79 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %end.i, align 4
  %cmp387.not = icmp ult ptr %78, %80
  br i1 %cmp387.not, label %if.end373.if.end412_crit_edge, label %do.end406, !prof !52

if.end373.if.end412_crit_edge:                    ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end412

do.end406:                                        ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end412

if.end412:                                        ; preds = %do.end406, %if.end373.if.end412_crit_edge
  %81 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cur.i, align 4
  %83 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast430 = ptrtoint ptr %82 to i32
  %sub.ptr.rhs.cast431 = ptrtoint ptr %84 to i32
  %sub.ptr.sub432 = sub i32 %sub.ptr.lhs.cast430, %sub.ptr.rhs.cast431
  %85 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mem, align 8
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %91 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %client, align 4
  %name444 = getelementptr inbounds %struct.nvif_object, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %name444 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %name444, align 8
  %95 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %handle, align 4
  %97 = ptrtoint ptr %name194 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %name194, align 8
  tail call void (ptr, ptr, ...) %90(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %94, i32 noundef %96, ptr noundef %98, i32 noundef %sub.ptr.sub432, i32 noundef %73) #5
  %99 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cur.i, align 4
  %incdec.ptr453 = getelementptr i32, ptr %100, i32 1
  store ptr %incdec.ptr453, ptr %cur.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %73, ptr %100, align 4
  %102 = ptrtoint ptr %i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 6)
  %bf.load463 = load i48, ptr %i, align 8
  %bf.lshr464 = lshr i48 %bf.load463, 16
  %conv466 = trunc i48 %bf.lshr464 to i32
  %103 = load ptr, ptr %cur.i, align 4
  %104 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %seg.i, align 8
  %cmp471.not = icmp ult ptr %103, %105
  br i1 %cmp471.not, label %if.end412.if.end496_crit_edge, label %do.end490, !prof !52

if.end412.if.end496_crit_edge:                    ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end496

do.end490:                                        ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end496

if.end496:                                        ; preds = %do.end490, %if.end412.if.end496_crit_edge
  %106 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cur.i, align 4
  %108 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %end.i, align 4
  %cmp510.not = icmp ult ptr %107, %109
  br i1 %cmp510.not, label %if.end496.if.end535_crit_edge, label %do.end529, !prof !52

if.end496.if.end535_crit_edge:                    ; preds = %if.end496
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end535

do.end529:                                        ; preds = %if.end496
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end535

if.end535:                                        ; preds = %do.end529, %if.end496.if.end535_crit_edge
  %110 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cur.i, align 4
  %112 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast553 = ptrtoint ptr %111 to i32
  %sub.ptr.rhs.cast554 = ptrtoint ptr %113 to i32
  %sub.ptr.sub555 = sub i32 %sub.ptr.lhs.cast553, %sub.ptr.rhs.cast554
  %114 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mem, align 8
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %120 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %client, align 4
  %name567 = getelementptr inbounds %struct.nvif_object, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %name567 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %name567, align 8
  %124 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %handle, align 4
  %126 = ptrtoint ptr %name194 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %name194, align 8
  tail call void (ptr, ptr, ...) %119(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %123, i32 noundef %125, ptr noundef %127, i32 noundef %sub.ptr.sub555, i32 noundef %conv466) #5
  %128 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cur.i, align 4
  %incdec.ptr576 = getelementptr i32, ptr %129, i32 1
  store ptr %incdec.ptr576, ptr %cur.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %conv466, ptr %129, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end535, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end535 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wndwc57e_ilut(ptr nocapture readnone %wndw, ptr nocapture noundef %asyw, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  %spec.store.select = select i1 %tobool.not, i32 1024, i32 %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %spec.store.select)
  %cmp = icmp eq i32 %spec.store.select, 256
  %i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 6)
  %bf.load = load i48, ptr %i, align 8
  %bf.clear = and i48 %bf.load, -31
  %. = select i1 %cmp, i48 2, i48 4
  %bf.set6 = or i48 %bf.clear, %.
  store i48 %bf.set6, ptr %i, align 8
  %1 = trunc i32 %spec.store.select to i16
  %size11 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 6, i32 2, i32 1
  %2 = ptrtoint ptr %size11 to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load12 = load i16, ptr %size11, align 2
  %conv = shl i16 %1, 5
  %bf.shl = add i16 %conv, 160
  %bf.clear13 = and i16 %bf.load12, 25
  %bf.set14 = or i16 %bf.clear13, %bf.shl
  store i16 %bf.set14, ptr %size11, align 2
  %load = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 6, i32 2, i32 2
  %3 = ptrtoint ptr %load to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @wndwc57e_ilut_load, ptr %load, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wndwc57e_ilut_load(ptr nocapture noundef readonly %in, i32 noundef %size, ptr noundef %mem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mmioset(ptr noundef %mem, i32 noundef 0, i32 noundef 32) #5
  %add.ptr = getelementptr i8, ptr %mem, i32 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not90 = icmp eq i32 %size, 0
  br i1 %tobool.not90, label %entry.do.body21_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body21

for.body:                                         ; preds = %fixedU0_16_FP16.exit89.for.body_crit_edge, %entry.for.body_crit_edge
  %in.addr.093 = phi ptr [ %incdec.ptr, %fixedU0_16_FP16.exit89.for.body_crit_edge ], [ %in, %entry.for.body_crit_edge ]
  %size.addr.092 = phi i32 [ %dec, %fixedU0_16_FP16.exit89.for.body_crit_edge ], [ %size, %entry.for.body_crit_edge ]
  %mem.addr.091 = phi ptr [ %add.ptr20, %fixedU0_16_FP16.exit89.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %dec = add i32 %size.addr.092, -1
  %0 = ptrtoint ptr %in.addr.093 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %in.addr.093, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i = icmp eq i16 %1, 0
  br i1 %tobool.not.i, label %for.body.fixedU0_16_FP16.exit_crit_edge, label %for.body.while.cond.i_crit_edge

for.body.while.cond.i_crit_edge:                  ; preds = %for.body
  br label %while.cond.i

for.body.fixedU0_16_FP16.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %fixedU0_16_FP16.exit

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %for.body.while.cond.i_crit_edge
  %fixed.addr.0.i = phi i16 [ %shl.i, %while.cond.i.while.cond.i_crit_edge ], [ %1, %for.body.while.cond.i_crit_edge ]
  %exp.0.i = phi i32 [ %dec.i, %while.cond.i.while.cond.i_crit_edge ], [ 0, %for.body.while.cond.i_crit_edge ]
  %dec.i = add i32 %exp.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp ne i32 %dec.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %fixed.addr.0.i)
  %tobool2.not.i = icmp sgt i16 %fixed.addr.0.i, -1
  %or.cond.i = select i1 %tobool1.not.i, i1 %tobool2.not.i, i1 false
  %shl.i = shl nuw i16 %fixed.addr.0.i, 1
  br i1 %or.cond.i, label %while.cond.i.while.cond.i_crit_edge, label %while.end.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %2 = lshr i16 %fixed.addr.0.i, 5
  %3 = and i16 %2, 1023
  %dec.tr.i = trunc i32 %dec.i to i16
  %4 = shl i16 %dec.tr.i, 10
  %5 = add i16 %4, 15360
  %phi.cast.i = or i16 %5, %3
  br label %fixedU0_16_FP16.exit

fixedU0_16_FP16.exit:                             ; preds = %while.end.i, %for.body.fixedU0_16_FP16.exit_crit_edge
  %or10.i = phi i16 [ %phi.cast.i, %while.end.i ], [ 0, %for.body.fixedU0_16_FP16.exit_crit_edge ]
  %green = getelementptr inbounds %struct.drm_color_lut, ptr %in.addr.093, i32 0, i32 1
  %6 = ptrtoint ptr %green to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %green, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i62 = icmp eq i16 %7, 0
  br i1 %tobool.not.i62, label %fixedU0_16_FP16.exit.fixedU0_16_FP16.exit75_crit_edge, label %fixedU0_16_FP16.exit.while.cond.i70_crit_edge

fixedU0_16_FP16.exit.while.cond.i70_crit_edge:    ; preds = %fixedU0_16_FP16.exit
  br label %while.cond.i70

fixedU0_16_FP16.exit.fixedU0_16_FP16.exit75_crit_edge: ; preds = %fixedU0_16_FP16.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %fixedU0_16_FP16.exit75

while.cond.i70:                                   ; preds = %while.cond.i70.while.cond.i70_crit_edge, %fixedU0_16_FP16.exit.while.cond.i70_crit_edge
  %fixed.addr.0.i63 = phi i16 [ %shl.i69, %while.cond.i70.while.cond.i70_crit_edge ], [ %7, %fixedU0_16_FP16.exit.while.cond.i70_crit_edge ]
  %exp.0.i64 = phi i32 [ %dec.i65, %while.cond.i70.while.cond.i70_crit_edge ], [ 0, %fixedU0_16_FP16.exit.while.cond.i70_crit_edge ]
  %dec.i65 = add i32 %exp.0.i64, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i65)
  %tobool1.not.i66 = icmp ne i32 %dec.i65, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %fixed.addr.0.i63)
  %tobool2.not.i67 = icmp sgt i16 %fixed.addr.0.i63, -1
  %or.cond.i68 = select i1 %tobool1.not.i66, i1 %tobool2.not.i67, i1 false
  %shl.i69 = shl nuw i16 %fixed.addr.0.i63, 1
  br i1 %or.cond.i68, label %while.cond.i70.while.cond.i70_crit_edge, label %while.end.i73

while.cond.i70.while.cond.i70_crit_edge:          ; preds = %while.cond.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i70

while.end.i73:                                    ; preds = %while.cond.i70
  call void @__sanitizer_cov_trace_pc() #7
  %8 = lshr i16 %fixed.addr.0.i63, 5
  %9 = and i16 %8, 1023
  %dec.tr.i71 = trunc i32 %dec.i65 to i16
  %10 = shl i16 %dec.tr.i71, 10
  %11 = add i16 %10, 15360
  %phi.cast.i72 = or i16 %11, %9
  br label %fixedU0_16_FP16.exit75

fixedU0_16_FP16.exit75:                           ; preds = %while.end.i73, %fixedU0_16_FP16.exit.fixedU0_16_FP16.exit75_crit_edge
  %or10.i74 = phi i16 [ %phi.cast.i72, %while.end.i73 ], [ 0, %fixedU0_16_FP16.exit.fixedU0_16_FP16.exit75_crit_edge ]
  %blue = getelementptr inbounds %struct.drm_color_lut, ptr %in.addr.093, i32 0, i32 2
  %12 = ptrtoint ptr %blue to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %blue, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i76 = icmp eq i16 %13, 0
  br i1 %tobool.not.i76, label %fixedU0_16_FP16.exit75.fixedU0_16_FP16.exit89_crit_edge, label %fixedU0_16_FP16.exit75.while.cond.i84_crit_edge

fixedU0_16_FP16.exit75.while.cond.i84_crit_edge:  ; preds = %fixedU0_16_FP16.exit75
  br label %while.cond.i84

fixedU0_16_FP16.exit75.fixedU0_16_FP16.exit89_crit_edge: ; preds = %fixedU0_16_FP16.exit75
  call void @__sanitizer_cov_trace_pc() #7
  br label %fixedU0_16_FP16.exit89

while.cond.i84:                                   ; preds = %while.cond.i84.while.cond.i84_crit_edge, %fixedU0_16_FP16.exit75.while.cond.i84_crit_edge
  %fixed.addr.0.i77 = phi i16 [ %shl.i83, %while.cond.i84.while.cond.i84_crit_edge ], [ %13, %fixedU0_16_FP16.exit75.while.cond.i84_crit_edge ]
  %exp.0.i78 = phi i32 [ %dec.i79, %while.cond.i84.while.cond.i84_crit_edge ], [ 0, %fixedU0_16_FP16.exit75.while.cond.i84_crit_edge ]
  %dec.i79 = add i32 %exp.0.i78, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i79)
  %tobool1.not.i80 = icmp ne i32 %dec.i79, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %fixed.addr.0.i77)
  %tobool2.not.i81 = icmp sgt i16 %fixed.addr.0.i77, -1
  %or.cond.i82 = select i1 %tobool1.not.i80, i1 %tobool2.not.i81, i1 false
  %shl.i83 = shl nuw i16 %fixed.addr.0.i77, 1
  br i1 %or.cond.i82, label %while.cond.i84.while.cond.i84_crit_edge, label %while.end.i87

while.cond.i84.while.cond.i84_crit_edge:          ; preds = %while.cond.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i84

while.end.i87:                                    ; preds = %while.cond.i84
  call void @__sanitizer_cov_trace_pc() #7
  %14 = lshr i16 %fixed.addr.0.i77, 5
  %15 = and i16 %14, 1023
  %dec.tr.i85 = trunc i32 %dec.i79 to i16
  %16 = shl i16 %dec.tr.i85, 10
  %17 = add i16 %16, 15360
  %phi.cast.i86 = or i16 %17, %15
  br label %fixedU0_16_FP16.exit89

fixedU0_16_FP16.exit89:                           ; preds = %while.end.i87, %fixedU0_16_FP16.exit75.fixedU0_16_FP16.exit89_crit_edge
  %or10.i88 = phi i16 [ %phi.cast.i86, %while.end.i87 ], [ 0, %fixedU0_16_FP16.exit75.fixedU0_16_FP16.exit89_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %18 = tail call i16 @llvm.bswap.i16(i16 %or10.i)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %mem.addr.091, i16 %18) #5, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %19 = tail call i16 @llvm.bswap.i16(i16 %or10.i74)
  %add.ptr15 = getelementptr i8, ptr %mem.addr.091, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15, i16 %19) #5, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %20 = tail call i16 @llvm.bswap.i16(i16 %or10.i88)
  %add.ptr19 = getelementptr i8, ptr %mem.addr.091, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr19, i16 %20) #5, !srcloc !54
  %incdec.ptr = getelementptr %struct.drm_color_lut, ptr %in.addr.093, i32 1
  %add.ptr20 = getelementptr i8, ptr %mem.addr.091, i32 8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %fixedU0_16_FP16.exit89.do.body21_crit_edge, label %fixedU0_16_FP16.exit89.for.body_crit_edge

fixedU0_16_FP16.exit89.for.body_crit_edge:        ; preds = %fixedU0_16_FP16.exit89
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

fixedU0_16_FP16.exit89.do.body21_crit_edge:       ; preds = %fixedU0_16_FP16.exit89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body21

do.body21:                                        ; preds = %fixedU0_16_FP16.exit89.do.body21_crit_edge, %entry.do.body21_crit_edge
  %mem.addr.0.lcssa = phi ptr [ %add.ptr, %entry.do.body21_crit_edge ], [ %add.ptr20, %fixedU0_16_FP16.exit89.do.body21_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %add.ptr24 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 -8
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr24) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %mem.addr.0.lcssa, i16 %21) #5, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %add.ptr33 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 -6
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr33) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %add.ptr37 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr37, i16 %22) #5, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %add.ptr43 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 -4
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr43) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %add.ptr47 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr47, i16 %23) #5, !srcloc !54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wndwc57e_new(ptr noundef %drm, i32 noundef %type, i32 noundef %index, i32 noundef %oclass, ptr noundef %pwndw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = ashr i32 %index, 1
  %shl = shl nuw i32 1, %shr
  %call = tail call i32 @wndwc37e_new_(ptr noundef nonnull @wndwc57e, ptr noundef %drm, i32 noundef %type, i32 noundef %index, i32 noundef %oclass, i32 noundef %shl, ptr noundef %pwndw) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_acquire(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wndwc37e_release(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_sema_set(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_sema_clr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @corec37d_ntfy_init(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_ntfy_set(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_ntfy_clr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_ntfy_wait_begun(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @base907c_csc(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wndwc57e_image_set(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) #0 align 64 {
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
  %add.ptr.i = getelementptr i32, ptr %3, i32 17
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
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 17) #5
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
  %add.ptr4.i = getelementptr i32, ptr %9, i32 17
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !52

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !52

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.4) #5
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262920, i32 noundef 776, i32 noundef 1, ptr noundef nonnull @__func__.wndwc57e_image_set) #5
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
  br i1 %cmp159.not, label %if.end117.if.end184_crit_edge, label %do.end178, !prof !52

if.end117.if.end184_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end184

do.end178:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end184

if.end184:                                        ; preds = %do.end178, %if.end117.if.end184_crit_edge
  %40 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cur.i, align 4
  %42 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i, align 4
  %cmp198.not = icmp ult ptr %41, %43
  br i1 %cmp198.not, label %if.end184.if.end223_crit_edge, label %do.end217, !prof !52

if.end184.if.end223_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end223

do.end217:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.4) #5
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
  tail call void (ptr, ptr, ...) %53(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %57, i32 noundef %59, ptr noundef %61, i32 noundef %sub.ptr.sub243, i32 noundef %conv154) #5
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
  br i1 %cmp426.not, label %if.end223.if.end451_crit_edge, label %do.end445, !prof !52

if.end223.if.end451_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end451

do.end445:                                        ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end451

if.end451:                                        ; preds = %do.end445, %if.end223.if.end451_crit_edge
  %68 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur.i, align 4
  %70 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %end.i, align 4
  %cmp465.not = icmp ult ptr %69, %71
  br i1 %cmp465.not, label %if.end451.if.end490_crit_edge, label %do.end484, !prof !52

if.end451.if.end490_crit_edge:                    ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end490

do.end484:                                        ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #5
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
  tail call void (ptr, ptr, ...) %81(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %85, i32 noundef %87, ptr noundef %89, i32 noundef %sub.ptr.sub510, i32 noundef 1049124, i32 noundef 548, i32 noundef 4, ptr noundef nonnull @__func__.wndwc57e_image_set) #5
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
  br i1 %cmp553.not, label %if.end490.if.end578_crit_edge, label %do.end572, !prof !52

if.end490.if.end578_crit_edge:                    ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end578

do.end572:                                        ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end578

if.end578:                                        ; preds = %do.end572, %if.end490.if.end578_crit_edge
  %100 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur.i, align 4
  %102 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %end.i, align 4
  %cmp592.not = icmp ult ptr %101, %103
  br i1 %cmp592.not, label %if.end578.if.end617_crit_edge, label %do.end611, !prof !52

if.end578.if.end617_crit_edge:                    ; preds = %if.end578
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end617

do.end611:                                        ; preds = %if.end578
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #5
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
  tail call void (ptr, ptr, ...) %113(ptr noundef %mem, ptr noundef nonnull @.str.14, ptr noundef %117, i32 noundef %119, ptr noundef %121, i32 noundef %sub.ptr.sub637, i32 noundef %or547) #5
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
  %126 = trunc i16 %bf.load667 to i8
  %127 = lshr i8 %126, 4
  %sh.diff = lshr i16 %bf.load667, 4
  %tr.sh.diff = trunc i16 %sh.diff to i8
  %128 = and i8 %tr.sh.diff, 16
  %or6813010 = or i8 %128, %127
  %conv682 = zext i8 %or6813010 to i32
  %129 = load ptr, ptr %cur.i, align 4
  %130 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %seg.i, align 8
  %cmp687.not = icmp ult ptr %129, %131
  br i1 %cmp687.not, label %if.end617.if.end712_crit_edge, label %do.end706, !prof !52

if.end617.if.end712_crit_edge:                    ; preds = %if.end617
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end712

do.end706:                                        ; preds = %if.end617
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end712

if.end712:                                        ; preds = %do.end706, %if.end617.if.end712_crit_edge
  %132 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cur.i, align 4
  %134 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %end.i, align 4
  %cmp726.not = icmp ult ptr %133, %135
  br i1 %cmp726.not, label %if.end712.if.end751_crit_edge, label %do.end745, !prof !52

if.end712.if.end751_crit_edge:                    ; preds = %if.end712
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end751

do.end745:                                        ; preds = %if.end712
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end751

if.end751:                                        ; preds = %do.end745, %if.end712.if.end751_crit_edge
  %136 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cur.i, align 4
  %138 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast769 = ptrtoint ptr %137 to i32
  %sub.ptr.rhs.cast770 = ptrtoint ptr %139 to i32
  %sub.ptr.sub771 = sub i32 %sub.ptr.lhs.cast769, %sub.ptr.rhs.cast770
  %140 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mem, align 8
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %146 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %client, align 4
  %name783 = getelementptr inbounds %struct.nvif_object, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %name783 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %name783, align 8
  %150 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %handle, align 4
  %152 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %145(ptr noundef %mem, ptr noundef nonnull @.str.15, ptr noundef %149, i32 noundef %151, ptr noundef %153, i32 noundef %sub.ptr.sub771, i32 noundef %conv682) #5
  %154 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cur.i, align 4
  %incdec.ptr792 = getelementptr i32, ptr %155, i32 1
  store ptr %incdec.ptr792, ptr %cur.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %conv682, ptr %155, align 4
  %format = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 1
  %157 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %format, align 1
  %conv807 = zext i8 %158 to i32
  %159 = load ptr, ptr %cur.i, align 4
  %160 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %seg.i, align 8
  %cmp812.not = icmp ult ptr %159, %161
  br i1 %cmp812.not, label %if.end751.if.end837_crit_edge, label %do.end831, !prof !52

if.end751.if.end837_crit_edge:                    ; preds = %if.end751
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end837

do.end831:                                        ; preds = %if.end751
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end837

if.end837:                                        ; preds = %do.end831, %if.end751.if.end837_crit_edge
  %162 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %cur.i, align 4
  %164 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %end.i, align 4
  %cmp851.not = icmp ult ptr %163, %165
  br i1 %cmp851.not, label %if.end837.if.end876_crit_edge, label %do.end870, !prof !52

if.end837.if.end876_crit_edge:                    ; preds = %if.end837
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end876

do.end870:                                        ; preds = %if.end837
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end876

if.end876:                                        ; preds = %do.end870, %if.end837.if.end876_crit_edge
  %166 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %cur.i, align 4
  %168 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast894 = ptrtoint ptr %167 to i32
  %sub.ptr.rhs.cast895 = ptrtoint ptr %169 to i32
  %sub.ptr.sub896 = sub i32 %sub.ptr.lhs.cast894, %sub.ptr.rhs.cast895
  %170 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %mem, align 8
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %173, align 4
  %176 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %client, align 4
  %name908 = getelementptr inbounds %struct.nvif_object, ptr %177, i32 0, i32 2
  %178 = ptrtoint ptr %name908 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %name908, align 8
  %180 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %handle, align 4
  %182 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %175(ptr noundef %mem, ptr noundef nonnull @.str.16, ptr noundef %179, i32 noundef %181, ptr noundef %183, i32 noundef %sub.ptr.sub896, i32 noundef %conv807) #5
  %184 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %cur.i, align 4
  %incdec.ptr917 = getelementptr i32, ptr %185, i32 1
  store ptr %incdec.ptr917, ptr %cur.i, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %conv807, ptr %185, align 4
  %blocks = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 3
  %187 = ptrtoint ptr %blocks to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %blocks, align 4
  %189 = and i16 %188, 8191
  %and927 = zext i16 %189 to i32
  %pitch = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 4
  %190 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %pitch, align 4
  %shr = lshr i32 %191, 6
  %192 = and i32 %shr, 8191
  %or934 = or i32 %192, %and927
  %193 = load ptr, ptr %cur.i, align 4
  %194 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %seg.i, align 8
  %cmp940.not = icmp ult ptr %193, %195
  br i1 %cmp940.not, label %if.end876.if.end965_crit_edge, label %do.end959, !prof !52

if.end876.if.end965_crit_edge:                    ; preds = %if.end876
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end965

do.end959:                                        ; preds = %if.end876
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end965

if.end965:                                        ; preds = %do.end959, %if.end876.if.end965_crit_edge
  %196 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %cur.i, align 4
  %198 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %end.i, align 4
  %cmp979.not = icmp ult ptr %197, %199
  br i1 %cmp979.not, label %if.end965.if.end1004_crit_edge, label %do.end998, !prof !52

if.end965.if.end1004_crit_edge:                   ; preds = %if.end965
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1004

do.end998:                                        ; preds = %if.end965
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1004

if.end1004:                                       ; preds = %do.end998, %if.end965.if.end1004_crit_edge
  %200 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %cur.i, align 4
  %202 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1022 = ptrtoint ptr %201 to i32
  %sub.ptr.rhs.cast1023 = ptrtoint ptr %203 to i32
  %sub.ptr.sub1024 = sub i32 %sub.ptr.lhs.cast1022, %sub.ptr.rhs.cast1023
  %204 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %mem, align 8
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %205, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %207, align 4
  %210 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %client, align 4
  %name1036 = getelementptr inbounds %struct.nvif_object, ptr %211, i32 0, i32 2
  %212 = ptrtoint ptr %name1036 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %name1036, align 8
  %214 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %handle, align 4
  %216 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %209(ptr noundef %mem, ptr noundef nonnull @.str.17, ptr noundef %213, i32 noundef %215, ptr noundef %217, i32 noundef %sub.ptr.sub1024, i32 noundef %or934) #5
  %218 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1045 = getelementptr i32, ptr %219, i32 1
  store ptr %incdec.ptr1045, ptr %cur.i, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %or934, ptr %219, align 4
  %221 = load ptr, ptr %cur.i, align 4
  %222 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %seg.i, align 8
  %cmp1117.not = icmp ult ptr %221, %223
  br i1 %cmp1117.not, label %if.end1004.if.end1142_crit_edge, label %do.end1136, !prof !52

if.end1004.if.end1142_crit_edge:                  ; preds = %if.end1004
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1142

do.end1136:                                       ; preds = %if.end1004
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 66, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end1142

if.end1142:                                       ; preds = %do.end1136, %if.end1004.if.end1142_crit_edge
  %224 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %cur.i, align 4
  %226 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %end.i, align 4
  %cmp1156.not = icmp ult ptr %225, %227
  br i1 %cmp1156.not, label %if.end1142.if.end1181_crit_edge, label %do.end1175, !prof !52

if.end1142.if.end1181_crit_edge:                  ; preds = %if.end1142
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1181

do.end1175:                                       ; preds = %if.end1142
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 66, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1181

if.end1181:                                       ; preds = %do.end1175, %if.end1142.if.end1181_crit_edge
  %228 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %cur.i, align 4
  %230 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1199 = ptrtoint ptr %229 to i32
  %sub.ptr.rhs.cast1200 = ptrtoint ptr %231 to i32
  %sub.ptr.sub1201 = sub i32 %sub.ptr.lhs.cast1199, %sub.ptr.rhs.cast1200
  %232 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %mem, align 8
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %233, align 4
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %235, align 4
  %238 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %client, align 4
  %name1213 = getelementptr inbounds %struct.nvif_object, ptr %239, i32 0, i32 2
  %240 = ptrtoint ptr %name1213 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %name1213, align 8
  %242 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %handle, align 4
  %244 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %237(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %241, i32 noundef %243, ptr noundef %245, i32 noundef %sub.ptr.sub1201, i32 noundef 262720, i32 noundef 576, i32 noundef 1, ptr noundef nonnull @__func__.wndwc57e_image_set) #5
  %246 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1222 = getelementptr i32, ptr %247, i32 1
  store ptr %incdec.ptr1222, ptr %cur.i, align 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 262720, ptr %247, align 4
  %handle1229 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 7
  %249 = ptrtoint ptr %handle1229 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %handle1229, align 4
  %251 = load ptr, ptr %cur.i, align 4
  %252 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %seg.i, align 8
  %cmp1240.not = icmp ult ptr %251, %253
  br i1 %cmp1240.not, label %if.end1181.if.end1265_crit_edge, label %do.end1259, !prof !52

if.end1181.if.end1265_crit_edge:                  ; preds = %if.end1181
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1265

do.end1259:                                       ; preds = %if.end1181
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 66, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end1265

if.end1265:                                       ; preds = %do.end1259, %if.end1181.if.end1265_crit_edge
  %254 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %cur.i, align 4
  %256 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %end.i, align 4
  %cmp1279.not = icmp ult ptr %255, %257
  br i1 %cmp1279.not, label %if.end1265.if.end1304_crit_edge, label %do.end1298, !prof !52

if.end1265.if.end1304_crit_edge:                  ; preds = %if.end1265
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1304

do.end1298:                                       ; preds = %if.end1265
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 66, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1304

if.end1304:                                       ; preds = %do.end1298, %if.end1265.if.end1304_crit_edge
  %258 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %cur.i, align 4
  %260 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1322 = ptrtoint ptr %259 to i32
  %sub.ptr.rhs.cast1323 = ptrtoint ptr %261 to i32
  %sub.ptr.sub1324 = sub i32 %sub.ptr.lhs.cast1322, %sub.ptr.rhs.cast1323
  %262 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %mem, align 8
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %263, align 4
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %265, align 4
  %268 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %client, align 4
  %name1336 = getelementptr inbounds %struct.nvif_object, ptr %269, i32 0, i32 2
  %270 = ptrtoint ptr %name1336 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %name1336, align 8
  %272 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %handle, align 4
  %274 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %267(ptr noundef %mem, ptr noundef nonnull @.str.18, ptr noundef %271, i32 noundef %273, ptr noundef %275, i32 noundef %sub.ptr.sub1324, i32 noundef %250, i32 noundef 0) #5
  %276 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1345 = getelementptr i32, ptr %277, i32 1
  store ptr %incdec.ptr1345, ptr %cur.i, align 4
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %250, ptr %277, align 4
  %279 = load ptr, ptr %cur.i, align 4
  %280 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %seg.i, align 8
  %cmp1538.not = icmp ult ptr %279, %281
  br i1 %cmp1538.not, label %if.end1304.if.end1563_crit_edge, label %do.end1557, !prof !52

if.end1304.if.end1563_crit_edge:                  ; preds = %if.end1304
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1563

do.end1557:                                       ; preds = %if.end1304
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end1563

if.end1563:                                       ; preds = %do.end1557, %if.end1304.if.end1563_crit_edge
  %282 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %cur.i, align 4
  %284 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %end.i, align 4
  %cmp1577.not = icmp ult ptr %283, %285
  br i1 %cmp1577.not, label %if.end1563.if.end1602_crit_edge, label %do.end1596, !prof !52

if.end1563.if.end1602_crit_edge:                  ; preds = %if.end1563
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1602

do.end1596:                                       ; preds = %if.end1563
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1602

if.end1602:                                       ; preds = %do.end1596, %if.end1563.if.end1602_crit_edge
  %286 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %cur.i, align 4
  %288 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1620 = ptrtoint ptr %287 to i32
  %sub.ptr.rhs.cast1621 = ptrtoint ptr %289 to i32
  %sub.ptr.sub1622 = sub i32 %sub.ptr.lhs.cast1620, %sub.ptr.rhs.cast1621
  %290 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %mem, align 8
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %291, align 4
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %293, align 4
  %296 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %client, align 4
  %name1634 = getelementptr inbounds %struct.nvif_object, ptr %297, i32 0, i32 2
  %298 = ptrtoint ptr %name1634 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %name1634, align 8
  %300 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %handle, align 4
  %302 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %295(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %299, i32 noundef %301, ptr noundef %303, i32 noundef %sub.ptr.sub1622, i32 noundef 262752, i32 noundef 608, i32 noundef 1, ptr noundef nonnull @__func__.wndwc57e_image_set) #5
  %304 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1643 = getelementptr i32, ptr %305, i32 1
  store ptr %incdec.ptr1643, ptr %cur.i, align 4
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 262752, ptr %305, align 4
  %offset = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 8
  %307 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %307)
  %308 = load i64, ptr %offset, align 8
  %shr1653 = lshr i64 %308, 8
  %conv1654 = trunc i64 %shr1653 to i32
  %309 = load ptr, ptr %cur.i, align 4
  %310 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %seg.i, align 8
  %cmp1659.not = icmp ult ptr %309, %311
  br i1 %cmp1659.not, label %if.end1602.if.end1684_crit_edge, label %do.end1678, !prof !52

if.end1602.if.end1684_crit_edge:                  ; preds = %if.end1602
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1684

do.end1678:                                       ; preds = %if.end1602
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end1684

if.end1684:                                       ; preds = %do.end1678, %if.end1602.if.end1684_crit_edge
  %312 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %cur.i, align 4
  %314 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %end.i, align 4
  %cmp1698.not = icmp ult ptr %313, %315
  br i1 %cmp1698.not, label %if.end1684.if.end1723_crit_edge, label %do.end1717, !prof !52

if.end1684.if.end1723_crit_edge:                  ; preds = %if.end1684
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1723

do.end1717:                                       ; preds = %if.end1684
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1723

if.end1723:                                       ; preds = %do.end1717, %if.end1684.if.end1723_crit_edge
  %316 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %cur.i, align 4
  %318 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1741 = ptrtoint ptr %317 to i32
  %sub.ptr.rhs.cast1742 = ptrtoint ptr %319 to i32
  %sub.ptr.sub1743 = sub i32 %sub.ptr.lhs.cast1741, %sub.ptr.rhs.cast1742
  %320 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %mem, align 8
  %322 = ptrtoint ptr %321 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %321, align 4
  %324 = ptrtoint ptr %323 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %323, align 4
  %326 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %client, align 4
  %name1755 = getelementptr inbounds %struct.nvif_object, ptr %327, i32 0, i32 2
  %328 = ptrtoint ptr %name1755 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %name1755, align 8
  %330 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %handle, align 4
  %332 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %325(ptr noundef %mem, ptr noundef nonnull @.str.19, ptr noundef %329, i32 noundef %331, ptr noundef %333, i32 noundef %sub.ptr.sub1743, i32 noundef %conv1654) #5
  %334 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1764 = getelementptr i32, ptr %335, i32 1
  store ptr %incdec.ptr1764, ptr %cur.i, align 4
  %336 = ptrtoint ptr %335 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %conv1654, ptr %335, align 4
  %337 = load ptr, ptr %cur.i, align 4
  %338 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %seg.i, align 8
  %cmp1836.not = icmp ult ptr %337, %339
  br i1 %cmp1836.not, label %if.end1723.if.end1861_crit_edge, label %do.end1855, !prof !52

if.end1723.if.end1861_crit_edge:                  ; preds = %if.end1723
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1861

do.end1855:                                       ; preds = %if.end1723
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end1861

if.end1861:                                       ; preds = %do.end1855, %if.end1723.if.end1861_crit_edge
  %340 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %cur.i, align 4
  %342 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %end.i, align 4
  %cmp1875.not = icmp ult ptr %341, %343
  br i1 %cmp1875.not, label %if.end1861.if.end1900_crit_edge, label %do.end1894, !prof !52

if.end1861.if.end1900_crit_edge:                  ; preds = %if.end1861
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1900

do.end1894:                                       ; preds = %if.end1861
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1900

if.end1900:                                       ; preds = %do.end1894, %if.end1861.if.end1900_crit_edge
  %344 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %cur.i, align 4
  %346 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1918 = ptrtoint ptr %345 to i32
  %sub.ptr.rhs.cast1919 = ptrtoint ptr %347 to i32
  %sub.ptr.sub1920 = sub i32 %sub.ptr.lhs.cast1918, %sub.ptr.rhs.cast1919
  %348 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %mem, align 8
  %350 = ptrtoint ptr %349 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %349, align 4
  %352 = ptrtoint ptr %351 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %351, align 4
  %354 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %client, align 4
  %name1932 = getelementptr inbounds %struct.nvif_object, ptr %355, i32 0, i32 2
  %356 = ptrtoint ptr %name1932 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %name1932, align 8
  %358 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %handle, align 4
  %360 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %353(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %357, i32 noundef %359, ptr noundef %361, i32 noundef %sub.ptr.sub1920, i32 noundef 262800, i32 noundef 656, i32 noundef 1, ptr noundef nonnull @__func__.wndwc57e_image_set) #5
  %362 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1941 = getelementptr i32, ptr %363, i32 1
  store ptr %incdec.ptr1941, ptr %cur.i, align 4
  %364 = ptrtoint ptr %363 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 262800, ptr %363, align 4
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 8
  %365 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %src_x, align 8
  %shr1949 = lshr i32 %366, 16
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 9
  %367 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %src_y, align 4
  %shr1954 = and i32 %368, -65536
  %or19583011 = or i32 %shr1954, %shr1949
  %369 = load ptr, ptr %cur.i, align 4
  %370 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %seg.i, align 8
  %cmp1964.not = icmp ult ptr %369, %371
  br i1 %cmp1964.not, label %if.end1900.if.end1989_crit_edge, label %do.end1983, !prof !52

if.end1900.if.end1989_crit_edge:                  ; preds = %if.end1900
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1989

do.end1983:                                       ; preds = %if.end1900
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end1989

if.end1989:                                       ; preds = %do.end1983, %if.end1900.if.end1989_crit_edge
  %372 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %cur.i, align 4
  %374 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %end.i, align 4
  %cmp2003.not = icmp ult ptr %373, %375
  br i1 %cmp2003.not, label %if.end1989.if.end2028_crit_edge, label %do.end2022, !prof !52

if.end1989.if.end2028_crit_edge:                  ; preds = %if.end1989
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2028

do.end2022:                                       ; preds = %if.end1989
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end2028

if.end2028:                                       ; preds = %do.end2022, %if.end1989.if.end2028_crit_edge
  %376 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %cur.i, align 4
  %378 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2046 = ptrtoint ptr %377 to i32
  %sub.ptr.rhs.cast2047 = ptrtoint ptr %379 to i32
  %sub.ptr.sub2048 = sub i32 %sub.ptr.lhs.cast2046, %sub.ptr.rhs.cast2047
  %380 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %mem, align 8
  %382 = ptrtoint ptr %381 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %381, align 4
  %384 = ptrtoint ptr %383 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %383, align 4
  %386 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %client, align 4
  %name2060 = getelementptr inbounds %struct.nvif_object, ptr %387, i32 0, i32 2
  %388 = ptrtoint ptr %name2060 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %name2060, align 8
  %390 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %handle, align 4
  %392 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %385(ptr noundef %mem, ptr noundef nonnull @.str.20, ptr noundef %389, i32 noundef %391, ptr noundef %393, i32 noundef %sub.ptr.sub2048, i32 noundef %or19583011) #5
  %394 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2069 = getelementptr i32, ptr %395, i32 1
  store ptr %incdec.ptr2069, ptr %cur.i, align 4
  %396 = ptrtoint ptr %395 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %or19583011, ptr %395, align 4
  %397 = load ptr, ptr %cur.i, align 4
  %398 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %seg.i, align 8
  %cmp2141.not = icmp ult ptr %397, %399
  br i1 %cmp2141.not, label %if.end2028.if.end2166_crit_edge, label %do.end2160, !prof !52

if.end2028.if.end2166_crit_edge:                  ; preds = %if.end2028
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2166

do.end2160:                                       ; preds = %if.end2028
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end2166

if.end2166:                                       ; preds = %do.end2160, %if.end2028.if.end2166_crit_edge
  %400 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %cur.i, align 4
  %402 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %end.i, align 4
  %cmp2180.not = icmp ult ptr %401, %403
  br i1 %cmp2180.not, label %if.end2166.if.end2205_crit_edge, label %do.end2199, !prof !52

if.end2166.if.end2205_crit_edge:                  ; preds = %if.end2166
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2205

do.end2199:                                       ; preds = %if.end2166
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end2205

if.end2205:                                       ; preds = %do.end2199, %if.end2166.if.end2205_crit_edge
  %404 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %cur.i, align 4
  %406 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2223 = ptrtoint ptr %405 to i32
  %sub.ptr.rhs.cast2224 = ptrtoint ptr %407 to i32
  %sub.ptr.sub2225 = sub i32 %sub.ptr.lhs.cast2223, %sub.ptr.rhs.cast2224
  %408 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %mem, align 8
  %410 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %409, align 4
  %412 = ptrtoint ptr %411 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %411, align 4
  %414 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %client, align 4
  %name2237 = getelementptr inbounds %struct.nvif_object, ptr %415, i32 0, i32 2
  %416 = ptrtoint ptr %name2237 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %name2237, align 8
  %418 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %handle, align 4
  %420 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %413(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %417, i32 noundef %419, ptr noundef %421, i32 noundef %sub.ptr.sub2225, i32 noundef 262808, i32 noundef 664, i32 noundef 1, ptr noundef nonnull @__func__.wndwc57e_image_set) #5
  %422 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2246 = getelementptr i32, ptr %423, i32 1
  store ptr %incdec.ptr2246, ptr %cur.i, align 4
  %424 = ptrtoint ptr %423 to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 262808, ptr %423, align 4
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 11
  %425 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %src_w, align 4
  %shr2255 = lshr i32 %426, 16
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 10
  %427 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %src_h, align 8
  %shr2260 = and i32 %428, -65536
  %or22643012 = or i32 %shr2260, %shr2255
  %429 = load ptr, ptr %cur.i, align 4
  %430 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %seg.i, align 8
  %cmp2270.not = icmp ult ptr %429, %431
  br i1 %cmp2270.not, label %if.end2205.if.end2295_crit_edge, label %do.end2289, !prof !52

if.end2205.if.end2295_crit_edge:                  ; preds = %if.end2205
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2295

do.end2289:                                       ; preds = %if.end2205
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end2295

if.end2295:                                       ; preds = %do.end2289, %if.end2205.if.end2295_crit_edge
  %432 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %cur.i, align 4
  %434 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %end.i, align 4
  %cmp2309.not = icmp ult ptr %433, %435
  br i1 %cmp2309.not, label %if.end2295.if.end2334_crit_edge, label %do.end2328, !prof !52

if.end2295.if.end2334_crit_edge:                  ; preds = %if.end2295
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2334

do.end2328:                                       ; preds = %if.end2295
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end2334

if.end2334:                                       ; preds = %do.end2328, %if.end2295.if.end2334_crit_edge
  %436 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %cur.i, align 4
  %438 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2352 = ptrtoint ptr %437 to i32
  %sub.ptr.rhs.cast2353 = ptrtoint ptr %439 to i32
  %sub.ptr.sub2354 = sub i32 %sub.ptr.lhs.cast2352, %sub.ptr.rhs.cast2353
  %440 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %mem, align 8
  %442 = ptrtoint ptr %441 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %441, align 4
  %444 = ptrtoint ptr %443 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %443, align 4
  %446 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %client, align 4
  %name2366 = getelementptr inbounds %struct.nvif_object, ptr %447, i32 0, i32 2
  %448 = ptrtoint ptr %name2366 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %name2366, align 8
  %450 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %handle, align 4
  %452 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %445(ptr noundef %mem, ptr noundef nonnull @.str.21, ptr noundef %449, i32 noundef %451, ptr noundef %453, i32 noundef %sub.ptr.sub2354, i32 noundef %or22643012) #5
  %454 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2375 = getelementptr i32, ptr %455, i32 1
  store ptr %incdec.ptr2375, ptr %cur.i, align 4
  %456 = ptrtoint ptr %455 to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 %or22643012, ptr %455, align 4
  %457 = load ptr, ptr %cur.i, align 4
  %458 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %seg.i, align 8
  %cmp2447.not = icmp ult ptr %457, %459
  br i1 %cmp2447.not, label %if.end2334.if.end2472_crit_edge, label %do.end2466, !prof !52

if.end2334.if.end2472_crit_edge:                  ; preds = %if.end2334
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2472

do.end2466:                                       ; preds = %if.end2334
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end2472

if.end2472:                                       ; preds = %do.end2466, %if.end2334.if.end2472_crit_edge
  %460 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %cur.i, align 4
  %462 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %end.i, align 4
  %cmp2486.not = icmp ult ptr %461, %463
  br i1 %cmp2486.not, label %if.end2472.if.end2511_crit_edge, label %do.end2505, !prof !52

if.end2472.if.end2511_crit_edge:                  ; preds = %if.end2472
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2511

do.end2505:                                       ; preds = %if.end2472
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end2511

if.end2511:                                       ; preds = %do.end2505, %if.end2472.if.end2511_crit_edge
  %464 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %cur.i, align 4
  %466 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2529 = ptrtoint ptr %465 to i32
  %sub.ptr.rhs.cast2530 = ptrtoint ptr %467 to i32
  %sub.ptr.sub2531 = sub i32 %sub.ptr.lhs.cast2529, %sub.ptr.rhs.cast2530
  %468 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %mem, align 8
  %470 = ptrtoint ptr %469 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %469, align 4
  %472 = ptrtoint ptr %471 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %471, align 4
  %474 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %client, align 4
  %name2543 = getelementptr inbounds %struct.nvif_object, ptr %475, i32 0, i32 2
  %476 = ptrtoint ptr %name2543 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %name2543, align 8
  %478 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %handle, align 4
  %480 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %473(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %477, i32 noundef %479, ptr noundef %481, i32 noundef %sub.ptr.sub2531, i32 noundef 262820, i32 noundef 676, i32 noundef 1, ptr noundef nonnull @__func__.wndwc57e_image_set) #5
  %482 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2552 = getelementptr i32, ptr %483, i32 1
  store ptr %incdec.ptr2552, ptr %cur.i, align 4
  %484 = ptrtoint ptr %483 to i32
  call void @__asan_store4_noabort(i32 %484)
  store i32 262820, ptr %483, align 4
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 6
  %485 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %crtc_w, align 8
  %487 = and i32 %486, 65535
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 7
  %488 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %crtc_h, align 4
  %490 = shl i32 %489, 16
  %or25683013 = or i32 %490, %487
  %491 = load ptr, ptr %cur.i, align 4
  %492 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %seg.i, align 8
  %cmp2574.not = icmp ult ptr %491, %493
  br i1 %cmp2574.not, label %if.end2511.if.end2599_crit_edge, label %do.end2593, !prof !52

if.end2511.if.end2599_crit_edge:                  ; preds = %if.end2511
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2599

do.end2593:                                       ; preds = %if.end2511
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end2599

if.end2599:                                       ; preds = %do.end2593, %if.end2511.if.end2599_crit_edge
  %494 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %cur.i, align 4
  %496 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %end.i, align 4
  %cmp2613.not = icmp ult ptr %495, %497
  br i1 %cmp2613.not, label %if.end2599.if.end2638_crit_edge, label %do.end2632, !prof !52

if.end2599.if.end2638_crit_edge:                  ; preds = %if.end2599
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2638

do.end2632:                                       ; preds = %if.end2599
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end2638

if.end2638:                                       ; preds = %do.end2632, %if.end2599.if.end2638_crit_edge
  %498 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %cur.i, align 4
  %500 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2656 = ptrtoint ptr %499 to i32
  %sub.ptr.rhs.cast2657 = ptrtoint ptr %501 to i32
  %sub.ptr.sub2658 = sub i32 %sub.ptr.lhs.cast2656, %sub.ptr.rhs.cast2657
  %502 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %mem, align 8
  %504 = ptrtoint ptr %503 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %503, align 4
  %506 = ptrtoint ptr %505 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %505, align 4
  %508 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %client, align 4
  %name2670 = getelementptr inbounds %struct.nvif_object, ptr %509, i32 0, i32 2
  %510 = ptrtoint ptr %name2670 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %name2670, align 8
  %512 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %handle, align 4
  %514 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %507(ptr noundef %mem, ptr noundef nonnull @.str.22, ptr noundef %511, i32 noundef %513, ptr noundef %515, i32 noundef %sub.ptr.sub2658, i32 noundef %or25683013) #5
  %516 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2679 = getelementptr i32, ptr %517, i32 1
  store ptr %incdec.ptr2679, ptr %cur.i, align 4
  %518 = ptrtoint ptr %517 to i32
  call void @__asan_store4_noabort(i32 %518)
  store i32 %or25683013, ptr %517, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2638, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2638 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_image_clr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_blend_set(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_update(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !13, !14, !16, !17, !18, !19, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc57e.c", i32 97, i32 2}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__func__.wndwc57e_csc_clr, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.wndwc57e_csc_set, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc57e.c", i32 110, i32 2}
!11 = !{ptr @__func__.wndwc57e_ilut_clr, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc57e.c", i32 123, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc57e.c", i32 136, i32 2}
!16 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__func__.wndwc57e_ilut_set, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @wndwc57e_modifiers, !21, !"wndwc57e_modifiers", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc57e.c", i32 204, i32 11}
!22 = !{ptr @wndwc57e, !23, !"wndwc57e", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc57e.c", i32 216, i32 1}
!24 = !{ptr @__func__.wndwc57e_image_set, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc57e.c", i32 43, i32 2}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc57e.c", i32 48, i32 2}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc57e.c", i32 66, i32 2}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc57e.c", i32 67, i32 2}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc57e.c", i32 69, i32 2}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc57e.c", i32 73, i32 2}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc57e.c", i32 77, i32 2}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2158148728}
!54 = !{i64 5395329}
!55 = !{i64 2158149089}
!56 = !{i64 2158149450}
!57 = !{i64 2158150493}
!58 = !{i64 5395529}
!59 = !{i64 2158151348}
!60 = !{i64 2158152244}
!61 = !{i64 2158153099}
!62 = !{i64 2158153995}
!63 = !{i64 2158154850}
