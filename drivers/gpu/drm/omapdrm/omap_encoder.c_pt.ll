; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/omap_encoder.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/omap_encoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_encoder = type { %struct.drm_encoder, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.86 = type { i32, ptr }
%struct.omap_dss_device = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }

@omap_encoder_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @omap_encoder_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@omap_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"omap_encoder_funcs\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 40, i32 39 }
@___asan_gen_.4 = private unnamed_addr constant [26 x i8] c"omap_encoder_helper_funcs\00", align 1
@___asan_gen_.5 = private constant [42 x i8] c"../drivers/gpu/drm/omapdrm/omap_encoder.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 116, i32 46 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @omap_encoder_funcs, ptr @omap_encoder_helper_funcs], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_encoder_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_encoder_init(ptr noundef %dev, ptr noundef %output) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 76) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %output1 = getelementptr inbounds %struct.omap_encoder, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %output1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %output, ptr %output1, align 8
  %call2 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @omap_encoder_funcs, i32 noundef 2, ptr noundef null) #4
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %2 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @omap_encoder_helper_funcs, ptr %helper_private.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_encoder_destroy(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #4
  tail call void @kfree(ptr noundef %encoder) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_encoder_mode_set(ptr noundef readonly %encoder, ptr nocapture noundef readnone %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  %vm = alloca %struct.videomode, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %output1 = getelementptr inbounds %struct.omap_encoder, ptr %encoder, i32 0, i32 1
  %0 = ptrtoint ptr %output1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %output1, align 4
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %vm) #4
  %4 = call ptr @memset(ptr %vm, i32 0, i32 40)
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 12
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %connector_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %connector_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.cond
  %encoder8 = getelementptr i8, ptr %.pn, i32 804
  %6 = ptrtoint ptr %encoder8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %encoder8, align 4
  %cmp9 = icmp eq ptr %7, %encoder
  br i1 %cmp9, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %.pn.lcssa = phi ptr [ %.pn, %for.body.for.end_crit_edge ], [ %connector_list, %for.cond.for.end_crit_edge ]
  call void @drm_display_mode_to_videomode(ptr noundef %adjusted_mode, ptr noundef nonnull %vm) #4
  %bridge15 = getelementptr inbounds %struct.omap_dss_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %bridge15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bridge15, align 4
  %tobool.not73 = icmp eq ptr %9, null
  br i1 %tobool.not73, label %for.end.for.end23_crit_edge, label %for.body17.lr.ph

for.end.for.end23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end23

for.body17.lr.ph:                                 ; preds = %for.end
  %flags.i = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 9
  br label %for.body17

for.body17:                                       ; preds = %for.inc22.for.body17_crit_edge, %for.body17.lr.ph
  %bridge.074 = phi ptr [ %9, %for.body17.lr.ph ], [ %add.ptr.i, %for.inc22.for.body17_crit_edge ]
  %timings = getelementptr inbounds %struct.drm_bridge, ptr %bridge.074, i32 0, i32 6
  %10 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %timings, align 4
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %for.body17.for.inc22_crit_edge, label %if.end20

for.body17.for.inc22_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc22

if.end20:                                         ; preds = %for.body17
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end20.if.end11.i_crit_edge

if.end20.if.end11.i_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.i

if.then.i:                                        ; preds = %if.end20
  %and1.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then.i.if.end11.sink.split.i_crit_edge

if.then.i.if.end11.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.sink.split.i

if.else.i:                                        ; preds = %if.then.i
  %and5.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else.i.if.end11.i_crit_edge, label %if.else.i.if.end11.sink.split.i_crit_edge

if.else.i.if.end11.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.sink.split.i

if.else.i.if.end11.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.i

if.end11.sink.split.i:                            ; preds = %if.else.i.if.end11.sink.split.i_crit_edge, %if.then.i.if.end11.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 16, %if.then.i.if.end11.sink.split.i_crit_edge ], [ 32, %if.else.i.if.end11.sink.split.i_crit_edge ]
  %or.i = or i32 %.sink.i, %15
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end11.sink.split.i, %if.else.i.if.end11.i_crit_edge, %if.end20.if.end11.i_crit_edge
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and13.i = and i32 %18, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end11.i.if.end29.i_crit_edge

if.end11.i.if.end29.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.i

if.then15.i:                                      ; preds = %if.end11.i
  %and16.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.else21.i, label %if.then15.i.if.end29.sink.split.i_crit_edge

if.then15.i.if.end29.sink.split.i_crit_edge:      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.sink.split.i

if.else21.i:                                      ; preds = %if.then15.i
  %and22.i = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.else21.i.if.end29.i_crit_edge, label %if.else21.i.if.end29.sink.split.i_crit_edge

if.else21.i.if.end29.sink.split.i_crit_edge:      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.sink.split.i

if.else21.i.if.end29.i_crit_edge:                 ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.i

