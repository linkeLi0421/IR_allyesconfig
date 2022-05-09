; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/fifo/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.135, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.135 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_fifo_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x ptr] }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.136 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.136 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nvkm_gpuobj = type { %union.anon.3, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.3 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvif_notify_uevent_rep = type {}
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_fifo_chan_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/base.c\00", [48 x i8] zeroinitializer }, align 32
@nvkm_fifo_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&fifo->lock\00", [20 x i8] zeroinitializer }, align 32
@nvkm_fifo_ctor.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&fifo->mutex\00", [19 x i8] zeroinitializer }, align 32
@nvkm_fifo = internal constant { %struct.nvkm_engine_func, [44 x i8] } { %struct.nvkm_engine_func { ptr @nvkm_fifo_dtor, ptr @nvkm_fifo_preinit, ptr @nvkm_fifo_oneinit, ptr @nvkm_fifo_info, ptr @nvkm_fifo_init, ptr @nvkm_fifo_fini, ptr @nvkm_fifo_intr, ptr null, ptr null, %struct.anon { ptr @nvkm_fifo_class_get }, %struct.anon.135 zeroinitializer, ptr null, [0 x %struct.nvkm_sclass] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@nvkm_fifo_uevent_func = internal constant { %struct.nvkm_event_func, [16 x i8] } { %struct.nvkm_event_func { ptr @nvkm_fifo_uevent_ctor, ptr null, ptr @nvkm_fifo_uevent_init, ptr @nvkm_fifo_uevent_fini }, [16 x i8] zeroinitializer }, align 32
@nvkm_fifo_cevent_func = internal constant { %struct.nvkm_event_func, [16 x i8] } { %struct.nvkm_event_func { ptr @nvkm_fifo_cevent_ctor, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@nvkm_fifo_kevent_func = internal constant { %struct.nvkm_event_func, [16 x i8] } { %struct.nvkm_event_func { ptr @nvkm_fifo_kevent_ctor, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@nvkm_fifo_class_ = internal constant { %struct.nvkm_device_oclass, [40 x i8] } { %struct.nvkm_device_oclass { ptr @nvkm_fifo_class_new_, %struct.nvkm_sclass zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@nvkm_fifo_class = internal constant { %struct.nvkm_device_oclass, [40 x i8] } { %struct.nvkm_device_oclass { ptr @nvkm_fifo_class_new, %struct.nvkm_sclass zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 40, i32 6 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 361, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 362, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"nvkm_fifo\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 342, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"nvkm_fifo_uevent_func\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 204, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"nvkm_fifo_cevent_func\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 161, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"nvkm_fifo_kevent_func\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 143, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"nvkm_fifo_class_\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 228, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"nvkm_fifo_class\00", align 1
@___asan_gen_.35 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/base.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 243, i32 1 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @nvkm_fifo_ctor.__key, ptr @.str.1, ptr @nvkm_fifo_ctor.__key.2, ptr @.str.3, ptr @nvkm_fifo, ptr @nvkm_fifo_uevent_func, ptr @nvkm_fifo_cevent_func, ptr @nvkm_fifo_kevent_func, ptr @nvkm_fifo_class_, ptr @nvkm_fifo_class], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fifo_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fifo_ctor.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fifo to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fifo_uevent_func to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fifo_cevent_func to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fifo_kevent_func to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fifo_class_ to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fifo_class to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_fifo_recover_chan(ptr noundef %fifo, i32 noundef %chid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo, align 4
  %recover_chan = getelementptr inbounds %struct.nvkm_fifo_func, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %recover_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recover_chan, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %do.body25, !prof !29

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

do.body25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 5
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %4 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fifo, align 4
  %recover_chan33 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %recover_chan33 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %recover_chan33, align 4
  tail call void %7(ptr noundef %fifo, i32 noundef %chid) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body25, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_fifo_pause(ptr noundef %fifo, ptr noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo, align 4
  %pause = getelementptr inbounds %struct.nvkm_fifo_func, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pause, align 4
  tail call void %3(ptr noundef %fifo, ptr noundef %flags) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_fifo_start(ptr noundef %fifo, ptr noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo, align 4
  %start = getelementptr inbounds %struct.nvkm_fifo_func, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %start, align 4
  tail call void %3(ptr noundef %fifo, ptr noundef %flags) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_fifo_fault(ptr noundef %fifo, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo, align 4
  %fault = getelementptr inbounds %struct.nvkm_fifo_func, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fault, align 4
  tail call void %3(ptr noundef %fifo, ptr noundef %info) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_fifo_chan_put(ptr noundef %fifo, i32 noundef %flags, ptr nocapture noundef %pchan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pchan, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !29

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %pchan to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pchan, align 4
  %lock = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_fifo_chan_inst_locked(ptr noundef %fifo, i64 noundef %inst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1 = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %chan1, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %chan1
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %inst3 = getelementptr i8, ptr %.pn, i32 12
  %1 = ptrtoint ptr %inst3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %inst3, align 4
  %addr = getelementptr inbounds %struct.nvkm_gpuobj, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %addr, align 8
  %cmp4 = icmp eq i64 %4, %inst
  br i1 %cmp4, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then:                                          ; preds = %for.body
  %chan.0.le = getelementptr i8, ptr %.pn, i32 -88
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %13 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan1, align 4
  %call.i.i20 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn, ptr noundef %chan1, ptr noundef %14) #5
  br i1 %call.i.i20, label %if.end.i.i21, label %list_del.exit.cleanup_crit_edge

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i21:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %.pn, ptr %prev1.i.i, align 4
  %16 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %.pn, align 4
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %chan1, ptr %prev.i, align 4
  %18 = ptrtoint ptr %chan1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %.pn, ptr %chan1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i21, %list_del.exit.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %chan.0.le, %list_del.exit.cleanup_crit_edge ], [ %chan.0.le, %if.end.i.i21 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_fifo_chan_inst(ptr noundef %fifo, i64 noundef %inst, ptr nocapture noundef writeonly %rflags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %chan1.i = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %chan1.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %chan1.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %inst3.i = getelementptr i8, ptr %.pn.i, i32 12
  %1 = ptrtoint ptr %inst3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %inst3.i, align 4
  %addr.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %addr.i, align 8
  %cmp4.i = icmp eq i64 %4, %inst
  br i1 %cmp4.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %chan.0.le.i = getelementptr i8, ptr %.pn.i, i32 -88
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %chan1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan1.i, align 4
  %call.i.i20.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.i, ptr noundef %chan1.i, ptr noundef %14) #5
  br i1 %call.i.i20.i, label %if.end.i.i21.i, label %list_del.exit.i.nvkm_fifo_chan_inst_locked.exit_crit_edge

list_del.exit.i.nvkm_fifo_chan_inst_locked.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_fifo_chan_inst_locked.exit

if.end.i.i21.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %.pn.i, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %.pn.i, align 4
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %chan1.i, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %chan1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %.pn.i, ptr %chan1.i, align 4
  br label %nvkm_fifo_chan_inst_locked.exit

nvkm_fifo_chan_inst_locked.exit:                  ; preds = %if.end.i.i21.i, %list_del.exit.i.nvkm_fifo_chan_inst_locked.exit_crit_edge
  %tobool.not = icmp eq ptr %chan.0.le.i, null
  br i1 %tobool.not, label %nvkm_fifo_chan_inst_locked.exit.if.end_crit_edge, label %if.then

nvkm_fifo_chan_inst_locked.exit.if.end_crit_edge: ; preds = %nvkm_fifo_chan_inst_locked.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %nvkm_fifo_chan_inst_locked.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %rflags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call2, ptr %rflags, align 4
  br label %cleanup

if.end:                                           ; preds = %nvkm_fifo_chan_inst_locked.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %chan.0.le.i, %if.then ], [ null, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_fifo_chan_chid(ptr noundef %fifo, i32 noundef %chid, ptr nocapture noundef writeonly %rflags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %chan5 = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %chan5, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp8.not = icmp eq ptr %.pn, %chan5
  br i1 %cmp8.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %chid10 = getelementptr i8, ptr %.pn, i32 8
  %1 = ptrtoint ptr %chid10 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %chid10, align 8
  %conv11 = zext i16 %2 to i32
  %cmp12 = icmp eq i32 %conv11, %chid
  br i1 %cmp12, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then:                                          ; preds = %for.body
  %chan.0.le = getelementptr i8, ptr %.pn, i32 -88
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %11 = ptrtoint ptr %chan5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan5, align 4
  %call.i.i34 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn, ptr noundef %chan5, ptr noundef %12) #5
  br i1 %call.i.i34, label %if.end.i.i35, label %list_del.exit.list_add.exit_crit_edge

list_del.exit.list_add.exit_crit_edge:            ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit

if.end.i.i35:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %.pn, ptr %prev1.i.i, align 4
  %14 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %.pn, align 4
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %chan5, ptr %prev.i, align 4
  %16 = ptrtoint ptr %chan5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %.pn, ptr %chan5, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i35, %list_del.exit.list_add.exit_crit_edge
  %17 = ptrtoint ptr %rflags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call2, ptr %rflags, align 4
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %list_add.exit
  %retval.0 = phi ptr [ %chan.0.le, %list_add.exit ], [ null, %for.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_fifo_kevent(ptr noundef %fifo, i32 noundef %chid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %kevent = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 9
  tail call void @nvkm_event_send(ptr noundef %kevent, i32 noundef 1, i32 noundef %chid, ptr noundef null, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_fifo_cevent(ptr noundef %fifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cevent = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 8
  tail call void @nvkm_event_send(ptr noundef %cevent, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_fifo_uevent(ptr noundef %fifo) local_unnamed_addr #0 align 64 {
entry:
  %rep = alloca %struct.nvif_notify_uevent_rep, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %rep) #5
  %uevent = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 7
  call void @nvkm_event_send(ptr noundef %uevent, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %rep, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %rep) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_fifo_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i32 noundef %nr, ptr noundef %fifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %func, ptr %fifo, align 4
  %chan = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 4
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %chan, ptr %chan, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %chan, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @nvkm_fifo_ctor.__key, i16 noundef signext 3) #5
  %mutex = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @nvkm_fifo_ctor.__key.2) #5
  %nr5 = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 3
  %3 = ptrtoint ptr %nr5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %4)
  %cmp = icmp sgt i32 %4, 4096
  br i1 %cmp, label %do.end15, label %entry.if.end_crit_edge, !prof !29

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 364, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end15, %entry.if.end_crit_edge
  %.nr = phi i32 [ 4096, %do.end15 ], [ %nr, %entry.if.end_crit_edge ]
  %5 = ptrtoint ptr %nr5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.nr, ptr %nr5, align 4
  %mask = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 2
  tail call void @__bitmap_clear(ptr noundef %mask, i32 noundef 0, i32 noundef %.nr) #5
  %engine = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 1
  %call33 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nvkm_fifo, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef %engine) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end
  %uevent_init = getelementptr inbounds %struct.nvkm_fifo_func, ptr %func, i32 0, i32 11
  %6 = ptrtoint ptr %uevent_init to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uevent_init, align 4
  %tobool37.not = icmp eq ptr %7, null
  br i1 %tobool37.not, label %if.end36.if.end43_crit_edge, label %if.then38

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then38:                                        ; preds = %if.end36
  %uevent = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 7
  %call39 = tail call i32 @nvkm_event_init(ptr noundef nonnull @nvkm_fifo_uevent_func, i32 noundef 1, i32 noundef 1, ptr noundef %uevent) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then38.if.end43_crit_edge, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then38.if.end43_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.end43:                                         ; preds = %if.then38.if.end43_crit_edge, %if.end36.if.end43_crit_edge
  %cevent = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 8
  %call44 = tail call i32 @nvkm_event_init(ptr noundef nonnull @nvkm_fifo_cevent_func, i32 noundef 1, i32 noundef 1, ptr noundef %cevent) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %kevent = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 9
  %call48 = tail call i32 @nvkm_event_init(ptr noundef nonnull @nvkm_fifo_kevent_func, i32 noundef 1, i32 noundef %nr, ptr noundef %kevent) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end43.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call48, %if.end47 ], [ %call33, %if.end.cleanup_crit_edge ], [ %call39, %if.then38.cleanup_crit_edge ], [ %call44, %if.end43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_event_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_fifo_dtor(ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr %3(ptr noundef %add.ptr) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data.0 = phi ptr [ %call, %if.then ], [ %add.ptr, %entry.if.end_crit_edge ]
  %kevent = getelementptr i8, ptr %engine, i32 1084
  tail call void @nvkm_event_fini(ptr noundef %kevent) #5
  %cevent = getelementptr i8, ptr %engine, i32 972
  tail call void @nvkm_event_fini(ptr noundef %cevent) #5
  %uevent = getelementptr i8, ptr %engine, i32 860
  tail call void @nvkm_event_fini(ptr noundef %uevent) #5
  %mutex = getelementptr i8, ptr %engine, i32 768
  tail call void @mutex_destroy(ptr noundef %mutex) #5
  ret ptr %data.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_fifo_preinit(ptr nocapture noundef readonly %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  tail call void @nvkm_mc_reset(ptr noundef %1, i32 noundef 32, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_oneinit(ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %oneinit = getelementptr inbounds %struct.nvkm_fifo_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %oneinit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oneinit, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %3(ptr noundef %add.ptr) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_info(ptr noundef %engine, i64 noundef %mthd, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967297, i64 %mthd)
  %cond = icmp eq i64 %mthd, 4294967297
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %nr = getelementptr i8, ptr %engine, i32 712
  %0 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr, align 4
  %conv = sext i32 %1 to i64
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %data, align 8
  br label %cleanup

sw.default:                                       ; preds = %entry
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %info = getelementptr inbounds %struct.nvkm_fifo_func, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %sw.default.cleanup_crit_edge, label %if.then

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %6(ptr noundef %add.ptr, i64 noundef %mthd, ptr noundef %data) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.default.cleanup_crit_edge, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ %call, %if.then ], [ -38, %sw.default.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_init(ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %init = getelementptr inbounds %struct.nvkm_fifo_func, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init, align 4
  tail call void %3(ptr noundef %add.ptr) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_fini(ptr noundef %engine, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %fini = getelementptr inbounds %struct.nvkm_fifo_func, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fini, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %add.ptr) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_fifo_intr(ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %intr = getelementptr inbounds %struct.nvkm_fifo_func, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr, align 4
  tail call void %3(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_class_get(ptr noundef %oclass, i32 noundef %index, ptr nocapture noundef writeonly %class) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %class_get = getelementptr inbounds %struct.nvkm_fifo_func, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %class_get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_get, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.while.cond_crit_edge, label %if.then

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

if.then:                                          ; preds = %entry
  %call = tail call i32 %5(ptr noundef %add.ptr, i32 noundef %index, ptr noundef %oclass) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then.cleanup.sink.split_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry.while.cond_crit_edge
  %c.0 = phi i32 [ %inc, %while.body.while.cond_crit_edge ], [ 0, %entry.while.cond_crit_edge ]
  %arrayidx = getelementptr %struct.nvkm_fifo_func, ptr %3, i32 0, i32 16, i32 %c.0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %inc = add i32 %c.0, 1
  %cmp7 = icmp eq i32 %c.0, %index
  br i1 %cmp7, label %if.then8, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.then8:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %base = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %base9 = getelementptr inbounds %struct.nvkm_fifo_chan_oclass, ptr %7, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %base, ptr %base9, i32 20)
  %engn = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 3
  %9 = ptrtoint ptr %engn to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %engn, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then8, %if.then.cleanup.sink.split_crit_edge
  %nvkm_fifo_class_.sink = phi ptr [ @nvkm_fifo_class, %if.then8 ], [ @nvkm_fifo_class_, %if.then.cleanup.sink.split_crit_edge ]
  %10 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %nvkm_fifo_class_.sink, ptr %class, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.cond.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ %c.0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_class_new_(ptr nocapture noundef readnone %device, ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr noundef %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %class_new = getelementptr inbounds %struct.nvkm_fifo_func, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %class_new to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_new, align 4
  %call = tail call i32 %5(ptr noundef %add.ptr, ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr noundef %pobject) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_class_new(ptr nocapture noundef readnone %device, ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr noundef %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %engn = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 3
  %0 = ptrtoint ptr %engn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engn, align 4
  %engine = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %2 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %engine, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call = tail call i32 %5(ptr noundef %add.ptr, ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr noundef %pobject) #5
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nvkm_fifo_uevent_ctor(ptr nocapture noundef readnone %object, ptr nocapture noundef readnone %data, i32 noundef %size, ptr nocapture noundef writeonly %notify) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp1 = icmp eq i32 %size, 0
  br i1 %cmp1, label %if.then2, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %size3 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 7
  %0 = ptrtoint ptr %size3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %size3, align 4
  %types = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 5
  %1 = ptrtoint ptr %types to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %types, align 4
  %index = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 6
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %index, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %entry.if.end4_crit_edge
  %_ret.0 = phi i32 [ 0, %if.then2 ], [ -38, %entry.if.end4_crit_edge ]
  ret i32 %_ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_fifo_uevent_init(ptr noundef %event, i32 noundef %type, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %event, i32 -864
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %uevent_init = getelementptr inbounds %struct.nvkm_fifo_func, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %uevent_init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uevent_init, align 4
  tail call void %3(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_fifo_uevent_fini(ptr noundef %event, i32 noundef %type, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %event, i32 -864
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %uevent_fini = getelementptr inbounds %struct.nvkm_fifo_func, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %uevent_fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uevent_fini, align 4
  tail call void %3(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nvkm_fifo_cevent_ctor(ptr nocapture noundef readnone %object, ptr nocapture noundef readnone %data, i32 noundef %size, ptr nocapture noundef writeonly %notify) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %size1 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 7
  %0 = ptrtoint ptr %size1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %size1, align 4
  %types = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 5
  %1 = ptrtoint ptr %types to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %types, align 4
  %index = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 6
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %index, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -38, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_fifo_kevent_ctor(ptr nocapture noundef readonly %object, ptr nocapture noundef readnone %data, i32 noundef %size, ptr nocapture noundef writeonly %notify) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %size1 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 7
  %0 = ptrtoint ptr %size1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %size1, align 4
  %types = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 5
  %1 = ptrtoint ptr %types to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %types, align 4
  %chid = getelementptr i8, ptr %object, i32 80
  %2 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %chid, align 8
  %conv = zext i16 %3 to i32
  %index = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 6
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -38, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/base.c", i32 40, i32 6}
!2 = !{ptr @nvkm_fifo_ctor.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/base.c", i32 361, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nvkm_fifo_ctor.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/base.c", i32 362, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nvkm_fifo, !9, !"nvkm_fifo", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/base.c", i32 342, i32 1}
!10 = !{ptr @nvkm_fifo_class_, !11, !"nvkm_fifo_class_", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/base.c", i32 228, i32 1}
!12 = !{ptr @nvkm_fifo_class, !13, !"nvkm_fifo_class", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/base.c", i32 243, i32 1}
!14 = !{ptr @nvkm_fifo_uevent_func, !15, !"nvkm_fifo_uevent_func", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/base.c", i32 204, i32 1}
!16 = !{ptr @nvkm_fifo_cevent_func, !17, !"nvkm_fifo_cevent_func", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/base.c", i32 161, i32 1}
!18 = !{ptr @nvkm_fifo_kevent_func, !19, !"nvkm_fifo_kevent_func", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/base.c", i32 143, i32 1}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 1, i32 2000}
