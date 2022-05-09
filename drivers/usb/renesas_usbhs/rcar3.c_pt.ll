; ModuleID = '/llk/IR_all_yes/drivers/usb/renesas_usbhs/rcar3.c_pt.bc'
source_filename = "../drivers/usb/renesas_usbhs/rcar3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.renesas_usbhs_platform_info = type { %struct.renesas_usbhs_platform_callback, %struct.renesas_usbhs_driver_param }
%struct.renesas_usbhs_platform_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.renesas_usbhs_driver_param = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@usbhs_rcar_gen3_plat_info = dso_local constant { %struct.renesas_usbhs_platform_info, [40 x i8] } { %struct.renesas_usbhs_platform_info { %struct.renesas_usbhs_platform_callback { ptr null, ptr null, ptr @usbhs_rcar3_power_ctrl, ptr null, ptr @usbhs_get_id_as_gadget, ptr null, ptr null, ptr null }, %struct.renesas_usbhs_driver_param { ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -116 } }, [40 x i8] zeroinitializer }, align 32
@usbhs_rcar_gen3_with_pll_plat_info = dso_local constant { %struct.renesas_usbhs_platform_info, [40 x i8] } { %struct.renesas_usbhs_platform_info { %struct.renesas_usbhs_platform_callback { ptr null, ptr null, ptr @usbhs_rcar3_power_and_pll_ctrl, ptr null, ptr @usbhs_get_id_as_gadget, ptr null, ptr null, ptr null }, %struct.renesas_usbhs_driver_param { ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -116 } }, [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [26 x i8] c"usbhs_rcar_gen3_plat_info\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 98, i32 42 }
@___asan_gen_.4 = private unnamed_addr constant [35 x i8] c"usbhs_rcar_gen3_with_pll_plat_info\00", align 1
@___asan_gen_.5 = private constant [37 x i8] c"../drivers/usb/renesas_usbhs/rcar3.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 110, i32 42 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @usbhs_rcar_gen3_plat_info, ptr @usbhs_rcar_gen3_with_pll_plat_info], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_rcar_gen3_plat_info to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_rcar_gen3_with_pll_plat_info to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhs_rcar3_power_ctrl(ptr noundef %pdev, ptr nocapture noundef readnone %base, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_pdev_to_priv(ptr noundef %pdev) #2
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !13
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 822345728) #2, !srcloc !14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @usbhs_bset(ptr noundef %call, i32 noundef 258, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #2
  tail call void @usleep_range_state(i32 noundef 45, i32 noundef 90, i32 noundef 2) #2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @usbhs_bset(ptr noundef %call, i32 noundef 258, i16 noundef zeroext 16384, i16 noundef zeroext 0) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_get_id_as_gadget(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhs_rcar3_power_and_pll_ctrl(ptr noundef %pdev, ptr nocapture noundef readnone %base, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_pdev_to_priv(ptr noundef %pdev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %add.ptr.i13 = getelementptr i8, ptr %1, i32 384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 0) #2
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !13
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 822345728) #2, !srcloc !14
  tail call void @usbhs_bset(ptr noundef %call, i32 noundef 258, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then
  %timeout.0 = phi i32 [ 1000, %if.then ], [ %dec, %do.body.do.body_crit_edge ]
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %add.ptr.i11 = getelementptr i8, ptr %5, i32 392
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #2, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #2
  %8 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp ne i32 %8, 0
  %dec = add nsw i32 %timeout.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %tobool3.not = icmp eq i32 %timeout.0, 0
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %add.ptr.i12 = getelementptr i8, ptr %10, i32 384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !13
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 67108864) #2, !srcloc !14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @usbhs_bset(ptr noundef %call, i32 noundef 258, i16 noundef zeroext 16384, i16 noundef zeroext 0) #2
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  %add.ptr.i14 = getelementptr i8, ptr %12, i32 384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !13
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 16777216) #2, !srcloc !14
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_pdev_to_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_bset(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @usbhs_rcar_gen3_plat_info, !1, !"usbhs_rcar_gen3_plat_info", i1 false, i1 false}
!1 = !{!"../drivers/usb/renesas_usbhs/rcar3.c", i32 98, i32 42}
!2 = !{ptr @usbhs_rcar_gen3_with_pll_plat_info, !3, !"usbhs_rcar_gen3_with_pll_plat_info", i1 false, i1 false}
!3 = !{!"../drivers/usb/renesas_usbhs/rcar3.c", i32 110, i32 42}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2150519223}
!14 = !{i64 2977101}
!15 = !{i64 2977519}
!16 = !{i64 2150517868}
