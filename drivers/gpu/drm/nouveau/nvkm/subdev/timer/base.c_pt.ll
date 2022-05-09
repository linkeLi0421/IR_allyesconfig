; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/timer/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/timer/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_timer_func = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_alarm = type { %struct.list_head, %struct.list_head, i64, ptr }

@nvkm_timer_wait_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 39, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: stalled at %016llx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvkm_timer_wait_test\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/timer/base.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_timer_wait_test._entry_ptr = internal global ptr @nvkm_timer_wait_test._entry, section ".printk_index", align 4
@nvkm_timer = internal constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr @nvkm_timer_dtor, ptr null, ptr null, ptr null, ptr @nvkm_timer_init, ptr @nvkm_timer_fini, ptr @nvkm_timer_intr }, [36 x i8] zeroinitializer }, align 32
@nvkm_timer_new_.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&tmr->lock\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 39, i32 4 }
@___asan_gen_.24 = private unnamed_addr constant [11 x i8] c"nvkm_timer\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 177, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/base.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 196, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @nvkm_timer_wait_test._entry, ptr @nvkm_timer_wait_test._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nvkm_timer, ptr @nvkm_timer_new_.__key, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_timer_wait_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_timer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_timer_new_.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nvkm_timer_wait_test(ptr nocapture noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wait, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read.i = getelementptr inbounds %struct.nvkm_timer_func, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %call.i = tail call i64 %5(ptr noundef %1) #7
  %reads = getelementptr inbounds %struct.nvkm_timer_wait, ptr %wait, i32 0, i32 4
  %6 = ptrtoint ptr %reads to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reads, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.end.thread, label %if.end

if.end:                                           ; preds = %entry
  %time13 = getelementptr inbounds %struct.nvkm_timer_wait, ptr %wait, i32 0, i32 3
  %8 = ptrtoint ptr %time13 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %time13, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %call.i)
  %cmp4 = icmp eq i64 %9, %call.i
  br i1 %cmp4, label %if.then5, label %if.end.if.end18.sink.split_crit_edge

if.end.if.end18.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.sink.split

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %time0 = getelementptr inbounds %struct.nvkm_timer_wait, ptr %wait, i32 0, i32 2
  %10 = ptrtoint ptr %time0 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call.i, ptr %time0, align 8
  %time1 = getelementptr inbounds %struct.nvkm_timer_wait, ptr %wait, i32 0, i32 3
  br label %if.end18.sink.split

if.then5:                                         ; preds = %if.end
  %inc = add i32 %7, 1
  %11 = ptrtoint ptr %reads to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc, ptr %reads, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp7 = icmp eq i32 %7, 16
  br i1 %cmp7, label %do.end, label %if.then5.if.end18_crit_edge

if.then5.if.end18_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_timer, ptr %1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_timer, ptr %1, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef %name, i64 noundef %call.i) #10
  br label %cleanup

