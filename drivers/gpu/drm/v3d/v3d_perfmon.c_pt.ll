; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/v3d/v3d_perfmon.c_pt.bc'
source_filename = "../drivers/gpu/drm/v3d/v3d_perfmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v3d_perfmon = type { %struct.refcount_struct, %struct.mutex, i8, [32 x i8], [0 x i64] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v3d_dev = type { %struct.drm_device, i32, i8, ptr, [3 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, %struct.drm_mm, %struct.spinlock, %struct.work_struct, ptr, ptr, ptr, ptr, [5 x %struct.v3d_queue_state], %struct.spinlock, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.anon.87 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.85 = type { i32, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v3d_queue_state = type { %struct.drm_gpu_scheduler, i64, i64 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.anon.87 = type { i32, i32 }
%struct.v3d_file_priv = type { ptr, %struct.anon.90, [5 x %struct.drm_sched_entity] }
%struct.anon.90 = type { %struct.idr, %struct.mutex }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_v3d_perfmon_create = type { i32, i32, [32 x i8] }
%struct.drm_v3d_perfmon_get_values = type { i32, i32, i64 }

@v3d_perfmon_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/v3d/v3d_perfmon.c\00", [62 x i8] zeroinitializer }, align 32
@v3d_perfmon_open_file.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&v3d_priv->perfmon.lock\00", [40 x i8] zeroinitializer }, align 32
@v3d_perfmon_create_ioctl.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&perfmon->lock\00", [17 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 30, i32 6 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 96, i32 2 }
@___asan_gen_.20 = private constant [37 x i8] c"../drivers/gpu/drm/v3d/v3d_perfmon.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 148, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 378, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 230, i32 6 }
@___asan_gen_.32 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 214, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 174, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @v3d_perfmon_open_file.__key, ptr @.str.1, ptr @v3d_perfmon_create_ioctl.__key, ptr @.str.2, ptr @xa_init_flags.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_perfmon_open_file.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_perfmon_create_ioctl.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v3d_perfmon_get(ptr noundef %perfmon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %perfmon, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %perfmon, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr nonnull %perfmon, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %perfmon, ptr nonnull %perfmon, i32 1, ptr nonnull elementtype(i32) %perfmon) #5, !srcloc !28
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !29

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !30

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %perfmon, i32 noundef %.sink.i.i.i) #5
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v3d_perfmon_put(ptr noundef %perfmon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %perfmon, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %perfmon, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @llvm.prefetch.p0(ptr nonnull %perfmon, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %perfmon, ptr nonnull %perfmon, i32 1, ptr nonnull elementtype(i32) %perfmon) #5, !srcloc !32
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !30

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %perfmon, i32 noundef 3) #5
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @kfree(ptr noundef nonnull %perfmon) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v3d_perfmon_start(ptr nocapture noundef %v3d, ptr noundef %perfmon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ncounters1 = getelementptr inbounds %struct.v3d_perfmon, ptr %perfmon, i32 0, i32 2
  %0 = ptrtoint ptr %ncounters1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ncounters1, align 8
  %tobool.not = icmp eq ptr %perfmon, null
  br i1 %tobool.not, label %entry.land.rhs_crit_edge, label %lor.rhs

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

lor.rhs:                                          ; preds = %entry
  %active_perfmon = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 24
  %2 = ptrtoint ptr %active_perfmon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_perfmon, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end40, label %lor.rhs.land.rhs_crit_edge

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

land.rhs:                                         ; preds = %lor.rhs.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b291 = load i1, ptr @v3d_perfmon_start.__already_done, align 1
  br i1 %.b291, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !30

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @v3d_perfmon_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 30, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end40:                                         ; preds = %lor.rhs
  %conv = zext i8 %1 to i32
  %sub41 = sub nsw i32 32, %conv
  %shr = lshr i32 -1, %sub41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp305.not = icmp eq i8 %1, 0
  br i1 %cmp305.not, label %if.end40.do.body227_crit_edge, label %for.body.lr.ph

if.end40.do.body227_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body227

for.body.lr.ph:                                   ; preds = %if.end40
  %core_regs = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end210.for.body_crit_edge, %for.body.lr.ph
  %i.0306 = phi i32 [ 0, %for.body.lr.ph ], [ %inc226, %if.end210.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.v3d_perfmon, ptr %perfmon, i32 0, i32 3, i32 %i.0306
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv44 = zext i8 %5 to i32
  %and46 = and i32 %conv44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %cmp47.not = icmp eq i32 %and46, 0
  br i1 %cmp47.not, label %for.body.if.end70_crit_edge, label %do.end64, !prof !30

for.body.if.end70_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

do.end64:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 37, i32 noundef 9, ptr noundef null) #5
  br label %if.end70

if.end70:                                         ; preds = %do.end64, %for.body.if.end70_crit_edge
  %and79 = and i32 %conv44, 127
  %inc = or i32 %i.0306, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp82 = icmp ult i32 %inc, %conv
  br i1 %cmp82, label %cond.end, label %if.end70.if.end113_crit_edge

if.end70.if.end113_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

cond.end:                                         ; preds = %if.end70
  %arrayidx85 = getelementptr %struct.v3d_perfmon, ptr %perfmon, i32 0, i32 3, i32 %inc
  %6 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %7 to i32
  %shl87 = shl nuw nsw i32 %conv86, 8
  %8 = and i32 %conv86, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp90.not = icmp eq i32 %8, 0
  br i1 %cmp90.not, label %cond.end.if.end113_crit_edge, label %do.end107, !prof !30

cond.end.if.end113_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

do.end107:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef null) #5
  br label %if.end113

