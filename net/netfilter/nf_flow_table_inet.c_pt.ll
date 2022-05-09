; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_flow_table_inet.c_pt.bc'
source_filename = "../net/netfilter/nf_flow_table_inet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nf_flowtable_type = type { %struct.list_head, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.flow_offload_tuple_rhash = type { %struct.rhash_head, %struct.flow_offload_tuple }
%struct.rhash_head = type { ptr }
%struct.flow_offload_tuple = type { %union.anon.118, %union.anon.119, %struct.anon.120, i32, i8, i8, [2 x %struct.anon.121], %struct.anon.122, i8, i8, i16, %union.anon.123 }
%union.anon.118 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.15 }
%union.anon.15 = type { [4 x i32] }
%union.anon.119 = type { %struct.in6_addr }
%struct.anon.120 = type { i16, i16 }
%struct.anon.121 = type { i16, i16 }
%struct.anon.122 = type {}
%union.anon.123 = type { %struct.anon.125 }
%struct.anon.125 = type { i32, i32, [6 x i8], [6 x i8] }
%struct.sk_buff = type { %union.anon.16, %union.anon.19, %union.anon.20, [48 x i8], %union.anon.21, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.23, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { ptr, ptr, %union.anon.18 }
%union.anon.18 = type { ptr }
%union.anon.19 = type { ptr }
%union.anon.20 = type { i64 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { i32, ptr }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.25, i32, i32, i32, i16, i16, %union.anon.27, i32, %union.anon.28, %union.anon.29, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.25 = type { i32 }
%union.anon.27 = type { i32 }
%union.anon.28 = type { i32 }
%union.anon.29 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@flowtable_inet = internal global { %struct.nf_flowtable_type, [60 x i8] } { %struct.nf_flowtable_type { %struct.list_head zeroinitializer, i32 1, ptr @nf_flow_table_init, ptr @nf_flow_table_offload_setup, ptr @nf_flow_rule_route_inet, ptr @nf_flow_table_free, ptr @nf_flow_offload_inet_hook, ptr null }, [60 x i8] zeroinitializer }, align 32
@flowtable_ipv6 = internal global { %struct.nf_flowtable_type, [60 x i8] } { %struct.nf_flowtable_type { %struct.list_head zeroinitializer, i32 10, ptr @nf_flow_table_init, ptr @nf_flow_table_offload_setup, ptr @nf_flow_rule_route_ipv6, ptr @nf_flow_table_free, ptr @nf_flow_offload_ipv6_hook, ptr null }, [60 x i8] zeroinitializer }, align 32
@flowtable_ipv4 = internal global { %struct.nf_flowtable_type, [60 x i8] } { %struct.nf_flowtable_type { %struct.list_head zeroinitializer, i32 2, ptr @nf_flow_table_init, ptr @nf_flow_table_offload_setup, ptr @nf_flow_rule_route_ipv4, ptr @nf_flow_table_free, ptr @nf_flow_offload_ip_hook, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_nf_flow_table_inet__420_93_nf_flow_inet_module_init6 = internal global ptr @nf_flow_inet_module_init, section ".initcall6.init", align 4
@__exitcall_nf_flow_inet_module_exit = internal global ptr @nf_flow_inet_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file421 = internal constant [57 x i8] c"nf_flow_table_inet.file=net/netfilter/nf_flow_table_inet\00", section ".modinfo", align 1
@__UNIQUE_ID_license422 = internal constant [31 x i8] c"nf_flow_table_inet.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author423 = internal constant [66 x i8] c"nf_flow_table_inet.author=Pablo Neira Ayuso <pablo@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias424 = internal constant [40 x i8] c"nf_flow_table_inet.alias=nf-flowtable-2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias425 = internal constant [41 x i8] c"nf_flow_table_inet.alias=nf-flowtable-10\00", section ".modinfo", align 1
@__UNIQUE_ID_alias426 = internal constant [40 x i8] c"nf_flow_table_inet.alias=nf-flowtable-1\00", section ".modinfo", align 1
@__UNIQUE_ID_description427 = internal constant [75 x i8] c"nf_flow_table_inet.description=Netfilter flow table mixed IPv4/IPv6 module\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.2 = private unnamed_addr constant [15 x i8] c"flowtable_inet\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 47, i32 33 }
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"flowtable_ipv6\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 67, i32 33 }
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"flowtable_ipv4\00", align 1
@___asan_gen_.9 = private constant [38 x i8] c"../net/netfilter/nf_flow_table_inet.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 57, i32 33 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias424, ptr @__UNIQUE_ID_alias425, ptr @__UNIQUE_ID_alias426, ptr @__UNIQUE_ID_author423, ptr @__UNIQUE_ID_description427, ptr @__UNIQUE_ID_file421, ptr @__UNIQUE_ID_license422, ptr @__exitcall_nf_flow_inet_module_exit, ptr @__initcall__kmod_nf_flow_table_inet__420_93_nf_flow_inet_module_init6, ptr @nf_flow_inet_module_exit, ptr @flowtable_inet, ptr @flowtable_ipv6, ptr @flowtable_ipv4], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flowtable_inet to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flowtable_ipv6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flowtable_ipv4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_flow_inet_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nft_unregister_flowtable_type(ptr noundef nonnull @flowtable_inet) #3
  tail call void @nft_unregister_flowtable_type(ptr noundef nonnull @flowtable_ipv6) #3
  tail call void @nft_unregister_flowtable_type(ptr noundef nonnull @flowtable_ipv4) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_flowtable_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_flow_inet_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nft_register_flowtable_type(ptr noundef nonnull @flowtable_ipv4) #3
  tail call void @nft_register_flowtable_type(ptr noundef nonnull @flowtable_ipv6) #3
  tail call void @nft_register_flowtable_type(ptr noundef nonnull @flowtable_inet) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_flow_table_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_flow_table_offload_setup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_flow_rule_route_inet(ptr noundef %net, ptr noundef %flow, i32 noundef %dir, ptr noundef %flow_rule) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %l3proto = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %dir, i32 1, i32 4
  %0 = ptrtoint ptr %l3proto to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %l3proto, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @nf_flow_rule_route_ipv4(ptr noundef %net, ptr noundef %flow, i32 noundef %dir, ptr noundef %flow_rule) #3
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 @nf_flow_rule_route_ipv6(ptr noundef %net, ptr noundef %flow, i32 noundef %dir, ptr noundef %flow_rule) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -1, %entry.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_flow_table_free(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_flow_offload_inet_hook(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %1, label %entry.return_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @nf_flow_offload_ip_hook(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #3
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 @nf_flow_offload_ipv6_hook(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #3
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_flow_rule_route_ipv4(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_flow_rule_route_ipv6(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_flow_offload_ip_hook(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_flow_offload_ipv6_hook(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_register_flowtable_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__initcall__kmod_nf_flow_table_inet__420_93_nf_flow_inet_module_init6, !1, !"__initcall__kmod_nf_flow_table_inet__420_93_nf_flow_inet_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_flow_table_inet.c", i32 93, i32 1}
!2 = !{ptr @__exitcall_nf_flow_inet_module_exit, !3, !"__exitcall_nf_flow_inet_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_flow_table_inet.c", i32 94, i32 1}
!4 = !{ptr @__UNIQUE_ID_file421, !5, !"__UNIQUE_ID_file421", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_flow_table_inet.c", i32 96, i32 1}
!6 = !{ptr @__UNIQUE_ID_license422, !5, !"__UNIQUE_ID_license422", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author423, !8, !"__UNIQUE_ID_author423", i1 false, i1 false}
!8 = !{!"../net/netfilter/nf_flow_table_inet.c", i32 97, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias424, !10, !"__UNIQUE_ID_alias424", i1 false, i1 false}
!10 = !{!"../net/netfilter/nf_flow_table_inet.c", i32 98, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias425, !12, !"__UNIQUE_ID_alias425", i1 false, i1 false}
!12 = !{!"../net/netfilter/nf_flow_table_inet.c", i32 99, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias426, !14, !"__UNIQUE_ID_alias426", i1 false, i1 false}
!14 = !{!"../net/netfilter/nf_flow_table_inet.c", i32 100, i32 1}
!15 = !{ptr @__UNIQUE_ID_description427, !16, !"__UNIQUE_ID_description427", i1 false, i1 false}
!16 = !{!"../net/netfilter/nf_flow_table_inet.c", i32 101, i32 1}
!17 = !{ptr @flowtable_inet, !18, !"flowtable_inet", i1 false, i1 false}
!18 = !{!"../net/netfilter/nf_flow_table_inet.c", i32 47, i32 33}
!19 = !{ptr @flowtable_ipv6, !20, !"flowtable_ipv6", i1 false, i1 false}
!20 = !{!"../net/netfilter/nf_flow_table_inet.c", i32 67, i32 33}
!21 = !{ptr @flowtable_ipv4, !22, !"flowtable_ipv4", i1 false, i1 false}
!22 = !{!"../net/netfilter/nf_flow_table_inet.c", i32 57, i32 33}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
