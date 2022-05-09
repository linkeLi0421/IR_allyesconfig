; ModuleID = '/llk/IR_all_yes/net/ipv6/ip6_icmp.c_pt.bc'
source_filename = "../net/ipv6/ip6_icmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+icmpv6_ndo_send\22, \22a\22\09"
module asm "\09.weak\09__crc_icmpv6_ndo_send\09\09\09\09"
module asm "\09.long\09__crc_icmpv6_ndo_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icmpv6_ndo_send:\09\09\09\09\09"
module asm "\09.asciz \09\22icmpv6_ndo_send\22\09\09\09\09\09"
module asm "__kstrtabns_icmpv6_ndo_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inet6_skb_parm = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.134, %union.anon.135, [48 x i8], %union.anon.136, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.138, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.134 = type { ptr }
%union.anon.135 = type { i64 }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type { i32, ptr }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.140, i32, i32, i32, i16, i16, %union.anon.142, i32, %union.anon.143, %union.anon.144, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.140 = type { i32 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.144 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.169, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.161 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.161 = type { %union.nf_inet_addr, %union.anon.162, i8, i8 }
%union.anon.162 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.169 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }

@__kstrtab_icmpv6_ndo_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_icmpv6_ndo_send = external dso_local constant [0 x i8], align 1
@__ksymtab_icmpv6_ndo_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icmpv6_ndo_send to i32), ptr @__kstrtab_icmpv6_ndo_send, ptr @__kstrtabns_icmpv6_ndo_send }, section "___ksymtab+icmpv6_ndo_send", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_icmpv6_ndo_send], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @icmpv6_ndo_send(ptr noundef %skb_in, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %info) #0 align 64 {
entry:
  %parm = alloca %struct.inet6_skb_parm, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %parm) #3
  %0 = call ptr @memset(ptr %parm, i32 0, i32 24)
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 5
  %1 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %2, -8
  %3 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.nf_conn, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @icmp6_send(ptr noundef %skb_in, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %info, ptr noundef null, ptr noundef nonnull %parm) #3
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 21
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i, i32 noundef 4) #3
  %6 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 1
  br i1 %cmp.i.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call5 = tail call ptr @skb_clone(ptr noundef %skb_in, i32 noundef 2592) #3
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %skb_in.addr.0 = phi ptr [ %call5, %if.then4 ], [ %skb_in, %if.end.if.end6_crit_edge ]
  %cloned_skb.0 = phi ptr [ %call5, %if.then4 ], [ null, %if.end.if.end6_crit_edge ]
  %tobool7.not = icmp eq ptr %skb_in.addr.0, null
  br i1 %tobool7.not, label %if.end6.out_crit_edge, label %lor.lhs.false8, !prof !11

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

lor.lhs.false8:                                   ; preds = %if.end6
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb_in.addr.0, i32 0, i32 18
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb_in.addr.0, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %network_header.i, align 4
  %conv.i55 = zext i16 %11 to i32
  %add.ptr.i = getelementptr i8, ptr %9, i32 %conv.i55
  %cmp = icmp ult ptr %add.ptr.i, %9
  br i1 %cmp, label %lor.lhs.false8.out_crit_edge, label %lor.lhs.false10, !prof !11

lor.lhs.false8.out_crit_edge:                     ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 40
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb_in.addr.0, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i, align 8
  %cmp13 = icmp ugt ptr %add.ptr, %13
  br i1 %cmp13, label %lor.lhs.false10.out_crit_edge, label %lor.rhs, !prof !11

lor.lhs.false10.out_crit_edge:                    ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

lor.rhs:                                          ; preds = %lor.lhs.false10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb_in.addr.0, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = add i32 %sub.ptr.lhs.cast.i, 40
  %add = sub i32 %sub.ptr.sub.i, %sub.ptr.rhs.cast.i
  %call15 = tail call i32 @skb_ensure_writable(ptr noundef nonnull %skb_in.addr.0, i32 noundef %add) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end20, label %lor.rhs.out_crit_edge, !prof !12

