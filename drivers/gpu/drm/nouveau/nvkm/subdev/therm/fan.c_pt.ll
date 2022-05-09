; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/therm/fan.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/therm/fan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_therm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@nvkm_therm_fan_ctor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 237, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: GPIO_FAN is in input mode\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvkm_therm_fan_ctor\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/therm/fan.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_therm_fan_ctor._entry_ptr = internal global ptr @nvkm_therm_fan_ctor._entry, section ".printk_index", align 4
@nvkm_therm_fan_ctor._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 253, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: FAN control: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@nvkm_therm_fan_ctor._entry_ptr.7 = internal global ptr @nvkm_therm_fan_ctor._entry.5, section ".printk_index", align 4
@nvkm_therm_fan_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&therm->fan->lock\00", [46 x i8] zeroinitializer }, align 32
@nvkm_therm_fan_ctor._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 273, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: parsing the fan table failed\0A\00", [62 x i8] zeroinitializer }, align 32
@nvkm_therm_fan_ctor._entry_ptr.11 = internal global ptr @nvkm_therm_fan_ctor._entry.9, section ".printk_index", align 4
@nvkm_therm_fan_ctor._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 275, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: parsing both fan tables failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvkm_therm_fan_ctor._entry_ptr.15 = internal global ptr @nvkm_therm_fan_ctor._entry.12, section ".printk_index", align 4
@nvkm_fan_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 48, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: FAN target: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvkm_fan_update\00", [16 x i8] zeroinitializer }, align 32
@nvkm_fan_update._entry_ptr = internal global ptr @nvkm_fan_update._entry, section ".printk_index", align 4
@nvkm_fan_update._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 73, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: FAN update: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@nvkm_fan_update._entry_ptr.20 = internal global ptr @nvkm_fan_update._entry.18, section ".printk_index", align 4
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 237, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 253, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 267, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 273, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 275, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 48, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/fan.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 73, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @nvkm_fan_update._entry, ptr @nvkm_fan_update._entry.18, ptr @nvkm_fan_update._entry_ptr, ptr @nvkm_fan_update._entry_ptr.20, ptr @nvkm_therm_fan_ctor._entry, ptr @nvkm_therm_fan_ctor._entry.12, ptr @nvkm_therm_fan_ctor._entry.5, ptr @nvkm_therm_fan_ctor._entry.9, ptr @nvkm_therm_fan_ctor._entry_ptr, ptr @nvkm_therm_fan_ctor._entry_ptr.11, ptr @nvkm_therm_fan_ctor._entry_ptr.15, ptr @nvkm_therm_fan_ctor._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @nvkm_therm_fan_ctor.__key, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_fan_ctor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_fan_ctor._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_fan_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_fan_ctor._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_therm_fan_ctor._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fan_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fan_update._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_fan_get(ptr noundef %therm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fan = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 9
  %0 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fan, align 8
  %get = getelementptr inbounds %struct.nvkm_fan, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get, align 8
  %call = tail call i32 %3(ptr noundef %therm) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_fan_set(ptr nocapture noundef readonly %therm, i1 noundef zeroext %immediate, i32 noundef %percent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fan = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 9
  %0 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fan, align 8
  %call = tail call fastcc i32 @nvkm_fan_update(ptr noundef %1, i1 noundef zeroext %immediate, i32 noundef %percent)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_fan_update(ptr noundef %fan, i1 noundef zeroext %immediate, i32 noundef %target) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fan, align 8
  %device = getelementptr inbounds %struct.nvkm_therm, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %timer = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timer, align 8
  %lock = getelementptr inbounds %struct.nvkm_fan, ptr %fan, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %target)
  %cmp6 = icmp slt i32 %target, 0
  br i1 %cmp6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %percent = getelementptr inbounds %struct.nvkm_fan, ptr %fan, i32 0, i32 6
  %6 = ptrtoint ptr %percent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %percent, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %target.addr.0 = phi i32 [ %7, %if.then ], [ %target, %entry.if.end_crit_edge ]
  %min_duty = getelementptr inbounds %struct.nvkm_fan, ptr %fan, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %min_duty to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %min_duty, align 8
  %conv10 = and i32 %target.addr.0, 255
  %conv11 = zext i8 %9 to i32
  %10 = tail call i32 @llvm.umax.i32(i32 %conv10, i32 %conv11)
  %max_duty = getelementptr inbounds %struct.nvkm_fan, ptr %fan, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %max_duty to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_duty, align 1
  %conv20 = zext i8 %12 to i32
  %13 = tail call i32 @llvm.umin.i32(i32 %10, i32 %conv20)
  %percent29 = getelementptr inbounds %struct.nvkm_fan, ptr %fan, i32 0, i32 6
  %14 = ptrtoint ptr %percent29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %percent29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp30.not = icmp eq i32 %15, %13
  br i1 %cmp30.not, label %if.end.if.end45_crit_edge, label %do.body33

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

do.body33:                                        ; preds = %if.end
  %debug = getelementptr inbounds %struct.nvkm_therm, ptr %1, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp34 = icmp ugt i32 %17, 3
  br i1 %cmp34, label %do.end39, label %do.body33.if.end41_crit_edge

do.body33.if.end41_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_therm, ptr %1, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.16, ptr noundef %name, i32 noundef %13) #9
  br label %if.end41

