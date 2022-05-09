; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvc0_fbcon.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvc0_fbcon.c"
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

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/nouveau/nvc0_fbcon.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fbconTwoD\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 8, i64 15, i64 16, i64 32]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 8]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 55, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [40 x i8] c"../drivers/gpu/drm/nouveau/nvc0_fbcon.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 170, i32 38 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.9], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvc0_fbcon_fillrect(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %rect) local_unnamed_addr #0 align 64 {
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
    i32 4, label %entry.if.then_crit_edge1554
  ]

entry.if.then_crit_edge1554:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge1554
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
  %cond = select i1 %cmp7, i32 7, i32 9
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
  br i1 %cmp12.not, label %if.end10.if.end292_crit_edge, label %if.end93

if.end10.if.end292_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end292

if.end93:                                         ; preds = %if.end10
  %31 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur.i, align 4
  %33 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %seg.i, align 8
  %cmp110.not = icmp ult ptr %32, %34
  br i1 %cmp110.not, label %if.end93.if.end135_crit_edge, label %do.end129, !prof !24

if.end93.if.end135_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end135

do.end129:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end135

if.end135:                                        ; preds = %do.end129, %if.end93.if.end135_crit_edge
  %35 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %end.i, align 4
  %cmp148.not = icmp ult ptr %36, %38
  br i1 %cmp148.not, label %if.end135.if.end173_crit_edge, label %do.end167, !prof !24

if.end135.if.end173_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end173

do.end167:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end173

if.end173:                                        ; preds = %do.end167, %if.end135.if.end173_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %40, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -2147393365, ptr %40, align 4
  br label %if.end292

if.end292:                                        ; preds = %if.end173, %if.end10.if.end292_crit_edge
  %42 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cur.i, align 4
  %44 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %seg.i, align 8
  %cmp309.not = icmp ult ptr %43, %45
  br i1 %cmp309.not, label %if.end292.if.end334_crit_edge, label %do.end328, !prof !24

if.end292.if.end334_crit_edge:                    ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end334

do.end328:                                        ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end334

if.end334:                                        ; preds = %do.end328, %if.end292.if.end334_crit_edge
  %46 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur.i, align 4
  %48 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %end.i, align 4
  %cmp348.not = icmp ult ptr %47, %49
  br i1 %cmp348.not, label %if.end334.if.end373_crit_edge, label %do.end367, !prof !24

if.end334.if.end373_crit_edge:                    ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end373

do.end367:                                        ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end373

if.end373:                                        ; preds = %do.end367, %if.end334.if.end373_crit_edge
  %50 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cur.i, align 4
  %incdec.ptr398 = getelementptr i32, ptr %51, i32 1
  store ptr %incdec.ptr398, ptr %cur.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 536961378, ptr %51, align 4
  %53 = load ptr, ptr %cur.i, align 4
  %54 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %seg.i, align 8
  %cmp410.not = icmp ult ptr %53, %55
  br i1 %cmp410.not, label %if.end373.if.end435_crit_edge, label %do.end429, !prof !24

if.end373.if.end435_crit_edge:                    ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end435

do.end429:                                        ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end435

if.end435:                                        ; preds = %do.end429, %if.end373.if.end435_crit_edge
  %56 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cur.i, align 4
  %58 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %end.i, align 4
  %cmp449.not = icmp ult ptr %57, %59
  br i1 %cmp449.not, label %if.end435.if.end474_crit_edge, label %do.end468, !prof !24

if.end435.if.end474_crit_edge:                    ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end474

do.end468:                                        ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end474

if.end474:                                        ; preds = %do.end468, %if.end435.if.end474_crit_edge
  %60 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cur.i, align 4
  %incdec.ptr499 = getelementptr i32, ptr %61, i32 1
  store ptr %incdec.ptr499, ptr %cur.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %colour.0, ptr %61, align 4
  %63 = load ptr, ptr %cur.i, align 4
  %64 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %seg.i, align 8
  %cmp690.not = icmp ult ptr %63, %65
  br i1 %cmp690.not, label %if.end474.if.end715_crit_edge, label %do.end709, !prof !24

if.end474.if.end715_crit_edge:                    ; preds = %if.end474
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end715

do.end709:                                        ; preds = %if.end474
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end715

if.end715:                                        ; preds = %do.end709, %if.end474.if.end715_crit_edge
  %66 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cur.i, align 4
  %68 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %end.i, align 4
  %cmp729.not = icmp ult ptr %67, %69
  br i1 %cmp729.not, label %if.end715.if.end754_crit_edge, label %do.end748, !prof !24

if.end715.if.end754_crit_edge:                    ; preds = %if.end715
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end754

do.end748:                                        ; preds = %if.end715
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end754

if.end754:                                        ; preds = %do.end748, %if.end715.if.end754_crit_edge
  %70 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cur.i, align 4
  %incdec.ptr779 = getelementptr i32, ptr %71, i32 1
  store ptr %incdec.ptr779, ptr %cur.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 537158016, ptr %71, align 4
  %73 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rect, align 4
  %75 = load ptr, ptr %cur.i, align 4
  %76 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %seg.i, align 8
  %cmp791.not = icmp ult ptr %75, %77
  br i1 %cmp791.not, label %if.end754.if.end816_crit_edge, label %do.end810, !prof !24

if.end754.if.end816_crit_edge:                    ; preds = %if.end754
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end816

do.end810:                                        ; preds = %if.end754
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end816

if.end816:                                        ; preds = %do.end810, %if.end754.if.end816_crit_edge
  %78 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cur.i, align 4
  %80 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %end.i, align 4
  %cmp830.not = icmp ult ptr %79, %81
  br i1 %cmp830.not, label %if.end816.if.end855_crit_edge, label %do.end849, !prof !24

if.end816.if.end855_crit_edge:                    ; preds = %if.end816
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end855

do.end849:                                        ; preds = %if.end816
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end855

if.end855:                                        ; preds = %do.end849, %if.end816.if.end855_crit_edge
  %82 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cur.i, align 4
  %incdec.ptr880 = getelementptr i32, ptr %83, i32 1
  store ptr %incdec.ptr880, ptr %cur.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %74, ptr %83, align 4
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %85 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dy, align 4
  %87 = load ptr, ptr %cur.i, align 4
  %88 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %seg.i, align 8
  %cmp892.not = icmp ult ptr %87, %89
  br i1 %cmp892.not, label %if.end855.if.end917_crit_edge, label %do.end911, !prof !24

if.end855.if.end917_crit_edge:                    ; preds = %if.end855
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end917

do.end911:                                        ; preds = %if.end855
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end917

if.end917:                                        ; preds = %do.end911, %if.end855.if.end917_crit_edge
  %90 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cur.i, align 4
  %92 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %end.i, align 4
  %cmp931.not = icmp ult ptr %91, %93
  br i1 %cmp931.not, label %if.end917.if.end956_crit_edge, label %do.end950, !prof !24

if.end917.if.end956_crit_edge:                    ; preds = %if.end917
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end956

do.end950:                                        ; preds = %if.end917
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end956

if.end956:                                        ; preds = %do.end950, %if.end917.if.end956_crit_edge
  %94 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cur.i, align 4
  %incdec.ptr981 = getelementptr i32, ptr %95, i32 1
  store ptr %incdec.ptr981, ptr %cur.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %86, ptr %95, align 4
  %97 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rect, align 4
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %99 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %width, align 4
  %add = add i32 %100, %98
  %101 = load ptr, ptr %cur.i, align 4
  %102 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %seg.i, align 8
  %cmp994.not = icmp ult ptr %101, %103
  br i1 %cmp994.not, label %if.end956.if.end1019_crit_edge, label %do.end1013, !prof !24

if.end956.if.end1019_crit_edge:                   ; preds = %if.end956
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1019

do.end1013:                                       ; preds = %if.end956
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1019

if.end1019:                                       ; preds = %do.end1013, %if.end956.if.end1019_crit_edge
  %104 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cur.i, align 4
  %106 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %end.i, align 4
  %cmp1033.not = icmp ult ptr %105, %107
  br i1 %cmp1033.not, label %if.end1019.if.end1058_crit_edge, label %do.end1052, !prof !24

if.end1019.if.end1058_crit_edge:                  ; preds = %if.end1019
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1058

do.end1052:                                       ; preds = %if.end1019
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1058

if.end1058:                                       ; preds = %do.end1052, %if.end1019.if.end1058_crit_edge
  %108 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1083 = getelementptr i32, ptr %109, i32 1
  store ptr %incdec.ptr1083, ptr %cur.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %add, ptr %109, align 4
  %111 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dy, align 4
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %113 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %height, align 4
  %add1092 = add i32 %114, %112
  %115 = load ptr, ptr %cur.i, align 4
  %116 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %seg.i, align 8
  %cmp1097.not = icmp ult ptr %115, %117
  br i1 %cmp1097.not, label %if.end1058.if.end1122_crit_edge, label %do.end1116, !prof !24

if.end1058.if.end1122_crit_edge:                  ; preds = %if.end1058
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1122

do.end1116:                                       ; preds = %if.end1058
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1122

if.end1122:                                       ; preds = %do.end1116, %if.end1058.if.end1122_crit_edge
  %118 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cur.i, align 4
  %120 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %end.i, align 4
  %cmp1136.not = icmp ult ptr %119, %121
  br i1 %cmp1136.not, label %if.end1122.if.end1161_crit_edge, label %do.end1155, !prof !24

if.end1122.if.end1161_crit_edge:                  ; preds = %if.end1122
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1161

do.end1155:                                       ; preds = %if.end1122
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1161

if.end1161:                                       ; preds = %do.end1155, %if.end1122.if.end1161_crit_edge
  %122 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1186 = getelementptr i32, ptr %123, i32 1
  store ptr %incdec.ptr1186, ptr %cur.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %add1092, ptr %123, align 4
  %125 = ptrtoint ptr %rop to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp1192.not = icmp eq i32 %126, 0
  br i1 %cmp1192.not, label %if.end1161.if.end1424_crit_edge, label %if.end1287

if.end1161.if.end1424_crit_edge:                  ; preds = %if.end1161
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1424

if.end1287:                                       ; preds = %if.end1161
  %127 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cur.i, align 4
  %129 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %seg.i, align 8
  %cmp1310.not = icmp ult ptr %128, %130
  br i1 %cmp1310.not, label %if.end1287.if.end1335_crit_edge, label %do.end1329, !prof !24

if.end1287.if.end1335_crit_edge:                  ; preds = %if.end1287
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1335

do.end1329:                                       ; preds = %if.end1287
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1335

if.end1335:                                       ; preds = %do.end1329, %if.end1287.if.end1335_crit_edge
  %131 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cur.i, align 4
  %133 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %end.i, align 4
  %cmp1349.not = icmp ult ptr %132, %134
  br i1 %cmp1349.not, label %if.end1335.if.end1374_crit_edge, label %do.end1368, !prof !24

