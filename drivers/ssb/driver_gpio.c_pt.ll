; ModuleID = '/llk/IR_all_yes/drivers/ssb/driver_gpio.c_pt.bc'
source_filename = "../drivers/ssb/driver_gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.67, %struct.spinlock, i32, %union.anon.68, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.67 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.68 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.70, %struct.anon.71, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.70 = type { i8, i8, i8, i8 }
%struct.anon.71 = type { %struct.anon.72, %struct.anon.73 }
%struct.anon.72 = type { i8, i8, i8, i8, i8 }
%struct.anon.73 = type { i8, i8, i8, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.74, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.74 = type { ptr }
%struct.list_head = type { ptr, ptr }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssb_chipco_gpio\00", [16 x i8] zeroinitializer }, align 32
@ssb_gpio_chipco_init.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ssb_gpio_chipco_init.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 220, i32 17 }
@___asan_gen_.4 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.8 = private constant [29 x i8] c"../drivers/ssb/driver_gpio.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 245, i32 8 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @ssb_gpio_chipco_init.lock_key, ptr @ssb_gpio_chipco_init.request_key], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_gpio_chipco_init.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_gpio_chipco_init.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_gpio_init(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %chipco = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 17
  %0 = ptrtoint ptr %chipco to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chipco, align 4
  %cmp.i.not = icmp eq ptr %1, null
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %gpio.i = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 24
  %2 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %gpio.i, align 4
  %owner.i = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 24, i32 4
  %3 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %owner.i, align 4
  %request.i = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 24, i32 5
  %4 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ssb_gpio_chipco_request, ptr %request.i, align 4
  %free.i = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 24, i32 6
  %5 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ssb_gpio_chipco_free, ptr %free.i, align 4
  %get.i = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 24, i32 10
  %6 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ssb_gpio_chipco_get_value, ptr %get.i, align 4
  %set.i = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 24, i32 12
  %7 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ssb_gpio_chipco_set_value, ptr %set.i, align 4
  %direction_input.i = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 24, i32 8
  %8 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ssb_gpio_chipco_direction_input, ptr %direction_input.i, align 4
  %direction_output.i = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 24, i32 9
  %9 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ssb_gpio_chipco_direction_output, ptr %direction_output.i, align 4
  %ngpio.i = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 24, i32 20
  %10 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 16, ptr %ngpio.i, align 4
  %bustype.i = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 5
  %11 = ptrtoint ptr %bustype.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bustype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i9 = icmp ne i32 %12, 0
  %spec.select.i = sext i1 %cmp.i9 to i32
  %13 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 24, i32 19
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select.i, ptr %13, align 4
  %call4.i = tail call i32 @gpiochip_add_data_with_key(ptr noundef %gpio.i, ptr noundef %bus, ptr noundef nonnull @ssb_gpio_chipco_init.lock_key, ptr noundef nonnull @ssb_gpio_chipco_init.request_key) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4.i, %if.then ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_gpio_unregister(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %chipco = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 17
  %0 = ptrtoint ptr %chipco to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chipco, align 4
  %cmp.i.not = icmp eq ptr %1, null
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %gpio = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 24
  tail call void @gpiochip_remove(ptr noundef %gpio) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssb_gpio_chipco_request(ptr noundef %chip, i32 noundef %gpio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #2
  %chipco = getelementptr inbounds %struct.ssb_bus, ptr %call, i32 0, i32 17
  %shl = shl nuw i32 1, %gpio
  %call1 = tail call i32 @ssb_chipco_gpio_control(ptr noundef %chipco, i32 noundef %shl, i32 noundef 0) #2
  %call4 = tail call i32 @ssb_chipco_gpio_pulldown(ptr noundef %chipco, i32 noundef %shl, i32 noundef 0) #2
  %call8 = tail call i32 @ssb_chipco_gpio_pullup(ptr noundef %chipco, i32 noundef %shl, i32 noundef %shl) #2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_gpio_chipco_free(ptr noundef %chip, i32 noundef %gpio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #2
  %chipco = getelementptr inbounds %struct.ssb_bus, ptr %call, i32 0, i32 17
  %shl = shl nuw i32 1, %gpio
  %call1 = tail call i32 @ssb_chipco_gpio_pullup(ptr noundef %chipco, i32 noundef %shl, i32 noundef 0) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssb_gpio_chipco_get_value(ptr noundef %chip, i32 noundef %gpio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #2
  %chipco = getelementptr inbounds %struct.ssb_bus, ptr %call, i32 0, i32 17
  %shl = shl nuw i32 1, %gpio
  %call1 = tail call i32 @ssb_chipco_gpio_in(ptr noundef %chipco, i32 noundef %shl) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool = icmp ne i32 %call1, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_gpio_chipco_set_value(ptr noundef %chip, i32 noundef %gpio, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #2
  %shl = shl nuw i32 1, %gpio
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %shl
  %chipco = getelementptr inbounds %struct.ssb_bus, ptr %call, i32 0, i32 17
  %call2 = tail call i32 @ssb_chipco_gpio_out(ptr noundef %chipco, i32 noundef %shl, i32 noundef %spec.select) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssb_gpio_chipco_direction_input(ptr noundef %chip, i32 noundef %gpio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #2
  %chipco = getelementptr inbounds %struct.ssb_bus, ptr %call, i32 0, i32 17
  %shl = shl nuw i32 1, %gpio
  %call1 = tail call i32 @ssb_chipco_gpio_outen(ptr noundef %chipco, i32 noundef %shl, i32 noundef 0) #2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssb_gpio_chipco_direction_output(ptr noundef %chip, i32 noundef %gpio, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #2
  %chipco = getelementptr inbounds %struct.ssb_bus, ptr %call, i32 0, i32 17
  %shl = shl nuw i32 1, %gpio
  %call2 = tail call i32 @ssb_chipco_gpio_outen(ptr noundef %chipco, i32 noundef %shl, i32 noundef %shl) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %shl
  %call6 = tail call i32 @ssb_chipco_gpio_out(ptr noundef %chipco, i32 noundef %shl, i32 noundef %spec.select) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_chipco_gpio_control(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_chipco_gpio_pulldown(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_chipco_gpio_pullup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_chipco_gpio_in(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_chipco_gpio_out(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_chipco_gpio_outen(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/ssb/driver_gpio.c", i32 220, i32 17}
!2 = !{ptr @ssb_gpio_chipco_init.lock_key, !3, !"lock_key", i1 false, i1 false}
!3 = !{!"../drivers/ssb/driver_gpio.c", i32 245, i32 8}
!4 = !{ptr @ssb_gpio_chipco_init.request_key, !3, !"request_key", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
