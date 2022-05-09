; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nv04_fbcon.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nv04_fbcon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.81, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.81 = type { ptr }
%struct.drm_fb_helper = type { %struct.drm_client_dev, ptr, ptr, ptr, ptr, ptr, [17 x i32], %struct.drm_clip_rect, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.mutex, %struct.list_head, i8, i8, i32 }
%struct.drm_client_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, ptr }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.88, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.93, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.anon.88 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.93 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.100, %struct.anon.101, %struct.anon.103, ptr, %struct.anon.104, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.105, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.117 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.100 = type { ptr, i32, i32, i8 }
%struct.anon.101 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.102] }
%struct.anon.102 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.103 = type { i64, i64 }
%struct.anon.104 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.95 }
%struct.anon.95 = type { ptr, i64 }
%struct.anon.105 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.112, %struct.anon.113, %struct.anon.114, %struct.anon.115 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.106, i8 }
%union.anon.106 = type { %struct.anon.110 }
%struct.anon.110 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.112 = type { i32 }
%struct.anon.113 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.114 = type { i16, i16 }
%struct.anon.115 = type { i16, i16, i16, %struct.anon.116, i16 }
%struct.anon.116 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.117 = type { ptr, %struct.mutex, i8 }
%struct.anon.97 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.nouveau_channel = type { %struct.anon.97, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.118, i8, ptr, %struct.anon.119, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.118 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.119 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.nouveau_fbdev = type { %struct.drm_fb_helper, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, ptr, %struct.mutex, i8 }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/nouveau/nv04_fbcon.c\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fbconCtxSurf2d\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fbconCtxClip\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fbconCtxRop\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fbconCtxPatt\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fbconGdiRectText\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fbconImageBlit\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 44, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 171, i32 38 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 177, i32 38 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 182, i32 38 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 187, i32 38 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 192, i32 38 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [40 x i8] c"../drivers/gpu/drm/nouveau/nv04_fbcon.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 197, i32 38 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.6, ptr @.str.7, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_fbcon_copyarea(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %region) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %dev = getelementptr inbounds %struct.drm_fb_helper, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %channel = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channel, align 4
  %push2 = getelementptr inbounds %struct.anon.97, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %11, i32 4
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %13
  br i1 %cmp.not.i, label %entry.if.end134_crit_edge, label %if.then.i

entry.if.end134_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end134

if.then.i:                                        ; preds = %entry
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 8
  %call.i = tail call i32 %15(ptr noundef %9, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end134_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i.if.end134_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end134

if.end134:                                        ; preds = %if.then.i.if.end134_crit_edge, %entry.if.end134_crit_edge
  %16 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %17, i32 4
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 5
  %18 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %17, %add.ptr4.i
  br i1 %cmp.not, label %if.end134.if.end170_crit_edge, label %do.end164, !prof !37

if.end134.if.end170_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end170

do.end164:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end170

if.end170:                                        ; preds = %do.end164, %if.end134.if.end170_crit_edge
  %19 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cur.i, align 4
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i, align 4
  %cmp183.not = icmp ult ptr %20, %22
  br i1 %cmp183.not, label %if.end170.if.end207_crit_edge, label %do.end201, !prof !37

if.end170.if.end207_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end207

do.end201:                                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end207

if.end207:                                        ; preds = %do.end201, %if.end170.if.end207_crit_edge
  %23 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 803584, ptr %24, align 4
  %sy = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 5
  %26 = ptrtoint ptr %sy to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sy, align 4
  %shl = shl i32 %27, 16
  %sx = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 4
  %28 = ptrtoint ptr %sx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sx, align 4
  %or = or i32 %shl, %29
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %seg.i, align 8
  %cmp233.not = icmp ult ptr %30, %32
  br i1 %cmp233.not, label %if.end207.if.end257_crit_edge, label %do.end251, !prof !37

if.end207.if.end257_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end257

do.end251:                                        ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end257

if.end257:                                        ; preds = %do.end251, %if.end207.if.end257_crit_edge
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end.i, align 4
  %cmp271.not = icmp ult ptr %34, %36
  br i1 %cmp271.not, label %if.end257.if.end295_crit_edge, label %do.end289, !prof !37

if.end257.if.end295_crit_edge:                    ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end295

do.end289:                                        ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end295

if.end295:                                        ; preds = %do.end289, %if.end257.if.end295_crit_edge
  %37 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cur.i, align 4
  %incdec.ptr320 = getelementptr i32, ptr %38, i32 1
  store ptr %incdec.ptr320, ptr %cur.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or, ptr %38, align 4
  %dy = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 1
  %40 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dy, align 4
  %shl328 = shl i32 %41, 16
  %42 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %region, align 4
  %or329 = or i32 %shl328, %43
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %seg.i, align 8
  %cmp334.not = icmp ult ptr %44, %46
  br i1 %cmp334.not, label %if.end295.if.end358_crit_edge, label %do.end352, !prof !37

if.end295.if.end358_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end358

do.end352:                                        ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end358

if.end358:                                        ; preds = %do.end352, %if.end295.if.end358_crit_edge
  %47 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cur.i, align 4
  %49 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %end.i, align 4
  %cmp372.not = icmp ult ptr %48, %50
  br i1 %cmp372.not, label %if.end358.if.end396_crit_edge, label %do.end390, !prof !37

if.end358.if.end396_crit_edge:                    ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end396

do.end390:                                        ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end396

if.end396:                                        ; preds = %do.end390, %if.end358.if.end396_crit_edge
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %incdec.ptr421 = getelementptr i32, ptr %52, i32 1
  store ptr %incdec.ptr421, ptr %cur.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or329, ptr %52, align 4
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 3
  %54 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height, align 4
  %shl429 = shl i32 %55, 16
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 2
  %56 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %width, align 4
  %or430 = or i32 %shl429, %57
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %seg.i, align 8
  %cmp435.not = icmp ult ptr %58, %60
  br i1 %cmp435.not, label %if.end396.if.end459_crit_edge, label %do.end453, !prof !37

if.end396.if.end459_crit_edge:                    ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end459

do.end453:                                        ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end459

if.end459:                                        ; preds = %do.end453, %if.end396.if.end459_crit_edge
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %63 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %end.i, align 4
  %cmp473.not = icmp ult ptr %62, %64
  br i1 %cmp473.not, label %if.end459.if.end497_crit_edge, label %do.end491, !prof !37

if.end459.if.end497_crit_edge:                    ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end497

do.end491:                                        ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end497

if.end497:                                        ; preds = %do.end491, %if.end459.if.end497_crit_edge
  %65 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cur.i, align 4
  %incdec.ptr522 = getelementptr i32, ptr %66, i32 1
  store ptr %incdec.ptr522, ptr %cur.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or430, ptr %66, align 4
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 1
  %68 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %kick.i, align 4
  tail call void %69(ptr noundef %9) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end497, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end497 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_fbcon_fillrect(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %rect) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %dev = getelementptr inbounds %struct.drm_fb_helper, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %channel = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channel, align 4
  %push2 = getelementptr inbounds %struct.anon.97, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %11, i32 7
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %13
  br i1 %cmp.not.i, label %entry.if.end74_crit_edge, label %if.then.i

entry.if.end74_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end74

if.then.i:                                        ; preds = %entry
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 8
  %call.i = tail call i32 %15(ptr noundef %9, i32 noundef 7) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end74_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i.if.end74_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end74

if.end74:                                         ; preds = %if.then.i.if.end74_crit_edge, %entry.if.end74_crit_edge
  %16 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %17, i32 7
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 5
  %18 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %17, %add.ptr4.i
  br i1 %cmp.not, label %if.end74.if.end110_crit_edge, label %do.end104, !prof !37

if.end74.if.end110_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end110

do.end104:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end110

if.end110:                                        ; preds = %do.end104, %if.end74.if.end110_crit_edge
  %19 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cur.i, align 4
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i, align 4
  %cmp123.not = icmp ult ptr %20, %22
  br i1 %cmp123.not, label %if.end110.if.end147_crit_edge, label %do.end141, !prof !37

if.end110.if.end147_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end147

do.end141:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end147

if.end147:                                        ; preds = %do.end141, %if.end110.if.end147_crit_edge
  %23 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 287484, ptr %24, align 4
  %rop = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 5
  %26 = ptrtoint ptr %rop to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp169.not = icmp eq i32 %27, 0
  %cond = select i1 %cmp169.not, i32 3, i32 1
  %28 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur.i, align 4
  %30 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %seg.i, align 8
  %cmp174.not = icmp ult ptr %29, %31
  br i1 %cmp174.not, label %if.end147.if.end198_crit_edge, label %do.end192, !prof !37

if.end147.if.end198_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end198

do.end192:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end198

if.end198:                                        ; preds = %do.end192, %if.end147.if.end198_crit_edge
  %32 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cur.i, align 4
  %34 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i, align 4
  %cmp212.not = icmp ult ptr %33, %35
  br i1 %cmp212.not, label %if.end198.if.end236_crit_edge, label %do.end230, !prof !37

if.end198.if.end236_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end236

do.end230:                                        ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end236

if.end236:                                        ; preds = %do.end230, %if.end198.if.end236_crit_edge
  %36 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cur.i, align 4
  %incdec.ptr261 = getelementptr i32, ptr %37, i32 1
  store ptr %incdec.ptr261, ptr %cur.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond, ptr %37, align 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %39 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %visual, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %40, label %if.end637 [
    i32 2, label %if.end236.if.end350_crit_edge
    i32 4, label %if.end236.if.end350_crit_edge1377
  ]

if.end236.if.end350_crit_edge1377:                ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end350

if.end236.if.end350_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end350

if.end350:                                        ; preds = %if.end236.if.end350_crit_edge, %if.end236.if.end350_crit_edge1377
  %42 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cur.i, align 4
  %44 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %seg.i, align 8
  %cmp367.not = icmp ult ptr %43, %45
  br i1 %cmp367.not, label %if.end350.if.end391_crit_edge, label %do.end385, !prof !37

if.end350.if.end391_crit_edge:                    ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end391

do.end385:                                        ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end391

if.end391:                                        ; preds = %do.end385, %if.end350.if.end391_crit_edge
  %46 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur.i, align 4
  %48 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %end.i, align 4
  %cmp405.not = icmp ult ptr %47, %49
  br i1 %cmp405.not, label %if.end391.if.end429_crit_edge, label %do.end423, !prof !37

if.end391.if.end429_crit_edge:                    ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end429

do.end423:                                        ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end429

if.end429:                                        ; preds = %do.end423, %if.end391.if.end429_crit_edge
  %50 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cur.i, align 4
  %incdec.ptr454 = getelementptr i32, ptr %51, i32 1
  store ptr %incdec.ptr454, ptr %cur.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 287740, ptr %51, align 4
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %53 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pseudo_palette, align 4
  %color = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %55 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %color, align 4
  %arrayidx = getelementptr i32, ptr %54, i32 %56
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx, align 4
  %59 = load ptr, ptr %cur.i, align 4
  %60 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %seg.i, align 8
  %cmp466.not = icmp ult ptr %59, %61
  br i1 %cmp466.not, label %if.end429.if.end490_crit_edge, label %do.end484, !prof !37

if.end429.if.end490_crit_edge:                    ; preds = %if.end429
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end490

do.end484:                                        ; preds = %if.end429
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end490

if.end490:                                        ; preds = %do.end484, %if.end429.if.end490_crit_edge
  %62 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cur.i, align 4
  %64 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %end.i, align 4
  %cmp504.not = icmp ult ptr %63, %65
  br i1 %cmp504.not, label %if.end490.if.end528_crit_edge, label %do.end522, !prof !37

if.end490.if.end528_crit_edge:                    ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end528

do.end522:                                        ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end528

if.end528:                                        ; preds = %do.end522, %if.end490.if.end528_crit_edge
  %66 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cur.i, align 4
  %incdec.ptr553 = getelementptr i32, ptr %67, i32 1
  store ptr %incdec.ptr553, ptr %cur.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %58, ptr %67, align 4
  br label %if.end956

if.end637:                                        ; preds = %if.end236
  %69 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cur.i, align 4
  %71 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %seg.i, align 8
  %cmp654.not = icmp ult ptr %70, %72
  br i1 %cmp654.not, label %if.end637.if.end678_crit_edge, label %do.end672, !prof !37

if.end637.if.end678_crit_edge:                    ; preds = %if.end637
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end678

do.end672:                                        ; preds = %if.end637
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end678

if.end678:                                        ; preds = %do.end672, %if.end637.if.end678_crit_edge
  %73 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cur.i, align 4
  %75 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %end.i, align 4
  %cmp692.not = icmp ult ptr %74, %76
  br i1 %cmp692.not, label %if.end678.if.end716_crit_edge, label %do.end710, !prof !37

if.end678.if.end716_crit_edge:                    ; preds = %if.end678
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end716

do.end710:                                        ; preds = %if.end678
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end716

if.end716:                                        ; preds = %do.end710, %if.end678.if.end716_crit_edge
  %77 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cur.i, align 4
  %incdec.ptr741 = getelementptr i32, ptr %78, i32 1
  store ptr %incdec.ptr741, ptr %cur.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 287740, ptr %78, align 4
  %color749 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %80 = ptrtoint ptr %color749 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %color749, align 4
  %82 = load ptr, ptr %cur.i, align 4
  %83 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %seg.i, align 8
  %cmp754.not = icmp ult ptr %82, %84
  br i1 %cmp754.not, label %if.end716.if.end778_crit_edge, label %do.end772, !prof !37

if.end716.if.end778_crit_edge:                    ; preds = %if.end716
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end778

do.end772:                                        ; preds = %if.end716
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end778

if.end778:                                        ; preds = %do.end772, %if.end716.if.end778_crit_edge
  %85 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cur.i, align 4
  %87 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %end.i, align 4
  %cmp792.not = icmp ult ptr %86, %88
  br i1 %cmp792.not, label %if.end778.if.end816_crit_edge, label %do.end810, !prof !37

if.end778.if.end816_crit_edge:                    ; preds = %if.end778
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end816

do.end810:                                        ; preds = %if.end778
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end816

if.end816:                                        ; preds = %do.end810, %if.end778.if.end816_crit_edge
  %89 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cur.i, align 4
  %incdec.ptr841 = getelementptr i32, ptr %90, i32 1
  store ptr %incdec.ptr841, ptr %cur.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %81, ptr %90, align 4
  br label %if.end956

if.end956:                                        ; preds = %if.end816, %if.end528
  %92 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cur.i, align 4
  %94 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %seg.i, align 8
  %cmp973.not = icmp ult ptr %93, %95
  br i1 %cmp973.not, label %if.end956.if.end997_crit_edge, label %do.end991, !prof !37

if.end956.if.end997_crit_edge:                    ; preds = %if.end956
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end997

do.end991:                                        ; preds = %if.end956
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end997

if.end997:                                        ; preds = %do.end991, %if.end956.if.end997_crit_edge
  %96 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cur.i, align 4
  %98 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %end.i, align 4
  %cmp1011.not = icmp ult ptr %97, %99
  br i1 %cmp1011.not, label %if.end997.if.end1035_crit_edge, label %do.end1029, !prof !37

if.end997.if.end1035_crit_edge:                   ; preds = %if.end997
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1035

do.end1029:                                       ; preds = %if.end997
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end1035

if.end1035:                                       ; preds = %do.end1029, %if.end997.if.end1035_crit_edge
  %100 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1060 = getelementptr i32, ptr %101, i32 1
  store ptr %incdec.ptr1060, ptr %cur.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 549888, ptr %101, align 4
  %103 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rect, align 4
  %shl = shl i32 %104, 16
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %105 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dy, align 4
  %or = or i32 %shl, %106
  %107 = load ptr, ptr %cur.i, align 4
  %108 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %seg.i, align 8
  %cmp1072.not = icmp ult ptr %107, %109
  br i1 %cmp1072.not, label %if.end1035.if.end1096_crit_edge, label %do.end1090, !prof !37

if.end1035.if.end1096_crit_edge:                  ; preds = %if.end1035
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1096

do.end1090:                                       ; preds = %if.end1035
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1096

if.end1096:                                       ; preds = %do.end1090, %if.end1035.if.end1096_crit_edge
  %110 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cur.i, align 4
  %112 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %end.i, align 4
  %cmp1110.not = icmp ult ptr %111, %113
  br i1 %cmp1110.not, label %if.end1096.if.end1134_crit_edge, label %do.end1128, !prof !37

if.end1096.if.end1134_crit_edge:                  ; preds = %if.end1096
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1134

do.end1128:                                       ; preds = %if.end1096
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end1134

if.end1134:                                       ; preds = %do.end1128, %if.end1096.if.end1134_crit_edge
  %114 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1159 = getelementptr i32, ptr %115, i32 1
  store ptr %incdec.ptr1159, ptr %cur.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %or, ptr %115, align 4
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %117 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %width, align 4
  %shl1167 = shl i32 %118, 16
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %119 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %height, align 4
  %or1168 = or i32 %shl1167, %120
  %121 = load ptr, ptr %cur.i, align 4
  %122 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %seg.i, align 8
  %cmp1173.not = icmp ult ptr %121, %123
  br i1 %cmp1173.not, label %if.end1134.if.end1197_crit_edge, label %do.end1191, !prof !37

if.end1134.if.end1197_crit_edge:                  ; preds = %if.end1134
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1197

do.end1191:                                       ; preds = %if.end1134
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1197

if.end1197:                                       ; preds = %do.end1191, %if.end1134.if.end1197_crit_edge
  %124 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cur.i, align 4
  %126 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %end.i, align 4
  %cmp1211.not = icmp ult ptr %125, %127
  br i1 %cmp1211.not, label %if.end1197.if.end1235_crit_edge, label %do.end1229, !prof !37

if.end1197.if.end1235_crit_edge:                  ; preds = %if.end1197
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1235

do.end1229:                                       ; preds = %if.end1197
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end1235

if.end1235:                                       ; preds = %do.end1229, %if.end1197.if.end1235_crit_edge
  %128 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1260 = getelementptr i32, ptr %129, i32 1
  store ptr %incdec.ptr1260, ptr %cur.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or1168, ptr %129, align 4
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 1
  %131 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %kick.i, align 4
  tail call void %132(ptr noundef %9) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end1235, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1235 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_fbcon_imageblit(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %image) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %dev = getelementptr inbounds %struct.drm_fb_helper, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %channel = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channel, align 4
  %push2 = getelementptr inbounds %struct.anon.97, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %push2, align 8
  %data3 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %10 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data3, align 4
  %depth = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %12 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp.not = icmp eq i8 %13, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup1531_crit_edge

entry.cleanup1531_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup1531

if.end:                                           ; preds = %entry
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %15, i32 8
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 6
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %17
  br i1 %cmp.not.i, label %if.end.if.end7_crit_edge, label %if.then.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then.i:                                        ; preds = %if.end
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %9, align 8
  %call.i = tail call i32 %19(ptr noundef %9, i32 noundef 8) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end7_crit_edge, label %if.then.i.cleanup1531_crit_edge

if.then.i.cleanup1531_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup1531

if.then.i.if.end7_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.end7:                                          ; preds = %if.then.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %21, i32 8
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %23 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %visual, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %24, label %if.else [
    i32 2, label %if.end7.if.then14_crit_edge
    i32 4, label %if.end7.if.then14_crit_edge1722
  ]

if.end7.if.then14_crit_edge1722:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then14

if.end7.if.then14_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then14

if.then14:                                        ; preds = %if.end7.if.then14_crit_edge, %if.end7.if.then14_crit_edge1722
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %26 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pseudo_palette, align 4
  %fg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %28 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fg_color, align 4
  %arrayidx = getelementptr i32, ptr %27, i32 %29
  %bg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %30 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bg_color, align 4
  %arrayidx16 = getelementptr i32, ptr %27, i32 %31
  br label %do.body20

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %fg_color17 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %bg_color18 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  br label %do.body20

do.body20:                                        ; preds = %if.else, %if.then14
  %bg.0.in = phi ptr [ %arrayidx16, %if.then14 ], [ %bg_color18, %if.else ]
  %fg.0.in = phi ptr [ %arrayidx, %if.then14 ], [ %fg_color17, %if.else ]
  %32 = ptrtoint ptr %fg.0.in to i32
  call void @__asan_load4_noabort(i32 %32)
  %fg.0 = load i32, ptr %fg.0.in, align 4
  %33 = ptrtoint ptr %bg.0.in to i32
  call void @__asan_load4_noabort(i32 %33)
  %bg.0 = load i32, ptr %bg.0.in, align 4
  %34 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cur.i, align 4
  %36 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %seg.i, align 8
  %cmp283.not = icmp ult ptr %35, %37
  br i1 %cmp283.not, label %do.body20.if.end308_crit_edge, label %do.end302, !prof !37

do.body20.if.end308_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end308

do.end302:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end308

if.end308:                                        ; preds = %do.end302, %do.body20.if.end308_crit_edge
  %38 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cur.i, align 4
  %40 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %end.i, align 4
  %cmp321.not = icmp ult ptr %39, %41
  br i1 %cmp321.not, label %if.end308.if.end346_crit_edge, label %do.end340, !prof !37

if.end308.if.end346_crit_edge:                    ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end346

do.end340:                                        ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end346

if.end346:                                        ; preds = %do.end340, %if.end308.if.end346_crit_edge
  %42 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %43, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1862628, ptr %43, align 4
  %dy = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %45 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dy, align 4
  %shl = shl i32 %46, 16
  %47 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %image, align 4
  %and = and i32 %48, 65535
  %or = or i32 %and, %shl
  %49 = load ptr, ptr %cur.i, align 4
  %50 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %seg.i, align 8
  %cmp372.not = icmp ult ptr %49, %51
  br i1 %cmp372.not, label %if.end346.if.end397_crit_edge, label %do.end391, !prof !37

if.end346.if.end397_crit_edge:                    ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end397

do.end391:                                        ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end397

if.end397:                                        ; preds = %do.end391, %if.end346.if.end397_crit_edge
  %52 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cur.i, align 4
  %54 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %end.i, align 4
  %cmp411.not = icmp ult ptr %53, %55
  br i1 %cmp411.not, label %if.end397.if.end436_crit_edge, label %do.end430, !prof !37

if.end397.if.end436_crit_edge:                    ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end436

do.end430:                                        ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end436

if.end436:                                        ; preds = %do.end430, %if.end397.if.end436_crit_edge
  %56 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cur.i, align 4
  %incdec.ptr461 = getelementptr i32, ptr %57, i32 1
  store ptr %incdec.ptr461, ptr %cur.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or, ptr %57, align 4
  %59 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dy, align 4
  %height = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %61 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %height, align 4
  %add = add i32 %62, %60
  %shl470 = shl i32 %add, 16
  %63 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %image, align 4
  %width = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %65 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %width, align 4
  %add472 = add i32 %66, %64
  %and473 = and i32 %add472, 65535
  %or474 = or i32 %and473, %shl470
  %67 = load ptr, ptr %cur.i, align 4
  %68 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %seg.i, align 8
  %cmp479.not = icmp ult ptr %67, %69
  br i1 %cmp479.not, label %if.end436.if.end504_crit_edge, label %do.end498, !prof !37

if.end436.if.end504_crit_edge:                    ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end504

do.end498:                                        ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end504

if.end504:                                        ; preds = %do.end498, %if.end436.if.end504_crit_edge
  %70 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cur.i, align 4
  %72 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %end.i, align 4
  %cmp518.not = icmp ult ptr %71, %73
  br i1 %cmp518.not, label %if.end504.if.end543_crit_edge, label %do.end537, !prof !37

if.end504.if.end543_crit_edge:                    ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end543

do.end537:                                        ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end543

if.end543:                                        ; preds = %do.end537, %if.end504.if.end543_crit_edge
  %74 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cur.i, align 4
  %incdec.ptr568 = getelementptr i32, ptr %75, i32 1
  store ptr %incdec.ptr568, ptr %cur.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or474, ptr %75, align 4
  %77 = load ptr, ptr %cur.i, align 4
  %78 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %seg.i, align 8
  %cmp580.not = icmp ult ptr %77, %79
  br i1 %cmp580.not, label %if.end543.if.end605_crit_edge, label %do.end599, !prof !37

if.end543.if.end605_crit_edge:                    ; preds = %if.end543
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end605

do.end599:                                        ; preds = %if.end543
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end605

if.end605:                                        ; preds = %do.end599, %if.end543.if.end605_crit_edge
  %80 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cur.i, align 4
  %82 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %end.i, align 4
  %cmp619.not = icmp ult ptr %81, %83
  br i1 %cmp619.not, label %if.end605.if.end644_crit_edge, label %do.end638, !prof !37

if.end605.if.end644_crit_edge:                    ; preds = %if.end605
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end644

do.end638:                                        ; preds = %if.end605
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end644

if.end644:                                        ; preds = %do.end638, %if.end605.if.end644_crit_edge
  %84 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cur.i, align 4
  %incdec.ptr669 = getelementptr i32, ptr %85, i32 1
  store ptr %incdec.ptr669, ptr %cur.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %bg.0, ptr %85, align 4
  %87 = load ptr, ptr %cur.i, align 4
  %88 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %seg.i, align 8
  %cmp681.not = icmp ult ptr %87, %89
  br i1 %cmp681.not, label %if.end644.if.end706_crit_edge, label %do.end700, !prof !37

if.end644.if.end706_crit_edge:                    ; preds = %if.end644
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end706

do.end700:                                        ; preds = %if.end644
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end706

if.end706:                                        ; preds = %do.end700, %if.end644.if.end706_crit_edge
  %90 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cur.i, align 4
  %92 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %end.i, align 4
  %cmp720.not = icmp ult ptr %91, %93
  br i1 %cmp720.not, label %if.end706.if.end745_crit_edge, label %do.end739, !prof !37

if.end706.if.end745_crit_edge:                    ; preds = %if.end706
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end745

do.end739:                                        ; preds = %if.end706
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end745

if.end745:                                        ; preds = %do.end739, %if.end706.if.end745_crit_edge
  %94 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cur.i, align 4
  %incdec.ptr770 = getelementptr i32, ptr %95, i32 1
  store ptr %incdec.ptr770, ptr %cur.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %fg.0, ptr %95, align 4
  %97 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %height, align 4
  %shl779 = shl i32 %98, 16
  %99 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %width, align 4
  %add781 = add i32 %100, 7
  %and782 = and i32 %add781, -8
  %or783 = or i32 %and782, %shl779
  %101 = load ptr, ptr %cur.i, align 4
  %102 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %seg.i, align 8
  %cmp788.not = icmp ult ptr %101, %103
  br i1 %cmp788.not, label %if.end745.if.end813_crit_edge, label %do.end807, !prof !37

if.end745.if.end813_crit_edge:                    ; preds = %if.end745
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end813

do.end807:                                        ; preds = %if.end745
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end813

if.end813:                                        ; preds = %do.end807, %if.end745.if.end813_crit_edge
  %104 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cur.i, align 4
  %106 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %end.i, align 4
  %cmp827.not = icmp ult ptr %105, %107
  br i1 %cmp827.not, label %if.end813.if.end852_crit_edge, label %do.end846, !prof !37

if.end813.if.end852_crit_edge:                    ; preds = %if.end813
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end852

do.end846:                                        ; preds = %if.end813
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end852

if.end852:                                        ; preds = %do.end846, %if.end813.if.end852_crit_edge
  %108 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cur.i, align 4
  %incdec.ptr877 = getelementptr i32, ptr %109, i32 1
  store ptr %incdec.ptr877, ptr %cur.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %or783, ptr %109, align 4
  %111 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %height, align 4
  %shl886 = shl i32 %112, 16
  %113 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %width, align 4
  %or888 = or i32 %shl886, %114
  %115 = load ptr, ptr %cur.i, align 4
  %116 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %seg.i, align 8
  %cmp893.not = icmp ult ptr %115, %117
  br i1 %cmp893.not, label %if.end852.if.end918_crit_edge, label %do.end912, !prof !37

if.end852.if.end918_crit_edge:                    ; preds = %if.end852
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end918

do.end912:                                        ; preds = %if.end852
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end918

if.end918:                                        ; preds = %do.end912, %if.end852.if.end918_crit_edge
  %118 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cur.i, align 4
  %120 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %end.i, align 4
  %cmp932.not = icmp ult ptr %119, %121
  br i1 %cmp932.not, label %if.end918.if.end957_crit_edge, label %do.end951, !prof !37

if.end918.if.end957_crit_edge:                    ; preds = %if.end918
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end957

do.end951:                                        ; preds = %if.end918
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end957

if.end957:                                        ; preds = %do.end951, %if.end918.if.end957_crit_edge
  %122 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur.i, align 4
  %incdec.ptr982 = getelementptr i32, ptr %123, i32 1
  store ptr %incdec.ptr982, ptr %cur.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or888, ptr %123, align 4
  %125 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dy, align 4
  %shl991 = shl i32 %126, 16
  %127 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %image, align 4
  %and993 = and i32 %128, 65535
  %or994 = or i32 %and993, %shl991
  %129 = load ptr, ptr %cur.i, align 4
  %130 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %seg.i, align 8
  %cmp999.not = icmp ult ptr %129, %131
  br i1 %cmp999.not, label %if.end957.if.end1024_crit_edge, label %do.end1018, !prof !37

if.end957.if.end1024_crit_edge:                   ; preds = %if.end957
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1024

do.end1018:                                       ; preds = %if.end957
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1024

if.end1024:                                       ; preds = %do.end1018, %if.end957.if.end1024_crit_edge
  %132 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cur.i, align 4
  %134 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %end.i, align 4
  %cmp1038.not = icmp ult ptr %133, %135
  br i1 %cmp1038.not, label %if.end1024.if.end1063_crit_edge, label %do.end1057, !prof !37

if.end1024.if.end1063_crit_edge:                  ; preds = %if.end1024
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1063

do.end1057:                                       ; preds = %if.end1024
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end1063

if.end1063:                                       ; preds = %do.end1057, %if.end1024.if.end1063_crit_edge
  %136 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1088 = getelementptr i32, ptr %137, i32 1
  store ptr %incdec.ptr1088, ptr %cur.i, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %or994, ptr %137, align 4
  %139 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %width, align 4
  %add1094 = add i32 %140, 7
  %and1095 = and i32 %add1094, -8
  %141 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %height, align 4
  %mul = mul i32 %and1095, %142
  %add1097 = add i32 %mul, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add1097)
  %tobool1099.not1719 = icmp ult i32 %add1097, 32
  br i1 %tobool1099.not1719, label %if.end1063.while.end1529_crit_edge, label %while.body.preheader

if.end1063.while.end1529_crit_edge:               ; preds = %if.end1063
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end1529

while.body.preheader:                             ; preds = %if.end1063
  %shr = lshr i32 %add1097, 5
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %dsize.01721 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %shr, %while.body.preheader ]
  %data.01720 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %11, %while.body.preheader ]
  %143 = tail call i32 @llvm.umin.i32(i32 %dsize.01721, i32 128)
  %add1102 = add nuw nsw i32 %143, 1
  %144 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cur.i, align 4
  %add.ptr.i1693 = getelementptr i32, ptr %145, i32 %add1102
  %146 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %end.i, align 4
  %cmp.not.i1695 = icmp ult ptr %add.ptr.i1693, %147
  br i1 %cmp.not.i1695, label %while.body.if.end1198_crit_edge, label %if.then.i1698