if.end18.sink.split:                              ; preds = %if.end.thread, %if.end.if.end18.sink.split_crit_edge
  %time1.sink = phi ptr [ %time1, %if.end.thread ], [ %time13, %if.end.if.end18.sink.split_crit_edge ]
  %16 = ptrtoint ptr %time1.sink to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %call.i, ptr %time1.sink, align 8
  %17 = ptrtoint ptr %reads to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %reads, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.then5.if.end18_crit_edge
  %time1349 = phi ptr [ %time13, %if.then5.if.end18_crit_edge ], [ %time1.sink, %if.end18.sink.split ]
  %18 = ptrtoint ptr %time1349 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %time1349, align 8
  %time020 = getelementptr inbounds %struct.nvkm_timer_wait, ptr %wait, i32 0, i32 2
  %20 = ptrtoint ptr %time020 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %time020, align 8
  %sub = sub i64 %19, %21
  %limit = getelementptr inbounds %struct.nvkm_timer_wait, ptr %wait, i32 0, i32 1
  %22 = ptrtoint ptr %limit to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %limit, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %23)
  %cmp21 = icmp ugt i64 %sub, %23
  %.sub = select i1 %cmp21, i64 -110, i64 %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end
  %retval.0 = phi i64 [ -110, %do.end ], [ %.sub, %if.end18 ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nvkm_timer_read(ptr noundef %tmr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tmr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tmr, align 4
  %read = getelementptr inbounds %struct.nvkm_timer_func, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %call = tail call i64 %3(ptr noundef %tmr) #7
  ret i64 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nvkm_timer_wait_init(ptr nocapture noundef readonly %device, i64 noundef %nsec, ptr nocapture noundef writeonly %wait) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 31
  %0 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer, align 8
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %wait, align 8
  %limit = getelementptr inbounds %struct.nvkm_timer_wait, ptr %wait, i32 0, i32 1
  %3 = ptrtoint ptr %limit to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %nsec, ptr %limit, align 8
  %reads = getelementptr inbounds %struct.nvkm_timer_wait, ptr %wait, i32 0, i32 4
  %4 = ptrtoint ptr %reads to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %reads, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_timer_alarm_trigger(ptr noundef %tmr) local_unnamed_addr #0 align 64 {
entry:
  %exec = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %exec) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %exec, i32 0, i32 1
  %1 = ptrtoint ptr %exec to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %exec, ptr %exec, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %exec, ptr %0, align 4
  %lock = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 3
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %alarms = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 2
  %3 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %alarms, align 4
  %cmp13.not97 = icmp eq ptr %4, %alarms
  br i1 %cmp13.not97, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %alarm.098 = phi ptr [ %atemp.099, %list_add.exit.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %alarm.098 to i32
  call void @__asan_load4_noabort(i32 %5)
  %atemp.099 = load ptr, ptr %alarm.098, align 8
  %timestamp = getelementptr inbounds %struct.nvkm_alarm, ptr %alarm.098, i32 0, i32 2
  %6 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %timestamp, align 8
  %8 = ptrtoint ptr %tmr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tmr, align 4
  %read.i = getelementptr inbounds %struct.nvkm_timer_func, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i, align 4
  %call.i = call i64 %11(ptr noundef %tmr) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %call.i)
  %cmp16 = icmp ugt i64 %7, %call.i
  br i1 %cmp16, label %if.then, label %for.body.if.end25_crit_edge

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then:                                          ; preds = %for.body
  %12 = ptrtoint ptr %tmr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tmr, align 4
  %alarm_init = getelementptr inbounds %struct.nvkm_timer_func, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %alarm_init to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %alarm_init, align 4
  %16 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %timestamp, align 8
  %conv19 = trunc i64 %17 to i32
  call void %15(ptr noundef %tmr, i32 noundef %conv19) #7
  %18 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %timestamp, align 8
  %20 = ptrtoint ptr %tmr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tmr, align 4
  %read.i88 = getelementptr inbounds %struct.nvkm_timer_func, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %read.i88 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read.i88, align 4
  %call.i89 = call i64 %23(ptr noundef %tmr) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %call.i89)
  %cmp22 = icmp ugt i64 %19, %call.i89
  br i1 %cmp22, label %if.then.for.end_crit_edge, label %if.then.if.end25_crit_edge

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end25:                                         ; preds = %if.then.if.end25_crit_edge, %for.body.if.end25_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %alarm.098) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end25.list_del_init.exit_crit_edge

if.end25.list_del_init.exit_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %alarm.098, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %alarm.098 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %alarm.098, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end25.list_del_init.exit_crit_edge
  %30 = ptrtoint ptr %alarm.098 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %alarm.098, ptr %alarm.098, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %alarm.098, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %alarm.098, ptr %prev.i3.i, align 4
  %exec27 = getelementptr inbounds %struct.nvkm_alarm, ptr %alarm.098, i32 0, i32 1
  %32 = ptrtoint ptr %exec to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %exec, align 4
  %call.i.i90 = call zeroext i1 @__list_add_valid(ptr noundef %exec27, ptr noundef nonnull %exec, ptr noundef %33) #7
  br i1 %call.i.i90, label %if.end.i.i91, label %list_del_init.exit.list_add.exit_crit_edge