if.end41:                                         ; preds = %do.end39, %do.body33.if.end41_crit_edge
  %22 = ptrtoint ptr %percent29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %13, ptr %percent29, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end41, %if.end.if.end45_crit_edge
  %get = getelementptr inbounds %struct.nvkm_fan, ptr %fan, i32 0, i32 7
  %23 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get, align 8
  %call46 = tail call i32 %24(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %13)
  %cmp47 = icmp eq i32 %call46, %13
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  br label %cleanup

if.end51:                                         ; preds = %if.end45
  %immediate.not = xor i1 %immediate, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call46)
  %cmp52 = icmp sgt i32 %call46, -1
  %or.cond = select i1 %immediate.not, i1 %cmp52, i1 false
  br i1 %or.cond, label %if.then54, label %if.end51.do.body79_crit_edge

if.end51.do.body79_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body79

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %13)
  %cmp55 = icmp ult i32 %call46, %13
  br i1 %cmp55, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw i32 %call46, 3
  %25 = tail call i32 @llvm.smin.i32(i32 %add, i32 %13)
  br label %do.body79

if.else:                                          ; preds = %if.then54
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %13)
  %cmp65 = icmp ugt i32 %call46, %13
  br i1 %cmp65, label %if.then67, label %if.else.do.body79_crit_edge

if.else.do.body79_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body79

if.then67:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add nsw i32 %call46, -3
  %26 = tail call i32 @llvm.smax.i32(i32 %sub, i32 %13)
  br label %do.body79

do.body79:                                        ; preds = %if.then67, %if.else.do.body79_crit_edge, %if.then57, %if.end51.do.body79_crit_edge
  %duty.0 = phi i32 [ %25, %if.then57 ], [ %26, %if.then67 ], [ %call46, %if.else.do.body79_crit_edge ], [ %13, %if.end51.do.body79_crit_edge ]
  %debug81 = getelementptr inbounds %struct.nvkm_therm, ptr %1, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %debug81 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp82 = icmp ugt i32 %28, 3
  br i1 %cmp82, label %do.end87, label %do.body79.if.end92_crit_edge

do.body79.if.end92_crit_edge:                     ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

do.end87:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device, align 4
  %dev89 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev89, align 8
  %name90 = getelementptr inbounds %struct.nvkm_therm, ptr %1, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.19, ptr noundef %name90, i32 noundef %duty.0) #9
  br label %if.end92

