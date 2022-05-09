; ModuleID = '/llk/IR_all_yes/sound/core/memory.c_pt.bc'
source_filename = "../sound/core/memory.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+copy_to_user_fromio\22, \22a\22\09"
module asm "\09.weak\09__crc_copy_to_user_fromio\09\09\09\09"
module asm "\09.long\09__crc_copy_to_user_fromio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_copy_to_user_fromio:\09\09\09\09\09"
module asm "\09.asciz \09\22copy_to_user_fromio\22\09\09\09\09\09"
module asm "__kstrtabns_copy_to_user_fromio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+copy_from_user_toio\22, \22a\22\09"
module asm "\09.weak\09__crc_copy_from_user_toio\09\09\09\09"
module asm "\09.long\09__crc_copy_from_user_toio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_copy_from_user_toio:\09\09\09\09\09"
module asm "\09.asciz \09\22copy_from_user_toio\22\09\09\09\09\09"
module asm "__kstrtabns_copy_from_user_toio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_copy_to_user_fromio = external dso_local constant [0 x i8], align 1
@__kstrtabns_copy_to_user_fromio = external dso_local constant [0 x i8], align 1
@__ksymtab_copy_to_user_fromio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @copy_to_user_fromio to i32), ptr @__kstrtab_copy_to_user_fromio, ptr @__kstrtabns_copy_to_user_fromio }, section "___ksymtab+copy_to_user_fromio", align 4
@__kstrtab_copy_from_user_toio = external dso_local constant [0 x i8], align 1
@__kstrtabns_copy_from_user_toio = external dso_local constant [0 x i8], align 1
@__ksymtab_copy_from_user_toio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @copy_from_user_toio to i32), ptr @__kstrtab_copy_from_user_toio, ptr @__kstrtabns_copy_from_user_toio }, section "___ksymtab+copy_from_user_toio", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [23 x i8] c"../sound/core/memory.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 174, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_copy_from_user_toio, ptr @__ksymtab_copy_to_user_fromio, ptr @.str.2], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @copy_to_user_fromio(ptr noundef %dst, ptr noundef %src, i32 noundef %count) #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #5
  %0 = call ptr @memset(ptr %buf, i32 255, i32 256)
  br label %while.cond

while.cond:                                       ; preds = %copy_to_user.exit.while.cond_crit_edge, %entry
  %dst.addr.0 = phi ptr [ %dst, %entry ], [ %add.ptr, %copy_to_user.exit.while.cond_crit_edge ]
  %src.addr.0 = phi ptr [ %src, %entry ], [ %add.ptr5, %copy_to_user.exit.while.cond_crit_edge ]
  %count.addr.0 = phi i32 [ %count, %entry ], [ %sub, %copy_to_user.exit.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.0)
  %tobool.not = icmp eq i32 %count.addr.0, 0
  br i1 %tobool.not, label %while.cond.cleanup6_crit_edge, label %while.body

while.cond.cleanup6_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup6

while.body:                                       ; preds = %while.cond
  %1 = call i32 @llvm.umin.i32(i32 %count.addr.0, i32 256)
  call void @mmiocpy(ptr noundef nonnull %buf, ptr noundef %src.addr.0, i32 noundef %1) #5
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %1, i1 noundef zeroext true) #5
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #5
  %call.i.i = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %while.body.cleanup6_crit_edge, label %if.end.i.i

while.body.cleanup6_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup6

if.end.i.i:                                       ; preds = %while.body
  %2 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %dst.addr.0, i32 %1, i32 -1226833920) #8, !srcloc !21
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup6_crit_edge

if.end.i.i.cleanup6_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup6

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %buf, i32 noundef %1) #5
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %dst.addr.0, ptr noundef nonnull %buf, i32 noundef %1) #5
  %tobool2.not = icmp eq i32 %call.i12.i.i, 0
  %sub = sub i32 %count.addr.0, %1
  %add.ptr = getelementptr i8, ptr %dst.addr.0, i32 %1
  %add.ptr5 = getelementptr i8, ptr %src.addr.0, i32 %1
  br i1 %tobool2.not, label %copy_to_user.exit.while.cond_crit_edge, label %copy_to_user.exit.cleanup6_crit_edge