list_del_init.exit.list_add.exit_crit_edge:       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i91:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %exec27, ptr %prev1.i.i, align 4
  %35 = ptrtoint ptr %exec27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %exec27, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvkm_alarm, ptr %alarm.098, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %exec, ptr %prev3.i.i, align 4
  %37 = ptrtoint ptr %exec to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %exec27, ptr %exec, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i91, %list_del_init.exit.list_add.exit_crit_edge
  %cmp13.not = icmp eq ptr %atemp.099, %alarms
  br i1 %cmp13.not, label %list_add.exit.for.end_crit_edge, label %list_add.exit.for.body_crit_edge

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_add.exit.for.end_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_add.exit.for.end_crit_edge, %if.then.for.end_crit_edge, %entry.for.end_crit_edge
  %38 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %alarms, align 4
  %cmp.i.not = icmp eq ptr %39, %alarms
  br i1 %cmp.i.not, label %if.then35, label %for.end.if.end37_crit_edge

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then35:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %tmr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tmr, align 4
  %alarm_fini = getelementptr inbounds %struct.nvkm_timer_func, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %alarm_fini to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %alarm_fini, align 4
  call void %43(ptr noundef %tmr) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %for.end.if.end37_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  %44 = ptrtoint ptr %exec to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %exec, align 4
  %cmp50.not100 = icmp eq ptr %45, %exec
  br i1 %cmp50.not100, label %if.end37.for.end62_crit_edge, label %if.end37.for.body53_crit_edge

if.end37.for.body53_crit_edge:                    ; preds = %if.end37
  br label %for.body53

if.end37.for.end62_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end62

for.body53:                                       ; preds = %list_del.exit.for.body53_crit_edge, %if.end37.for.body53_crit_edge
  %.pn.in101 = phi ptr [ %.pn, %list_del.exit.for.body53_crit_edge ], [ %45, %if.end37.for.body53_crit_edge ]
  %alarm.1 = getelementptr i8, ptr %.pn.in101, i32 -8
  %46 = ptrtoint ptr %.pn.in101 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn = load ptr, ptr %.pn.in101, align 8
  %call.i.i92 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in101) #7
  br i1 %call.i.i92, label %if.end.i.i95, label %for.body53.list_del.exit_crit_edge

for.body53.list_del.exit_crit_edge:               ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i95:                                     ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i93 = getelementptr inbounds %struct.list_head, ptr %.pn.in101, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i93 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i93, align 4
  %49 = ptrtoint ptr %.pn.in101 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %.pn.in101, align 4
  %prev1.i.i.i94 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i94, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i95, %for.body53.list_del.exit_crit_edge
  %53 = ptrtoint ptr %.pn.in101 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in101, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in101, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %func55 = getelementptr i8, ptr %.pn.in101, i32 16
  %55 = ptrtoint ptr %func55 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %func55, align 8
  call void %56(ptr noundef %alarm.1) #7
  %cmp50.not = icmp eq ptr %.pn, %exec
  br i1 %cmp50.not, label %list_del.exit.for.end62_crit_edge, label %list_del.exit.for.body53_crit_edge

list_del.exit.for.body53_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body53

list_del.exit.for.end62_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end62

for.end62:                                        ; preds = %list_del.exit.for.end62_crit_edge, %if.end37.for.end62_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %exec) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_timer_alarm(ptr noundef %tmr, i32 noundef %nsec, ptr noundef %alarm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %alarm) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %alarm, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %alarm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alarm, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %alarm to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %alarm, ptr %alarm, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %alarm, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %alarm, ptr %prev.i3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsec)
  %tobool.not = icmp eq i32 %nsec, 0
  br i1 %tobool.not, label %list_del_init.exit.if.end65_crit_edge, label %if.then

