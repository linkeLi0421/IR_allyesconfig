; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nv50_fbcon.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nv50_fbcon.c"
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
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.nouveau_channel = type { %struct.anon.97, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.118, i8, ptr, %struct.anon.119, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.118 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.119 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.nouveau_fbdev = type { %struct.drm_fb_helper, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, ptr, %struct.mutex, i8 }
%struct.nouveau_vma = type { ptr, i32, %struct.list_head, i64, ptr, ptr }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/nouveau/nv50_fbcon.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fbconTwoD\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 8, i64 15, i64 16, i64 32]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 8]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 55, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [40 x i8] c"../drivers/gpu/drm/nouveau/nv50_fbcon.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 197, i32 38 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.9], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_fbcon_fillrect(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %rect) local_unnamed_addr #0 align 64 {
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
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %10 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %visual, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.else [
    i32 2, label %entry.if.then_crit_edge
    i32 4, label %entry.if.then_crit_edge1669
  ]

entry.if.then_crit_edge1669:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge1669
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %13 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pseudo_palette, align 4
  %color = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %15 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %color, align 4
  %arrayidx = getelementptr i32, ptr %14, i32 %16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %color6 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %colour.0.in = phi ptr [ %arrayidx, %if.then ], [ %color6, %if.else ]
  %17 = ptrtoint ptr %colour.0.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %colour.0 = load i32, ptr %colour.0.in, align 4
  %rop = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 5
  %18 = ptrtoint ptr %rop to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp7 = icmp eq i32 %19, 0
  %cond = select i1 %cmp7, i32 7, i32 11
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 4
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %21, i32 %cond
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 6
  %22 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %23
  br i1 %cmp.not.i, label %if.end.if.end10_crit_edge, label %if.then.i

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then.i:                                        ; preds = %if.end
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %9, align 8
  %call.i = tail call i32 %25(ptr noundef %9, i32 noundef %cond) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end10_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i.if.end10_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.end10:                                         ; preds = %if.then.i.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %26 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %27, i32 %cond
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 5
  %28 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %29 = ptrtoint ptr %rop to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp12.not = icmp eq i32 %30, 0
  br i1 %cmp12.not, label %if.end10.if.end356_crit_edge, label %if.end84

if.end10.if.end356_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end356

if.end84:                                         ; preds = %if.end10
  %31 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur.i, align 4
  %33 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %seg.i, align 8
  %cmp97.not = icmp ult ptr %32, %34
  br i1 %cmp97.not, label %if.end84.if.end121_crit_edge, label %do.end115, !prof !24

if.end84.if.end121_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end121

do.end115:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end121

if.end121:                                        ; preds = %do.end115, %if.end84.if.end121_crit_edge
  %35 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %end.i, align 4
  %cmp134.not = icmp ult ptr %36, %38
  br i1 %cmp134.not, label %if.end121.if.end158_crit_edge, label %do.end152, !prof !24

if.end121.if.end158_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end158

do.end152:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end158

if.end158:                                        ; preds = %do.end152, %if.end121.if.end158_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %40, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 287404, ptr %40, align 4
  %42 = load ptr, ptr %cur.i, align 4
  %43 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %seg.i, align 8
  %cmp184.not = icmp ult ptr %42, %44
  br i1 %cmp184.not, label %if.end158.if.end208_crit_edge, label %do.end202, !prof !24

if.end158.if.end208_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end208

do.end202:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end208

if.end208:                                        ; preds = %do.end202, %if.end158.if.end208_crit_edge
  %45 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i, align 4
  %47 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i, align 4
  %cmp222.not = icmp ult ptr %46, %48
  br i1 %cmp222.not, label %if.end208.if.end246_crit_edge, label %do.end240, !prof !24

if.end208.if.end246_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end246

do.end240:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end246

if.end246:                                        ; preds = %do.end240, %if.end208.if.end246_crit_edge
  %49 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cur.i, align 4
  %incdec.ptr271 = getelementptr i32, ptr %50, i32 1
  store ptr %incdec.ptr271, ptr %cur.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %50, align 4
  br label %if.end356

if.end356:                                        ; preds = %if.end246, %if.end10.if.end356_crit_edge
  %52 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cur.i, align 4
  %54 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %seg.i, align 8
  %cmp373.not = icmp ult ptr %53, %55
  br i1 %cmp373.not, label %if.end356.if.end397_crit_edge, label %do.end391, !prof !24

if.end356.if.end397_crit_edge:                    ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end397

do.end391:                                        ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end397

if.end397:                                        ; preds = %do.end391, %if.end356.if.end397_crit_edge
  %56 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cur.i, align 4
  %58 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %end.i, align 4
  %cmp411.not = icmp ult ptr %57, %59
  br i1 %cmp411.not, label %if.end397.if.end435_crit_edge, label %do.end429, !prof !24

if.end397.if.end435_crit_edge:                    ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end435

do.end429:                                        ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end435

if.end435:                                        ; preds = %do.end429, %if.end397.if.end435_crit_edge
  %60 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cur.i, align 4
  %incdec.ptr460 = getelementptr i32, ptr %61, i32 1
  store ptr %incdec.ptr460, ptr %cur.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 288136, ptr %61, align 4
  %63 = load ptr, ptr %cur.i, align 4
  %64 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %seg.i, align 8
  %cmp472.not = icmp ult ptr %63, %65
  br i1 %cmp472.not, label %if.end435.if.end496_crit_edge, label %do.end490, !prof !24

if.end435.if.end496_crit_edge:                    ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end496

do.end490:                                        ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end496

if.end496:                                        ; preds = %do.end490, %if.end435.if.end496_crit_edge
  %66 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cur.i, align 4
  %68 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %end.i, align 4
  %cmp510.not = icmp ult ptr %67, %69
  br i1 %cmp510.not, label %if.end496.if.end534_crit_edge, label %do.end528, !prof !24

if.end496.if.end534_crit_edge:                    ; preds = %if.end496
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end534

do.end528:                                        ; preds = %if.end496
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end534

if.end534:                                        ; preds = %do.end528, %if.end496.if.end534_crit_edge
  %70 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cur.i, align 4
  %incdec.ptr559 = getelementptr i32, ptr %71, i32 1
  store ptr %incdec.ptr559, ptr %cur.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %colour.0, ptr %71, align 4
  %73 = load ptr, ptr %cur.i, align 4
  %74 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %seg.i, align 8
  %cmp750.not = icmp ult ptr %73, %75
  br i1 %cmp750.not, label %if.end534.if.end774_crit_edge, label %do.end768, !prof !24

if.end534.if.end774_crit_edge:                    ; preds = %if.end534
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end774

do.end768:                                        ; preds = %if.end534
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end774

if.end774:                                        ; preds = %do.end768, %if.end534.if.end774_crit_edge
  %76 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cur.i, align 4
  %78 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %end.i, align 4
  %cmp788.not = icmp ult ptr %77, %79
  br i1 %cmp788.not, label %if.end774.if.end812_crit_edge, label %do.end806, !prof !24

if.end774.if.end812_crit_edge:                    ; preds = %if.end774
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end812

do.end806:                                        ; preds = %if.end774
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end812

if.end812:                                        ; preds = %do.end806, %if.end774.if.end812_crit_edge
  %80 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cur.i, align 4
  %incdec.ptr837 = getelementptr i32, ptr %81, i32 1
  store ptr %incdec.ptr837, ptr %cur.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1074688, ptr %81, align 4
  %83 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rect, align 4
  %85 = load ptr, ptr %cur.i, align 4
  %86 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %seg.i, align 8
  %cmp849.not = icmp ult ptr %85, %87
  br i1 %cmp849.not, label %if.end812.if.end873_crit_edge, label %do.end867, !prof !24

if.end812.if.end873_crit_edge:                    ; preds = %if.end812
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end873

do.end867:                                        ; preds = %if.end812
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end873

if.end873:                                        ; preds = %do.end867, %if.end812.if.end873_crit_edge
  %88 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cur.i, align 4
  %90 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %end.i, align 4
  %cmp887.not = icmp ult ptr %89, %91
  br i1 %cmp887.not, label %if.end873.if.end911_crit_edge, label %do.end905, !prof !24

if.end873.if.end911_crit_edge:                    ; preds = %if.end873
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end911

do.end905:                                        ; preds = %if.end873
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end911

if.end911:                                        ; preds = %do.end905, %if.end873.if.end911_crit_edge
  %92 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cur.i, align 4
  %incdec.ptr936 = getelementptr i32, ptr %93, i32 1
  store ptr %incdec.ptr936, ptr %cur.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %84, ptr %93, align 4
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %95 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dy, align 4
  %97 = load ptr, ptr %cur.i, align 4
  %98 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %seg.i, align 8
  %cmp948.not = icmp ult ptr %97, %99
  br i1 %cmp948.not, label %if.end911.if.end972_crit_edge, label %do.end966, !prof !24

if.end911.if.end972_crit_edge:                    ; preds = %if.end911
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end972

do.end966:                                        ; preds = %if.end911
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end972

if.end972:                                        ; preds = %do.end966, %if.end911.if.end972_crit_edge
  %100 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur.i, align 4
  %102 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %end.i, align 4
  %cmp986.not = icmp ult ptr %101, %103
  br i1 %cmp986.not, label %if.end972.if.end1010_crit_edge, label %do.end1004, !prof !24

if.end972.if.end1010_crit_edge:                   ; preds = %if.end972
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1010

do.end1004:                                       ; preds = %if.end972
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1010

if.end1010:                                       ; preds = %do.end1004, %if.end972.if.end1010_crit_edge
  %104 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1035 = getelementptr i32, ptr %105, i32 1
  store ptr %incdec.ptr1035, ptr %cur.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %96, ptr %105, align 4
  %107 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rect, align 4
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %109 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %width, align 4
  %add = add i32 %110, %108
  %111 = load ptr, ptr %cur.i, align 4
  %112 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %seg.i, align 8
  %cmp1048.not = icmp ult ptr %111, %113
  br i1 %cmp1048.not, label %if.end1010.if.end1072_crit_edge, label %do.end1066, !prof !24

if.end1010.if.end1072_crit_edge:                  ; preds = %if.end1010
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1072

do.end1066:                                       ; preds = %if.end1010
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1072

if.end1072:                                       ; preds = %do.end1066, %if.end1010.if.end1072_crit_edge
  %114 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cur.i, align 4
  %116 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %end.i, align 4
  %cmp1086.not = icmp ult ptr %115, %117
  br i1 %cmp1086.not, label %if.end1072.if.end1110_crit_edge, label %do.end1104, !prof !24

if.end1072.if.end1110_crit_edge:                  ; preds = %if.end1072
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1110

do.end1104:                                       ; preds = %if.end1072
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1110

if.end1110:                                       ; preds = %do.end1104, %if.end1072.if.end1110_crit_edge
  %118 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1135 = getelementptr i32, ptr %119, i32 1
  store ptr %incdec.ptr1135, ptr %cur.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %add, ptr %119, align 4
  %121 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %dy, align 4
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %123 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %height, align 4
  %add1144 = add i32 %124, %122
  %125 = load ptr, ptr %cur.i, align 4
  %126 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %seg.i, align 8
  %cmp1149.not = icmp ult ptr %125, %127
  br i1 %cmp1149.not, label %if.end1110.if.end1173_crit_edge, label %do.end1167, !prof !24

if.end1110.if.end1173_crit_edge:                  ; preds = %if.end1110
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1173

do.end1167:                                       ; preds = %if.end1110
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1173

if.end1173:                                       ; preds = %do.end1167, %if.end1110.if.end1173_crit_edge
  %128 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cur.i, align 4
  %130 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %end.i, align 4
  %cmp1187.not = icmp ult ptr %129, %131
  br i1 %cmp1187.not, label %if.end1173.if.end1211_crit_edge, label %do.end1205, !prof !24

if.end1173.if.end1211_crit_edge:                  ; preds = %if.end1173
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1211

do.end1205:                                       ; preds = %if.end1173
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1211

if.end1211:                                       ; preds = %do.end1205, %if.end1173.if.end1211_crit_edge
  %132 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1236 = getelementptr i32, ptr %133, i32 1
  store ptr %incdec.ptr1236, ptr %cur.i, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %add1144, ptr %133, align 4
  %135 = ptrtoint ptr %rop to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp1242.not = icmp eq i32 %136, 0
  br i1 %cmp1242.not, label %if.end1211.if.end1531_crit_edge, label %if.end1323

if.end1211.if.end1531_crit_edge:                  ; preds = %if.end1211
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1531

if.end1323:                                       ; preds = %if.end1211
  %137 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cur.i, align 4
  %139 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %seg.i, align 8
  %cmp1340.not = icmp ult ptr %138, %140
  br i1 %cmp1340.not, label %if.end1323.if.end1364_crit_edge, label %do.end1358, !prof !24

if.end1323.if.end1364_crit_edge:                  ; preds = %if.end1323
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1364

do.end1358:                                       ; preds = %if.end1323
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1364

if.end1364:                                       ; preds = %do.end1358, %if.end1323.if.end1364_crit_edge
  %141 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cur.i, align 4
  %143 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %end.i, align 4
  %cmp1378.not = icmp ult ptr %142, %144
  br i1 %cmp1378.not, label %if.end1364.if.end1402_crit_edge, label %do.end1396, !prof !24

if.end1364.if.end1402_crit_edge:                  ; preds = %if.end1364
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1402

do.end1396:                                       ; preds = %if.end1364
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1402

if.end1402:                                       ; preds = %do.end1396, %if.end1364.if.end1402_crit_edge
  %145 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1427 = getelementptr i32, ptr %146, i32 1
  store ptr %incdec.ptr1427, ptr %cur.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 287404, ptr %146, align 4
  %148 = load ptr, ptr %cur.i, align 4
  %149 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %seg.i, align 8
  %cmp1439.not = icmp ult ptr %148, %150
  br i1 %cmp1439.not, label %if.end1402.if.end1463_crit_edge, label %do.end1457, !prof !24

if.end1402.if.end1463_crit_edge:                  ; preds = %if.end1402
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1463

do.end1457:                                       ; preds = %if.end1402
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1463

if.end1463:                                       ; preds = %do.end1457, %if.end1402.if.end1463_crit_edge
  %151 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cur.i, align 4
  %153 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %end.i, align 4
  %cmp1477.not = icmp ult ptr %152, %154
  br i1 %cmp1477.not, label %if.end1463.if.end1501_crit_edge, label %do.end1495, !prof !24

if.end1463.if.end1501_crit_edge:                  ; preds = %if.end1463
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1501

do.end1495:                                       ; preds = %if.end1463
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1501

if.end1501:                                       ; preds = %do.end1495, %if.end1463.if.end1501_crit_edge
  %155 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1526 = getelementptr i32, ptr %156, i32 1
  store ptr %incdec.ptr1526, ptr %cur.i, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 3, ptr %156, align 4
  br label %if.end1531

if.end1531:                                       ; preds = %if.end1501, %if.end1211.if.end1531_crit_edge
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 1
  %158 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %kick.i, align 4
  tail call void %159(ptr noundef %9) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end1531, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1531 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_fbcon_copyarea(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %region) local_unnamed_addr #0 align 64 {
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
  %add.ptr.i = getelementptr i32, ptr %11, i32 12
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
  %call.i = tail call i32 %15(ptr noundef %9, i32 noundef 12) #3
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
  %add.ptr4.i = getelementptr i32, ptr %17, i32 12
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 5
  %18 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %17, %add.ptr4.i
  br i1 %cmp.not, label %if.end74.if.end110_crit_edge, label %do.end104, !prof !24

if.end74.if.end110_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end110

do.end104:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end110

