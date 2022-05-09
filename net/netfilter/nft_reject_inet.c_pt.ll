; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_reject_inet.c_pt.bc'
source_filename = "../net/netfilter/nft_reject_inet.c"
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
%struct.nft_reject = type { i8, i8, [2 x i8] }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }

@nft_reject_inet_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_reject_inet_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_reject_policy, i32 2, i8 1, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_reject_inet__559_104_nft_reject_inet_module_init6 = internal global ptr @nft_reject_inet_module_init, section ".initcall6.init", align 4
@__exitcall_nft_reject_inet_module_exit = internal global ptr @nft_reject_inet_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file560 = internal constant [51 x i8] c"nft_reject_inet.file=net/netfilter/nft_reject_inet\00", section ".modinfo", align 1
@__UNIQUE_ID_license561 = internal constant [28 x i8] c"nft_reject_inet.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author562 = internal constant [57 x i8] c"nft_reject_inet.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias563 = internal constant [40 x i8] c"nft_reject_inet.alias=nft-expr-1-reject\00", section ".modinfo", align 1
@__UNIQUE_ID_description564 = internal constant [67 x i8] c"nft_reject_inet.description=Netfilter nftables reject inet support\00", section ".modinfo", align 1
@nft_reject_inet_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_reject_inet_eval, ptr null, i32 16, ptr @nft_reject_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_reject_dump, ptr @nft_reject_inet_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_reject_inet_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reject\00", [25 x i8] zeroinitializer }, align 32
@nft_reject_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.3 = private unnamed_addr constant [20 x i8] c"nft_reject_inet_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 76, i32 34 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private constant [35 x i8] c"../net/netfilter/nft_reject_inet.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 87, i32 11 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias563, ptr @__UNIQUE_ID_author562, ptr @__UNIQUE_ID_description564, ptr @__UNIQUE_ID_file560, ptr @__UNIQUE_ID_license561, ptr @__exitcall_nft_reject_inet_module_exit, ptr @__initcall__kmod_nft_reject_inet__559_104_nft_reject_inet_module_init6, ptr @nft_reject_inet_module_exit, ptr @nft_reject_inet_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_reject_inet_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_reject_inet_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_reject_inet_type) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_reject_inet_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_reject_inet_type) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_reject_inet_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
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
  switch i8 %3, label %entry.sw.epilog36_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb15
  ]

entry.sw.epilog36_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog36

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load61 = load i8, ptr %data.i, align 4
  %6 = zext i8 %bf.load61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %bf.load61, label %sw.bb.sw.epilog36_crit_edge [
    i8 0, label %sw.bb2
    i8 1, label %sw.bb5
    i8 2, label %sw.bb10
  ]

sw.bb.sw.epilog36_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog36

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pkt, align 4
  %icmp_code = getelementptr inbounds %struct.nft_reject, ptr %data.i, i32 0, i32 1
  %9 = ptrtoint ptr %icmp_code to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %icmp_code, align 1
  %conv3 = zext i8 %10 to i32
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 4
  %conv.i = zext i8 %12 to i32
  tail call void @nf_send_unreach(ptr noundef %8, i32 noundef %conv3, i32 noundef %conv.i) #3
  br label %sw.epilog36

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i, align 4
  %sk.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sk.i, align 4
  %17 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pkt, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %1, align 4
  %conv.i66 = zext i8 %20 to i32
  tail call void @nf_send_reset(ptr noundef %14, ptr noundef %16, ptr noundef %18, i32 noundef %conv.i66) #3
  br label %sw.epilog36

sw.bb10:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pkt, align 4
  %icmp_code12 = getelementptr inbounds %struct.nft_reject, ptr %data.i, i32 0, i32 1
  %23 = ptrtoint ptr %icmp_code12 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %icmp_code12, align 1
  %call13 = tail call i32 @nft_reject_icmp_code(i8 noundef zeroext %24) #3
  %25 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 4
  %conv.i68 = zext i8 %28 to i32
  tail call void @nf_send_unreach(ptr noundef %22, i32 noundef %call13, i32 noundef %conv.i68) #3
  br label %sw.epilog36