list_del_init.exit.if.end65_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then:                                          ; preds = %list_del_init.exit
  %8 = ptrtoint ptr %tmr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tmr, align 4
  %read.i = getelementptr inbounds %struct.nvkm_timer_func, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i, align 4
  %call.i = tail call i64 %11(ptr noundef %tmr) #7
  %conv6 = zext i32 %nsec to i64
  %add = add i64 %call.i, %conv6
  %timestamp = getelementptr inbounds %struct.nvkm_alarm, ptr %alarm, i32 0, i32 2
  %12 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %add, ptr %timestamp, align 8
  %alarms = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then
  %list.0.in = phi ptr [ %alarms, %if.then ], [ %list.0, %for.body.for.cond_crit_edge ]
  %13 = ptrtoint ptr %list.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %list.0 = load ptr, ptr %list.0.in, align 4
  %cmp10.not = icmp eq ptr %list.0, %alarms
  br i1 %cmp10.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %timestamp12 = getelementptr inbounds %struct.nvkm_alarm, ptr %list.0, i32 0, i32 2
  %14 = ptrtoint ptr %timestamp12 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %timestamp12, align 8
  %cmp14 = icmp ugt i64 %15, %add
  br i1 %cmp14, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %list.0.lcssa = phi ptr [ %list.0, %for.body.for.end_crit_edge ], [ %alarms, %for.cond.for.end_crit_edge ]
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list.0.lcssa, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %call.i.i87 = tail call zeroext i1 @__list_add_valid(ptr noundef %alarm, ptr noundef %17, ptr noundef %list.0.lcssa) #7
  br i1 %call.i.i87, label %if.end.i.i88, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i88:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %alarm, ptr %prev.i, align 4
  %19 = ptrtoint ptr %alarm to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list.0.lcssa, ptr %alarm, align 4
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev.i3.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %alarm, ptr %17, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i88, %for.end.list_add_tail.exit_crit_edge
  %22 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %alarms, align 4
  %cmp29 = icmp eq ptr %23, %alarm
  br i1 %cmp29, label %if.then31, label %list_add_tail.exit.if.end65_crit_edge

list_add_tail.exit.if.end65_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then31:                                        ; preds = %list_add_tail.exit
  %24 = ptrtoint ptr %tmr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tmr, align 4
  %alarm_init = getelementptr inbounds %struct.nvkm_timer_func, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %alarm_init to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %alarm_init, align 4
  %28 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %timestamp, align 8
  %conv33 = trunc i64 %29 to i32
  tail call void %27(ptr noundef %tmr, i32 noundef %conv33) #7
  %30 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %timestamp, align 8
  %32 = ptrtoint ptr %tmr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tmr, align 4
  %read.i89 = getelementptr inbounds %struct.nvkm_timer_func, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %read.i89 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read.i89, align 4
  %call.i90 = tail call i64 %35(ptr noundef %tmr) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %call.i90)
  %cmp36.not = icmp ugt i64 %31, %call.i90
  br i1 %cmp36.not, label %if.then31.if.end65_crit_edge, label %do.end50, !prof !22

if.then31.if.end65_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

do.end50:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 138, i32 noundef 9, ptr noundef null) #7
  br label %if.end65

if.end65:                                         ; preds = %do.end50, %if.then31.if.end65_crit_edge, %list_add_tail.exit.if.end65_crit_edge, %list_del_init.exit.if.end65_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_timer_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %ptmr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 108) #11
  %1 = ptrtoint ptr %ptmr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %ptmr, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %subdev = getelementptr inbounds %struct.nvkm_timer, ptr %call7.i.i, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_timer, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev) #7
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func, ptr %call7.i.i, align 8
  %alarms = getelementptr inbounds %struct.nvkm_timer, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %alarms to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %alarms, ptr %alarms, align 8
  %prev.i = getelementptr inbounds %struct.nvkm_timer, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %alarms, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.nvkm_timer, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @nvkm_timer_new_.__key, i16 noundef signext 3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @nvkm_timer_dtor(ptr noundef readnone %subdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_timer_init(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %add.ptr) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %time = getelementptr inbounds %struct.nvkm_timer_func, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %time, align 4
  %call = tail call i64 @ktime_get() #7
  tail call void %7(ptr noundef %add.ptr, i64 noundef %call) #7
  tail call void @nvkm_timer_alarm_trigger(ptr noundef %add.ptr)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_timer_fini(ptr noundef %subdev, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %alarm_fini = getelementptr inbounds %struct.nvkm_timer_func, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %alarm_fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alarm_fini, align 4
  tail call void %3(ptr noundef %add.ptr) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_timer_intr(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %intr = getelementptr inbounds %struct.nvkm_timer_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr, align 4
  tail call void %3(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/base.c", i32 39, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_timer_wait_test._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_timer_wait_test._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @nvkm_timer_new_.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/base.c", i32 196, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nvkm_timer, !12, !"nvkm_timer", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/base.c", i32 177, i32 1}
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