if.end110:                                        ; preds = %do.end104, %if.end74.if.end110_crit_edge
  %19 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cur.i, align 4
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i, align 4
  %cmp123.not = icmp ult ptr %20, %22
  br i1 %cmp123.not, label %if.end110.if.end147_crit_edge, label %do.end141, !prof !24

if.end110.if.end147_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end147

do.end141:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end147

if.end147:                                        ; preds = %do.end141, %if.end110.if.end147_crit_edge
  %23 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 286992, ptr %24, align 4
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp173.not = icmp ult ptr %26, %28
  br i1 %cmp173.not, label %if.end147.if.end197_crit_edge, label %do.end191, !prof !24

if.end147.if.end197_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end197

do.end191:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end197

if.end197:                                        ; preds = %do.end191, %if.end147.if.end197_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp211.not = icmp ult ptr %30, %32
  br i1 %cmp211.not, label %if.end197.if.end235_crit_edge, label %do.end229, !prof !24

if.end197.if.end235_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end235

do.end229:                                        ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end235

if.end235:                                        ; preds = %do.end229, %if.end197.if.end235_crit_edge
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr260 = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr260, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %34, align 4
  %36 = load ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %seg.i, align 8
  %cmp451.not = icmp ult ptr %36, %38
  br i1 %cmp451.not, label %if.end235.if.end475_crit_edge, label %do.end469, !prof !24

if.end235.if.end475_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end475

do.end469:                                        ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end475

if.end475:                                        ; preds = %do.end469, %if.end235.if.end475_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %cmp489.not = icmp ult ptr %40, %42
  br i1 %cmp489.not, label %if.end475.if.end513_crit_edge, label %do.end507, !prof !24

if.end475.if.end513_crit_edge:                    ; preds = %if.end475
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end513

do.end507:                                        ; preds = %if.end475
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end513

if.end513:                                        ; preds = %do.end507, %if.end475.if.end513_crit_edge
  %43 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur.i, align 4
  %incdec.ptr538 = getelementptr i32, ptr %44, i32 1
  store ptr %incdec.ptr538, ptr %cur.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1075376, ptr %44, align 4
  %46 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %region, align 4
  %48 = load ptr, ptr %cur.i, align 4
  %49 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %seg.i, align 8
  %cmp550.not = icmp ult ptr %48, %50
  br i1 %cmp550.not, label %if.end513.if.end574_crit_edge, label %do.end568, !prof !24

if.end513.if.end574_crit_edge:                    ; preds = %if.end513
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end574

do.end568:                                        ; preds = %if.end513
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end574

if.end574:                                        ; preds = %do.end568, %if.end513.if.end574_crit_edge
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %end.i, align 4
  %cmp588.not = icmp ult ptr %52, %54
  br i1 %cmp588.not, label %if.end574.if.end612_crit_edge, label %do.end606, !prof !24

if.end574.if.end612_crit_edge:                    ; preds = %if.end574
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end612

do.end606:                                        ; preds = %if.end574
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end612

if.end612:                                        ; preds = %do.end606, %if.end574.if.end612_crit_edge
  %55 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cur.i, align 4
  %incdec.ptr637 = getelementptr i32, ptr %56, i32 1
  store ptr %incdec.ptr637, ptr %cur.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %47, ptr %56, align 4
  %dy = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 1
  %58 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dy, align 4
  %60 = load ptr, ptr %cur.i, align 4
  %61 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %seg.i, align 8
  %cmp649.not = icmp ult ptr %60, %62
  br i1 %cmp649.not, label %if.end612.if.end673_crit_edge, label %do.end667, !prof !24

if.end612.if.end673_crit_edge:                    ; preds = %if.end612
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end673

do.end667:                                        ; preds = %if.end612
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end673

if.end673:                                        ; preds = %do.end667, %if.end612.if.end673_crit_edge
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %65 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %end.i, align 4
  %cmp687.not = icmp ult ptr %64, %66
  br i1 %cmp687.not, label %if.end673.if.end711_crit_edge, label %do.end705, !prof !24

if.end673.if.end711_crit_edge:                    ; preds = %if.end673
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end711

do.end705:                                        ; preds = %if.end673
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end711

if.end711:                                        ; preds = %do.end705, %if.end673.if.end711_crit_edge
  %67 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cur.i, align 4
  %incdec.ptr736 = getelementptr i32, ptr %68, i32 1
  store ptr %incdec.ptr736, ptr %cur.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %59, ptr %68, align 4
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 2
  %70 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %width, align 4
  %72 = load ptr, ptr %cur.i, align 4
  %73 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %seg.i, align 8
  %cmp748.not = icmp ult ptr %72, %74
  br i1 %cmp748.not, label %if.end711.if.end772_crit_edge, label %do.end766, !prof !24

if.end711.if.end772_crit_edge:                    ; preds = %if.end711
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end772

do.end766:                                        ; preds = %if.end711
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end772

if.end772:                                        ; preds = %do.end766, %if.end711.if.end772_crit_edge
  %75 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cur.i, align 4
  %77 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %end.i, align 4
  %cmp786.not = icmp ult ptr %76, %78
  br i1 %cmp786.not, label %if.end772.if.end810_crit_edge, label %do.end804, !prof !24

if.end772.if.end810_crit_edge:                    ; preds = %if.end772
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end810

do.end804:                                        ; preds = %if.end772
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end810

if.end810:                                        ; preds = %do.end804, %if.end772.if.end810_crit_edge
  %79 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur.i, align 4
  %incdec.ptr835 = getelementptr i32, ptr %80, i32 1
  store ptr %incdec.ptr835, ptr %cur.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %71, ptr %80, align 4
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 3
  %82 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %height, align 4
  %84 = load ptr, ptr %cur.i, align 4
  %85 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %seg.i, align 8
  %cmp847.not = icmp ult ptr %84, %86
  br i1 %cmp847.not, label %if.end810.if.end871_crit_edge, label %do.end865, !prof !24

if.end810.if.end871_crit_edge:                    ; preds = %if.end810
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end871

do.end865:                                        ; preds = %if.end810
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end871

if.end871:                                        ; preds = %do.end865, %if.end810.if.end871_crit_edge
  %87 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cur.i, align 4
  %89 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %end.i, align 4
  %cmp885.not = icmp ult ptr %88, %90
  br i1 %cmp885.not, label %if.end871.if.end909_crit_edge, label %do.end903, !prof !24

if.end871.if.end909_crit_edge:                    ; preds = %if.end871
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end909

do.end903:                                        ; preds = %if.end871
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end909

if.end909:                                        ; preds = %do.end903, %if.end871.if.end909_crit_edge
  %91 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cur.i, align 4
  %incdec.ptr934 = getelementptr i32, ptr %92, i32 1
  store ptr %incdec.ptr934, ptr %cur.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %83, ptr %92, align 4
  %94 = load ptr, ptr %cur.i, align 4
  %95 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %seg.i, align 8
  %cmp1125.not = icmp ult ptr %94, %96
  br i1 %cmp1125.not, label %if.end909.if.end1149_crit_edge, label %do.end1143, !prof !24

if.end909.if.end1149_crit_edge:                   ; preds = %if.end909
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1149

do.end1143:                                       ; preds = %if.end909
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1149

if.end1149:                                       ; preds = %do.end1143, %if.end909.if.end1149_crit_edge
  %97 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cur.i, align 4
  %99 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %end.i, align 4
  %cmp1163.not = icmp ult ptr %98, %100
  br i1 %cmp1163.not, label %if.end1149.if.end1187_crit_edge, label %do.end1181, !prof !24

if.end1149.if.end1187_crit_edge:                  ; preds = %if.end1149
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1187

do.end1181:                                       ; preds = %if.end1149
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1187

if.end1187:                                       ; preds = %do.end1181, %if.end1149.if.end1187_crit_edge
  %101 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1212 = getelementptr i32, ptr %102, i32 1
  store ptr %incdec.ptr1212, ptr %cur.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1075408, ptr %102, align 4
  %104 = load ptr, ptr %cur.i, align 4
  %105 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %seg.i, align 8
  %cmp1224.not = icmp ult ptr %104, %106
  br i1 %cmp1224.not, label %if.end1187.if.end1248_crit_edge, label %do.end1242, !prof !24

if.end1187.if.end1248_crit_edge:                  ; preds = %if.end1187
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1248

do.end1242:                                       ; preds = %if.end1187
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1248

if.end1248:                                       ; preds = %do.end1242, %if.end1187.if.end1248_crit_edge
  %107 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cur.i, align 4
  %109 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %end.i, align 4
  %cmp1262.not = icmp ult ptr %108, %110
  br i1 %cmp1262.not, label %if.end1248.if.end1286_crit_edge, label %do.end1280, !prof !24

if.end1248.if.end1286_crit_edge:                  ; preds = %if.end1248
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1286

do.end1280:                                       ; preds = %if.end1248
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1286

if.end1286:                                       ; preds = %do.end1280, %if.end1248.if.end1286_crit_edge
  %111 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1311 = getelementptr i32, ptr %112, i32 1
  store ptr %incdec.ptr1311, ptr %cur.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %112, align 4
  %sx = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 4
  %114 = ptrtoint ptr %sx to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sx, align 4
  %116 = load ptr, ptr %cur.i, align 4
  %117 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %seg.i, align 8
  %cmp1323.not = icmp ult ptr %116, %118
  br i1 %cmp1323.not, label %if.end1286.if.end1347_crit_edge, label %do.end1341, !prof !24

if.end1286.if.end1347_crit_edge:                  ; preds = %if.end1286
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1347

do.end1341:                                       ; preds = %if.end1286
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1347

if.end1347:                                       ; preds = %do.end1341, %if.end1286.if.end1347_crit_edge
  %119 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cur.i, align 4
  %121 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %end.i, align 4
  %cmp1361.not = icmp ult ptr %120, %122
  br i1 %cmp1361.not, label %if.end1347.if.end1385_crit_edge, label %do.end1379, !prof !24

if.end1347.if.end1385_crit_edge:                  ; preds = %if.end1347
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1385

do.end1379:                                       ; preds = %if.end1347
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1385

if.end1385:                                       ; preds = %do.end1379, %if.end1347.if.end1385_crit_edge
  %123 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1410 = getelementptr i32, ptr %124, i32 1
  store ptr %incdec.ptr1410, ptr %cur.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %115, ptr %124, align 4
  %126 = load ptr, ptr %cur.i, align 4
  %127 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %seg.i, align 8
  %cmp1422.not = icmp ult ptr %126, %128
  br i1 %cmp1422.not, label %if.end1385.if.end1446_crit_edge, label %do.end1440, !prof !24

if.end1385.if.end1446_crit_edge:                  ; preds = %if.end1385
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1446

do.end1440:                                       ; preds = %if.end1385
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1446

if.end1446:                                       ; preds = %do.end1440, %if.end1385.if.end1446_crit_edge
  %129 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cur.i, align 4
  %131 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %end.i, align 4
  %cmp1460.not = icmp ult ptr %130, %132
  br i1 %cmp1460.not, label %if.end1446.if.end1484_crit_edge, label %do.end1478, !prof !24

if.end1446.if.end1484_crit_edge:                  ; preds = %if.end1446
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1484

do.end1478:                                       ; preds = %if.end1446
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1484

if.end1484:                                       ; preds = %do.end1478, %if.end1446.if.end1484_crit_edge
  %133 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1509 = getelementptr i32, ptr %134, i32 1
  store ptr %incdec.ptr1509, ptr %cur.i, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %134, align 4
  %sy = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 5
  %136 = ptrtoint ptr %sy to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %sy, align 4
  %138 = load ptr, ptr %cur.i, align 4
  %139 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %seg.i, align 8
  %cmp1521.not = icmp ult ptr %138, %140
  br i1 %cmp1521.not, label %if.end1484.if.end1545_crit_edge, label %do.end1539, !prof !24

if.end1484.if.end1545_crit_edge:                  ; preds = %if.end1484
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1545

do.end1539:                                       ; preds = %if.end1484
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1545

if.end1545:                                       ; preds = %do.end1539, %if.end1484.if.end1545_crit_edge
  %141 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cur.i, align 4
  %143 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %end.i, align 4
  %cmp1559.not = icmp ult ptr %142, %144
  br i1 %cmp1559.not, label %if.end1545.if.end1583_crit_edge, label %do.end1577, !prof !24

if.end1545.if.end1583_crit_edge:                  ; preds = %if.end1545
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1583

do.end1577:                                       ; preds = %if.end1545
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1583

if.end1583:                                       ; preds = %do.end1577, %if.end1545.if.end1583_crit_edge
  %145 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1608 = getelementptr i32, ptr %146, i32 1
  store ptr %incdec.ptr1608, ptr %cur.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %137, ptr %146, align 4
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 1
  %148 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %kick.i, align 4
  tail call void %149(ptr noundef %9) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end1583, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1583 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_fbcon_imageblit(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %image) local_unnamed_addr #0 align 64 {
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
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %12 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pseudo_palette, align 4
  %depth = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %14 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp.not = icmp eq i8 %15, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup1960_crit_edge

entry.cleanup1960_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup1960

if.end:                                           ; preds = %entry
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %16 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %visual, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %17, label %if.else [
    i32 2, label %if.end.if.then11_crit_edge
    i32 4, label %if.end.if.then11_crit_edge2179
  ]

if.end.if.then11_crit_edge2179:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11:                                        ; preds = %if.end.if.then11_crit_edge, %if.end.if.then11_crit_edge2179
  %bg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %19 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bg_color, align 4
  %arrayidx = getelementptr i32, ptr %13, i32 %20
  %fg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %21 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fg_color, align 4
  %arrayidx12 = getelementptr i32, ptr %13, i32 %22
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %bg_color14 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %fg_color15 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  %fg.0.in = phi ptr [ %arrayidx12, %if.then11 ], [ %fg_color15, %if.else ]
  %bg.0.in = phi ptr [ %arrayidx, %if.then11 ], [ %bg_color14, %if.else ]
  %23 = ptrtoint ptr %bg.0.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %bg.0 = load i32, ptr %bg.0.in, align 4
  %24 = ptrtoint ptr %fg.0.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %fg.0 = load i32, ptr %fg.0.in, align 4
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 4
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %26, i32 11
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 6
  %27 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %28
  br i1 %cmp.not.i, label %if.end16.if.end120_crit_edge, label %if.then.i

if.end16.if.end120_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end120

if.then.i:                                        ; preds = %if.end16
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %9, align 8
  %call.i = tail call i32 %30(ptr noundef %9, i32 noundef 11) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end120_crit_edge, label %if.then.i.cleanup1960_crit_edge

if.then.i.cleanup1960_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup1960

if.then.i.if.end120_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end120

if.end120:                                        ; preds = %if.then.i.if.end120_crit_edge, %if.end16.if.end120_crit_edge
  %31 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %32, i32 11
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 5
  %33 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp133.not = icmp ult ptr %32, %add.ptr4.i
  br i1 %cmp133.not, label %if.end120.if.end158_crit_edge, label %do.end152, !prof !24

if.end120.if.end158_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end158

do.end152:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end158

if.end158:                                        ; preds = %do.end152, %if.end120.if.end158_crit_edge
  %34 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cur.i, align 4
  %36 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %end.i, align 4
  %cmp171.not = icmp ult ptr %35, %37
  br i1 %cmp171.not, label %if.end158.if.end196_crit_edge, label %do.end190, !prof !24

if.end158.if.end196_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end196

do.end190:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end196