if.end92:                                         ; preds = %do.end87, %do.body79.if.end92_crit_edge
  %set = getelementptr inbounds %struct.nvkm_fan, ptr %fan, i32 0, i32 8
  %33 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set, align 4
  %call95 = tail call i32 %34(ptr noundef %1, i32 noundef %duty.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  br i1 %tobool96.not, label %if.end99, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end99:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %duty.0)
  %cmp101.not = icmp eq i32 %13, %duty.0
  br i1 %cmp101.not, label %if.end99.cleanup_crit_edge, label %if.then103

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then103:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %bump_period105 = getelementptr inbounds %struct.nvkm_fan, ptr %fan, i32 0, i32 2, i32 4
  %35 = ptrtoint ptr %bump_period105 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %bump_period105, align 2
  %slow_down_period107 = getelementptr inbounds %struct.nvkm_fan, ptr %fan, i32 0, i32 2, i32 5
  %37 = ptrtoint ptr %slow_down_period107 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %slow_down_period107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %duty.0, i32 %13)
  %cmp108 = icmp sgt i32 %duty.0, %13
  %spec.select = select i1 %cmp108, i16 %38, i16 %36
  %delay.0 = zext i16 %spec.select to i32
  %mul132 = mul i32 %delay.0, 1000000
  %alarm = getelementptr inbounds %struct.nvkm_fan, ptr %fan, i32 0, i32 4
  tail call void @nvkm_timer_alarm(ptr noundef %5, i32 noundef %mul132, ptr noundef %alarm) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %if.end99.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %if.then49
  %retval.0 = phi i32 [ 0, %if.then49 ], [ 0, %if.then103 ], [ 0, %if.end99.cleanup_crit_edge ], [ %call95, %if.end92.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_fan_sense(ptr noundef %therm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %timer = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 8
  %gpio2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %gpio2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio2, align 8
  %6 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %therm, align 8
  %fan_sense = getelementptr inbounds %struct.nvkm_therm_func, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %fan_sense to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fan_sense, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %9(ptr noundef %therm) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %fan = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 9
  %10 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fan, align 8
  %tach5 = getelementptr inbounds %struct.nvkm_fan, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %tach5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tach5, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp = icmp eq i8 %13, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i64 @nvkm_timer_read(ptr noundef %3) #6
  %14 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fan, align 8
  %tach12 = getelementptr inbounds %struct.nvkm_fan, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %tach12 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tach12, align 8
  %line = getelementptr inbounds %struct.nvkm_fan, ptr %15, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %line to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %line, align 1
  %call16 = tail call i32 @nvkm_gpio_get(ptr noundef %5, i32 noundef 0, i8 noundef zeroext %17, i8 noundef zeroext %19) #6
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end9
  %cycles.0 = phi i32 [ 0, %if.end9 ], [ %cycles.1348, %land.rhs.do.body_crit_edge ]
  %prev.0 = phi i32 [ %call16, %if.end9 ], [ %prev.1349, %land.rhs.do.body_crit_edge ]
  %start.0 = phi i64 [ %call10, %if.end9 ], [ %start.2350, %land.rhs.do.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #6
  %20 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fan, align 8
  %tach18 = getelementptr inbounds %struct.nvkm_fan, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %tach18 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tach18, align 8
  %line22 = getelementptr inbounds %struct.nvkm_fan, ptr %21, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %line22 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %line22, align 1
  %call23 = tail call i32 @nvkm_gpio_get(ptr noundef %5, i32 noundef 0, i8 noundef zeroext %23, i8 noundef zeroext %25) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %prev.0, i32 %call23)
  %cmp24.not = icmp eq i32 %prev.0, %call23
  br i1 %cmp24.not, label %do.body.land.rhs_crit_edge, label %if.then26

do.body.land.rhs_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %start.0)
  %tobool27.not = icmp eq i64 %start.0, 0
  br i1 %tobool27.not, label %if.then28, label %if.then26.do.cond_crit_edge

if.then26.do.cond_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = tail call i64 @nvkm_timer_read(ptr noundef %3) #6
  br label %do.cond

do.cond:                                          ; preds = %if.then28, %if.then26.do.cond_crit_edge
  %start.1 = phi i64 [ %start.0, %if.then26.do.cond_crit_edge ], [ %call29, %if.then28 ]
  %inc = add nuw nsw i32 %cycles.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cycles.0)
  %cmp32 = icmp ult i32 %cycles.0, 4
  br i1 %cmp32, label %do.cond.land.rhs_crit_edge, label %if.then40

