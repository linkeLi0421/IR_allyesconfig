; ModuleID = '/llk/IR_all_yes/lib/raid6/recov.c_pt.bc'
source_filename = "../lib/raid6/recov.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.raid6_recov_calls = type { ptr, ptr, ptr, ptr, i32 }
%struct.raid6_calls = type { ptr, ptr, ptr, ptr, i32 }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"intx1\00", [26 x i8] zeroinitializer }, align 32
@raid6_recov_intx1 = dso_local constant { %struct.raid6_recov_calls, [44 x i8] } { %struct.raid6_recov_calls { ptr @raid6_2data_recov_intx1, ptr @raid6_datap_recov_intx1, ptr null, ptr @.str, i32 0 }, [44 x i8] zeroinitializer }, align 32
@raid6_empty_zero_page = external dso_local constant [4096 x i8], align 1
@raid6_call = external dso_local local_unnamed_addr global %struct.raid6_calls, align 4
@raid6_gfmul = external dso_local local_unnamed_addr constant [256 x [256 x i8]], align 256
@raid6_gfexi = external dso_local local_unnamed_addr constant [256 x i8], align 256
@raid6_gfinv = external dso_local local_unnamed_addr constant [256 x i8], align 256
@raid6_gfexp = external dso_local local_unnamed_addr constant [256 x i8], align 256
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 100, i32 10 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"raid6_recov_intx1\00", align 1
@___asan_gen_.5 = private constant [21 x i8] c"../lib/raid6/recov.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 96, i32 32 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @raid6_recov_intx1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid6_recov_intx1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid6_2data_recov_intx1(i32 noundef %disks, i32 noundef %bytes, i32 noundef %faila, i32 noundef %failb, ptr noundef %ptrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %disks, -2
  %arrayidx = getelementptr ptr, ptr %ptrs, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %sub1 = add i32 %disks, -1
  %arrayidx2 = getelementptr ptr, ptr %ptrs, i32 %sub1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr ptr, ptr %ptrs, i32 %faila
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  store ptr @raid6_empty_zero_page, ptr %arrayidx3, align 4
  store ptr %5, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr ptr, ptr %ptrs, i32 %failb
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  store ptr @raid6_empty_zero_page, ptr %arrayidx7, align 4
  store ptr %7, ptr %arrayidx2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @raid6_call to i32))
  %8 = load ptr, ptr @raid6_call, align 4
  tail call void %8(i32 noundef %disks, i32 noundef %bytes, ptr noundef %ptrs) #1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %5, ptr %arrayidx3, align 4
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %arrayidx7, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %arrayidx2, align 4
  %sub17 = sub i32 %failb, %faila
  %arrayidx18 = getelementptr [256 x i8], ptr @raid6_gfexi, i32 0, i32 %sub17
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx18, align 1
  %idxprom = zext i8 %14 to i32
  %arrayidx19 = getelementptr [256 x [256 x i8]], ptr @raid6_gfmul, i32 0, i32 %idxprom
  %arrayidx20 = getelementptr [256 x i8], ptr @raid6_gfexp, i32 0, i32 %faila
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx20, align 1
  %arrayidx21 = getelementptr [256 x i8], ptr @raid6_gfexp, i32 0, i32 %failb
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx21, align 1
  %xor86 = xor i8 %18, %16
  %xor = zext i8 %xor86 to i32
  %arrayidx23 = getelementptr [256 x i8], ptr @raid6_gfinv, i32 0, i32 %xor
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx23, align 1
  %idxprom24 = zext i8 %20 to i32
  %arrayidx25 = getelementptr [256 x [256 x i8]], ptr @raid6_gfmul, i32 0, i32 %idxprom24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool.not91 = icmp eq i32 %bytes, 0
  br i1 %tobool.not91, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %dq.096 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %7, %entry.while.body_crit_edge ]
  %dp.095 = phi ptr [ %incdec.ptr45, %while.body.while.body_crit_edge ], [ %5, %entry.while.body_crit_edge ]
  %q.094 = phi ptr [ %incdec.ptr47, %while.body.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %p.093 = phi ptr [ %incdec.ptr46, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %bytes.addr.092 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %bytes, %entry.while.body_crit_edge ]
  %dec = add i32 %bytes.addr.092, -1
  %21 = ptrtoint ptr %p.093 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %p.093, align 1
  %23 = ptrtoint ptr %dp.095 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dp.095, align 1
  %xor2987 = xor i8 %24, %22
  %25 = ptrtoint ptr %q.094 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %q.094, align 1
  %27 = ptrtoint ptr %dq.096 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dq.096, align 1
  %xor3388 = xor i8 %28, %26
  %xor33 = zext i8 %xor3388 to i32
  %arrayidx34 = getelementptr i8, ptr %arrayidx25, i32 %xor33
  %29 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx34, align 1
  %idxprom35 = zext i8 %xor2987 to i32
  %arrayidx36 = getelementptr i8, ptr %arrayidx19, i32 %idxprom35
  %31 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx36, align 1
  %xor3989 = xor i8 %32, %30
  %incdec.ptr = getelementptr i8, ptr %dq.096, i32 1
  store i8 %xor3989, ptr %dq.096, align 1
  %xor4390 = xor i8 %xor3989, %xor2987
  %incdec.ptr45 = getelementptr i8, ptr %dp.095, i32 1
  store i8 %xor4390, ptr %dp.095, align 1
  %incdec.ptr46 = getelementptr i8, ptr %p.093, i32 1
  %incdec.ptr47 = getelementptr i8, ptr %q.094, i32 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid6_datap_recov_intx1(i32 noundef %disks, i32 noundef %bytes, i32 noundef %faila, ptr noundef %ptrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %disks, -2
  %arrayidx = getelementptr ptr, ptr %ptrs, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %sub1 = add i32 %disks, -1
  %arrayidx2 = getelementptr ptr, ptr %ptrs, i32 %sub1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr ptr, ptr %ptrs, i32 %faila
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  store ptr @raid6_empty_zero_page, ptr %arrayidx3, align 4
  store ptr %5, ptr %arrayidx2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @raid6_call to i32))
  %6 = load ptr, ptr @raid6_call, align 4
  tail call void %6(i32 noundef %disks, i32 noundef %bytes, ptr noundef %ptrs) #1
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %arrayidx3, align 4
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %arrayidx2, align 4
  %arrayidx10 = getelementptr [256 x i8], ptr @raid6_gfexp, i32 0, i32 %faila
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx10, align 1
  %idxprom = zext i8 %10 to i32
  %arrayidx11 = getelementptr [256 x i8], ptr @raid6_gfinv, i32 0, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx11, align 1
  %idxprom12 = zext i8 %12 to i32
  %arrayidx13 = getelementptr [256 x [256 x i8]], ptr @raid6_gfmul, i32 0, i32 %idxprom12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool.not45 = icmp eq i32 %bytes, 0
  br i1 %tobool.not45, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %dq.049 = phi ptr [ %incdec.ptr21, %while.body.while.body_crit_edge ], [ %5, %entry.while.body_crit_edge ]
  %q.048 = phi ptr [ %incdec.ptr20, %while.body.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %p.047 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %bytes.addr.046 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %bytes, %entry.while.body_crit_edge ]
  %dec = add i32 %bytes.addr.046, -1
  %13 = ptrtoint ptr %q.048 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %q.048, align 1
  %15 = ptrtoint ptr %dq.049 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dq.049, align 1
  %xor43 = xor i8 %16, %14
  %xor = zext i8 %xor43 to i32
  %arrayidx15 = getelementptr i8, ptr %arrayidx13, i32 %xor
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx15, align 1
  store i8 %18, ptr %dq.049, align 1
  %incdec.ptr = getelementptr i8, ptr %p.047, i32 1
  %19 = ptrtoint ptr %p.047 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %p.047, align 1
  %xor1844 = xor i8 %20, %18
  store i8 %xor1844, ptr %p.047, align 1
  %incdec.ptr20 = getelementptr i8, ptr %q.048, i32 1
  %incdec.ptr21 = getelementptr i8, ptr %dq.049, i32 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/raid6/recov.c", i32 100, i32 10}
!2 = !{ptr @raid6_recov_intx1, !3, !"raid6_recov_intx1", i1 false, i1 false}
!3 = !{!"../lib/raid6/recov.c", i32 96, i32 32}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