if.end113:                                        ; preds = %do.end107, %cond.end.if.end113_crit_edge, %if.end70.if.end113_crit_edge
  %shl87296 = phi i32 [ %shl87, %do.end107 ], [ %shl87, %cond.end.if.end113_crit_edge ], [ 0, %if.end70.if.end113_crit_edge ]
  %and122 = and i32 %shl87296, 32512
  %or = or i32 %and122, %and79
  %inc123 = or i32 %i.0306, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc123, i32 %conv)
  %cmp126 = icmp ult i32 %inc123, %conv
  br i1 %cmp126, label %cond.end133, label %if.end113.if.end161_crit_edge

if.end113.if.end161_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end161

cond.end133:                                      ; preds = %if.end113
  %arrayidx130 = getelementptr %struct.v3d_perfmon, ptr %perfmon, i32 0, i32 3, i32 %inc123
  %9 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx130, align 1
  %conv131 = zext i8 %10 to i32
  %shl135 = shl nuw nsw i32 %conv131, 16
  %11 = and i32 %conv131, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp138.not = icmp eq i32 %11, 0
  br i1 %cmp138.not, label %cond.end133.if.end161_crit_edge, label %do.end155, !prof !30

cond.end133.if.end161_crit_edge:                  ; preds = %cond.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end161

do.end155:                                        ; preds = %cond.end133
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef null) #5
  br label %if.end161

if.end161:                                        ; preds = %do.end155, %cond.end133.if.end161_crit_edge, %if.end113.if.end161_crit_edge
  %shl135300 = phi i32 [ %shl135, %do.end155 ], [ %shl135, %cond.end133.if.end161_crit_edge ], [ 0, %if.end113.if.end161_crit_edge ]
  %and170 = and i32 %shl135300, 8323072
  %or171 = or i32 %or, %and170
  %inc172 = or i32 %i.0306, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %inc172, i32 %conv)
  %cmp175 = icmp ult i32 %inc172, %conv
  br i1 %cmp175, label %cond.end182, label %if.end161.if.end210_crit_edge

if.end161.if.end210_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end210

cond.end182:                                      ; preds = %if.end161
  %arrayidx179 = getelementptr %struct.v3d_perfmon, ptr %perfmon, i32 0, i32 3, i32 %inc172
  %12 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx179, align 1
  %conv180 = zext i8 %13 to i32
  %shl184 = shl nuw i32 %conv180, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl184)
  %cmp187.not = icmp sgt i32 %shl184, -1
  br i1 %cmp187.not, label %cond.end182.if.end210_crit_edge, label %do.end204, !prof !30

cond.end182.if.end210_crit_edge:                  ; preds = %cond.end182
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end210

do.end204:                                        ; preds = %cond.end182
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 9, ptr noundef null) #5
  br label %if.end210

if.end210:                                        ; preds = %do.end204, %cond.end182.if.end210_crit_edge, %if.end161.if.end210_crit_edge
  %shl184304 = phi i32 [ %shl184, %do.end204 ], [ %shl184, %cond.end182.if.end210_crit_edge ], [ 0, %if.end161.if.end210_crit_edge ]
  %and219 = and i32 %shl184304, 2130706432
  %or220 = or i32 %or171, %and219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %or220)
  %15 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core_regs, align 8
  %17 = add nuw nsw i32 %i.0306, 1632
  %add.ptr = getelementptr i8, ptr %16, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #5, !srcloc !35
  %inc226 = add nuw nsw i32 %i.0306, 4
  %cmp = icmp ult i32 %inc226, %conv
  br i1 %cmp, label %if.end210.for.body_crit_edge, label %if.end210.do.body227_crit_edge