lor.rhs.out_crit_edge:                            ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end20:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i, align 8
  %18 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i, align 4
  %conv.i.i62 = zext i16 %19 to i32
  %add.ptr.i.i63 = getelementptr i8, ptr %17, i32 %conv.i.i62
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i63, i32 0, i32 5
  %20 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %orig_ip.sroa.0.0.copyload = load i32, ptr %saddr, align 4
  %orig_ip.sroa.5.0.saddr.sroa_idx = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i63, i32 0, i32 5, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %orig_ip.sroa.5.0.saddr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %orig_ip.sroa.5.0.copyload = load i32, ptr %orig_ip.sroa.5.0.saddr.sroa_idx, align 4
  %orig_ip.sroa.6.0.saddr.sroa_idx = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i63, i32 0, i32 5, i32 0, i32 0, i32 2
  %22 = ptrtoint ptr %orig_ip.sroa.6.0.saddr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %orig_ip.sroa.6.0.copyload = load i32, ptr %orig_ip.sroa.6.0.saddr.sroa_idx, align 4
  %orig_ip.sroa.7.0.saddr.sroa_idx = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i63, i32 0, i32 5, i32 0, i32 0, i32 3
  %23 = ptrtoint ptr %orig_ip.sroa.7.0.saddr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %orig_ip.sroa.7.0.copyload = load i32, ptr %orig_ip.sroa.7.0.saddr.sroa_idx, align 4
  %tuple = getelementptr inbounds %struct.nf_conn, ptr %3, i32 0, i32 4, i32 0, i32 1
  %24 = call ptr @memcpy(ptr %saddr, ptr %tuple, i32 16)
  call void @icmp6_send(ptr noundef nonnull %skb_in.addr.0, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %info, ptr noundef null, ptr noundef nonnull %parm) #3
  %25 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i, align 8
  %27 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %network_header.i, align 4
  %conv.i.i70 = zext i16 %28 to i32
  %add.ptr.i.i71 = getelementptr i8, ptr %26, i32 %conv.i.i70
  %saddr25 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i71, i32 0, i32 5
  %29 = ptrtoint ptr %saddr25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %orig_ip.sroa.0.0.copyload, ptr %saddr25, align 4
  %orig_ip.sroa.5.0.saddr25.sroa_idx = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i71, i32 0, i32 5, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %orig_ip.sroa.5.0.saddr25.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %orig_ip.sroa.5.0.copyload, ptr %orig_ip.sroa.5.0.saddr25.sroa_idx, align 4
  %orig_ip.sroa.6.0.saddr25.sroa_idx = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i71, i32 0, i32 5, i32 0, i32 0, i32 2
  %31 = ptrtoint ptr %orig_ip.sroa.6.0.saddr25.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %orig_ip.sroa.6.0.copyload, ptr %orig_ip.sroa.6.0.saddr25.sroa_idx, align 4
  %orig_ip.sroa.7.0.saddr25.sroa_idx = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i71, i32 0, i32 5, i32 0, i32 0, i32 3
  %32 = ptrtoint ptr %orig_ip.sroa.7.0.saddr25.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %orig_ip.sroa.7.0.copyload, ptr %orig_ip.sroa.7.0.saddr25.sroa_idx, align 4
  br label %out

out:                                              ; preds = %if.end20, %lor.rhs.out_crit_edge, %lor.lhs.false10.out_crit_edge, %lor.lhs.false8.out_crit_edge, %if.end6.out_crit_edge
  call void @consume_skb(ptr noundef %cloned_skb.0) #3
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %parm) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__ksymtab_icmpv6_ndo_send, !1, !"__ksymtab_icmpv6_ndo_send", i1 false, i1 false}
!1 = !{!"../net/ipv6/ip6_icmp.c", i32 82, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