do.cond.land.rhs_crit_edge:                       ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

land.rhs:                                         ; preds = %do.cond.land.rhs_crit_edge, %do.body.land.rhs_crit_edge
  %start.2350 = phi i64 [ %start.1, %do.cond.land.rhs_crit_edge ], [ %start.0, %do.body.land.rhs_crit_edge ]
  %prev.1349 = phi i32 [ %call23, %do.cond.land.rhs_crit_edge ], [ %prev.0, %do.body.land.rhs_crit_edge ]
  %cycles.1348 = phi i32 [ %inc, %do.cond.land.rhs_crit_edge ], [ %cycles.0, %do.body.land.rhs_crit_edge ]
  %call34 = tail call i64 @nvkm_timer_read(ptr noundef %3) #6
  %sub = sub i64 %call34, %start.2350
  %cmp35 = icmp ult i64 %sub, 250000000
  br i1 %cmp35, label %land.rhs.do.body_crit_edge, label %do.end

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = tail call i64 @nvkm_timer_read(ptr noundef %3) #6
  br label %cleanup

if.then40:                                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  %call37354 = tail call i64 @nvkm_timer_read(ptr noundef %3) #6
  %sub41 = sub i64 %call37354, %start.1
  %conv42 = trunc i64 %sub41 to i32
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv42, i64 60000000000) #10, !srcloc !42
  %asmresult1.i = extractvalue { i64, i64 } %26, 1
  %extract.t362 = trunc i64 %asmresult1.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %do.end ], [ %extract.t362, %if.then40 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_get(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_fan_user_get(ptr noundef %therm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fan.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 9
  %0 = ptrtoint ptr %fan.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fan.i, align 8
  %get.i = getelementptr inbounds %struct.nvkm_fan, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get.i, align 8
  %call.i = tail call i32 %3(ptr noundef %therm) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_fan_user_set(ptr nocapture noundef readonly %therm, i32 noundef %percent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 5
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fan.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 9
  %2 = ptrtoint ptr %fan.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fan.i, align 8
  %call.i = tail call fastcc i32 @nvkm_fan_update(ptr noundef %3, i1 noundef zeroext true, i32 noundef %percent) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nvkm_therm_fan_init(ptr nocapture noundef readnone %therm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_fan_fini(ptr nocapture noundef readonly %therm, i1 noundef zeroext %suspend) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %suspend, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %timer = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 8
  %fan = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 9
  %4 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fan, align 8
  %alarm = getelementptr inbounds %struct.nvkm_fan, ptr %5, i32 0, i32 4
  tail call void @nvkm_timer_alarm(ptr noundef %3, i32 noundef 0, ptr noundef %alarm) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_alarm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_fan_ctor(ptr noundef %therm) local_unnamed_addr #0 align 64 {
entry:
  %func = alloca %struct.dcb_gpio_func, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %gpio3 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %gpio3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio3, align 8
  %bios4 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %bios4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bios4, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %func) #6
  %6 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 2
  %7 = call ptr @memset(ptr %func, i32 255, i32 5)
  %call = call i32 @nvkm_gpio_find(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 9, i8 noundef zeroext -1, ptr noundef nonnull %func) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.then26_crit_edge

entry.if.then26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

if.then:                                          ; preds = %entry
  %8 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %10)
  %cmp5.not = icmp eq i8 %10, 16
  br i1 %cmp5.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %6, align 1
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %do.body

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

do.body:                                          ; preds = %land.lhs.true
  %debug = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 5
  %14 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp9 = icmp ugt i32 %15, 3
  br i1 %cmp9, label %do.end, label %do.body.if.then26_crit_edge

do.body.if.then26_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef %name) #9
  br label %if.then26

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %call16 = call i32 @nvkm_fanpwm_create(ptr noundef %therm, ptr noundef nonnull %func) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.else.do.body32_crit_edge, label %if.end23

if.else.do.body32_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32

if.end23:                                         ; preds = %if.else
  %call20 = call i32 @nvkm_fantog_create(ptr noundef %therm, ptr noundef nonnull %func) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp24.not = icmp eq i32 %call20, 0
  br i1 %cmp24.not, label %if.end23.do.body32_crit_edge, label %if.end23.if.then26_crit_edge

if.end23.if.then26_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

if.end23.do.body32_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32

if.then26:                                        ; preds = %if.end23.if.then26_crit_edge, %do.end, %do.body.if.then26_crit_edge, %entry.if.then26_crit_edge
  %call27 = call i32 @nvkm_fannil_create(ptr noundef %therm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.do.body32_crit_edge, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then26.do.body32_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32

do.body32:                                        ; preds = %if.then26.do.body32_crit_edge, %if.end23.do.body32_crit_edge, %if.else.do.body32_crit_edge
  %debug34 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %debug34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp35 = icmp ugt i32 %21, 3
  br i1 %cmp35, label %do.end40, label %do.body32.if.end45_crit_edge

do.body32.if.end45_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

do.end40:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device2, align 4
  %dev42 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev42, align 8
  %name43 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 4
  %fan = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 9
  %26 = ptrtoint ptr %fan to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fan, align 8
  %type = getelementptr inbounds %struct.nvkm_fan, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %type, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.6, ptr noundef %name43, ptr noundef %29) #9
  br label %if.end45

if.end45:                                         ; preds = %do.end40, %do.body32.if.end45_crit_edge
  %fan.i = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 9
  %30 = ptrtoint ptr %fan.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fan.i, align 8
  %get.i = getelementptr inbounds %struct.nvkm_fan, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get.i, align 8
  %call.i = call i32 %33(ptr noundef %therm) #6
  %34 = ptrtoint ptr %fan.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fan.i, align 8
  %percent = getelementptr inbounds %struct.nvkm_fan, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %percent to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call.i, ptr %percent, align 4
  %37 = load ptr, ptr %fan.i, align 8
  %tach = getelementptr inbounds %struct.nvkm_fan, ptr %37, i32 0, i32 9
  %call51 = call i32 @nvkm_gpio_find(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 61, i8 noundef zeroext -1, ptr noundef %tach) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end45.if.end57_crit_edge, label %if.then53

if.end45.if.end57_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then53:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %fan.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fan.i, align 8
  %tach55 = getelementptr inbounds %struct.nvkm_fan, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %tach55 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %tach55, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.end45.if.end57_crit_edge
  %41 = ptrtoint ptr %fan.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fan.i, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %therm, ptr %42, align 8
  %44 = load ptr, ptr %fan.i, align 8
  %alarm = getelementptr inbounds %struct.nvkm_fan, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %alarm to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %alarm, ptr %alarm, align 4
  %prev.i.i = getelementptr inbounds %struct.nvkm_fan, ptr %44, i32 0, i32 4, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %alarm, ptr %prev.i.i, align 4
  %func1.i = getelementptr inbounds %struct.nvkm_fan, ptr %44, i32 0, i32 4, i32 3
  %47 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @nvkm_fan_alarm, ptr %func1.i, align 8
  %48 = load ptr, ptr %fan.i, align 8
  %lock = getelementptr inbounds %struct.nvkm_fan, ptr %48, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @nvkm_therm_fan_ctor.__key, i16 noundef signext 3) #6
  %49 = ptrtoint ptr %fan.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fan.i, align 8
  %pwm_freq.i = getelementptr inbounds %struct.nvkm_fan, ptr %50, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %pwm_freq.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %pwm_freq.i, align 4
  %52 = load ptr, ptr %fan.i, align 8
  %min_duty.i = getelementptr inbounds %struct.nvkm_fan, ptr %52, i32 0, i32 2, i32 2
  %53 = ptrtoint ptr %min_duty.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %min_duty.i, align 8
  %54 = load ptr, ptr %fan.i, align 8
  %max_duty.i = getelementptr inbounds %struct.nvkm_fan, ptr %54, i32 0, i32 2, i32 3
  %55 = ptrtoint ptr %max_duty.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 100, ptr %max_duty.i, align 1
  %56 = load ptr, ptr %fan.i, align 8
  %bump_period.i = getelementptr inbounds %struct.nvkm_fan, ptr %56, i32 0, i32 2, i32 4
  %57 = ptrtoint ptr %bump_period.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 500, ptr %bump_period.i, align 2
  %58 = load ptr, ptr %fan.i, align 8
  %slow_down_period.i = getelementptr inbounds %struct.nvkm_fan, ptr %58, i32 0, i32 2, i32 5
  %59 = ptrtoint ptr %slow_down_period.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 2000, ptr %slow_down_period.i, align 4
  %60 = load ptr, ptr %fan.i, align 8
  %linear_min_temp.i = getelementptr inbounds %struct.nvkm_fan, ptr %60, i32 0, i32 2, i32 9
  %61 = ptrtoint ptr %linear_min_temp.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 40, ptr %linear_min_temp.i, align 1
  %62 = load ptr, ptr %fan.i, align 8
  %linear_max_temp.i = getelementptr inbounds %struct.nvkm_fan, ptr %62, i32 0, i32 2, i32 10
  %63 = ptrtoint ptr %linear_max_temp.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 85, ptr %linear_max_temp.i, align 2
  %64 = load ptr, ptr %fan.i, align 8
  %perf = getelementptr inbounds %struct.nvkm_fan, ptr %64, i32 0, i32 3
  %call66 = call i32 @nvbios_perf_fan_parse(ptr noundef %5, ptr noundef %perf) #6
  %65 = ptrtoint ptr %fan.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fan.i, align 8
  %bios68 = getelementptr inbounds %struct.nvkm_fan, ptr %66, i32 0, i32 2
  %call69 = call i32 @nvbios_fan_parse(ptr noundef %5, ptr noundef %bios68) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %do.body72, label %if.end57.if.end110_crit_edge

if.end57.if.end110_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

do.body72:                                        ; preds = %if.end57
  %67 = ptrtoint ptr %debug34 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %debug34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %cmp75 = icmp ugt i32 %68, 3
  br i1 %cmp75, label %do.end80, label %do.body72.if.end85_crit_edge

do.body72.if.end85_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

do.end80:                                         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device2, align 4
  %dev82 = getelementptr inbounds %struct.nvkm_device, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev82, align 8
  %name83 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %72, ptr noundef nonnull @.str.10, ptr noundef %name83) #9
  br label %if.end85