if.end210.do.body227_crit_edge:                   ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body227

if.end210.for.body_crit_edge:                     ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body227:                                       ; preds = %if.end210.do.body227_crit_edge, %if.end40.do.body227_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %core_regs230 = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 4
  %19 = ptrtoint ptr %core_regs230 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core_regs230, align 8
  %add.ptr232 = getelementptr i8, ptr %20, i32 1620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr232, i32 %18) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %core_regs230 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %core_regs230, align 8
  %add.ptr238 = getelementptr i8, ptr %22, i32 1624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr238, i32 %18) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %core_regs230 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %core_regs230, align 8
  %add.ptr244 = getelementptr i8, ptr %24, i32 1616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr244, i32 %18) #5, !srcloc !35
  %25 = ptrtoint ptr %active_perfmon to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %perfmon, ptr %active_perfmon, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body227, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v3d_perfmon_stop(ptr nocapture noundef %v3d, ptr noundef %perfmon, i1 noundef zeroext %capture) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %perfmon, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %active_perfmon = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 24
  %0 = ptrtoint ptr %active_perfmon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active_perfmon, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.v3d_perfmon, ptr %perfmon, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %2 = ptrtoint ptr %active_perfmon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_perfmon, align 4
  %cmp.not = icmp eq ptr %3, %perfmon
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  br i1 %capture, label %for.cond.preheader, label %if.end5.do.body_crit_edge

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.cond.preheader:                               ; preds = %if.end5
  %ncounters = getelementptr inbounds %struct.v3d_perfmon, ptr %perfmon, i32 0, i32 2
  %4 = ptrtoint ptr %ncounters to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ncounters, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp834.not = icmp eq i8 %5, 0
  br i1 %cmp834.not, label %for.cond.preheader.do.body_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %core_regs = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core_regs, align 8
  %mul = shl i32 %i.035, 2
  %add = add nuw nsw i32 %mul, 1664
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !39
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  %conv11 = zext i32 %9 to i64
  %arrayidx12 = getelementptr %struct.v3d_perfmon, ptr %perfmon, i32 0, i32 4, i32 %i.035
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx12, align 8
  %add13 = add i64 %11, %conv11
  store i64 %add13, ptr %arrayidx12, align 8
  %inc = add nuw nsw i32 %i.035, 1
  %12 = ptrtoint ptr %ncounters to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ncounters, align 8
  %conv = zext i8 %13 to i32
  %cmp8 = icmp ult i32 %inc, %conv
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge, %if.end5.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %core_regs15 = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 4
  %14 = ptrtoint ptr %core_regs15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core_regs15, align 8
  %add.ptr17 = getelementptr i8, ptr %15, i32 1616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 0) #5, !srcloc !35
  %16 = ptrtoint ptr %active_perfmon to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %active_perfmon, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body, %if.end.cleanup.sink.split_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @v3d_perfmon_find(ptr noundef %v3d_priv, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %perfmon1 = getelementptr inbounds %struct.v3d_file_priv, ptr %v3d_priv, i32 0, i32 1
  %lock = getelementptr inbounds %struct.v3d_file_priv, ptr %v3d_priv, i32 0, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %call = tail call ptr @idr_find(ptr noundef %perfmon1, i32 noundef %id) #5
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %entry.v3d_perfmon_get.exit_crit_edge, label %if.then.i

entry.v3d_perfmon_get.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %v3d_perfmon_get.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #5, !srcloc !28
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !29

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.v3d_perfmon_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !30

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.v3d_perfmon_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v3d_perfmon_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef %.sink.i.i.i.i) #5
  br label %v3d_perfmon_get.exit

