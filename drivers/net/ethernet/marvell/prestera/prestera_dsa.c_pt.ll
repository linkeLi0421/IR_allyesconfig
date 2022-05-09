; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/prestera/prestera_dsa.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/prestera/prestera_dsa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.prestera_dsa_vlan = type { i16, i8, i8, i8 }
%struct.prestera_dsa = type { %struct.prestera_dsa_vlan, i32, i32, i8 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @prestera_dsa_parse(ptr nocapture noundef %dsa, ptr nocapture noundef readonly %dsa_buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dsa_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dsa_buf, align 4
  %arrayidx2 = getelementptr i32, ptr %dsa_buf, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr i32, ptr %dsa_buf, i32 2
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %6 = and i32 %1, -1073737728
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %6)
  %7 = icmp ne i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp63 = icmp sgt i32 %3, -1
  %or.cond396 = select i1 %7, i1 true, i1 %cmp63
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp85 = icmp sgt i32 %5, -1
  %or.cond397 = select i1 %or.cond396, i1 true, i1 %cmp85
  br i1 %or.cond397, label %entry.cleanup_crit_edge, label %do.end102, !prof !9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end102:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx6 = getelementptr i32, ptr %dsa_buf, i32 3
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %is_tagged = getelementptr inbounds %struct.prestera_dsa_vlan, ptr %dsa, i32 0, i32 3
  %10 = lshr i32 %1, 29
  %11 = trunc i32 %10 to i8
  %12 = ptrtoint ptr %is_tagged to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %is_tagged, align 4
  %and144 = lshr i32 %3, 30
  %13 = trunc i32 %and144 to i8
  %conv = and i8 %13, 1
  %cfi_bit = getelementptr inbounds %struct.prestera_dsa_vlan, ptr %dsa, i32 0, i32 2
  %14 = ptrtoint ptr %cfi_bit to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %cfi_bit, align 1
  %and164 = lshr i32 %1, 13
  %15 = trunc i32 %and164 to i8
  %conv166 = and i8 %15, 7
  %vpt = getelementptr inbounds %struct.prestera_dsa_vlan, ptr %dsa, i32 0, i32 1
  %16 = ptrtoint ptr %vpt to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv166, ptr %vpt, align 2
  %17 = trunc i32 %1 to i16
  %conv193 = and i16 %17, 4095
  %18 = lshr i32 %9, 15
  %19 = trunc i32 %18 to i16
  %20 = and i16 %19, -4096
  %conv218 = or i16 %20, %conv193
  %21 = ptrtoint ptr %dsa to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv218, ptr %dsa, align 4
  %and255 = lshr i32 %1, 24
  %shr256 = and i32 %and255, 31
  %hw_dev_num = getelementptr inbounds %struct.prestera_dsa, ptr %dsa, i32 0, i32 1
  %and236 = shl i32 %9, 5
  %shl279 = and i32 %and236, 4064
  %or282 = or i32 %shl279, %shr256
  %22 = ptrtoint ptr %hw_dev_num to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or282, ptr %hw_dev_num, align 4
  %and300 = lshr i32 %1, 19
  %shr301 = and i32 %and300, 31
  %23 = lshr i32 %3, 5
  %shl322 = and i32 %23, 96
  %or323 = or i32 %shl322, %shr301
  %24 = lshr i32 %5, 13
  %shl343 = and i32 %24, 128
  %or344 = or i32 %or323, %shl343
  %port_num = getelementptr inbounds %struct.prestera_dsa, ptr %dsa, i32 0, i32 2
  %25 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or344, ptr %port_num, align 4
  %conv364 = trunc i32 %3 to i8
  %cpu_code = getelementptr inbounds %struct.prestera_dsa, ptr %dsa, i32 0, i32 3
  %26 = ptrtoint ptr %cpu_code to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv364, ptr %cpu_code, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end102, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end102 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_dsa_build(ptr nocapture noundef readonly %dsa, ptr nocapture noundef writeonly %dsa_buf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_dev_num = getelementptr inbounds %struct.prestera_dsa, ptr %dsa, i32 0, i32 1
  %0 = ptrtoint ptr %hw_dev_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_dev_num, align 4
  %port_num = getelementptr inbounds %struct.prestera_dsa, ptr %dsa, i32 0, i32 2
  %2 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_num, align 4
  %and48 = lshr i32 %1, 5
  %shr = and i32 %and48, 127
  %shl = shl i32 %1, 24
  %and29 = and i32 %shl, 520093696
  %shl99 = shl i32 %3, 7
  %and100 = and i32 %shl99, 16777088
  %or102 = or i32 %and100, %shr
  %or120 = or i32 %and29, 1073745920
  %4 = ptrtoint ptr %dsa_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or120, ptr %dsa_buf, align 4
  %arrayidx160 = getelementptr i32, ptr %dsa_buf, i32 1
  %5 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -2147483648, ptr %arrayidx160, align 4
  %arrayidx162 = getelementptr i32, ptr %dsa_buf, i32 2
  %6 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -2147483648, ptr %arrayidx162, align 4
  %arrayidx164 = getelementptr i32, ptr %dsa_buf, i32 3
  %7 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or102, ptr %arrayidx164, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{!"branch_weights", i32 14008, i32 2000}
