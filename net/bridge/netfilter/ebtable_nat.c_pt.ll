; ModuleID = '/llk/IR_all_yes/net/bridge/netfilter/ebtable_nat.c_pt.bc'
source_filename = "../net/bridge/netfilter/ebtable_nat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ebt_table = type { %struct.list_head, [32 x i8], ptr, i32, %struct.rwlock_t, ptr, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ebt_replace_kernel = type { [32 x i8], i32, i32, i32, [6 x ptr], i32, ptr, ptr }
%struct.ebt_entries = type { i32, [32 x i8], i32, i32, i32, [0 x i8] }
%struct.nf_hook_ops = type { ptr, ptr, ptr, i8, i8, i32, i32 }

@frame_nat_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr null, ptr @frame_nat_net_pre_exit, ptr @frame_nat_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@frame_nat = internal constant { %struct.ebt_table, [52 x i8] } { %struct.ebt_table { %struct.list_head zeroinitializer, [32 x i8] c"nat\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @initial_table, i32 25, %struct.rwlock_t zeroinitializer, ptr @check, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_ebtable_nat__475_124_ebtable_nat_init6 = internal global ptr @ebtable_nat_init, section ".initcall6.init", align 4
@__exitcall_ebtable_nat_fini = internal global ptr @ebtable_nat_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file476 = internal constant [50 x i8] c"ebtable_nat.file=net/bridge/netfilter/ebtable_nat\00", section ".modinfo", align 1
@__UNIQUE_ID_license477 = internal constant [24 x i8] c"ebtable_nat.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nat\00", [28 x i8] zeroinitializer }, align 32
@initial_table = internal global { %struct.ebt_replace_kernel, [48 x i8] } { %struct.ebt_replace_kernel { [32 x i8] c"nat\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 25, i32 0, i32 144, [6 x ptr] [ptr @initial_chains, ptr null, ptr null, ptr getelementptr (i8, ptr @initial_chains, i64 48), ptr getelementptr (i8, ptr @initial_chains, i64 96), ptr null], i32 0, ptr null, ptr @initial_chains }, [48 x i8] zeroinitializer }, align 32
@initial_chains = internal global { [3 x %struct.ebt_entries], [48 x i8] } { [3 x %struct.ebt_entries] [%struct.ebt_entries { i32 0, [32 x i8] c"PREROUTING\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 -1, i32 0, [0 x i8] zeroinitializer }, %struct.ebt_entries { i32 0, [32 x i8] c"OUTPUT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 -1, i32 0, [0 x i8] zeroinitializer }, %struct.ebt_entries { i32 0, [32 x i8] c"POSTROUTING\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 -1, i32 0, [0 x i8] zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@ebt_ops_nat = internal constant { [3 x %struct.nf_hook_ops], [56 x i8] } { [3 x %struct.nf_hook_ops] [%struct.nf_hook_ops { ptr @ebt_do_table, ptr null, ptr null, i8 7, i8 0, i32 3, i32 100 }, %struct.nf_hook_ops { ptr @ebt_do_table, ptr null, ptr null, i8 7, i8 0, i32 4, i32 300 }, %struct.nf_hook_ops { ptr @ebt_do_table, ptr null, ptr null, i8 7, i8 0, i32 0, i32 -300 }], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"frame_nat_net_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 97, i32 33 }
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"frame_nat\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 53, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 89, i32 37 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"initial_table\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 34, i32 34 }
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"initial_chains\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 19, i32 27 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"ebt_ops_nat\00", align 1
@___asan_gen_.17 = private constant [38 x i8] c"../net/bridge/netfilter/ebtable_nat.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 61, i32 33 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_file476, ptr @__UNIQUE_ID_license477, ptr @__exitcall_ebtable_nat_fini, ptr @__initcall__kmod_ebtable_nat__475_124_ebtable_nat_init6, ptr @ebtable_nat_fini, ptr @frame_nat_net_ops, ptr @frame_nat, ptr @.str, ptr @initial_table, ptr @initial_chains, ptr @ebt_ops_nat], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frame_nat_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frame_nat to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initial_table to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initial_chains to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_ops_nat to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ebtable_nat_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @frame_nat_net_ops) #4
  tail call void @ebt_unregister_template(ptr noundef nonnull @frame_nat) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ebt_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ebtable_nat_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ebt_register_template(ptr noundef nonnull @frame_nat, ptr noundef nonnull @frame_nat_table_init) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @frame_nat_net_ops) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ebt_unregister_template(ptr noundef nonnull @frame_nat) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @frame_nat_net_pre_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ebt_unregister_table_pre_exit(ptr noundef %net, ptr noundef nonnull @.str) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @frame_nat_net_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ebt_unregister_table(ptr noundef %net, ptr noundef nonnull @.str) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ebt_unregister_table_pre_exit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ebt_unregister_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @check(ptr nocapture noundef readnone %info, i32 noundef %valid_hooks) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %valid_hooks, -26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ebt_register_template(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @frame_nat_table_init(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ebt_register_table(ptr noundef %net, ptr noundef nonnull @frame_nat, ptr noundef nonnull @ebt_ops_nat) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ebt_register_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ebt_do_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__initcall__kmod_ebtable_nat__475_124_ebtable_nat_init6, !1, !"__initcall__kmod_ebtable_nat__475_124_ebtable_nat_init6", i1 false, i1 false}
!1 = !{!"../net/bridge/netfilter/ebtable_nat.c", i32 124, i32 1}
!2 = !{ptr @__exitcall_ebtable_nat_fini, !3, !"__exitcall_ebtable_nat_fini", i1 false, i1 false}
!3 = !{!"../net/bridge/netfilter/ebtable_nat.c", i32 125, i32 1}
!4 = !{ptr @__UNIQUE_ID_file476, !5, !"__UNIQUE_ID_file476", i1 false, i1 false}
!5 = !{!"../net/bridge/netfilter/ebtable_nat.c", i32 126, i32 1}
!6 = !{ptr @__UNIQUE_ID_license477, !5, !"__UNIQUE_ID_license477", i1 false, i1 false}
!7 = !{ptr @frame_nat_net_ops, !8, !"frame_nat_net_ops", i1 false, i1 false}
!8 = !{!"../net/bridge/netfilter/ebtable_nat.c", i32 97, i32 33}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/bridge/netfilter/ebtable_nat.c", i32 89, i32 37}
!11 = !{ptr @frame_nat, !12, !"frame_nat", i1 false, i1 false}
!12 = !{!"../net/bridge/netfilter/ebtable_nat.c", i32 53, i32 31}
!13 = !{ptr @initial_table, !14, !"initial_table", i1 false, i1 false}
!14 = !{!"../net/bridge/netfilter/ebtable_nat.c", i32 34, i32 34}
!15 = !{ptr @initial_chains, !16, !"initial_chains", i1 false, i1 false}
!16 = !{!"../net/bridge/netfilter/ebtable_nat.c", i32 19, i32 27}
!17 = !{ptr @ebt_ops_nat, !18, !"ebt_ops_nat", i1 false, i1 false}
!18 = !{!"../net/bridge/netfilter/ebtable_nat.c", i32 61, i32 33}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
