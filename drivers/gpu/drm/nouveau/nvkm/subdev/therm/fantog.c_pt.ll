; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/therm/fantog.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/therm/fantog.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_therm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }
%struct.nvkm_therm = type { ptr, %struct.nvkm_subdev, %struct.nvkm_alarm, %struct.spinlock, ptr, i32, i32, i32, %struct.nvbios_therm_sensor, ptr, %struct.anon.133, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_alarm = type { %struct.list_head, %struct.list_head, i64, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvbios_therm_sensor = type { i16, i16, i16, i16, i8, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold }
%struct.nvbios_therm_threshold = type { i8, i8 }
%struct.anon.133 = type { %struct.spinlock, %struct.nvkm_alarm, [4 x i32] }
%struct.anon.134 = type { ptr, ptr }
%struct.nvkm_fan = type { ptr, ptr, %struct.nvbios_therm_fan, %struct.nvbios_perf_fan, %struct.nvkm_alarm, %struct.spinlock, i32, ptr, ptr, %struct.dcb_gpio_func }
%struct.nvbios_therm_fan = type { i32, i32, i8, i8, i16, i16, i32, [10 x %struct.nvbios_therm_trip_point], i8, i8, i8 }
%struct.nvbios_therm_trip_point = type { i32, i32, i32 }
%struct.nvbios_perf_fan = type { i32 }
%struct.nvkm_fantog = type { %struct.nvkm_fan, %struct.nvkm_alarm, %struct.spinlock, i32, i32, %struct.dcb_gpio_func }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"toggle\00", [25 x i8] zeroinitializer }, align 32
@nvkm_fantog_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&fan->lock\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 107, i32 19 }
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/fantog.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 114, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @nvkm_fantog_create.__key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fantog_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_fantog_create(ptr noundef %therm, ptr nocapture noundef readonly %func) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %therm, align 8
  %pwm_ctrl = getelementptr inbounds %struct.nvkm_therm_func, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pwm_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwm_ctrl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  %line = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 1
  %4 = ptrtoint ptr %line to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %line, align 1
  %conv = zext i8 %5 to i32
  %call = tail call i32 %3(ptr noundef %therm, i32 noundef %conv, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 352) #7
  %fan8 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 9
  %7 = ptrtoint ptr %fan8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %fan8, align 8
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %type = getelementptr inbounds %struct.nvkm_fan, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str, ptr %type, align 4
  %get = getelementptr inbounds %struct.nvkm_fan, ptr %call7.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nvkm_fantog_get, ptr %get, align 8
  %set = getelementptr inbounds %struct.nvkm_fan, ptr %call7.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nvkm_fantog_set, ptr %set, align 4
  %alarm = getelementptr inbounds %struct.nvkm_fantog, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %alarm to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %alarm, ptr %alarm, align 8
  %prev.i.i = getelementptr inbounds %struct.nvkm_fantog, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %alarm, ptr %prev.i.i, align 4
  %func1.i = getelementptr inbounds %struct.nvkm_fantog, ptr %call7.i.i, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @nvkm_fantog_alarm, ptr %func1.i, align 8
  %period_us = getelementptr inbounds %struct.nvkm_fantog, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %period_us to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 100000, ptr %period_us, align 4
  %percent = getelementptr inbounds %struct.nvkm_fantog, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %percent to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 100, ptr %percent, align 8
  %func15 = getelementptr inbounds %struct.nvkm_fantog, ptr %call7.i.i, i32 0, i32 5
  %16 = call ptr @memcpy(ptr %func15, ptr %func, i32 5)
  %lock = getelementptr inbounds %struct.nvkm_fantog, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @nvkm_fantog_create.__key, i16 noundef signext 3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call, %if.then.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_fantog_get(ptr nocapture noundef readonly %therm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fan1 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 9
  %0 = ptrtoint ptr %fan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fan1, align 8
  %percent = getelementptr inbounds %struct.nvkm_fantog, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %percent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %percent, align 8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fantog_set(ptr noundef %therm, i32 noundef %percent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fan1 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 9
  %0 = ptrtoint ptr %fan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fan1, align 8
  %2 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %therm, align 8
  %pwm_ctrl = getelementptr inbounds %struct.nvkm_therm_func, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %pwm_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwm_ctrl, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %line = getelementptr inbounds %struct.nvkm_fantog, ptr %1, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %line to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %line, align 1
  %conv = zext i8 %7 to i32
  %call = tail call i32 %5(ptr noundef %therm, i32 noundef %conv, i1 noundef zeroext false) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @nvkm_fantog_update(ptr noundef %1, i32 noundef %percent)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_fantog_alarm(ptr noundef %alarm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %alarm, i32 -256
  tail call fastcc void @nvkm_fantog_update(ptr noundef %add.ptr, i32 noundef -1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvkm_fantog_update(ptr noundef %fan, i32 noundef %percent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fan, align 8
  %device1 = getelementptr inbounds %struct.nvkm_therm, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %timer = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timer, align 8
  %gpio2 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %gpio2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpio2, align 8
  %lock = getelementptr inbounds %struct.nvkm_fantog, ptr %fan, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %percent)
  %cmp7 = icmp slt i32 %percent, 0
  br i1 %cmp7, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %percent9 = getelementptr inbounds %struct.nvkm_fantog, ptr %fan, i32 0, i32 4
  %8 = ptrtoint ptr %percent9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %percent9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %percent.addr.0 = phi i32 [ %9, %if.then ], [ %percent, %entry.if.end_crit_edge ]
  %percent10 = getelementptr inbounds %struct.nvkm_fantog, ptr %fan, i32 0, i32 4
  %10 = ptrtoint ptr %percent10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %percent.addr.0, ptr %percent10, align 8
  %call11 = tail call i32 @nvkm_gpio_get(ptr noundef %7, i32 noundef 0, i8 noundef zeroext 9, i8 noundef zeroext -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %call12 = tail call i32 @nvkm_gpio_set(ptr noundef %7, i32 noundef 0, i8 noundef zeroext 9, i8 noundef zeroext -1, i32 noundef %lnot.ext) #4
  %mul = select i1 %tobool.not, i32 100, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %percent.addr.0, i32 %mul)
  %cmp13.not = icmp eq i32 %percent.addr.0, %mul
  br i1 %cmp13.not, label %if.end.if.end25_crit_edge, label %if.then15

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %period_us = getelementptr inbounds %struct.nvkm_fantog, ptr %fan, i32 0, i32 3
  %11 = ptrtoint ptr %period_us to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %period_us, align 4
  %mul16 = mul i32 %12, %percent.addr.0
  %div = udiv i32 %mul16, 100
  %sub = sub i32 %12, %div
  %spec.select = select i1 %tobool.not, i32 %div, i32 %sub
  %mul23 = mul i32 %spec.select, 1000
  %alarm = getelementptr inbounds %struct.nvkm_fantog, ptr %fan, i32 0, i32 1
  tail call void @nvkm_timer_alarm(ptr noundef %5, i32 noundef %mul23, ptr noundef %alarm) #4
  br label %if.end25

if.end25:                                         ; preds = %if.then15, %if.end.if.end25_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_get(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_set(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_alarm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/fantog.c", i32 107, i32 19}
!2 = !{ptr @nvkm_fantog_create.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/fantog.c", i32 114, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
