; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter/ip6table_security.c_pt.bc'
source_filename = "../net/ipv6/netfilter/ip6table_security.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.xt_table = type { %struct.list_head, i32, ptr, ptr, ptr, i8, i32, [32 x i8] }

@__UNIQUE_ID_file618 = internal constant [60 x i8] c"ip6table_security.file=net/ipv6/netfilter/ip6table_security\00", section ".modinfo", align 1
@__UNIQUE_ID_license619 = internal constant [30 x i8] c"ip6table_security.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author620 = internal constant [64 x i8] c"ip6table_security.author=James Morris <jmorris <at> redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description621 = internal constant [70 x i8] c"ip6table_security.description=ip6tables security table, for MAC rules\00", section ".modinfo", align 1
@ip6table_security_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr null, ptr @ip6table_security_net_pre_exit, ptr @ip6table_security_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@security_table = internal constant { %struct.xt_table, [32 x i8] } { %struct.xt_table { %struct.list_head zeroinitializer, i32 14, ptr null, ptr null, ptr null, i8 10, i32 50, [32 x i8] c"security\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [32 x i8] zeroinitializer }, align 32
@sectbl_ops = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__initcall__kmod_ip6table_security__622_96_ip6table_security_init6 = internal global ptr @ip6table_security_init, section ".initcall6.init", align 4
@__exitcall_ip6table_security_fini = internal global ptr @ip6table_security_fini, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"security\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [26 x i8] c"ip6table_security_net_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 60, i32 33 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"security_table\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 27, i32 30 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [42 x i8] c"../net/ipv6/netfilter/ip6table_security.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 52, i32 38 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author620, ptr @__UNIQUE_ID_description621, ptr @__UNIQUE_ID_file618, ptr @__UNIQUE_ID_license619, ptr @__exitcall_ip6table_security_fini, ptr @__initcall__kmod_ip6table_security__622_96_ip6table_security_init6, ptr @ip6table_security_fini, ptr @ip6table_security_net_ops, ptr @security_table, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6table_security_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @security_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ip6table_security_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ip6table_security_net_ops) #3
  tail call void @xt_unregister_template(ptr noundef nonnull @security_table) #3
  %0 = load ptr, ptr @sectbl_ops, align 4
  tail call void @kfree(ptr noundef %0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6table_security_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_template(ptr noundef nonnull @security_table, ptr noundef nonnull @ip6table_security_table_init) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @xt_hook_ops_alloc(ptr noundef nonnull @security_table, ptr noundef nonnull @ip6t_do_table) #3
  store ptr %call1, ptr @sectbl_ops, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @xt_unregister_template(ptr noundef nonnull @security_table) #3
  %0 = load ptr, ptr @sectbl_ops, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ip6table_security_net_ops) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %2 = load ptr, ptr @sectbl_ops, align 4
  tail call void @kfree(ptr noundef %2) #3
  tail call void @xt_unregister_template(ptr noundef nonnull @security_table) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then3 ], [ %call6, %if.then8 ], [ %call, %entry.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6table_security_net_pre_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ip6t_unregister_table_pre_exit(ptr noundef %net, ptr noundef nonnull @.str) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6table_security_net_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ip6t_unregister_table_exit(ptr noundef %net, ptr noundef nonnull @.str) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6t_unregister_table_pre_exit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6t_unregister_table_exit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_template(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6table_security_table_init(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ip6t_alloc_initial_table(ptr noundef nonnull @security_table) #3
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = load ptr, ptr @sectbl_ops, align 4
  %call1 = tail call i32 @ip6t_register_table(ptr noundef %net, ptr noundef nonnull @security_table, ptr noundef nonnull %call, ptr noundef %0) #3
  tail call void @kfree(ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_hook_ops_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6t_do_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6t_alloc_initial_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6t_register_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__UNIQUE_ID_file618, !1, !"__UNIQUE_ID_file618", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter/ip6table_security.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_license619, !1, !"__UNIQUE_ID_license619", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author620, !4, !"__UNIQUE_ID_author620", i1 false, i1 false}
!4 = !{!"../net/ipv6/netfilter/ip6table_security.c", i32 20, i32 1}
!5 = !{ptr @__UNIQUE_ID_description621, !6, !"__UNIQUE_ID_description621", i1 false, i1 false}
!6 = !{!"../net/ipv6/netfilter/ip6table_security.c", i32 21, i32 1}
!7 = !{ptr @__initcall__kmod_ip6table_security__622_96_ip6table_security_init6, !8, !"__initcall__kmod_ip6table_security__622_96_ip6table_security_init6", i1 false, i1 false}
!8 = !{!"../net/ipv6/netfilter/ip6table_security.c", i32 96, i32 1}
!9 = !{ptr @__exitcall_ip6table_security_fini, !10, !"__exitcall_ip6table_security_fini", i1 false, i1 false}
!10 = !{!"../net/ipv6/netfilter/ip6table_security.c", i32 97, i32 1}
!11 = !{ptr @sectbl_ops, !12, !"sectbl_ops", i1 false, i1 false}
!12 = !{!"../net/ipv6/netfilter/ip6table_security.c", i32 35, i32 28}
!13 = !{ptr @ip6table_security_net_ops, !14, !"ip6table_security_net_ops", i1 false, i1 false}
!14 = !{!"../net/ipv6/netfilter/ip6table_security.c", i32 60, i32 33}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ipv6/netfilter/ip6table_security.c", i32 52, i32 38}
!17 = !{ptr @security_table, !18, !"security_table", i1 false, i1 false}
!18 = !{!"../net/ipv6/netfilter/ip6table_security.c", i32 27, i32 30}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