if.end1335.if.end1374_crit_edge:                  ; preds = %if.end1335
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1374

do.end1368:                                       ; preds = %if.end1335
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1374

if.end1374:                                       ; preds = %do.end1368, %if.end1335.if.end1374_crit_edge
  %135 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1399 = getelementptr i32, ptr %136, i32 1
  store ptr %incdec.ptr1399, ptr %cur.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -2147262293, ptr %136, align 4
  br label %if.end1424

if.end1424:                                       ; preds = %if.end1374, %if.end1161.if.end1424_crit_edge
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 1
  %138 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %kick.i, align 4
  tail call void %139(ptr noundef %9) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end1424, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1424 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvc0_fbcon_copyarea(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %region) local_unnamed_addr #0 align 64 {
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
  %add.ptr.i = getelementptr i32, ptr %11, i32 11
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %13
  br i1 %cmp.not.i, label %entry.if.end83_crit_edge, label %if.then.i

entry.if.end83_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end83

if.then.i:                                        ; preds = %entry
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 8
  %call.i = tail call i32 %15(ptr noundef %9, i32 noundef 11) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end83_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i.if.end83_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end83

if.end83:                                         ; preds = %if.then.i.if.end83_crit_edge, %entry.if.end83_crit_edge
  %16 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %17, i32 11
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 5
  %18 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %17, %add.ptr4.i
  br i1 %cmp.not, label %if.end83.if.end124_crit_edge, label %do.end118, !prof !24

if.end83.if.end124_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end124

do.end118:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end124

if.end124:                                        ; preds = %do.end118, %if.end83.if.end124_crit_edge
  %19 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cur.i, align 4
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i, align 4
  %cmp137.not = icmp ult ptr %20, %22
  br i1 %cmp137.not, label %if.end124.if.end162_crit_edge, label %do.end156, !prof !24

if.end124.if.end162_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end162

do.end156:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end162

if.end162:                                        ; preds = %do.end156, %if.end124.if.end162_crit_edge
  %23 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -2147459004, ptr %24, align 4
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp387.not = icmp ult ptr %26, %28
  br i1 %cmp387.not, label %if.end162.if.end412_crit_edge, label %do.end406, !prof !24

if.end162.if.end412_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end412

do.end406:                                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end412

if.end412:                                        ; preds = %do.end406, %if.end162.if.end412_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp426.not = icmp ult ptr %30, %32
  br i1 %cmp426.not, label %if.end412.if.end451_crit_edge, label %do.end445, !prof !24

if.end412.if.end451_crit_edge:                    ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end451

do.end445:                                        ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end451

if.end451:                                        ; preds = %do.end445, %if.end412.if.end451_crit_edge
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr476 = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr476, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 537158188, ptr %34, align 4
  %36 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %region, align 4
  %38 = load ptr, ptr %cur.i, align 4
  %39 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %seg.i, align 8
  %cmp488.not = icmp ult ptr %38, %40
  br i1 %cmp488.not, label %if.end451.if.end513_crit_edge, label %do.end507, !prof !24

if.end451.if.end513_crit_edge:                    ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end513

do.end507:                                        ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end513

if.end513:                                        ; preds = %do.end507, %if.end451.if.end513_crit_edge
  %41 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur.i, align 4
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i, align 4
  %cmp527.not = icmp ult ptr %42, %44
  br i1 %cmp527.not, label %if.end513.if.end552_crit_edge, label %do.end546, !prof !24

if.end513.if.end552_crit_edge:                    ; preds = %if.end513
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end552

do.end546:                                        ; preds = %if.end513
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end552

if.end552:                                        ; preds = %do.end546, %if.end513.if.end552_crit_edge
  %45 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i, align 4
  %incdec.ptr577 = getelementptr i32, ptr %46, i32 1
  store ptr %incdec.ptr577, ptr %cur.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %37, ptr %46, align 4
  %dy = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 1
  %48 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dy, align 4
  %50 = load ptr, ptr %cur.i, align 4
  %51 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %seg.i, align 8
  %cmp589.not = icmp ult ptr %50, %52
  br i1 %cmp589.not, label %if.end552.if.end614_crit_edge, label %do.end608, !prof !24

if.end552.if.end614_crit_edge:                    ; preds = %if.end552
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end614

do.end608:                                        ; preds = %if.end552
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end614

if.end614:                                        ; preds = %do.end608, %if.end552.if.end614_crit_edge
  %53 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cur.i, align 4
  %55 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %end.i, align 4
  %cmp628.not = icmp ult ptr %54, %56
  br i1 %cmp628.not, label %if.end614.if.end653_crit_edge, label %do.end647, !prof !24

if.end614.if.end653_crit_edge:                    ; preds = %if.end614
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end653

do.end647:                                        ; preds = %if.end614
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end653

if.end653:                                        ; preds = %do.end647, %if.end614.if.end653_crit_edge
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %incdec.ptr678 = getelementptr i32, ptr %58, i32 1
  store ptr %incdec.ptr678, ptr %cur.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %49, ptr %58, align 4
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 2
  %60 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %width, align 4
  %62 = load ptr, ptr %cur.i, align 4
  %63 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %seg.i, align 8
  %cmp690.not = icmp ult ptr %62, %64
  br i1 %cmp690.not, label %if.end653.if.end715_crit_edge, label %do.end709, !prof !24

if.end653.if.end715_crit_edge:                    ; preds = %if.end653
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end715

do.end709:                                        ; preds = %if.end653
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end715

if.end715:                                        ; preds = %do.end709, %if.end653.if.end715_crit_edge
  %65 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cur.i, align 4
  %67 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %end.i, align 4
  %cmp729.not = icmp ult ptr %66, %68
  br i1 %cmp729.not, label %if.end715.if.end754_crit_edge, label %do.end748, !prof !24

if.end715.if.end754_crit_edge:                    ; preds = %if.end715
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end754

do.end748:                                        ; preds = %if.end715
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end754

if.end754:                                        ; preds = %do.end748, %if.end715.if.end754_crit_edge
  %69 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cur.i, align 4
  %incdec.ptr779 = getelementptr i32, ptr %70, i32 1
  store ptr %incdec.ptr779, ptr %cur.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %61, ptr %70, align 4
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 3
  %72 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %height, align 4
  %74 = load ptr, ptr %cur.i, align 4
  %75 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %seg.i, align 8
  %cmp791.not = icmp ult ptr %74, %76
  br i1 %cmp791.not, label %if.end754.if.end816_crit_edge, label %do.end810, !prof !24

if.end754.if.end816_crit_edge:                    ; preds = %if.end754
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end816

do.end810:                                        ; preds = %if.end754
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end816

if.end816:                                        ; preds = %do.end810, %if.end754.if.end816_crit_edge
  %77 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cur.i, align 4
  %79 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %end.i, align 4
  %cmp830.not = icmp ult ptr %78, %80
  br i1 %cmp830.not, label %if.end816.if.end855_crit_edge, label %do.end849, !prof !24

if.end816.if.end855_crit_edge:                    ; preds = %if.end816
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end855

do.end849:                                        ; preds = %if.end816
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end855

if.end855:                                        ; preds = %do.end849, %if.end816.if.end855_crit_edge
  %81 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cur.i, align 4
  %incdec.ptr880 = getelementptr i32, ptr %82, i32 1
  store ptr %incdec.ptr880, ptr %cur.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %73, ptr %82, align 4
  %84 = load ptr, ptr %cur.i, align 4
  %85 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %seg.i, align 8
  %cmp1071.not = icmp ult ptr %84, %86
  br i1 %cmp1071.not, label %if.end855.if.end1096_crit_edge, label %do.end1090, !prof !24

if.end855.if.end1096_crit_edge:                   ; preds = %if.end855
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1096

do.end1090:                                       ; preds = %if.end855
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1096

if.end1096:                                       ; preds = %do.end1090, %if.end855.if.end1096_crit_edge
  %87 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cur.i, align 4
  %89 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %end.i, align 4
  %cmp1110.not = icmp ult ptr %88, %90
  br i1 %cmp1110.not, label %if.end1096.if.end1135_crit_edge, label %do.end1129, !prof !24

if.end1096.if.end1135_crit_edge:                  ; preds = %if.end1096
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1135

do.end1129:                                       ; preds = %if.end1096
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1135

if.end1135:                                       ; preds = %do.end1129, %if.end1096.if.end1135_crit_edge
  %91 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1160 = getelementptr i32, ptr %92, i32 1
  store ptr %incdec.ptr1160, ptr %cur.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 537158196, ptr %92, align 4
  %94 = load ptr, ptr %cur.i, align 4
  %95 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %seg.i, align 8
  %cmp1172.not = icmp ult ptr %94, %96
  br i1 %cmp1172.not, label %if.end1135.if.end1197_crit_edge, label %do.end1191, !prof !24

if.end1135.if.end1197_crit_edge:                  ; preds = %if.end1135
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1197

do.end1191:                                       ; preds = %if.end1135
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1197

if.end1197:                                       ; preds = %do.end1191, %if.end1135.if.end1197_crit_edge
  %97 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cur.i, align 4
  %99 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %end.i, align 4
  %cmp1211.not = icmp ult ptr %98, %100
  br i1 %cmp1211.not, label %if.end1197.if.end1236_crit_edge, label %do.end1230, !prof !24

if.end1197.if.end1236_crit_edge:                  ; preds = %if.end1197
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1236

do.end1230:                                       ; preds = %if.end1197
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1236

if.end1236:                                       ; preds = %do.end1230, %if.end1197.if.end1236_crit_edge
  %101 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1261 = getelementptr i32, ptr %102, i32 1
  store ptr %incdec.ptr1261, ptr %cur.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %102, align 4
  %sx = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 4
  %104 = ptrtoint ptr %sx to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %sx, align 4
  %106 = load ptr, ptr %cur.i, align 4
  %107 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %seg.i, align 8
  %cmp1273.not = icmp ult ptr %106, %108
  br i1 %cmp1273.not, label %if.end1236.if.end1298_crit_edge, label %do.end1292, !prof !24

if.end1236.if.end1298_crit_edge:                  ; preds = %if.end1236
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1298

do.end1292:                                       ; preds = %if.end1236
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1298

if.end1298:                                       ; preds = %do.end1292, %if.end1236.if.end1298_crit_edge
  %109 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cur.i, align 4
  %111 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %end.i, align 4
  %cmp1312.not = icmp ult ptr %110, %112
  br i1 %cmp1312.not, label %if.end1298.if.end1337_crit_edge, label %do.end1331, !prof !24

if.end1298.if.end1337_crit_edge:                  ; preds = %if.end1298
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1337

do.end1331:                                       ; preds = %if.end1298
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1337