if.end29.sink.split.i:                            ; preds = %if.else21.i.if.end29.sink.split.i_crit_edge, %if.then15.i.if.end29.sink.split.i_crit_edge
  %.sink61.i = phi i32 [ 64, %if.then15.i.if.end29.sink.split.i_crit_edge ], [ 128, %if.else21.i.if.end29.sink.split.i_crit_edge ]
  %or20.i = or i32 %.sink61.i, %18
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or20.i, ptr %flags.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end29.sink.split.i, %if.else21.i.if.end29.i_crit_edge, %if.end11.i.if.end29.i_crit_edge
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 4
  %and31.i = and i32 %21, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.then33.i, label %if.end29.i.for.inc22_crit_edge

if.end29.i.for.inc22_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc22

if.then33.i:                                      ; preds = %if.end29.i
  %and34.i = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.else39.i, label %if.then33.i.if.end47.sink.split.i_crit_edge

if.then33.i.if.end47.sink.split.i_crit_edge:      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47.sink.split.i

if.else39.i:                                      ; preds = %if.then33.i
  %and40.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.else39.i.for.inc22_crit_edge, label %if.else39.i.if.end47.sink.split.i_crit_edge

if.else39.i.if.end47.sink.split.i_crit_edge:      ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47.sink.split.i

if.else39.i.for.inc22_crit_edge:                  ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc22

if.end47.sink.split.i:                            ; preds = %if.else39.i.if.end47.sink.split.i_crit_edge, %if.then33.i.if.end47.sink.split.i_crit_edge
  %.sink62.i = phi i32 [ 2048, %if.then33.i.if.end47.sink.split.i_crit_edge ], [ 4096, %if.else39.i.if.end47.sink.split.i_crit_edge ]
  %or38.i = or i32 %.sink62.i, %21
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or38.i, ptr %flags.i, align 4
  br label %for.inc22

for.inc22:                                        ; preds = %if.end47.sink.split.i, %if.else39.i.for.inc22_crit_edge, %if.end29.i.for.inc22_crit_edge, %for.body17.for.inc22_crit_edge
  %chain_node.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge.074, i32 0, i32 3
  %encoder.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge.074, i32 0, i32 2
  %23 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %encoder.i, align 4
  %bridge_chain.i = getelementptr inbounds %struct.drm_encoder, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %chain_node.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chain_node.i, align 4
  %cmp.i.not.i = icmp eq ptr %26, %bridge_chain.i
  %add.ptr.i = getelementptr i8, ptr %26, i32 -132
  %tobool.not75 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.i.not.i, %tobool.not75
  br i1 %tobool.not, label %for.inc22.for.end23_crit_edge, label %for.inc22.for.body17_crit_edge

for.inc22.for.body17_crit_edge:                   ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body17

for.inc22.for.end23_crit_edge:                    ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end23

for.end23:                                        ; preds = %for.inc22.for.end23_crit_edge, %for.end.for.end23_crit_edge
  %bus_flags24 = getelementptr i8, ptr %.pn.lcssa, i32 208
  %27 = ptrtoint ptr %bus_flags24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bus_flags24, align 8
  %flags.i36 = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 9
  %29 = ptrtoint ptr %flags.i36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i36, align 4
  %and.i37 = and i32 %30, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool.not.i38 = icmp eq i32 %and.i37, 0
  br i1 %tobool.not.i38, label %if.then.i41, label %for.end23.if.end11.i50_crit_edge

for.end23.if.end11.i50_crit_edge:                 ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.i50

if.then.i41:                                      ; preds = %for.end23
  %and1.i39 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i39)
  %tobool2.not.i40 = icmp eq i32 %and1.i39, 0
  br i1 %tobool2.not.i40, label %if.else.i44, label %if.then.i41.if.end11.sink.split.i47_crit_edge

if.then.i41.if.end11.sink.split.i47_crit_edge:    ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.sink.split.i47

if.else.i44:                                      ; preds = %if.then.i41
  %and5.i42 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i42)
  %tobool6.not.i43 = icmp eq i32 %and5.i42, 0
  br i1 %tobool6.not.i43, label %if.else.i44.if.end11.i50_crit_edge, label %if.else.i44.if.end11.sink.split.i47_crit_edge

if.else.i44.if.end11.sink.split.i47_crit_edge:    ; preds = %if.else.i44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.sink.split.i47

if.else.i44.if.end11.i50_crit_edge:               ; preds = %if.else.i44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.i50

if.end11.sink.split.i47:                          ; preds = %if.else.i44.if.end11.sink.split.i47_crit_edge, %if.then.i41.if.end11.sink.split.i47_crit_edge
  %.sink.i45 = phi i32 [ 16, %if.then.i41.if.end11.sink.split.i47_crit_edge ], [ 32, %if.else.i44.if.end11.sink.split.i47_crit_edge ]
  %or.i46 = or i32 %.sink.i45, %30
  %31 = ptrtoint ptr %flags.i36 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i46, ptr %flags.i36, align 4
  br label %if.end11.i50

if.end11.i50:                                     ; preds = %if.end11.sink.split.i47, %if.else.i44.if.end11.i50_crit_edge, %for.end23.if.end11.i50_crit_edge
  %32 = ptrtoint ptr %flags.i36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i36, align 4
  %and13.i48 = and i32 %33, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i48)
  %tobool14.not.i49 = icmp eq i32 %and13.i48, 0
  br i1 %tobool14.not.i49, label %if.then15.i53, label %if.end11.i50.if.end29.i62_crit_edge

