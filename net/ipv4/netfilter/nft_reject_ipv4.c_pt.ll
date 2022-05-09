; ModuleID = '/llk/IR_all_yes/net/ipv4/netfilter/nft_reject_ipv4.c_pt.bc'
source_filename = "../net/ipv4/netfilter/nft_reject_ipv4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_reject = type { i8, i8, [2 x i8] }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }

@nft_reject_ipv4_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_reject_ipv4_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_reject_policy, i32 2, i8 2, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_reject_ipv4__559_69_nft_reject_ipv4_module_init6 = internal global ptr @nft_reject_ipv4_module_init, section ".initcall6.init", align 4
@__exitcall_nft_reject_ipv4_module_exit = internal global ptr @nft_reject_ipv4_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file560 = internal constant [56 x i8] c"nft_reject_ipv4.file=net/ipv4/netfilter/nft_reject_ipv4\00", section ".modinfo", align 1
@__UNIQUE_ID_license561 = internal constant [28 x i8] c"nft_reject_ipv4.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author562 = internal constant [57 x i8] c"nft_reject_ipv4.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias563 = internal constant [40 x i8] c"nft_reject_ipv4.alias=nft-expr-2-reject\00", section ".modinfo", align 1
@__UNIQUE_ID_description564 = internal constant [63 x i8] c"nft_reject_ipv4.description=IPv4 packet rejection for nftables\00", section ".modinfo", align 1
@nft_reject_ipv4_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_reject_ipv4_eval, ptr null, i32 16, ptr @nft_reject_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_reject_dump, ptr @nft_reject_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_reject_ipv4_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reject\00", [25 x i8] zeroinitializer }, align 32
@nft_reject_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"nft_reject_ipv4_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 41, i32 34 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [40 x i8] c"../net/ipv4/netfilter/nft_reject_ipv4.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 52, i32 11 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias563, ptr @__UNIQUE_ID_author562, ptr @__UNIQUE_ID_description564, ptr @__UNIQUE_ID_file560, ptr @__UNIQUE_ID_license561, ptr @__exitcall_nft_reject_ipv4_module_exit, ptr @__initcall__kmod_nft_reject_ipv4__559_69_nft_reject_ipv4_module_init6, ptr @nft_reject_ipv4_module_exit, ptr @nft_reject_ipv4_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_reject_ipv4_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_reject_ipv4_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_reject_ipv4_type) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_reject_ipv4_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_reject_ipv4_type) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_reject_ipv4_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load13 = load i8, ptr %data.i, align 4
  %1 = zext i8 %bf.load13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i8 %bf.load13, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pkt, align 4
  %icmp_code = getelementptr inbounds %struct.nft_reject, ptr %data.i, i32 0, i32 1
  %4 = ptrtoint ptr %icmp_code to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %icmp_code, align 1
  %conv = zext i8 %5 to i32
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %conv.i = zext i8 %9 to i32
  tail call void @nf_send_unreach(ptr noundef %3, i32 noundef %conv, i32 noundef %conv.i) #3
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %state.i14 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %10 = ptrtoint ptr %state.i14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state.i14, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net.i, align 4
  %sk.i = getelementptr inbounds %struct.nf_hook_state, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk.i, align 4
  %16 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pkt, align 4
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %11, align 4
  %conv.i17 = zext i8 %19 to i32
  tail call void @nf_send_reset(ptr noundef %13, ptr noundef %15, ptr noundef %17, i32 noundef %conv.i17) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %20)
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
declare dso_local void @nf_send_unreach(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_send_reset(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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

!0 = !{ptr @__initcall__kmod_nft_reject_ipv4__559_69_nft_reject_ipv4_module_init6, !1, !"__initcall__kmod_nft_reject_ipv4__559_69_nft_reject_ipv4_module_init6", i1 false, i1 false}
!1 = !{!"../net/ipv4/netfilter/nft_reject_ipv4.c", i32 69, i32 1}
!2 = !{ptr @__exitcall_nft_reject_ipv4_module_exit, !3, !"__exitcall_nft_reject_ipv4_module_exit", i1 false, i1 false}
!3 = !{!"../net/ipv4/netfilter/nft_reject_ipv4.c", i32 70, i32 1}
!4 = !{ptr @__UNIQUE_ID_file560, !5, !"__UNIQUE_ID_file560", i1 false, i1 false}
!5 = !{!"../net/ipv4/netfilter/nft_reject_ipv4.c", i32 72, i32 1}
!6 = !{ptr @__UNIQUE_ID_license561, !5, !"__UNIQUE_ID_license561", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author562, !8, !"__UNIQUE_ID_author562", i1 false, i1 false}
!8 = !{!"../net/ipv4/netfilter/nft_reject_ipv4.c", i32 73, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias563, !10, !"__UNIQUE_ID_alias563", i1 false, i1 false}
!10 = !{!"../net/ipv4/netfilter/nft_reject_ipv4.c", i32 74, i32 1}
!11 = !{ptr @__UNIQUE_ID_description564, !12, !"__UNIQUE_ID_description564", i1 false, i1 false}
!12 = !{!"../net/ipv4/netfilter/nft_reject_ipv4.c", i32 75, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/ipv4/netfilter/nft_reject_ipv4.c", i32 52, i32 11}
!15 = !{ptr @nft_reject_ipv4_type, !16, !"nft_reject_ipv4_type", i1 false, i1 false}
!16 = !{!"../net/ipv4/netfilter/nft_reject_ipv4.c", i32 50, i32 29}
!17 = !{ptr @nft_reject_ipv4_ops, !18, !"nft_reject_ipv4_ops", i1 false, i1 false}
!18 = !{!"../net/ipv4/netfilter/nft_reject_ipv4.c", i32 41, i32 34}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