while.body.if.end1198_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1198

if.then.i1698:                                    ; preds = %while.body
  %148 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %9, align 8
  %call.i1696 = tail call i32 %149(ptr noundef %9, i32 noundef %add1102) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1696)
  %tobool.not.i1697 = icmp eq i32 %call.i1696, 0
  br i1 %tobool.not.i1697, label %if.then.i1698.if.end1198_crit_edge, label %if.then.i1698.cleanup1531_crit_edge

if.then.i1698.cleanup1531_crit_edge:              ; preds = %if.then.i1698
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup1531

if.then.i1698.if.end1198_crit_edge:               ; preds = %if.then.i1698
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1198

if.end1198:                                       ; preds = %if.then.i1698.if.end1198_crit_edge, %while.body.if.end1198_crit_edge
  %150 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i1699 = getelementptr i32, ptr %151, i32 %add1102
  %152 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %add.ptr4.i1699, ptr %seg.i, align 8
  %153 = shl nuw nsw i32 %143, 18
  %154 = or i32 %153, 27648
  %cmp1222.not = icmp ult ptr %151, %add.ptr4.i1699
  br i1 %cmp1222.not, label %if.end1198.if.end1247_crit_edge, label %do.end1241, !prof !37

if.end1198.if.end1247_crit_edge:                  ; preds = %if.end1198
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1247

