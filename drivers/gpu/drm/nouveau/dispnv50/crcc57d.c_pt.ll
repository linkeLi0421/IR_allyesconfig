; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/crcc57d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/crcc57d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_crc_func = type { ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.nv50_head = type { ptr, %struct.nouveau_crtc, %struct.nv50_crc, %struct.nv50_lut, ptr }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.118, %struct.anon.119, %struct.anon.120, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
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
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.118 = type { i32, i8, i32, i32 }
%struct.anon.119 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.120 = type { i32 }
%struct.nv50_crc = type { %struct.spinlock, [2 x %struct.nv50_crc_notifier_ctx], %struct.drm_vblank_work, i32, i64, i16, i16, i8 }
%struct.nv50_crc_notifier_ctx = type { %struct.nvif_mem, %struct.nvif_object }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.117 }
%struct.anon.117 = type { ptr, i64 }
%struct.drm_vblank_work = type { %struct.kthread_work, ptr, i64, i32, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.91 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.126, %struct.anon.127, %struct.anon.129, ptr, %struct.anon.130, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.131, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.143 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.126 = type { ptr, i32, i32, i8 }
%struct.anon.127 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.128] }
%struct.anon.128 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.129 = type { i64, i64 }
%struct.anon.130 = type { i32, i64 }
%struct.anon.131 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.138, %struct.anon.139, %struct.anon.140, %struct.anon.141 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.132, i8 }
%union.anon.132 = type { %struct.anon.136 }
%struct.anon.136 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.138 = type { i32 }
%struct.anon.139 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.140 = type { i16, i16 }
%struct.anon.141 = type { i16, i16, i16, %struct.anon.142, i16 }
%struct.anon.142 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.143 = type { ptr, %struct.mutex, i8 }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }

@crcc57d = dso_local constant { %struct.nv50_crc_func, [40 x i8] } { %struct.nv50_crc_func { ptr @crcc57d_set_src, ptr @crcc37d_set_ctx, ptr @crcc37d_get_entry, ptr @crcc37d_ctx_finished, i16 2017, i16 2047, i32 65536 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/nouveau/dispnv50/crcc57d.c\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mthd\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.crcc57d_set_src = private unnamed_addr constant [16 x i8] c"crcc57d_set_src\00", align 1
@.str.6 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57D_HEAD_SET_CONTEXT_DMA_CRC(i)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC57D_HEAD_SET_CRC_CONTROL(i)\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@___asan_gen_.8 = private unnamed_addr constant [8 x i8] c"crcc57d\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 50, i32 28 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 40, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [46 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/crcc57d.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 41, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @crcc57d, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crcc57d to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crcc57d_set_src(ptr nocapture noundef readonly %head, i32 noundef %or, i32 noundef %source, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %core = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %push2 = getelementptr inbounds %struct.nv50_core, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %push2, align 8
  %index = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %14 = zext i32 %source to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %source, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 5, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %add = shl i32 %or, 12
  %15 = add i32 %add, 327680
  %16 = and i32 %15, 1044480
  %17 = or i32 %16, 32
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb, %entry.sw.epilog_crit_edge
  %crc_args.0 = phi i32 [ 32, %entry.sw.epilog_crit_edge ], [ 196640, %sw.bb7 ], [ %17, %sw.bb ]
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %18 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %19, i32 4
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %21
  br i1 %cmp.not.i, label %sw.epilog.if.end_crit_edge, label %if.then.i

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then.i:                                        ; preds = %sw.epilog
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %23(ptr noundef %11, i32 noundef 4) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %24 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %25, i32 4
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %26 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %source)
  %tobool12.not = icmp eq i32 %source, 0
  %mul616 = shl i32 %13, 10
  br i1 %tobool12.not, label %do.body614, label %do.body15

do.body15:                                        ; preds = %if.end
  %add16 = add i32 %mul616, 8576
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add16)
  %tobool19.not = icmp ult i32 %add16, 16384
  br i1 %tobool19.not, label %do.body15.if.end65_crit_edge, label %do.end, !prof !22

do.body15.if.end65_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end65

do.end:                                           ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef nonnull @.str.1) #2
  br label %if.end65

if.end65:                                         ; preds = %do.end, %do.body15.if.end65_crit_edge
  %27 = and i32 %add16, 15744
  %28 = or i32 %27, 262144
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %30, %32
  br i1 %cmp.not, label %if.end65.if.end109_crit_edge, label %do.end103, !prof !22

if.end65.if.end109_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end109

do.end103:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end109

