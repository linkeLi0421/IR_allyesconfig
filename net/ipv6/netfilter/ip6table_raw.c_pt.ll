; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter/ip6table_raw.c_pt.bc'
source_filename = "../net/ipv6/netfilter/ip6table_raw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.164 }
%union.anon.164 = type { ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.xt_table = type { %struct.list_head, i32, ptr, ptr, ptr, i8, i32, [32 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__UNIQUE_ID_raw_before_defrag618 = internal constant [67 x i8] c"ip6table_raw.parm=raw_before_defrag:Enable raw table before defrag\00", section ".modinfo", align 1
@__param_str_raw_before_defrag = internal constant [31 x i8] c"ip6table_raw.raw_before_defrag\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@raw_before_defrag = internal global i8 0, section ".data..read_mostly", align 1
@__param_raw_before_defrag = internal constant %struct.kernel_param { ptr @__param_str_raw_before_defrag, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.164 { ptr @raw_before_defrag } }, section "__param", align 4
@__UNIQUE_ID_raw_before_defragtype619 = internal constant [45 x i8] c"ip6table_raw.parmtype=raw_before_defrag:bool\00", section ".modinfo", align 1
@ip6table_raw_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr null, ptr @ip6table_raw_net_pre_exit, ptr @ip6table_raw_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@packet_raw = internal constant { %struct.xt_table, [32 x i8] } { %struct.xt_table { %struct.list_head zeroinitializer, i32 9, ptr null, ptr null, ptr null, i8 10, i32 -300, [32 x i8] c"raw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [32 x i8] zeroinitializer }, align 32
@rawtable_ops = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__initcall__kmod_ip6table_raw__620_106_ip6table_raw_init6 = internal global ptr @ip6table_raw_init, section ".initcall6.init", align 4
@__exitcall_ip6table_raw_fini = internal global ptr @ip6table_raw_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file621 = internal constant [50 x i8] c"ip6table_raw.file=net/ipv6/netfilter/ip6table_raw\00", section ".modinfo", align 1
@__UNIQUE_ID_license622 = internal constant [25 x i8] c"ip6table_raw.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"raw\00", [28 x i8] zeroinitializer }, align 32
@packet_raw_before_defrag = internal constant { %struct.xt_table, [32 x i8] } { %struct.xt_table { %struct.list_head zeroinitializer, i32 9, ptr null, ptr null, ptr null, i8 10, i32 -450, [32 x i8] c"raw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [32 x i8] zeroinitializer }, align 32
@ip6table_raw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016ip6table_raw: Enabling raw table before defrag\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip6table_raw_init\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"net/ipv6/netfilter/ip6table_raw.c\00", [62 x i8] zeroinitializer }, align 32
@ip6table_raw_init._entry_ptr = internal global ptr @ip6table_raw_init._entry, section ".printk_index", align 4
@___asan_gen_.4 = private unnamed_addr constant [21 x i8] c"ip6table_raw_net_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 63, i32 33 }
@___asan_gen_.7 = private unnamed_addr constant [11 x i8] c"packet_raw\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 18, i32 30 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 55, i32 38 }
@___asan_gen_.13 = private unnamed_addr constant [25 x i8] c"packet_raw_before_defrag\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 26, i32 30 }
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [37 x i8] c"../net/ipv6/netfilter/ip6table_raw.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 75, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_file621, ptr @__UNIQUE_ID_license622, ptr @__UNIQUE_ID_raw_before_defrag618, ptr @__UNIQUE_ID_raw_before_defragtype619, ptr @__exitcall_ip6table_raw_fini, ptr @__initcall__kmod_ip6table_raw__620_106_ip6table_raw_init6, ptr @__param_raw_before_defrag, ptr @ip6table_raw_fini, ptr @ip6table_raw_init._entry, ptr @ip6table_raw_init._entry_ptr, ptr @ip6table_raw_net_ops, ptr @packet_raw, ptr @.str, ptr @packet_raw_before_defrag, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6table_raw_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packet_raw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packet_raw_before_defrag to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6table_raw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ip6table_raw_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ip6table_raw_net_ops) #4
  tail call void @xt_unregister_template(ptr noundef nonnull @packet_raw) #4
  %0 = load ptr, ptr @rawtable_ops, align 4
  tail call void @kfree(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6table_raw_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @raw_before_defrag, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %table.0 = phi ptr [ @packet_raw_before_defrag, %if.then ], [ @packet_raw, %entry.if.end_crit_edge ]
  %call1 = tail call i32 @xt_register_template(ptr noundef nonnull %table.0, ptr noundef nonnull @ip6table_raw_table_init) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @xt_hook_ops_alloc(ptr noundef nonnull %table.0, ptr noundef nonnull @ip6t_do_table) #4
  store ptr %call4, ptr @rawtable_ops, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_template(ptr noundef nonnull %table.0) #4
  %1 = load ptr, ptr @rawtable_ops, align 4
  %2 = ptrtoint ptr %1 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call9 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ip6table_raw_net_ops) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %3 = load ptr, ptr @rawtable_ops, align 4
  tail call void @kfree(ptr noundef %3) #4
  tail call void @xt_unregister_template(ptr noundef nonnull %table.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end8.cleanup_crit_edge, %if.then6, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %call9, %if.then11 ], [ %call1, %if.end.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6table_raw_net_pre_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ip6t_unregister_table_pre_exit(ptr noundef %net, ptr noundef nonnull @.str) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6table_raw_net_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ip6t_unregister_table_exit(ptr noundef %net, ptr noundef nonnull @.str) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6t_unregister_table_pre_exit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6t_unregister_table_exit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_template(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6table_raw_table_init(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @raw_before_defrag, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %spec.select = select i1 %tobool.not, ptr @packet_raw, ptr @packet_raw_before_defrag
  %call = tail call ptr @ip6t_alloc_initial_table(ptr noundef nonnull %spec.select) #4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = load ptr, ptr @rawtable_ops, align 4
  %call3 = tail call i32 @ip6t_register_table(ptr noundef %net, ptr noundef nonnull %spec.select, ptr noundef nonnull %call, ptr noundef %1) #4
  tail call void @kfree(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ -12, %entry.cleanup_crit_edge ]
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
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__UNIQUE_ID_raw_before_defrag618, !1, !"__UNIQUE_ID_raw_before_defrag618", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter/ip6table_raw.c", i32 15, i32 1}
!2 = !{ptr @__param_raw_before_defrag, !3, !"__param_raw_before_defrag", i1 false, i1 false}
!3 = !{!"../net/ipv6/netfilter/ip6table_raw.c", i32 16, i32 1}
!4 = !{ptr @__UNIQUE_ID_raw_before_defragtype619, !3, !"__UNIQUE_ID_raw_before_defragtype619", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_ip6table_raw__620_106_ip6table_raw_init6, !6, !"__initcall__kmod_ip6table_raw__620_106_ip6table_raw_init6", i1 false, i1 false}
!6 = !{!"../net/ipv6/netfilter/ip6table_raw.c", i32 106, i32 1}
!7 = !{ptr @__exitcall_ip6table_raw_fini, !8, !"__exitcall_ip6table_raw_fini", i1 false, i1 false}
!8 = !{!"../net/ipv6/netfilter/ip6table_raw.c", i32 107, i32 1}
!9 = !{ptr @__UNIQUE_ID_file621, !10, !"__UNIQUE_ID_file621", i1 false, i1 false}
!10 = !{!"../net/ipv6/netfilter/ip6table_raw.c", i32 108, i32 1}
!11 = !{ptr @__UNIQUE_ID_license622, !10, !"__UNIQUE_ID_license622", i1 false, i1 false}
!12 = !{ptr @raw_before_defrag, !13, !"raw_before_defrag", i1 false, i1 false}
!13 = !{!"../net/ipv6/netfilter/ip6table_raw.c", i32 14, i32 13}
!14 = !{ptr @rawtable_ops, !15, !"rawtable_ops", i1 false, i1 false}
!15 = !{!"../net/ipv6/netfilter/ip6table_raw.c", i32 34, i32 28}
!16 = !{ptr @__param_str_raw_before_defrag, !3, !"__param_str_raw_before_defrag", i1 false, i1 false}
!17 = !{ptr @ip6table_raw_net_ops, !18, !"ip6table_raw_net_ops", i1 false, i1 false}
!18 = !{!"../net/ipv6/netfilter/ip6table_raw.c", i32 63, i32 33}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/ipv6/netfilter/ip6table_raw.c", i32 55, i32 38}
!21 = !{ptr @packet_raw, !22, !"packet_raw", i1 false, i1 false}
!22 = !{!"../net/ipv6/netfilter/ip6table_raw.c", i32 18, i32 30}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/ipv6/netfilter/ip6table_raw.c", i32 75, i32 3}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ip6table_raw_init._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @ip6table_raw_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @packet_raw_before_defrag, !30, !"packet_raw_before_defrag", i1 false, i1 false}
!30 = !{!"../net/ipv6/netfilter/ip6table_raw.c", i32 26, i32 30}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i8 0, i8 2}
