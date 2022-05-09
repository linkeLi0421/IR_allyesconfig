; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_netbios_ns.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_netbios_ns.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.134 }
%union.anon.134 = type { ptr }
%struct.nf_conntrack_expect_policy = type { i32, i32, [16 x i8] }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.nf_inet_addr = type { [4 x i32] }
%struct.anon.156 = type { i16 }
%struct.anon.161 = type { %union.nf_inet_addr, %union.anon.162, i8, i8 }
%union.anon.162 = type { i16 }

@__UNIQUE_ID_author581 = internal constant [65 x i8] c"nf_conntrack_netbios_ns.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description582 = internal constant [94 x i8] c"nf_conntrack_netbios_ns.description=NetBIOS name service broadcast connection tracking helper\00", section ".modinfo", align 1
@__UNIQUE_ID_file583 = internal constant [67 x i8] c"nf_conntrack_netbios_ns.file=net/netfilter/nf_conntrack_netbios_ns\00", section ".modinfo", align 1
@__UNIQUE_ID_license584 = internal constant [36 x i8] c"nf_conntrack_netbios_ns.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias585 = internal constant [54 x i8] c"nf_conntrack_netbios_ns.alias=ip_conntrack_netbios_ns\00", section ".modinfo", align 1
@__UNIQUE_ID_alias586 = internal constant [53 x i8] c"nf_conntrack_netbios_ns.alias=nfct-helper-netbios-ns\00", section ".modinfo", align 1
@__param_str_timeout = internal constant [32 x i8] c"nf_conntrack_netbios_ns.timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global i32 3, section ".data..read_mostly", align 4
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.134 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype587 = internal constant [46 x i8] c"nf_conntrack_netbios_ns.parmtype=timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout588 = internal constant [86 x i8] c"nf_conntrack_netbios_ns.parm=timeout:timeout for master connection/replies in seconds\00", section ".modinfo", align 1
@__initcall__kmod_nf_conntrack_netbios_ns__590_70_nf_conntrack_netbios_ns_init6 = internal global ptr @nf_conntrack_netbios_ns_init, section ".initcall6.init", align 4
@__exitcall_nf_conntrack_netbios_ns_fini = internal global ptr @nf_conntrack_netbios_ns_fini, section ".exitcall.exit", align 4
@exp_policy = internal global { %struct.nf_conntrack_expect_policy, [40 x i8] } { %struct.nf_conntrack_expect_policy { i32 1, i32 0, [16 x i8] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@helper = internal global { %struct.hlist_node, [16 x i8], %struct.refcount_struct, ptr, ptr, { { %union.nf_inet_addr, { %struct.anon.156 }, i16 }, %struct.anon.161 }, ptr, ptr, ptr, ptr, i32, i32, i32, i16, [16 x i8] } { %struct.hlist_node zeroinitializer, [16 x i8] c"netbios-ns\00\00\00\00\00\00", %struct.refcount_struct zeroinitializer, ptr null, ptr @exp_policy, { { %union.nf_inet_addr, { %struct.anon.156 }, i16 }, %struct.anon.161 } { { %union.nf_inet_addr, { %struct.anon.156 }, i16 } { %union.nf_inet_addr zeroinitializer, { %struct.anon.156 } { %struct.anon.156 { i16 137 } }, i16 2 }, %struct.anon.161 { %union.nf_inet_addr zeroinitializer, %union.anon.162 zeroinitializer, i8 17, i8 0 } }, ptr @netbios_ns_help, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i16 0, [16 x i8] zeroinitializer }, section ".data..read_mostly", align 4
@___asan_gen_.2 = private unnamed_addr constant [11 x i8] c"exp_policy\00", align 1
@___asan_gen_.3 = private constant [43 x i8] c"../net/netfilter/nf_conntrack_netbios_ns.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 36, i32 42 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias585, ptr @__UNIQUE_ID_alias586, ptr @__UNIQUE_ID_author581, ptr @__UNIQUE_ID_description582, ptr @__UNIQUE_ID_file583, ptr @__UNIQUE_ID_license584, ptr @__UNIQUE_ID_timeout588, ptr @__UNIQUE_ID_timeouttype587, ptr @__exitcall_nf_conntrack_netbios_ns_fini, ptr @__initcall__kmod_nf_conntrack_netbios_ns__590_70_nf_conntrack_netbios_ns_init6, ptr @__param_timeout, ptr @nf_conntrack_netbios_ns_fini, ptr @exp_policy], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exp_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_conntrack_netbios_ns_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nf_conntrack_helper_unregister(ptr noundef nonnull @helper) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_helper_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_conntrack_netbios_ns_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @timeout, align 4
  store i32 %0, ptr getelementptr inbounds (%struct.nf_conntrack_expect_policy, ptr @exp_policy, i32 0, i32 1), align 4
  %call = tail call i32 @nf_conntrack_helper_register(ptr noundef nonnull @helper) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netbios_ns_help(ptr noundef %skb, i32 noundef %protoff, ptr noundef %ct, i32 noundef %ctinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @timeout, align 4
  %call = tail call i32 @nf_conntrack_broadcast_help(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %0) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_broadcast_help(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_helper_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

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
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__UNIQUE_ID_author581, !1, !"__UNIQUE_ID_author581", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_netbios_ns.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_description582, !3, !"__UNIQUE_ID_description582", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_conntrack_netbios_ns.c", i32 27, i32 1}
!4 = !{ptr @__UNIQUE_ID_file583, !5, !"__UNIQUE_ID_file583", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_conntrack_netbios_ns.c", i32 28, i32 1}
!6 = !{ptr @__UNIQUE_ID_license584, !5, !"__UNIQUE_ID_license584", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias585, !8, !"__UNIQUE_ID_alias585", i1 false, i1 false}
!8 = !{!"../net/netfilter/nf_conntrack_netbios_ns.c", i32 29, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias586, !10, !"__UNIQUE_ID_alias586", i1 false, i1 false}
!10 = !{!"../net/netfilter/nf_conntrack_netbios_ns.c", i32 30, i32 1}
!11 = !{ptr @__param_timeout, !12, !"__param_timeout", i1 false, i1 false}
!12 = !{!"../net/netfilter/nf_conntrack_netbios_ns.c", i32 33, i32 1}
!13 = !{ptr @__UNIQUE_ID_timeouttype587, !12, !"__UNIQUE_ID_timeouttype587", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_timeout588, !15, !"__UNIQUE_ID_timeout588", i1 false, i1 false}
!15 = !{!"../net/netfilter/nf_conntrack_netbios_ns.c", i32 34, i32 1}
!16 = !{ptr @__initcall__kmod_nf_conntrack_netbios_ns__590_70_nf_conntrack_netbios_ns_init6, !17, !"__initcall__kmod_nf_conntrack_netbios_ns__590_70_nf_conntrack_netbios_ns_init6", i1 false, i1 false}
!17 = !{!"../net/netfilter/nf_conntrack_netbios_ns.c", i32 70, i32 1}
!18 = !{ptr @__exitcall_nf_conntrack_netbios_ns_fini, !19, !"__exitcall_nf_conntrack_netbios_ns_fini", i1 false, i1 false}
!19 = !{!"../net/netfilter/nf_conntrack_netbios_ns.c", i32 71, i32 1}
!20 = !{ptr @__param_str_timeout, !12, !"__param_str_timeout", i1 false, i1 false}
!21 = !{ptr @timeout, !22, !"timeout", i1 false, i1 false}
!22 = !{!"../net/netfilter/nf_conntrack_netbios_ns.c", i32 32, i32 21}
!23 = !{ptr @helper, !24, !"helper", i1 false, i1 false}
!24 = !{!"../net/netfilter/nf_conntrack_netbios_ns.c", i32 47, i32 35}
!25 = !{ptr @exp_policy, !26, !"exp_policy", i1 false, i1 false}
!26 = !{!"../net/netfilter/nf_conntrack_netbios_ns.c", i32 36, i32 42}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