if.end196:                                        ; preds = %do.end190, %if.end158.if.end196_crit_edge
  %38 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %39, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 550932, ptr %39, align 4
  %41 = load ptr, ptr %cur.i, align 4
  %42 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %seg.i, align 8
  %cmp222.not = icmp ult ptr %41, %43
  br i1 %cmp222.not, label %if.end196.if.end247_crit_edge, label %do.end241, !prof !24

if.end196.if.end247_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end247

do.end241:                                        ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end247

if.end247:                                        ; preds = %do.end241, %if.end196.if.end247_crit_edge
  %44 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cur.i, align 4
  %46 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %end.i, align 4
  %cmp261.not = icmp ult ptr %45, %47
  br i1 %cmp261.not, label %if.end247.if.end286_crit_edge, label %do.end280, !prof !24

if.end247.if.end286_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end286

do.end280:                                        ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end286

if.end286:                                        ; preds = %do.end280, %if.end247.if.end286_crit_edge
  %48 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cur.i, align 4
  %incdec.ptr311 = getelementptr i32, ptr %49, i32 1
  store ptr %incdec.ptr311, ptr %cur.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %bg.0, ptr %49, align 4
  %51 = load ptr, ptr %cur.i, align 4
  %52 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %seg.i, align 8
  %cmp323.not = icmp ult ptr %51, %53
  br i1 %cmp323.not, label %if.end286.if.end348_crit_edge, label %do.end342, !prof !24

if.end286.if.end348_crit_edge:                    ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end348

do.end342:                                        ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end348

if.end348:                                        ; preds = %do.end342, %if.end286.if.end348_crit_edge
  %54 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cur.i, align 4
  %56 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %end.i, align 4
  %cmp362.not = icmp ult ptr %55, %57
  br i1 %cmp362.not, label %if.end348.if.end387_crit_edge, label %do.end381, !prof !24

if.end348.if.end387_crit_edge:                    ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end387

do.end381:                                        ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end387

if.end387:                                        ; preds = %do.end381, %if.end348.if.end387_crit_edge
  %58 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cur.i, align 4
  %incdec.ptr412 = getelementptr i32, ptr %59, i32 1
  store ptr %incdec.ptr412, ptr %cur.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %fg.0, ptr %59, align 4
  %61 = load ptr, ptr %cur.i, align 4
  %62 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %seg.i, align 8
  %cmp543.not = icmp ult ptr %61, %63
  br i1 %cmp543.not, label %if.end387.if.end568_crit_edge, label %do.end562, !prof !24

if.end387.if.end568_crit_edge:                    ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end568

do.end562:                                        ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end568

if.end568:                                        ; preds = %do.end562, %if.end387.if.end568_crit_edge
  %64 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur.i, align 4
  %66 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %end.i, align 4
  %cmp582.not = icmp ult ptr %65, %67
  br i1 %cmp582.not, label %if.end568.if.end607_crit_edge, label %do.end601, !prof !24

if.end568.if.end607_crit_edge:                    ; preds = %if.end568
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end607

do.end601:                                        ; preds = %if.end568
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end607

if.end607:                                        ; preds = %do.end601, %if.end568.if.end607_crit_edge
  %68 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur.i, align 4
  %incdec.ptr632 = getelementptr i32, ptr %69, i32 1
  store ptr %incdec.ptr632, ptr %cur.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 550968, ptr %69, align 4
  %width = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %71 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %width, align 4
  %73 = load ptr, ptr %cur.i, align 4
  %74 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %seg.i, align 8
  %cmp644.not = icmp ult ptr %73, %75
  br i1 %cmp644.not, label %if.end607.if.end669_crit_edge, label %do.end663, !prof !24

if.end607.if.end669_crit_edge:                    ; preds = %if.end607
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end669

do.end663:                                        ; preds = %if.end607
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end669

if.end669:                                        ; preds = %do.end663, %if.end607.if.end669_crit_edge
  %76 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cur.i, align 4
  %78 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %end.i, align 4
  %cmp683.not = icmp ult ptr %77, %79
  br i1 %cmp683.not, label %if.end669.if.end708_crit_edge, label %do.end702, !prof !24

if.end669.if.end708_crit_edge:                    ; preds = %if.end669
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end708

do.end702:                                        ; preds = %if.end669
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end708

if.end708:                                        ; preds = %do.end702, %if.end669.if.end708_crit_edge
  %80 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cur.i, align 4
  %incdec.ptr733 = getelementptr i32, ptr %81, i32 1
  store ptr %incdec.ptr733, ptr %cur.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %72, ptr %81, align 4
  %height = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %83 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %height, align 4
  %85 = load ptr, ptr %cur.i, align 4
  %86 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %seg.i, align 8
  %cmp745.not = icmp ult ptr %85, %87
  br i1 %cmp745.not, label %if.end708.if.end770_crit_edge, label %do.end764, !prof !24

if.end708.if.end770_crit_edge:                    ; preds = %if.end708
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end770

do.end764:                                        ; preds = %if.end708
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end770

if.end770:                                        ; preds = %do.end764, %if.end708.if.end770_crit_edge
  %88 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cur.i, align 4
  %90 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %end.i, align 4
  %cmp784.not = icmp ult ptr %89, %91
  br i1 %cmp784.not, label %if.end770.if.end809_crit_edge, label %do.end803, !prof !24

if.end770.if.end809_crit_edge:                    ; preds = %if.end770
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end809

do.end803:                                        ; preds = %if.end770
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end809

if.end809:                                        ; preds = %do.end803, %if.end770.if.end809_crit_edge
  %92 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cur.i, align 4
  %incdec.ptr834 = getelementptr i32, ptr %93, i32 1
  store ptr %incdec.ptr834, ptr %cur.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %84, ptr %93, align 4
  %95 = load ptr, ptr %cur.i, align 4
  %96 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %seg.i, align 8
  %cmp1025.not = icmp ult ptr %95, %97
  br i1 %cmp1025.not, label %if.end809.if.end1050_crit_edge, label %do.end1044, !prof !24

if.end809.if.end1050_crit_edge:                   ; preds = %if.end809
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1050

do.end1044:                                       ; preds = %if.end809
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1050

if.end1050:                                       ; preds = %do.end1044, %if.end809.if.end1050_crit_edge
  %98 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cur.i, align 4
  %100 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %end.i, align 4
  %cmp1064.not = icmp ult ptr %99, %101
  br i1 %cmp1064.not, label %if.end1050.if.end1089_crit_edge, label %do.end1083, !prof !24

if.end1050.if.end1089_crit_edge:                  ; preds = %if.end1050
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1089

do.end1083:                                       ; preds = %if.end1050
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1089

if.end1089:                                       ; preds = %do.end1083, %if.end1050.if.end1089_crit_edge
  %102 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1114 = getelementptr i32, ptr %103, i32 1
  store ptr %incdec.ptr1114, ptr %cur.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1075280, ptr %103, align 4
  %105 = load ptr, ptr %cur.i, align 4
  %106 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %seg.i, align 8
  %cmp1126.not = icmp ult ptr %105, %107
  br i1 %cmp1126.not, label %if.end1089.if.end1151_crit_edge, label %do.end1145, !prof !24

if.end1089.if.end1151_crit_edge:                  ; preds = %if.end1089
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1151

do.end1145:                                       ; preds = %if.end1089
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1151

if.end1151:                                       ; preds = %do.end1145, %if.end1089.if.end1151_crit_edge
  %108 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cur.i, align 4
  %110 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %end.i, align 4
  %cmp1165.not = icmp ult ptr %109, %111
  br i1 %cmp1165.not, label %if.end1151.if.end1190_crit_edge, label %do.end1184, !prof !24

if.end1151.if.end1190_crit_edge:                  ; preds = %if.end1151
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1190

do.end1184:                                       ; preds = %if.end1151
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1190

if.end1190:                                       ; preds = %do.end1184, %if.end1151.if.end1190_crit_edge
  %112 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1215 = getelementptr i32, ptr %113, i32 1
  store ptr %incdec.ptr1215, ptr %cur.i, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %113, align 4
  %115 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %image, align 4
  %117 = load ptr, ptr %cur.i, align 4
  %118 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %seg.i, align 8
  %cmp1227.not = icmp ult ptr %117, %119
  br i1 %cmp1227.not, label %if.end1190.if.end1252_crit_edge, label %do.end1246, !prof !24

if.end1190.if.end1252_crit_edge:                  ; preds = %if.end1190
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1252

do.end1246:                                       ; preds = %if.end1190
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1252

if.end1252:                                       ; preds = %do.end1246, %if.end1190.if.end1252_crit_edge
  %120 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cur.i, align 4
  %122 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %end.i, align 4
  %cmp1266.not = icmp ult ptr %121, %123
  br i1 %cmp1266.not, label %if.end1252.if.end1291_crit_edge, label %do.end1285, !prof !24

if.end1252.if.end1291_crit_edge:                  ; preds = %if.end1252
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1291

do.end1285:                                       ; preds = %if.end1252
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1291

if.end1291:                                       ; preds = %do.end1285, %if.end1252.if.end1291_crit_edge
  %124 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1316 = getelementptr i32, ptr %125, i32 1
  store ptr %incdec.ptr1316, ptr %cur.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %116, ptr %125, align 4
  %127 = load ptr, ptr %cur.i, align 4
  %128 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %seg.i, align 8
  %cmp1328.not = icmp ult ptr %127, %129
  br i1 %cmp1328.not, label %if.end1291.if.end1353_crit_edge, label %do.end1347, !prof !24

if.end1291.if.end1353_crit_edge:                  ; preds = %if.end1291
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1353

do.end1347:                                       ; preds = %if.end1291
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1353

if.end1353:                                       ; preds = %do.end1347, %if.end1291.if.end1353_crit_edge
  %130 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cur.i, align 4
  %132 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %end.i, align 4
  %cmp1367.not = icmp ult ptr %131, %133
  br i1 %cmp1367.not, label %if.end1353.if.end1392_crit_edge, label %do.end1386, !prof !24

if.end1353.if.end1392_crit_edge:                  ; preds = %if.end1353
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1392

do.end1386:                                       ; preds = %if.end1353
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1392

if.end1392:                                       ; preds = %do.end1386, %if.end1353.if.end1392_crit_edge
  %134 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1417 = getelementptr i32, ptr %135, i32 1
  store ptr %incdec.ptr1417, ptr %cur.i, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %135, align 4
  %dy = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %137 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %dy, align 4
  %139 = load ptr, ptr %cur.i, align 4
  %140 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %seg.i, align 8
  %cmp1429.not = icmp ult ptr %139, %141
  br i1 %cmp1429.not, label %if.end1392.if.end1454_crit_edge, label %do.end1448, !prof !24

if.end1392.if.end1454_crit_edge:                  ; preds = %if.end1392
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1454

do.end1448:                                       ; preds = %if.end1392
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1454

if.end1454:                                       ; preds = %do.end1448, %if.end1392.if.end1454_crit_edge
  %142 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %cur.i, align 4
  %144 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %end.i, align 4
  %cmp1468.not = icmp ult ptr %143, %145
  br i1 %cmp1468.not, label %if.end1454.if.end1493_crit_edge, label %do.end1487, !prof !24

if.end1454.if.end1493_crit_edge:                  ; preds = %if.end1454
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1493

do.end1487:                                       ; preds = %if.end1454
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1493

if.end1493:                                       ; preds = %do.end1487, %if.end1454.if.end1493_crit_edge
  %146 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1518 = getelementptr i32, ptr %147, i32 1
  store ptr %incdec.ptr1518, ptr %cur.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %138, ptr %147, align 4
  %149 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %width, align 4
  %add = add i32 %150, 7
  %and = and i32 %add, -8
  %151 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %height, align 4
  %mul = mul i32 %and, %152
  %add1525 = add i32 %mul, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add1525)
  %tobool1528.not2176 = icmp ult i32 %add1525, 32
  br i1 %tobool1528.not2176, label %if.end1493.while.end1958_crit_edge, label %while.body.preheader

if.end1493.while.end1958_crit_edge:               ; preds = %if.end1493
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end1958

while.body.preheader:                             ; preds = %if.end1493
  %shr1527 = lshr i32 %add1525, 5
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %dwords.02178 = phi i32 [ %sub1536, %cleanup.while.body_crit_edge ], [ %shr1527, %while.body.preheader ]
  %data.02177 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %11, %while.body.preheader ]
  %153 = tail call i32 @llvm.umin.i32(i32 %dwords.02178, i32 2047)
  %add1531 = add nuw nsw i32 %153, 1
  %154 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cur.i, align 4
  %add.ptr.i2150 = getelementptr i32, ptr %155, i32 %add1531
  %156 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %end.i, align 4
  %cmp.not.i2152 = icmp ult ptr %add.ptr.i2150, %157
  br i1 %cmp.not.i2152, label %while.body.if.end1628_crit_edge, label %if.then.i2155

while.body.if.end1628_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1628

if.then.i2155:                                    ; preds = %while.body
  %158 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %9, align 8
  %call.i2153 = tail call i32 %159(ptr noundef %9, i32 noundef %add1531) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2153)
  %tobool.not.i2154 = icmp eq i32 %call.i2153, 0
  br i1 %tobool.not.i2154, label %if.then.i2155.if.end1628_crit_edge, label %if.then.i2155.cleanup1960_crit_edge

if.then.i2155.cleanup1960_crit_edge:              ; preds = %if.then.i2155
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup1960

if.then.i2155.if.end1628_crit_edge:               ; preds = %if.then.i2155
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1628

if.end1628:                                       ; preds = %if.then.i2155.if.end1628_crit_edge, %while.body.if.end1628_crit_edge
  %160 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i2156 = getelementptr i32, ptr %161, i32 %add1531
  %162 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %add.ptr4.i2156, ptr %seg.i, align 8
  %sub1536 = sub i32 %dwords.02178, %153
  %163 = shl nuw nsw i32 %153, 18
  %164 = or i32 %163, 1073768544
  %cmp1651.not = icmp ult ptr %161, %add.ptr4.i2156
  br i1 %cmp1651.not, label %if.end1628.if.end1676_crit_edge, label %do.end1670, !prof !24

if.end1628.if.end1676_crit_edge:                  ; preds = %if.end1628
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1676

do.end1670:                                       ; preds = %if.end1628
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 152, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1676

if.end1676:                                       ; preds = %do.end1670, %if.end1628.if.end1676_crit_edge
  %165 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %cur.i, align 4
  %167 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %end.i, align 4
  %cmp1690.not = icmp ult ptr %166, %168
  br i1 %cmp1690.not, label %if.end1676.if.end1715_crit_edge, label %do.end1709, !prof !24

if.end1676.if.end1715_crit_edge:                  ; preds = %if.end1676
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1715

do.end1709:                                       ; preds = %if.end1676
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 152, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1715

if.end1715:                                       ; preds = %do.end1709, %if.end1676.if.end1715_crit_edge
  %169 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1740 = getelementptr i32, ptr %170, i32 1
  store ptr %incdec.ptr1740, ptr %cur.i, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %164, ptr %170, align 4
  %172 = ptrtoint ptr %data.02177 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %data.02177, align 4
  %174 = load ptr, ptr %cur.i, align 4
  %175 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %seg.i, align 8
  %cmp1756.not = icmp ult ptr %174, %176
  br i1 %cmp1756.not, label %if.end1715.if.end1781_crit_edge, label %do.end1775, !prof !24

if.end1715.if.end1781_crit_edge:                  ; preds = %if.end1715
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1781

do.end1775:                                       ; preds = %if.end1715
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 152, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1781

if.end1781:                                       ; preds = %do.end1775, %if.end1715.if.end1781_crit_edge
  %177 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %cur.i, align 4
  %179 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %end.i, align 4
  %cmp1795.not = icmp ult ptr %178, %180
  br i1 %cmp1795.not, label %if.end1781.if.end1820_crit_edge, label %do.end1814, !prof !24