copy_to_user.exit.cleanup6_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup6

copy_to_user.exit.while.cond_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

cleanup6:                                         ; preds = %copy_to_user.exit.cleanup6_crit_edge, %if.end.i.i.cleanup6_crit_edge, %while.body.cleanup6_crit_edge, %while.cond.cleanup6_crit_edge
  %retval.2 = phi i32 [ -14, %copy_to_user.exit.cleanup6_crit_edge ], [ 0, %while.cond.cleanup6_crit_edge ], [ -14, %while.body.cleanup6_crit_edge ], [ -14, %if.end.i.i.cleanup6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #5
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @copy_from_user_toio(ptr noundef %dst, ptr noundef %src, i32 noundef %count) #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #5
  %0 = call ptr @memset(ptr %buf, i32 255, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not22 = icmp eq i32 %count, 0
  br i1 %tobool.not22, label %entry.cleanup6_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup6

while.body:                                       ; preds = %if.end3.while.body_crit_edge, %entry.while.body_crit_edge
  %count.addr.025 = phi i32 [ %sub, %if.end3.while.body_crit_edge ], [ %count, %entry.while.body_crit_edge ]
  %src.addr.024 = phi ptr [ %add.ptr5, %if.end3.while.body_crit_edge ], [ %src, %entry.while.body_crit_edge ]
  %dst.addr.023 = phi ptr [ %add.ptr, %if.end3.while.body_crit_edge ], [ %dst, %entry.while.body_crit_edge ]
  %1 = call i32 @llvm.umin.i32(i32 %count.addr.025, i32 256)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %1, i1 noundef zeroext false) #5
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #5
  %call.i.i = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %while.body.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

while.body.if.then11.i.i_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %while.body
  %2 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %src.addr.024, i32 %1, i32 -1226833920) #8, !srcloc !22
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !23

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %1) #5
  %3 = call i32 @llvm.read_register.i32(metadata !11) #5
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !24
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #5, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %src.addr.024, i32 noundef %1) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #5, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !23

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %while.body.if.then11.i.i_crit_edge
  %res.0.i.i18 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %1, %while.body.if.then11.i.i_crit_edge ], [ %1, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %1, %res.0.i.i18
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i18)
  br label %cleanup6

if.end3:                                          ; preds = %if.end.i.i
  call void @mmiocpy(ptr noundef %dst.addr.023, ptr noundef nonnull %buf, i32 noundef %1) #5
  %sub = sub i32 %count.addr.025, %1
  %add.ptr = getelementptr i8, ptr %dst.addr.023, i32 %1
  %add.ptr5 = getelementptr i8, ptr %src.addr.024, i32 %1
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end3.cleanup6_crit_edge, label %if.end3.while.body_crit_edge

if.end3.while.body_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end3.cleanup6_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup6

cleanup6:                                         ; preds = %if.end3.cleanup6_crit_edge, %if.then11.i.i, %entry.cleanup6_crit_edge
  %retval.2 = phi i32 [ -14, %if.then11.i.i ], [ 0, %entry.cleanup6_crit_edge ], [ 0, %if.end3.cleanup6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #5
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9}
!llvm.named.register.sp = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__ksymtab_copy_to_user_fromio, !1, !"__ksymtab_copy_to_user_fromio", i1 false, i1 false}
!1 = !{!"../sound/core/memory.c", i32 43, i32 1}
!2 = !{ptr @__ksymtab_copy_from_user_toio, !3, !"__ksymtab_copy_from_user_toio", i1 false, i1 false}
!3 = !{!"../sound/core/memory.c", i32 75, i32 1}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!6 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!11 = !{!"sp"}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2150590120, i64 2150590145}
!22 = !{i64 2150589439, i64 2150589464}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 3084994}
!25 = !{i64 3085191}
!26 = !{i64 2150570424}