if.end109:                                        ; preds = %do.end103, %if.end65.if.end109_crit_edge
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end.i, align 4
  %cmp122.not = icmp ult ptr %34, %36
  br i1 %cmp122.not, label %if.end109.if.end147_crit_edge, label %do.end141, !prof !22

if.end109.if.end147_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end147

do.end141:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end147

if.end147:                                        ; preds = %do.end141, %if.end109.if.end147_crit_edge
  %37 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %39 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %40 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %41 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mem, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %47 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %51 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %handle, align 4
  %name164 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %53 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %46(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %50, i32 noundef %52, ptr noundef %54, i32 noundef %sub.ptr.sub, i32 noundef %28, i32 noundef %add16, i32 noundef 1, ptr noundef nonnull @__func__.crcc57d_set_src) #2
  %55 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %56, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %28, ptr %56, align 4
  %handle180 = getelementptr inbounds %struct.nv50_crc_notifier_ctx, ptr %ctx, i32 0, i32 1, i32 3
  %58 = ptrtoint ptr %handle180 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %handle180, align 4
  %60 = load ptr, ptr %cur.i, align 4
  %61 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %seg.i, align 8
  %cmp185.not = icmp ult ptr %60, %62
  br i1 %cmp185.not, label %if.end147.if.end210_crit_edge, label %do.end204, !prof !22

if.end147.if.end210_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end210

do.end204:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end210

if.end210:                                        ; preds = %do.end204, %if.end147.if.end210_crit_edge
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %65 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %end.i, align 4
  %cmp224.not = icmp ult ptr %64, %66
  br i1 %cmp224.not, label %if.end210.if.end249_crit_edge, label %do.end243, !prof !22

if.end210.if.end249_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end249

do.end243:                                        ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end249

if.end249:                                        ; preds = %do.end243, %if.end210.if.end249_crit_edge
  %67 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cur.i, align 4
  %69 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast267 = ptrtoint ptr %68 to i32
  %sub.ptr.rhs.cast268 = ptrtoint ptr %70 to i32
  %sub.ptr.sub269 = sub i32 %sub.ptr.lhs.cast267, %sub.ptr.rhs.cast268
  %71 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mem, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %77 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %client, align 4
  %name281 = getelementptr inbounds %struct.nvif_object, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %name281 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name281, align 8
  %81 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %handle, align 4
  %83 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %76(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %80, i32 noundef %82, ptr noundef %84, i32 noundef %sub.ptr.sub269, i32 noundef %59) #2
  %85 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cur.i, align 4
  %incdec.ptr290 = getelementptr i32, ptr %86, i32 1
  store ptr %incdec.ptr290, ptr %cur.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %59, ptr %86, align 4
  %add300 = add i32 %mul616, 8580
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add300)
  %tobool303.not = icmp ult i32 %add300, 16384
  br i1 %tobool303.not, label %if.end249.if.end358_crit_edge, label %do.end323, !prof !22

if.end249.if.end358_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end358

do.end323:                                        ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.1) #2
  br label %if.end358

if.end358:                                        ; preds = %do.end323, %if.end249.if.end358_crit_edge
  %88 = and i32 %add300, 15748
  %89 = or i32 %88, 262144
  %90 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cur.i, align 4
  %92 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %seg.i, align 8
  %cmp383.not = icmp ult ptr %91, %93
  br i1 %cmp383.not, label %if.end358.if.end408_crit_edge, label %do.end402, !prof !22

if.end358.if.end408_crit_edge:                    ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end408

do.end402:                                        ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end408

if.end408:                                        ; preds = %do.end402, %if.end358.if.end408_crit_edge
  %94 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cur.i, align 4
  %96 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %end.i, align 4
  %cmp422.not = icmp ult ptr %95, %97
  br i1 %cmp422.not, label %if.end408.if.end447_crit_edge, label %do.end441, !prof !22

if.end408.if.end447_crit_edge:                    ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end447

do.end441:                                        ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end447

