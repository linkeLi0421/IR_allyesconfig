; ModuleID = '/llk/IR_all_yes/lib/strnlen_user.c_pt.bc'
source_filename = "../lib/strnlen_user.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+strnlen_user\22, \22a\22\09"
module asm "\09.weak\09__crc_strnlen_user\09\09\09\09"
module asm "\09.long\09__crc_strnlen_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strnlen_user:\09\09\09\09\09"
module asm "\09.asciz \09\22strnlen_user\22\09\09\09\09\09"
module asm "__kstrtabns_strnlen_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_strnlen_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_strnlen_user = external dso_local constant [0 x i8], align 1
@__ksymtab_strnlen_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strnlen_user to i32), ptr @__kstrtab_strnlen_user, ptr @__kstrtabns_strnlen_user }, section "___ksymtab+strnlen_user", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lib/strnlen_user.c\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [22 x i8] c"../lib/strnlen_user.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 37, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_strnlen_user, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @strnlen_user(ptr noundef %str, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp sgt i32 %count, 0
  %cmp2 = icmp ult ptr %str, inttoptr (i32 -1226833920 to ptr)
  %or.cond = and i1 %cmp, %cmp2
  br i1 %or.cond, label %if.then9, label %entry.cleanup20_crit_edge, !prof !13

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup20

if.then9:                                         ; preds = %entry
  %0 = ptrtoint ptr %str to i32
  %sub = sub i32 -1226833920, %0
  %1 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %count)
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %str, i32 %1, i32 -1226833920) #6, !srcloc !14
  %asmresult = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp15 = icmp eq i32 %asmresult, 0
  br i1 %cmp15, label %if.then16, label %if.then9.cleanup20_crit_edge

if.then9.cleanup20_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup20

if.then16:                                        ; preds = %if.then9
  %and.i = and i32 %0, 3
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr.i = getelementptr i8, ptr %str, i32 %idx.neg.i
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 37) #7
  %3 = tail call i32 @llvm.read_register.i32(metadata !4) #7
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #2, !srcloc !15
  %and.i.i = and i32 %5, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #7, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !17
  %6 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr.i, i32 -1226833921) #7, !srcloc !18
  %asmresult.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #7, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.then16.cleanup20_crit_edge, !prof !19

if.then16.cleanup20_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup20

do.end.i:                                         ; preds = %if.then16
  %asmresult1.i = extractvalue { i32, i32 } %6, 1
  %add.i = add nuw i32 %1, %and.i
  %mul.neg.i = mul nsw i32 %and.i, -8
  %sub.i = add nsw i32 %mul.neg.i, 24
  %shl.i = shl i32 -256, %sub.i
  %or.i = or i32 %asmresult1.i, %shl.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end21.i.for.cond.i_crit_edge, %do.end.i
  %c.0.i = phi i32 [ %or.i, %do.end.i ], [ %asmresult35.i, %if.end21.i.for.cond.i_crit_edge ]
  %res.0.i = phi i32 [ 0, %do.end.i ], [ %add13.i, %if.end21.i.for.cond.i_crit_edge ]
  %max.addr.0.i = phi i32 [ %add.i, %do.end.i ], [ %sub22.i, %if.end21.i.for.cond.i_crit_edge ]
  %or.i77.i = or i32 %c.0.i, 2139062143
  %add.i.i = add i32 %c.0.i, -16843009
  %neg.i.i = xor i32 %or.i77.i, -1
  %and.i78.i = and i32 %add.i.i, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78.i)
  %tobool.i.not.i = icmp eq i32 %and.i78.i, 0
  br i1 %tobool.i.not.i, label %if.end12.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  %and.i80.i = and i32 %c.0.i, 2139062143
  %add.i81.i = add nuw i32 %and.i80.i, 2139062143
  %or.i82.i = or i32 %add.i81.i, %or.i77.i
  %neg.i83.i = xor i32 %or.i82.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %or.i82.i)
  %tobool.not.i.i = icmp ugt i32 %or.i82.i, -65537
  %shr.i.i = lshr i32 %neg.i83.i, 16
  %mask.addr.0.i.i = select i1 %tobool.not.i.i, i32 %neg.i83.i, i32 %shr.i.i
  %byte.0.i.i = select i1 %tobool.not.i.i, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %mask.addr.0.i.i)
  %tobool3.not.i.i = icmp ult i32 %mask.addr.0.i.i, 256
  %add4.i.i = zext i1 %tobool3.not.i.i to i32
  %cond.i.i = sub nsw i32 1, %and.i
  %add9.i = add i32 %cond.i.i, %res.0.i
  %add10.i = add i32 %add9.i, %byte.0.i.i
  %sub11.i = add i32 %add10.i, %add4.i.i
  br label %cleanup20

if.end12.i:                                       ; preds = %for.cond.i
  %add13.i = add i32 %res.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %max.addr.0.i)
  %cmp.i = icmp ult i32 %max.addr.0.i, 5
  br i1 %cmp.i, label %for.end.i, label %if.end21.i, !prof !20

if.end21.i:                                       ; preds = %if.end12.i
  %sub22.i = add i32 %max.addr.0.i, -4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 52) #7
  %add.ptr27.i = getelementptr i8, ptr %add.ptr.i, i32 %add13.i
  %7 = tail call i32 @llvm.read_register.i32(metadata !4) #7
  %and.i.i.i73.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i73.i to ptr
  %cpu_domain.i.i74.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i74.i) #2, !srcloc !15
  %and.i75.i = and i32 %9, -13
  %or.i76.i = or i32 %and.i75.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i76.i) #7, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !17
  %10 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr27.i, i32 -1226833921) #7, !srcloc !21
  %asmresult34.i = extractvalue { i32, i32 } %10, 0
  %asmresult35.i = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #7, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !17
  %tobool37.not.i = icmp eq i32 %asmresult34.i, 0
  br i1 %tobool37.not.i, label %if.end21.i.for.cond.i_crit_edge, label %if.end21.i.cleanup20_crit_edge

if.end21.i.cleanup20_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup20

if.end21.i.for.cond.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i

for.end.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub48.i = sub i32 %add13.i, %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub48.i, i32 %count)
  %cmp49.not.i = icmp ult i32 %sub48.i, %count
  %add51.i = add i32 %count, 1
  %spec.select.i = select i1 %cmp49.not.i, i32 0, i32 %add51.i
  br label %cleanup20

cleanup20:                                        ; preds = %for.end.i, %if.end21.i.cleanup20_crit_edge, %cleanup.thread.i, %if.then16.cleanup20_crit_edge, %if.then9.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  %retval.1 = phi i32 [ 0, %entry.cleanup20_crit_edge ], [ 0, %if.then16.cleanup20_crit_edge ], [ %sub11.i, %cleanup.thread.i ], [ %spec.select.i, %for.end.i ], [ 0, %if.then9.cleanup20_crit_edge ], [ 0, %if.end21.i.cleanup20_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind readonly }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }

!llvm.asan.globals = !{!0, !2}
!llvm.named.register.sp = !{!4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_strnlen_user, !1, !"__ksymtab_strnlen_user", i1 false, i1 false}
!1 = !{!"../lib/strnlen_user.c", i32 120, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/strnlen_user.c", i32 37, i32 2}
!4 = !{!"sp"}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 4000000, i32 4001}
!14 = !{i64 2153318542, i64 2153318567}
!15 = !{i64 2994989}
!16 = !{i64 2995186}
!17 = !{i64 2150480419}
!18 = !{i64 2153282278, i64 2153282588, i64 2153282902, i64 2153283216}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2153314341, i64 2153314651, i64 2153314965, i64 2153315279}
