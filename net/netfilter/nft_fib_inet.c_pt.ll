; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_fib_inet.c_pt.bc'
source_filename = "../net/netfilter/nft_fib_inet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.nft_fib = type { i8, i8, i32 }

@nft_fib_inet_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_fib_inet_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_fib_policy, i32 3, i8 1, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_fib_inet__420_73_nft_fib_inet_module_init6 = internal global ptr @nft_fib_inet_module_init, section ".initcall6.init", align 4
@__exitcall_nft_fib_inet_module_exit = internal global ptr @nft_fib_inet_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file421 = internal constant [45 x i8] c"nft_fib_inet.file=net/netfilter/nft_fib_inet\00", section ".modinfo", align 1
@__UNIQUE_ID_license422 = internal constant [25 x i8] c"nft_fib_inet.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author423 = internal constant [52 x i8] c"nft_fib_inet.author=Florian Westphal <fw@strlen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias424 = internal constant [34 x i8] c"nft_fib_inet.alias=nft-expr-1-fib\00", section ".modinfo", align 1
@__UNIQUE_ID_description425 = internal constant [51 x i8] c"nft_fib_inet.description=nftables fib inet support\00", section ".modinfo", align 1
@nft_fib_inet_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_fib_inet_eval, ptr null, i32 16, ptr @nft_fib_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_fib_dump, ptr @nft_fib_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_fib_inet_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fib\00", [28 x i8] zeroinitializer }, align 32
@nft_fib_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"nft_fib_inet_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 45, i32 34 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private constant [32 x i8] c"../net/netfilter/nft_fib_inet.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 56, i32 11 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias424, ptr @__UNIQUE_ID_author423, ptr @__UNIQUE_ID_description425, ptr @__UNIQUE_ID_file421, ptr @__UNIQUE_ID_license422, ptr @__exitcall_nft_fib_inet_module_exit, ptr @__initcall__kmod_nft_fib_inet__420_73_nft_fib_inet_module_init6, ptr @nft_fib_inet_module_exit, ptr @nft_fib_inet_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_fib_inet_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_fib_inet_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_fib_inet_type) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_fib_inet_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_fib_inet_type) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_fib_inet_eval(ptr noundef %expr, ptr noundef %regs, ptr noundef %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pf.i, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %entry.sw.epilog11_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb5
  ]

entry.sw.epilog11_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog11

sw.bb:                                            ; preds = %entry
  %result = getelementptr inbounds %struct.nft_fib, ptr %data.i, i32 0, i32 1
  %5 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %result, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %6, label %sw.bb.sw.epilog11_crit_edge [
    i8 1, label %sw.bb.sw.bb3_crit_edge
    i8 2, label %sw.bb.sw.bb3_crit_edge25
    i8 3, label %sw.bb4
  ]

sw.bb.sw.bb3_crit_edge25:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3

sw.bb.sw.bb3_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3

sw.bb.sw.epilog11_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog11

sw.bb3:                                           ; preds = %sw.bb.sw.bb3_crit_edge, %sw.bb.sw.bb3_crit_edge25
  tail call void @nft_fib4_eval(ptr noundef %expr, ptr noundef %regs, ptr noundef %pkt) #3
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nft_fib4_eval_type(ptr noundef %expr, ptr noundef %regs, ptr noundef %pkt) #3
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %result6 = getelementptr inbounds %struct.nft_fib, ptr %data.i, i32 0, i32 1
  %8 = ptrtoint ptr %result6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %result6, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %9, label %sw.bb5.sw.epilog11_crit_edge [
    i8 1, label %sw.bb5.sw.bb8_crit_edge
    i8 2, label %sw.bb5.sw.bb8_crit_edge26
    i8 3, label %sw.bb9
  ]

sw.bb5.sw.bb8_crit_edge26:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb8

sw.bb5.sw.bb8_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb8

sw.bb5.sw.epilog11_crit_edge:                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog11

sw.bb8:                                           ; preds = %sw.bb5.sw.bb8_crit_edge, %sw.bb5.sw.bb8_crit_edge26
  tail call void @nft_fib6_eval(ptr noundef %expr, ptr noundef %regs, ptr noundef %pkt) #3
  br label %cleanup

sw.bb9:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nft_fib6_eval_type(ptr noundef %expr, ptr noundef %regs, ptr noundef %pkt) #3
  br label %cleanup

sw.epilog11:                                      ; preds = %sw.bb5.sw.epilog11_crit_edge, %sw.bb.sw.epilog11_crit_edge, %entry.sw.epilog11_crit_edge
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %regs, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog11, %sw.bb9, %sw.bb8, %sw.bb4, %sw.bb3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_fib_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_fib_dump(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_fib_validate(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_fib4_eval(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_fib4_eval_type(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_fib6_eval(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_fib6_eval_type(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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

!0 = !{ptr @__initcall__kmod_nft_fib_inet__420_73_nft_fib_inet_module_init6, !1, !"__initcall__kmod_nft_fib_inet__420_73_nft_fib_inet_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_fib_inet.c", i32 73, i32 1}
!2 = !{ptr @__exitcall_nft_fib_inet_module_exit, !3, !"__exitcall_nft_fib_inet_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_fib_inet.c", i32 74, i32 1}
!4 = !{ptr @__UNIQUE_ID_file421, !5, !"__UNIQUE_ID_file421", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_fib_inet.c", i32 76, i32 1}
!6 = !{ptr @__UNIQUE_ID_license422, !5, !"__UNIQUE_ID_license422", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author423, !8, !"__UNIQUE_ID_author423", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_fib_inet.c", i32 77, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias424, !10, !"__UNIQUE_ID_alias424", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_fib_inet.c", i32 78, i32 1}
!11 = !{ptr @__UNIQUE_ID_description425, !12, !"__UNIQUE_ID_description425", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_fib_inet.c", i32 79, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_fib_inet.c", i32 56, i32 11}
!15 = !{ptr @nft_fib_inet_type, !16, !"nft_fib_inet_type", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_fib_inet.c", i32 54, i32 29}
!17 = !{ptr @nft_fib_inet_ops, !18, !"nft_fib_inet_ops", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_fib_inet.c", i32 45, i32 34}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
