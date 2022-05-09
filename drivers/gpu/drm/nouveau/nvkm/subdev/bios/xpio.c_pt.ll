; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/xpio.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/xpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvbios_xpio = type { i8, i8, i8 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_xpio_table(ptr noundef %bios, i8 noundef zeroext %idx, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i16 @dcb_gpio_table(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len) #2
  %conv.i = zext i16 %call.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %entry.cleanup25_crit_edge, label %land.lhs.true.i

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup25

land.lhs.true.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %1)
  %cmp.i = icmp ugt i8 %1, 63
  br i1 %cmp.i, label %land.lhs.true3.i, label %land.lhs.true.i.cleanup25_crit_edge

land.lhs.true.i.cleanup25_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup25

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp5.i = icmp ugt i8 %3, 5
  br i1 %cmp5.i, label %if.then.i, label %land.lhs.true3.i.cleanup25_crit_edge

land.lhs.true3.i.cleanup25_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup25

if.then.i:                                        ; preds = %land.lhs.true3.i
  %add.i = add nuw nsw i32 %conv.i, 4
  %call8.i = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add.i) #2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call8.i)
  %tobool9.not.i = icmp eq i16 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then.i.cleanup25_crit_edge, label %land.lhs.true

if.then.i.cleanup25_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup25

land.lhs.true:                                    ; preds = %if.then.i
  %call13.i = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv.i) #2
  %4 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call13.i, ptr %ver, align 1
  %add15.i = add nuw nsw i32 %conv.i, 1
  %call16.i = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add15.i) #2
  %5 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call16.i, ptr %hdr, align 1
  %add18.i = add nuw nsw i32 %conv.i, 2
  %call19.i = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add18.i) #2
  %6 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call19.i, ptr %cnt, align 1
  %add21.i = add nuw nsw i32 %conv.i, 3
  %call22.i = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add21.i) #2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call22.i, ptr %len, align 1
  %conv = zext i16 %call8.i to i32
  %8 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cnt, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %idx)
  %cmp = icmp ugt i8 %9, %idx
  br i1 %cmp, label %if.then, label %land.lhs.true.cleanup25_crit_edge

land.lhs.true.cleanup25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup25

if.then:                                          ; preds = %land.lhs.true
  %conv1 = zext i8 %idx to i32
  %10 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hdr, align 1
  %conv5 = zext i8 %11 to i32
  %add = add nuw nsw i32 %conv5, %conv
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %len, align 1
  %conv7 = zext i8 %13 to i32
  %mul = mul nuw nsw i32 %conv7, %conv1
  %add8 = add nuw nsw i32 %add, %mul
  %call9 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add8) #2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call9)
  %tobool10.not = icmp eq i16 %call9, 0
  br i1 %tobool10.not, label %if.then.cleanup25_crit_edge, label %if.then11

if.then.cleanup25_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup25

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %call14 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv) #2
  %14 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call14, ptr %ver, align 1
  %add16 = add nuw nsw i32 %conv, 1
  %call17 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add16) #2
  %15 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call17, ptr %hdr, align 1
  %add19 = add nuw nsw i32 %conv, 2
  %call20 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add19) #2
  %16 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call20, ptr %cnt, align 1
  %add22 = add nuw nsw i32 %conv, 3
  %call23 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add22) #2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call23, ptr %len, align 1
  br label %cleanup25

cleanup25:                                        ; preds = %if.then11, %if.then.cleanup25_crit_edge, %land.lhs.true.cleanup25_crit_edge, %if.then.i.cleanup25_crit_edge, %land.lhs.true3.i.cleanup25_crit_edge, %land.lhs.true.i.cleanup25_crit_edge, %entry.cleanup25_crit_edge
  %retval.1 = phi i16 [ %call9, %if.then11 ], [ 0, %land.lhs.true.cleanup25_crit_edge ], [ 0, %if.then.cleanup25_crit_edge ], [ 0, %land.lhs.true3.i.cleanup25_crit_edge ], [ 0, %land.lhs.true.i.cleanup25_crit_edge ], [ 0, %entry.cleanup25_crit_edge ], [ 0, %if.then.i.cleanup25_crit_edge ]
  ret i16 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_xpio_parse(ptr noundef %bios, i8 noundef zeroext %idx, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @dcb_xpio_table(ptr noundef %bios, i8 noundef zeroext %idx, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len)
  %conv = zext i16 %call to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp = icmp ugt i8 %1, 5
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %add = add nuw nsw i32 %conv, 4
  %call4 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add) #2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %call4, ptr %info, align 1
  %add6 = add nuw nsw i32 %conv, 5
  %call7 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add6) #2
  %addr = getelementptr inbounds %struct.nvbios_xpio, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %call7, ptr %addr, align 1
  %add9 = add nuw nsw i32 %conv, 6
  %call10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add9) #2
  %flags = getelementptr inbounds %struct.nvbios_xpio, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call10, ptr %flags, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i16 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_gpio_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_store1_noabort(i32)

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
