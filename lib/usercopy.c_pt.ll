; ModuleID = '/llk/IR_all_yes/lib/usercopy.c_pt.bc'
source_filename = "../lib/usercopy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+check_zeroed_user\22, \22a\22\09"
module asm "\09.weak\09__crc_check_zeroed_user\09\09\09\09"
module asm "\09.long\09__crc_check_zeroed_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_check_zeroed_user:\09\09\09\09\09"
module asm "\09.asciz \09\22check_zeroed_user\22\09\09\09\09\09"
module asm "__kstrtabns_check_zeroed_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lib/usercopy.c\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_check_zeroed_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_check_zeroed_user = external dso_local constant [0 x i8], align 1
@__ksymtab_check_zeroed_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @check_zeroed_user to i32), ptr @__kstrtab_check_zeroed_user, ptr @__kstrtabns_check_zeroed_user }, section "___ksymtab+check_zeroed_user", align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [18 x i8] c"../lib/usercopy.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 68, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_check_zeroed_user, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @check_zeroed_user(ptr noundef %from, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %0 = ptrtoint ptr %from to i32
  %rem = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !13

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %idx.neg = sub nsw i32 0, %rem
  %add.ptr = getelementptr i8, ptr %from, i32 %idx.neg
  %add = add i32 %rem, %size
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %add, i32 -1226833920) #5, !srcloc !14
  %asmresult = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp3 = icmp eq i32 %asmresult, 0
  br i1 %cmp3, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 68) #6
  %2 = tail call i32 @llvm.read_register.i32(metadata !4) #6
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #2, !srcloc !15
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !17
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr, i32 -1226833921) #6, !srcloc !18
  %asmresult7 = extractvalue { i32, i32 } %5, 0
  %asmresult8 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult7)
  %tobool10.not = icmp eq i32 %asmresult7, 0
  br i1 %tobool10.not, label %do.end, label %do.body.cleanup_crit_edge, !prof !19

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool19.not = icmp eq i32 %rem, 0
  br i1 %tobool19.not, label %do.end.while.cond.preheader_crit_edge, label %if.then20

do.end.while.cond.preheader_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond.preheader

if.then20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  %mul.neg = mul nsw i32 %rem, -8
  %sub = add nsw i32 %mul.neg, 24
  %shl = shl nsw i32 -256, %sub
  %neg = xor i32 %shl, -1
  %and = and i32 %asmresult8, %neg
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then20, %do.end.while.cond.preheader_crit_edge
  %val.1.ph = phi i32 [ %asmresult8, %do.end.while.cond.preheader_crit_edge ], [ %and, %if.then20 ]
  br label %while.cond

while.cond:                                       ; preds = %if.end31.while.cond_crit_edge, %while.cond.preheader
  %val.1 = phi i32 [ %asmresult45, %if.end31.while.cond_crit_edge ], [ %val.1.ph, %while.cond.preheader ]
  %size.addr.0 = phi i32 [ %sub33, %if.end31.while.cond_crit_edge ], [ %add, %while.cond.preheader ]
  %from.addr.0 = phi ptr [ %add.ptr32, %if.end31.while.cond_crit_edge ], [ %add.ptr, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size.addr.0)
  %cmp22 = icmp ugt i32 %size.addr.0, 4
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.1)
  %tobool23.not = icmp eq i32 %val.1, 0
  br i1 %tobool23.not, label %if.end31, label %while.body.do.end67_crit_edge, !prof !19

while.body.do.end67_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end67

if.end31:                                         ; preds = %while.body
  %add.ptr32 = getelementptr i8, ptr %from.addr.0, i32 4
  %sub33 = add i32 %size.addr.0, -4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 79) #6
  %6 = tail call i32 @llvm.read_register.i32(metadata !4) #6
  %and.i.i.i90 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i90 to ptr
  %cpu_domain.i.i91 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i91) #2, !srcloc !15
  %and.i92 = and i32 %8, -13
  %or.i93 = or i32 %and.i92, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i93) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !17
  %9 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr32, i32 -1226833921) #6, !srcloc !20
  %asmresult44 = extractvalue { i32, i32 } %9, 0
  %asmresult45 = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !17
  %tobool47.not = icmp eq i32 %asmresult44, 0
  br i1 %tobool47.not, label %if.end31.while.cond_crit_edge, label %if.end31.cleanup_crit_edge, !prof !19

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end31.while.cond_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size.addr.0)
  %cmp58.not = icmp eq i32 %size.addr.0, 4
  br i1 %cmp58.not, label %while.end.do.end67_crit_edge, label %if.then59

while.end.do.end67_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end67

if.then59:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  %mul60.neg = mul nsw i32 %size.addr.0, -8
  %sub61 = add nsw i32 %mul60.neg, 24
  %shl62 = shl i32 -256, %sub61
  %and63 = and i32 %shl62, %val.1
  br label %do.end67

do.end67:                                         ; preds = %if.then59, %while.end.do.end67_crit_edge, %while.body.do.end67_crit_edge
  %val.2 = phi i32 [ %and63, %if.then59 ], [ %val.1, %while.end.do.end67_crit_edge ], [ 1, %while.body.do.end67_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.2)
  %cmp68 = icmp eq i32 %val.2, 0
  %conv = zext i1 %cmp68 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end67, %if.end31.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %do.end67 ], [ 1, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %do.body.cleanup_crit_edge ], [ -14, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nomerge }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.asan.globals = !{!0, !2}
!llvm.named.register.sp = !{!4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/usercopy.c", i32 68, i32 2}
!2 = !{ptr @__ksymtab_check_zeroed_user, !3, !"__ksymtab_check_zeroed_user", i1 false, i1 false}
!3 = !{!"../lib/usercopy.c", i32 92, i32 1}
!4 = !{!"sp"}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2150505250, i64 2150505275}
!15 = !{i64 2993783}
!16 = !{i64 2993980}
!17 = !{i64 2150479213}
!18 = !{i64 2150538359, i64 2150538669, i64 2150538983, i64 2150539297}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2150570381, i64 2150570691, i64 2150571005, i64 2150571319}
