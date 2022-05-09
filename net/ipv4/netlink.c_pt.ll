; ModuleID = '/llk/IR_all_yes/net/ipv4/netlink.c_pt.bc'
source_filename = "../net/ipv4/netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rtm_getroute_parse_ip_proto\22, \22a\22\09"
module asm "\09.weak\09__crc_rtm_getroute_parse_ip_proto\09\09\09\09"
module asm "\09.long\09__crc_rtm_getroute_parse_ip_proto\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtm_getroute_parse_ip_proto:\09\09\09\09\09"
module asm "\09.asciz \09\22rtm_getroute_parse_ip_proto\22\09\09\09\09\09"
module asm "__kstrtabns_rtm_getroute_parse_ip_proto:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@rtm_getroute_parse_ip_proto.__msg = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unsupported ip proto\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_rtm_getroute_parse_ip_proto = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtm_getroute_parse_ip_proto = external dso_local constant [0 x i8], align 1
@__ksymtab_rtm_getroute_parse_ip_proto = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtm_getroute_parse_ip_proto to i32), ptr @__kstrtab_rtm_getroute_parse_ip_proto, ptr @__kstrtabns_rtm_getroute_parse_ip_proto }, section "___ksymtab_gpl+rtm_getroute_parse_ip_proto", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 6, i64 17, i64 58]
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.2 = private constant [22 x i8] c"../net/ipv4/netlink.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 30, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_rtm_getroute_parse_ip_proto, ptr @rtm_getroute_parse_ip_proto.__msg], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtm_getroute_parse_ip_proto.__msg to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtm_getroute_parse_ip_proto(ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %ip_proto, i8 noundef zeroext %family, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr.i.i, align 1
  %2 = ptrtoint ptr %ip_proto to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %ip_proto, align 1
  %3 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.do.body_crit_edge [
    i8 6, label %entry.return_crit_edge
    i8 17, label %entry.return_crit_edge15
    i8 1, label %sw.bb1
    i8 58, label %sw.bb4
  ]

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %family)
  %cmp.not = icmp eq i8 %family, 2
  br i1 %cmp.not, label %sw.bb1.return_crit_edge, label %sw.bb1.do.body_crit_edge

sw.bb1.do.body_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %family)
  %cmp6.not = icmp eq i8 %family, 10
  br i1 %cmp6.not, label %sw.bb4.return_crit_edge, label %sw.bb4.do.body_crit_edge

sw.bb4.do.body_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

sw.bb4.return_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

do.body:                                          ; preds = %sw.bb4.do.body_crit_edge, %sw.bb1.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_getroute_parse_ip_proto.__msg) #2
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.return_crit_edge, label %if.then10

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rtm_getroute_parse_ip_proto.__msg, ptr %extack, align 4
  br label %return

return:                                           ; preds = %if.then10, %do.body.return_crit_edge, %sw.bb4.return_crit_edge, %sw.bb1.return_crit_edge, %entry.return_crit_edge, %entry.return_crit_edge15
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %entry.return_crit_edge15 ], [ 0, %sw.bb1.return_crit_edge ], [ 0, %sw.bb4.return_crit_edge ], [ -95, %if.then10 ], [ -95, %do.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @rtm_getroute_parse_ip_proto.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../net/ipv4/netlink.c", i32 30, i32 2}
!2 = !{ptr @__ksymtab_rtm_getroute_parse_ip_proto, !3, !"__ksymtab_rtm_getroute_parse_ip_proto", i1 false, i1 false}
!3 = !{!"../net/ipv4/netlink.c", i32 33, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
