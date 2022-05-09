; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/therm/fanpwm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/therm/fanpwm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvbios_therm_fan = type { i32, i32, i8, i8, i16, i16, i32, [10 x %struct.nvbios_therm_trip_point], i8, i8, i8 }
%struct.nvbios_therm_trip_point = type { i32, i32, i32 }
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
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }
%struct.nvkm_therm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_fan = type { ptr, ptr, %struct.nvbios_therm_fan, %struct.nvbios_perf_fan, %struct.nvkm_alarm, %struct.spinlock, i32, ptr, ptr, %struct.dcb_gpio_func }
%struct.nvbios_perf_fan = type { i32 }
%struct.nvkm_fanpwm = type { %struct.nvkm_fan, %struct.dcb_gpio_func }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NvFanPWM\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PWM\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 95, i32 36 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/fanpwm.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 105, i32 19 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_fanpwm_create(ptr noundef %therm, ptr nocapture noundef readonly %func) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.nvbios_therm_fan, align 4
  %divs = alloca i32, align 4
  %duty = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %bios2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios2, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %info) #5
  %4 = call ptr @memset(ptr %info, i32 0, i32 144)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %divs) #5
  %5 = ptrtoint ptr %divs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %divs, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %duty) #5
  %6 = ptrtoint ptr %duty to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %duty, align 4, !annotation !13
  %call = call i32 @nvbios_fan_parse(ptr noundef %3, ptr noundef nonnull %info) #5
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfgopt, align 4
  %param = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 3
  %9 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %param, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool = icmp ne i8 %10, 0
  %call3 = call zeroext i1 @nvkm_boolopt(ptr noundef %8, ptr noundef nonnull @.str, i1 noundef zeroext %tobool) #5
  br i1 %call3, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %11 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %therm, align 8
  %pwm_ctrl = getelementptr inbounds %struct.nvkm_therm_func, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %pwm_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pwm_ctrl, align 4
  %tobool5.not = icmp eq ptr %14, null
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  br i1 %cmp, label %lor.lhs.false6.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false6
  %pwm_get = getelementptr inbounds %struct.nvkm_therm_func, ptr %12, i32 0, i32 4
  %17 = ptrtoint ptr %pwm_get to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pwm_get, align 4
  %line = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 1
  %19 = ptrtoint ptr %line to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %line, align 1
  %conv = zext i8 %20 to i32
  %call9 = call i32 %18(ptr noundef %therm, i32 noundef %conv, ptr noundef nonnull %divs, ptr noundef nonnull %duty) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call9)
  %cmp10 = icmp eq i32 %call9, -19
  br i1 %cmp10, label %lor.lhs.false7.cleanup_crit_edge, label %if.end

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 264) #8
  %fan13 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 9
  %22 = ptrtoint ptr %fan13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %fan13, align 8
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %type18 = getelementptr inbounds %struct.nvkm_fan, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.1, ptr %type18, align 4
  %get = getelementptr inbounds %struct.nvkm_fan, ptr %call7.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @nvkm_fanpwm_get, ptr %get, align 8
  %set = getelementptr inbounds %struct.nvkm_fan, ptr %call7.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @nvkm_fanpwm_set, ptr %set, align 4
  %func21 = getelementptr inbounds %struct.nvkm_fanpwm, ptr %call7.i.i, i32 0, i32 1
  %26 = call ptr @memcpy(ptr %func21, ptr %func, i32 5)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -19, %lor.lhs.false7.cleanup_crit_edge ], [ -19, %lor.lhs.false6.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %duty) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %divs) #5
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %info) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_fan_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fanpwm_get(ptr noundef %therm) #0 align 64 {
entry:
  %divs = alloca i32, align 4
  %duty = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fan1 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 9
  %0 = ptrtoint ptr %fan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fan1, align 8
  %device2 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %gpio3 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %gpio3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio3, align 8
  %card_type4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %card_type4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %card_type4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %divs) #5
  %8 = ptrtoint ptr %divs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %divs, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %duty) #5
  %9 = ptrtoint ptr %duty to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %duty, align 4, !annotation !13
  %10 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %therm, align 8
  %pwm_get = getelementptr inbounds %struct.nvkm_therm_func, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %pwm_get to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pwm_get, align 4
  %func5 = getelementptr inbounds %struct.nvkm_fanpwm, ptr %1, i32 0, i32 1
  %line = getelementptr inbounds %struct.nvkm_fanpwm, ptr %1, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %line to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %line, align 1
  %conv = zext i8 %15 to i32
  %call = call i32 %13(ptr noundef %therm, i32 noundef %conv, ptr noundef nonnull %divs, ptr noundef nonnull %duty) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %16 = ptrtoint ptr %divs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %divs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %land.lhs.true.if.end15_crit_edge, label %if.then

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then:                                          ; preds = %land.lhs.true
  %18 = ptrtoint ptr %duty to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %duty, align 4
  %20 = call i32 @llvm.umax.i32(i32 %17, i32 %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %7)
  %cmp9 = icmp slt i32 %7, 65
  br i1 %cmp9, label %if.then.if.then14_crit_edge, label %lor.lhs.false