do.end1241:                                       ; preds = %if.end1198
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1247

if.end1247:                                       ; preds = %do.end1241, %if.end1198.if.end1247_crit_edge
  %155 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %cur.i, align 4
  %157 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %end.i, align 4
  %cmp1261.not = icmp ult ptr %156, %158
  br i1 %cmp1261.not, label %if.end1247.if.end1286_crit_edge, label %do.end1280, !prof !37

if.end1247.if.end1286_crit_edge:                  ; preds = %if.end1247
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1286

do.end1280:                                       ; preds = %if.end1247
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end1286

if.end1286:                                       ; preds = %do.end1280, %if.end1247.if.end1286_crit_edge
  %159 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1311 = getelementptr i32, ptr %160, i32 1
  store ptr %incdec.ptr1311, ptr %cur.i, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %154, ptr %160, align 4
  %162 = ptrtoint ptr %data.01720 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %data.01720, align 4
  %164 = load ptr, ptr %cur.i, align 4
  %165 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %seg.i, align 8
  %cmp1327.not = icmp ult ptr %164, %166
  br i1 %cmp1327.not, label %if.end1286.if.end1352_crit_edge, label %do.end1346, !prof !37

if.end1286.if.end1352_crit_edge:                  ; preds = %if.end1286
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1352

do.end1346:                                       ; preds = %if.end1286
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1352

if.end1352:                                       ; preds = %do.end1346, %if.end1286.if.end1352_crit_edge
  %167 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %cur.i, align 4
  %169 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %end.i, align 4
  %cmp1366.not = icmp ult ptr %168, %170
  br i1 %cmp1366.not, label %if.end1352.if.end1391_crit_edge, label %do.end1385, !prof !37

if.end1352.if.end1391_crit_edge:                  ; preds = %if.end1352
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1391

do.end1385:                                       ; preds = %if.end1352
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end1391

if.end1391:                                       ; preds = %do.end1385, %if.end1352.if.end1391_crit_edge
  %171 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1416 = getelementptr i32, ptr %172, i32 1
  store ptr %incdec.ptr1416, ptr %cur.i, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %163, ptr %172, align 4
  %_s.01714 = add nsw i32 %143, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_s.01714)
  %tobool1421.not1716 = icmp eq i32 %_s.01714, 0
  br i1 %tobool1421.not1716, label %if.end1391.cleanup_crit_edge, label %if.end1391.do.body1423_crit_edge

if.end1391.do.body1423_crit_edge:                 ; preds = %if.end1391
  br label %do.body1423

if.end1391.cleanup_crit_edge:                     ; preds = %if.end1391
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body1423:                                      ; preds = %if.end1495.do.body1423_crit_edge, %if.end1391.do.body1423_crit_edge
  %_dd.01718.pn = phi ptr [ %_dd.01718, %if.end1495.do.body1423_crit_edge ], [ %data.01720, %if.end1391.do.body1423_crit_edge ]
  %_s.01717 = phi i32 [ %_s.0, %if.end1495.do.body1423_crit_edge ], [ %_s.01714, %if.end1391.do.body1423_crit_edge ]
  %_dd.01718 = getelementptr i32, ptr %_dd.01718.pn, i32 1
  %174 = ptrtoint ptr %_dd.01718 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %_dd.01718, align 4
  %176 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %cur.i, align 4
  %178 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %seg.i, align 8
  %cmp1431.not = icmp ult ptr %177, %179
  br i1 %cmp1431.not, label %do.body1423.if.end1456_crit_edge, label %do.end1450, !prof !37

do.body1423.if.end1456_crit_edge:                 ; preds = %do.body1423
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1456

do.end1450:                                       ; preds = %do.body1423
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1456

if.end1456:                                       ; preds = %do.end1450, %do.body1423.if.end1456_crit_edge
  %180 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %cur.i, align 4
  %182 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %end.i, align 4
  %cmp1470.not = icmp ult ptr %181, %183
  br i1 %cmp1470.not, label %if.end1456.if.end1495_crit_edge, label %do.end1489, !prof !37

if.end1456.if.end1495_crit_edge:                  ; preds = %if.end1456
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1495

do.end1489:                                       ; preds = %if.end1456
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end1495

if.end1495:                                       ; preds = %do.end1489, %if.end1456.if.end1495_crit_edge
  %184 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1520 = getelementptr i32, ptr %185, i32 1
  store ptr %incdec.ptr1520, ptr %cur.i, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %175, ptr %185, align 4
  %_s.0 = add i32 %_s.01717, -1
  %tobool1421.not = icmp eq i32 %_s.0, 0
  br i1 %tobool1421.not, label %if.end1495.cleanup_crit_edge, label %if.end1495.do.body1423_crit_edge

if.end1495.do.body1423_crit_edge:                 ; preds = %if.end1495
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body1423

if.end1495.cleanup_crit_edge:                     ; preds = %if.end1495
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %if.end1495.cleanup_crit_edge, %if.end1391.cleanup_crit_edge
  %add.ptr = getelementptr i32, ptr %data.01720, i32 %143
  %sub = sub i32 %dsize.01721, %143
  %tobool1099.not = icmp eq i32 %sub, 0
  br i1 %tobool1099.not, label %cleanup.while.end1529_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

cleanup.while.end1529_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end1529

while.end1529:                                    ; preds = %cleanup.while.end1529_crit_edge, %if.end1063.while.end1529_crit_edge
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 1
  %187 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %kick.i, align 4
  tail call void %188(ptr noundef %9) #3
  br label %cleanup1531

cleanup1531:                                      ; preds = %while.end1529, %if.then.i1698.cleanup1531_crit_edge, %if.then.i.cleanup1531_crit_edge, %entry.cleanup1531_crit_edge
  %retval.2 = phi i32 [ 0, %while.end1529 ], [ -19, %entry.cleanup1531_crit_edge ], [ %call.i, %if.then.i.cleanup1531_crit_edge ], [ %call.i1696, %if.then.i1698.cleanup1531_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_fbcon_accel_init(ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %dev1 = getelementptr inbounds %struct.drm_fb_helper, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %channel = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channel, align 4
  %push4 = getelementptr inbounds %struct.anon.97, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %push4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %push4, align 8
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %10 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits_per_pixel, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %11, label %entry.cleanup_crit_edge [
    i32 8, label %entry.sw.epilog10_crit_edge
    i32 16, label %sw.bb5
    i32 32, label %sw.bb6
  ]

entry.sw.epilog10_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog10

sw.bb6:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %14, label %sw.bb6.cleanup_crit_edge [
    i32 0, label %sw.bb6.sw.epilog10_crit_edge
    i32 8, label %sw.bb6.sw.epilog10_crit_edge8174
  ]

sw.bb6.sw.epilog10_crit_edge8174:                 ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog10

sw.bb6.sw.epilog10_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog10

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.epilog10:                                      ; preds = %sw.bb6.sw.epilog10_crit_edge, %sw.bb6.sw.epilog10_crit_edge8174, %sw.bb5, %entry.sw.epilog10_crit_edge
  %pattern_fmt.0 = phi i32 [ 1, %sw.bb5 ], [ 3, %entry.sw.epilog10_crit_edge ], [ 3, %sw.bb6.sw.epilog10_crit_edge ], [ 3, %sw.bb6.sw.epilog10_crit_edge8174 ]
  %surface_fmt.0 = phi i32 [ 4, %sw.bb5 ], [ 1, %entry.sw.epilog10_crit_edge ], [ 6, %sw.bb6.sw.epilog10_crit_edge ], [ 6, %sw.bb6.sw.epilog10_crit_edge8174 ]
  %user = getelementptr inbounds %struct.nouveau_channel, ptr %7, i32 0, i32 17
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 4
  %16 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp = icmp ugt i8 %17, 1
  %cond = select i1 %cmp, i32 98, i32 66
  %surf2d = getelementptr inbounds %struct.nouveau_fbdev, ptr %1, i32 0, i32 2
  %call13 = tail call i32 @nvif_object_ctor(ptr noundef %user, ptr noundef nonnull @.str.12, i32 noundef 98, i32 noundef %cond, ptr noundef null, i32 noundef 0, ptr noundef %surf2d) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog10.cleanup_crit_edge

sw.epilog10.cleanup_crit_edge:                    ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %sw.epilog10
  %clip = getelementptr inbounds %struct.nouveau_fbdev, ptr %1, i32 0, i32 3
  %call15 = tail call i32 @nvif_object_ctor(ptr noundef %user, ptr noundef nonnull @.str.13, i32 noundef 25, i32 noundef 25, ptr noundef null, i32 noundef 0, ptr noundef %clip) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %rop = getelementptr inbounds %struct.nouveau_fbdev, ptr %1, i32 0, i32 4
  %call20 = tail call i32 @nvif_object_ctor(ptr noundef %user, ptr noundef nonnull @.str.14, i32 noundef 67, i32 noundef 67, ptr noundef null, i32 noundef 0, ptr noundef %rop) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %patt = getelementptr inbounds %struct.nouveau_fbdev, ptr %1, i32 0, i32 5
  %call25 = tail call i32 @nvif_object_ctor(ptr noundef %user, ptr noundef nonnull @.str.15, i32 noundef 68, i32 noundef 68, ptr noundef null, i32 noundef 0, ptr noundef %patt) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %gdi = getelementptr inbounds %struct.nouveau_fbdev, ptr %1, i32 0, i32 6
  %call30 = tail call i32 @nvif_object_ctor(ptr noundef %user, ptr noundef nonnull @.str.16, i32 noundef 74, i32 noundef 74, ptr noundef null, i32 noundef 0, ptr noundef %gdi) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %chipset = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 2
  %18 = ptrtoint ptr %chipset to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %chipset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %19)
  %cmp37 = icmp ugt i16 %19, 16
  %cond39 = select i1 %cmp37, i32 159, i32 95
  %blit = getelementptr inbounds %struct.nouveau_fbdev, ptr %1, i32 0, i32 7
  %call40 = tail call i32 @nvif_object_ctor(ptr noundef %user, ptr noundef nonnull @.str.17, i32 noundef 95, i32 noundef %cond39, ptr noundef null, i32 noundef 0, ptr noundef %blit) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end43:                                         ; preds = %if.end33
  %20 = ptrtoint ptr %chipset to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %chipset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %21)
  %cmp47 = icmp ugt i16 %21, 16
  %add = select i1 %cmp47, i32 53, i32 49
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 4
  %22 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %23, i32 %add
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 6
  %24 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %25
  br i1 %cmp.not.i, label %if.end43.if.end124_crit_edge, label %if.then.i

