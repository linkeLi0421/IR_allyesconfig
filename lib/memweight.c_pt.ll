; ModuleID = '/llk/IR_all_yes/lib/memweight.c_pt.bc'
source_filename = "../lib/memweight.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+memweight\22, \22a\22\09"
module asm "\09.weak\09__crc_memweight\09\09\09\09"
module asm "\09.long\09__crc_memweight\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memweight:\09\09\09\09\09"
module asm "\09.asciz \09\22memweight\22\09\09\09\09\09"
module asm "__kstrtabns_memweight:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_memweight = external dso_local constant [0 x i8], align 1
@__kstrtabns_memweight = external dso_local constant [0 x i8], align 1
@__ksymtab_memweight = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memweight to i32), ptr @__kstrtab_memweight, ptr @__kstrtabns_memweight }, section "___ksymtab+memweight", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_memweight], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memweight(ptr noundef %ptr, i32 noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %cmp.not208 = icmp eq i32 %bytes, 0
  %0 = ptrtoint ptr %ptr to i32
  %rem209 = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem209)
  %tobool.not210 = icmp eq i32 %rem209, 0
  %or.cond211 = or i1 %cmp.not208, %tobool.not210
  br i1 %or.cond211, label %entry.for.end_crit_edge, label %cond.false

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end

cond.false:                                       ; preds = %entry
  %1 = ptrtoint ptr %ptr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ptr, align 1
  %conv58 = zext i8 %2 to i32
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv58) #4
  %dec = add i32 %bytes, -1
  %incdec.ptr = getelementptr i8, ptr %ptr, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.not = icmp eq i32 %dec, 0
  %3 = ptrtoint ptr %incdec.ptr to i32
  %rem = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %or.cond = or i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %cond.false.for.end_crit_edge, label %cond.false.1

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end

cond.false.1:                                     ; preds = %cond.false
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %incdec.ptr, align 1
  %conv58.1 = zext i8 %5 to i32
  %call.i.1 = tail call i32 @__sw_hweight8(i32 noundef %conv58.1) #4
  %add59.1 = add i32 %call.i.1, %call.i
  %dec.1 = add i32 %bytes, -2
  %incdec.ptr.1 = getelementptr i8, ptr %ptr, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %cmp.not.1 = icmp eq i32 %dec.1, 0
  %6 = ptrtoint ptr %incdec.ptr.1 to i32
  %rem.1 = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.1)
  %tobool.not.1 = icmp eq i32 %rem.1, 0
  %or.cond.1 = or i1 %cmp.not.1, %tobool.not.1
  br i1 %or.cond.1, label %cond.false.1.for.end_crit_edge, label %cond.false.2

cond.false.1.for.end_crit_edge:                   ; preds = %cond.false.1
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end

cond.false.2:                                     ; preds = %cond.false.1
  %7 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr.1, align 1
  %conv58.2 = zext i8 %8 to i32
  %call.i.2 = tail call i32 @__sw_hweight8(i32 noundef %conv58.2) #4
  %add59.2 = add i32 %call.i.2, %add59.1
  %dec.2 = add i32 %bytes, -3
  %incdec.ptr.2 = getelementptr i8, ptr %ptr, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.2)
  %cmp.not.2 = icmp eq i32 %dec.2, 0
  %9 = ptrtoint ptr %incdec.ptr.2 to i32
  %rem.2 = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.2)
  %tobool.not.2 = icmp eq i32 %rem.2, 0
  %or.cond.2 = or i1 %cmp.not.2, %tobool.not.2
  br i1 %or.cond.2, label %cond.false.2.for.end_crit_edge, label %cond.false.3

cond.false.2.for.end_crit_edge:                   ; preds = %cond.false.2
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end

cond.false.3:                                     ; preds = %cond.false.2
  call void @__sanitizer_cov_trace_pc() #3
  %10 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %incdec.ptr.2, align 1
  %conv58.3 = zext i8 %11 to i32
  %call.i.3 = tail call i32 @__sw_hweight8(i32 noundef %conv58.3) #4
  %add59.3 = add i32 %call.i.3, %add59.2
  %dec.3 = add i32 %bytes, -4
  %incdec.ptr.3 = getelementptr i8, ptr %ptr, i32 4
  br label %for.end