sw.bb15:                                          ; preds = %entry
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load1660 = load i8, ptr %data.i, align 4
  %30 = zext i8 %bf.load1660 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %bf.load1660, label %sw.bb15.sw.epilog36_crit_edge [
    i8 0, label %sw.bb18
    i8 1, label %sw.bb23
    i8 2, label %sw.bb28
  ]

sw.bb15.sw.epilog36_crit_edge:                    ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog36

sw.bb18:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #5
  %net.i70 = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %net.i70 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net.i70, align 4
  %33 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pkt, align 4
  %icmp_code21 = getelementptr inbounds %struct.nft_reject, ptr %data.i, i32 0, i32 1
  %35 = ptrtoint ptr %icmp_code21 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %icmp_code21, align 1
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %1, align 4
  %conv.i72 = zext i8 %38 to i32
  tail call void @nf_send_unreach6(ptr noundef %32, ptr noundef %34, i8 noundef zeroext %36, i32 noundef %conv.i72) #3
  br label %sw.epilog36

sw.bb23:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #5
  %net.i74 = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 5
  %39 = ptrtoint ptr %net.i74 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net.i74, align 4
  %sk.i76 = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %sk.i76 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sk.i76, align 4
  %43 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pkt, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %1, align 4
  %conv.i78 = zext i8 %46 to i32
  tail call void @nf_send_reset6(ptr noundef %40, ptr noundef %42, ptr noundef %44, i32 noundef %conv.i78) #3
  br label %sw.epilog36

sw.bb28:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #5
  %net.i80 = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 5
  %47 = ptrtoint ptr %net.i80 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net.i80, align 4
  %49 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pkt, align 4
  %icmp_code31 = getelementptr inbounds %struct.nft_reject, ptr %data.i, i32 0, i32 1
  %51 = ptrtoint ptr %icmp_code31 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %icmp_code31, align 1
  %call32 = tail call i32 @nft_reject_icmpv6_code(i8 noundef zeroext %52) #3
  %conv33 = trunc i32 %call32 to i8
  %53 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %state.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 4
  %conv.i82 = zext i8 %56 to i32
  tail call void @nf_send_unreach6(ptr noundef %48, ptr noundef %50, i8 noundef zeroext %conv33, i32 noundef %conv.i82) #3
  br label %sw.epilog36

sw.epilog36:                                      ; preds = %sw.bb28, %sw.bb23, %sw.bb18, %sw.bb15.sw.epilog36_crit_edge, %sw.bb10, %sw.bb5, %sw.bb2, %sw.bb.sw.epilog36_crit_edge, %entry.sw.epilog36_crit_edge
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %regs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_reject_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_reject_dump(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_reject_inet_validate(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %expr, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %call = tail call i32 @nft_chain_validate_hooks(ptr noundef %1, i32 noundef 47) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_send_unreach(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_send_reset(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_reject_icmp_code(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_send_unreach6(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_send_reset6(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_reject_icmpv6_code(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_chain_validate_hooks(ptr noundef, i32 noundef) local_unnamed_addr #1

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

!0 = !{ptr @__initcall__kmod_nft_reject_inet__559_104_nft_reject_inet_module_init6, !1, !"__initcall__kmod_nft_reject_inet__559_104_nft_reject_inet_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_reject_inet.c", i32 104, i32 1}
!2 = !{ptr @__exitcall_nft_reject_inet_module_exit, !3, !"__exitcall_nft_reject_inet_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_reject_inet.c", i32 105, i32 1}
!4 = !{ptr @__UNIQUE_ID_file560, !5, !"__UNIQUE_ID_file560", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_reject_inet.c", i32 107, i32 1}
!6 = !{ptr @__UNIQUE_ID_license561, !5, !"__UNIQUE_ID_license561", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author562, !8, !"__UNIQUE_ID_author562", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_reject_inet.c", i32 108, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias563, !10, !"__UNIQUE_ID_alias563", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_reject_inet.c", i32 109, i32 1}
!11 = !{ptr @__UNIQUE_ID_description564, !12, !"__UNIQUE_ID_description564", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_reject_inet.c", i32 110, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_reject_inet.c", i32 87, i32 11}
!15 = !{ptr @nft_reject_inet_type, !16, !"nft_reject_inet_type", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_reject_inet.c", i32 85, i32 29}
!17 = !{ptr @nft_reject_inet_ops, !18, !"nft_reject_inet_ops", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_reject_inet.c", i32 76, i32 34}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