if.end43.if.end124_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end124

if.then.i:                                        ; preds = %if.end43
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %9, align 8
  %call.i = tail call i32 %27(ptr noundef %9, i32 noundef %add) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end124_crit_edge, label %if.then52

if.then.i.if.end124_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end124

if.then52:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nouveau_fbcon_gpu_lockup(ptr noundef %info) #3
  br label %cleanup

if.end124:                                        ; preds = %if.then.i.if.end124_crit_edge, %if.end43.if.end124_crit_edge
  %28 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %29, i32 %add
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 5
  %30 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp137.not = icmp ult ptr %29, %add.ptr4.i
  br i1 %cmp137.not, label %if.end124.if.end162_crit_edge, label %do.end156, !prof !37

if.end124.if.end162_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end162

do.end156:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end162

if.end162:                                        ; preds = %do.end156, %if.end124.if.end162_crit_edge
  %31 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur.i, align 4
  %33 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i, align 4
  %cmp175.not = icmp ult ptr %32, %34
  br i1 %cmp175.not, label %if.end162.if.end200_crit_edge, label %do.end194, !prof !37

if.end162.if.end200_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end200

do.end194:                                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end200

if.end200:                                        ; preds = %do.end194, %if.end162.if.end200_crit_edge
  %35 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %36, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 262144, ptr %36, align 4
  %handle = getelementptr inbounds %struct.nouveau_fbdev, ptr %1, i32 0, i32 2, i32 3
  %38 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %handle, align 4
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %seg.i, align 8
  %cmp227.not = icmp ult ptr %40, %42
  br i1 %cmp227.not, label %if.end200.if.end252_crit_edge, label %do.end246, !prof !37

if.end200.if.end252_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end252

do.end246:                                        ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end252

if.end252:                                        ; preds = %do.end246, %if.end200.if.end252_crit_edge
  %43 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %end.i, align 4
  %cmp266.not = icmp ult ptr %44, %46
  br i1 %cmp266.not, label %if.end252.if.end291_crit_edge, label %do.end285, !prof !37

if.end252.if.end291_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end291

do.end285:                                        ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end291

if.end291:                                        ; preds = %do.end285, %if.end252.if.end291_crit_edge
  %47 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cur.i, align 4
  %incdec.ptr316 = getelementptr i32, ptr %48, i32 1
  store ptr %incdec.ptr316, ptr %cur.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %39, ptr %48, align 4
  %50 = load ptr, ptr %cur.i, align 4
  %51 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %seg.i, align 8
  %cmp447.not = icmp ult ptr %50, %52
  br i1 %cmp447.not, label %if.end291.if.end472_crit_edge, label %do.end466, !prof !37

if.end291.if.end472_crit_edge:                    ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end472

do.end466:                                        ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 210, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end472

if.end472:                                        ; preds = %do.end466, %if.end291.if.end472_crit_edge
  %53 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cur.i, align 4
  %55 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %end.i, align 4
  %cmp486.not = icmp ult ptr %54, %56
  br i1 %cmp486.not, label %if.end472.if.end511_crit_edge, label %do.end505, !prof !37

if.end472.if.end511_crit_edge:                    ; preds = %if.end472
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end511

do.end505:                                        ; preds = %if.end472
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 210, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end511

if.end511:                                        ; preds = %do.end505, %if.end472.if.end511_crit_edge
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %incdec.ptr536 = getelementptr i32, ptr %58, i32 1
  store ptr %incdec.ptr536, ptr %cur.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 524676, ptr %58, align 4
  %handle544 = getelementptr inbounds %struct.nouveau_channel, ptr %7, i32 0, i32 7, i32 3
  %60 = ptrtoint ptr %handle544 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %handle544, align 4
  %62 = load ptr, ptr %cur.i, align 4
  %63 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %seg.i, align 8
  %cmp549.not = icmp ult ptr %62, %64
  br i1 %cmp549.not, label %if.end511.if.end574_crit_edge, label %do.end568, !prof !37

if.end511.if.end574_crit_edge:                    ; preds = %if.end511
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end574

do.end568:                                        ; preds = %if.end511
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 210, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end574

if.end574:                                        ; preds = %do.end568, %if.end511.if.end574_crit_edge
  %65 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cur.i, align 4
  %67 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %end.i, align 4
  %cmp588.not = icmp ult ptr %66, %68
  br i1 %cmp588.not, label %if.end574.if.end613_crit_edge, label %do.end607, !prof !37

if.end574.if.end613_crit_edge:                    ; preds = %if.end574
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end613

do.end607:                                        ; preds = %if.end574
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 210, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end613

if.end613:                                        ; preds = %do.end607, %if.end574.if.end613_crit_edge
  %69 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cur.i, align 4
  %incdec.ptr638 = getelementptr i32, ptr %70, i32 1
  store ptr %incdec.ptr638, ptr %cur.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %61, ptr %70, align 4
  %72 = ptrtoint ptr %handle544 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %handle544, align 4
  %74 = load ptr, ptr %cur.i, align 4
  %75 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %seg.i, align 8
  %cmp652.not = icmp ult ptr %74, %76
  br i1 %cmp652.not, label %if.end613.if.end677_crit_edge, label %do.end671, !prof !37

if.end613.if.end677_crit_edge:                    ; preds = %if.end613
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end677

do.end671:                                        ; preds = %if.end613
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 210, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end677

if.end677:                                        ; preds = %do.end671, %if.end613.if.end677_crit_edge
  %77 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cur.i, align 4
  %79 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %end.i, align 4
  %cmp691.not = icmp ult ptr %78, %80
  br i1 %cmp691.not, label %if.end677.if.end716_crit_edge, label %do.end710, !prof !37

if.end677.if.end716_crit_edge:                    ; preds = %if.end677
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end716

do.end710:                                        ; preds = %if.end677
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 210, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end716

if.end716:                                        ; preds = %do.end710, %if.end677.if.end716_crit_edge
  %81 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cur.i, align 4
  %incdec.ptr741 = getelementptr i32, ptr %82, i32 1
  store ptr %incdec.ptr741, ptr %cur.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %73, ptr %82, align 4
  %84 = load ptr, ptr %cur.i, align 4
  %85 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %seg.i, align 8
  %cmp932.not = icmp ult ptr %84, %86
  br i1 %cmp932.not, label %if.end716.if.end957_crit_edge, label %do.end951, !prof !37

if.end716.if.end957_crit_edge:                    ; preds = %if.end716
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end957

do.end951:                                        ; preds = %if.end716
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end957

if.end957:                                        ; preds = %do.end951, %if.end716.if.end957_crit_edge
  %87 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cur.i, align 4
  %89 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %end.i, align 4
  %cmp971.not = icmp ult ptr %88, %90
  br i1 %cmp971.not, label %if.end957.if.end996_crit_edge, label %do.end990, !prof !37

if.end957.if.end996_crit_edge:                    ; preds = %if.end957
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end996

do.end990:                                        ; preds = %if.end957
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end996

if.end996:                                        ; preds = %do.end990, %if.end957.if.end996_crit_edge
  %91 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1021 = getelementptr i32, ptr %92, i32 1
  store ptr %incdec.ptr1021, ptr %cur.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1049344, ptr %92, align 4
  %94 = load ptr, ptr %cur.i, align 4
  %95 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %seg.i, align 8
  %cmp1033.not = icmp ult ptr %94, %96
  br i1 %cmp1033.not, label %if.end996.if.end1058_crit_edge, label %do.end1052, !prof !37

if.end996.if.end1058_crit_edge:                   ; preds = %if.end996
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1058

do.end1052:                                       ; preds = %if.end996
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1058

if.end1058:                                       ; preds = %do.end1052, %if.end996.if.end1058_crit_edge
  %97 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cur.i, align 4
  %99 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %end.i, align 4
  %cmp1072.not = icmp ult ptr %98, %100
  br i1 %cmp1072.not, label %if.end1058.if.end1097_crit_edge, label %do.end1091, !prof !37

if.end1058.if.end1097_crit_edge:                  ; preds = %if.end1058
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1097

do.end1091:                                       ; preds = %if.end1058
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end1097

if.end1097:                                       ; preds = %do.end1091, %if.end1058.if.end1097_crit_edge
  %101 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1122 = getelementptr i32, ptr %102, i32 1
  store ptr %incdec.ptr1122, ptr %cur.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %surface_fmt.0, ptr %102, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %104 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %line_length, align 4
  %shl = shl i32 %105, 16
  %or = or i32 %shl, %105
  %106 = load ptr, ptr %cur.i, align 4
  %107 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %seg.i, align 8
  %cmp1136.not = icmp ult ptr %106, %108
  br i1 %cmp1136.not, label %if.end1097.if.end1161_crit_edge, label %do.end1155, !prof !37

if.end1097.if.end1161_crit_edge:                  ; preds = %if.end1097
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1161

do.end1155:                                       ; preds = %if.end1097
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1161

if.end1161:                                       ; preds = %do.end1155, %if.end1097.if.end1161_crit_edge
  %109 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cur.i, align 4
  %111 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %end.i, align 4
  %cmp1175.not = icmp ult ptr %110, %112
  br i1 %cmp1175.not, label %if.end1161.if.end1200_crit_edge, label %do.end1194, !prof !37

if.end1161.if.end1200_crit_edge:                  ; preds = %if.end1161
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1200

do.end1194:                                       ; preds = %if.end1161
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end1200

if.end1200:                                       ; preds = %do.end1194, %if.end1161.if.end1200_crit_edge
  %113 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1225 = getelementptr i32, ptr %114, i32 1
  store ptr %incdec.ptr1225, ptr %cur.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %or, ptr %114, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %116 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %smem_start, align 4
  %fb_base = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 28
  %118 = ptrtoint ptr %fb_base to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %fb_base, align 4
  %sub = sub i32 %117, %119
  %120 = load ptr, ptr %cur.i, align 4
  %121 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %seg.i, align 8
  %cmp1238.not = icmp ult ptr %120, %122
  br i1 %cmp1238.not, label %if.end1200.if.end1263_crit_edge, label %do.end1257, !prof !37

if.end1200.if.end1263_crit_edge:                  ; preds = %if.end1200
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1263

do.end1257:                                       ; preds = %if.end1200
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1263

if.end1263:                                       ; preds = %do.end1257, %if.end1200.if.end1263_crit_edge
  %123 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cur.i, align 4
  %125 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %end.i, align 4
  %cmp1277.not = icmp ult ptr %124, %126
  br i1 %cmp1277.not, label %if.end1263.if.end1302_crit_edge, label %do.end1296, !prof !37

if.end1263.if.end1302_crit_edge:                  ; preds = %if.end1263
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1302

do.end1296:                                       ; preds = %if.end1263
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end1302

if.end1302:                                       ; preds = %do.end1296, %if.end1263.if.end1302_crit_edge
  %127 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1327 = getelementptr i32, ptr %128, i32 1
  store ptr %incdec.ptr1327, ptr %cur.i, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %sub, ptr %128, align 4
  %130 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %smem_start, align 4
  %132 = ptrtoint ptr %fb_base to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %fb_base, align 4
  %sub1339 = sub i32 %131, %133
  %134 = load ptr, ptr %cur.i, align 4
  %135 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %seg.i, align 8
  %cmp1344.not = icmp ult ptr %134, %136
  br i1 %cmp1344.not, label %if.end1302.if.end1369_crit_edge, label %do.end1363, !prof !37

if.end1302.if.end1369_crit_edge:                  ; preds = %if.end1302
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1369

do.end1363:                                       ; preds = %if.end1302
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1369

if.end1369:                                       ; preds = %do.end1363, %if.end1302.if.end1369_crit_edge
  %137 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cur.i, align 4
  %139 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %end.i, align 4
  %cmp1383.not = icmp ult ptr %138, %140
  br i1 %cmp1383.not, label %if.end1369.if.end1408_crit_edge, label %do.end1402, !prof !37

if.end1369.if.end1408_crit_edge:                  ; preds = %if.end1369
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1408

do.end1402:                                       ; preds = %if.end1369
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end1408

if.end1408:                                       ; preds = %do.end1402, %if.end1369.if.end1408_crit_edge
  %141 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1433 = getelementptr i32, ptr %142, i32 1
  store ptr %incdec.ptr1433, ptr %cur.i, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %sub1339, ptr %142, align 4
  %144 = load ptr, ptr %cur.i, align 4
  %145 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %seg.i, align 8
  %cmp1534.not = icmp ult ptr %144, %146
  br i1 %cmp1534.not, label %if.end1408.if.end1559_crit_edge, label %do.end1553, !prof !37

if.end1408.if.end1559_crit_edge:                  ; preds = %if.end1408
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1559

do.end1553:                                       ; preds = %if.end1408
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 216, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1559

if.end1559:                                       ; preds = %do.end1553, %if.end1408.if.end1559_crit_edge
  %147 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cur.i, align 4
  %149 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %end.i, align 4
  %cmp1573.not = icmp ult ptr %148, %150
  br i1 %cmp1573.not, label %if.end1559.if.end1598_crit_edge, label %do.end1592, !prof !37

