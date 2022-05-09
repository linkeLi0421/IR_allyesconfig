; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk-utils.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-utils.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @div_frac_get(i32 noundef %rate, i32 noundef %parent_rate, i8 noundef zeroext %width, i8 noundef zeroext %frac_width, i8 noundef zeroext %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %parent_rate to i64
  %conv1 = zext i8 %frac_width to i32
  %shl = shl nuw i32 1, %conv1
  %conv2 = zext i8 %flags to i32
  %and = and i32 %conv2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %narrow = select i1 %tobool3.not, i32 %shl, i32 1
  %mul6 = sext i32 %narrow to i64
  %divider_ux1.0 = mul nsw i64 %mul6, %conv
  %and9 = and i32 %conv2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %sub = add i32 %rate, -1
  %narrow343 = select i1 %tobool10.not, i32 0, i32 %sub
  %add = zext i32 %narrow343 to i64
  %divider_ux1.1 = add nsw i64 %divider_ux1.0, %add
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %divider_ux1.1)
  %cmp187 = icmp ult i64 %divider_ux1.1, 4294967296
  br i1 %cmp187, label %if.then191, label %if.else197, !prof !9

if.then191:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  %conv192 = trunc i64 %divider_ux1.1 to i32
  %div195 = udiv i32 %conv192, %rate
  %conv196 = zext i32 %div195 to i64
  br label %if.end201

if.else197:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %rate, i64 %divider_ux1.1) #4, !srcloc !10
  %asmresult1.i = extractvalue { i64, i64 } %0, 1
  br label %if.end201

if.end201:                                        ; preds = %if.else197, %if.then191
  %divider_ux1.2 = phi i64 [ %conv196, %if.then191 ], [ %asmresult1.i, %if.else197 ]
  %narrow344 = select i1 %tobool3.not, i32 1, i32 %shl
  %mul208 = sext i32 %narrow344 to i64
  %divider_ux1.3 = mul i64 %divider_ux1.2, %mul208
  %conv210 = sext i32 %shl to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %divider_ux1.3, i64 %conv210)
  %cmp211 = icmp ult i64 %divider_ux1.3, %conv210
  br i1 %cmp211, label %if.end201.cleanup_crit_edge, label %if.end214

if.end201.cleanup_crit_edge:                      ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end214:                                        ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #3
  %sub216 = sub i64 %divider_ux1.3, %conv210
  %conv217 = zext i8 %width to i32
  %notmask = shl nsw i32 -1, %conv217
  %sub219 = xor i32 %notmask, -1
  %conv220 = sext i32 %sub219 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub216, i64 %conv220)
  %cmp221 = icmp ugt i64 %sub216, %conv220
  %conv228 = trunc i64 %sub216 to i32
  %spec.select = select i1 %cmp221, i32 %sub219, i32 %conv228
  br label %cleanup

cleanup:                                          ; preds = %if.end214, %if.end201.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end201.cleanup_crit_edge ], [ %spec.select, %if.end214 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }
attributes #4 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2147973462, i64 2147973742, i64 2147974076, i64 2147974410}
