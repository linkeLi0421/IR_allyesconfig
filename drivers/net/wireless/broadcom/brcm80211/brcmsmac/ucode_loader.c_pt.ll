; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmsmac/ucode_loader.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmsmac/ucode_loader.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.brcms_ucode = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcms_ucode_data_init(ptr noundef %wl, ptr noundef %ucode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @brcms_check_firmwares(ptr noundef %wl) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cond.end84_crit_edge, label %cond.end

entry.cond.end84_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end84

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 @brcms_ucode_init_buf(ptr noundef %wl, ptr noundef %ucode, i32 noundef 1) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %cond.end.cond.end84_crit_edge, label %cond.end6

cond.end.cond.end84_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end84

cond.end6:                                        ; preds = %cond.end
  %d11lcn0initvals24 = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 1
  %call5 = tail call i32 @brcms_ucode_init_buf(ptr noundef %wl, ptr noundef %d11lcn0initvals24, i32 noundef 2) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp8 = icmp slt i32 %call5, 0
  br i1 %cmp8, label %cond.end6.cond.end84_crit_edge, label %cond.end12

cond.end6.cond.end84_crit_edge:                   ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end84

cond.end12:                                       ; preds = %cond.end6
  %d11lcn1bsinitvals24 = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 2
  %call11 = tail call i32 @brcms_ucode_init_buf(ptr noundef %wl, ptr noundef %d11lcn1bsinitvals24, i32 noundef 3) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp14 = icmp slt i32 %call11, 0
  br i1 %cmp14, label %cond.end12.cond.end84_crit_edge, label %cond.end18

cond.end12.cond.end84_crit_edge:                  ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end84

cond.end18:                                       ; preds = %cond.end12
  %d11lcn1initvals24 = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 3
  %call17 = tail call i32 @brcms_ucode_init_buf(ptr noundef %wl, ptr noundef %d11lcn1initvals24, i32 noundef 4) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp20 = icmp slt i32 %call17, 0
  br i1 %cmp20, label %cond.end18.cond.end84_crit_edge, label %cond.end24

cond.end18.cond.end84_crit_edge:                  ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end84

cond.end24:                                       ; preds = %cond.end18
  %d11lcn2bsinitvals24 = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 4
  %call23 = tail call i32 @brcms_ucode_init_buf(ptr noundef %wl, ptr noundef %d11lcn2bsinitvals24, i32 noundef 5) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp26 = icmp slt i32 %call23, 0
  br i1 %cmp26, label %cond.end24.cond.end84_crit_edge, label %cond.end30

cond.end24.cond.end84_crit_edge:                  ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end84

cond.end30:                                       ; preds = %cond.end24
  %d11lcn2initvals24 = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 5
  %call29 = tail call i32 @brcms_ucode_init_buf(ptr noundef %wl, ptr noundef %d11lcn2initvals24, i32 noundef 6) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp32 = icmp slt i32 %call29, 0
  br i1 %cmp32, label %cond.end30.cond.end84_crit_edge, label %cond.end36

cond.end30.cond.end84_crit_edge:                  ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end84

cond.end36:                                       ; preds = %cond.end30
  %d11n0absinitvals16 = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 6
  %call35 = tail call i32 @brcms_ucode_init_buf(ptr noundef %wl, ptr noundef %d11n0absinitvals16, i32 noundef 7) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp38 = icmp slt i32 %call35, 0
  br i1 %cmp38, label %cond.end36.cond.end84_crit_edge, label %cond.end42

cond.end36.cond.end84_crit_edge:                  ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end84

cond.end42:                                       ; preds = %cond.end36
  %d11n0bsinitvals16 = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 7
  %call41 = tail call i32 @brcms_ucode_init_buf(ptr noundef %wl, ptr noundef %d11n0bsinitvals16, i32 noundef 8) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp44 = icmp slt i32 %call41, 0
  br i1 %cmp44, label %cond.end42.cond.end84_crit_edge, label %cond.end48

cond.end42.cond.end84_crit_edge:                  ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end84

cond.end48:                                       ; preds = %cond.end42
  %d11n0initvals16 = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 8
  %call47 = tail call i32 @brcms_ucode_init_buf(ptr noundef %wl, ptr noundef %d11n0initvals16, i32 noundef 9) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp50 = icmp slt i32 %call47, 0
  br i1 %cmp50, label %cond.end48.cond.end84_crit_edge, label %cond.end54

cond.end48.cond.end84_crit_edge:                  ; preds = %cond.end48
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end84

cond.end54:                                       ; preds = %cond.end48
  %bcm43xx_16_mimo = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 9
  %call53 = tail call i32 @brcms_ucode_init_buf(ptr noundef %wl, ptr noundef %bcm43xx_16_mimo, i32 noundef 10) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp56 = icmp slt i32 %call53, 0
  br i1 %cmp56, label %cond.end54.cond.end84_crit_edge, label %cond.end60

cond.end54.cond.end84_crit_edge:                  ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end84

cond.end60:                                       ; preds = %cond.end54
  %bcm43xx_16_mimosz = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 10
  %call59 = tail call i32 @brcms_ucode_init_uint(ptr noundef %wl, ptr noundef %bcm43xx_16_mimosz, i32 noundef 11) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp62 = icmp slt i32 %call59, 0
  br i1 %cmp62, label %cond.end60.cond.end84_crit_edge, label %cond.end66

cond.end60.cond.end84_crit_edge:                  ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end84

cond.end66:                                       ; preds = %cond.end60
  %bcm43xx_24_lcn = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 11
  %call65 = tail call i32 @brcms_ucode_init_buf(ptr noundef %wl, ptr noundef %bcm43xx_24_lcn, i32 noundef 12) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp68 = icmp slt i32 %call65, 0
  br i1 %cmp68, label %cond.end66.cond.end84_crit_edge, label %cond.end72

cond.end66.cond.end84_crit_edge:                  ; preds = %cond.end66
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end84

cond.end72:                                       ; preds = %cond.end66
  %bcm43xx_24_lcnsz = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 12
  %call71 = tail call i32 @brcms_ucode_init_uint(ptr noundef %wl, ptr noundef %bcm43xx_24_lcnsz, i32 noundef 13) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp74 = icmp slt i32 %call71, 0
  br i1 %cmp74, label %cond.end72.cond.end84_crit_edge, label %cond.end78

cond.end72.cond.end84_crit_edge:                  ; preds = %cond.end72
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end84

cond.end78:                                       ; preds = %cond.end72
  %bcm43xx_bommajor = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 13
  %call77 = tail call i32 @brcms_ucode_init_buf(ptr noundef %wl, ptr noundef %bcm43xx_bommajor, i32 noundef 14) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp80 = icmp slt i32 %call77, 0
  br i1 %cmp80, label %cond.end78.cond.end84_crit_edge, label %cond.false82

cond.end78.cond.end84_crit_edge:                  ; preds = %cond.end78
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end84

cond.false82:                                     ; preds = %cond.end78
  call void @__sanitizer_cov_trace_pc() #4
  %bcm43xx_bomminor = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 14
  %call83 = tail call i32 @brcms_ucode_init_buf(ptr noundef %wl, ptr noundef %bcm43xx_bomminor, i32 noundef 15) #2
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false82, %cond.end78.cond.end84_crit_edge, %cond.end72.cond.end84_crit_edge, %cond.end66.cond.end84_crit_edge, %cond.end60.cond.end84_crit_edge, %cond.end54.cond.end84_crit_edge, %cond.end48.cond.end84_crit_edge, %cond.end42.cond.end84_crit_edge, %cond.end36.cond.end84_crit_edge, %cond.end30.cond.end84_crit_edge, %cond.end24.cond.end84_crit_edge, %cond.end18.cond.end84_crit_edge, %cond.end12.cond.end84_crit_edge, %cond.end6.cond.end84_crit_edge, %cond.end.cond.end84_crit_edge, %entry.cond.end84_crit_edge
  %cond85 = phi i32 [ %call83, %cond.false82 ], [ %call77, %cond.end78.cond.end84_crit_edge ], [ %call71, %cond.end72.cond.end84_crit_edge ], [ %call65, %cond.end66.cond.end84_crit_edge ], [ %call59, %cond.end60.cond.end84_crit_edge ], [ %call53, %cond.end54.cond.end84_crit_edge ], [ %call47, %cond.end48.cond.end84_crit_edge ], [ %call41, %cond.end42.cond.end84_crit_edge ], [ %call35, %cond.end36.cond.end84_crit_edge ], [ %call29, %cond.end30.cond.end84_crit_edge ], [ %call23, %cond.end24.cond.end84_crit_edge ], [ %call17, %cond.end18.cond.end84_crit_edge ], [ %call11, %cond.end12.cond.end84_crit_edge ], [ %call5, %cond.end6.cond.end84_crit_edge ], [ %call1, %cond.end.cond.end84_crit_edge ], [ %call, %entry.cond.end84_crit_edge ]
  ret i32 %cond85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_check_firmwares(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_ucode_init_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_ucode_init_uint(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_ucode_data_free(ptr nocapture noundef readonly %ucode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ucode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucode, align 4
  tail call void @brcms_ucode_free_buf(ptr noundef %1) #2
  %d11lcn0initvals24 = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 1
  %2 = ptrtoint ptr %d11lcn0initvals24 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d11lcn0initvals24, align 4
  tail call void @brcms_ucode_free_buf(ptr noundef %3) #2
  %d11lcn1bsinitvals24 = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 2
  %4 = ptrtoint ptr %d11lcn1bsinitvals24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d11lcn1bsinitvals24, align 4
  tail call void @brcms_ucode_free_buf(ptr noundef %5) #2
  %d11lcn1initvals24 = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 3
  %6 = ptrtoint ptr %d11lcn1initvals24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d11lcn1initvals24, align 4
  tail call void @brcms_ucode_free_buf(ptr noundef %7) #2
  %d11lcn2bsinitvals24 = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 4
  %8 = ptrtoint ptr %d11lcn2bsinitvals24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d11lcn2bsinitvals24, align 4
  tail call void @brcms_ucode_free_buf(ptr noundef %9) #2
  %d11lcn2initvals24 = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 5
  %10 = ptrtoint ptr %d11lcn2initvals24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d11lcn2initvals24, align 4
  tail call void @brcms_ucode_free_buf(ptr noundef %11) #2
  %d11n0absinitvals16 = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 6
  %12 = ptrtoint ptr %d11n0absinitvals16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d11n0absinitvals16, align 4
  tail call void @brcms_ucode_free_buf(ptr noundef %13) #2
  %d11n0bsinitvals16 = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 7
  %14 = ptrtoint ptr %d11n0bsinitvals16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d11n0bsinitvals16, align 4
  tail call void @brcms_ucode_free_buf(ptr noundef %15) #2
  %d11n0initvals16 = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 8
  %16 = ptrtoint ptr %d11n0initvals16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d11n0initvals16, align 4
  tail call void @brcms_ucode_free_buf(ptr noundef %17) #2
  %bcm43xx_16_mimo = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 9
  %18 = ptrtoint ptr %bcm43xx_16_mimo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bcm43xx_16_mimo, align 4
  tail call void @brcms_ucode_free_buf(ptr noundef %19) #2
  %bcm43xx_24_lcn = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 11
  %20 = ptrtoint ptr %bcm43xx_24_lcn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bcm43xx_24_lcn, align 4
  tail call void @brcms_ucode_free_buf(ptr noundef %21) #2
  %bcm43xx_bommajor = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 13
  %22 = ptrtoint ptr %bcm43xx_bommajor to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bcm43xx_bommajor, align 4
  tail call void @brcms_ucode_free_buf(ptr noundef %23) #2
  %bcm43xx_bomminor = getelementptr inbounds %struct.brcms_ucode, ptr %ucode, i32 0, i32 14
  %24 = ptrtoint ptr %bcm43xx_bomminor to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bcm43xx_bomminor, align 4
  tail call void @brcms_ucode_free_buf(ptr noundef %25) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_ucode_free_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
