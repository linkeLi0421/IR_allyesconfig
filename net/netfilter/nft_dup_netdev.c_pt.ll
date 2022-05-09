; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_dup_netdev.c_pt.bc'
source_filename = "../net/netfilter/nft_dup_netdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_offload_ctx = type { %struct.anon.121, i32, ptr, [24 x %struct.nft_offload_reg] }
%struct.anon.121 = type { i32, i16, i8 }
%struct.nft_offload_reg = type { i32, i32, i32, i32, i32, [4 x i8], %struct.nft_data, %struct.nft_data }
%struct.nft_data = type { %union.anon.119 }
%union.anon.119 = type { [4 x i32] }

@nft_dup_netdev_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_dup_netdev_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_dup_netdev_policy, i32 2, i8 5, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_dup_netdev__420_105_nft_dup_netdev_module_init6 = internal global ptr @nft_dup_netdev_module_init, section ".initcall6.init", align 4
@__exitcall_nft_dup_netdev_module_exit = internal global ptr @nft_dup_netdev_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file421 = internal constant [49 x i8] c"nft_dup_netdev.file=net/netfilter/nft_dup_netdev\00", section ".modinfo", align 1
@__UNIQUE_ID_license422 = internal constant [27 x i8] c"nft_dup_netdev.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author423 = internal constant [62 x i8] c"nft_dup_netdev.author=Pablo Neira Ayuso <pablo@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias424 = internal constant [36 x i8] c"nft_dup_netdev.alias=nft-expr-5-dup\00", section ".modinfo", align 1
@__UNIQUE_ID_description425 = internal constant [70 x i8] c"nft_dup_netdev.description=nftables netdev packet duplication support\00", section ".modinfo", align 1
@nft_dup_netdev_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_dup_netdev_eval, ptr null, i32 16, ptr @nft_dup_netdev_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_dup_netdev_dump, ptr null, ptr null, ptr null, ptr @nft_dup_netdev_offload, ptr @nft_dup_netdev_offload_action, ptr null, ptr @nft_dup_netdev_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dup\00", [28 x i8] zeroinitializer }, align 32
@nft_dup_netdev_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"nft_dup_netdev_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 76, i32 34 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 88, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"nft_dup_netdev_policy\00", align 1
@___asan_gen_.8 = private constant [34 x i8] c"../net/netfilter/nft_dup_netdev.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 30, i32 32 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias424, ptr @__UNIQUE_ID_author423, ptr @__UNIQUE_ID_description425, ptr @__UNIQUE_ID_file421, ptr @__UNIQUE_ID_license422, ptr @__exitcall_nft_dup_netdev_module_exit, ptr @__initcall__kmod_nft_dup_netdev__420_105_nft_dup_netdev_module_init6, ptr @nft_dup_netdev_module_exit, ptr @nft_dup_netdev_ops, ptr @.str, ptr @nft_dup_netdev_policy], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_dup_netdev_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_dup_netdev_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_dup_netdev_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_dup_netdev_type) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_dup_netdev_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_dup_netdev_type) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_dup_netdev_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef readonly %regs, ptr noundef %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  tail call void @nf_dup_netdev_egress(ptr noundef %pkt, i32 noundef %3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_dup_netdev_init(ptr nocapture noundef readnone %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %call2 = tail call i32 @nft_parse_register_load(ptr noundef nonnull %1, ptr noundef %data.i, i32 noundef 4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_dup_netdev_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 2, i32 noundef %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp ne i32 %call1, 0
  %. = sext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_dup_netdev_offload(ptr noundef %ctx, ptr noundef %flow, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 1
  %idxprom = zext i8 %1 to i32
  %data = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom, i32 6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 8
  %call2 = tail call i32 @nft_fwd_dup_netdev_offload(ptr noundef %ctx, ptr noundef %flow, i32 noundef 5, i32 noundef %3) #4
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nft_dup_netdev_offload_action(ptr nocapture noundef readnone %expr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_dup_netdev_egress(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_load(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_fwd_dup_netdev_offload(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__initcall__kmod_nft_dup_netdev__420_105_nft_dup_netdev_module_init6, !1, !"__initcall__kmod_nft_dup_netdev__420_105_nft_dup_netdev_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_dup_netdev.c", i32 105, i32 1}
!2 = !{ptr @__exitcall_nft_dup_netdev_module_exit, !3, !"__exitcall_nft_dup_netdev_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_dup_netdev.c", i32 106, i32 1}
!4 = !{ptr @__UNIQUE_ID_file421, !5, !"__UNIQUE_ID_file421", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_dup_netdev.c", i32 108, i32 1}
!6 = !{ptr @__UNIQUE_ID_license422, !5, !"__UNIQUE_ID_license422", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author423, !8, !"__UNIQUE_ID_author423", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_dup_netdev.c", i32 109, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias424, !10, !"__UNIQUE_ID_alias424", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_dup_netdev.c", i32 110, i32 1}
!11 = !{ptr @__UNIQUE_ID_description425, !12, !"__UNIQUE_ID_description425", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_dup_netdev.c", i32 111, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_dup_netdev.c", i32 88, i32 11}
!15 = !{ptr @nft_dup_netdev_type, !16, !"nft_dup_netdev_type", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_dup_netdev.c", i32 86, i32 29}
!17 = !{ptr @nft_dup_netdev_ops, !18, !"nft_dup_netdev_ops", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_dup_netdev.c", i32 76, i32 34}
!19 = !{ptr @nft_dup_netdev_policy, !20, !"nft_dup_netdev_policy", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_dup_netdev.c", i32 30, i32 32}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
