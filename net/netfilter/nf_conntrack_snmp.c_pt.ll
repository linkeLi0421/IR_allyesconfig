; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_snmp.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_snmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_nat_snmp_hook\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_snmp_hook\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_snmp_hook\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_snmp_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_snmp_hook\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_snmp_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.134 }
%union.anon.134 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nf_conntrack_expect_policy = type { i32, i32, [16 x i8] }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.nf_inet_addr = type { [4 x i32] }
%struct.anon.156 = type { i16 }
%struct.anon.161 = type { %union.nf_inet_addr, %union.anon.162, i8, i8 }
%union.anon.162 = type { i16 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.169, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.161 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_conntrack_man_proto = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.anon.169 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }

@__UNIQUE_ID_author581 = internal constant [54 x i8] c"nf_conntrack_snmp.author=Jiri Olsa <jolsa@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description582 = internal constant [80 x i8] c"nf_conntrack_snmp.description=SNMP service broadcast connection tracking helper\00", section ".modinfo", align 1
@__UNIQUE_ID_file583 = internal constant [55 x i8] c"nf_conntrack_snmp.file=net/netfilter/nf_conntrack_snmp\00", section ".modinfo", align 1
@__UNIQUE_ID_license584 = internal constant [30 x i8] c"nf_conntrack_snmp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias585 = internal constant [41 x i8] c"nf_conntrack_snmp.alias=nfct-helper-snmp\00", section ".modinfo", align 1
@__param_str_timeout = internal constant [26 x i8] c"nf_conntrack_snmp.timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global i32 30, section ".data..read_mostly", align 4
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.134 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype586 = internal constant [40 x i8] c"nf_conntrack_snmp.parmtype=timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout587 = internal constant [80 x i8] c"nf_conntrack_snmp.parm=timeout:timeout for master connection/replies in seconds\00", section ".modinfo", align 1
@nf_nat_snmp_hook = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_nf_nat_snmp_hook = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_snmp_hook = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_snmp_hook = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_snmp_hook to i32), ptr @__kstrtab_nf_nat_snmp_hook, ptr @__kstrtabns_nf_nat_snmp_hook }, section "___ksymtab_gpl+nf_nat_snmp_hook", align 4
@__initcall__kmod_nf_conntrack_snmp__590_74_nf_conntrack_snmp_init6 = internal global ptr @nf_conntrack_snmp_init, section ".initcall6.init", align 4
@__exitcall_nf_conntrack_snmp_fini = internal global ptr @nf_conntrack_snmp_fini, section ".exitcall.exit", align 4
@exp_policy = internal global { %struct.nf_conntrack_expect_policy, [40 x i8] } { %struct.nf_conntrack_expect_policy { i32 1, i32 0, [16 x i8] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@helper = internal global { %struct.hlist_node, [16 x i8], %struct.refcount_struct, ptr, ptr, { { %union.nf_inet_addr, { %struct.anon.156 }, i16 }, %struct.anon.161 }, ptr, ptr, ptr, ptr, i32, i32, i32, i16, [16 x i8] } { %struct.hlist_node zeroinitializer, [16 x i8] c"snmp\00\00\00\00\00\00\00\00\00\00\00\00", %struct.refcount_struct zeroinitializer, ptr null, ptr @exp_policy, { { %union.nf_inet_addr, { %struct.anon.156 }, i16 }, %struct.anon.161 } { { %union.nf_inet_addr, { %struct.anon.156 }, i16 } { %union.nf_inet_addr zeroinitializer, { %struct.anon.156 } { %struct.anon.156 { i16 161 } }, i16 2 }, %struct.anon.161 { %union.nf_inet_addr zeroinitializer, %union.anon.162 zeroinitializer, i8 17, i8 0 } }, ptr @snmp_conntrack_help, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i16 0, [16 x i8] zeroinitializer }, section ".data..read_mostly", align 4
@snmp_conntrack_help.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"net/netfilter/nf_conntrack_snmp.c\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"nf_nat_snmp_hook\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 28, i32 7 }
@___asan_gen_.6 = private unnamed_addr constant [11 x i8] c"exp_policy\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 49, i32 42 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [37 x i8] c"../net/netfilter/nf_conntrack_snmp.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 42, i32 16 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_alias585, ptr @__UNIQUE_ID_author581, ptr @__UNIQUE_ID_description582, ptr @__UNIQUE_ID_file583, ptr @__UNIQUE_ID_license584, ptr @__UNIQUE_ID_timeout587, ptr @__UNIQUE_ID_timeouttype586, ptr @__exitcall_nf_conntrack_snmp_fini, ptr @__initcall__kmod_nf_conntrack_snmp__590_74_nf_conntrack_snmp_init6, ptr @__ksymtab_nf_nat_snmp_hook, ptr @__param_timeout, ptr @nf_conntrack_snmp_fini, ptr @nf_nat_snmp_hook, ptr @exp_policy, ptr @.str, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_nat_snmp_hook to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exp_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_conntrack_snmp_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nf_conntrack_helper_unregister(ptr noundef nonnull @helper) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_helper_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_conntrack_snmp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @timeout, align 4
  store i32 %0, ptr getelementptr inbounds (%struct.nf_conntrack_expect_policy, ptr @exp_policy, i32 0, i32 1), align 4
  %call = tail call i32 @nf_conntrack_helper_register(ptr noundef nonnull @helper) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snmp_conntrack_help(ptr noundef %skb, i32 noundef %protoff, ptr noundef %ct, i32 noundef %ctinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @timeout, align 4
  %call = tail call i32 @nf_conntrack_broadcast_help(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %0) #3
  %1 = load volatile ptr, ptr @nf_nat_snmp_hook, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b21 = load i1, ptr @snmp_conntrack_help.__warned, align 1
  br i1 %.b21, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @snmp_conntrack_help.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 42, ptr noundef nonnull @.str.2) #3
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %do.end8.cleanup_crit_edge, label %land.lhs.true11

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true11:                                  ; preds = %do.end8
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 8
  %and = and i32 %3, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %land.lhs.true11.cleanup_crit_edge, label %if.then13

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #5
  %call14 = tail call i32 %1(ptr noundef %skb, i32 noundef %protoff, ptr noundef %ct, i32 noundef %ctinfo) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %land.lhs.true11.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then13 ], [ 1, %land.lhs.true11.cleanup_crit_edge ], [ 1, %do.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_broadcast_help(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_helper_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__UNIQUE_ID_author581, !1, !"__UNIQUE_ID_author581", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_snmp.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_description582, !3, !"__UNIQUE_ID_description582", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_conntrack_snmp.c", i32 20, i32 1}
!4 = !{ptr @__UNIQUE_ID_file583, !5, !"__UNIQUE_ID_file583", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_conntrack_snmp.c", i32 21, i32 1}
!6 = !{ptr @__UNIQUE_ID_license584, !5, !"__UNIQUE_ID_license584", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias585, !8, !"__UNIQUE_ID_alias585", i1 false, i1 false}
!8 = !{!"../net/netfilter/nf_conntrack_snmp.c", i32 22, i32 1}
!9 = !{ptr @__param_timeout, !10, !"__param_timeout", i1 false, i1 false}
!10 = !{!"../net/netfilter/nf_conntrack_snmp.c", i32 25, i32 1}
!11 = !{ptr @__UNIQUE_ID_timeouttype586, !10, !"__UNIQUE_ID_timeouttype586", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_timeout587, !13, !"__UNIQUE_ID_timeout587", i1 false, i1 false}
!13 = !{!"../net/netfilter/nf_conntrack_snmp.c", i32 26, i32 1}
!14 = !{ptr @__ksymtab_nf_nat_snmp_hook, !15, !"__ksymtab_nf_nat_snmp_hook", i1 false, i1 false}
!15 = !{!"../net/netfilter/nf_conntrack_snmp.c", i32 32, i32 1}
!16 = !{ptr @__initcall__kmod_nf_conntrack_snmp__590_74_nf_conntrack_snmp_init6, !17, !"__initcall__kmod_nf_conntrack_snmp__590_74_nf_conntrack_snmp_init6", i1 false, i1 false}
!17 = !{!"../net/netfilter/nf_conntrack_snmp.c", i32 74, i32 1}
!18 = !{ptr @__exitcall_nf_conntrack_snmp_fini, !19, !"__exitcall_nf_conntrack_snmp_fini", i1 false, i1 false}
!19 = !{!"../net/netfilter/nf_conntrack_snmp.c", i32 75, i32 1}
!20 = !{ptr @nf_nat_snmp_hook, !21, !"nf_nat_snmp_hook", i1 false, i1 false}
!21 = !{!"../net/netfilter/nf_conntrack_snmp.c", i32 28, i32 7}
!22 = !{ptr @__param_str_timeout, !10, !"__param_str_timeout", i1 false, i1 false}
!23 = !{ptr @timeout, !24, !"timeout", i1 false, i1 false}
!24 = !{!"../net/netfilter/nf_conntrack_snmp.c", i32 24, i32 21}
!25 = !{ptr @helper, !26, !"helper", i1 false, i1 false}
!26 = !{!"../net/netfilter/nf_conntrack_snmp.c", i32 53, i32 35}
!27 = !{ptr @exp_policy, !28, !"exp_policy", i1 false, i1 false}
!28 = !{!"../net/netfilter/nf_conntrack_snmp.c", i32 49, i32 42}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/netfilter/nf_conntrack_snmp.c", i32 42, i32 16}
!31 = !{ptr @.str, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