if.end1337:                                       ; preds = %do.end1331, %if.end1298.if.end1337_crit_edge
  %113 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1362 = getelementptr i32, ptr %114, i32 1
  store ptr %incdec.ptr1362, ptr %cur.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %105, ptr %114, align 4
  %116 = load ptr, ptr %cur.i, align 4
  %117 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %seg.i, align 8
  %cmp1374.not = icmp ult ptr %116, %118
  br i1 %cmp1374.not, label %if.end1337.if.end1399_crit_edge, label %do.end1393, !prof !24

if.end1337.if.end1399_crit_edge:                  ; preds = %if.end1337
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1399

do.end1393:                                       ; preds = %if.end1337
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1399

if.end1399:                                       ; preds = %do.end1393, %if.end1337.if.end1399_crit_edge
  %119 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cur.i, align 4
  %121 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %end.i, align 4
  %cmp1413.not = icmp ult ptr %120, %122
  br i1 %cmp1413.not, label %if.end1399.if.end1438_crit_edge, label %do.end1432, !prof !24

if.end1399.if.end1438_crit_edge:                  ; preds = %if.end1399
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1438

do.end1432:                                       ; preds = %if.end1399
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1438

if.end1438:                                       ; preds = %do.end1432, %if.end1399.if.end1438_crit_edge
  %123 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1463 = getelementptr i32, ptr %124, i32 1
  store ptr %incdec.ptr1463, ptr %cur.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %124, align 4
  %sy = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 5
  %126 = ptrtoint ptr %sy to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %sy, align 4
  %128 = load ptr, ptr %cur.i, align 4
  %129 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %seg.i, align 8
  %cmp1475.not = icmp ult ptr %128, %130
  br i1 %cmp1475.not, label %if.end1438.if.end1500_crit_edge, label %do.end1494, !prof !24

if.end1438.if.end1500_crit_edge:                  ; preds = %if.end1438
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1500

do.end1494:                                       ; preds = %if.end1438
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1500

if.end1500:                                       ; preds = %do.end1494, %if.end1438.if.end1500_crit_edge
  %131 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cur.i, align 4
  %133 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %end.i, align 4
  %cmp1514.not = icmp ult ptr %132, %134
  br i1 %cmp1514.not, label %if.end1500.if.end1539_crit_edge, label %do.end1533, !prof !24

if.end1500.if.end1539_crit_edge:                  ; preds = %if.end1500
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1539

do.end1533:                                       ; preds = %if.end1500
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1539

if.end1539:                                       ; preds = %do.end1533, %if.end1500.if.end1539_crit_edge
  %135 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1564 = getelementptr i32, ptr %136, i32 1
  store ptr %incdec.ptr1564, ptr %cur.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %127, ptr %136, align 4
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 1
  %138 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %kick.i, align 4
  tail call void %139(ptr noundef %9) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end1539, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1539 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvc0_fbcon_imageblit(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %image) local_unnamed_addr #0 align 64 {
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
  store i32 537027077, ptr %39, align 4
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
  store i32 537027086, ptr %69, align 4
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
  store i32 537158164, ptr %103, align 4
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
  %163 = shl nuw nsw i32 %153, 16
  %164 = or i32 %163, 1610637848
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
define dso_local i32 @nvc0_fbcon_accel_init(ptr noundef %info) local_unnamed_addr #0 align 64 {
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
  %user = getelementptr inbounds %struct.nouveau_channel, ptr %7, i32 0, i32 17
  %twod = getelementptr inbounds %struct.nouveau_fbdev, ptr %1, i32 0, i32 8
  %call4 = tail call i32 @nvif_object_ctor(ptr noundef %user, ptr noundef nonnull @.str.9, i32 noundef 36909, i32 noundef 36909, ptr noundef null, i32 noundef 0, ptr noundef %twod) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %10 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits_per_pixel, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %11, label %if.end.cleanup_crit_edge [
    i32 8, label %if.end.sw.epilog12_crit_edge
    i32 15, label %sw.bb5
    i32 16, label %sw.bb6
    i32 32, label %sw.bb7
  ]

if.end.sw.epilog12_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog12

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog12

sw.bb7:                                           ; preds = %if.end
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %14, label %sw.bb7.cleanup_crit_edge [
    i32 0, label %sw.bb7.sw.epilog12_crit_edge
    i32 8, label %sw.bb7.sw.epilog12_crit_edge7546
    i32 2, label %sw.bb10
  ]

sw.bb7.sw.epilog12_crit_edge7546:                 ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog12

sw.bb7.sw.epilog12_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog12

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb10:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog12

sw.epilog12:                                      ; preds = %sw.bb10, %sw.bb7.sw.epilog12_crit_edge, %sw.bb7.sw.epilog12_crit_edge7546, %sw.bb6, %sw.bb5, %if.end.sw.epilog12_crit_edge
  %format.0 = phi i32 [ 209, %sw.bb10 ], [ 232, %sw.bb6 ], [ 248, %sw.bb5 ], [ 243, %if.end.sw.epilog12_crit_edge ], [ 230, %sw.bb7.sw.epilog12_crit_edge ], [ 230, %sw.bb7.sw.epilog12_crit_edge7546 ]
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 4
  %16 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %17, i32 52
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 6
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %19
  br i1 %cmp.not.i, label %sw.epilog12.if.end113_crit_edge, label %if.then.i

sw.epilog12.if.end113_crit_edge:                  ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end113

if.then.i:                                        ; preds = %sw.epilog12
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %9, align 8
  %call.i = tail call i32 %21(ptr noundef %9, i32 noundef 52) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end113_crit_edge, label %do.end

if.then.i.if.end113_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end113

do.end:                                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 204, i32 noundef 9, ptr noundef null) #3
  tail call void @nouveau_fbcon_gpu_lockup(ptr noundef %info) #3
  br label %cleanup

if.end113:                                        ; preds = %if.then.i.if.end113_crit_edge, %sw.epilog12.if.end113_crit_edge
  %22 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %23, i32 52
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 5
  %24 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %23, %add.ptr4.i
  br i1 %cmp.not, label %if.end113.if.end149_crit_edge, label %do.end143, !prof !24

if.end113.if.end149_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end149

do.end143:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end149

if.end149:                                        ; preds = %do.end143, %if.end113.if.end149_crit_edge
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %end.i, align 4
  %cmp162.not = icmp ult ptr %26, %28
  br i1 %cmp162.not, label %if.end149.if.end186_crit_edge, label %do.end180, !prof !24

if.end149.if.end186_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end186

do.end180:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end186

if.end186:                                        ; preds = %do.end180, %if.end149.if.end186_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %30, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 536961024, ptr %30, align 4
  %handle = getelementptr inbounds %struct.nouveau_fbdev, ptr %1, i32 0, i32 8, i32 3
  %32 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %handle, align 4
  %34 = load ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %seg.i, align 8
  %cmp213.not = icmp ult ptr %34, %36
  br i1 %cmp213.not, label %if.end186.if.end237_crit_edge, label %do.end231, !prof !24

if.end186.if.end237_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end237

do.end231:                                        ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end237

if.end237:                                        ; preds = %do.end231, %if.end186.if.end237_crit_edge
  %37 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cur.i, align 4
  %39 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %end.i, align 4
  %cmp251.not = icmp ult ptr %38, %40
  br i1 %cmp251.not, label %if.end237.if.end275_crit_edge, label %do.end269, !prof !24

if.end237.if.end275_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end275

do.end269:                                        ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end275

if.end275:                                        ; preds = %do.end269, %if.end237.if.end275_crit_edge
  %41 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur.i, align 4
  %incdec.ptr300 = getelementptr i32, ptr %42, i32 1
  store ptr %incdec.ptr300, ptr %cur.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %33, ptr %42, align 4
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %seg.i, align 8
  %cmp431.not = icmp ult ptr %44, %46
  br i1 %cmp431.not, label %if.end275.if.end455_crit_edge, label %do.end449, !prof !24

if.end275.if.end455_crit_edge:                    ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end455

do.end449:                                        ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 215, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end455

if.end455:                                        ; preds = %do.end449, %if.end275.if.end455_crit_edge
  %47 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cur.i, align 4
  %49 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %end.i, align 4
  %cmp469.not = icmp ult ptr %48, %50
  br i1 %cmp469.not, label %if.end455.if.end493_crit_edge, label %do.end487, !prof !24

if.end455.if.end493_crit_edge:                    ; preds = %if.end455
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end493

do.end487:                                        ; preds = %if.end455
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 215, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end493

if.end493:                                        ; preds = %do.end487, %if.end455.if.end493_crit_edge
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %incdec.ptr518 = getelementptr i32, ptr %52, i32 1
  store ptr %incdec.ptr518, ptr %cur.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 537026688, ptr %52, align 4
  %54 = load ptr, ptr %cur.i, align 4
  %55 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %seg.i, align 8
  %cmp531.not = icmp ult ptr %54, %56
  br i1 %cmp531.not, label %if.end493.if.end556_crit_edge, label %do.end550, !prof !24

if.end493.if.end556_crit_edge:                    ; preds = %if.end493
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end556

do.end550:                                        ; preds = %if.end493
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 215, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end556

if.end556:                                        ; preds = %do.end550, %if.end493.if.end556_crit_edge
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i, align 4
  %cmp570.not = icmp ult ptr %58, %60
  br i1 %cmp570.not, label %if.end556.if.end595_crit_edge, label %do.end589, !prof !24

if.end556.if.end595_crit_edge:                    ; preds = %if.end556
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end595

do.end589:                                        ; preds = %if.end556
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 215, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end595

if.end595:                                        ; preds = %do.end589, %if.end556.if.end595_crit_edge
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %incdec.ptr620 = getelementptr i32, ptr %62, i32 1
  store ptr %incdec.ptr620, ptr %cur.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %format.0, ptr %62, align 4
  %64 = load ptr, ptr %cur.i, align 4
  %65 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %seg.i, align 8
  %cmp632.not = icmp ult ptr %64, %66
  br i1 %cmp632.not, label %if.end595.if.end657_crit_edge, label %do.end651, !prof !24

if.end595.if.end657_crit_edge:                    ; preds = %if.end595
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end657

do.end651:                                        ; preds = %if.end595
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 215, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end657

if.end657:                                        ; preds = %do.end651, %if.end595.if.end657_crit_edge
  %67 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cur.i, align 4
  %69 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %end.i, align 4
  %cmp671.not = icmp ult ptr %68, %70
  br i1 %cmp671.not, label %if.end657.if.end696_crit_edge, label %do.end690, !prof !24

if.end657.if.end696_crit_edge:                    ; preds = %if.end657
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end696

do.end690:                                        ; preds = %if.end657
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 215, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end696

if.end696:                                        ; preds = %do.end690, %if.end657.if.end696_crit_edge
  %71 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cur.i, align 4
  %incdec.ptr721 = getelementptr i32, ptr %72, i32 1
  store ptr %incdec.ptr721, ptr %cur.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %72, align 4
  %74 = load ptr, ptr %cur.i, align 4
  %75 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %seg.i, align 8
  %cmp942.not = icmp ult ptr %74, %76
  br i1 %cmp942.not, label %if.end696.if.end967_crit_edge, label %do.end961, !prof !24