if.end85:                                         ; preds = %do.end80, %do.body72.if.end85_crit_edge
  %73 = ptrtoint ptr %fan.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fan.i, align 8
  %bios89 = getelementptr inbounds %struct.nvkm_fan, ptr %74, i32 0, i32 2
  %call90 = call i32 @nvbios_therm_fan_parse(ptr noundef %5, ptr noundef %bios89) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end85.if.end110_crit_edge, label %do.body93

if.end85.if.end110_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

do.body93:                                        ; preds = %if.end85
  %75 = ptrtoint ptr %debug34 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %debug34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp96.not = icmp eq i32 %76, 0
  br i1 %cmp96.not, label %do.body93.if.end110_crit_edge, label %do.end101

do.body93.if.end110_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

do.end101:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device2, align 4
  %dev103 = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev103, align 8
  %name104 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.13, ptr noundef %name104) #9
  br label %if.end110

if.end110:                                        ; preds = %do.end101, %do.body93.if.end110_crit_edge, %if.end85.if.end110_crit_edge, %if.end57.if.end110_crit_edge
  %81 = ptrtoint ptr %fan.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fan.i, align 8
  %min_duty.i156 = getelementptr inbounds %struct.nvkm_fan, ptr %82, i32 0, i32 2, i32 2
  %83 = ptrtoint ptr %min_duty.i156 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %min_duty.i156, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %84)
  %cmp.i = icmp ugt i8 %84, 100
  br i1 %cmp.i, label %if.then.i, label %if.end110.if.end.i_crit_edge