if.end1559.if.end1598_crit_edge:                  ; preds = %if.end1559
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1598

do.end1592:                                       ; preds = %if.end1559
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 216, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end1598

if.end1598:                                       ; preds = %do.end1592, %if.end1559.if.end1598_crit_edge
  %151 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1623 = getelementptr i32, ptr %152, i32 1
  store ptr %incdec.ptr1623, ptr %cur.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 262144, ptr %152, align 4
  %handle1632 = getelementptr inbounds %struct.nouveau_fbdev, ptr %1, i32 0, i32 4, i32 3
  %154 = ptrtoint ptr %handle1632 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %handle1632, align 4
  %156 = load ptr, ptr %cur.i, align 4
  %157 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %seg.i, align 8
  %cmp1637.not = icmp ult ptr %156, %158
  br i1 %cmp1637.not, label %if.end1598.if.end1662_crit_edge, label %do.end1656, !prof !37

if.end1598.if.end1662_crit_edge:                  ; preds = %if.end1598
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1662

do.end1656:                                       ; preds = %if.end1598
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 216, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1662

if.end1662:                                       ; preds = %do.end1656, %if.end1598.if.end1662_crit_edge
  %159 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cur.i, align 4
  %161 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %end.i, align 4
  %cmp1676.not = icmp ult ptr %160, %162
  br i1 %cmp1676.not, label %if.end1662.if.end1701_crit_edge, label %do.end1695, !prof !37

if.end1662.if.end1701_crit_edge:                  ; preds = %if.end1662
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1701

do.end1695:                                       ; preds = %if.end1662
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 216, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end1701

if.end1701:                                       ; preds = %do.end1695, %if.end1662.if.end1701_crit_edge
  %163 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1726 = getelementptr i32, ptr %164, i32 1
  store ptr %incdec.ptr1726, ptr %cur.i, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %155, ptr %164, align 4
  %166 = load ptr, ptr %cur.i, align 4
  %167 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %seg.i, align 8
  %cmp1827.not = icmp ult ptr %166, %168
  br i1 %cmp1827.not, label %if.end1701.if.end1852_crit_edge, label %do.end1846, !prof !37

if.end1701.if.end1852_crit_edge:                  ; preds = %if.end1701
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1852

do.end1846:                                       ; preds = %if.end1701
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1852

if.end1852:                                       ; preds = %do.end1846, %if.end1701.if.end1852_crit_edge
  %169 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %cur.i, align 4
  %171 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %end.i, align 4
  %cmp1866.not = icmp ult ptr %170, %172
  br i1 %cmp1866.not, label %if.end1852.if.end1891_crit_edge, label %do.end1885, !prof !37

if.end1852.if.end1891_crit_edge:                  ; preds = %if.end1852
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1891

do.end1885:                                       ; preds = %if.end1852
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end1891

if.end1891:                                       ; preds = %do.end1885, %if.end1852.if.end1891_crit_edge
  %173 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1916 = getelementptr i32, ptr %174, i32 1
  store ptr %incdec.ptr1916, ptr %cur.i, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 262912, ptr %174, align 4
  %176 = load ptr, ptr %cur.i, align 4
  %177 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %seg.i, align 8
  %cmp1928.not = icmp ult ptr %176, %178
  br i1 %cmp1928.not, label %if.end1891.if.end1953_crit_edge, label %do.end1947, !prof !37

if.end1891.if.end1953_crit_edge:                  ; preds = %if.end1891
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1953

do.end1947:                                       ; preds = %if.end1891
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1953

if.end1953:                                       ; preds = %do.end1947, %if.end1891.if.end1953_crit_edge
  %179 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %cur.i, align 4
  %181 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %end.i, align 4
  %cmp1967.not = icmp ult ptr %180, %182
  br i1 %cmp1967.not, label %if.end1953.if.end1992_crit_edge, label %do.end1986, !prof !37

if.end1953.if.end1992_crit_edge:                  ; preds = %if.end1953
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1992

do.end1986:                                       ; preds = %if.end1953
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end1992

if.end1992:                                       ; preds = %do.end1986, %if.end1953.if.end1992_crit_edge
  %183 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2017 = getelementptr i32, ptr %184, i32 1
  store ptr %incdec.ptr2017, ptr %cur.i, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 85, ptr %184, align 4
  %186 = load ptr, ptr %cur.i, align 4
  %187 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %seg.i, align 8
  %cmp2118.not = icmp ult ptr %186, %188
  br i1 %cmp2118.not, label %if.end1992.if.end2143_crit_edge, label %do.end2137, !prof !37

if.end1992.if.end2143_crit_edge:                  ; preds = %if.end1992
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2143

do.end2137:                                       ; preds = %if.end1992
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 219, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end2143

if.end2143:                                       ; preds = %do.end2137, %if.end1992.if.end2143_crit_edge
  %189 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %cur.i, align 4
  %191 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %end.i, align 4
  %cmp2157.not = icmp ult ptr %190, %192
  br i1 %cmp2157.not, label %if.end2143.if.end2182_crit_edge, label %do.end2176, !prof !37

if.end2143.if.end2182_crit_edge:                  ; preds = %if.end2143
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2182

do.end2176:                                       ; preds = %if.end2143
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 219, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end2182

if.end2182:                                       ; preds = %do.end2176, %if.end2143.if.end2182_crit_edge
  %193 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2207 = getelementptr i32, ptr %194, i32 1
  store ptr %incdec.ptr2207, ptr %cur.i, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 262144, ptr %194, align 4
  %handle2216 = getelementptr inbounds %struct.nouveau_fbdev, ptr %1, i32 0, i32 5, i32 3
  %196 = ptrtoint ptr %handle2216 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %handle2216, align 4
  %198 = load ptr, ptr %cur.i, align 4
  %199 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %seg.i, align 8
  %cmp2221.not = icmp ult ptr %198, %200
  br i1 %cmp2221.not, label %if.end2182.if.end2246_crit_edge, label %do.end2240, !prof !37

if.end2182.if.end2246_crit_edge:                  ; preds = %if.end2182
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2246

do.end2240:                                       ; preds = %if.end2182
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 219, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end2246

if.end2246:                                       ; preds = %do.end2240, %if.end2182.if.end2246_crit_edge
  %201 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %cur.i, align 4
  %203 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %end.i, align 4
  %cmp2260.not = icmp ult ptr %202, %204
  br i1 %cmp2260.not, label %if.end2246.if.end2285_crit_edge, label %do.end2279, !prof !37

if.end2246.if.end2285_crit_edge:                  ; preds = %if.end2246
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2285

do.end2279:                                       ; preds = %if.end2246
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 219, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end2285

if.end2285:                                       ; preds = %do.end2279, %if.end2246.if.end2285_crit_edge
  %205 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2310 = getelementptr i32, ptr %206, i32 1
  store ptr %incdec.ptr2310, ptr %cur.i, align 4
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %197, ptr %206, align 4
  %208 = load ptr, ptr %cur.i, align 4
  %209 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %seg.i, align 8
  %cmp2621.not = icmp ult ptr %208, %210
  br i1 %cmp2621.not, label %if.end2285.if.end2646_crit_edge, label %do.end2640, !prof !37

if.end2285.if.end2646_crit_edge:                  ; preds = %if.end2285
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2646

do.end2640:                                       ; preds = %if.end2285
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end2646

if.end2646:                                       ; preds = %do.end2640, %if.end2285.if.end2646_crit_edge
  %211 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %cur.i, align 4
  %213 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %end.i, align 4
  %cmp2660.not = icmp ult ptr %212, %214
  br i1 %cmp2660.not, label %if.end2646.if.end2685_crit_edge, label %do.end2679, !prof !37

if.end2646.if.end2685_crit_edge:                  ; preds = %if.end2646
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2685

do.end2679:                                       ; preds = %if.end2646
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end2685

if.end2685:                                       ; preds = %do.end2679, %if.end2646.if.end2685_crit_edge
  %215 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2710 = getelementptr i32, ptr %216, i32 1
  store ptr %incdec.ptr2710, ptr %cur.i, align 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 2097920, ptr %216, align 4
  %218 = load ptr, ptr %cur.i, align 4
  %219 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %seg.i, align 8
  %cmp2722.not = icmp ult ptr %218, %220
  br i1 %cmp2722.not, label %if.end2685.if.end2747_crit_edge, label %do.end2741, !prof !37

if.end2685.if.end2747_crit_edge:                  ; preds = %if.end2685
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2747

do.end2741:                                       ; preds = %if.end2685
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end2747

if.end2747:                                       ; preds = %do.end2741, %if.end2685.if.end2747_crit_edge
  %221 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %cur.i, align 4
  %223 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %end.i, align 4
  %cmp2761.not = icmp ult ptr %222, %224
  br i1 %cmp2761.not, label %if.end2747.if.end2786_crit_edge, label %do.end2780, !prof !37

if.end2747.if.end2786_crit_edge:                  ; preds = %if.end2747
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2786

do.end2780:                                       ; preds = %if.end2747
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end2786

if.end2786:                                       ; preds = %do.end2780, %if.end2747.if.end2786_crit_edge
  %225 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2811 = getelementptr i32, ptr %226, i32 1
  store ptr %incdec.ptr2811, ptr %cur.i, align 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %pattern_fmt.0, ptr %226, align 4
  %228 = load ptr, ptr %cur.i, align 4
  %229 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %seg.i, align 8
  %cmp2823.not = icmp ult ptr %228, %230
  br i1 %cmp2823.not, label %if.end2786.if.end2848_crit_edge, label %do.end2842, !prof !37

if.end2786.if.end2848_crit_edge:                  ; preds = %if.end2786
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2848

do.end2842:                                       ; preds = %if.end2786
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end2848

if.end2848:                                       ; preds = %do.end2842, %if.end2786.if.end2848_crit_edge
  %231 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %cur.i, align 4
  %233 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %end.i, align 4
  %cmp2862.not = icmp ult ptr %232, %234
  br i1 %cmp2862.not, label %if.end2848.if.end2887_crit_edge, label %do.end2881, !prof !37

if.end2848.if.end2887_crit_edge:                  ; preds = %if.end2848
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2887

do.end2881:                                       ; preds = %if.end2848
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end2887

if.end2887:                                       ; preds = %do.end2881, %if.end2848.if.end2887_crit_edge
  %235 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2912 = getelementptr i32, ptr %236, i32 1
  store ptr %incdec.ptr2912, ptr %cur.i, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 2, ptr %236, align 4
  %238 = load ptr, ptr %cur.i, align 4
  %239 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %seg.i, align 8
  %cmp2924.not = icmp ult ptr %238, %240
  br i1 %cmp2924.not, label %if.end2887.if.end2949_crit_edge, label %do.end2943, !prof !37

if.end2887.if.end2949_crit_edge:                  ; preds = %if.end2887
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2949

do.end2943:                                       ; preds = %if.end2887
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end2949

if.end2949:                                       ; preds = %do.end2943, %if.end2887.if.end2949_crit_edge
  %241 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %cur.i, align 4
  %243 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %end.i, align 4
  %cmp2963.not = icmp ult ptr %242, %244
  br i1 %cmp2963.not, label %if.end2949.if.end2988_crit_edge, label %do.end2982, !prof !37

if.end2949.if.end2988_crit_edge:                  ; preds = %if.end2949
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2988

do.end2982:                                       ; preds = %if.end2949
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end2988

if.end2988:                                       ; preds = %do.end2982, %if.end2949.if.end2988_crit_edge
  %245 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3013 = getelementptr i32, ptr %246, i32 1
  store ptr %incdec.ptr3013, ptr %cur.i, align 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 0, ptr %246, align 4
  %248 = load ptr, ptr %cur.i, align 4
  %249 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %seg.i, align 8
  %cmp3025.not = icmp ult ptr %248, %250
  br i1 %cmp3025.not, label %if.end2988.if.end3050_crit_edge, label %do.end3044, !prof !37

if.end2988.if.end3050_crit_edge:                  ; preds = %if.end2988
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3050

do.end3044:                                       ; preds = %if.end2988
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end3050

if.end3050:                                       ; preds = %do.end3044, %if.end2988.if.end3050_crit_edge
  %251 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %cur.i, align 4
  %253 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %end.i, align 4
  %cmp3064.not = icmp ult ptr %252, %254
  br i1 %cmp3064.not, label %if.end3050.if.end3089_crit_edge, label %do.end3083, !prof !37

if.end3050.if.end3089_crit_edge:                  ; preds = %if.end3050
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3089

do.end3083:                                       ; preds = %if.end3050
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end3089

if.end3089:                                       ; preds = %do.end3083, %if.end3050.if.end3089_crit_edge
  %255 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3114 = getelementptr i32, ptr %256, i32 1
  store ptr %incdec.ptr3114, ptr %cur.i, align 4
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 1, ptr %256, align 4
  %258 = load ptr, ptr %cur.i, align 4
  %259 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %seg.i, align 8
  %cmp3126.not = icmp ult ptr %258, %260
  br i1 %cmp3126.not, label %if.end3089.if.end3151_crit_edge, label %do.end3145, !prof !37

if.end3089.if.end3151_crit_edge:                  ; preds = %if.end3089
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3151

do.end3145:                                       ; preds = %if.end3089
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end3151

if.end3151:                                       ; preds = %do.end3145, %if.end3089.if.end3151_crit_edge
  %261 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %cur.i, align 4
  %263 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %end.i, align 4
  %cmp3165.not = icmp ult ptr %262, %264
  br i1 %cmp3165.not, label %if.end3151.if.end3190_crit_edge, label %do.end3184, !prof !37

if.end3151.if.end3190_crit_edge:                  ; preds = %if.end3151
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3190

do.end3184:                                       ; preds = %if.end3151
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end3190