if.end696.if.end967_crit_edge:                    ; preds = %if.end696
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end967

do.end961:                                        ; preds = %if.end696
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 225, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end967

if.end967:                                        ; preds = %do.end961, %if.end696.if.end967_crit_edge
  %77 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cur.i, align 4
  %79 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %end.i, align 4
  %cmp981.not = icmp ult ptr %78, %80
  br i1 %cmp981.not, label %if.end967.if.end1006_crit_edge, label %do.end1000, !prof !24

if.end967.if.end1006_crit_edge:                   ; preds = %if.end967
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1006

do.end1000:                                       ; preds = %if.end967
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 225, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1006

if.end1006:                                       ; preds = %do.end1000, %if.end967.if.end1006_crit_edge
  %81 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1031 = getelementptr i32, ptr %82, i32 1
  store ptr %incdec.ptr1031, ptr %cur.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 537223301, ptr %82, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %84 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %line_length, align 4
  %86 = load ptr, ptr %cur.i, align 4
  %87 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %seg.i, align 8
  %cmp1043.not = icmp ult ptr %86, %88
  br i1 %cmp1043.not, label %if.end1006.if.end1068_crit_edge, label %do.end1062, !prof !24

if.end1006.if.end1068_crit_edge:                  ; preds = %if.end1006
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1068

do.end1062:                                       ; preds = %if.end1006
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 225, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1068

if.end1068:                                       ; preds = %do.end1062, %if.end1006.if.end1068_crit_edge
  %89 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cur.i, align 4
  %91 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %end.i, align 4
  %cmp1082.not = icmp ult ptr %90, %92
  br i1 %cmp1082.not, label %if.end1068.if.end1107_crit_edge, label %do.end1101, !prof !24

if.end1068.if.end1107_crit_edge:                  ; preds = %if.end1068
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1107

do.end1101:                                       ; preds = %if.end1068
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 225, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1107

if.end1107:                                       ; preds = %do.end1101, %if.end1068.if.end1107_crit_edge
  %93 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1132 = getelementptr i32, ptr %94, i32 1
  store ptr %incdec.ptr1132, ptr %cur.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %85, ptr %94, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %96 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %xres_virtual, align 4
  %98 = load ptr, ptr %cur.i, align 4
  %99 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %seg.i, align 8
  %cmp1145.not = icmp ult ptr %98, %100
  br i1 %cmp1145.not, label %if.end1107.if.end1170_crit_edge, label %do.end1164, !prof !24

if.end1107.if.end1170_crit_edge:                  ; preds = %if.end1107
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1170

do.end1164:                                       ; preds = %if.end1107
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 225, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1170

if.end1170:                                       ; preds = %do.end1164, %if.end1107.if.end1170_crit_edge
  %101 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cur.i, align 4
  %103 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %end.i, align 4
  %cmp1184.not = icmp ult ptr %102, %104
  br i1 %cmp1184.not, label %if.end1170.if.end1209_crit_edge, label %do.end1203, !prof !24

if.end1170.if.end1209_crit_edge:                  ; preds = %if.end1170
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1209

do.end1203:                                       ; preds = %if.end1170
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 225, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1209

if.end1209:                                       ; preds = %do.end1203, %if.end1170.if.end1209_crit_edge
  %105 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1234 = getelementptr i32, ptr %106, i32 1
  store ptr %incdec.ptr1234, ptr %cur.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %97, ptr %106, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %108 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %yres_virtual, align 4
  %110 = load ptr, ptr %cur.i, align 4
  %111 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %seg.i, align 8
  %cmp1247.not = icmp ult ptr %110, %112
  br i1 %cmp1247.not, label %if.end1209.if.end1272_crit_edge, label %do.end1266, !prof !24

if.end1209.if.end1272_crit_edge:                  ; preds = %if.end1209
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1272

do.end1266:                                       ; preds = %if.end1209
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 225, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1272

if.end1272:                                       ; preds = %do.end1266, %if.end1209.if.end1272_crit_edge
  %113 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cur.i, align 4
  %115 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %end.i, align 4
  %cmp1286.not = icmp ult ptr %114, %116
  br i1 %cmp1286.not, label %if.end1272.if.end1311_crit_edge, label %do.end1305, !prof !24

if.end1272.if.end1311_crit_edge:                  ; preds = %if.end1272
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1311

do.end1305:                                       ; preds = %if.end1272
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 225, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1311

if.end1311:                                       ; preds = %do.end1305, %if.end1272.if.end1311_crit_edge
  %117 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1336 = getelementptr i32, ptr %118, i32 1
  store ptr %incdec.ptr1336, ptr %cur.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %109, ptr %118, align 4
  %vma = getelementptr inbounds %struct.nouveau_fbdev, ptr %1, i32 0, i32 9
  %120 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %vma, align 8
  %addr = getelementptr inbounds %struct.nouveau_vma, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %addr, align 8
  %shr = lshr i64 %123, 32
  %124 = trunc i64 %shr to i32
  %conv1349 = and i32 %124, 255
  %125 = load ptr, ptr %cur.i, align 4
  %126 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %seg.i, align 8
  %cmp1354.not = icmp ult ptr %125, %127
  br i1 %cmp1354.not, label %if.end1311.if.end1379_crit_edge, label %do.end1373, !prof !24

if.end1311.if.end1379_crit_edge:                  ; preds = %if.end1311
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1379

do.end1373:                                       ; preds = %if.end1311
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 225, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1379

if.end1379:                                       ; preds = %do.end1373, %if.end1311.if.end1379_crit_edge
  %128 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cur.i, align 4
  %130 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %end.i, align 4
  %cmp1393.not = icmp ult ptr %129, %131
  br i1 %cmp1393.not, label %if.end1379.if.end1418_crit_edge, label %do.end1412, !prof !24

if.end1379.if.end1418_crit_edge:                  ; preds = %if.end1379
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1418

do.end1412:                                       ; preds = %if.end1379
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 225, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1418

if.end1418:                                       ; preds = %do.end1412, %if.end1379.if.end1418_crit_edge
  %132 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1443 = getelementptr i32, ptr %133, i32 1
  store ptr %incdec.ptr1443, ptr %cur.i, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv1349, ptr %133, align 4
  %135 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %vma, align 8
  %addr1452 = getelementptr inbounds %struct.nouveau_vma, ptr %136, i32 0, i32 3
  %137 = ptrtoint ptr %addr1452 to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %addr1452, align 8
  %conv1458 = trunc i64 %138 to i32
  %139 = load ptr, ptr %cur.i, align 4
  %140 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %seg.i, align 8
  %cmp1463.not = icmp ult ptr %139, %141
  br i1 %cmp1463.not, label %if.end1418.if.end1488_crit_edge, label %do.end1482, !prof !24

if.end1418.if.end1488_crit_edge:                  ; preds = %if.end1418
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1488

do.end1482:                                       ; preds = %if.end1418
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 225, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1488

if.end1488:                                       ; preds = %do.end1482, %if.end1418.if.end1488_crit_edge
  %142 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %cur.i, align 4
  %144 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %end.i, align 4
  %cmp1502.not = icmp ult ptr %143, %145
  br i1 %cmp1502.not, label %if.end1488.if.end1527_crit_edge, label %do.end1521, !prof !24

if.end1488.if.end1527_crit_edge:                  ; preds = %if.end1488
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1527

do.end1521:                                       ; preds = %if.end1488
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 225, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1527

if.end1527:                                       ; preds = %do.end1521, %if.end1488.if.end1527_crit_edge
  %146 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1552 = getelementptr i32, ptr %147, i32 1
  store ptr %incdec.ptr1552, ptr %cur.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %conv1458, ptr %147, align 4
  %149 = load ptr, ptr %cur.i, align 4
  %150 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %seg.i, align 8
  %cmp1683.not = icmp ult ptr %149, %151
  br i1 %cmp1683.not, label %if.end1527.if.end1708_crit_edge, label %do.end1702, !prof !24

if.end1527.if.end1708_crit_edge:                  ; preds = %if.end1527
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1708

do.end1702:                                       ; preds = %if.end1527
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1708

if.end1708:                                       ; preds = %do.end1702, %if.end1527.if.end1708_crit_edge
  %152 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cur.i, align 4
  %154 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %end.i, align 4
  %cmp1722.not = icmp ult ptr %153, %155
  br i1 %cmp1722.not, label %if.end1708.if.end1747_crit_edge, label %do.end1741, !prof !24

if.end1708.if.end1747_crit_edge:                  ; preds = %if.end1708
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1747

do.end1741:                                       ; preds = %if.end1708
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1747

if.end1747:                                       ; preds = %do.end1741, %if.end1708.if.end1747_crit_edge
  %156 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1772 = getelementptr i32, ptr %157, i32 1
  store ptr %incdec.ptr1772, ptr %cur.i, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 537026700, ptr %157, align 4
  %159 = load ptr, ptr %cur.i, align 4
  %160 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %seg.i, align 8
  %cmp1788.not = icmp ult ptr %159, %161
  br i1 %cmp1788.not, label %if.end1747.if.end1813_crit_edge, label %do.end1807, !prof !24

if.end1747.if.end1813_crit_edge:                  ; preds = %if.end1747
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1813

do.end1807:                                       ; preds = %if.end1747
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1813

if.end1813:                                       ; preds = %do.end1807, %if.end1747.if.end1813_crit_edge
  %162 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %cur.i, align 4
  %164 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %end.i, align 4
  %cmp1827.not = icmp ult ptr %163, %165
  br i1 %cmp1827.not, label %if.end1813.if.end1852_crit_edge, label %do.end1846, !prof !24

if.end1813.if.end1852_crit_edge:                  ; preds = %if.end1813
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1852

do.end1846:                                       ; preds = %if.end1813
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1852

if.end1852:                                       ; preds = %do.end1846, %if.end1813.if.end1852_crit_edge
  %166 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1877 = getelementptr i32, ptr %167, i32 1
  store ptr %incdec.ptr1877, ptr %cur.i, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %format.0, ptr %167, align 4
  %169 = load ptr, ptr %cur.i, align 4
  %170 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %seg.i, align 8
  %cmp1889.not = icmp ult ptr %169, %171
  br i1 %cmp1889.not, label %if.end1852.if.end1914_crit_edge, label %do.end1908, !prof !24

if.end1852.if.end1914_crit_edge:                  ; preds = %if.end1852
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1914

do.end1908:                                       ; preds = %if.end1852
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1914

if.end1914:                                       ; preds = %do.end1908, %if.end1852.if.end1914_crit_edge
  %172 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %cur.i, align 4
  %174 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %end.i, align 4
  %cmp1928.not = icmp ult ptr %173, %175
  br i1 %cmp1928.not, label %if.end1914.if.end1953_crit_edge, label %do.end1947, !prof !24

