; ModuleID = '/llk/IR_all_yes/net/smc/smc_netlink.c_pt.bc'
source_filename = "../net/smc/smc_netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@smc_gen_ueid_policy = dso_local constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 32, %union.anon zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@smc_gen_nl_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 17, i8 0, i16 0, %union.anon zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@smc_gen_nl_ops = internal constant { [15 x %struct.genl_ops], [124 x i8] } { [15 x %struct.genl_ops] [%struct.genl_ops { ptr null, ptr null, ptr @smc_nl_get_sys_info, ptr null, ptr null, i32 0, i8 1, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr null, ptr null, ptr @smcr_nl_get_lgr, ptr null, ptr null, i32 0, i8 2, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr null, ptr null, ptr @smcr_nl_get_link, ptr null, ptr null, i32 0, i8 3, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr null, ptr null, ptr @smcd_nl_get_lgr, ptr null, ptr null, i32 0, i8 4, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr null, ptr null, ptr @smcd_nl_get_device, ptr null, ptr null, i32 0, i8 5, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr null, ptr null, ptr @smcr_nl_get_device, ptr null, ptr null, i32 0, i8 6, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr null, ptr null, ptr @smc_nl_get_stats, ptr null, ptr null, i32 0, i8 7, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr null, ptr null, ptr @smc_nl_get_fback_stats, ptr null, ptr null, i32 0, i8 8, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr null, ptr null, ptr @smc_nl_dump_ueid, ptr null, ptr null, i32 0, i8 9, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @smc_nl_add_ueid, ptr null, ptr null, ptr null, ptr @smc_gen_ueid_policy, i32 0, i8 10, i8 0, i8 1, i8 0 }, %struct.genl_ops { ptr @smc_nl_remove_ueid, ptr null, ptr null, ptr null, ptr @smc_gen_ueid_policy, i32 0, i8 11, i8 0, i8 1, i8 0 }, %struct.genl_ops { ptr @smc_nl_flush_ueid, ptr null, ptr null, ptr null, ptr null, i32 0, i8 12, i8 0, i8 1, i8 0 }, %struct.genl_ops { ptr null, ptr null, ptr @smc_nl_dump_seid, ptr null, ptr null, i32 0, i8 13, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @smc_nl_enable_seid, ptr null, ptr null, ptr null, ptr null, i32 0, i8 14, i8 0, i8 1, i8 0 }, %struct.genl_ops { ptr @smc_nl_disable_seid, ptr null, ptr null, ptr null, ptr null, i32 0, i8 15, i8 0, i8 1, i8 0 }], [124 x i8] zeroinitializer }, align 32
@smc_gen_nl_family = dso_local global %struct.genl_family { i32 0, i32 0, [16 x i8] c"SMC_GEN_NETLINK\00", i32 1, i32 1, i32 0, i8 -128, i8 15, i8 0, i8 0, ptr @smc_gen_nl_policy, ptr null, ptr null, ptr @smc_gen_nl_ops, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"smc_gen_ueid_policy\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 27, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"smc_gen_nl_policy\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 116, i32 32 }
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"smc_gen_nl_ops\00", align 1
@___asan_gen_.8 = private constant [25 x i8] c"../net/smc/smc_netlink.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 36, i32 30 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @smc_gen_ueid_policy, ptr @smc_gen_nl_policy, ptr @smc_gen_nl_ops], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_gen_ueid_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_gen_nl_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_gen_nl_ops to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_nl_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @smc_gen_nl_family) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_nl_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_unregister_family(ptr noundef nonnull @smc_gen_nl_family) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_nl_get_sys_info(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smcr_nl_get_lgr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smcr_nl_get_link(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smcd_nl_get_lgr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smcd_nl_get_device(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smcr_nl_get_device(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_nl_get_stats(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_nl_get_fback_stats(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_nl_dump_ueid(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_nl_add_ueid(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_nl_remove_ueid(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_nl_flush_ueid(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_nl_dump_seid(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_nl_enable_seid(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_nl_disable_seid(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

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

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @smc_gen_ueid_policy, !1, !"smc_gen_ueid_policy", i1 false, i1 false}
!1 = !{!"../net/smc/smc_netlink.c", i32 27, i32 1}
!2 = !{ptr @smc_gen_nl_family, !3, !"smc_gen_nl_family", i1 false, i1 false}
!3 = !{!"../net/smc/smc_netlink.c", i32 121, i32 20}
!4 = !{ptr @smc_gen_nl_policy, !5, !"smc_gen_nl_policy", i1 false, i1 false}
!5 = !{!"../net/smc/smc_netlink.c", i32 116, i32 32}
!6 = !{ptr @smc_gen_nl_ops, !7, !"smc_gen_nl_ops", i1 false, i1 false}
!7 = !{!"../net/smc/smc_netlink.c", i32 36, i32 30}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