if.end3190:                                       ; preds = %do.end3184, %if.end3151.if.end3190_crit_edge
  %265 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3215 = getelementptr i32, ptr %266, i32 1
  store ptr %incdec.ptr3215, ptr %cur.i, align 4
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 -1, ptr %266, align 4
  %268 = load ptr, ptr %cur.i, align 4
  %269 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %seg.i, align 8
  %cmp3227.not = icmp ult ptr %268, %270
  br i1 %cmp3227.not, label %if.end3190.if.end3252_crit_edge, label %do.end3246, !prof !37

if.end3190.if.end3252_crit_edge:                  ; preds = %if.end3190
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3252

do.end3246:                                       ; preds = %if.end3190
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end3252

if.end3252:                                       ; preds = %do.end3246, %if.end3190.if.end3252_crit_edge
  %271 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %cur.i, align 4
  %273 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %end.i, align 4
  %cmp3266.not = icmp ult ptr %272, %274
  br i1 %cmp3266.not, label %if.end3252.if.end3291_crit_edge, label %do.end3285, !prof !37

if.end3252.if.end3291_crit_edge:                  ; preds = %if.end3252
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3291

do.end3285:                                       ; preds = %if.end3252
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end3291

if.end3291:                                       ; preds = %do.end3285, %if.end3252.if.end3291_crit_edge
  %275 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3316 = getelementptr i32, ptr %276, i32 1
  store ptr %incdec.ptr3316, ptr %cur.i, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 -1, ptr %276, align 4
  %278 = load ptr, ptr %cur.i, align 4
  %279 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %seg.i, align 8
  %cmp3328.not = icmp ult ptr %278, %280
  br i1 %cmp3328.not, label %if.end3291.if.end3353_crit_edge, label %do.end3347, !prof !37

if.end3291.if.end3353_crit_edge:                  ; preds = %if.end3291
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3353

do.end3347:                                       ; preds = %if.end3291
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end3353

if.end3353:                                       ; preds = %do.end3347, %if.end3291.if.end3353_crit_edge
  %281 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %cur.i, align 4
  %283 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %end.i, align 4
  %cmp3367.not = icmp ult ptr %282, %284
  br i1 %cmp3367.not, label %if.end3353.if.end3392_crit_edge, label %do.end3386, !prof !37

if.end3353.if.end3392_crit_edge:                  ; preds = %if.end3353
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3392

do.end3386:                                       ; preds = %if.end3353
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end3392

if.end3392:                                       ; preds = %do.end3386, %if.end3353.if.end3392_crit_edge
  %285 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3417 = getelementptr i32, ptr %286, i32 1
  store ptr %incdec.ptr3417, ptr %cur.i, align 4
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 -1, ptr %286, align 4
  %288 = load ptr, ptr %cur.i, align 4
  %289 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %seg.i, align 8
  %cmp3429.not = icmp ult ptr %288, %290
  br i1 %cmp3429.not, label %if.end3392.if.end3454_crit_edge, label %do.end3448, !prof !37

if.end3392.if.end3454_crit_edge:                  ; preds = %if.end3392
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3454

do.end3448:                                       ; preds = %if.end3392
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end3454

if.end3454:                                       ; preds = %do.end3448, %if.end3392.if.end3454_crit_edge
  %291 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %cur.i, align 4
  %293 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %end.i, align 4
  %cmp3468.not = icmp ult ptr %292, %294
  br i1 %cmp3468.not, label %if.end3454.if.end3493_crit_edge, label %do.end3487, !prof !37

if.end3454.if.end3493_crit_edge:                  ; preds = %if.end3454
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3493

do.end3487:                                       ; preds = %if.end3454
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end3493

if.end3493:                                       ; preds = %do.end3487, %if.end3454.if.end3493_crit_edge
  %295 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3518 = getelementptr i32, ptr %296, i32 1
  store ptr %incdec.ptr3518, ptr %cur.i, align 4
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 -1, ptr %296, align 4
  %298 = load ptr, ptr %cur.i, align 4
  %299 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %seg.i, align 8
  %cmp3619.not = icmp ult ptr %298, %300
  br i1 %cmp3619.not, label %if.end3493.if.end3644_crit_edge, label %do.end3638, !prof !37

if.end3493.if.end3644_crit_edge:                  ; preds = %if.end3493
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3644

do.end3638:                                       ; preds = %if.end3493
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 233, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end3644

if.end3644:                                       ; preds = %do.end3638, %if.end3493.if.end3644_crit_edge
  %301 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %cur.i, align 4
  %303 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %end.i, align 4
  %cmp3658.not = icmp ult ptr %302, %304
  br i1 %cmp3658.not, label %if.end3644.if.end3683_crit_edge, label %do.end3677, !prof !37

if.end3644.if.end3683_crit_edge:                  ; preds = %if.end3644
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3683

do.end3677:                                       ; preds = %if.end3644
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 233, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end3683

if.end3683:                                       ; preds = %do.end3677, %if.end3644.if.end3683_crit_edge
  %305 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3708 = getelementptr i32, ptr %306, i32 1
  store ptr %incdec.ptr3708, ptr %cur.i, align 4
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 262144, ptr %306, align 4
  %handle3717 = getelementptr inbounds %struct.nouveau_fbdev, ptr %1, i32 0, i32 3, i32 3
  %308 = ptrtoint ptr %handle3717 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %handle3717, align 4
  %310 = load ptr, ptr %cur.i, align 4
  %311 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %seg.i, align 8
  %cmp3722.not = icmp ult ptr %310, %312
  br i1 %cmp3722.not, label %if.end3683.if.end3747_crit_edge, label %do.end3741, !prof !37

if.end3683.if.end3747_crit_edge:                  ; preds = %if.end3683
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3747

do.end3741:                                       ; preds = %if.end3683
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 233, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end3747

if.end3747:                                       ; preds = %do.end3741, %if.end3683.if.end3747_crit_edge
  %313 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %cur.i, align 4
  %315 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %end.i, align 4
  %cmp3761.not = icmp ult ptr %314, %316
  br i1 %cmp3761.not, label %if.end3747.if.end3786_crit_edge, label %do.end3780, !prof !37

if.end3747.if.end3786_crit_edge:                  ; preds = %if.end3747
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3786

do.end3780:                                       ; preds = %if.end3747
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 233, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end3786

if.end3786:                                       ; preds = %do.end3780, %if.end3747.if.end3786_crit_edge
  %317 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3811 = getelementptr i32, ptr %318, i32 1
  store ptr %incdec.ptr3811, ptr %cur.i, align 4
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %309, ptr %318, align 4
  %320 = load ptr, ptr %cur.i, align 4
  %321 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %seg.i, align 8
  %cmp3942.not = icmp ult ptr %320, %322
  br i1 %cmp3942.not, label %if.end3786.if.end3967_crit_edge, label %do.end3961, !prof !37

if.end3786.if.end3967_crit_edge:                  ; preds = %if.end3786
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3967

do.end3961:                                       ; preds = %if.end3786
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end3967

if.end3967:                                       ; preds = %do.end3961, %if.end3786.if.end3967_crit_edge
  %323 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %cur.i, align 4
  %325 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %end.i, align 4
  %cmp3981.not = icmp ult ptr %324, %326
  br i1 %cmp3981.not, label %if.end3967.if.end4006_crit_edge, label %do.end4000, !prof !37

if.end3967.if.end4006_crit_edge:                  ; preds = %if.end3967
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4006

do.end4000:                                       ; preds = %if.end3967
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end4006

if.end4006:                                       ; preds = %do.end4000, %if.end3967.if.end4006_crit_edge
  %327 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4031 = getelementptr i32, ptr %328, i32 1
  store ptr %incdec.ptr4031, ptr %cur.i, align 4
  %329 = ptrtoint ptr %328 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 525056, ptr %328, align 4
  %330 = load ptr, ptr %cur.i, align 4
  %331 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %seg.i, align 8
  %cmp4043.not = icmp ult ptr %330, %332
  br i1 %cmp4043.not, label %if.end4006.if.end4068_crit_edge, label %do.end4062, !prof !37

if.end4006.if.end4068_crit_edge:                  ; preds = %if.end4006
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4068

do.end4062:                                       ; preds = %if.end4006
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end4068

if.end4068:                                       ; preds = %do.end4062, %if.end4006.if.end4068_crit_edge
  %333 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %cur.i, align 4
  %335 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %end.i, align 4
  %cmp4082.not = icmp ult ptr %334, %336
  br i1 %cmp4082.not, label %if.end4068.if.end4107_crit_edge, label %do.end4101, !prof !37

if.end4068.if.end4107_crit_edge:                  ; preds = %if.end4068
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4107

do.end4101:                                       ; preds = %if.end4068
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end4107

if.end4107:                                       ; preds = %do.end4101, %if.end4068.if.end4107_crit_edge
  %337 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4132 = getelementptr i32, ptr %338, i32 1
  store ptr %incdec.ptr4132, ptr %cur.i, align 4
  %339 = ptrtoint ptr %338 to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 0, ptr %338, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %340 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %yres_virtual, align 4
  %shl4141 = shl i32 %341, 16
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %342 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %xres_virtual, align 4
  %or4143 = or i32 %shl4141, %343
  %344 = load ptr, ptr %cur.i, align 4
  %345 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %seg.i, align 8
  %cmp4148.not = icmp ult ptr %344, %346
  br i1 %cmp4148.not, label %if.end4107.if.end4173_crit_edge, label %do.end4167, !prof !37

if.end4107.if.end4173_crit_edge:                  ; preds = %if.end4107
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4173

do.end4167:                                       ; preds = %if.end4107
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end4173

if.end4173:                                       ; preds = %do.end4167, %if.end4107.if.end4173_crit_edge
  %347 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %cur.i, align 4
  %349 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %end.i, align 4
  %cmp4187.not = icmp ult ptr %348, %350
  br i1 %cmp4187.not, label %if.end4173.if.end4212_crit_edge, label %do.end4206, !prof !37

if.end4173.if.end4212_crit_edge:                  ; preds = %if.end4173
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4212

do.end4206:                                       ; preds = %if.end4173
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end4212

if.end4212:                                       ; preds = %do.end4206, %if.end4173.if.end4212_crit_edge
  %351 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4237 = getelementptr i32, ptr %352, i32 1
  store ptr %incdec.ptr4237, ptr %cur.i, align 4
  %353 = ptrtoint ptr %352 to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 %or4143, ptr %352, align 4
  %354 = load ptr, ptr %cur.i, align 4
  %355 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %seg.i, align 8
  %cmp4338.not = icmp ult ptr %354, %356
  br i1 %cmp4338.not, label %if.end4212.if.end4363_crit_edge, label %do.end4357, !prof !37

if.end4212.if.end4363_crit_edge:                  ; preds = %if.end4212
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4363

do.end4357:                                       ; preds = %if.end4212
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 237, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end4363

if.end4363:                                       ; preds = %do.end4357, %if.end4212.if.end4363_crit_edge
  %357 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %cur.i, align 4
  %359 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %end.i, align 4
  %cmp4377.not = icmp ult ptr %358, %360
  br i1 %cmp4377.not, label %if.end4363.if.end4402_crit_edge, label %do.end4396, !prof !37

if.end4363.if.end4402_crit_edge:                  ; preds = %if.end4363
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4402

do.end4396:                                       ; preds = %if.end4363
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 237, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end4402

if.end4402:                                       ; preds = %do.end4396, %if.end4363.if.end4402_crit_edge
  %361 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4427 = getelementptr i32, ptr %362, i32 1
  store ptr %incdec.ptr4427, ptr %cur.i, align 4
  %363 = ptrtoint ptr %362 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 278528, ptr %362, align 4
  %handle4436 = getelementptr inbounds %struct.nouveau_fbdev, ptr %1, i32 0, i32 7, i32 3
  %364 = ptrtoint ptr %handle4436 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %handle4436, align 4
  %366 = load ptr, ptr %cur.i, align 4
  %367 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %seg.i, align 8
  %cmp4441.not = icmp ult ptr %366, %368
  br i1 %cmp4441.not, label %if.end4402.if.end4466_crit_edge, label %do.end4460, !prof !37

if.end4402.if.end4466_crit_edge:                  ; preds = %if.end4402
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4466

do.end4460:                                       ; preds = %if.end4402
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 237, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end4466

if.end4466:                                       ; preds = %do.end4460, %if.end4402.if.end4466_crit_edge
  %369 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %cur.i, align 4
  %371 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %end.i, align 4
  %cmp4480.not = icmp ult ptr %370, %372
  br i1 %cmp4480.not, label %if.end4466.if.end4505_crit_edge, label %do.end4499, !prof !37

if.end4466.if.end4505_crit_edge:                  ; preds = %if.end4466
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4505

do.end4499:                                       ; preds = %if.end4466
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 237, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end4505

if.end4505:                                       ; preds = %do.end4499, %if.end4466.if.end4505_crit_edge
  %373 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4530 = getelementptr i32, ptr %374, i32 1
  store ptr %incdec.ptr4530, ptr %cur.i, align 4
  %375 = ptrtoint ptr %374 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %365, ptr %374, align 4
  %376 = load ptr, ptr %cur.i, align 4
  %377 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %seg.i, align 8
  %cmp4631.not = icmp ult ptr %376, %378
  br i1 %cmp4631.not, label %if.end4505.if.end4656_crit_edge, label %do.end4650, !prof !37

if.end4505.if.end4656_crit_edge:                  ; preds = %if.end4505
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4656

do.end4650:                                       ; preds = %if.end4505
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end4656

if.end4656:                                       ; preds = %do.end4650, %if.end4505.if.end4656_crit_edge
  %379 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %cur.i, align 4
  %381 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %end.i, align 4
  %cmp4670.not = icmp ult ptr %380, %382
  br i1 %cmp4670.not, label %if.end4656.if.end4695_crit_edge, label %do.end4689, !prof !37

if.end4656.if.end4695_crit_edge:                  ; preds = %if.end4656
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4695

do.end4689:                                       ; preds = %if.end4656
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end4695