if.end1914.if.end1953_crit_edge:                  ; preds = %if.end1914
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1953

do.end1947:                                       ; preds = %if.end1914
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1953

if.end1953:                                       ; preds = %do.end1947, %if.end1914.if.end1953_crit_edge
  %176 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1978 = getelementptr i32, ptr %177, i32 1
  store ptr %incdec.ptr1978, ptr %cur.i, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 1, ptr %177, align 4
  %179 = load ptr, ptr %cur.i, align 4
  %180 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %seg.i, align 8
  %cmp2199.not = icmp ult ptr %179, %181
  br i1 %cmp2199.not, label %if.end1953.if.end2224_crit_edge, label %do.end2218, !prof !24

if.end1953.if.end2224_crit_edge:                  ; preds = %if.end1953
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2224

do.end2218:                                       ; preds = %if.end1953
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end2224

if.end2224:                                       ; preds = %do.end2218, %if.end1953.if.end2224_crit_edge
  %182 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %cur.i, align 4
  %184 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %end.i, align 4
  %cmp2238.not = icmp ult ptr %183, %185
  br i1 %cmp2238.not, label %if.end2224.if.end2263_crit_edge, label %do.end2257, !prof !24

if.end2224.if.end2263_crit_edge:                  ; preds = %if.end2224
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2263

do.end2257:                                       ; preds = %if.end2224
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end2263

if.end2263:                                       ; preds = %do.end2257, %if.end2224.if.end2263_crit_edge
  %186 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2288 = getelementptr i32, ptr %187, i32 1
  store ptr %incdec.ptr2288, ptr %cur.i, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 537223313, ptr %187, align 4
  %189 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %line_length, align 4
  %191 = load ptr, ptr %cur.i, align 4
  %192 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %seg.i, align 8
  %cmp2302.not = icmp ult ptr %191, %193
  br i1 %cmp2302.not, label %if.end2263.if.end2327_crit_edge, label %do.end2321, !prof !24

if.end2263.if.end2327_crit_edge:                  ; preds = %if.end2263
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2327

do.end2321:                                       ; preds = %if.end2263
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end2327

if.end2327:                                       ; preds = %do.end2321, %if.end2263.if.end2327_crit_edge
  %194 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cur.i, align 4
  %196 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %end.i, align 4
  %cmp2341.not = icmp ult ptr %195, %197
  br i1 %cmp2341.not, label %if.end2327.if.end2366_crit_edge, label %do.end2360, !prof !24

if.end2327.if.end2366_crit_edge:                  ; preds = %if.end2327
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2366

do.end2360:                                       ; preds = %if.end2327
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end2366

if.end2366:                                       ; preds = %do.end2360, %if.end2327.if.end2366_crit_edge
  %198 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2391 = getelementptr i32, ptr %199, i32 1
  store ptr %incdec.ptr2391, ptr %cur.i, align 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %190, ptr %199, align 4
  %201 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %xres_virtual, align 4
  %203 = load ptr, ptr %cur.i, align 4
  %204 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %seg.i, align 8
  %cmp2405.not = icmp ult ptr %203, %205
  br i1 %cmp2405.not, label %if.end2366.if.end2430_crit_edge, label %do.end2424, !prof !24

if.end2366.if.end2430_crit_edge:                  ; preds = %if.end2366
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2430

do.end2424:                                       ; preds = %if.end2366
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end2430

if.end2430:                                       ; preds = %do.end2424, %if.end2366.if.end2430_crit_edge
  %206 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %cur.i, align 4
  %208 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %end.i, align 4
  %cmp2444.not = icmp ult ptr %207, %209
  br i1 %cmp2444.not, label %if.end2430.if.end2469_crit_edge, label %do.end2463, !prof !24

if.end2430.if.end2469_crit_edge:                  ; preds = %if.end2430
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2469

do.end2463:                                       ; preds = %if.end2430
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end2469

if.end2469:                                       ; preds = %do.end2463, %if.end2430.if.end2469_crit_edge
  %210 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2494 = getelementptr i32, ptr %211, i32 1
  store ptr %incdec.ptr2494, ptr %cur.i, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %202, ptr %211, align 4
  %213 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %yres_virtual, align 4
  %215 = load ptr, ptr %cur.i, align 4
  %216 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %seg.i, align 8
  %cmp2508.not = icmp ult ptr %215, %217
  br i1 %cmp2508.not, label %if.end2469.if.end2533_crit_edge, label %do.end2527, !prof !24

if.end2469.if.end2533_crit_edge:                  ; preds = %if.end2469
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2533

do.end2527:                                       ; preds = %if.end2469
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end2533

if.end2533:                                       ; preds = %do.end2527, %if.end2469.if.end2533_crit_edge
  %218 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %cur.i, align 4
  %220 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %end.i, align 4
  %cmp2547.not = icmp ult ptr %219, %221
  br i1 %cmp2547.not, label %if.end2533.if.end2572_crit_edge, label %do.end2566, !prof !24

if.end2533.if.end2572_crit_edge:                  ; preds = %if.end2533
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2572

do.end2566:                                       ; preds = %if.end2533
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end2572

if.end2572:                                       ; preds = %do.end2566, %if.end2533.if.end2572_crit_edge
  %222 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2597 = getelementptr i32, ptr %223, i32 1
  store ptr %incdec.ptr2597, ptr %cur.i, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %214, ptr %223, align 4
  %225 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %vma, align 8
  %addr2606 = getelementptr inbounds %struct.nouveau_vma, ptr %226, i32 0, i32 3
  %227 = ptrtoint ptr %addr2606 to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %addr2606, align 8
  %shr2607 = lshr i64 %228, 32
  %229 = trunc i64 %shr2607 to i32
  %conv2613 = and i32 %229, 255
  %230 = load ptr, ptr %cur.i, align 4
  %231 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %seg.i, align 8
  %cmp2618.not = icmp ult ptr %230, %232
  br i1 %cmp2618.not, label %if.end2572.if.end2643_crit_edge, label %do.end2637, !prof !24

if.end2572.if.end2643_crit_edge:                  ; preds = %if.end2572
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2643

do.end2637:                                       ; preds = %if.end2572
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end2643

if.end2643:                                       ; preds = %do.end2637, %if.end2572.if.end2643_crit_edge
  %233 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %cur.i, align 4
  %235 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %end.i, align 4
  %cmp2657.not = icmp ult ptr %234, %236
  br i1 %cmp2657.not, label %if.end2643.if.end2682_crit_edge, label %do.end2676, !prof !24

if.end2643.if.end2682_crit_edge:                  ; preds = %if.end2643
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2682

do.end2676:                                       ; preds = %if.end2643
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end2682

if.end2682:                                       ; preds = %do.end2676, %if.end2643.if.end2682_crit_edge
  %237 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2707 = getelementptr i32, ptr %238, i32 1
  store ptr %incdec.ptr2707, ptr %cur.i, align 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %conv2613, ptr %238, align 4
  %240 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %vma, align 8
  %addr2716 = getelementptr inbounds %struct.nouveau_vma, ptr %241, i32 0, i32 3
  %242 = ptrtoint ptr %addr2716 to i32
  call void @__asan_load8_noabort(i32 %242)
  %243 = load i64, ptr %addr2716, align 8
  %conv2722 = trunc i64 %243 to i32
  %244 = load ptr, ptr %cur.i, align 4
  %245 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %seg.i, align 8
  %cmp2727.not = icmp ult ptr %244, %246
  br i1 %cmp2727.not, label %if.end2682.if.end2752_crit_edge, label %do.end2746, !prof !24

if.end2682.if.end2752_crit_edge:                  ; preds = %if.end2682
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2752

do.end2746:                                       ; preds = %if.end2682
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end2752

if.end2752:                                       ; preds = %do.end2746, %if.end2682.if.end2752_crit_edge
  %247 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %cur.i, align 4
  %249 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %end.i, align 4
  %cmp2766.not = icmp ult ptr %248, %250
  br i1 %cmp2766.not, label %if.end2752.if.end2791_crit_edge, label %do.end2785, !prof !24

if.end2752.if.end2791_crit_edge:                  ; preds = %if.end2752
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2791

do.end2785:                                       ; preds = %if.end2752
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end2791

if.end2791:                                       ; preds = %do.end2785, %if.end2752.if.end2791_crit_edge
  %251 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2816 = getelementptr i32, ptr %252, i32 1
  store ptr %incdec.ptr2816, ptr %cur.i, align 4
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %conv2722, ptr %252, align 4
  %254 = load ptr, ptr %cur.i, align 4
  %255 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %seg.i, align 8
  %cmp2933.not = icmp ult ptr %254, %256
  br i1 %cmp2933.not, label %if.end2791.if.end2958_crit_edge, label %do.end2952, !prof !24

if.end2791.if.end2958_crit_edge:                  ; preds = %if.end2791
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2958

do.end2952:                                       ; preds = %if.end2791
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 244, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end2958

if.end2958:                                       ; preds = %do.end2952, %if.end2791.if.end2958_crit_edge
  %257 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %cur.i, align 4
  %259 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %end.i, align 4
  %cmp2972.not = icmp ult ptr %258, %260
  br i1 %cmp2972.not, label %if.end2958.if.end2997_crit_edge, label %do.end2991, !prof !24

if.end2958.if.end2997_crit_edge:                  ; preds = %if.end2958
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2997

do.end2991:                                       ; preds = %if.end2958
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 244, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end2997

if.end2997:                                       ; preds = %do.end2991, %if.end2958.if.end2997_crit_edge
  %261 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3022 = getelementptr i32, ptr %262, i32 1
  store ptr %incdec.ptr3022, ptr %cur.i, align 4
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 -2147458908, ptr %262, align 4
  %264 = load ptr, ptr %cur.i, align 4
  %265 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %seg.i, align 8
  %cmp3162.not = icmp ult ptr %264, %266
  br i1 %cmp3162.not, label %if.end2997.if.end3187_crit_edge, label %do.end3181, !prof !24

if.end2997.if.end3187_crit_edge:                  ; preds = %if.end2997
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3187

do.end3181:                                       ; preds = %if.end2997
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 247, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end3187

if.end3187:                                       ; preds = %do.end3181, %if.end2997.if.end3187_crit_edge
  %267 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %cur.i, align 4
  %269 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %end.i, align 4
  %cmp3201.not = icmp ult ptr %268, %270
  br i1 %cmp3201.not, label %if.end3187.if.end3226_crit_edge, label %do.end3220, !prof !24

if.end3187.if.end3226_crit_edge:                  ; preds = %if.end3187
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3226

do.end3220:                                       ; preds = %if.end3187
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 247, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end3226