if.end110.if.end.i_crit_edge:                     ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %min_duty.i156 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 100, ptr %min_duty.i156, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end110.if.end.i_crit_edge
  %86 = ptrtoint ptr %fan.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fan.i, align 8
  %max_duty.i157 = getelementptr inbounds %struct.nvkm_fan, ptr %87, i32 0, i32 2, i32 3
  %88 = ptrtoint ptr %max_duty.i157 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %max_duty.i157, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %89)
  %cmp8.i = icmp ugt i8 %89, 100
  br i1 %cmp8.i, label %if.then10.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %max_duty.i157 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 100, ptr %max_duty.i157, align 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then10.i, %if.end.i.if.end14.i_crit_edge
  %91 = ptrtoint ptr %fan.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %fan.i, align 8
  %min_duty17.i = getelementptr inbounds %struct.nvkm_fan, ptr %92, i32 0, i32 2, i32 2
  %93 = ptrtoint ptr %min_duty17.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %min_duty17.i, align 8
  %max_duty21.i = getelementptr inbounds %struct.nvkm_fan, ptr %92, i32 0, i32 2, i32 3
  %95 = ptrtoint ptr %max_duty21.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %max_duty21.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %94, i8 %96)
  %cmp23.i = icmp ugt i8 %94, %96
  br i1 %cmp23.i, label %if.then25.i, label %if.end14.i.cleanup_crit_edge

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %min_duty17.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %min_duty17.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then25.i, %if.end14.i.cleanup_crit_edge, %if.then26.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.then26.cleanup_crit_edge ], [ 0, %if.end14.i.cleanup_crit_edge ], [ 0, %if.then25.i ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %func) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_find(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fanpwm_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fantog_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fannil_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_fan_alarm(ptr noundef %alarm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %alarm, i32 -160
  %call = tail call fastcc i32 @nvkm_fan_update(ptr noundef %add.ptr, i1 noundef zeroext false, i32 noundef -1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_perf_fan_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_fan_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_therm_fan_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/fan.c", i32 237, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_therm_fan_ctor._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_therm_fan_ctor._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/fan.c", i32 253, i32 2}
!10 = !{ptr @nvkm_therm_fan_ctor._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nvkm_therm_fan_ctor._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @nvkm_therm_fan_ctor.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/fan.c", i32 267, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/fan.c", i32 273, i32 3}
!17 = !{ptr @nvkm_therm_fan_ctor._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @nvkm_therm_fan_ctor._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/fan.c", i32 275, i32 4}
!21 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nvkm_therm_fan_ctor._entry.12, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @nvkm_therm_fan_ctor._entry_ptr.15, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/fan.c", i32 48, i32 3}
!26 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nvkm_fan_update._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @nvkm_fan_update._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/fan.c", i32 73, i32 2}
!31 = !{ptr @nvkm_fan_update._entry.18, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @nvkm_fan_update._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 2148454109, i64 2148454389, i64 2148454723, i64 2148455057}