for.end:                                          ; preds = %cond.false.3, %cond.false.2.for.end_crit_edge, %cond.false.1.for.end_crit_edge, %cond.false.for.end_crit_edge, %entry.for.end_crit_edge
  %bytes.addr.0.lcssa = phi i32 [ %bytes, %entry.for.end_crit_edge ], [ %dec, %cond.false.for.end_crit_edge ], [ %dec.1, %cond.false.1.for.end_crit_edge ], [ %dec.2, %cond.false.2.for.end_crit_edge ], [ %dec.3, %cond.false.3 ]
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call.i, %cond.false.for.end_crit_edge ], [ %add59.1, %cond.false.1.for.end_crit_edge ], [ %add59.2, %cond.false.2.for.end_crit_edge ], [ %add59.3, %cond.false.3 ]
  %bitmap.0.lcssa = phi ptr [ %ptr, %entry.for.end_crit_edge ], [ %incdec.ptr, %cond.false.for.end_crit_edge ], [ %incdec.ptr.1, %cond.false.1.for.end_crit_edge ], [ %incdec.ptr.2, %cond.false.2.for.end_crit_edge ], [ %incdec.ptr.3, %cond.false.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bytes.addr.0.lcssa)
  %tobool60.not = icmp ult i32 %bytes.addr.0.lcssa, 4
  br i1 %tobool60.not, label %for.end.if.end79_crit_edge, label %do.body

for.end.if.end79_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end79

do.body:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435451, i32 %bytes.addr.0.lcssa)
  %cmp61 = icmp ugt i32 %bytes.addr.0.lcssa, 268435451
  br i1 %cmp61, label %do.body69, label %if.end.i, !prof !10

do.body69:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #3
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/memweight.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 23, 0\0A.popsection", ""() #4, !srcloc !11
  unreachable

if.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #3
  %12 = shl nuw nsw i32 %bytes.addr.0.lcssa, 3
  %mul = and i32 %12, -32
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %bitmap.0.lcssa, i32 noundef %mul) #4
  %add76 = add i32 %call4.i, %ret.0.lcssa
  %mul77 = and i32 %bytes.addr.0.lcssa, -4
  %sub = and i32 %bytes.addr.0.lcssa, 3
  %add.ptr = getelementptr i8, ptr %bitmap.0.lcssa, i32 %mul77
  br label %if.end79

if.end79:                                         ; preds = %if.end.i, %for.end.if.end79_crit_edge
  %bytes.addr.1 = phi i32 [ %sub, %if.end.i ], [ %bytes.addr.0.lcssa, %for.end.if.end79_crit_edge ]
  %ret.1 = phi i32 [ %add76, %if.end.i ], [ %ret.0.lcssa, %for.end.if.end79_crit_edge ]
  %bitmap.1 = phi ptr [ %add.ptr, %if.end.i ], [ %bitmap.0.lcssa, %for.end.if.end79_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.addr.1)
  %cmp81.not217 = icmp eq i32 %bytes.addr.1, 0
  br i1 %cmp81.not217, label %if.end79.for.end157_crit_edge, label %if.end79.cond.false148_crit_edge

if.end79.cond.false148_crit_edge:                 ; preds = %if.end79
  br label %cond.false148

if.end79.for.end157_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end157

cond.false148:                                    ; preds = %cond.false148.cond.false148_crit_edge, %if.end79.cond.false148_crit_edge
  %bitmap.2220 = phi ptr [ %incdec.ptr156, %cond.false148.cond.false148_crit_edge ], [ %bitmap.1, %if.end79.cond.false148_crit_edge ]
  %ret.2219 = phi i32 [ %add153, %cond.false148.cond.false148_crit_edge ], [ %ret.1, %if.end79.cond.false148_crit_edge ]
  %bytes.addr.2218 = phi i32 [ %dec155, %cond.false148.cond.false148_crit_edge ], [ %bytes.addr.1, %if.end79.cond.false148_crit_edge ]
  %13 = ptrtoint ptr %bitmap.2220 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bitmap.2220, align 1
  %conv149 = zext i8 %14 to i32
  %call.i207 = tail call i32 @__sw_hweight8(i32 noundef %conv149) #4
  %add153 = add i32 %call.i207, %ret.2219
  %dec155 = add i32 %bytes.addr.2218, -1
  %incdec.ptr156 = getelementptr i8, ptr %bitmap.2220, i32 1
  %cmp81.not = icmp eq i32 %dec155, 0
  br i1 %cmp81.not, label %cond.false148.for.end157_crit_edge, label %cond.false148.cond.false148_crit_edge

cond.false148.cond.false148_crit_edge:            ; preds = %cond.false148
  call void @__sanitizer_cov_trace_pc() #3
  br label %cond.false148

cond.false148.for.end157_crit_edge:               ; preds = %cond.false148
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end157

for.end157:                                       ; preds = %cond.false148.for.end157_crit_edge, %if.end79.for.end157_crit_edge
  %ret.2.lcssa = phi i32 [ %ret.1, %if.end79.for.end157_crit_edge ], [ %add153, %cond.false148.for.end157_crit_edge ]
  ret i32 %ret.2.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind uwtable(sync) }
attributes #3 = { nomerge }
attributes #4 = { nounwind }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{ptr @__ksymtab_memweight, !1, !"__ksymtab_memweight", i1 false, i1 false}
!1 = !{!"../lib/memweight.c", i32 39, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2148713628, i64 2148714107, i64 2148713665, i64 2148713721, i64 2148713755, i64 2148713779, i64 2148713820, i64 2148713841, i64 2148713869, i64 2148713903}
