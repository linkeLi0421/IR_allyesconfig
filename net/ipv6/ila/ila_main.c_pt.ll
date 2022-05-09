; ModuleID = '/llk/IR_all_yes/net/ipv6/ila/ila_main.c_pt.bc'
source_filename = "../net/ipv6/ila/ila_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }

@ila_nl_policy = internal constant { [10 x %struct.nla_policy], [48 x i8] } { [10 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ila_nl_ops = internal constant { [4 x %struct.genl_ops], [48 x i8] } { [4 x %struct.genl_ops] [%struct.genl_ops { ptr @ila_xlat_nl_cmd_add_mapping, ptr null, ptr null, ptr null, ptr null, i32 0, i8 1, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @ila_xlat_nl_cmd_del_mapping, ptr null, ptr null, ptr null, ptr null, i32 0, i8 2, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @ila_xlat_nl_cmd_flush, ptr null, ptr null, ptr null, ptr null, i32 0, i8 4, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @ila_xlat_nl_cmd_get_mapping, ptr @ila_xlat_nl_dump_start, ptr @ila_xlat_nl_dump, ptr @ila_xlat_nl_dump_done, ptr null, i32 0, i8 3, i8 0, i8 0, i8 3 }], [48 x i8] zeroinitializer }, align 32
@ila_nl_family = dso_local global %struct.genl_family { i32 0, i32 0, [16 x i8] c"ila\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 9, i32 0, i8 -64, i8 4, i8 0, i8 0, ptr @ila_nl_policy, ptr null, ptr null, ptr @ila_nl_ops, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@ila_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ila_init_net, ptr null, ptr @ila_exit_net, ptr null, ptr @ila_net_id, i32 240 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_ila__494_119_ila_init6 = internal global ptr @ila_init, section ".initcall6.init", align 4
@__exitcall_ila_fini = internal global ptr @ila_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_author495 = internal constant [45 x i8] c"ila.author=Tom Herbert <tom@herbertland.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file496 = internal constant [26 x i8] c"ila.file=net/ipv6/ila/ila\00", section ".modinfo", align 1
@__UNIQUE_ID_license497 = internal constant [16 x i8] c"ila.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description498 = internal constant [58 x i8] c"ila.description=IPv6: Identifier Locator Addressing (ILA)\00", section ".modinfo", align 1
@ila_net_id = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"ila_nl_policy\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 8, i32 32 }
@___asan_gen_.4 = private unnamed_addr constant [11 x i8] c"ila_nl_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 16, i32 30 }
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"ila_net_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 79, i32 33 }
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"ila_net_id\00", align 1
@___asan_gen_.11 = private constant [27 x i8] c"../net/ipv6/ila/ila_main.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 45, i32 14 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author495, ptr @__UNIQUE_ID_description498, ptr @__UNIQUE_ID_file496, ptr @__UNIQUE_ID_license497, ptr @__exitcall_ila_fini, ptr @__initcall__kmod_ila__494_119_ila_init6, ptr @ila_fini, ptr @ila_nl_policy, ptr @ila_nl_ops, ptr @ila_net_ops, ptr @ila_net_id], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ila_nl_policy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ila_nl_ops to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ila_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ila_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ila_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @ila_lwt_fini() #3
  %call = tail call i32 @genl_unregister_family(ptr noundef nonnull @ila_nl_family) #3
  tail call void @unregister_pernet_device(ptr noundef nonnull @ila_net_ops) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ila_lwt_fini() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ila_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_device(ptr noundef nonnull @ila_net_ops) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @genl_register_family(ptr noundef nonnull @ila_nl_family) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.register_family_fail_crit_edge

if.end.register_family_fail_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %register_family_fail

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @ila_lwt_init() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %fail_lwt

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

fail_lwt:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %call9 = tail call i32 @genl_unregister_family(ptr noundef nonnull @ila_nl_family) #3
  br label %register_family_fail

register_family_fail:                             ; preds = %fail_lwt, %if.end.register_family_fail_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.register_family_fail_crit_edge ], [ %call5, %fail_lwt ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @ila_net_ops) #3
  br label %cleanup

cleanup:                                          ; preds = %register_family_fail, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %ret.0, %register_family_fail ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ila_xlat_nl_cmd_add_mapping(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ila_xlat_nl_cmd_del_mapping(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ila_xlat_nl_cmd_flush(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ila_xlat_nl_cmd_get_mapping(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ila_xlat_nl_dump_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ila_xlat_nl_dump(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ila_xlat_nl_dump_done(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ila_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ila_xlat_init_net(ptr noundef %net) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ila_exit_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ila_xlat_exit_net(ptr noundef %net) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ila_xlat_init_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ila_xlat_exit_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ila_lwt_init() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @ila_nl_family, !1, !"ila_nl_family", i1 false, i1 false}
!1 = !{!"../net/ipv6/ila/ila_main.c", i32 47, i32 20}
!2 = !{ptr @__initcall__kmod_ila__494_119_ila_init6, !3, !"__initcall__kmod_ila__494_119_ila_init6", i1 false, i1 false}
!3 = !{!"../net/ipv6/ila/ila_main.c", i32 119, i32 1}
!4 = !{ptr @__exitcall_ila_fini, !5, !"__exitcall_ila_fini", i1 false, i1 false}
!5 = !{!"../net/ipv6/ila/ila_main.c", i32 120, i32 1}
!6 = !{ptr @__UNIQUE_ID_author495, !7, !"__UNIQUE_ID_author495", i1 false, i1 false}
!7 = !{!"../net/ipv6/ila/ila_main.c", i32 121, i32 1}
!8 = !{ptr @__UNIQUE_ID_file496, !9, !"__UNIQUE_ID_file496", i1 false, i1 false}
!9 = !{!"../net/ipv6/ila/ila_main.c", i32 122, i32 1}
!10 = !{ptr @__UNIQUE_ID_license497, !9, !"__UNIQUE_ID_license497", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description498, !12, !"__UNIQUE_ID_description498", i1 false, i1 false}
!12 = !{!"../net/ipv6/ila/ila_main.c", i32 123, i32 1}
!13 = !{ptr @ila_net_id, !14, !"ila_net_id", i1 false, i1 false}
!14 = !{!"../net/ipv6/ila/ila_main.c", i32 45, i32 14}
!15 = !{ptr @ila_nl_policy, !16, !"ila_nl_policy", i1 false, i1 false}
!16 = !{!"../net/ipv6/ila/ila_main.c", i32 8, i32 32}
!17 = !{ptr @ila_nl_ops, !18, !"ila_nl_ops", i1 false, i1 false}
!18 = !{!"../net/ipv6/ila/ila_main.c", i32 16, i32 30}
!19 = !{ptr @ila_net_ops, !20, !"ila_net_ops", i1 false, i1 false}
!20 = !{!"../net/ipv6/ila/ila_main.c", i32 79, i32 33}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