if.end1781.if.end1820_crit_edge:                  ; preds = %if.end1781
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1820

do.end1814:                                       ; preds = %if.end1781
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 152, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1820

if.end1820:                                       ; preds = %do.end1814, %if.end1781.if.end1820_crit_edge
  %181 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1845 = getelementptr i32, ptr %182, i32 1
  store ptr %incdec.ptr1845, ptr %cur.i, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %173, ptr %182, align 4
  %_s.02171 = add nsw i32 %153, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_s.02171)
  %tobool1850.not2173 = icmp eq i32 %_s.02171, 0
  br i1 %tobool1850.not2173, label %if.end1820.cleanup_crit_edge, label %if.end1820.do.body1852_crit_edge

if.end1820.do.body1852_crit_edge:                 ; preds = %if.end1820
  br label %do.body1852

if.end1820.cleanup_crit_edge:                     ; preds = %if.end1820
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body1852:                                      ; preds = %if.end1924.do.body1852_crit_edge, %if.end1820.do.body1852_crit_edge
  %_dd.02175.pn = phi ptr [ %_dd.02175, %if.end1924.do.body1852_crit_edge ], [ %data.02177, %if.end1820.do.body1852_crit_edge ]
  %_s.02174 = phi i32 [ %_s.0, %if.end1924.do.body1852_crit_edge ], [ %_s.02171, %if.end1820.do.body1852_crit_edge ]
  %_dd.02175 = getelementptr i32, ptr %_dd.02175.pn, i32 1
  %184 = ptrtoint ptr %_dd.02175 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %_dd.02175, align 4
  %186 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %cur.i, align 4
  %188 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %seg.i, align 8
  %cmp1860.not = icmp ult ptr %187, %189
  br i1 %cmp1860.not, label %do.body1852.if.end1885_crit_edge, label %do.end1879, !prof !24

do.body1852.if.end1885_crit_edge:                 ; preds = %do.body1852
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1885

do.end1879:                                       ; preds = %do.body1852
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 152, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1885

if.end1885:                                       ; preds = %do.end1879, %do.body1852.if.end1885_crit_edge
  %190 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %cur.i, align 4
  %192 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %end.i, align 4
  %cmp1899.not = icmp ult ptr %191, %193
  br i1 %cmp1899.not, label %if.end1885.if.end1924_crit_edge, label %do.end1918, !prof !24

if.end1885.if.end1924_crit_edge:                  ; preds = %if.end1885
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1924

do.end1918:                                       ; preds = %if.end1885
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 152, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1924

if.end1924:                                       ; preds = %do.end1918, %if.end1885.if.end1924_crit_edge
  %194 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1949 = getelementptr i32, ptr %195, i32 1
  store ptr %incdec.ptr1949, ptr %cur.i, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %185, ptr %195, align 4
  %_s.0 = add i32 %_s.02174, -1
  %tobool1850.not = icmp eq i32 %_s.0, 0
  br i1 %tobool1850.not, label %if.end1924.cleanup_crit_edge, label %if.end1924.do.body1852_crit_edge

if.end1924.do.body1852_crit_edge:                 ; preds = %if.end1924
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body1852

if.end1924.cleanup_crit_edge:                     ; preds = %if.end1924
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %if.end1924.cleanup_crit_edge, %if.end1820.cleanup_crit_edge
  %add.ptr = getelementptr i32, ptr %data.02177, i32 %153
  %tobool1528.not = icmp eq i32 %sub1536, 0
  br i1 %tobool1528.not, label %cleanup.while.end1958_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

cleanup.while.end1958_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end1958

while.end1958:                                    ; preds = %cleanup.while.end1958_crit_edge, %if.end1493.while.end1958_crit_edge
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 1
  %197 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %kick.i, align 4
  tail call void %198(ptr noundef %9) #3
  br label %cleanup1960

