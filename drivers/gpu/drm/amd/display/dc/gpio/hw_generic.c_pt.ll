; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/gpio/hw_generic.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/hw_generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hw_gpio_pin_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hw_gpio_pin = type { ptr, i32, i32, i32, i8, ptr }
%struct.hw_generic = type { %struct.hw_gpio, ptr, ptr, ptr }
%struct.hw_gpio = type { %struct.hw_gpio_pin, %struct.anon, i8, ptr }
%struct.anon = type { i32, i32, i32, i32 }
%struct.generic_registers = type { %struct.gpio_registers, i32 }
%struct.gpio_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gpio_config_data = type { i32, %union.anon }
%union.anon = type { %struct.gpio_generic_mux_config }
%struct.gpio_generic_mux_config = type { i8, i32, i32 }
%struct.generic_sh_mask = type { i32, i32 }

@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/hw_generic.c\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@funcs = internal constant { %struct.hw_gpio_pin_funcs, [36 x i8] } { %struct.hw_gpio_pin_funcs { ptr @dal_hw_generic_destroy, ptr @dal_hw_gpio_open, ptr @dal_hw_gpio_get_value, ptr @dal_hw_gpio_set_value, ptr @set_config, ptr @dal_hw_gpio_change_mode, ptr @dal_hw_gpio_close }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 110, i32 3 }
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"funcs\00", align 1
@___asan_gen_.5 = private constant [62 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/hw_generic.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 83, i32 39 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @funcs], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_hw_generic_init(ptr nocapture noundef writeonly %hw_generic, ptr noundef %ctx, i32 noundef %id, i32 noundef %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %en)
  %cmp1 = icmp ugt i32 %en, 7
  br i1 %cmp1, label %do.end, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 9, ptr noundef null) #3
  tail call void @kgdb_breakpoint() #3
  %0 = ptrtoint ptr %hw_generic to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %hw_generic, align 4
  br label %if.end23

if.end23:                                         ; preds = %do.end, %entry.if.end23_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 60) #6
  %2 = ptrtoint ptr %hw_generic to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %hw_generic, align 4
  %tobool24.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not, label %do.end39, label %if.end58

do.end39:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef null) #3
  tail call void @kgdb_breakpoint() #3
  br label %return

if.end58:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dal_hw_gpio_construct(ptr noundef nonnull %call7.i.i, i32 noundef %id, i32 noundef %en, ptr noundef %ctx) #3
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @funcs, ptr %call7.i.i, align 8
  br label %return

return:                                           ; preds = %if.end58, %do.end39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dal_hw_generic_get_pin(ptr noundef %gpio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dal_gpio_get_generic(ptr noundef %gpio) #3
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dal_gpio_get_generic(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_hw_gpio_construct(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dal_hw_generic_destroy(ptr nocapture noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  tail call void @dal_hw_gpio_destruct(ptr noundef %1) #3
  tail call void @kfree(ptr noundef %1) #3
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ptr, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dal_hw_gpio_open(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_hw_gpio_get_value(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_hw_gpio_set_value(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_config(ptr nocapture noundef readonly %ptr, ptr noundef readonly %config_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %config_data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ctx = getelementptr inbounds %struct.hw_gpio_pin, ptr %ptr, i32 0, i32 5
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.hw_generic, ptr %ptr, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %mux = getelementptr inbounds %struct.generic_registers, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mux, align 4
  %shifts = getelementptr inbounds %struct.hw_generic, ptr %ptr, i32 0, i32 2
  %6 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shifts, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %conv = trunc i32 %9 to i8
  %masks = getelementptr inbounds %struct.hw_generic, ptr %ptr, i32 0, i32 3
  %10 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %masks, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %config = getelementptr inbounds %struct.gpio_config_data, ptr %config_data, i32 0, i32 1
  %14 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %config, align 4, !range !13
  %16 = zext i8 %15 to i32
  %GENERIC_SEL = getelementptr inbounds %struct.generic_sh_mask, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %GENERIC_SEL to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %GENERIC_SEL, align 4
  %GENERIC_SEL10 = getelementptr inbounds %struct.generic_sh_mask, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %GENERIC_SEL10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %GENERIC_SEL10, align 4
  %mux_select = getelementptr inbounds %struct.gpio_config_data, ptr %config_data, i32 0, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %mux_select to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mux_select, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 2, i8 noundef zeroext %conv, i32 noundef %13, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_hw_gpio_change_mode(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_hw_gpio_close(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_hw_gpio_destruct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/hw_generic.c", i32 110, i32 3}
!2 = !{ptr @funcs, !3, !"funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/hw_generic.c", i32 83, i32 39}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i8 0, i8 2}