if.end3226:                                       ; preds = %do.end3220, %if.end3187.if.end3226_crit_edge
  %271 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3251 = getelementptr i32, ptr %272, i32 1
  store ptr %incdec.ptr3251, ptr %cur.i, align 4
  %273 = ptrtoint ptr %272 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 -2141888344, ptr %272, align 4
  %274 = load ptr, ptr %cur.i, align 4
  %275 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %seg.i, align 8
  %cmp3391.not = icmp ult ptr %274, %276
  br i1 %cmp3391.not, label %if.end3226.if.end3416_crit_edge, label %do.end3410, !prof !24

if.end3226.if.end3416_crit_edge:                  ; preds = %if.end3226
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3416

do.end3410:                                       ; preds = %if.end3226
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end3416

if.end3416:                                       ; preds = %do.end3410, %if.end3226.if.end3416_crit_edge
  %277 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %cur.i, align 4
  %279 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %end.i, align 4
  %cmp3430.not = icmp ult ptr %278, %280
  br i1 %cmp3430.not, label %if.end3416.if.end3455_crit_edge, label %do.end3449, !prof !24

if.end3416.if.end3455_crit_edge:                  ; preds = %if.end3416
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3455

do.end3449:                                       ; preds = %if.end3416
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end3455

if.end3455:                                       ; preds = %do.end3449, %if.end3416.if.end3455_crit_edge
  %281 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3480 = getelementptr i32, ptr %282, i32 1
  store ptr %incdec.ptr3480, ptr %cur.i, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 -2147262293, ptr %282, align 4
  %284 = load ptr, ptr %cur.i, align 4
  %285 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %seg.i, align 8
  %cmp3631.not = icmp ult ptr %284, %286
  br i1 %cmp3631.not, label %if.end3455.if.end3656_crit_edge, label %do.end3650, !prof !24

if.end3455.if.end3656_crit_edge:                  ; preds = %if.end3455
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3656

do.end3650:                                       ; preds = %if.end3455
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 256, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end3656

if.end3656:                                       ; preds = %do.end3650, %if.end3455.if.end3656_crit_edge
  %287 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %cur.i, align 4
  %289 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %end.i, align 4
  %cmp3670.not = icmp ult ptr %288, %290
  br i1 %cmp3670.not, label %if.end3656.if.end3695_crit_edge, label %do.end3689, !prof !24

if.end3656.if.end3695_crit_edge:                  ; preds = %if.end3656
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3695

do.end3689:                                       ; preds = %if.end3656
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 256, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end3695

if.end3695:                                       ; preds = %do.end3689, %if.end3656.if.end3695_crit_edge
  %291 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3720 = getelementptr i32, ptr %292, i32 1
  store ptr %incdec.ptr3720, ptr %cur.i, align 4
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 537026746, ptr %292, align 4
  %294 = load ptr, ptr %cur.i, align 4
  %295 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %seg.i, align 8
  %cmp3732.not = icmp ult ptr %294, %296
  br i1 %cmp3732.not, label %if.end3695.if.end3757_crit_edge, label %do.end3751, !prof !24

if.end3695.if.end3757_crit_edge:                  ; preds = %if.end3695
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3757

do.end3751:                                       ; preds = %if.end3695
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 256, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end3757

if.end3757:                                       ; preds = %do.end3751, %if.end3695.if.end3757_crit_edge
  %297 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %cur.i, align 4
  %299 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %end.i, align 4
  %cmp3771.not = icmp ult ptr %298, %300
  br i1 %cmp3771.not, label %if.end3757.if.end3796_crit_edge, label %do.end3790, !prof !24

if.end3757.if.end3796_crit_edge:                  ; preds = %if.end3757
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3796

do.end3790:                                       ; preds = %if.end3757
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 256, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end3796

if.end3796:                                       ; preds = %do.end3790, %if.end3757.if.end3796_crit_edge
  %301 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3821 = getelementptr i32, ptr %302, i32 1
  store ptr %incdec.ptr3821, ptr %cur.i, align 4
  %303 = ptrtoint ptr %302 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 2, ptr %302, align 4
  %304 = load ptr, ptr %cur.i, align 4
  %305 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %seg.i, align 8
  %cmp3833.not = icmp ult ptr %304, %306
  br i1 %cmp3833.not, label %if.end3796.if.end3858_crit_edge, label %do.end3852, !prof !24

if.end3796.if.end3858_crit_edge:                  ; preds = %if.end3796
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3858

do.end3852:                                       ; preds = %if.end3796
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 256, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end3858

if.end3858:                                       ; preds = %do.end3852, %if.end3796.if.end3858_crit_edge
  %307 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %cur.i, align 4
  %309 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %end.i, align 4
  %cmp3872.not = icmp ult ptr %308, %310
  br i1 %cmp3872.not, label %if.end3858.if.end3897_crit_edge, label %do.end3891, !prof !24

if.end3858.if.end3897_crit_edge:                  ; preds = %if.end3858
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3897

do.end3891:                                       ; preds = %if.end3858
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 256, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end3897

if.end3897:                                       ; preds = %do.end3891, %if.end3858.if.end3897_crit_edge
  %311 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3922 = getelementptr i32, ptr %312, i32 1
  store ptr %incdec.ptr3922, ptr %cur.i, align 4
  %313 = ptrtoint ptr %312 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 1, ptr %312, align 4
  %314 = load ptr, ptr %cur.i, align 4
  %315 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %seg.i, align 8
  %cmp4053.not = icmp ult ptr %314, %316
  br i1 %cmp4053.not, label %if.end3897.if.end4078_crit_edge, label %do.end4072, !prof !24

if.end3897.if.end4078_crit_edge:                  ; preds = %if.end3897
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4078

do.end4072:                                       ; preds = %if.end3897
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 262, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end4078

if.end4078:                                       ; preds = %do.end4072, %if.end3897.if.end4078_crit_edge
  %317 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %cur.i, align 4
  %319 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %end.i, align 4
  %cmp4092.not = icmp ult ptr %318, %320
  br i1 %cmp4092.not, label %if.end4078.if.end4117_crit_edge, label %do.end4111, !prof !24

if.end4078.if.end4117_crit_edge:                  ; preds = %if.end4078
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4117

do.end4111:                                       ; preds = %if.end4078
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 262, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end4117

if.end4117:                                       ; preds = %do.end4111, %if.end4078.if.end4117_crit_edge
  %321 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4142 = getelementptr i32, ptr %322, i32 1
  store ptr %incdec.ptr4142, ptr %cur.i, align 4
  %323 = ptrtoint ptr %322 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 537026912, ptr %322, align 4
  %324 = load ptr, ptr %cur.i, align 4
  %325 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %seg.i, align 8
  %cmp4154.not = icmp ult ptr %324, %326
  br i1 %cmp4154.not, label %if.end4117.if.end4179_crit_edge, label %do.end4173, !prof !24

if.end4117.if.end4179_crit_edge:                  ; preds = %if.end4117
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4179

do.end4173:                                       ; preds = %if.end4117
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 262, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end4179

if.end4179:                                       ; preds = %do.end4173, %if.end4117.if.end4179_crit_edge
  %327 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %cur.i, align 4
  %329 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %end.i, align 4
  %cmp4193.not = icmp ult ptr %328, %330
  br i1 %cmp4193.not, label %if.end4179.if.end4218_crit_edge, label %do.end4212, !prof !24

if.end4179.if.end4218_crit_edge:                  ; preds = %if.end4179
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4218

do.end4212:                                       ; preds = %if.end4179
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 262, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end4218

if.end4218:                                       ; preds = %do.end4212, %if.end4179.if.end4218_crit_edge
  %331 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4243 = getelementptr i32, ptr %332, i32 1
  store ptr %incdec.ptr4243, ptr %cur.i, align 4
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 4, ptr %332, align 4
  %334 = load ptr, ptr %cur.i, align 4
  %335 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %seg.i, align 8
  %cmp4259.not = icmp ult ptr %334, %336
  br i1 %cmp4259.not, label %if.end4218.if.end4284_crit_edge, label %do.end4278, !prof !24

if.end4218.if.end4284_crit_edge:                  ; preds = %if.end4218
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4284

do.end4278:                                       ; preds = %if.end4218
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 262, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end4284

if.end4284:                                       ; preds = %do.end4278, %if.end4218.if.end4284_crit_edge
  %337 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %cur.i, align 4
  %339 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %end.i, align 4
  %cmp4298.not = icmp ult ptr %338, %340
  br i1 %cmp4298.not, label %if.end4284.if.end4323_crit_edge, label %do.end4317, !prof !24

if.end4284.if.end4323_crit_edge:                  ; preds = %if.end4284
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4323

do.end4317:                                       ; preds = %if.end4284
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 262, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end4323

if.end4323:                                       ; preds = %do.end4317, %if.end4284.if.end4323_crit_edge
  %341 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4348 = getelementptr i32, ptr %342, i32 1
  store ptr %incdec.ptr4348, ptr %cur.i, align 4
  %343 = ptrtoint ptr %342 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %format.0, ptr %342, align 4
  %344 = load ptr, ptr %cur.i, align 4
  %345 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %seg.i, align 8
  %cmp4569.not = icmp ult ptr %344, %346
  br i1 %cmp4569.not, label %if.end4323.if.end4594_crit_edge, label %do.end4588, !prof !24

if.end4323.if.end4594_crit_edge:                  ; preds = %if.end4323
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4594

do.end4588:                                       ; preds = %if.end4323
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 277, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end4594

if.end4594:                                       ; preds = %do.end4588, %if.end4323.if.end4594_crit_edge
  %347 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %cur.i, align 4
  %349 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %end.i, align 4
  %cmp4608.not = icmp ult ptr %348, %350
  br i1 %cmp4608.not, label %if.end4594.if.end4633_crit_edge, label %do.end4627, !prof !24

if.end4594.if.end4633_crit_edge:                  ; preds = %if.end4594
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4633

do.end4627:                                       ; preds = %if.end4594
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 277, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end4633

if.end4633:                                       ; preds = %do.end4627, %if.end4594.if.end4633_crit_edge
  %351 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4658 = getelementptr i32, ptr %352, i32 1
  store ptr %incdec.ptr4658, ptr %cur.i, align 4
  %353 = ptrtoint ptr %352 to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 537223680, ptr %352, align 4
  %354 = load ptr, ptr %cur.i, align 4
  %355 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %seg.i, align 8
  %cmp4670.not = icmp ult ptr %354, %356
  br i1 %cmp4670.not, label %if.end4633.if.end4695_crit_edge, label %do.end4689, !prof !24

if.end4633.if.end4695_crit_edge:                  ; preds = %if.end4633
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4695

do.end4689:                                       ; preds = %if.end4633
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 277, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end4695

if.end4695:                                       ; preds = %do.end4689, %if.end4633.if.end4695_crit_edge
  %357 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %cur.i, align 4
  %359 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %end.i, align 4
  %cmp4709.not = icmp ult ptr %358, %360
  br i1 %cmp4709.not, label %if.end4695.if.end4734_crit_edge, label %do.end4728, !prof !24