v3d_perfmon_get.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.v3d_perfmon_get.exit_crit_edge, %entry.v3d_perfmon_get.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v3d_perfmon_open_file(ptr noundef %v3d_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %perfmon = getelementptr inbounds %struct.v3d_file_priv, ptr %v3d_priv, i32 0, i32 1
  %lock = getelementptr inbounds %struct.v3d_file_priv, ptr %v3d_priv, i32 0, i32 1, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @v3d_perfmon_open_file.__key) #5
  tail call void @__raw_spin_lock_init(ptr noundef %perfmon, ptr noundef nonnull @.str.3, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #5
  %xa_flags.i.i.i = getelementptr inbounds %struct.v3d_file_priv, ptr %v3d_priv, i32 0, i32 1, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.v3d_file_priv, ptr %v3d_priv, i32 0, i32 1, i32 0, i32 0, i32 2
  %1 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.v3d_file_priv, ptr %v3d_priv, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.v3d_file_priv, ptr %v3d_priv, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %idr_next.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v3d_perfmon_close_file(ptr noundef %v3d_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %perfmon = getelementptr inbounds %struct.v3d_file_priv, ptr %v3d_priv, i32 0, i32 1
  %lock = getelementptr inbounds %struct.v3d_file_priv, ptr %v3d_priv, i32 0, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %call = tail call i32 @idr_for_each(ptr noundef %perfmon, ptr noundef nonnull @v3d_perfmon_idr_del, ptr noundef null) #5
  tail call void @idr_destroy(ptr noundef %perfmon) #5
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v3d_perfmon_idr_del(i32 noundef %id, ptr noundef %elem, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %elem, null
  br i1 %tobool.not.i, label %entry.v3d_perfmon_put.exit_crit_edge, label %land.lhs.true.i

entry.v3d_perfmon_put.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %v3d_perfmon_put.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %elem, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @llvm.prefetch.p0(ptr nonnull %elem, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %elem, ptr nonnull %elem, i32 1, ptr nonnull elementtype(i32) %elem) #5, !srcloc !32
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.v3d_perfmon_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !30

if.end5.i.i.i.i.v3d_perfmon_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v3d_perfmon_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %elem, i32 noundef 3) #5
  br label %v3d_perfmon_put.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @kfree(ptr noundef nonnull %elem) #5
  br label %v3d_perfmon_put.exit

v3d_perfmon_put.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.v3d_perfmon_put.exit_crit_edge, %entry.v3d_perfmon_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v3d_perfmon_create_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr nocapture noundef readonly %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %ncounters = getelementptr inbounds %struct.drm_v3d_perfmon_create, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %ncounters to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ncounters, align 4
  %4 = add i32 %3, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %4)
  %5 = icmp ult i32 %4, -32
  br i1 %5, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %if.end8.i.i, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.069 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.drm_v3d_perfmon_create, ptr %data, i32 0, i32 2, i32 %i.069
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 86, i8 %7)
  %cmp4 = icmp ugt i8 %7, 86
  br i1 %cmp4, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8.i.i:                                      ; preds = %for.cond
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 8) #5
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %10, i32 136) #5
  %retval.0.i = select i1 %9, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #8
  %tobool10.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not, label %if.end8.i.i.cleanup_crit_edge, label %for.cond13.preheader

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond13.preheader:                             ; preds = %if.end8.i.i
  %11 = ptrtoint ptr %ncounters to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ncounters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1570.not = icmp eq i32 %12, 0
  br i1 %cmp1570.not, label %for.cond13.preheader.for.end24_crit_edge, label %for.body17.preheader

for.cond13.preheader.for.end24_crit_edge:         ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end24

for.body17.preheader:                             ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %uglygep = getelementptr i8, ptr %call9.i.i, i32 97
  %uglygep72 = getelementptr i8, ptr %data, i32 8
  %13 = call ptr @memcpy(ptr %uglygep, ptr %uglygep72, i32 %12)
  br label %for.end24

for.end24:                                        ; preds = %for.body17.preheader, %for.cond13.preheader.for.end24_crit_edge
  %conv26 = trunc i32 %12 to i8
  %ncounters27 = getelementptr inbounds %struct.v3d_perfmon, ptr %call9.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %ncounters27 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv26, ptr %ncounters27, align 32
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i, i32 noundef 4) #5
  %15 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1, ptr %call9.i.i, align 128
  %lock = getelementptr inbounds %struct.v3d_perfmon, ptr %call9.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @v3d_perfmon_create_ioctl.__key) #5
  %perfmon28 = getelementptr inbounds %struct.v3d_file_priv, ptr %1, i32 0, i32 1
  %lock29 = getelementptr inbounds %struct.v3d_file_priv, ptr %1, i32 0, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock29, i32 noundef 0) #5
  %call31 = tail call i32 @idr_alloc(ptr noundef %perfmon28, ptr noundef nonnull %call9.i.i, i32 noundef 1, i32 noundef -1, i32 noundef 3264) #5
  tail call void @mutex_unlock(ptr noundef %lock29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp34 = icmp slt i32 %call31, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #5
  br label %cleanup

if.end37:                                         ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call31, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then36, %if.end8.i.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.then36 ], [ 0, %if.end37 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v3d_perfmon_destroy_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %perfmon1 = getelementptr inbounds %struct.v3d_file_priv, ptr %1, i32 0, i32 1
  %lock = getelementptr inbounds %struct.v3d_file_priv, ptr %1, i32 0, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %call = tail call ptr @idr_remove(ptr noundef %perfmon1, i32 noundef %3) #5
  tail call void @mutex_unlock(ptr noundef %lock) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #5
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #5, !srcloc !32
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !30

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #5
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v3d_perfmon_get_values_ioctl(ptr nocapture noundef %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.drm_v3d_perfmon_get_values, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %perfmon1 = getelementptr inbounds %struct.v3d_file_priv, ptr %3, i32 0, i32 1
  %lock = getelementptr inbounds %struct.v3d_file_priv, ptr %3, i32 0, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 8
  %call3 = tail call ptr @idr_find(ptr noundef %perfmon1, i32 noundef %5) #5
  %tobool.not.i = icmp eq ptr %call3, null
  br i1 %tobool.not.i, label %v3d_perfmon_get.exit, label %if.then.i29

if.then.i29:                                      ; preds = %if.end
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call3, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr nonnull %call3, i32 1, i32 3, i32 1) #5
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call3, ptr nonnull %call3, i32 1, ptr nonnull elementtype(i32) %call3) #5, !srcloc !28
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i29.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !29