if.end447:                                        ; preds = %do.end441, %if.end408.if.end447_crit_edge
  %98 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cur.i, align 4
  %100 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast465 = ptrtoint ptr %99 to i32
  %sub.ptr.rhs.cast466 = ptrtoint ptr %101 to i32
  %sub.ptr.sub467 = sub i32 %sub.ptr.lhs.cast465, %sub.ptr.rhs.cast466
  %102 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mem, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %108 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %client, align 4
  %name479 = getelementptr inbounds %struct.nvif_object, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %name479 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %name479, align 8
  %112 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %handle, align 4
  %114 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %107(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %111, i32 noundef %113, ptr noundef %115, i32 noundef %sub.ptr.sub467, i32 noundef %89, i32 noundef %add300, i32 noundef 1, ptr noundef nonnull @__func__.crcc57d_set_src) #2
  %116 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cur.i, align 4
  %incdec.ptr490 = getelementptr i32, ptr %117, i32 1
  store ptr %incdec.ptr490, ptr %cur.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %89, ptr %117, align 4
  %119 = load ptr, ptr %cur.i, align 4
  %120 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %seg.i, align 8
  %cmp502.not = icmp ult ptr %119, %121
  br i1 %cmp502.not, label %if.end447.if.end527_crit_edge, label %do.end521, !prof !22

if.end447.if.end527_crit_edge:                    ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end527

do.end521:                                        ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end527

if.end527:                                        ; preds = %do.end521, %if.end447.if.end527_crit_edge
  %122 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur.i, align 4
  %124 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %end.i, align 4
  %cmp541.not = icmp ult ptr %123, %125
  br i1 %cmp541.not, label %if.end527.if.end566_crit_edge, label %do.end560, !prof !22

if.end527.if.end566_crit_edge:                    ; preds = %if.end527
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end566

do.end560:                                        ; preds = %if.end527
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end566

if.end566:                                        ; preds = %do.end560, %if.end527.if.end566_crit_edge
  %126 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cur.i, align 4
  %128 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast584 = ptrtoint ptr %127 to i32
  %sub.ptr.rhs.cast585 = ptrtoint ptr %129 to i32
  %sub.ptr.sub586 = sub i32 %sub.ptr.lhs.cast584, %sub.ptr.rhs.cast585
  %130 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mem, align 8
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %136 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %client, align 4
  %name598 = getelementptr inbounds %struct.nvif_object, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %name598 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %name598, align 8
  %140 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %handle, align 4
  %142 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %135(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %139, i32 noundef %141, ptr noundef %143, i32 noundef %sub.ptr.sub586, i32 noundef %crc_args.0) #2
  %144 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cur.i, align 4
  %incdec.ptr607 = getelementptr i32, ptr %145, i32 1
  store ptr %incdec.ptr607, ptr %cur.i, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %crc_args.0, ptr %145, align 4
  br label %cleanup

do.body614:                                       ; preds = %if.end
  %add617 = add i32 %mul616, 8580
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add617)
  %tobool620.not = icmp ult i32 %add617, 16384
  br i1 %tobool620.not, label %do.body614.if.end675_crit_edge, label %do.end640, !prof !22

do.body614.if.end675_crit_edge:                   ; preds = %do.body614
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end675

do.end640:                                        ; preds = %do.body614
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef nonnull @.str.1) #2
  br label %if.end675

if.end675:                                        ; preds = %do.end640, %do.body614.if.end675_crit_edge
  %147 = and i32 %add617, 15748
  %148 = or i32 %147, 262144
  %149 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %cur.i, align 4
  %151 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %seg.i, align 8
  %cmp700.not = icmp ult ptr %150, %152
  br i1 %cmp700.not, label %if.end675.if.end725_crit_edge, label %do.end719, !prof !22

if.end675.if.end725_crit_edge:                    ; preds = %if.end675
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end725

do.end719:                                        ; preds = %if.end675
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end725

if.end725:                                        ; preds = %do.end719, %if.end675.if.end725_crit_edge
  %153 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %cur.i, align 4
  %155 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %end.i, align 4
  %cmp739.not = icmp ult ptr %154, %156
  br i1 %cmp739.not, label %if.end725.if.end764_crit_edge, label %do.end758, !prof !22

if.end725.if.end764_crit_edge:                    ; preds = %if.end725
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end764

do.end758:                                        ; preds = %if.end725
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end764