if.end4695.if.end4734_crit_edge:                  ; preds = %if.end4695
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4734

do.end4728:                                       ; preds = %if.end4695
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 277, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end4734

if.end4734:                                       ; preds = %do.end4728, %if.end4695.if.end4734_crit_edge
  %361 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4759 = getelementptr i32, ptr %362, i32 1
  store ptr %incdec.ptr4759, ptr %cur.i, align 4
  %363 = ptrtoint ptr %362 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 1, ptr %362, align 4
  %364 = load ptr, ptr %cur.i, align 4
  %365 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %seg.i, align 8
  %cmp4775.not = icmp ult ptr %364, %366
  br i1 %cmp4775.not, label %if.end4734.if.end4800_crit_edge, label %do.end4794, !prof !24

if.end4734.if.end4800_crit_edge:                  ; preds = %if.end4734
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4800

do.end4794:                                       ; preds = %if.end4734
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 277, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end4800

if.end4800:                                       ; preds = %do.end4794, %if.end4734.if.end4800_crit_edge
  %367 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %cur.i, align 4
  %369 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %end.i, align 4
  %cmp4814.not = icmp ult ptr %368, %370
  br i1 %cmp4814.not, label %if.end4800.if.end4839_crit_edge, label %do.end4833, !prof !24

if.end4800.if.end4839_crit_edge:                  ; preds = %if.end4800
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4839

do.end4833:                                       ; preds = %if.end4800
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 277, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end4839

if.end4839:                                       ; preds = %do.end4833, %if.end4800.if.end4839_crit_edge
  %371 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4864 = getelementptr i32, ptr %372, i32 1
  store ptr %incdec.ptr4864, ptr %cur.i, align 4
  %373 = ptrtoint ptr %372 to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 %format.0, ptr %372, align 4
  %374 = load ptr, ptr %cur.i, align 4
  %375 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %seg.i, align 8
  %cmp4876.not = icmp ult ptr %374, %376
  br i1 %cmp4876.not, label %if.end4839.if.end4901_crit_edge, label %do.end4895, !prof !24

if.end4839.if.end4901_crit_edge:                  ; preds = %if.end4839
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4901

do.end4895:                                       ; preds = %if.end4839
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 277, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end4901

if.end4901:                                       ; preds = %do.end4895, %if.end4839.if.end4901_crit_edge
  %377 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %cur.i, align 4
  %379 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %end.i, align 4
  %cmp4915.not = icmp ult ptr %378, %380
  br i1 %cmp4915.not, label %if.end4901.if.end4940_crit_edge, label %do.end4934, !prof !24

if.end4901.if.end4940_crit_edge:                  ; preds = %if.end4901
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4940

do.end4934:                                       ; preds = %if.end4901
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 277, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end4940

if.end4940:                                       ; preds = %do.end4934, %if.end4901.if.end4940_crit_edge
  %381 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4965 = getelementptr i32, ptr %382, i32 1
  store ptr %incdec.ptr4965, ptr %cur.i, align 4
  %383 = ptrtoint ptr %382 to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 0, ptr %382, align 4
  %384 = load ptr, ptr %cur.i, align 4
  %385 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %seg.i, align 8
  %cmp4977.not = icmp ult ptr %384, %386
  br i1 %cmp4977.not, label %if.end4940.if.end5002_crit_edge, label %do.end4996, !prof !24

if.end4940.if.end5002_crit_edge:                  ; preds = %if.end4940
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5002

do.end4996:                                       ; preds = %if.end4940
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 277, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end5002

if.end5002:                                       ; preds = %do.end4996, %if.end4940.if.end5002_crit_edge
  %387 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %cur.i, align 4
  %389 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %end.i, align 4
  %cmp5016.not = icmp ult ptr %388, %390
  br i1 %cmp5016.not, label %if.end5002.if.end5041_crit_edge, label %do.end5035, !prof !24

if.end5002.if.end5041_crit_edge:                  ; preds = %if.end5002
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5041

do.end5035:                                       ; preds = %if.end5002
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 277, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end5041

if.end5041:                                       ; preds = %do.end5035, %if.end5002.if.end5041_crit_edge
  %391 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5066 = getelementptr i32, ptr %392, i32 1
  store ptr %incdec.ptr5066, ptr %cur.i, align 4
  %393 = ptrtoint ptr %392 to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 0, ptr %392, align 4
  %394 = load ptr, ptr %cur.i, align 4
  %395 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %seg.i, align 8
  %cmp5078.not = icmp ult ptr %394, %396
  br i1 %cmp5078.not, label %if.end5041.if.end5103_crit_edge, label %do.end5097, !prof !24

if.end5041.if.end5103_crit_edge:                  ; preds = %if.end5041
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5103

do.end5097:                                       ; preds = %if.end5041
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 277, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end5103

if.end5103:                                       ; preds = %do.end5097, %if.end5041.if.end5103_crit_edge
  %397 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %cur.i, align 4
  %399 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %end.i, align 4
  %cmp5117.not = icmp ult ptr %398, %400
  br i1 %cmp5117.not, label %if.end5103.if.end5142_crit_edge, label %do.end5136, !prof !24

if.end5103.if.end5142_crit_edge:                  ; preds = %if.end5103
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5142

do.end5136:                                       ; preds = %if.end5103
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 277, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end5142

if.end5142:                                       ; preds = %do.end5136, %if.end5103.if.end5142_crit_edge
  %401 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5167 = getelementptr i32, ptr %402, i32 1
  store ptr %incdec.ptr5167, ptr %cur.i, align 4
  %403 = ptrtoint ptr %402 to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 1, ptr %402, align 4
  %404 = load ptr, ptr %cur.i, align 4
  %405 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %seg.i, align 8
  %cmp5287.not = icmp ult ptr %404, %406
  br i1 %cmp5287.not, label %if.end5142.if.end5312_crit_edge, label %do.end5306, !prof !24

if.end5142.if.end5312_crit_edge:                  ; preds = %if.end5142
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5312

do.end5306:                                       ; preds = %if.end5142
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end5312

if.end5312:                                       ; preds = %do.end5306, %if.end5142.if.end5312_crit_edge
  %407 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %cur.i, align 4
  %409 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %end.i, align 4
  %cmp5326.not = icmp ult ptr %408, %410
  br i1 %cmp5326.not, label %if.end5312.if.end5351_crit_edge, label %do.end5345, !prof !24

if.end5312.if.end5351_crit_edge:                  ; preds = %if.end5312
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5351

do.end5345:                                       ; preds = %if.end5312
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end5351

if.end5351:                                       ; preds = %do.end5345, %if.end5312.if.end5351_crit_edge
  %411 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5376 = getelementptr i32, ptr %412, i32 1
  store ptr %incdec.ptr5376, ptr %cur.i, align 4
  %413 = ptrtoint ptr %412 to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 -2147393017, ptr %412, align 4
  %414 = load ptr, ptr %cur.i, align 4
  %415 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %seg.i, align 8
  %cmp5587.not = icmp ult ptr %414, %416
  br i1 %cmp5587.not, label %if.end5351.if.end5612_crit_edge, label %do.end5606, !prof !24

if.end5351.if.end5612_crit_edge:                  ; preds = %if.end5351
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5612

do.end5606:                                       ; preds = %if.end5351
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 285, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end5612

if.end5612:                                       ; preds = %do.end5606, %if.end5351.if.end5612_crit_edge
  %417 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %cur.i, align 4
  %419 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %end.i, align 4
  %cmp5626.not = icmp ult ptr %418, %420
  br i1 %cmp5626.not, label %if.end5612.if.end5651_crit_edge, label %do.end5645, !prof !24

if.end5612.if.end5651_crit_edge:                  ; preds = %if.end5612
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5651

do.end5645:                                       ; preds = %if.end5612
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 285, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end5651

if.end5651:                                       ; preds = %do.end5645, %if.end5612.if.end5651_crit_edge
  %421 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5676 = getelementptr i32, ptr %422, i32 1
  store ptr %incdec.ptr5676, ptr %cur.i, align 4
  %423 = ptrtoint ptr %422 to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 537158160, ptr %422, align 4
  %424 = load ptr, ptr %cur.i, align 4
  %425 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %seg.i, align 8
  %cmp5688.not = icmp ult ptr %424, %426
  br i1 %cmp5688.not, label %if.end5651.if.end5713_crit_edge, label %do.end5707, !prof !24

if.end5651.if.end5713_crit_edge:                  ; preds = %if.end5651
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5713

do.end5707:                                       ; preds = %if.end5651
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 285, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end5713

if.end5713:                                       ; preds = %do.end5707, %if.end5651.if.end5713_crit_edge
  %427 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %cur.i, align 4
  %429 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %end.i, align 4
  %cmp5727.not = icmp ult ptr %428, %430
  br i1 %cmp5727.not, label %if.end5713.if.end5752_crit_edge, label %do.end5746, !prof !24

if.end5713.if.end5752_crit_edge:                  ; preds = %if.end5713
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5752

do.end5746:                                       ; preds = %if.end5713
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 285, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end5752

if.end5752:                                       ; preds = %do.end5746, %if.end5713.if.end5752_crit_edge
  %431 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5777 = getelementptr i32, ptr %432, i32 1
  store ptr %incdec.ptr5777, ptr %cur.i, align 4
  %433 = ptrtoint ptr %432 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 0, ptr %432, align 4
  %434 = load ptr, ptr %cur.i, align 4
  %435 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %seg.i, align 8
  %cmp5789.not = icmp ult ptr %434, %436
  br i1 %cmp5789.not, label %if.end5752.if.end5814_crit_edge, label %do.end5808, !prof !24

if.end5752.if.end5814_crit_edge:                  ; preds = %if.end5752
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5814

do.end5808:                                       ; preds = %if.end5752
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 285, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end5814

if.end5814:                                       ; preds = %do.end5808, %if.end5752.if.end5814_crit_edge
  %437 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %cur.i, align 4
  %439 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %end.i, align 4
  %cmp5828.not = icmp ult ptr %438, %440
  br i1 %cmp5828.not, label %if.end5814.if.end5853_crit_edge, label %do.end5847, !prof !24

if.end5814.if.end5853_crit_edge:                  ; preds = %if.end5814
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5853

do.end5847:                                       ; preds = %if.end5814
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 285, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end5853

if.end5853:                                       ; preds = %do.end5847, %if.end5814.if.end5853_crit_edge
  %441 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5878 = getelementptr i32, ptr %442, i32 1
  store ptr %incdec.ptr5878, ptr %cur.i, align 4
  %443 = ptrtoint ptr %442 to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 1, ptr %442, align 4
  %444 = load ptr, ptr %cur.i, align 4
  %445 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %seg.i, align 8
  %cmp5890.not = icmp ult ptr %444, %446
  br i1 %cmp5890.not, label %if.end5853.if.end5915_crit_edge, label %do.end5909, !prof !24