if.end4695:                                       ; preds = %do.end4689, %if.end4656.if.end4695_crit_edge
  %383 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4720 = getelementptr i32, ptr %384, i32 1
  store ptr %incdec.ptr4720, ptr %cur.i, align 4
  %385 = ptrtoint ptr %384 to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 278940, ptr %384, align 4
  %386 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %handle, align 4
  %388 = load ptr, ptr %cur.i, align 4
  %389 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %seg.i, align 8
  %cmp4734.not = icmp ult ptr %388, %390
  br i1 %cmp4734.not, label %if.end4695.if.end4759_crit_edge, label %do.end4753, !prof !37

if.end4695.if.end4759_crit_edge:                  ; preds = %if.end4695
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4759

do.end4753:                                       ; preds = %if.end4695
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end4759

if.end4759:                                       ; preds = %do.end4753, %if.end4695.if.end4759_crit_edge
  %391 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %cur.i, align 4
  %393 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %end.i, align 4
  %cmp4773.not = icmp ult ptr %392, %394
  br i1 %cmp4773.not, label %if.end4759.if.end4798_crit_edge, label %do.end4792, !prof !37

if.end4759.if.end4798_crit_edge:                  ; preds = %if.end4759
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4798

do.end4792:                                       ; preds = %if.end4759
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end4798

if.end4798:                                       ; preds = %do.end4792, %if.end4759.if.end4798_crit_edge
  %395 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4823 = getelementptr i32, ptr %396, i32 1
  store ptr %incdec.ptr4823, ptr %cur.i, align 4
  %397 = ptrtoint ptr %396 to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %387, ptr %396, align 4
  %398 = load ptr, ptr %cur.i, align 4
  %399 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %seg.i, align 8
  %cmp4924.not = icmp ult ptr %398, %400
  br i1 %cmp4924.not, label %if.end4798.if.end4949_crit_edge, label %do.end4943, !prof !37

if.end4798.if.end4949_crit_edge:                  ; preds = %if.end4798
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4949

do.end4943:                                       ; preds = %if.end4798
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end4949

if.end4949:                                       ; preds = %do.end4943, %if.end4798.if.end4949_crit_edge
  %401 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %cur.i, align 4
  %403 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %end.i, align 4
  %cmp4963.not = icmp ult ptr %402, %404
  br i1 %cmp4963.not, label %if.end4949.if.end4988_crit_edge, label %do.end4982, !prof !37

if.end4949.if.end4988_crit_edge:                  ; preds = %if.end4949
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4988

do.end4982:                                       ; preds = %if.end4949
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end4988

if.end4988:                                       ; preds = %do.end4982, %if.end4949.if.end4988_crit_edge
  %405 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5013 = getelementptr i32, ptr %406, i32 1
  store ptr %incdec.ptr5013, ptr %cur.i, align 4
  %407 = ptrtoint ptr %406 to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 279292, ptr %406, align 4
  %408 = load ptr, ptr %cur.i, align 4
  %409 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %seg.i, align 8
  %cmp5025.not = icmp ult ptr %408, %410
  br i1 %cmp5025.not, label %if.end4988.if.end5050_crit_edge, label %do.end5044, !prof !37

if.end4988.if.end5050_crit_edge:                  ; preds = %if.end4988
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5050

do.end5044:                                       ; preds = %if.end4988
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end5050

if.end5050:                                       ; preds = %do.end5044, %if.end4988.if.end5050_crit_edge
  %411 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %cur.i, align 4
  %413 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %end.i, align 4
  %cmp5064.not = icmp ult ptr %412, %414
  br i1 %cmp5064.not, label %if.end5050.if.end5089_crit_edge, label %do.end5083, !prof !37

if.end5050.if.end5089_crit_edge:                  ; preds = %if.end5050
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5089

do.end5083:                                       ; preds = %if.end5050
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end5089

if.end5089:                                       ; preds = %do.end5083, %if.end5050.if.end5089_crit_edge
  %415 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5114 = getelementptr i32, ptr %416, i32 1
  store ptr %incdec.ptr5114, ptr %cur.i, align 4
  %417 = ptrtoint ptr %416 to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 3, ptr %416, align 4
  %oclass = getelementptr inbounds %struct.nouveau_fbdev, ptr %1, i32 0, i32 7, i32 4
  %418 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %oclass, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %419)
  %cmp5120 = icmp eq i32 %419, 159
  br i1 %cmp5120, label %if.end5262, label %if.end5089.if.end5756_crit_edge

if.end5089.if.end5756_crit_edge:                  ; preds = %if.end5089
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5756

if.end5262:                                       ; preds = %if.end5089
  %420 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %cur.i, align 4
  %422 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %seg.i, align 8
  %cmp5279.not = icmp ult ptr %421, %423
  br i1 %cmp5279.not, label %if.end5262.if.end5304_crit_edge, label %do.end5298, !prof !37

if.end5262.if.end5304_crit_edge:                  ; preds = %if.end5262
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5304

do.end5298:                                       ; preds = %if.end5262
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end5304

if.end5304:                                       ; preds = %do.end5298, %if.end5262.if.end5304_crit_edge
  %424 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %cur.i, align 4
  %426 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %end.i, align 4
  %cmp5318.not = icmp ult ptr %425, %427
  br i1 %cmp5318.not, label %if.end5304.if.end5343_crit_edge, label %do.end5337, !prof !37

if.end5304.if.end5343_crit_edge:                  ; preds = %if.end5304
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5343

do.end5337:                                       ; preds = %if.end5304
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end5343

if.end5343:                                       ; preds = %do.end5337, %if.end5304.if.end5343_crit_edge
  %428 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5368 = getelementptr i32, ptr %429, i32 1
  store ptr %incdec.ptr5368, ptr %cur.i, align 4
  %430 = ptrtoint ptr %429 to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 803104, ptr %429, align 4
  %431 = load ptr, ptr %cur.i, align 4
  %432 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %seg.i, align 8
  %cmp5380.not = icmp ult ptr %431, %433
  br i1 %cmp5380.not, label %if.end5343.if.end5405_crit_edge, label %do.end5399, !prof !37

if.end5343.if.end5405_crit_edge:                  ; preds = %if.end5343
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5405

do.end5399:                                       ; preds = %if.end5343
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end5405

if.end5405:                                       ; preds = %do.end5399, %if.end5343.if.end5405_crit_edge
  %434 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %cur.i, align 4
  %436 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %end.i, align 4
  %cmp5419.not = icmp ult ptr %435, %437
  br i1 %cmp5419.not, label %if.end5405.if.end5444_crit_edge, label %do.end5438, !prof !37

if.end5405.if.end5444_crit_edge:                  ; preds = %if.end5405
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5444

do.end5438:                                       ; preds = %if.end5405
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end5444

if.end5444:                                       ; preds = %do.end5438, %if.end5405.if.end5444_crit_edge
  %438 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5469 = getelementptr i32, ptr %439, i32 1
  store ptr %incdec.ptr5469, ptr %cur.i, align 4
  %440 = ptrtoint ptr %439 to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 0, ptr %439, align 4
  %441 = load ptr, ptr %cur.i, align 4
  %442 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %seg.i, align 8
  %cmp5481.not = icmp ult ptr %441, %443
  br i1 %cmp5481.not, label %if.end5444.if.end5506_crit_edge, label %do.end5500, !prof !37

if.end5444.if.end5506_crit_edge:                  ; preds = %if.end5444
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5506

do.end5500:                                       ; preds = %if.end5444
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end5506

if.end5506:                                       ; preds = %do.end5500, %if.end5444.if.end5506_crit_edge
  %444 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %cur.i, align 4
  %446 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %end.i, align 4
  %cmp5520.not = icmp ult ptr %445, %447
  br i1 %cmp5520.not, label %if.end5506.if.end5545_crit_edge, label %do.end5539, !prof !37

if.end5506.if.end5545_crit_edge:                  ; preds = %if.end5506
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5545

do.end5539:                                       ; preds = %if.end5506
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end5545

if.end5545:                                       ; preds = %do.end5539, %if.end5506.if.end5545_crit_edge
  %448 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5570 = getelementptr i32, ptr %449, i32 1
  store ptr %incdec.ptr5570, ptr %cur.i, align 4
  %450 = ptrtoint ptr %449 to i32
  call void @__asan_store4_noabort(i32 %450)
  store i32 1, ptr %449, align 4
  %451 = load ptr, ptr %cur.i, align 4
  %452 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %seg.i, align 8
  %cmp5582.not = icmp ult ptr %451, %453
  br i1 %cmp5582.not, label %if.end5545.if.end5607_crit_edge, label %do.end5601, !prof !37

if.end5545.if.end5607_crit_edge:                  ; preds = %if.end5545
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5607

do.end5601:                                       ; preds = %if.end5545
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end5607

if.end5607:                                       ; preds = %do.end5601, %if.end5545.if.end5607_crit_edge
  %454 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %cur.i, align 4
  %456 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %end.i, align 4
  %cmp5621.not = icmp ult ptr %455, %457
  br i1 %cmp5621.not, label %if.end5607.if.end5646_crit_edge, label %do.end5640, !prof !37

if.end5607.if.end5646_crit_edge:                  ; preds = %if.end5607
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5646

do.end5640:                                       ; preds = %if.end5607
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end5646

if.end5646:                                       ; preds = %do.end5640, %if.end5607.if.end5646_crit_edge
  %458 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5671 = getelementptr i32, ptr %459, i32 1
  store ptr %incdec.ptr5671, ptr %cur.i, align 4
  %460 = ptrtoint ptr %459 to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 2, ptr %459, align 4
  br label %if.end5756

if.end5756:                                       ; preds = %if.end5646, %if.end5089.if.end5756_crit_edge
  %461 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %cur.i, align 4
  %463 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %seg.i, align 8
  %cmp5773.not = icmp ult ptr %462, %464
  br i1 %cmp5773.not, label %if.end5756.if.end5798_crit_edge, label %do.end5792, !prof !37

if.end5756.if.end5798_crit_edge:                  ; preds = %if.end5756
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5798

do.end5792:                                       ; preds = %if.end5756
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end5798

if.end5798:                                       ; preds = %do.end5792, %if.end5756.if.end5798_crit_edge
  %465 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %cur.i, align 4
  %467 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %end.i, align 4
  %cmp5812.not = icmp ult ptr %466, %468
  br i1 %cmp5812.not, label %if.end5798.if.end5837_crit_edge, label %do.end5831, !prof !37

if.end5798.if.end5837_crit_edge:                  ; preds = %if.end5798
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5837

do.end5831:                                       ; preds = %if.end5798
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end5837

if.end5837:                                       ; preds = %do.end5831, %if.end5798.if.end5837_crit_edge
  %469 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5862 = getelementptr i32, ptr %470, i32 1
  store ptr %incdec.ptr5862, ptr %cur.i, align 4
  %471 = ptrtoint ptr %470 to i32
  call void @__asan_store4_noabort(i32 %471)
  store i32 286720, ptr %470, align 4
  %handle5871 = getelementptr inbounds %struct.nouveau_fbdev, ptr %1, i32 0, i32 6, i32 3
  %472 = ptrtoint ptr %handle5871 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %handle5871, align 4
  %474 = load ptr, ptr %cur.i, align 4
  %475 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %seg.i, align 8
  %cmp5876.not = icmp ult ptr %474, %476
  br i1 %cmp5876.not, label %if.end5837.if.end5901_crit_edge, label %do.end5895, !prof !37

if.end5837.if.end5901_crit_edge:                  ; preds = %if.end5837
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5901

do.end5895:                                       ; preds = %if.end5837
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end5901

if.end5901:                                       ; preds = %do.end5895, %if.end5837.if.end5901_crit_edge
  %477 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %cur.i, align 4
  %479 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %end.i, align 4
  %cmp5915.not = icmp ult ptr %478, %480
  br i1 %cmp5915.not, label %if.end5901.if.end5940_crit_edge, label %do.end5934, !prof !37

if.end5901.if.end5940_crit_edge:                  ; preds = %if.end5901
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5940

do.end5934:                                       ; preds = %if.end5901
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end5940

if.end5940:                                       ; preds = %do.end5934, %if.end5901.if.end5940_crit_edge
  %481 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5965 = getelementptr i32, ptr %482, i32 1
  store ptr %incdec.ptr5965, ptr %cur.i, align 4
  %483 = ptrtoint ptr %482 to i32
  call void @__asan_store4_noabort(i32 %483)
  store i32 %473, ptr %482, align 4
  %484 = load ptr, ptr %cur.i, align 4
  %485 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %seg.i, align 8
  %cmp6066.not = icmp ult ptr %484, %486
  br i1 %cmp6066.not, label %if.end5940.if.end6091_crit_edge, label %do.end6085, !prof !37

if.end5940.if.end6091_crit_edge:                  ; preds = %if.end5940
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6091

do.end6085:                                       ; preds = %if.end5940
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 247, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end6091

if.end6091:                                       ; preds = %do.end6085, %if.end5940.if.end6091_crit_edge
  %487 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %cur.i, align 4
  %489 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %end.i, align 4
  %cmp6105.not = icmp ult ptr %488, %490
  br i1 %cmp6105.not, label %if.end6091.if.end6130_crit_edge, label %do.end6124, !prof !37

if.end6091.if.end6130_crit_edge:                  ; preds = %if.end6091
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6130

do.end6124:                                       ; preds = %if.end6091
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 247, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end6130

if.end6130:                                       ; preds = %do.end6124, %if.end6091.if.end6130_crit_edge
  %491 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6155 = getelementptr i32, ptr %492, i32 1
  store ptr %incdec.ptr6155, ptr %cur.i, align 4
  %493 = ptrtoint ptr %492 to i32
  call void @__asan_store4_noabort(i32 %493)
  store i32 287128, ptr %492, align 4
  %494 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %handle, align 4
  %496 = load ptr, ptr %cur.i, align 4
  %497 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %seg.i, align 8
  %cmp6169.not = icmp ult ptr %496, %498
  br i1 %cmp6169.not, label %if.end6130.if.end6194_crit_edge, label %do.end6188, !prof !37

if.end6130.if.end6194_crit_edge:                  ; preds = %if.end6130
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6194

do.end6188:                                       ; preds = %if.end6130
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 247, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end6194

