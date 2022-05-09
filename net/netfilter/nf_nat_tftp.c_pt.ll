; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_nat_tftp.c_pt.bc'
source_filename = "../net/netfilter/nf_nat_tftp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nf_conntrack_nat_helper = type { %struct.list_head, [16 x i8], ptr }
%struct.list_head = type { ptr, ptr }
%struct.nf_conntrack_expect = type { %struct.hlist_node, %struct.hlist_node, %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple_mask, ptr, ptr, ptr, %struct.timer_list, %struct.refcount_struct, i32, i32, %union.nf_inet_addr, %union.nf_conntrack_man_proto, i32, %struct.callback_head }
%struct.hlist_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.161 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%struct.anon.161 = type { %union.nf_inet_addr, %union.anon.162, i8, i8 }
%union.anon.162 = type { i16 }
%struct.nf_conntrack_tuple_mask = type { %struct.anon.169 }
%struct.anon.169 = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.callback_head = type { ptr, ptr }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.170, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.170 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }

@__UNIQUE_ID_author581 = internal constant [51 x i8] c"nf_nat_tftp.author=Magnus Boden <mb@ozaba.mine.nu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description582 = internal constant [40 x i8] c"nf_nat_tftp.description=TFTP NAT helper\00", section ".modinfo", align 1
@__UNIQUE_ID_file583 = internal constant [43 x i8] c"nf_nat_tftp.file=net/netfilter/nf_nat_tftp\00", section ".modinfo", align 1
@__UNIQUE_ID_license584 = internal constant [24 x i8] c"nf_nat_tftp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias585 = internal constant [30 x i8] c"nf_nat_tftp.alias=ip_nat_tftp\00", section ".modinfo", align 1
@nat_helper_tftp = internal global { %struct.nf_conntrack_nat_helper, [36 x i8] } { %struct.nf_conntrack_nat_helper { %struct.list_head zeroinitializer, [16 x i8] c"ip_nat_tftp\00\00\00\00\00", ptr null }, [36 x i8] zeroinitializer }, align 32
@nf_nat_tftp_hook = external dso_local global ptr, align 4
@__initcall__kmod_nf_nat_tftp__588_55_nf_nat_tftp_init6 = internal global ptr @nf_nat_tftp_init, section ".initcall6.init", align 4
@__exitcall_nf_nat_tftp_fini = internal global ptr @nf_nat_tftp_fini, section ".exitcall.exit", align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot add expectation\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"nat_helper_tftp\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 20, i32 39 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [31 x i8] c"../net/netfilter/nf_nat_tftp.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 34, i32 38 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias585, ptr @__UNIQUE_ID_author581, ptr @__UNIQUE_ID_description582, ptr @__UNIQUE_ID_file583, ptr @__UNIQUE_ID_license584, ptr @__exitcall_nf_nat_tftp_fini, ptr @__initcall__kmod_nf_nat_tftp__588_55_nf_nat_tftp_init6, ptr @nf_nat_tftp_fini, ptr @nat_helper_tftp, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat_helper_tftp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_nat_tftp_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nf_nat_helper_unregister(ptr noundef nonnull @nat_helper_tftp) #3
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_tftp_hook to i32))
  store volatile ptr null, ptr @nf_nat_tftp_hook, align 4
  tail call void @synchronize_rcu() #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_helper_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_nat_tftp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_nat_tftp_hook to i32))
  %0 = load ptr, ptr @nf_nat_tftp_hook, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %do.end5, label %do.body2, !prof !26

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netfilter/nf_nat_tftp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 49, 0\0A.popsection", ""() #3, !srcloc !27
  unreachable

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nf_nat_helper_register(ptr noundef nonnull @nat_helper_tftp) #3
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_tftp_hook to i32))
  store volatile ptr @help, ptr @nf_nat_tftp_hook, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_helper_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @help(ptr noundef %skb, i32 noundef %ctinfo, ptr noundef %exp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 6
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %u = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 4, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %u, align 8
  %saved_proto = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 12
  %4 = ptrtoint ptr %saved_proto to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %saved_proto, align 4
  %dir = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 13
  %5 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %dir, align 4
  %expectfn = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 4
  %6 = ptrtoint ptr %expectfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nf_nat_follow_master, ptr %expectfn, align 4
  %call.i = tail call i32 @nf_ct_expect_related_report(ptr noundef %exp, i32 noundef 0, i32 noundef 0, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %master, align 4
  tail call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %8, ptr noundef nonnull @.str) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_follow_master(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_helper_log(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_expect_related_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__UNIQUE_ID_author581, !1, !"__UNIQUE_ID_author581", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_nat_tftp.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_description582, !3, !"__UNIQUE_ID_description582", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_nat_tftp.c", i32 16, i32 1}
!4 = !{ptr @__UNIQUE_ID_file583, !5, !"__UNIQUE_ID_file583", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_nat_tftp.c", i32 17, i32 1}
!6 = !{ptr @__UNIQUE_ID_license584, !5, !"__UNIQUE_ID_license584", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias585, !8, !"__UNIQUE_ID_alias585", i1 false, i1 false}
!8 = !{!"../net/netfilter/nf_nat_tftp.c", i32 18, i32 1}
!9 = !{ptr @__initcall__kmod_nf_nat_tftp__588_55_nf_nat_tftp_init6, !10, !"__initcall__kmod_nf_nat_tftp__588_55_nf_nat_tftp_init6", i1 false, i1 false}
!10 = !{!"../net/netfilter/nf_nat_tftp.c", i32 55, i32 1}
!11 = !{ptr @__exitcall_nf_nat_tftp_fini, !12, !"__exitcall_nf_nat_tftp_fini", i1 false, i1 false}
!12 = !{!"../net/netfilter/nf_nat_tftp.c", i32 56, i32 1}
!13 = !{ptr @nat_helper_tftp, !14, !"nat_helper_tftp", i1 false, i1 false}
!14 = !{!"../net/netfilter/nf_nat_tftp.c", i32 20, i32 39}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/nf_nat_tftp.c", i32 34, i32 38}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2157995036, i64 2157995527, i64 2157995073, i64 2157995129, i64 2157995163, i64 2157995187, i64 2157995228, i64 2157995249, i64 2157995277, i64 2157995311}