if.end764:                                        ; preds = %do.end758, %if.end725.if.end764_crit_edge
  %157 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cur.i, align 4
  %mem778 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map780 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %159 = ptrtoint ptr %map780 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %map780, align 8
  %sub.ptr.lhs.cast782 = ptrtoint ptr %158 to i32
  %sub.ptr.rhs.cast783 = ptrtoint ptr %160 to i32
  %sub.ptr.sub784 = sub i32 %sub.ptr.lhs.cast782, %sub.ptr.rhs.cast783
  %161 = ptrtoint ptr %mem778 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mem778, align 8
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  %client794 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %167 = ptrtoint ptr %client794 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %client794, align 4
  %name796 = getelementptr inbounds %struct.nvif_object, ptr %168, i32 0, i32 2
  %169 = ptrtoint ptr %name796 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %name796, align 8
  %handle797 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %171 = ptrtoint ptr %handle797 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %handle797, align 4
  %name798 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %173 = ptrtoint ptr %name798 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %name798, align 8
  tail call void (ptr, ptr, ...) %166(ptr noundef %mem778, ptr noundef nonnull @.str.5, ptr noundef %170, i32 noundef %172, ptr noundef %174, i32 noundef %sub.ptr.sub784, i32 noundef %148, i32 noundef %add617, i32 noundef 1, ptr noundef nonnull @__func__.crcc57d_set_src) #2
  %175 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %cur.i, align 4
  %incdec.ptr807 = getelementptr i32, ptr %176, i32 1
  store ptr %incdec.ptr807, ptr %cur.i, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %148, ptr %176, align 4
  %178 = load ptr, ptr %cur.i, align 4
  %179 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %seg.i, align 8
  %cmp819.not = icmp ult ptr %178, %180
  br i1 %cmp819.not, label %if.end764.if.end844_crit_edge, label %do.end838, !prof !22

if.end764.if.end844_crit_edge:                    ; preds = %if.end764
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end844

do.end838:                                        ; preds = %if.end764
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end844

if.end844:                                        ; preds = %do.end838, %if.end764.if.end844_crit_edge
  %181 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cur.i, align 4
  %183 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %end.i, align 4
  %cmp858.not = icmp ult ptr %182, %184
  br i1 %cmp858.not, label %if.end844.if.end883_crit_edge, label %do.end877, !prof !22

if.end844.if.end883_crit_edge:                    ; preds = %if.end844
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end883

do.end877:                                        ; preds = %if.end844
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end883

if.end883:                                        ; preds = %do.end877, %if.end844.if.end883_crit_edge
  %185 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %cur.i, align 4
  %187 = ptrtoint ptr %map780 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %map780, align 8
  %sub.ptr.lhs.cast901 = ptrtoint ptr %186 to i32
  %sub.ptr.rhs.cast902 = ptrtoint ptr %188 to i32
  %sub.ptr.sub903 = sub i32 %sub.ptr.lhs.cast901, %sub.ptr.rhs.cast902
  %189 = ptrtoint ptr %mem778 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mem778, align 8
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %190, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %192, align 4
  %195 = ptrtoint ptr %client794 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %client794, align 4
  %name915 = getelementptr inbounds %struct.nvif_object, ptr %196, i32 0, i32 2
  %197 = ptrtoint ptr %name915 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %name915, align 8
  %199 = ptrtoint ptr %handle797 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %handle797, align 4
  %201 = ptrtoint ptr %name798 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %name798, align 8
  tail call void (ptr, ptr, ...) %194(ptr noundef %mem778, ptr noundef nonnull @.str.7, ptr noundef %198, i32 noundef %200, ptr noundef %202, i32 noundef %sub.ptr.sub903, i32 noundef 0) #2
  %203 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %cur.i, align 4
  %incdec.ptr924 = getelementptr i32, ptr %204, i32 1
  store ptr %incdec.ptr924, ptr %cur.i, align 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 0, ptr %204, align 4
  %add934 = add i32 %mul616, 8576
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add934)
  %tobool937.not = icmp ult i32 %add934, 16384
  br i1 %tobool937.not, label %if.end883.if.end992_crit_edge, label %do.end957, !prof !22

if.end883.if.end992_crit_edge:                    ; preds = %if.end883
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end992

do.end957:                                        ; preds = %if.end883
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.1) #2
  br label %if.end992

if.end992:                                        ; preds = %do.end957, %if.end883.if.end992_crit_edge
  %206 = and i32 %add934, 15744
  %207 = or i32 %206, 262144
  %208 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %cur.i, align 4
  %210 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %seg.i, align 8
  %cmp1017.not = icmp ult ptr %209, %211
  br i1 %cmp1017.not, label %if.end992.if.end1042_crit_edge, label %do.end1036, !prof !22

if.end992.if.end1042_crit_edge:                   ; preds = %if.end992
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1042

do.end1036:                                       ; preds = %if.end992
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end1042

if.end1042:                                       ; preds = %do.end1036, %if.end992.if.end1042_crit_edge
  %212 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %cur.i, align 4
  %214 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %end.i, align 4
  %cmp1056.not = icmp ult ptr %213, %215
  br i1 %cmp1056.not, label %if.end1042.if.end1081_crit_edge, label %do.end1075, !prof !22