if.then.if.then14_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.then
  %log = getelementptr inbounds %struct.nvkm_fanpwm, ptr %1, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %log to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %log, align 2
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool13.not = icmp eq i8 %23, 0
  br i1 %tobool13.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %if.then.if.then14_crit_edge
  %sub = sub i32 %20, %19
  %24 = ptrtoint ptr %duty to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %duty, align 4
  br label %if.end

if.end:                                           ; preds = %if.then14, %lor.lhs.false.if.end_crit_edge
  %25 = ptrtoint ptr %duty to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %duty, align 4
  %mul = mul i32 %26, 100
  %div = udiv i32 %mul, %20
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  %27 = ptrtoint ptr %func5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %func5, align 8
  %29 = ptrtoint ptr %line to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %line, align 1
  %call20 = call i32 @nvkm_gpio_get(ptr noundef %5, i32 noundef 0, i8 noundef zeroext %28, i8 noundef zeroext %30) #5
  %mul21 = mul i32 %call20, 100
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end
  %retval.0 = phi i32 [ %div, %if.end ], [ %mul21, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %duty) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %divs) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fanpwm_set(ptr noundef %therm, i32 noundef %percent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fan1 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 9
  %0 = ptrtoint ptr %fan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fan1, align 8
  %device = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %card_type2 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %card_type2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %card_type2, align 8
  %perf = getelementptr inbounds %struct.nvkm_fan, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %perf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %perf, align 8
  %pwm_freq = getelementptr inbounds %struct.nvkm_fan, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %pwm_freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pwm_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %therm, align 8
  %pwm_clock = getelementptr inbounds %struct.nvkm_therm_func, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %pwm_clock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pwm_clock, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %line = getelementptr inbounds %struct.nvkm_fanpwm, ptr %1, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %line to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %line, align 1
  %conv = zext i8 %15 to i32
  %call = tail call i32 %13(ptr noundef %therm, i32 noundef %conv) #5
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %divs.0 = phi i32 [ %call, %if.then5 ], [ 1, %if.then.if.end_crit_edge ]
  %16 = ptrtoint ptr %pwm_freq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pwm_freq, align 4
  %div = udiv i32 %divs.0, %17
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry.if.end12_crit_edge
  %divs.1 = phi i32 [ %div, %if.end ], [ %7, %entry.if.end12_crit_edge ]
  %mul = mul i32 %divs.1, %percent
  %add = add i32 %mul, 99
  %div13 = udiv i32 %add, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %5)
  %cmp = icmp slt i32 %5, 65
  br i1 %cmp, label %if.end12.if.then18_crit_edge, label %lor.lhs.false

if.end12.if.then18_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.end12
  %log = getelementptr inbounds %struct.nvkm_fanpwm, ptr %1, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %log to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %log, align 2
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool17.not = icmp eq i8 %20, 0
  br i1 %tobool17.not, label %lor.lhs.false.if.end19_crit_edge, label %lor.lhs.false.if.then18_crit_edge

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %if.end12.if.then18_crit_edge
  %sub = sub i32 %divs.1, %div13
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false.if.end19_crit_edge
  %duty.0 = phi i32 [ %sub, %if.then18 ], [ %div13, %lor.lhs.false.if.end19_crit_edge ]
  %21 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %therm, align 8
  %pwm_set = getelementptr inbounds %struct.nvkm_therm_func, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %pwm_set to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pwm_set, align 4
  %line22 = getelementptr inbounds %struct.nvkm_fanpwm, ptr %1, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %line22 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %line22, align 1
  %conv23 = zext i8 %26 to i32
  %call24 = tail call i32 %24(ptr noundef %therm, i32 noundef %conv23, i32 noundef %divs.1, i32 noundef %duty.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end19.if.end33_crit_edge

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %therm, align 8
  %pwm_ctrl = getelementptr inbounds %struct.nvkm_therm_func, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %pwm_ctrl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pwm_ctrl, align 4
  %31 = ptrtoint ptr %line22 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %line22, align 1
  %conv31 = zext i8 %32 to i32
  %call32 = tail call i32 %30(ptr noundef %therm, i32 noundef %conv31, i1 noundef zeroext true) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.end19.if.end33_crit_edge
  %ret.0 = phi i32 [ %call32, %if.then27 ], [ %call24, %if.end19.if.end33_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_get(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/fanpwm.c", i32 95, i32 36}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/fanpwm.c", i32 105, i32 19}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