if.end5853.if.end5915_crit_edge:                  ; preds = %if.end5853
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5915

do.end5909:                                       ; preds = %if.end5853
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 285, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end5915

if.end5915:                                       ; preds = %do.end5909, %if.end5853.if.end5915_crit_edge
  %447 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %cur.i, align 4
  %449 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %end.i, align 4
  %cmp5929.not = icmp ult ptr %448, %450
  br i1 %cmp5929.not, label %if.end5915.if.end5954_crit_edge, label %do.end5948, !prof !24

if.end5915.if.end5954_crit_edge:                  ; preds = %if.end5915
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5954

do.end5948:                                       ; preds = %if.end5915
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 285, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end5954

if.end5954:                                       ; preds = %do.end5948, %if.end5915.if.end5954_crit_edge
  %451 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5979 = getelementptr i32, ptr %452, i32 1
  store ptr %incdec.ptr5979, ptr %cur.i, align 4
  %453 = ptrtoint ptr %452 to i32
  call void @__asan_store4_noabort(i32 %453)
  store i32 0, ptr %452, align 4
  %454 = load ptr, ptr %cur.i, align 4
  %455 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %seg.i, align 8
  %cmp5991.not = icmp ult ptr %454, %456
  br i1 %cmp5991.not, label %if.end5954.if.end6016_crit_edge, label %do.end6010, !prof !24

if.end5954.if.end6016_crit_edge:                  ; preds = %if.end5954
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6016

do.end6010:                                       ; preds = %if.end5954
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 285, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end6016

if.end6016:                                       ; preds = %do.end6010, %if.end5954.if.end6016_crit_edge
  %457 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %cur.i, align 4
  %459 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %end.i, align 4
  %cmp6030.not = icmp ult ptr %458, %460
  br i1 %cmp6030.not, label %if.end6016.if.end6055_crit_edge, label %do.end6049, !prof !24

if.end6016.if.end6055_crit_edge:                  ; preds = %if.end6016
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6055

do.end6049:                                       ; preds = %if.end6016
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 285, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end6055

if.end6055:                                       ; preds = %do.end6049, %if.end6016.if.end6055_crit_edge
  %461 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6080 = getelementptr i32, ptr %462, i32 1
  store ptr %incdec.ptr6080, ptr %cur.i, align 4
  %463 = ptrtoint ptr %462 to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 1, ptr %462, align 4
  %464 = load ptr, ptr %cur.i, align 4
  %465 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %seg.i, align 8
  %cmp6200.not = icmp ult ptr %464, %466
  br i1 %cmp6200.not, label %if.end6055.if.end6225_crit_edge, label %do.end6219, !prof !24

if.end6055.if.end6225_crit_edge:                  ; preds = %if.end6055
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6225

do.end6219:                                       ; preds = %if.end6055
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 288, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end6225

if.end6225:                                       ; preds = %do.end6219, %if.end6055.if.end6225_crit_edge
  %467 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %cur.i, align 4
  %469 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %end.i, align 4
  %cmp6239.not = icmp ult ptr %468, %470
  br i1 %cmp6239.not, label %if.end6225.if.end6264_crit_edge, label %do.end6258, !prof !24

if.end6225.if.end6264_crit_edge:                  ; preds = %if.end6225
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6264

do.end6258:                                       ; preds = %if.end6225
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 288, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end6264

if.end6264:                                       ; preds = %do.end6258, %if.end6225.if.end6264_crit_edge
  %471 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6289 = getelementptr i32, ptr %472, i32 1
  store ptr %incdec.ptr6289, ptr %cur.i, align 4
  %473 = ptrtoint ptr %472 to i32
  call void @__asan_store4_noabort(i32 %473)
  store i32 -2147392990, ptr %472, align 4
  %474 = load ptr, ptr %cur.i, align 4
  %475 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %seg.i, align 8
  %cmp6500.not = icmp ult ptr %474, %476
  br i1 %cmp6500.not, label %if.end6264.if.end6525_crit_edge, label %do.end6519, !prof !24

if.end6264.if.end6525_crit_edge:                  ; preds = %if.end6264
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6525

do.end6519:                                       ; preds = %if.end6264
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end6525

if.end6525:                                       ; preds = %do.end6519, %if.end6264.if.end6525_crit_edge
  %477 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %cur.i, align 4
  %479 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %end.i, align 4
  %cmp6539.not = icmp ult ptr %478, %480
  br i1 %cmp6539.not, label %if.end6525.if.end6564_crit_edge, label %do.end6558, !prof !24

if.end6525.if.end6564_crit_edge:                  ; preds = %if.end6525
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6564

do.end6558:                                       ; preds = %if.end6525
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end6564

if.end6564:                                       ; preds = %do.end6558, %if.end6525.if.end6564_crit_edge
  %481 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6589 = getelementptr i32, ptr %482, i32 1
  store ptr %incdec.ptr6589, ptr %cur.i, align 4
  %483 = ptrtoint ptr %482 to i32
  call void @__asan_store4_noabort(i32 %483)
  store i32 537158192, ptr %482, align 4
  %484 = load ptr, ptr %cur.i, align 4
  %485 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %seg.i, align 8
  %cmp6601.not = icmp ult ptr %484, %486
  br i1 %cmp6601.not, label %if.end6564.if.end6626_crit_edge, label %do.end6620, !prof !24

if.end6564.if.end6626_crit_edge:                  ; preds = %if.end6564
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6626

do.end6620:                                       ; preds = %if.end6564
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end6626

if.end6626:                                       ; preds = %do.end6620, %if.end6564.if.end6626_crit_edge
  %487 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %cur.i, align 4
  %489 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %end.i, align 4
  %cmp6640.not = icmp ult ptr %488, %490
  br i1 %cmp6640.not, label %if.end6626.if.end6665_crit_edge, label %do.end6659, !prof !24

if.end6626.if.end6665_crit_edge:                  ; preds = %if.end6626
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6665

do.end6659:                                       ; preds = %if.end6626
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end6665

if.end6665:                                       ; preds = %do.end6659, %if.end6626.if.end6665_crit_edge
  %491 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6690 = getelementptr i32, ptr %492, i32 1
  store ptr %incdec.ptr6690, ptr %cur.i, align 4
  %493 = ptrtoint ptr %492 to i32
  call void @__asan_store4_noabort(i32 %493)
  store i32 0, ptr %492, align 4
  %494 = load ptr, ptr %cur.i, align 4
  %495 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %seg.i, align 8
  %cmp6702.not = icmp ult ptr %494, %496
  br i1 %cmp6702.not, label %if.end6665.if.end6727_crit_edge, label %do.end6721, !prof !24

if.end6665.if.end6727_crit_edge:                  ; preds = %if.end6665
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6727

do.end6721:                                       ; preds = %if.end6665
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end6727

if.end6727:                                       ; preds = %do.end6721, %if.end6665.if.end6727_crit_edge
  %497 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %cur.i, align 4
  %499 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %end.i, align 4
  %cmp6741.not = icmp ult ptr %498, %500
  br i1 %cmp6741.not, label %if.end6727.if.end6766_crit_edge, label %do.end6760, !prof !24

if.end6727.if.end6766_crit_edge:                  ; preds = %if.end6727
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6766

do.end6760:                                       ; preds = %if.end6727
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end6766

if.end6766:                                       ; preds = %do.end6760, %if.end6727.if.end6766_crit_edge
  %501 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6791 = getelementptr i32, ptr %502, i32 1
  store ptr %incdec.ptr6791, ptr %cur.i, align 4
  %503 = ptrtoint ptr %502 to i32
  call void @__asan_store4_noabort(i32 %503)
  store i32 1, ptr %502, align 4
  %504 = load ptr, ptr %cur.i, align 4
  %505 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %seg.i, align 8
  %cmp6803.not = icmp ult ptr %504, %506
  br i1 %cmp6803.not, label %if.end6766.if.end6828_crit_edge, label %do.end6822, !prof !24

if.end6766.if.end6828_crit_edge:                  ; preds = %if.end6766
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6828

do.end6822:                                       ; preds = %if.end6766
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end6828

if.end6828:                                       ; preds = %do.end6822, %if.end6766.if.end6828_crit_edge
  %507 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %cur.i, align 4
  %509 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %end.i, align 4
  %cmp6842.not = icmp ult ptr %508, %510
  br i1 %cmp6842.not, label %if.end6828.if.end6867_crit_edge, label %do.end6861, !prof !24

if.end6828.if.end6867_crit_edge:                  ; preds = %if.end6828
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6867

do.end6861:                                       ; preds = %if.end6828
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end6867

if.end6867:                                       ; preds = %do.end6861, %if.end6828.if.end6867_crit_edge
  %511 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6892 = getelementptr i32, ptr %512, i32 1
  store ptr %incdec.ptr6892, ptr %cur.i, align 4
  %513 = ptrtoint ptr %512 to i32
  call void @__asan_store4_noabort(i32 %513)
  store i32 0, ptr %512, align 4
  %514 = load ptr, ptr %cur.i, align 4
  %515 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %seg.i, align 8
  %cmp6904.not = icmp ult ptr %514, %516
  br i1 %cmp6904.not, label %if.end6867.if.end6929_crit_edge, label %do.end6923, !prof !24

if.end6867.if.end6929_crit_edge:                  ; preds = %if.end6867
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6929

do.end6923:                                       ; preds = %if.end6867
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end6929

if.end6929:                                       ; preds = %do.end6923, %if.end6867.if.end6929_crit_edge
  %517 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %cur.i, align 4
  %519 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %end.i, align 4
  %cmp6943.not = icmp ult ptr %518, %520
  br i1 %cmp6943.not, label %if.end6929.if.end6968_crit_edge, label %do.end6962, !prof !24

if.end6929.if.end6968_crit_edge:                  ; preds = %if.end6929
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6968

do.end6962:                                       ; preds = %if.end6929
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end6968

if.end6968:                                       ; preds = %do.end6962, %if.end6929.if.end6968_crit_edge
  %521 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %cur.i, align 4
  %incdec.ptr6993 = getelementptr i32, ptr %522, i32 1
  store ptr %incdec.ptr6993, ptr %cur.i, align 4
  %523 = ptrtoint ptr %522 to i32
  call void @__asan_store4_noabort(i32 %523)
  store i32 1, ptr %522, align 4
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 1
  %524 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %kick.i, align 4
  tail call void %525(ptr noundef %9) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end6968, %do.end, %sw.bb7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end6968 ], [ %call4, %entry.cleanup_crit_edge ], [ -22, %sw.bb7.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
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
!1 = !{!"../drivers/gpu/drm/nouveau/nvc0_fbcon.c", i32 55, i32 3}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/nouveau/nvc0_fbcon.c", i32 61, i32 2}
!9 = distinct !{null, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/nvc0_fbcon.c", i32 170, i32 38}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nvc0_fbcon.c", i32 217, i32 2}
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
