; ModuleID = '/llk/IR_all_yes/net/bridge/netfilter/ebt_802_3.c_pt.bc'
source_filename = "../net/bridge/netfilter/ebt_802_3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.xt_action_param = type { %union.anon.141, %union.anon.142, ptr, i32, i16, i8 }
%union.anon.141 = type { ptr }
%union.anon.142 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ebt_802_3_hdr = type { [6 x i8], [6 x i8], i16, %union.anon.147 }
%union.anon.147 = type { %struct.hdr_ni }
%struct.hdr_ni = type { i8, i8, i16, [3 x i8], i16 }
%struct.ebt_802_3_info = type { i8, i16, i8, i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@ebt_802_3_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"802_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ebt_802_3_mt, ptr @ebt_802_3_mt_check, ptr null, ptr null, ptr null, i32 6, i32 0, i32 0, i16 0, i16 7 }, section ".data..read_mostly", align 4
@__initcall__kmod_ebt_802_3__476_76_ebt_802_3_init6 = internal global ptr @ebt_802_3_init, section ".initcall6.init", align 4
@__exitcall_ebt_802_3_fini = internal global ptr @ebt_802_3_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description477 = internal constant [71 x i8] c"ebt_802_3.description=Ebtables: DSAP/SSAP field and SNAP type matching\00", section ".modinfo", align 1
@__UNIQUE_ID_file478 = internal constant [46 x i8] c"ebt_802_3.file=net/bridge/netfilter/ebt_802_3\00", section ".modinfo", align 1
@__UNIQUE_ID_license479 = internal constant [22 x i8] c"ebt_802_3.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description477, ptr @__UNIQUE_ID_file478, ptr @__UNIQUE_ID_license479, ptr @__exitcall_ebt_802_3_fini, ptr @__initcall__kmod_ebt_802_3__476_76_ebt_802_3_init6, ptr @ebt_802_3_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ebt_802_3_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @xt_unregister_match(ptr noundef nonnull @ebt_802_3_mt_reg) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ebt_802_3_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @ebt_802_3_mt_reg) #3
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ebt_802_3_mt(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %5 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %llc = getelementptr inbounds %struct.ebt_802_3_hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %ctrl = getelementptr inbounds %struct.ebt_802_3_hdr, ptr %add.ptr.i.i, i32 0, i32 3, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl, align 2
  %9 = and i8 %8, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %type2 = getelementptr inbounds %struct.ebt_802_3_hdr, ptr %add.ptr.i.i, i32 0, i32 3, i32 0, i32 3, i32 2
  %type5 = getelementptr inbounds %struct.ebt_802_3_hdr, ptr %add.ptr.i.i, i32 0, i32 3, i32 0, i32 4
  %cond.in.in = select i1 %tobool.not, ptr %type5, ptr %type2
  %10 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load2_noabort(i32 %10)
  %cond.in90 = load i16, ptr %cond.in.in, align 2
  %bitmask = getelementptr inbounds %struct.ebt_802_3_info, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bitmask, align 2
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not = icmp eq i8 %13, 0
  br i1 %tobool10.not, label %entry.if.end39_crit_edge, label %if.then

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39

if.then:                                          ; preds = %entry
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %2, align 2
  %ssap = getelementptr inbounds %struct.ebt_802_3_hdr, ptr %add.ptr.i.i, i32 0, i32 3, i32 0, i32 1
  %16 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ssap, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp = icmp eq i8 %15, %17
  %invflags = getelementptr inbounds %struct.ebt_802_3_info, ptr %2, i32 0, i32 3
  %18 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %invflags, align 1
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %21 = icmp ne i8 %20, 0
  %tobool19.not = xor i1 %cmp, %21
  br i1 %tobool19.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.then
  %22 = ptrtoint ptr %llc to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %llc, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %23)
  %cmp25 = icmp eq i8 %15, %23
  %tobool36.not = xor i1 %21, %cmp25
  br i1 %tobool36.not, label %if.end.if.end39_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39

if.end39:                                         ; preds = %if.end.if.end39_crit_edge, %entry.if.end39_crit_edge
  %24 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool43.not = icmp eq i8 %24, 0
  br i1 %tobool43.not, label %if.end39.if.end74_crit_edge, label %if.then44

if.end39.if.end74_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end74

if.then44:                                        ; preds = %if.end39
  %25 = ptrtoint ptr %llc to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %llc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %26)
  %cmp48 = icmp eq i8 %26, -86
  br i1 %cmp48, label %land.lhs.true, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then44
  %ssap51 = getelementptr inbounds %struct.ebt_802_3_hdr, ptr %add.ptr.i.i, i32 0, i32 3, i32 0, i32 1
  %27 = ptrtoint ptr %ssap51 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ssap51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %28)
  %cmp53 = icmp eq i8 %28, -86
  br i1 %cmp53, label %if.end56, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end56:                                         ; preds = %land.lhs.true
  %type57 = getelementptr inbounds %struct.ebt_802_3_info, ptr %2, i32 0, i32 1
  %29 = ptrtoint ptr %type57 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %type57, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %cond.in90)
  %cmp60 = icmp eq i16 %30, %cond.in90
  %invflags62 = getelementptr inbounds %struct.ebt_802_3_info, ptr %2, i32 0, i32 3
  %31 = ptrtoint ptr %invflags62 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %invflags62, align 1
  %33 = and i8 %32, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %34 = icmp ne i8 %33, 0
  %tobool71.not = xor i1 %cmp60, %34
  br i1 %tobool71.not, label %if.end56.if.end74_crit_edge, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end56.if.end74_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end74

if.end74:                                         ; preds = %if.end56.if.end74_crit_edge, %if.end39.if.end74_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.end56.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then44.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end74 ], [ false, %if.then.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %if.then44.cleanup_crit_edge ], [ false, %if.end56.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ebt_802_3_mt_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %bitmask = getelementptr inbounds %struct.ebt_802_3_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bitmask, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %tobool.not = icmp ult i8 %3, 8
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %invflags = getelementptr inbounds %struct.ebt_802_3_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %invflags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %tobool3.not = icmp ult i8 %5, 8
  %spec.select = select i1 %tobool3.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__initcall__kmod_ebt_802_3__476_76_ebt_802_3_init6, !1, !"__initcall__kmod_ebt_802_3__476_76_ebt_802_3_init6", i1 false, i1 false}
!1 = !{!"../net/bridge/netfilter/ebt_802_3.c", i32 76, i32 1}
!2 = !{ptr @__exitcall_ebt_802_3_fini, !3, !"__exitcall_ebt_802_3_fini", i1 false, i1 false}
!3 = !{!"../net/bridge/netfilter/ebt_802_3.c", i32 77, i32 1}
!4 = !{ptr @__UNIQUE_ID_description477, !5, !"__UNIQUE_ID_description477", i1 false, i1 false}
!5 = !{!"../net/bridge/netfilter/ebt_802_3.c", i32 78, i32 1}
!6 = !{ptr @__UNIQUE_ID_file478, !7, !"__UNIQUE_ID_file478", i1 false, i1 false}
!7 = !{!"../net/bridge/netfilter/ebt_802_3.c", i32 79, i32 1}
!8 = !{ptr @__UNIQUE_ID_license479, !7, !"__UNIQUE_ID_license479", i1 false, i1 false}
!9 = !{ptr @ebt_802_3_mt_reg, !10, !"ebt_802_3_mt_reg", i1 false, i1 false}
!10 = !{!"../net/bridge/netfilter/ebt_802_3.c", i32 56, i32 24}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