if.then.i29.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i29
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end7_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !30

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end7_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i29.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i29.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call3, i32 noundef %.sink.i.i.i.i) #5
  br label %if.end7

v3d_perfmon_get.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  tail call void @v3d_perfmon_stop(ptr noundef %dev, ptr noundef nonnull %call3, i1 noundef zeroext true)
  %values_ptr = getelementptr inbounds %struct.drm_v3d_perfmon_get_values, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %values_ptr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %values_ptr, align 8
  %conv10 = trunc i64 %9 to i32
  %10 = inttoptr i32 %conv10 to ptr
  %values = getelementptr inbounds %struct.v3d_perfmon, ptr %call3, i32 0, i32 4
  %ncounters = getelementptr inbounds %struct.v3d_perfmon, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %ncounters to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ncounters, align 8
  %conv11 = zext i8 %12 to i32
  %mul = shl nuw nsw i32 %conv11, 3
  tail call void @__check_object_size(ptr noundef %values, i32 noundef %mul, i1 noundef zeroext true) #5
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #5
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %if.end7.land.lhs.true.i_crit_edge, label %if.end.i.i

if.end7.land.lhs.true.i_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

if.end.i.i:                                       ; preds = %if.end7
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 %mul, i32 -1226833920) #9, !srcloc !42
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.land.lhs.true.i_crit_edge

if.end.i.i.land.lhs.true.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %values, i32 noundef %mul) #5
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %10, ptr noundef %values, i32 noundef %mul) #5
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then2.i.i, %if.end.i.i.land.lhs.true.i_crit_edge, %if.end7.land.lhs.true.i_crit_edge
  %n.addr.0.i = phi i32 [ %mul, %if.end7.land.lhs.true.i_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul, %if.end.i.i.land.lhs.true.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool13.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool13.not, i32 0, i32 -14
  %call.i.i.i.i.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call3, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @llvm.prefetch.p0(ptr nonnull %call3, i32 1, i32 3, i32 1) #5
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call3, ptr nonnull %call3, i32 1, ptr nonnull elementtype(i32) %call3) #5, !srcloc !32
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i33, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i32 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i32, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !30

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call3, i32 noundef 3) #5
  br label %cleanup

if.then.i33:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @kfree(ptr noundef nonnull %call3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i33, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %v3d_perfmon_get.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %v3d_perfmon_get.exit ], [ %spec.select, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %spec.select, %if.then10.i.i.i.i ], [ %spec.select, %if.then.i33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/v3d/v3d_perfmon.c", i32 30, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @v3d_perfmon_open_file.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/v3d/v3d_perfmon.c", i32 96, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @v3d_perfmon_create_ioctl.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/v3d/v3d_perfmon.c", i32 148, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @xa_init_flags.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 2148205028, i64 2148205060, i64 2148205089, i64 2148205123, i64 2148205154, i64 2148205177}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 2148293029}
!32 = !{i64 2148207493, i64 2148207525, i64 2148207554, i64 2148207588, i64 2148207619, i64 2148207642}
!33 = !{i64 2149571747}
!34 = !{i64 2156746731}
!35 = !{i64 6901836}
!36 = !{i64 2156747252}
!37 = !{i64 2156747735}
!38 = !{i64 2156748218}
!39 = !{i64 6902254}
!40 = !{i64 2156749199}
!41 = !{i64 2156749486}
!42 = !{i64 2153924120, i64 2153924145}
