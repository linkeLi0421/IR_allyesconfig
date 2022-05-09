; ModuleID = '/llk/IR_all_yes/net/sched/em_cmp.c_pt.bc'
source_filename = "../net/sched/em_cmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tcf_ematch_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.tcf_ematch = type { ptr, i32, i32, i16, i16, ptr }
%struct.tcf_em_cmp = type { i32, i32, i16, i16 }
%struct.sk_buff = type { %union.anon.15, %union.anon.18, %union.anon.19, [48 x i8], %union.anon.20, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.22, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, ptr, %union.anon.17 }
%union.anon.17 = type { ptr }
%union.anon.18 = type { ptr }
%union.anon.19 = type { i64 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32, ptr }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.24, i32, i32, i32, i16, i16, %union.anon.26, i32, %union.anon.27, %union.anon.28, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.24 = type { i32 }
%union.anon.26 = type { i32 }
%union.anon.27 = type { i32 }
%union.anon.28 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@em_cmp_ops = internal global { %struct.tcf_ematch_ops, [60 x i8] } { %struct.tcf_ematch_ops { i32 1, i32 12, ptr null, ptr @em_cmp_match, ptr null, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @em_cmp_ops, i64 28), ptr getelementptr (i8, ptr @em_cmp_ops, i64 28) } }, [60 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file366 = internal constant [29 x i8] c"em_cmp.file=net/sched/em_cmp\00", section ".modinfo", align 1
@__UNIQUE_ID_license367 = internal constant [19 x i8] c"em_cmp.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_em_cmp__368_92_init_em_cmp6 = internal global ptr @init_em_cmp, section ".initcall6.init", align 4
@__exitcall_exit_em_cmp = internal global ptr @exit_em_cmp, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias369 = internal constant [27 x i8] c"em_cmp.alias=ematch-kind-1\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.3 = private unnamed_addr constant [11 x i8] c"em_cmp_ops\00", align 1
@___asan_gen_.4 = private constant [22 x i8] c"../net/sched/em_cmp.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 72, i32 30 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias369, ptr @__UNIQUE_ID_file366, ptr @__UNIQUE_ID_license367, ptr @__exitcall_exit_em_cmp, ptr @__initcall__kmod_em_cmp__368_92_init_em_cmp6, ptr @exit_em_cmp, ptr @em_cmp_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_cmp_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_em_cmp() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @tcf_em_unregister(ptr noundef nonnull @em_cmp_ops) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_em_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_em_cmp() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_em_register(ptr noundef nonnull @em_cmp_ops) #3
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @em_cmp_match(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %em, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.tcf_ematch, ptr %em, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = inttoptr i32 %1 to ptr
  %layer = getelementptr inbounds %struct.tcf_em_cmp, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %layer to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %layer, align 2
  %4 = lshr i16 %bf.load, 4
  %5 = and i16 %4, 15
  %conv = zext i16 %5 to i32
  %6 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv, label %entry.tcf_get_base_ptr.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb3.i
  ]

entry.tcf_get_base_ptr.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %tcf_get_base_ptr.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %9 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %10 to i32
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %conv.i.i
  br label %tcf_get_base_ptr.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %head.i7.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i7.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %13 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header.i.i, align 4
  %conv.i8.i = zext i16 %14 to i32
  %add.ptr.i9.i = getelementptr i8, ptr %12, i32 %conv.i8.i
  br label %tcf_get_base_ptr.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %head.i10.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i10.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %17 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %transport_header.i.i, align 2
  %conv.i11.i = zext i16 %18 to i32
  %add.ptr.i12.i = getelementptr i8, ptr %16, i32 %conv.i11.i
  br label %tcf_get_base_ptr.exit

tcf_get_base_ptr.exit:                            ; preds = %sw.bb3.i, %sw.bb1.i, %sw.bb.i, %entry.tcf_get_base_ptr.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i12.i, %sw.bb3.i ], [ %add.ptr.i9.i, %sw.bb1.i ], [ %add.ptr.i.i, %sw.bb.i ], [ null, %entry.tcf_get_base_ptr.exit_crit_edge ]
  %off = getelementptr inbounds %struct.tcf_em_cmp, ptr %2, i32 0, i32 2
  %19 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %off, align 4
  %conv1 = zext i16 %20 to i32
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 %conv1
  %bf.lshr3 = lshr i16 %bf.load, 12
  %bf.cast4 = zext i16 %bf.lshr3 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %bf.cast4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i, align 8
  %cmp.not.i = icmp ugt ptr %add.ptr.i, %22
  br i1 %cmp.not.i, label %tcf_get_base_ptr.exit.cleanup_crit_edge, label %land.lhs.true.i, !prof !20