if.end6194:                                       ; preds = %do.end6188, %if.end6130.if.end6194_crit_edge
  %499 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %cur.i, align 4
  %501 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %end.i, align 4
  %cmp6208.not = icmp ult ptr %500, %502
  br i1 %cmp6208.not, label %if.end6194.if.end6233_crit_edge, label %do.end6227, !prof !37

if.end6194.if.end6233_crit_edge:                  ; preds = %if.end6194
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6233

do.end6227:                                       ; preds = %if.end6194
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 247, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end6233

if.end6233:                                       ; preds = %do.end6227, %if.end6194.if.end6233_crit_edge
  %503 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6258 = getelementptr i32, ptr %504, i32 1
  store ptr %incdec.ptr6258, ptr %cur.i, align 4
  %505 = ptrtoint ptr %504 to i32
  call void @__asan_store4_noabort(i32 %505)
  store i32 %495, ptr %504, align 4
  %506 = load ptr, ptr %cur.i, align 4
  %507 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %seg.i, align 8
  %cmp6389.not = icmp ult ptr %506, %508
  br i1 %cmp6389.not, label %if.end6233.if.end6414_crit_edge, label %do.end6408, !prof !37

if.end6233.if.end6414_crit_edge:                  ; preds = %if.end6233
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6414

do.end6408:                                       ; preds = %if.end6233
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end6414

if.end6414:                                       ; preds = %do.end6408, %if.end6233.if.end6414_crit_edge
  %509 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %cur.i, align 4
  %511 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %end.i, align 4
  %cmp6428.not = icmp ult ptr %510, %512
  br i1 %cmp6428.not, label %if.end6414.if.end6453_crit_edge, label %do.end6447, !prof !37

if.end6414.if.end6453_crit_edge:                  ; preds = %if.end6414
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6453

do.end6447:                                       ; preds = %if.end6414
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end6453

if.end6453:                                       ; preds = %do.end6447, %if.end6414.if.end6453_crit_edge
  %513 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6478 = getelementptr i32, ptr %514, i32 1
  store ptr %incdec.ptr6478, ptr %cur.i, align 4
  %515 = ptrtoint ptr %514 to i32
  call void @__asan_store4_noabort(i32 %515)
  store i32 549256, ptr %514, align 4
  %516 = ptrtoint ptr %handle2216 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %handle2216, align 4
  %518 = load ptr, ptr %cur.i, align 4
  %519 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %seg.i, align 8
  %cmp6492.not = icmp ult ptr %518, %520
  br i1 %cmp6492.not, label %if.end6453.if.end6517_crit_edge, label %do.end6511, !prof !37

if.end6453.if.end6517_crit_edge:                  ; preds = %if.end6453
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6517

do.end6511:                                       ; preds = %if.end6453
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end6517

if.end6517:                                       ; preds = %do.end6511, %if.end6453.if.end6517_crit_edge
  %521 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %cur.i, align 4
  %523 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %end.i, align 4
  %cmp6531.not = icmp ult ptr %522, %524
  br i1 %cmp6531.not, label %if.end6517.if.end6556_crit_edge, label %do.end6550, !prof !37

if.end6517.if.end6556_crit_edge:                  ; preds = %if.end6517
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6556

do.end6550:                                       ; preds = %if.end6517
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end6556

if.end6556:                                       ; preds = %do.end6550, %if.end6517.if.end6556_crit_edge
  %525 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6581 = getelementptr i32, ptr %526, i32 1
  store ptr %incdec.ptr6581, ptr %cur.i, align 4
  %527 = ptrtoint ptr %526 to i32
  call void @__asan_store4_noabort(i32 %527)
  store i32 %517, ptr %526, align 4
  %528 = ptrtoint ptr %handle1632 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %handle1632, align 4
  %530 = load ptr, ptr %cur.i, align 4
  %531 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %seg.i, align 8
  %cmp6595.not = icmp ult ptr %530, %532
  br i1 %cmp6595.not, label %if.end6556.if.end6620_crit_edge, label %do.end6614, !prof !37

if.end6556.if.end6620_crit_edge:                  ; preds = %if.end6556
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6620

do.end6614:                                       ; preds = %if.end6556
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end6620

if.end6620:                                       ; preds = %do.end6614, %if.end6556.if.end6620_crit_edge
  %533 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %cur.i, align 4
  %535 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %end.i, align 4
  %cmp6634.not = icmp ult ptr %534, %536
  br i1 %cmp6634.not, label %if.end6620.if.end6659_crit_edge, label %do.end6653, !prof !37

if.end6620.if.end6659_crit_edge:                  ; preds = %if.end6620
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6659

do.end6653:                                       ; preds = %if.end6620
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end6659

if.end6659:                                       ; preds = %do.end6653, %if.end6620.if.end6659_crit_edge
  %537 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6684 = getelementptr i32, ptr %538, i32 1
  store ptr %incdec.ptr6684, ptr %cur.i, align 4
  %539 = ptrtoint ptr %538 to i32
  call void @__asan_store4_noabort(i32 %539)
  store i32 %529, ptr %538, align 4
  %540 = load ptr, ptr %cur.i, align 4
  %541 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %seg.i, align 8
  %cmp6785.not = icmp ult ptr %540, %542
  br i1 %cmp6785.not, label %if.end6659.if.end6810_crit_edge, label %do.end6804, !prof !37

if.end6659.if.end6810_crit_edge:                  ; preds = %if.end6659
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6810

do.end6804:                                       ; preds = %if.end6659
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end6810

if.end6810:                                       ; preds = %do.end6804, %if.end6659.if.end6810_crit_edge
  %543 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %cur.i, align 4
  %545 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %end.i, align 4
  %cmp6824.not = icmp ult ptr %544, %546
  br i1 %cmp6824.not, label %if.end6810.if.end6849_crit_edge, label %do.end6843, !prof !37

if.end6810.if.end6849_crit_edge:                  ; preds = %if.end6810
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6849

do.end6843:                                       ; preds = %if.end6810
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end6849

if.end6849:                                       ; preds = %do.end6843, %if.end6810.if.end6849_crit_edge
  %547 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6874 = getelementptr i32, ptr %548, i32 1
  store ptr %incdec.ptr6874, ptr %cur.i, align 4
  %549 = ptrtoint ptr %548 to i32
  call void @__asan_store4_noabort(i32 %549)
  store i32 287492, ptr %548, align 4
  %550 = load ptr, ptr %cur.i, align 4
  %551 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %seg.i, align 8
  %cmp6886.not = icmp ult ptr %550, %552
  br i1 %cmp6886.not, label %if.end6849.if.end6911_crit_edge, label %do.end6905, !prof !37

if.end6849.if.end6911_crit_edge:                  ; preds = %if.end6849
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6911

do.end6905:                                       ; preds = %if.end6849
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end6911

if.end6911:                                       ; preds = %do.end6905, %if.end6849.if.end6911_crit_edge
  %553 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %cur.i, align 4
  %555 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %end.i, align 4
  %cmp6925.not = icmp ult ptr %554, %556
  br i1 %cmp6925.not, label %if.end6911.if.end6950_crit_edge, label %do.end6944, !prof !37

if.end6911.if.end6950_crit_edge:                  ; preds = %if.end6911
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6950

do.end6944:                                       ; preds = %if.end6911
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end6950

if.end6950:                                       ; preds = %do.end6944, %if.end6911.if.end6950_crit_edge
  %557 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6975 = getelementptr i32, ptr %558, i32 1
  store ptr %incdec.ptr6975, ptr %cur.i, align 4
  %559 = ptrtoint ptr %558 to i32
  call void @__asan_store4_noabort(i32 %559)
  store i32 1, ptr %558, align 4
  %560 = load ptr, ptr %cur.i, align 4
  %561 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %seg.i, align 8
  %cmp7076.not = icmp ult ptr %560, %562
  br i1 %cmp7076.not, label %if.end6950.if.end7101_crit_edge, label %do.end7095, !prof !37

if.end6950.if.end7101_crit_edge:                  ; preds = %if.end6950
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7101

do.end7095:                                       ; preds = %if.end6950
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 251, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end7101

if.end7101:                                       ; preds = %do.end7095, %if.end6950.if.end7101_crit_edge
  %563 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %cur.i, align 4
  %565 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %end.i, align 4
  %cmp7115.not = icmp ult ptr %564, %566
  br i1 %cmp7115.not, label %if.end7101.if.end7140_crit_edge, label %do.end7134, !prof !37

if.end7101.if.end7140_crit_edge:                  ; preds = %if.end7101
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7140

do.end7134:                                       ; preds = %if.end7101
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 251, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end7140

if.end7140:                                       ; preds = %do.end7134, %if.end7101.if.end7140_crit_edge
  %567 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %cur.i, align 4
  %incdec.ptr7165 = getelementptr i32, ptr %568, i32 1
  store ptr %incdec.ptr7165, ptr %cur.i, align 4
  %569 = ptrtoint ptr %568 to i32
  call void @__asan_store4_noabort(i32 %569)
  store i32 287488, ptr %568, align 4
  %570 = load ptr, ptr %cur.i, align 4
  %571 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %seg.i, align 8
  %cmp7177.not = icmp ult ptr %570, %572
  br i1 %cmp7177.not, label %if.end7140.if.end7202_crit_edge, label %do.end7196, !prof !37

if.end7140.if.end7202_crit_edge:                  ; preds = %if.end7140
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7202

do.end7196:                                       ; preds = %if.end7140
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 251, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end7202

if.end7202:                                       ; preds = %do.end7196, %if.end7140.if.end7202_crit_edge
  %573 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %cur.i, align 4
  %575 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %end.i, align 4
  %cmp7216.not = icmp ult ptr %574, %576
  br i1 %cmp7216.not, label %if.end7202.if.end7241_crit_edge, label %do.end7235, !prof !37

if.end7202.if.end7241_crit_edge:                  ; preds = %if.end7202
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7241

do.end7235:                                       ; preds = %if.end7202
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 251, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end7241

if.end7241:                                       ; preds = %do.end7235, %if.end7202.if.end7241_crit_edge
  %577 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %cur.i, align 4
  %incdec.ptr7266 = getelementptr i32, ptr %578, i32 1
  store ptr %incdec.ptr7266, ptr %cur.i, align 4
  %579 = ptrtoint ptr %578 to i32
  call void @__asan_store4_noabort(i32 %579)
  store i32 %pattern_fmt.0, ptr %578, align 4
  %580 = load ptr, ptr %cur.i, align 4
  %581 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %seg.i, align 8
  %cmp7367.not = icmp ult ptr %580, %582
  br i1 %cmp7367.not, label %if.end7241.if.end7392_crit_edge, label %do.end7386, !prof !37

if.end7241.if.end7392_crit_edge:                  ; preds = %if.end7241
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7392

do.end7386:                                       ; preds = %if.end7241
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end7392

if.end7392:                                       ; preds = %do.end7386, %if.end7241.if.end7392_crit_edge
  %583 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %cur.i, align 4
  %585 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %end.i, align 4
  %cmp7406.not = icmp ult ptr %584, %586
  br i1 %cmp7406.not, label %if.end7392.if.end7431_crit_edge, label %do.end7425, !prof !37

if.end7392.if.end7431_crit_edge:                  ; preds = %if.end7392
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7431

do.end7425:                                       ; preds = %if.end7392
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end7431

if.end7431:                                       ; preds = %do.end7425, %if.end7392.if.end7431_crit_edge
  %587 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %cur.i, align 4
  %incdec.ptr7456 = getelementptr i32, ptr %588, i32 1
  store ptr %incdec.ptr7456, ptr %cur.i, align 4
  %589 = ptrtoint ptr %588 to i32
  call void @__asan_store4_noabort(i32 %589)
  store i32 287484, ptr %588, align 4
  %590 = load ptr, ptr %cur.i, align 4
  %591 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %seg.i, align 8
  %cmp7468.not = icmp ult ptr %590, %592
  br i1 %cmp7468.not, label %if.end7431.if.end7493_crit_edge, label %do.end7487, !prof !37

if.end7431.if.end7493_crit_edge:                  ; preds = %if.end7431
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7493

do.end7487:                                       ; preds = %if.end7431
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end7493

if.end7493:                                       ; preds = %do.end7487, %if.end7431.if.end7493_crit_edge
  %593 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %cur.i, align 4
  %595 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %end.i, align 4
  %cmp7507.not = icmp ult ptr %594, %596
  br i1 %cmp7507.not, label %if.end7493.if.end7532_crit_edge, label %do.end7526, !prof !37

if.end7493.if.end7532_crit_edge:                  ; preds = %if.end7493
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7532

do.end7526:                                       ; preds = %if.end7493
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end7532

if.end7532:                                       ; preds = %do.end7526, %if.end7493.if.end7532_crit_edge
  %597 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %cur.i, align 4
  %incdec.ptr7557 = getelementptr i32, ptr %598, i32 1
  store ptr %incdec.ptr7557, ptr %cur.i, align 4
  %599 = ptrtoint ptr %598 to i32
  call void @__asan_store4_noabort(i32 %599)
  store i32 3, ptr %598, align 4
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 1
  %600 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %kick.i, align 4
  tail call void %601(ptr noundef %9) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end7532, %if.then52, %if.end33.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.epilog10.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then52 ], [ 0, %if.end7532 ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call13, %sw.epilog10.cleanup_crit_edge ], [ %call15, %if.end.cleanup_crit_edge ], [ %call20, %if.end18.cleanup_crit_edge ], [ %call25, %if.end23.cleanup_crit_edge ], [ %call30, %if.end28.cleanup_crit_edge ], [ %call40, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fbcon_gpu_lockup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nv04_fbcon.c", i32 44, i32 2}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/nv04_fbcon.c", i32 105, i32 2}
!11 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.12, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nv04_fbcon.c", i32 171, i32 38}
!16 = !{ptr @.str.13, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nv04_fbcon.c", i32 177, i32 38}
!18 = !{ptr @.str.14, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nv04_fbcon.c", i32 182, i32 38}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nv04_fbcon.c", i32 187, i32 38}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nv04_fbcon.c", i32 192, i32 38}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nv04_fbcon.c", i32 197, i32 38}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nv04_fbcon.c", i32 220, i32 2}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 2000, i32 1}