cleanup1960:                                      ; preds = %while.end1958, %if.then.i2155.cleanup1960_crit_edge, %if.then.i.cleanup1960_crit_edge, %entry.cleanup1960_crit_edge
  %retval.2 = phi i32 [ 0, %while.end1958 ], [ -19, %entry.cleanup1960_crit_edge ], [ %call.i, %if.then.i.cleanup1960_crit_edge ], [ %call.i2153, %if.then.i2155.cleanup1960_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_fbcon_accel_init(ptr noundef %info) local_unnamed_addr #0 align 64 {
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
  %push3 = getelementptr inbounds %struct.anon.97, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %push3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %push3, align 8
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %10 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits_per_pixel, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %11, label %entry.cleanup_crit_edge [
    i32 8, label %entry.sw.epilog11_crit_edge
    i32 15, label %sw.bb4
    i32 16, label %sw.bb5
    i32 32, label %sw.bb6
  ]

entry.sw.epilog11_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog11

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog11

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog11

sw.bb6:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %14, label %sw.bb6.cleanup_crit_edge [
    i32 0, label %sw.bb6.sw.epilog11_crit_edge
    i32 8, label %sw.bb6.sw.epilog11_crit_edge8446
    i32 2, label %sw.bb9
  ]

sw.bb6.sw.epilog11_crit_edge8446:                 ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog11

sw.bb6.sw.epilog11_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog11

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb9:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog11

sw.epilog11:                                      ; preds = %sw.bb9, %sw.bb6.sw.epilog11_crit_edge, %sw.bb6.sw.epilog11_crit_edge8446, %sw.bb5, %sw.bb4, %entry.sw.epilog11_crit_edge
  %format.0 = phi i32 [ 209, %sw.bb9 ], [ 232, %sw.bb5 ], [ 248, %sw.bb4 ], [ 243, %entry.sw.epilog11_crit_edge ], [ 230, %sw.bb6.sw.epilog11_crit_edge ], [ 230, %sw.bb6.sw.epilog11_crit_edge8446 ]
  %user = getelementptr inbounds %struct.nouveau_channel, ptr %7, i32 0, i32 17
  %twod = getelementptr inbounds %struct.nouveau_fbdev, ptr %1, i32 0, i32 8
  %call12 = tail call i32 @nvif_object_ctor(ptr noundef %user, ptr noundef nonnull @.str.9, i32 noundef 20525, i32 noundef 20525, ptr noundef null, i32 noundef 0, ptr noundef %twod) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog11.cleanup_crit_edge

sw.epilog11.cleanup_crit_edge:                    ; preds = %sw.epilog11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %sw.epilog11
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 4
  %16 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %17, i32 56
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 6
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %19
  br i1 %cmp.not.i, label %if.end.if.end87_crit_edge, label %if.then.i

if.end.if.end87_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end87

if.then.i:                                        ; preds = %if.end
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %9, align 8
  %call.i = tail call i32 %21(ptr noundef %9, i32 noundef 56) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end87_crit_edge, label %if.then15

if.then.i.if.end87_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end87

if.then15:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nouveau_fbcon_gpu_lockup(ptr noundef %info) #3
  br label %cleanup

if.end87:                                         ; preds = %if.then.i.if.end87_crit_edge, %if.end.if.end87_crit_edge
  %22 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %23, i32 56
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 5
  %24 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %23, %add.ptr4.i
  br i1 %cmp.not, label %if.end87.if.end123_crit_edge, label %do.end117, !prof !24

if.end87.if.end123_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end123

do.end117:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end123

if.end123:                                        ; preds = %do.end117, %if.end87.if.end123_crit_edge
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %end.i, align 4
  %cmp136.not = icmp ult ptr %26, %28
  br i1 %cmp136.not, label %if.end123.if.end160_crit_edge, label %do.end154, !prof !24

if.end123.if.end160_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end160

do.end154:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end160

if.end160:                                        ; preds = %do.end154, %if.end123.if.end160_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %30, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 286720, ptr %30, align 4
  %handle = getelementptr inbounds %struct.nouveau_fbdev, ptr %1, i32 0, i32 8, i32 3
  %32 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %handle, align 4
  %34 = load ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %seg.i, align 8
  %cmp187.not = icmp ult ptr %34, %36
  br i1 %cmp187.not, label %if.end160.if.end211_crit_edge, label %do.end205, !prof !24

if.end160.if.end211_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end211

do.end205:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end211

if.end211:                                        ; preds = %do.end205, %if.end160.if.end211_crit_edge
  %37 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cur.i, align 4
  %39 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %end.i, align 4
  %cmp225.not = icmp ult ptr %38, %40
  br i1 %cmp225.not, label %if.end211.if.end249_crit_edge, label %do.end243, !prof !24

if.end211.if.end249_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end249

do.end243:                                        ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end249

if.end249:                                        ; preds = %do.end243, %if.end211.if.end249_crit_edge
  %41 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur.i, align 4
  %incdec.ptr274 = getelementptr i32, ptr %42, i32 1
  store ptr %incdec.ptr274, ptr %cur.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %33, ptr %42, align 4
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %seg.i, align 8
  %cmp435.not = icmp ult ptr %44, %46
  br i1 %cmp435.not, label %if.end249.if.end459_crit_edge, label %do.end453, !prof !24

if.end249.if.end459_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end459

do.end453:                                        ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end459

if.end459:                                        ; preds = %do.end453, %if.end249.if.end459_crit_edge
  %47 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cur.i, align 4
  %49 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %end.i, align 4
  %cmp473.not = icmp ult ptr %48, %50
  br i1 %cmp473.not, label %if.end459.if.end497_crit_edge, label %do.end491, !prof !24

if.end459.if.end497_crit_edge:                    ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end497

do.end491:                                        ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end497

if.end497:                                        ; preds = %do.end491, %if.end459.if.end497_crit_edge
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %incdec.ptr522 = getelementptr i32, ptr %52, i32 1
  store ptr %incdec.ptr522, ptr %cur.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 811396, ptr %52, align 4
  %handle530 = getelementptr inbounds %struct.nouveau_channel, ptr %7, i32 0, i32 7, i32 3
  %54 = ptrtoint ptr %handle530 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %handle530, align 4
  %56 = load ptr, ptr %cur.i, align 4
  %57 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %seg.i, align 8
  %cmp535.not = icmp ult ptr %56, %58
  br i1 %cmp535.not, label %if.end497.if.end559_crit_edge, label %do.end553, !prof !24

if.end497.if.end559_crit_edge:                    ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end559

do.end553:                                        ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end559

if.end559:                                        ; preds = %do.end553, %if.end497.if.end559_crit_edge
  %59 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cur.i, align 4
  %61 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %end.i, align 4
  %cmp573.not = icmp ult ptr %60, %62
  br i1 %cmp573.not, label %if.end559.if.end597_crit_edge, label %do.end591, !prof !24

if.end559.if.end597_crit_edge:                    ; preds = %if.end559
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end597

do.end591:                                        ; preds = %if.end559
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end597

if.end597:                                        ; preds = %do.end591, %if.end559.if.end597_crit_edge
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %incdec.ptr622 = getelementptr i32, ptr %64, i32 1
  store ptr %incdec.ptr622, ptr %cur.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %55, ptr %64, align 4
  %66 = ptrtoint ptr %handle530 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %handle530, align 4
  %68 = load ptr, ptr %cur.i, align 4
  %69 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %seg.i, align 8
  %cmp636.not = icmp ult ptr %68, %70
  br i1 %cmp636.not, label %if.end597.if.end660_crit_edge, label %do.end654, !prof !24

if.end597.if.end660_crit_edge:                    ; preds = %if.end597
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end660

do.end654:                                        ; preds = %if.end597
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end660

if.end660:                                        ; preds = %do.end654, %if.end597.if.end660_crit_edge
  %71 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cur.i, align 4
  %73 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %end.i, align 4
  %cmp674.not = icmp ult ptr %72, %74
  br i1 %cmp674.not, label %if.end660.if.end698_crit_edge, label %do.end692, !prof !24

if.end660.if.end698_crit_edge:                    ; preds = %if.end660
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end698

do.end692:                                        ; preds = %if.end660
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end698

if.end698:                                        ; preds = %do.end692, %if.end660.if.end698_crit_edge
  %75 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cur.i, align 4
  %incdec.ptr723 = getelementptr i32, ptr %76, i32 1
  store ptr %incdec.ptr723, ptr %cur.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %67, ptr %76, align 4
  %78 = ptrtoint ptr %handle530 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %handle530, align 4
  %80 = load ptr, ptr %cur.i, align 4
  %81 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %seg.i, align 8
  %cmp737.not = icmp ult ptr %80, %82
  br i1 %cmp737.not, label %if.end698.if.end761_crit_edge, label %do.end755, !prof !24

if.end698.if.end761_crit_edge:                    ; preds = %if.end698
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end761

do.end755:                                        ; preds = %if.end698
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end761

if.end761:                                        ; preds = %do.end755, %if.end698.if.end761_crit_edge
  %83 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cur.i, align 4
  %85 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %end.i, align 4
  %cmp775.not = icmp ult ptr %84, %86
  br i1 %cmp775.not, label %if.end761.if.end799_crit_edge, label %do.end793, !prof !24

if.end761.if.end799_crit_edge:                    ; preds = %if.end761
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end799

do.end793:                                        ; preds = %if.end761
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end799

if.end799:                                        ; preds = %do.end793, %if.end761.if.end799_crit_edge
  %87 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cur.i, align 4
  %incdec.ptr824 = getelementptr i32, ptr %88, i32 1
  store ptr %incdec.ptr824, ptr %cur.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %79, ptr %88, align 4
  %90 = load ptr, ptr %cur.i, align 4
  %91 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %seg.i, align 8
  %cmp955.not = icmp ult ptr %90, %92
  br i1 %cmp955.not, label %if.end799.if.end979_crit_edge, label %do.end973, !prof !24

if.end799.if.end979_crit_edge:                    ; preds = %if.end799
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end979

do.end973:                                        ; preds = %if.end799
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end979

if.end979:                                        ; preds = %do.end973, %if.end799.if.end979_crit_edge
  %93 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cur.i, align 4
  %95 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %end.i, align 4
  %cmp993.not = icmp ult ptr %94, %96
  br i1 %cmp993.not, label %if.end979.if.end1017_crit_edge, label %do.end1011, !prof !24

if.end979.if.end1017_crit_edge:                   ; preds = %if.end979
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1017

do.end1011:                                       ; preds = %if.end979
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1017

if.end1017:                                       ; preds = %do.end1011, %if.end979.if.end1017_crit_edge
  %97 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1042 = getelementptr i32, ptr %98, i32 1
  store ptr %incdec.ptr1042, ptr %cur.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 549376, ptr %98, align 4
  %100 = load ptr, ptr %cur.i, align 4
  %101 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %seg.i, align 8
  %cmp1055.not = icmp ult ptr %100, %102
  br i1 %cmp1055.not, label %if.end1017.if.end1080_crit_edge, label %do.end1074, !prof !24

if.end1017.if.end1080_crit_edge:                  ; preds = %if.end1017
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1080

do.end1074:                                       ; preds = %if.end1017
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1080

if.end1080:                                       ; preds = %do.end1074, %if.end1017.if.end1080_crit_edge
  %103 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cur.i, align 4
  %105 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %end.i, align 4
  %cmp1094.not = icmp ult ptr %104, %106
  br i1 %cmp1094.not, label %if.end1080.if.end1119_crit_edge, label %do.end1113, !prof !24

if.end1080.if.end1119_crit_edge:                  ; preds = %if.end1080
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1119

do.end1113:                                       ; preds = %if.end1080
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1119

if.end1119:                                       ; preds = %do.end1113, %if.end1080.if.end1119_crit_edge
  %107 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1144 = getelementptr i32, ptr %108, i32 1
  store ptr %incdec.ptr1144, ptr %cur.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %format.0, ptr %108, align 4
  %110 = load ptr, ptr %cur.i, align 4
  %111 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %seg.i, align 8
  %cmp1156.not = icmp ult ptr %110, %112
  br i1 %cmp1156.not, label %if.end1119.if.end1181_crit_edge, label %do.end1175, !prof !24

if.end1119.if.end1181_crit_edge:                  ; preds = %if.end1119
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1181

do.end1175:                                       ; preds = %if.end1119
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1181

if.end1181:                                       ; preds = %do.end1175, %if.end1119.if.end1181_crit_edge
  %113 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cur.i, align 4
  %115 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %end.i, align 4
  %cmp1195.not = icmp ult ptr %114, %116
  br i1 %cmp1195.not, label %if.end1181.if.end1220_crit_edge, label %do.end1214, !prof !24

if.end1181.if.end1220_crit_edge:                  ; preds = %if.end1181
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1220

do.end1214:                                       ; preds = %if.end1181
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1220

if.end1220:                                       ; preds = %do.end1214, %if.end1181.if.end1220_crit_edge
  %117 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1245 = getelementptr i32, ptr %118, i32 1
  store ptr %incdec.ptr1245, ptr %cur.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1, ptr %118, align 4
  %120 = load ptr, ptr %cur.i, align 4
  %121 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %seg.i, align 8
  %cmp1466.not = icmp ult ptr %120, %122
  br i1 %cmp1466.not, label %if.end1220.if.end1491_crit_edge, label %do.end1485, !prof !24

if.end1220.if.end1491_crit_edge:                  ; preds = %if.end1220
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1491

do.end1485:                                       ; preds = %if.end1220
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1491

if.end1491:                                       ; preds = %do.end1485, %if.end1220.if.end1491_crit_edge
  %123 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cur.i, align 4
  %125 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %end.i, align 4
  %cmp1505.not = icmp ult ptr %124, %126
  br i1 %cmp1505.not, label %if.end1491.if.end1530_crit_edge, label %do.end1524, !prof !24

if.end1491.if.end1530_crit_edge:                  ; preds = %if.end1491
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1530

do.end1524:                                       ; preds = %if.end1491
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1530

if.end1530:                                       ; preds = %do.end1524, %if.end1491.if.end1530_crit_edge
  %127 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1555 = getelementptr i32, ptr %128, i32 1
  store ptr %incdec.ptr1555, ptr %cur.i, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1335828, ptr %128, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %130 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %line_length, align 4
  %132 = load ptr, ptr %cur.i, align 4
  %133 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %seg.i, align 8
  %cmp1567.not = icmp ult ptr %132, %134
  br i1 %cmp1567.not, label %if.end1530.if.end1592_crit_edge, label %do.end1586, !prof !24

if.end1530.if.end1592_crit_edge:                  ; preds = %if.end1530
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1592

do.end1586:                                       ; preds = %if.end1530
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1592

if.end1592:                                       ; preds = %do.end1586, %if.end1530.if.end1592_crit_edge
  %135 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cur.i, align 4
  %137 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %end.i, align 4
  %cmp1606.not = icmp ult ptr %136, %138
  br i1 %cmp1606.not, label %if.end1592.if.end1631_crit_edge, label %do.end1625, !prof !24

if.end1592.if.end1631_crit_edge:                  ; preds = %if.end1592
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1631

do.end1625:                                       ; preds = %if.end1592
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1631

if.end1631:                                       ; preds = %do.end1625, %if.end1592.if.end1631_crit_edge
  %139 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1656 = getelementptr i32, ptr %140, i32 1
  store ptr %incdec.ptr1656, ptr %cur.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %131, ptr %140, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %142 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %xres_virtual, align 4
  %144 = load ptr, ptr %cur.i, align 4
  %145 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %seg.i, align 8
  %cmp1669.not = icmp ult ptr %144, %146
  br i1 %cmp1669.not, label %if.end1631.if.end1694_crit_edge, label %do.end1688, !prof !24

if.end1631.if.end1694_crit_edge:                  ; preds = %if.end1631
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1694

do.end1688:                                       ; preds = %if.end1631
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1694

if.end1694:                                       ; preds = %do.end1688, %if.end1631.if.end1694_crit_edge
  %147 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cur.i, align 4
  %149 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %end.i, align 4
  %cmp1708.not = icmp ult ptr %148, %150
  br i1 %cmp1708.not, label %if.end1694.if.end1733_crit_edge, label %do.end1727, !prof !24

if.end1694.if.end1733_crit_edge:                  ; preds = %if.end1694
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1733

do.end1727:                                       ; preds = %if.end1694
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1733

if.end1733:                                       ; preds = %do.end1727, %if.end1694.if.end1733_crit_edge
  %151 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1758 = getelementptr i32, ptr %152, i32 1
  store ptr %incdec.ptr1758, ptr %cur.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %143, ptr %152, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %154 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %yres_virtual, align 4
  %156 = load ptr, ptr %cur.i, align 4
  %157 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %seg.i, align 8
  %cmp1771.not = icmp ult ptr %156, %158
  br i1 %cmp1771.not, label %if.end1733.if.end1796_crit_edge, label %do.end1790, !prof !24

if.end1733.if.end1796_crit_edge:                  ; preds = %if.end1733
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1796

do.end1790:                                       ; preds = %if.end1733
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1796

if.end1796:                                       ; preds = %do.end1790, %if.end1733.if.end1796_crit_edge
  %159 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cur.i, align 4
  %161 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %end.i, align 4
  %cmp1810.not = icmp ult ptr %160, %162
  br i1 %cmp1810.not, label %if.end1796.if.end1835_crit_edge, label %do.end1829, !prof !24

if.end1796.if.end1835_crit_edge:                  ; preds = %if.end1796
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1835

do.end1829:                                       ; preds = %if.end1796
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1835

if.end1835:                                       ; preds = %do.end1829, %if.end1796.if.end1835_crit_edge
  %163 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1860 = getelementptr i32, ptr %164, i32 1
  store ptr %incdec.ptr1860, ptr %cur.i, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %155, ptr %164, align 4
  %vma = getelementptr inbounds %struct.nouveau_fbdev, ptr %1, i32 0, i32 9
  %166 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %vma, align 8
  %addr = getelementptr inbounds %struct.nouveau_vma, ptr %167, i32 0, i32 3
  %168 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %addr, align 8
  %shr = lshr i64 %169, 32
  %170 = trunc i64 %shr to i32
  %conv1873 = and i32 %170, 255
  %171 = load ptr, ptr %cur.i, align 4
  %172 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %seg.i, align 8
  %cmp1878.not = icmp ult ptr %171, %173
  br i1 %cmp1878.not, label %if.end1835.if.end1903_crit_edge, label %do.end1897, !prof !24

if.end1835.if.end1903_crit_edge:                  ; preds = %if.end1835
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1903

do.end1897:                                       ; preds = %if.end1835
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1903

if.end1903:                                       ; preds = %do.end1897, %if.end1835.if.end1903_crit_edge
  %174 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %cur.i, align 4
  %176 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %end.i, align 4
  %cmp1917.not = icmp ult ptr %175, %177
  br i1 %cmp1917.not, label %if.end1903.if.end1942_crit_edge, label %do.end1936, !prof !24

if.end1903.if.end1942_crit_edge:                  ; preds = %if.end1903
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1942

do.end1936:                                       ; preds = %if.end1903
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1942

if.end1942:                                       ; preds = %do.end1936, %if.end1903.if.end1942_crit_edge
  %178 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1967 = getelementptr i32, ptr %179, i32 1
  store ptr %incdec.ptr1967, ptr %cur.i, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %conv1873, ptr %179, align 4
  %181 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %vma, align 8
  %addr1976 = getelementptr inbounds %struct.nouveau_vma, ptr %182, i32 0, i32 3
  %183 = ptrtoint ptr %addr1976 to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %addr1976, align 8
  %conv1982 = trunc i64 %184 to i32
  %185 = load ptr, ptr %cur.i, align 4
  %186 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %seg.i, align 8
  %cmp1987.not = icmp ult ptr %185, %187
  br i1 %cmp1987.not, label %if.end1942.if.end2012_crit_edge, label %do.end2006, !prof !24

if.end1942.if.end2012_crit_edge:                  ; preds = %if.end1942
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2012

do.end2006:                                       ; preds = %if.end1942
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end2012

if.end2012:                                       ; preds = %do.end2006, %if.end1942.if.end2012_crit_edge
  %188 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cur.i, align 4
  %190 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %end.i, align 4
  %cmp2026.not = icmp ult ptr %189, %191
  br i1 %cmp2026.not, label %if.end2012.if.end2051_crit_edge, label %do.end2045, !prof !24

if.end2012.if.end2051_crit_edge:                  ; preds = %if.end2012
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2051

do.end2045:                                       ; preds = %if.end2012
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end2051

if.end2051:                                       ; preds = %do.end2045, %if.end2012.if.end2051_crit_edge
  %192 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2076 = getelementptr i32, ptr %193, i32 1
  store ptr %incdec.ptr2076, ptr %cur.i, align 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %conv1982, ptr %193, align 4
  %195 = load ptr, ptr %cur.i, align 4
  %196 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %seg.i, align 8
  %cmp2207.not = icmp ult ptr %195, %197
  br i1 %cmp2207.not, label %if.end2051.if.end2232_crit_edge, label %do.end2226, !prof !24

if.end2051.if.end2232_crit_edge:                  ; preds = %if.end2051
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2232

do.end2226:                                       ; preds = %if.end2051
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 233, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end2232

if.end2232:                                       ; preds = %do.end2226, %if.end2051.if.end2232_crit_edge
  %198 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %cur.i, align 4
  %200 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %end.i, align 4
  %cmp2246.not = icmp ult ptr %199, %201
  br i1 %cmp2246.not, label %if.end2232.if.end2271_crit_edge, label %do.end2265, !prof !24

if.end2232.if.end2271_crit_edge:                  ; preds = %if.end2232
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2271

do.end2265:                                       ; preds = %if.end2232
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 233, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end2271

if.end2271:                                       ; preds = %do.end2265, %if.end2232.if.end2271_crit_edge
  %202 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2296 = getelementptr i32, ptr %203, i32 1
  store ptr %incdec.ptr2296, ptr %cur.i, align 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 549424, ptr %203, align 4
  %205 = load ptr, ptr %cur.i, align 4
  %206 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %seg.i, align 8
  %cmp2312.not = icmp ult ptr %205, %207
  br i1 %cmp2312.not, label %if.end2271.if.end2337_crit_edge, label %do.end2331, !prof !24

if.end2271.if.end2337_crit_edge:                  ; preds = %if.end2271
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2337

do.end2331:                                       ; preds = %if.end2271
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 233, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end2337

if.end2337:                                       ; preds = %do.end2331, %if.end2271.if.end2337_crit_edge
  %208 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %cur.i, align 4
  %210 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %end.i, align 4
  %cmp2351.not = icmp ult ptr %209, %211
  br i1 %cmp2351.not, label %if.end2337.if.end2376_crit_edge, label %do.end2370, !prof !24

if.end2337.if.end2376_crit_edge:                  ; preds = %if.end2337
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2376

do.end2370:                                       ; preds = %if.end2337
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 233, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end2376

if.end2376:                                       ; preds = %do.end2370, %if.end2337.if.end2376_crit_edge
  %212 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2401 = getelementptr i32, ptr %213, i32 1
  store ptr %incdec.ptr2401, ptr %cur.i, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %format.0, ptr %213, align 4
  %215 = load ptr, ptr %cur.i, align 4
  %216 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %seg.i, align 8
  %cmp2413.not = icmp ult ptr %215, %217
  br i1 %cmp2413.not, label %if.end2376.if.end2438_crit_edge, label %do.end2432, !prof !24

if.end2376.if.end2438_crit_edge:                  ; preds = %if.end2376
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2438

do.end2432:                                       ; preds = %if.end2376
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 233, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end2438

if.end2438:                                       ; preds = %do.end2432, %if.end2376.if.end2438_crit_edge
  %218 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %cur.i, align 4
  %220 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %end.i, align 4
  %cmp2452.not = icmp ult ptr %219, %221
  br i1 %cmp2452.not, label %if.end2438.if.end2477_crit_edge, label %do.end2471, !prof !24

if.end2438.if.end2477_crit_edge:                  ; preds = %if.end2438
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2477

do.end2471:                                       ; preds = %if.end2438
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 233, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end2477

if.end2477:                                       ; preds = %do.end2471, %if.end2438.if.end2477_crit_edge
  %222 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2502 = getelementptr i32, ptr %223, i32 1
  store ptr %incdec.ptr2502, ptr %cur.i, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 1, ptr %223, align 4
  %225 = load ptr, ptr %cur.i, align 4
  %226 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %seg.i, align 8
  %cmp2723.not = icmp ult ptr %225, %227
  br i1 %cmp2723.not, label %if.end2477.if.end2748_crit_edge, label %do.end2742, !prof !24

if.end2477.if.end2748_crit_edge:                  ; preds = %if.end2477
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2748

do.end2742:                                       ; preds = %if.end2477
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end2748

if.end2748:                                       ; preds = %do.end2742, %if.end2477.if.end2748_crit_edge
  %228 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %cur.i, align 4
  %230 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %end.i, align 4
  %cmp2762.not = icmp ult ptr %229, %231
  br i1 %cmp2762.not, label %if.end2748.if.end2787_crit_edge, label %do.end2781, !prof !24

if.end2748.if.end2787_crit_edge:                  ; preds = %if.end2748
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2787

do.end2781:                                       ; preds = %if.end2748
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end2787

if.end2787:                                       ; preds = %do.end2781, %if.end2748.if.end2787_crit_edge
  %232 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2812 = getelementptr i32, ptr %233, i32 1
  store ptr %incdec.ptr2812, ptr %cur.i, align 4
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 1335876, ptr %233, align 4
  %235 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %line_length, align 4
  %237 = load ptr, ptr %cur.i, align 4
  %238 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %seg.i, align 8
  %cmp2826.not = icmp ult ptr %237, %239
  br i1 %cmp2826.not, label %if.end2787.if.end2851_crit_edge, label %do.end2845, !prof !24

if.end2787.if.end2851_crit_edge:                  ; preds = %if.end2787
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2851

do.end2845:                                       ; preds = %if.end2787
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end2851

if.end2851:                                       ; preds = %do.end2845, %if.end2787.if.end2851_crit_edge
  %240 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %cur.i, align 4
  %242 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %end.i, align 4
  %cmp2865.not = icmp ult ptr %241, %243
  br i1 %cmp2865.not, label %if.end2851.if.end2890_crit_edge, label %do.end2884, !prof !24

if.end2851.if.end2890_crit_edge:                  ; preds = %if.end2851
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2890

do.end2884:                                       ; preds = %if.end2851
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end2890

if.end2890:                                       ; preds = %do.end2884, %if.end2851.if.end2890_crit_edge
  %244 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2915 = getelementptr i32, ptr %245, i32 1
  store ptr %incdec.ptr2915, ptr %cur.i, align 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %236, ptr %245, align 4
  %247 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %xres_virtual, align 4
  %249 = load ptr, ptr %cur.i, align 4
  %250 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %seg.i, align 8
  %cmp2929.not = icmp ult ptr %249, %251
  br i1 %cmp2929.not, label %if.end2890.if.end2954_crit_edge, label %do.end2948, !prof !24

if.end2890.if.end2954_crit_edge:                  ; preds = %if.end2890
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2954

do.end2948:                                       ; preds = %if.end2890
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end2954

if.end2954:                                       ; preds = %do.end2948, %if.end2890.if.end2954_crit_edge
  %252 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %cur.i, align 4
  %254 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %end.i, align 4
  %cmp2968.not = icmp ult ptr %253, %255
  br i1 %cmp2968.not, label %if.end2954.if.end2993_crit_edge, label %do.end2987, !prof !24

if.end2954.if.end2993_crit_edge:                  ; preds = %if.end2954
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2993

do.end2987:                                       ; preds = %if.end2954
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end2993

if.end2993:                                       ; preds = %do.end2987, %if.end2954.if.end2993_crit_edge
  %256 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3018 = getelementptr i32, ptr %257, i32 1
  store ptr %incdec.ptr3018, ptr %cur.i, align 4
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %248, ptr %257, align 4
  %259 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %yres_virtual, align 4
  %261 = load ptr, ptr %cur.i, align 4
  %262 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %seg.i, align 8
  %cmp3032.not = icmp ult ptr %261, %263
  br i1 %cmp3032.not, label %if.end2993.if.end3057_crit_edge, label %do.end3051, !prof !24

if.end2993.if.end3057_crit_edge:                  ; preds = %if.end2993
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3057

do.end3051:                                       ; preds = %if.end2993
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end3057

if.end3057:                                       ; preds = %do.end3051, %if.end2993.if.end3057_crit_edge
  %264 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %cur.i, align 4
  %266 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %end.i, align 4
  %cmp3071.not = icmp ult ptr %265, %267
  br i1 %cmp3071.not, label %if.end3057.if.end3096_crit_edge, label %do.end3090, !prof !24

if.end3057.if.end3096_crit_edge:                  ; preds = %if.end3057
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3096

do.end3090:                                       ; preds = %if.end3057
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end3096

if.end3096:                                       ; preds = %do.end3090, %if.end3057.if.end3096_crit_edge
  %268 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3121 = getelementptr i32, ptr %269, i32 1
  store ptr %incdec.ptr3121, ptr %cur.i, align 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %260, ptr %269, align 4
  %271 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %vma, align 8
  %addr3130 = getelementptr inbounds %struct.nouveau_vma, ptr %272, i32 0, i32 3
  %273 = ptrtoint ptr %addr3130 to i32
  call void @__asan_load8_noabort(i32 %273)
  %274 = load i64, ptr %addr3130, align 8
  %shr3131 = lshr i64 %274, 32
  %275 = trunc i64 %shr3131 to i32
  %conv3137 = and i32 %275, 255
  %276 = load ptr, ptr %cur.i, align 4
  %277 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %seg.i, align 8
  %cmp3142.not = icmp ult ptr %276, %278
  br i1 %cmp3142.not, label %if.end3096.if.end3167_crit_edge, label %do.end3161, !prof !24

if.end3096.if.end3167_crit_edge:                  ; preds = %if.end3096
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3167

do.end3161:                                       ; preds = %if.end3096
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end3167

if.end3167:                                       ; preds = %do.end3161, %if.end3096.if.end3167_crit_edge
  %279 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %cur.i, align 4
  %281 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %end.i, align 4
  %cmp3181.not = icmp ult ptr %280, %282
  br i1 %cmp3181.not, label %if.end3167.if.end3206_crit_edge, label %do.end3200, !prof !24

if.end3167.if.end3206_crit_edge:                  ; preds = %if.end3167
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3206

do.end3200:                                       ; preds = %if.end3167
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end3206

if.end3206:                                       ; preds = %do.end3200, %if.end3167.if.end3206_crit_edge
  %283 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3231 = getelementptr i32, ptr %284, i32 1
  store ptr %incdec.ptr3231, ptr %cur.i, align 4
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %conv3137, ptr %284, align 4
  %286 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %vma, align 8
  %addr3240 = getelementptr inbounds %struct.nouveau_vma, ptr %287, i32 0, i32 3
  %288 = ptrtoint ptr %addr3240 to i32
  call void @__asan_load8_noabort(i32 %288)
  %289 = load i64, ptr %addr3240, align 8
  %conv3246 = trunc i64 %289 to i32
  %290 = load ptr, ptr %cur.i, align 4
  %291 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %seg.i, align 8
  %cmp3251.not = icmp ult ptr %290, %292
  br i1 %cmp3251.not, label %if.end3206.if.end3276_crit_edge, label %do.end3270, !prof !24

if.end3206.if.end3276_crit_edge:                  ; preds = %if.end3206
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3276

do.end3270:                                       ; preds = %if.end3206
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end3276

if.end3276:                                       ; preds = %do.end3270, %if.end3206.if.end3276_crit_edge
  %293 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %cur.i, align 4
  %295 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %end.i, align 4
  %cmp3290.not = icmp ult ptr %294, %296
  br i1 %cmp3290.not, label %if.end3276.if.end3315_crit_edge, label %do.end3309, !prof !24

if.end3276.if.end3315_crit_edge:                  ; preds = %if.end3276
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3315

do.end3309:                                       ; preds = %if.end3276
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end3315

if.end3315:                                       ; preds = %do.end3309, %if.end3276.if.end3315_crit_edge
  %297 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3340 = getelementptr i32, ptr %298, i32 1
  store ptr %incdec.ptr3340, ptr %cur.i, align 4
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %conv3246, ptr %298, align 4
  %300 = load ptr, ptr %cur.i, align 4
  %301 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %seg.i, align 8
  %cmp3441.not = icmp ult ptr %300, %302
  br i1 %cmp3441.not, label %if.end3315.if.end3466_crit_edge, label %do.end3460, !prof !24

if.end3315.if.end3466_crit_edge:                  ; preds = %if.end3315
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3466

do.end3460:                                       ; preds = %if.end3315
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end3466

if.end3466:                                       ; preds = %do.end3460, %if.end3315.if.end3466_crit_edge
  %303 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %cur.i, align 4
  %305 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %end.i, align 4
  %cmp3480.not = icmp ult ptr %304, %306
  br i1 %cmp3480.not, label %if.end3466.if.end3505_crit_edge, label %do.end3499, !prof !24

if.end3466.if.end3505_crit_edge:                  ; preds = %if.end3466
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3505

do.end3499:                                       ; preds = %if.end3466
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end3505

if.end3505:                                       ; preds = %do.end3499, %if.end3466.if.end3505_crit_edge
  %307 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3530 = getelementptr i32, ptr %308, i32 1
  store ptr %incdec.ptr3530, ptr %cur.i, align 4
  %309 = ptrtoint ptr %308 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 287376, ptr %308, align 4
  %310 = load ptr, ptr %cur.i, align 4
  %311 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %seg.i, align 8
  %cmp3542.not = icmp ult ptr %310, %312
  br i1 %cmp3542.not, label %if.end3505.if.end3567_crit_edge, label %do.end3561, !prof !24

if.end3505.if.end3567_crit_edge:                  ; preds = %if.end3505
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3567

do.end3561:                                       ; preds = %if.end3505
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end3567

if.end3567:                                       ; preds = %do.end3561, %if.end3505.if.end3567_crit_edge
  %313 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %cur.i, align 4
  %315 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %end.i, align 4
  %cmp3581.not = icmp ult ptr %314, %316
  br i1 %cmp3581.not, label %if.end3567.if.end3606_crit_edge, label %do.end3600, !prof !24

if.end3567.if.end3606_crit_edge:                  ; preds = %if.end3567
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3606

do.end3600:                                       ; preds = %if.end3567
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end3606

if.end3606:                                       ; preds = %do.end3600, %if.end3567.if.end3606_crit_edge
  %317 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3631 = getelementptr i32, ptr %318, i32 1
  store ptr %incdec.ptr3631, ptr %cur.i, align 4
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 0, ptr %318, align 4
  %320 = load ptr, ptr %cur.i, align 4
  %321 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %seg.i, align 8
  %cmp3732.not = icmp ult ptr %320, %322
  br i1 %cmp3732.not, label %if.end3606.if.end3757_crit_edge, label %do.end3751, !prof !24

if.end3606.if.end3757_crit_edge:                  ; preds = %if.end3606
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3757

do.end3751:                                       ; preds = %if.end3606
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end3757

if.end3757:                                       ; preds = %do.end3751, %if.end3606.if.end3757_crit_edge
  %323 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %cur.i, align 4
  %325 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %end.i, align 4
  %cmp3771.not = icmp ult ptr %324, %326
  br i1 %cmp3771.not, label %if.end3757.if.end3796_crit_edge, label %do.end3790, !prof !24

if.end3757.if.end3796_crit_edge:                  ; preds = %if.end3757
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3796

do.end3790:                                       ; preds = %if.end3757
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end3796

if.end3796:                                       ; preds = %do.end3790, %if.end3757.if.end3796_crit_edge
  %327 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3821 = getelementptr i32, ptr %328, i32 1
  store ptr %incdec.ptr3821, ptr %cur.i, align 4
  %329 = ptrtoint ptr %328 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 287392, ptr %328, align 4
  %330 = load ptr, ptr %cur.i, align 4
  %331 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %seg.i, align 8
  %cmp3833.not = icmp ult ptr %330, %332
  br i1 %cmp3833.not, label %if.end3796.if.end3858_crit_edge, label %do.end3852, !prof !24

if.end3796.if.end3858_crit_edge:                  ; preds = %if.end3796
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3858

do.end3852:                                       ; preds = %if.end3796
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end3858

if.end3858:                                       ; preds = %do.end3852, %if.end3796.if.end3858_crit_edge
  %333 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %cur.i, align 4
  %335 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %end.i, align 4
  %cmp3872.not = icmp ult ptr %334, %336
  br i1 %cmp3872.not, label %if.end3858.if.end3897_crit_edge, label %do.end3891, !prof !24

if.end3858.if.end3897_crit_edge:                  ; preds = %if.end3858
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3897

do.end3891:                                       ; preds = %if.end3858
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end3897

if.end3897:                                       ; preds = %do.end3891, %if.end3858.if.end3897_crit_edge
  %337 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3922 = getelementptr i32, ptr %338, i32 1
  store ptr %incdec.ptr3922, ptr %cur.i, align 4
  %339 = ptrtoint ptr %338 to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 85, ptr %338, align 4
  %340 = load ptr, ptr %cur.i, align 4
  %341 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %seg.i, align 8
  %cmp4023.not = icmp ult ptr %340, %342
  br i1 %cmp4023.not, label %if.end3897.if.end4048_crit_edge, label %do.end4042, !prof !24

if.end3897.if.end4048_crit_edge:                  ; preds = %if.end3897
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4048

do.end4042:                                       ; preds = %if.end3897
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end4048

if.end4048:                                       ; preds = %do.end4042, %if.end3897.if.end4048_crit_edge
  %343 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %cur.i, align 4
  %345 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %end.i, align 4
  %cmp4062.not = icmp ult ptr %344, %346
  br i1 %cmp4062.not, label %if.end4048.if.end4087_crit_edge, label %do.end4081, !prof !24

if.end4048.if.end4087_crit_edge:                  ; preds = %if.end4048
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4087

do.end4081:                                       ; preds = %if.end4048
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end4087

if.end4087:                                       ; preds = %do.end4081, %if.end4048.if.end4087_crit_edge
  %347 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4112 = getelementptr i32, ptr %348, i32 1
  store ptr %incdec.ptr4112, ptr %cur.i, align 4
  %349 = ptrtoint ptr %348 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 287404, ptr %348, align 4
  %350 = load ptr, ptr %cur.i, align 4
  %351 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %seg.i, align 8
  %cmp4124.not = icmp ult ptr %350, %352
  br i1 %cmp4124.not, label %if.end4087.if.end4149_crit_edge, label %do.end4143, !prof !24

if.end4087.if.end4149_crit_edge:                  ; preds = %if.end4087
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4149

do.end4143:                                       ; preds = %if.end4087
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end4149

if.end4149:                                       ; preds = %do.end4143, %if.end4087.if.end4149_crit_edge
  %353 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %cur.i, align 4
  %355 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %end.i, align 4
  %cmp4163.not = icmp ult ptr %354, %356
  br i1 %cmp4163.not, label %if.end4149.if.end4188_crit_edge, label %do.end4182, !prof !24

if.end4149.if.end4188_crit_edge:                  ; preds = %if.end4149
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4188

do.end4182:                                       ; preds = %if.end4149
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end4188

if.end4188:                                       ; preds = %do.end4182, %if.end4149.if.end4188_crit_edge
  %357 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4213 = getelementptr i32, ptr %358, i32 1
  store ptr %incdec.ptr4213, ptr %cur.i, align 4
  %359 = ptrtoint ptr %358 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 3, ptr %358, align 4
  %360 = load ptr, ptr %cur.i, align 4
  %361 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %seg.i, align 8
  %cmp4344.not = icmp ult ptr %360, %362
  br i1 %cmp4344.not, label %if.end4188.if.end4369_crit_edge, label %do.end4363, !prof !24

if.end4188.if.end4369_crit_edge:                  ; preds = %if.end4188
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4369

do.end4363:                                       ; preds = %if.end4188
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 258, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end4369

if.end4369:                                       ; preds = %do.end4363, %if.end4188.if.end4369_crit_edge
  %363 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %cur.i, align 4
  %365 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %end.i, align 4
  %cmp4383.not = icmp ult ptr %364, %366
  br i1 %cmp4383.not, label %if.end4369.if.end4408_crit_edge, label %do.end4402, !prof !24

if.end4369.if.end4408_crit_edge:                  ; preds = %if.end4369
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4408

do.end4402:                                       ; preds = %if.end4369
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 258, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end4408

if.end4408:                                       ; preds = %do.end4402, %if.end4369.if.end4408_crit_edge
  %367 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4433 = getelementptr i32, ptr %368, i32 1
  store ptr %incdec.ptr4433, ptr %cur.i, align 4
  %369 = ptrtoint ptr %368 to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 549608, ptr %368, align 4
  %370 = load ptr, ptr %cur.i, align 4
  %371 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %seg.i, align 8
  %cmp4445.not = icmp ult ptr %370, %372
  br i1 %cmp4445.not, label %if.end4408.if.end4470_crit_edge, label %do.end4464, !prof !24

if.end4408.if.end4470_crit_edge:                  ; preds = %if.end4408
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4470

do.end4464:                                       ; preds = %if.end4408
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 258, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end4470

if.end4470:                                       ; preds = %do.end4464, %if.end4408.if.end4470_crit_edge
  %373 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %cur.i, align 4
  %375 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %end.i, align 4
  %cmp4484.not = icmp ult ptr %374, %376
  br i1 %cmp4484.not, label %if.end4470.if.end4509_crit_edge, label %do.end4503, !prof !24

if.end4470.if.end4509_crit_edge:                  ; preds = %if.end4470
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4509

do.end4503:                                       ; preds = %if.end4470
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 258, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end4509

if.end4509:                                       ; preds = %do.end4503, %if.end4470.if.end4509_crit_edge
  %377 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4534 = getelementptr i32, ptr %378, i32 1
  store ptr %incdec.ptr4534, ptr %cur.i, align 4
  %379 = ptrtoint ptr %378 to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 2, ptr %378, align 4
  %380 = load ptr, ptr %cur.i, align 4
  %381 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %seg.i, align 8
  %cmp4546.not = icmp ult ptr %380, %382
  br i1 %cmp4546.not, label %if.end4509.if.end4571_crit_edge, label %do.end4565, !prof !24

if.end4509.if.end4571_crit_edge:                  ; preds = %if.end4509
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4571

do.end4565:                                       ; preds = %if.end4509
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 258, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end4571

if.end4571:                                       ; preds = %do.end4565, %if.end4509.if.end4571_crit_edge
  %383 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %cur.i, align 4
  %385 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %end.i, align 4
  %cmp4585.not = icmp ult ptr %384, %386
  br i1 %cmp4585.not, label %if.end4571.if.end4610_crit_edge, label %do.end4604, !prof !24

if.end4571.if.end4610_crit_edge:                  ; preds = %if.end4571
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4610

do.end4604:                                       ; preds = %if.end4571
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 258, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end4610

if.end4610:                                       ; preds = %do.end4604, %if.end4571.if.end4610_crit_edge
  %387 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4635 = getelementptr i32, ptr %388, i32 1
  store ptr %incdec.ptr4635, ptr %cur.i, align 4
  %389 = ptrtoint ptr %388 to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 1, ptr %388, align 4
  %390 = load ptr, ptr %cur.i, align 4
  %391 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %seg.i, align 8
  %cmp4766.not = icmp ult ptr %390, %392
  br i1 %cmp4766.not, label %if.end4610.if.end4791_crit_edge, label %do.end4785, !prof !24

if.end4610.if.end4791_crit_edge:                  ; preds = %if.end4610
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4791

do.end4785:                                       ; preds = %if.end4610
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 264, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end4791

if.end4791:                                       ; preds = %do.end4785, %if.end4610.if.end4791_crit_edge
  %393 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %cur.i, align 4
  %395 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %end.i, align 4
  %cmp4805.not = icmp ult ptr %394, %396
  br i1 %cmp4805.not, label %if.end4791.if.end4830_crit_edge, label %do.end4824, !prof !24

if.end4791.if.end4830_crit_edge:                  ; preds = %if.end4791
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4830

do.end4824:                                       ; preds = %if.end4791
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 264, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end4830

if.end4830:                                       ; preds = %do.end4824, %if.end4791.if.end4830_crit_edge
  %397 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4855 = getelementptr i32, ptr %398, i32 1
  store ptr %incdec.ptr4855, ptr %cur.i, align 4
  %399 = ptrtoint ptr %398 to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 550272, ptr %398, align 4
  %400 = load ptr, ptr %cur.i, align 4
  %401 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %seg.i, align 8
  %cmp4867.not = icmp ult ptr %400, %402
  br i1 %cmp4867.not, label %if.end4830.if.end4892_crit_edge, label %do.end4886, !prof !24

if.end4830.if.end4892_crit_edge:                  ; preds = %if.end4830
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4892

do.end4886:                                       ; preds = %if.end4830
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 264, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end4892

if.end4892:                                       ; preds = %do.end4886, %if.end4830.if.end4892_crit_edge
  %403 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %cur.i, align 4
  %405 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %end.i, align 4
  %cmp4906.not = icmp ult ptr %404, %406
  br i1 %cmp4906.not, label %if.end4892.if.end4931_crit_edge, label %do.end4925, !prof !24

if.end4892.if.end4931_crit_edge:                  ; preds = %if.end4892
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4931

do.end4925:                                       ; preds = %if.end4892
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 264, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end4931

if.end4931:                                       ; preds = %do.end4925, %if.end4892.if.end4931_crit_edge
  %407 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4956 = getelementptr i32, ptr %408, i32 1
  store ptr %incdec.ptr4956, ptr %cur.i, align 4
  %409 = ptrtoint ptr %408 to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 4, ptr %408, align 4
  %410 = load ptr, ptr %cur.i, align 4
  %411 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %seg.i, align 8
  %cmp4972.not = icmp ult ptr %410, %412
  br i1 %cmp4972.not, label %if.end4931.if.end4997_crit_edge, label %do.end4991, !prof !24

if.end4931.if.end4997_crit_edge:                  ; preds = %if.end4931
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4997

do.end4991:                                       ; preds = %if.end4931
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 264, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end4997

if.end4997:                                       ; preds = %do.end4991, %if.end4931.if.end4997_crit_edge
  %413 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %cur.i, align 4
  %415 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %end.i, align 4
  %cmp5011.not = icmp ult ptr %414, %416
  br i1 %cmp5011.not, label %if.end4997.if.end5036_crit_edge, label %do.end5030, !prof !24

if.end4997.if.end5036_crit_edge:                  ; preds = %if.end4997
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5036

do.end5030:                                       ; preds = %if.end4997
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 264, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end5036

if.end5036:                                       ; preds = %do.end5030, %if.end4997.if.end5036_crit_edge
  %417 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5061 = getelementptr i32, ptr %418, i32 1
  store ptr %incdec.ptr5061, ptr %cur.i, align 4
  %419 = ptrtoint ptr %418 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %format.0, ptr %418, align 4
  %420 = load ptr, ptr %cur.i, align 4
  %421 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %seg.i, align 8
  %cmp5282.not = icmp ult ptr %420, %422
  br i1 %cmp5282.not, label %if.end5036.if.end5307_crit_edge, label %do.end5301, !prof !24

if.end5036.if.end5307_crit_edge:                  ; preds = %if.end5036
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5307

do.end5301:                                       ; preds = %if.end5036
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end5307

if.end5307:                                       ; preds = %do.end5301, %if.end5036.if.end5307_crit_edge
  %423 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %cur.i, align 4
  %425 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %end.i, align 4
  %cmp5321.not = icmp ult ptr %424, %426
  br i1 %cmp5321.not, label %if.end5307.if.end5346_crit_edge, label %do.end5340, !prof !24

if.end5307.if.end5346_crit_edge:                  ; preds = %if.end5307
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5346

do.end5340:                                       ; preds = %if.end5307
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end5346

if.end5346:                                       ; preds = %do.end5340, %if.end5307.if.end5346_crit_edge
  %427 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5371 = getelementptr i32, ptr %428, i32 1
  store ptr %incdec.ptr5371, ptr %cur.i, align 4
  %429 = ptrtoint ptr %428 to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 1337344, ptr %428, align 4
  %430 = load ptr, ptr %cur.i, align 4
  %431 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %seg.i, align 8
  %cmp5383.not = icmp ult ptr %430, %432
  br i1 %cmp5383.not, label %if.end5346.if.end5408_crit_edge, label %do.end5402, !prof !24

if.end5346.if.end5408_crit_edge:                  ; preds = %if.end5346
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5408

do.end5402:                                       ; preds = %if.end5346
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end5408

if.end5408:                                       ; preds = %do.end5402, %if.end5346.if.end5408_crit_edge
  %433 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %cur.i, align 4
  %435 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %end.i, align 4
  %cmp5422.not = icmp ult ptr %434, %436
  br i1 %cmp5422.not, label %if.end5408.if.end5447_crit_edge, label %do.end5441, !prof !24

if.end5408.if.end5447_crit_edge:                  ; preds = %if.end5408
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5447

do.end5441:                                       ; preds = %if.end5408
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end5447

if.end5447:                                       ; preds = %do.end5441, %if.end5408.if.end5447_crit_edge
  %437 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5472 = getelementptr i32, ptr %438, i32 1
  store ptr %incdec.ptr5472, ptr %cur.i, align 4
  %439 = ptrtoint ptr %438 to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 1, ptr %438, align 4
  %440 = load ptr, ptr %cur.i, align 4
  %441 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %seg.i, align 8
  %cmp5488.not = icmp ult ptr %440, %442
  br i1 %cmp5488.not, label %if.end5447.if.end5513_crit_edge, label %do.end5507, !prof !24

if.end5447.if.end5513_crit_edge:                  ; preds = %if.end5447
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5513

do.end5507:                                       ; preds = %if.end5447
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end5513

if.end5513:                                       ; preds = %do.end5507, %if.end5447.if.end5513_crit_edge
  %443 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %cur.i, align 4
  %445 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %end.i, align 4
  %cmp5527.not = icmp ult ptr %444, %446
  br i1 %cmp5527.not, label %if.end5513.if.end5552_crit_edge, label %do.end5546, !prof !24

if.end5513.if.end5552_crit_edge:                  ; preds = %if.end5513
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5552

do.end5546:                                       ; preds = %if.end5513
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end5552

if.end5552:                                       ; preds = %do.end5546, %if.end5513.if.end5552_crit_edge
  %447 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5577 = getelementptr i32, ptr %448, i32 1
  store ptr %incdec.ptr5577, ptr %cur.i, align 4
  %449 = ptrtoint ptr %448 to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 %format.0, ptr %448, align 4
  %450 = load ptr, ptr %cur.i, align 4
  %451 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %seg.i, align 8
  %cmp5589.not = icmp ult ptr %450, %452
  br i1 %cmp5589.not, label %if.end5552.if.end5614_crit_edge, label %do.end5608, !prof !24

if.end5552.if.end5614_crit_edge:                  ; preds = %if.end5552
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5614

do.end5608:                                       ; preds = %if.end5552
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end5614

if.end5614:                                       ; preds = %do.end5608, %if.end5552.if.end5614_crit_edge
  %453 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %cur.i, align 4
  %455 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %end.i, align 4
  %cmp5628.not = icmp ult ptr %454, %456
  br i1 %cmp5628.not, label %if.end5614.if.end5653_crit_edge, label %do.end5647, !prof !24

if.end5614.if.end5653_crit_edge:                  ; preds = %if.end5614
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5653

do.end5647:                                       ; preds = %if.end5614
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end5653

if.end5653:                                       ; preds = %do.end5647, %if.end5614.if.end5653_crit_edge
  %457 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5678 = getelementptr i32, ptr %458, i32 1
  store ptr %incdec.ptr5678, ptr %cur.i, align 4
  %459 = ptrtoint ptr %458 to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 0, ptr %458, align 4
  %460 = load ptr, ptr %cur.i, align 4
  %461 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %seg.i, align 8
  %cmp5690.not = icmp ult ptr %460, %462
  br i1 %cmp5690.not, label %if.end5653.if.end5715_crit_edge, label %do.end5709, !prof !24

if.end5653.if.end5715_crit_edge:                  ; preds = %if.end5653
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5715

do.end5709:                                       ; preds = %if.end5653
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end5715

if.end5715:                                       ; preds = %do.end5709, %if.end5653.if.end5715_crit_edge
  %463 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %cur.i, align 4
  %465 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %end.i, align 4
  %cmp5729.not = icmp ult ptr %464, %466
  br i1 %cmp5729.not, label %if.end5715.if.end5754_crit_edge, label %do.end5748, !prof !24

if.end5715.if.end5754_crit_edge:                  ; preds = %if.end5715
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5754

do.end5748:                                       ; preds = %if.end5715
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end5754

if.end5754:                                       ; preds = %do.end5748, %if.end5715.if.end5754_crit_edge
  %467 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5779 = getelementptr i32, ptr %468, i32 1
  store ptr %incdec.ptr5779, ptr %cur.i, align 4
  %469 = ptrtoint ptr %468 to i32
  call void @__asan_store4_noabort(i32 %469)
  store i32 0, ptr %468, align 4
  %470 = load ptr, ptr %cur.i, align 4
  %471 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %seg.i, align 8
  %cmp5791.not = icmp ult ptr %470, %472
  br i1 %cmp5791.not, label %if.end5754.if.end5816_crit_edge, label %do.end5810, !prof !24

if.end5754.if.end5816_crit_edge:                  ; preds = %if.end5754
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5816

do.end5810:                                       ; preds = %if.end5754
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end5816

if.end5816:                                       ; preds = %do.end5810, %if.end5754.if.end5816_crit_edge
  %473 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %cur.i, align 4
  %475 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %end.i, align 4
  %cmp5830.not = icmp ult ptr %474, %476
  br i1 %cmp5830.not, label %if.end5816.if.end5855_crit_edge, label %do.end5849, !prof !24

if.end5816.if.end5855_crit_edge:                  ; preds = %if.end5816
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5855

do.end5849:                                       ; preds = %if.end5816
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end5855

if.end5855:                                       ; preds = %do.end5849, %if.end5816.if.end5855_crit_edge
  %477 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5880 = getelementptr i32, ptr %478, i32 1
  store ptr %incdec.ptr5880, ptr %cur.i, align 4
  %479 = ptrtoint ptr %478 to i32
  call void @__asan_store4_noabort(i32 %479)
  store i32 1, ptr %478, align 4
  %480 = load ptr, ptr %cur.i, align 4
  %481 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %seg.i, align 8
  %cmp5981.not = icmp ult ptr %480, %482
  br i1 %cmp5981.not, label %if.end5855.if.end6006_crit_edge, label %do.end6000, !prof !24

if.end5855.if.end6006_crit_edge:                  ; preds = %if.end5855
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6006

do.end6000:                                       ; preds = %if.end5855
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 282, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end6006

if.end6006:                                       ; preds = %do.end6000, %if.end5855.if.end6006_crit_edge
  %483 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %cur.i, align 4
  %485 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %end.i, align 4
  %cmp6020.not = icmp ult ptr %484, %486
  br i1 %cmp6020.not, label %if.end6006.if.end6045_crit_edge, label %do.end6039, !prof !24

if.end6006.if.end6045_crit_edge:                  ; preds = %if.end6006
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6045

do.end6039:                                       ; preds = %if.end6006
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 282, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end6045

if.end6045:                                       ; preds = %do.end6039, %if.end6006.if.end6045_crit_edge
  %487 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6070 = getelementptr i32, ptr %488, i32 1
  store ptr %incdec.ptr6070, ptr %cur.i, align 4
  %489 = ptrtoint ptr %488 to i32
  call void @__asan_store4_noabort(i32 %489)
  store i32 288796, ptr %488, align 4
  %490 = load ptr, ptr %cur.i, align 4
  %491 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %seg.i, align 8
  %cmp6082.not = icmp ult ptr %490, %492
  br i1 %cmp6082.not, label %if.end6045.if.end6107_crit_edge, label %do.end6101, !prof !24

if.end6045.if.end6107_crit_edge:                  ; preds = %if.end6045
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6107

do.end6101:                                       ; preds = %if.end6045
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 282, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end6107

if.end6107:                                       ; preds = %do.end6101, %if.end6045.if.end6107_crit_edge
  %493 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %cur.i, align 4
  %495 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %end.i, align 4
  %cmp6121.not = icmp ult ptr %494, %496
  br i1 %cmp6121.not, label %if.end6107.if.end6146_crit_edge, label %do.end6140, !prof !24

if.end6107.if.end6146_crit_edge:                  ; preds = %if.end6107
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6146

do.end6140:                                       ; preds = %if.end6107
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 282, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end6146

if.end6146:                                       ; preds = %do.end6140, %if.end6107.if.end6146_crit_edge
  %497 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6171 = getelementptr i32, ptr %498, i32 1
  store ptr %incdec.ptr6171, ptr %cur.i, align 4
  %499 = ptrtoint ptr %498 to i32
  call void @__asan_store4_noabort(i32 %499)
  store i32 1, ptr %498, align 4
  %500 = load ptr, ptr %cur.i, align 4
  %501 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %seg.i, align 8
  %cmp6362.not = icmp ult ptr %500, %502
  br i1 %cmp6362.not, label %if.end6146.if.end6387_crit_edge, label %do.end6381, !prof !24

if.end6146.if.end6387_crit_edge:                  ; preds = %if.end6146
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6387

do.end6381:                                       ; preds = %if.end6146
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 287, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end6387

if.end6387:                                       ; preds = %do.end6381, %if.end6146.if.end6387_crit_edge
  %503 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %cur.i, align 4
  %505 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %end.i, align 4
  %cmp6401.not = icmp ult ptr %504, %506
  br i1 %cmp6401.not, label %if.end6387.if.end6426_crit_edge, label %do.end6420, !prof !24

if.end6387.if.end6426_crit_edge:                  ; preds = %if.end6387
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6426

do.end6420:                                       ; preds = %if.end6387
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 287, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end6426

if.end6426:                                       ; preds = %do.end6420, %if.end6387.if.end6426_crit_edge
  %507 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6451 = getelementptr i32, ptr %508, i32 1
  store ptr %incdec.ptr6451, ptr %cur.i, align 4
  %509 = ptrtoint ptr %508 to i32
  call void @__asan_store4_noabort(i32 %509)
  store i32 1075264, ptr %508, align 4
  %510 = load ptr, ptr %cur.i, align 4
  %511 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %seg.i, align 8
  %cmp6463.not = icmp ult ptr %510, %512
  br i1 %cmp6463.not, label %if.end6426.if.end6488_crit_edge, label %do.end6482, !prof !24

if.end6426.if.end6488_crit_edge:                  ; preds = %if.end6426
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6488

do.end6482:                                       ; preds = %if.end6426
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 287, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end6488

if.end6488:                                       ; preds = %do.end6482, %if.end6426.if.end6488_crit_edge
  %513 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %cur.i, align 4
  %515 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %end.i, align 4
  %cmp6502.not = icmp ult ptr %514, %516
  br i1 %cmp6502.not, label %if.end6488.if.end6527_crit_edge, label %do.end6521, !prof !24

if.end6488.if.end6527_crit_edge:                  ; preds = %if.end6488
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6527

do.end6521:                                       ; preds = %if.end6488
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 287, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end6527

if.end6527:                                       ; preds = %do.end6521, %if.end6488.if.end6527_crit_edge
  %517 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6552 = getelementptr i32, ptr %518, i32 1
  store ptr %incdec.ptr6552, ptr %cur.i, align 4
  %519 = ptrtoint ptr %518 to i32
  call void @__asan_store4_noabort(i32 %519)
  store i32 0, ptr %518, align 4
  %520 = load ptr, ptr %cur.i, align 4
  %521 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %seg.i, align 8
  %cmp6564.not = icmp ult ptr %520, %522
  br i1 %cmp6564.not, label %if.end6527.if.end6589_crit_edge, label %do.end6583, !prof !24

if.end6527.if.end6589_crit_edge:                  ; preds = %if.end6527
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6589

do.end6583:                                       ; preds = %if.end6527
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 287, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end6589

if.end6589:                                       ; preds = %do.end6583, %if.end6527.if.end6589_crit_edge
  %523 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %cur.i, align 4
  %525 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %end.i, align 4
  %cmp6603.not = icmp ult ptr %524, %526
  br i1 %cmp6603.not, label %if.end6589.if.end6628_crit_edge, label %do.end6622, !prof !24

if.end6589.if.end6628_crit_edge:                  ; preds = %if.end6589
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6628

do.end6622:                                       ; preds = %if.end6589
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 287, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end6628

if.end6628:                                       ; preds = %do.end6622, %if.end6589.if.end6628_crit_edge
  %527 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6653 = getelementptr i32, ptr %528, i32 1
  store ptr %incdec.ptr6653, ptr %cur.i, align 4
  %529 = ptrtoint ptr %528 to i32
  call void @__asan_store4_noabort(i32 %529)
  store i32 1, ptr %528, align 4
  %530 = load ptr, ptr %cur.i, align 4
  %531 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %seg.i, align 8
  %cmp6665.not = icmp ult ptr %530, %532
  br i1 %cmp6665.not, label %if.end6628.if.end6690_crit_edge, label %do.end6684, !prof !24

if.end6628.if.end6690_crit_edge:                  ; preds = %if.end6628
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6690

do.end6684:                                       ; preds = %if.end6628
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 287, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end6690

if.end6690:                                       ; preds = %do.end6684, %if.end6628.if.end6690_crit_edge
  %533 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %cur.i, align 4
  %535 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %end.i, align 4
  %cmp6704.not = icmp ult ptr %534, %536
  br i1 %cmp6704.not, label %if.end6690.if.end6729_crit_edge, label %do.end6723, !prof !24

if.end6690.if.end6729_crit_edge:                  ; preds = %if.end6690
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6729

do.end6723:                                       ; preds = %if.end6690
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 287, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end6729

if.end6729:                                       ; preds = %do.end6723, %if.end6690.if.end6729_crit_edge
  %537 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6754 = getelementptr i32, ptr %538, i32 1
  store ptr %incdec.ptr6754, ptr %cur.i, align 4
  %539 = ptrtoint ptr %538 to i32
  call void @__asan_store4_noabort(i32 %539)
  store i32 0, ptr %538, align 4
  %540 = load ptr, ptr %cur.i, align 4
  %541 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %seg.i, align 8
  %cmp6766.not = icmp ult ptr %540, %542
  br i1 %cmp6766.not, label %if.end6729.if.end6791_crit_edge, label %do.end6785, !prof !24

if.end6729.if.end6791_crit_edge:                  ; preds = %if.end6729
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6791

do.end6785:                                       ; preds = %if.end6729
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 287, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end6791

if.end6791:                                       ; preds = %do.end6785, %if.end6729.if.end6791_crit_edge
  %543 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %cur.i, align 4
  %545 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %end.i, align 4
  %cmp6805.not = icmp ult ptr %544, %546
  br i1 %cmp6805.not, label %if.end6791.if.end6830_crit_edge, label %do.end6824, !prof !24

if.end6791.if.end6830_crit_edge:                  ; preds = %if.end6791
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6830

do.end6824:                                       ; preds = %if.end6791
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 287, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end6830

if.end6830:                                       ; preds = %do.end6824, %if.end6791.if.end6830_crit_edge
  %547 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6855 = getelementptr i32, ptr %548, i32 1
  store ptr %incdec.ptr6855, ptr %cur.i, align 4
  %549 = ptrtoint ptr %548 to i32
  call void @__asan_store4_noabort(i32 %549)
  store i32 1, ptr %548, align 4
  %550 = load ptr, ptr %cur.i, align 4
  %551 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %seg.i, align 8
  %cmp6956.not = icmp ult ptr %550, %552
  br i1 %cmp6956.not, label %if.end6830.if.end6981_crit_edge, label %do.end6975, !prof !24

if.end6830.if.end6981_crit_edge:                  ; preds = %if.end6830
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6981

do.end6975:                                       ; preds = %if.end6830
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end6981

if.end6981:                                       ; preds = %do.end6975, %if.end6830.if.end6981_crit_edge
  %553 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %cur.i, align 4
  %555 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %end.i, align 4
  %cmp6995.not = icmp ult ptr %554, %556
  br i1 %cmp6995.not, label %if.end6981.if.end7020_crit_edge, label %do.end7014, !prof !24

if.end6981.if.end7020_crit_edge:                  ; preds = %if.end6981
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7020

do.end7014:                                       ; preds = %if.end6981
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end7020

if.end7020:                                       ; preds = %do.end7014, %if.end6981.if.end7020_crit_edge
  %557 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %cur.i, align 4
  %incdec.ptr7045 = getelementptr i32, ptr %558, i32 1
  store ptr %incdec.ptr7045, ptr %cur.i, align 4
  %559 = ptrtoint ptr %558 to i32
  call void @__asan_store4_noabort(i32 %559)
  store i32 288904, ptr %558, align 4
  %560 = load ptr, ptr %cur.i, align 4
  %561 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %seg.i, align 8
  %cmp7057.not = icmp ult ptr %560, %562
  br i1 %cmp7057.not, label %if.end7020.if.end7082_crit_edge, label %do.end7076, !prof !24

if.end7020.if.end7082_crit_edge:                  ; preds = %if.end7020
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7082

do.end7076:                                       ; preds = %if.end7020
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end7082

if.end7082:                                       ; preds = %do.end7076, %if.end7020.if.end7082_crit_edge
  %563 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %cur.i, align 4
  %565 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %end.i, align 4
  %cmp7096.not = icmp ult ptr %564, %566
  br i1 %cmp7096.not, label %if.end7082.if.end7121_crit_edge, label %do.end7115, !prof !24

if.end7082.if.end7121_crit_edge:                  ; preds = %if.end7082
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7121

do.end7115:                                       ; preds = %if.end7082
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end7121

if.end7121:                                       ; preds = %do.end7115, %if.end7082.if.end7121_crit_edge
  %567 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %cur.i, align 4
  %incdec.ptr7146 = getelementptr i32, ptr %568, i32 1
  store ptr %incdec.ptr7146, ptr %cur.i, align 4
  %569 = ptrtoint ptr %568 to i32
  call void @__asan_store4_noabort(i32 %569)
  store i32 1, ptr %568, align 4
  %570 = load ptr, ptr %cur.i, align 4
  %571 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %seg.i, align 8
  %cmp7337.not = icmp ult ptr %570, %572
  br i1 %cmp7337.not, label %if.end7121.if.end7362_crit_edge, label %do.end7356, !prof !24

if.end7121.if.end7362_crit_edge:                  ; preds = %if.end7121
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7362

do.end7356:                                       ; preds = %if.end7121
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end7362

if.end7362:                                       ; preds = %do.end7356, %if.end7121.if.end7362_crit_edge
  %573 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %cur.i, align 4
  %575 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %end.i, align 4
  %cmp7376.not = icmp ult ptr %574, %576
  br i1 %cmp7376.not, label %if.end7362.if.end7401_crit_edge, label %do.end7395, !prof !24

if.end7362.if.end7401_crit_edge:                  ; preds = %if.end7362
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7401

do.end7395:                                       ; preds = %if.end7362
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end7401

if.end7401:                                       ; preds = %do.end7395, %if.end7362.if.end7401_crit_edge
  %577 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %cur.i, align 4
  %incdec.ptr7426 = getelementptr i32, ptr %578, i32 1
  store ptr %incdec.ptr7426, ptr %cur.i, align 4
  %579 = ptrtoint ptr %578 to i32
  call void @__asan_store4_noabort(i32 %579)
  store i32 1075392, ptr %578, align 4
  %580 = load ptr, ptr %cur.i, align 4
  %581 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %seg.i, align 8
  %cmp7438.not = icmp ult ptr %580, %582
  br i1 %cmp7438.not, label %if.end7401.if.end7463_crit_edge, label %do.end7457, !prof !24

if.end7401.if.end7463_crit_edge:                  ; preds = %if.end7401
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7463

do.end7457:                                       ; preds = %if.end7401
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end7463

if.end7463:                                       ; preds = %do.end7457, %if.end7401.if.end7463_crit_edge
  %583 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %cur.i, align 4
  %585 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %end.i, align 4
  %cmp7477.not = icmp ult ptr %584, %586
  br i1 %cmp7477.not, label %if.end7463.if.end7502_crit_edge, label %do.end7496, !prof !24

if.end7463.if.end7502_crit_edge:                  ; preds = %if.end7463
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7502

do.end7496:                                       ; preds = %if.end7463
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end7502

if.end7502:                                       ; preds = %do.end7496, %if.end7463.if.end7502_crit_edge
  %587 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %cur.i, align 4
  %incdec.ptr7527 = getelementptr i32, ptr %588, i32 1
  store ptr %incdec.ptr7527, ptr %cur.i, align 4
  %589 = ptrtoint ptr %588 to i32
  call void @__asan_store4_noabort(i32 %589)
  store i32 0, ptr %588, align 4
  %590 = load ptr, ptr %cur.i, align 4
  %591 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %seg.i, align 8
  %cmp7539.not = icmp ult ptr %590, %592
  br i1 %cmp7539.not, label %if.end7502.if.end7564_crit_edge, label %do.end7558, !prof !24

if.end7502.if.end7564_crit_edge:                  ; preds = %if.end7502
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7564

do.end7558:                                       ; preds = %if.end7502
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end7564

if.end7564:                                       ; preds = %do.end7558, %if.end7502.if.end7564_crit_edge
  %593 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %cur.i, align 4
  %595 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %end.i, align 4
  %cmp7578.not = icmp ult ptr %594, %596
  br i1 %cmp7578.not, label %if.end7564.if.end7603_crit_edge, label %do.end7597, !prof !24

if.end7564.if.end7603_crit_edge:                  ; preds = %if.end7564
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7603

do.end7597:                                       ; preds = %if.end7564
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end7603

if.end7603:                                       ; preds = %do.end7597, %if.end7564.if.end7603_crit_edge
  %597 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %cur.i, align 4
  %incdec.ptr7628 = getelementptr i32, ptr %598, i32 1
  store ptr %incdec.ptr7628, ptr %cur.i, align 4
  %599 = ptrtoint ptr %598 to i32
  call void @__asan_store4_noabort(i32 %599)
  store i32 1, ptr %598, align 4
  %600 = load ptr, ptr %cur.i, align 4
  %601 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %seg.i, align 8
  %cmp7640.not = icmp ult ptr %600, %602
  br i1 %cmp7640.not, label %if.end7603.if.end7665_crit_edge, label %do.end7659, !prof !24

if.end7603.if.end7665_crit_edge:                  ; preds = %if.end7603
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7665

do.end7659:                                       ; preds = %if.end7603
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end7665

if.end7665:                                       ; preds = %do.end7659, %if.end7603.if.end7665_crit_edge
  %603 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %cur.i, align 4
  %605 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %end.i, align 4
  %cmp7679.not = icmp ult ptr %604, %606
  br i1 %cmp7679.not, label %if.end7665.if.end7704_crit_edge, label %do.end7698, !prof !24

if.end7665.if.end7704_crit_edge:                  ; preds = %if.end7665
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7704

do.end7698:                                       ; preds = %if.end7665
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end7704

if.end7704:                                       ; preds = %do.end7698, %if.end7665.if.end7704_crit_edge
  %607 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %cur.i, align 4
  %incdec.ptr7729 = getelementptr i32, ptr %608, i32 1
  store ptr %incdec.ptr7729, ptr %cur.i, align 4
  %609 = ptrtoint ptr %608 to i32
  call void @__asan_store4_noabort(i32 %609)
  store i32 0, ptr %608, align 4
  %610 = load ptr, ptr %cur.i, align 4
  %611 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %seg.i, align 8
  %cmp7741.not = icmp ult ptr %610, %612
  br i1 %cmp7741.not, label %if.end7704.if.end7766_crit_edge, label %do.end7760, !prof !24

if.end7704.if.end7766_crit_edge:                  ; preds = %if.end7704
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7766

do.end7760:                                       ; preds = %if.end7704
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end7766

if.end7766:                                       ; preds = %do.end7760, %if.end7704.if.end7766_crit_edge
  %613 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %cur.i, align 4
  %615 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %end.i, align 4
  %cmp7780.not = icmp ult ptr %614, %616
  br i1 %cmp7780.not, label %if.end7766.if.end7805_crit_edge, label %do.end7799, !prof !24

if.end7766.if.end7805_crit_edge:                  ; preds = %if.end7766
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7805

do.end7799:                                       ; preds = %if.end7766
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end7805

if.end7805:                                       ; preds = %do.end7799, %if.end7766.if.end7805_crit_edge
  %617 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %cur.i, align 4
  %incdec.ptr7830 = getelementptr i32, ptr %618, i32 1
  store ptr %incdec.ptr7830, ptr %cur.i, align 4
  %619 = ptrtoint ptr %618 to i32
  call void @__asan_store4_noabort(i32 %619)
  store i32 1, ptr %618, align 4
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 1
  %620 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %kick.i, align 4
  tail call void %621(ptr noundef %9) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end7805, %if.then15, %sw.epilog11.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then15 ], [ 0, %if.end7805 ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call12, %sw.epilog11.cleanup_crit_edge ]
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

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nv50_fbcon.c", i32 55, i32 3}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/nouveau/nv50_fbcon.c", i32 61, i32 2}
!9 = distinct !{null, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/nv50_fbcon.c", i32 197, i32 38}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nv50_fbcon.c", i32 219, i32 2}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 2000, i32 1}