if.end11.i50.if.end29.i62_crit_edge:              ; preds = %if.end11.i50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.i62

if.then15.i53:                                    ; preds = %if.end11.i50
  %and16.i51 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i51)
  %tobool17.not.i52 = icmp eq i32 %and16.i51, 0
  br i1 %tobool17.not.i52, label %if.else21.i56, label %if.then15.i53.if.end29.sink.split.i59_crit_edge

if.then15.i53.if.end29.sink.split.i59_crit_edge:  ; preds = %if.then15.i53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.sink.split.i59

if.else21.i56:                                    ; preds = %if.then15.i53
  %and22.i54 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i54)
  %tobool23.not.i55 = icmp eq i32 %and22.i54, 0
  br i1 %tobool23.not.i55, label %if.else21.i56.if.end29.i62_crit_edge, label %if.else21.i56.if.end29.sink.split.i59_crit_edge

if.else21.i56.if.end29.sink.split.i59_crit_edge:  ; preds = %if.else21.i56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.sink.split.i59

if.else21.i56.if.end29.i62_crit_edge:             ; preds = %if.else21.i56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.i62

if.end29.sink.split.i59:                          ; preds = %if.else21.i56.if.end29.sink.split.i59_crit_edge, %if.then15.i53.if.end29.sink.split.i59_crit_edge
  %.sink61.i57 = phi i32 [ 64, %if.then15.i53.if.end29.sink.split.i59_crit_edge ], [ 128, %if.else21.i56.if.end29.sink.split.i59_crit_edge ]
  %or20.i58 = or i32 %.sink61.i57, %33
  %34 = ptrtoint ptr %flags.i36 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or20.i58, ptr %flags.i36, align 4
  br label %if.end29.i62

if.end29.i62:                                     ; preds = %if.end29.sink.split.i59, %if.else21.i56.if.end29.i62_crit_edge, %if.end11.i50.if.end29.i62_crit_edge
  %35 = ptrtoint ptr %flags.i36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i36, align 4
  %and31.i60 = and i32 %36, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i60)
  %tobool32.not.i61 = icmp eq i32 %and31.i60, 0
  br i1 %tobool32.not.i61, label %if.then33.i65, label %if.end29.i62.omap_encoder_update_videomode_flags.exit72_crit_edge

if.end29.i62.omap_encoder_update_videomode_flags.exit72_crit_edge: ; preds = %if.end29.i62
  call void @__sanitizer_cov_trace_pc() #6
  br label %omap_encoder_update_videomode_flags.exit72

if.then33.i65:                                    ; preds = %if.end29.i62
  %and34.i63 = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i63)
  %tobool35.not.i64 = icmp eq i32 %and34.i63, 0
  br i1 %tobool35.not.i64, label %if.else39.i68, label %if.then33.i65.if.end47.sink.split.i71_crit_edge

if.then33.i65.if.end47.sink.split.i71_crit_edge:  ; preds = %if.then33.i65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47.sink.split.i71

if.else39.i68:                                    ; preds = %if.then33.i65
  %and40.i66 = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i66)
  %tobool41.not.i67 = icmp eq i32 %and40.i66, 0
  br i1 %tobool41.not.i67, label %if.else39.i68.omap_encoder_update_videomode_flags.exit72_crit_edge, label %if.else39.i68.if.end47.sink.split.i71_crit_edge

if.else39.i68.if.end47.sink.split.i71_crit_edge:  ; preds = %if.else39.i68
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47.sink.split.i71

if.else39.i68.omap_encoder_update_videomode_flags.exit72_crit_edge: ; preds = %if.else39.i68
  call void @__sanitizer_cov_trace_pc() #6
  br label %omap_encoder_update_videomode_flags.exit72

if.end47.sink.split.i71:                          ; preds = %if.else39.i68.if.end47.sink.split.i71_crit_edge, %if.then33.i65.if.end47.sink.split.i71_crit_edge
  %.sink62.i69 = phi i32 [ 2048, %if.then33.i65.if.end47.sink.split.i71_crit_edge ], [ 4096, %if.else39.i68.if.end47.sink.split.i71_crit_edge ]
  %or38.i70 = or i32 %.sink62.i69, %36
  %37 = ptrtoint ptr %flags.i36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or38.i70, ptr %flags.i36, align 4
  br label %omap_encoder_update_videomode_flags.exit72

omap_encoder_update_videomode_flags.exit72:       ; preds = %if.end47.sink.split.i71, %if.else39.i68.omap_encoder_update_videomode_flags.exit72_crit_edge, %if.end29.i62.omap_encoder_update_videomode_flags.exit72_crit_edge
  call void @dss_mgr_set_timings(ptr noundef %1, ptr noundef nonnull %vm) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vm) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dss_mgr_set_timings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @omap_encoder_funcs, !1, !"omap_encoder_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/omap_encoder.c", i32 40, i32 39}
!2 = !{ptr @omap_encoder_helper_funcs, !3, !"omap_encoder_helper_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/omapdrm/omap_encoder.c", i32 116, i32 46}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