tcf_get_base_ptr.exit.cleanup_crit_edge:          ; preds = %tcf_get_base_ptr.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.i:                                  ; preds = %tcf_get_base_ptr.exit
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i, align 8
  %cmp1.not.i = icmp ugt ptr %24, %add.ptr
  %cmp3.i.not = icmp ult ptr %add.ptr.i, %add.ptr
  %or.cond = select i1 %cmp1.not.i, i1 true, i1 %cmp3.i.not
  br i1 %or.cond, label %land.lhs.true.i.cleanup_crit_edge, label %if.end, !prof !21

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  %25 = zext i32 %bf.cast4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %bf.cast4, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
    i32 4, label %sw.bb22
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr, align 1
  %conv12 = zext i8 %27 to i32
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %add.ptr, align 1
  %conv15 = zext i16 %29 to i32
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %add.ptr, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb13, %sw.bb
  %val.0 = phi i32 [ %conv12, %sw.bb ], [ %conv15, %sw.bb13 ], [ %31, %sw.bb22 ]
  %mask = getelementptr inbounds %struct.tcf_em_cmp, ptr %2, i32 0, i32 1
  %32 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool28.not = icmp eq i32 %33, 0
  %and = select i1 %tobool28.not, i32 -1, i32 %33
  %spec.select = and i32 %and, %val.0
  %34 = and i16 %bf.load, 15
  %bf.cast34 = zext i16 %34 to i32
  %35 = zext i32 %bf.cast34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %bf.cast34, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.bb36
    i32 2, label %sw.bb40
    i32 1, label %sw.bb44
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb36:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %37)
  %cmp38 = icmp eq i32 %spec.select, %37
  br label %cleanup

sw.bb40:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %39)
  %cmp42 = icmp ult i32 %spec.select, %39
  br label %cleanup

sw.bb44:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %41)
  %cmp46 = icmp ugt i32 %spec.select, %41
  br label %cleanup

cleanup:                                          ; preds = %sw.bb44, %sw.bb40, %sw.bb36, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %tcf_get_base_ptr.exit.cleanup_crit_edge
  %retval.0.shrunk = phi i1 [ %cmp46, %sw.bb44 ], [ %cmp42, %sw.bb40 ], [ %cmp38, %sw.bb36 ], [ false, %if.end.cleanup_crit_edge ], [ false, %sw.epilog.cleanup_crit_edge ], [ false, %land.lhs.true.i.cleanup_crit_edge ], [ false, %tcf_get_base_ptr.exit.cleanup_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_em_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__UNIQUE_ID_file366, !1, !"__UNIQUE_ID_file366", i1 false, i1 false}
!1 = !{!"../net/sched/em_cmp.c", i32 90, i32 1}
!2 = !{ptr @__UNIQUE_ID_license367, !1, !"__UNIQUE_ID_license367", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_em_cmp__368_92_init_em_cmp6, !4, !"__initcall__kmod_em_cmp__368_92_init_em_cmp6", i1 false, i1 false}
!4 = !{!"../net/sched/em_cmp.c", i32 92, i32 1}
!5 = !{ptr @__exitcall_exit_em_cmp, !6, !"__exitcall_exit_em_cmp", i1 false, i1 false}
!6 = !{!"../net/sched/em_cmp.c", i32 93, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias369, !8, !"__UNIQUE_ID_alias369", i1 false, i1 false}
!8 = !{!"../net/sched/em_cmp.c", i32 95, i32 1}
!9 = !{ptr @em_cmp_ops, !10, !"em_cmp_ops", i1 false, i1 false}
!10 = !{!"../net/sched/em_cmp.c", i32 72, i32 30}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{!"branch_weights", i32 2002, i32 2000}
