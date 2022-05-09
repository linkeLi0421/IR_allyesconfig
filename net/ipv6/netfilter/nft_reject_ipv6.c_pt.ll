; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter/nft_reject_ipv6.c_pt.bc'
source_filename = "../net/ipv6/netfilter/nft_reject_ipv6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.28 }
%union.anon.28 = type { i32 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.nft_reject = type { i8, i8, [2 x i8] }

@nft_reject_ipv6_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_reject_ipv6_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_reject_policy, i32 2, i8 10, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_reject_ipv6__541_70_nft_reject_ipv6_module_init6 = internal global ptr @nft_reject_ipv6_module_init, section ".initcall6.init", align 4
@__exitcall_nft_reject_ipv6_module_exit = internal global ptr @nft_reject_ipv6_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file542 = internal constant [56 x i8] c"nft_reject_ipv6.file=net/ipv6/netfilter/nft_reject_ipv6\00", section ".modinfo", align 1
@__UNIQUE_ID_license543 = internal constant [28 x i8] c"nft_reject_ipv6.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author544 = internal constant [57 x i8] c"nft_reject_ipv6.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias545 = internal constant [41 x i8] c"nft_reject_ipv6.alias=nft-expr-10-reject\00", section ".modinfo", align 1
@__UNIQUE_ID_description546 = internal constant [63 x i8] c"nft_reject_ipv6.description=IPv6 packet rejection for nftables\00", section ".modinfo", align 1
@nft_reject_ipv6_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_reject_ipv6_eval, ptr null, i32 16, ptr @nft_reject_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_reject_dump, ptr @nft_reject_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_reject_ipv6_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reject\00", [25 x i8] zeroinitializer }, align 32
@nft_reject_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"nft_reject_ipv6_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 42, i32 34 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [40 x i8] c"../net/ipv6/netfilter/nft_reject_ipv6.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 53, i32 11 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias545, ptr @__UNIQUE_ID_author544, ptr @__UNIQUE_ID_description546, ptr @__UNIQUE_ID_file542, ptr @__UNIQUE_ID_license543, ptr @__exitcall_nft_reject_ipv6_module_exit, ptr @__initcall__kmod_nft_reject_ipv6__541_70_nft_reject_ipv6_module_init6, ptr @nft_reject_ipv6_module_exit, ptr @nft_reject_ipv6_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_reject_ipv6_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_reject_ipv6_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_reject_ipv6_type) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_reject_ipv6_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_reject_ipv6_type) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_reject_ipv6_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load15 = load i8, ptr %data.i, align 4
  %1 = zext i8 %bf.load15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i8 %bf.load15, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net.i, align 4
  %6 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pkt, align 4
  %icmp_code = getelementptr inbounds %struct.nft_reject, ptr %data.i, i32 0, i32 1
  %8 = ptrtoint ptr %icmp_code to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %icmp_code, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %3, align 4
  %conv.i = zext i8 %11 to i32
  tail call void @nf_send_unreach6(ptr noundef %5, ptr noundef %7, i8 noundef zeroext %9, i32 noundef %conv.i) #3
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %state.i17 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %12 = ptrtoint ptr %state.i17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state.i17, align 4
  %net.i18 = getelementptr inbounds %struct.nf_hook_state, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %net.i18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net.i18, align 4
  %sk.i = getelementptr inbounds %struct.nf_hook_state, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk.i, align 4
  %18 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pkt, align 4
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %13, align 4
  %conv.i21 = zext i8 %21 to i32
  tail call void @nf_send_reset6(ptr noundef %15, ptr noundef %17, ptr noundef %19, i32 noundef %conv.i21) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %regs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_reject_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_reject_dump(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_reject_validate(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_send_unreach6(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_send_reset6(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__initcall__kmod_nft_reject_ipv6__541_70_nft_reject_ipv6_module_init6, !1, !"__initcall__kmod_nft_reject_ipv6__541_70_nft_reject_ipv6_module_init6", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter/nft_reject_ipv6.c", i32 70, i32 1}
!2 = !{ptr @__exitcall_nft_reject_ipv6_module_exit, !3, !"__exitcall_nft_reject_ipv6_module_exit", i1 false, i1 false}
!3 = !{!"../net/ipv6/netfilter/nft_reject_ipv6.c", i32 71, i32 1}
!4 = !{ptr @__UNIQUE_ID_file542, !5, !"__UNIQUE_ID_file542", i1 false, i1 false}
!5 = !{!"../net/ipv6/netfilter/nft_reject_ipv6.c", i32 73, i32 1}
!6 = !{ptr @__UNIQUE_ID_license543, !5, !"__UNIQUE_ID_license543", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author544, !8, !"__UNIQUE_ID_author544", i1 false, i1 false}
!8 = !{!"../net/ipv6/netfilter/nft_reject_ipv6.c", i32 74, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias545, !10, !"__UNIQUE_ID_alias545", i1 false, i1 false}
!10 = !{!"../net/ipv6/netfilter/nft_reject_ipv6.c", i32 75, i32 1}
!11 = !{ptr @__UNIQUE_ID_description546, !12, !"__UNIQUE_ID_description546", i1 false, i1 false}
!12 = !{!"../net/ipv6/netfilter/nft_reject_ipv6.c", i32 76, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/ipv6/netfilter/nft_reject_ipv6.c", i32 53, i32 11}
!15 = !{ptr @nft_reject_ipv6_type, !16, !"nft_reject_ipv6_type", i1 false, i1 false}
!16 = !{!"../net/ipv6/netfilter/nft_reject_ipv6.c", i32 51, i32 29}
!17 = !{ptr @nft_reject_ipv6_ops, !18, !"nft_reject_ipv6_ops", i1 false, i1 false}
!18 = !{!"../net/ipv6/netfilter/nft_reject_ipv6.c", i32 42, i32 34}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
