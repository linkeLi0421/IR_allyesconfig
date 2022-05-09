; ModuleID = '/llk/IR_all_yes/net/ipv4/netfilter/iptable_filter.c_pt.bc'
source_filename = "../net/ipv4/netfilter/iptable_filter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.xt_table = type { %struct.list_head, i32, ptr, ptr, ptr, i8, i32, [32 x i8] }
%struct.ipt_replace = type { [32 x i8], i32, i32, i32, [5 x i32], [5 x i32], i32, ptr, [0 x %struct.ipt_entry] }
%struct.ipt_entry = type { %struct.ipt_ip, i32, i16, i16, i32, %struct.xt_counters, [0 x i8] }
%struct.ipt_ip = type { %struct.in_addr, %struct.in_addr, %struct.in_addr, %struct.in_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8 }
%struct.in_addr = type { i32 }
%struct.xt_counters = type { i64, i64 }

@__UNIQUE_ID_file509 = internal constant [54 x i8] c"iptable_filter.file=net/ipv4/netfilter/iptable_filter\00", section ".modinfo", align 1
@__UNIQUE_ID_license510 = internal constant [27 x i8] c"iptable_filter.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author511 = internal constant [67 x i8] c"iptable_filter.author=Netfilter Core Team <coreteam@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description512 = internal constant [49 x i8] c"iptable_filter.description=iptables filter table\00", section ".modinfo", align 1
@__param_str_forward = internal constant [23 x i8] c"iptable_filter.forward\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@forward = internal global i8 1, section ".data..read_mostly", align 1
@__param_forward = internal constant %struct.kernel_param { ptr @__param_str_forward, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.125 { ptr @forward } }, section "__param", align 4
@__UNIQUE_ID_forwardtype513 = internal constant [37 x i8] c"iptable_filter.parmtype=forward:bool\00", section ".modinfo", align 1
@iptable_filter_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @iptable_filter_net_init, ptr @iptable_filter_net_pre_exit, ptr @iptable_filter_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@packet_filter = internal constant { %struct.xt_table, [32 x i8] } { %struct.xt_table { %struct.list_head zeroinitializer, i32 14, ptr null, ptr null, ptr null, i8 2, i32 0, [32 x i8] c"filter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [32 x i8] zeroinitializer }, align 32
@filter_ops = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__initcall__kmod_iptable_filter__514_109_iptable_filter_init6 = internal global ptr @iptable_filter_init, section ".initcall6.init", align 4
@__exitcall_iptable_filter_fini = internal global ptr @iptable_filter_fini, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"filter\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"iptable_filter_net_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 72, i32 33 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"packet_filter\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 23, i32 30 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [39 x i8] c"../net/ipv4/netfilter/iptable_filter.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 64, i32 37 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author511, ptr @__UNIQUE_ID_description512, ptr @__UNIQUE_ID_file509, ptr @__UNIQUE_ID_forwardtype513, ptr @__UNIQUE_ID_license510, ptr @__exitcall_iptable_filter_fini, ptr @__initcall__kmod_iptable_filter__514_109_iptable_filter_init6, ptr @__param_forward, ptr @iptable_filter_fini, ptr @iptable_filter_net_ops, ptr @packet_filter, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iptable_filter_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packet_filter to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iptable_filter_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @iptable_filter_net_ops) #3
  tail call void @xt_unregister_template(ptr noundef nonnull @packet_filter) #3
  %0 = load ptr, ptr @filter_ops, align 4
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
define internal i32 @iptable_filter_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_template(ptr noundef nonnull @packet_filter, ptr noundef nonnull @iptable_filter_table_init) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @xt_hook_ops_alloc(ptr noundef nonnull @packet_filter, ptr noundef nonnull @ipt_do_table) #3
  store ptr %call1, ptr @filter_ops, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @xt_unregister_template(ptr noundef nonnull @packet_filter) #3
  %0 = load ptr, ptr @filter_ops, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @iptable_filter_net_ops) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @xt_unregister_template(ptr noundef nonnull @packet_filter) #3
  %2 = load ptr, ptr @filter_ops, align 4
  tail call void @kfree(ptr noundef %2) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then3 ], [ %call6, %if.then8 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iptable_filter_net_init(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @forward, align 1, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @ipt_alloc_initial_table(ptr noundef nonnull @packet_filter) #3
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then.return_crit_edge, label %if.end.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %1 = load i8, ptr @forward, align 1, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %cond.i = select i1 %tobool.not.i, i32 -1, i32 -2
  %verdict.i = getelementptr %struct.ipt_replace, ptr %call.i, i32 4, i32 0, i32 8
  %2 = ptrtoint ptr %verdict.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond.i, ptr %verdict.i, align 8
  %3 = load ptr, ptr @filter_ops, align 4
  %call1.i = tail call i32 @ipt_register_table(ptr noundef %net, ptr noundef nonnull @packet_filter, ptr noundef nonnull %call.i, ptr noundef %3) #3
  tail call void @kfree(ptr noundef nonnull %call.i) #3
  br label %return

return:                                           ; preds = %if.end.i, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %call1.i, %if.end.i ], [ -12, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iptable_filter_net_pre_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ipt_unregister_table_pre_exit(ptr noundef %net, ptr noundef nonnull @.str) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iptable_filter_net_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ipt_unregister_table_exit(ptr noundef %net, ptr noundef nonnull @.str) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iptable_filter_table_init(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ipt_alloc_initial_table(ptr noundef nonnull @packet_filter) #3
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = load i8, ptr @forward, align 1, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %cond = select i1 %tobool.not, i32 -1, i32 -2
  %verdict = getelementptr %struct.ipt_replace, ptr %call, i32 4, i32 0, i32 8
  %1 = ptrtoint ptr %verdict to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cond, ptr %verdict, align 8
  %2 = load ptr, ptr @filter_ops, align 4
  %call1 = tail call i32 @ipt_register_table(ptr noundef %net, ptr noundef nonnull @packet_filter, ptr noundef nonnull %call, ptr noundef %2) #3
  tail call void @kfree(ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipt_alloc_initial_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipt_register_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipt_unregister_table_pre_exit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipt_unregister_table_exit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_template(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_hook_ops_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipt_do_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__UNIQUE_ID_file509, !1, !"__UNIQUE_ID_file509", i1 false, i1 false}
!1 = !{!"../net/ipv4/netfilter/iptable_filter.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_license510, !1, !"__UNIQUE_ID_license510", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author511, !4, !"__UNIQUE_ID_author511", i1 false, i1 false}
!4 = !{!"../net/ipv4/netfilter/iptable_filter.c", i32 16, i32 1}
!5 = !{ptr @__UNIQUE_ID_description512, !6, !"__UNIQUE_ID_description512", i1 false, i1 false}
!6 = !{!"../net/ipv4/netfilter/iptable_filter.c", i32 17, i32 1}
!7 = !{ptr @__param_forward, !8, !"__param_forward", i1 false, i1 false}
!8 = !{!"../net/ipv4/netfilter/iptable_filter.c", i32 35, i32 1}
!9 = !{ptr @__UNIQUE_ID_forwardtype513, !8, !"__UNIQUE_ID_forwardtype513", i1 false, i1 false}
!10 = !{ptr @__initcall__kmod_iptable_filter__514_109_iptable_filter_init6, !11, !"__initcall__kmod_iptable_filter__514_109_iptable_filter_init6", i1 false, i1 false}
!11 = !{!"../net/ipv4/netfilter/iptable_filter.c", i32 109, i32 1}
!12 = !{ptr @__exitcall_iptable_filter_fini, !13, !"__exitcall_iptable_filter_fini", i1 false, i1 false}
!13 = !{!"../net/ipv4/netfilter/iptable_filter.c", i32 110, i32 1}
!14 = !{ptr @filter_ops, !15, !"filter_ops", i1 false, i1 false}
!15 = !{!"../net/ipv4/netfilter/iptable_filter.c", i32 31, i32 28}
!16 = !{ptr @__param_str_forward, !8, !"__param_str_forward", i1 false, i1 false}
!17 = !{ptr @forward, !18, !"forward", i1 false, i1 false}
!18 = !{!"../net/ipv4/netfilter/iptable_filter.c", i32 34, i32 13}
!19 = !{ptr @iptable_filter_net_ops, !20, !"iptable_filter_net_ops", i1 false, i1 false}
!20 = !{!"../net/ipv4/netfilter/iptable_filter.c", i32 72, i32 33}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/ipv4/netfilter/iptable_filter.c", i32 64, i32 37}
!23 = !{ptr @packet_filter, !24, !"packet_filter", i1 false, i1 false}
!24 = !{!"../net/ipv4/netfilter/iptable_filter.c", i32 23, i32 30}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i8 0, i8 2}
