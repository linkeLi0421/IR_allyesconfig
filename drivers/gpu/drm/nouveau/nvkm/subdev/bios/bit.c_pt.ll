; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/bit.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/bit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.133 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.133 = type { i8, i8, i8, i8, i8 }
%struct.bit_entry = type { i8, i8, i16, i16 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bit_entry(ptr noundef %bios, i8 noundef zeroext %id, ptr nocapture noundef writeonly %bit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_offset = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 6
  %0 = ptrtoint ptr %bit_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bit_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then, !prof !9

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  %add = add i32 %1, 10
  %call = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add) #2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool7.not49 = icmp eq i8 %call, 0
  br i1 %tobool7.not49, label %if.then.return_crit_edge, label %while.body.preheader

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

while.body.preheader:                             ; preds = %if.then
  %2 = ptrtoint ptr %bit_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit_offset, align 4
  %add6 = add i32 %3, 12
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.preheader
  %dec51.in = phi i8 [ %dec51, %if.end.while.body_crit_edge ], [ %call, %while.body.preheader ]
  %entry4.050 = phi i32 [ %add26, %if.end.while.body_crit_edge ], [ %add6, %while.body.preheader ]
  %call9 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %entry4.050) #2
  call void @__sanitizer_cov_trace_cmp1(i8 %call9, i8 %id)
  %cmp = icmp eq i8 %call9, %id
  br i1 %cmp, label %if.then12, label %if.end

if.then12:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  %call14 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %entry4.050) #2
  %4 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call14, ptr %bit, align 2
  %add16 = add i32 %entry4.050, 1
  %call17 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add16) #2
  %version = getelementptr inbounds %struct.bit_entry, ptr %bit, i32 0, i32 1
  %5 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call17, ptr %version, align 1
  %add18 = add i32 %entry4.050, 2
  %call19 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add18) #2
  %length = getelementptr inbounds %struct.bit_entry, ptr %bit, i32 0, i32 2
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %call19, ptr %length, align 2
  %add20 = add i32 %entry4.050, 4
  %call21 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add20) #2
  %offset = getelementptr inbounds %struct.bit_entry, ptr %bit, i32 0, i32 3
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %call21, ptr %offset, align 2
  br label %return

if.end:                                           ; preds = %while.body
  %dec51 = add i8 %dec51.in, -1
  %8 = ptrtoint ptr %bit_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bit_offset, align 4
  %add23 = add i32 %9, 9
  %call24 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add23) #2
  %conv25 = zext i8 %call24 to i32
  %add26 = add i32 %entry4.050, %conv25
  %tobool7.not = icmp eq i8 %dec51, 0
  br i1 %tobool7.not, label %if.end.return_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

return:                                           ; preds = %if.end.return_crit_edge, %if.then12, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ 0, %if.then12 ], [ -22, %entry.return_crit_edge ], [ -2, %if.then.return_crit_edge ], [ -2, %if.end.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

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
!9 = !{!"branch_weights", i32 1, i32 2000}