if.end1042.if.end1081_crit_edge:                  ; preds = %if.end1042
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1081

do.end1075:                                       ; preds = %if.end1042
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end1081

if.end1081:                                       ; preds = %do.end1075, %if.end1042.if.end1081_crit_edge
  %216 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %cur.i, align 4
  %218 = ptrtoint ptr %map780 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %map780, align 8
  %sub.ptr.lhs.cast1099 = ptrtoint ptr %217 to i32
  %sub.ptr.rhs.cast1100 = ptrtoint ptr %219 to i32
  %sub.ptr.sub1101 = sub i32 %sub.ptr.lhs.cast1099, %sub.ptr.rhs.cast1100
  %220 = ptrtoint ptr %mem778 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mem778, align 8
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %221, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 4
  %226 = ptrtoint ptr %client794 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %client794, align 4
  %name1113 = getelementptr inbounds %struct.nvif_object, ptr %227, i32 0, i32 2
  %228 = ptrtoint ptr %name1113 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %name1113, align 8
  %230 = ptrtoint ptr %handle797 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %handle797, align 4
  %232 = ptrtoint ptr %name798 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %name798, align 8
  tail call void (ptr, ptr, ...) %225(ptr noundef %mem778, ptr noundef nonnull @.str.5, ptr noundef %229, i32 noundef %231, ptr noundef %233, i32 noundef %sub.ptr.sub1101, i32 noundef %207, i32 noundef %add934, i32 noundef 1, ptr noundef nonnull @__func__.crcc57d_set_src) #2
  %234 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1124 = getelementptr i32, ptr %235, i32 1
  store ptr %incdec.ptr1124, ptr %cur.i, align 4
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %207, ptr %235, align 4
  %237 = load ptr, ptr %cur.i, align 4
  %238 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %seg.i, align 8
  %cmp1136.not = icmp ult ptr %237, %239
  br i1 %cmp1136.not, label %if.end1081.if.end1161_crit_edge, label %do.end1155, !prof !22

if.end1081.if.end1161_crit_edge:                  ; preds = %if.end1081
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1161

do.end1155:                                       ; preds = %if.end1081
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.3) #2
  br label %if.end1161

if.end1161:                                       ; preds = %do.end1155, %if.end1081.if.end1161_crit_edge
  %240 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %cur.i, align 4
  %242 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %end.i, align 4
  %cmp1175.not = icmp ult ptr %241, %243
  br i1 %cmp1175.not, label %if.end1161.if.end1200_crit_edge, label %do.end1194, !prof !22

if.end1161.if.end1200_crit_edge:                  ; preds = %if.end1161
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1200

do.end1194:                                       ; preds = %if.end1161
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end1200

if.end1200:                                       ; preds = %do.end1194, %if.end1161.if.end1200_crit_edge
  %244 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %cur.i, align 4
  %246 = ptrtoint ptr %map780 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %map780, align 8
  %sub.ptr.lhs.cast1218 = ptrtoint ptr %245 to i32
  %sub.ptr.rhs.cast1219 = ptrtoint ptr %247 to i32
  %sub.ptr.sub1220 = sub i32 %sub.ptr.lhs.cast1218, %sub.ptr.rhs.cast1219
  %248 = ptrtoint ptr %mem778 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %mem778, align 8
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %249, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 4
  %254 = ptrtoint ptr %client794 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %client794, align 4
  %name1232 = getelementptr inbounds %struct.nvif_object, ptr %255, i32 0, i32 2
  %256 = ptrtoint ptr %name1232 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %name1232, align 8
  %258 = ptrtoint ptr %handle797 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %handle797, align 4
  %260 = ptrtoint ptr %name798 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %name798, align 8
  tail call void (ptr, ptr, ...) %253(ptr noundef %mem778, ptr noundef nonnull @.str.6, ptr noundef %257, i32 noundef %259, ptr noundef %261, i32 noundef %sub.ptr.sub1220, i32 noundef 0) #2
  %262 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1241 = getelementptr i32, ptr %263, i32 1
  store ptr %incdec.ptr1241, ptr %cur.i, align 4
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 0, ptr %263, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1200, %if.end566, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1200 ], [ 0, %if.end566 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crcc37d_set_ctx(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crcc37d_get_entry(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @crcc37d_ctx_finished(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @crcc57d, !1, !"crcc57d", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crcc57d.c", i32 50, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crcc57d.c", i32 40, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.crcc57d_set_src, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crcc57d.c", i32 41, i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
