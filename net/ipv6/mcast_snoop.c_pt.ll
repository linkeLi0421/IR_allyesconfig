; ModuleID = '/llk/IR_all_yes/net/ipv6/mcast_snoop.c_pt.bc'
source_filename = "../net/ipv6/mcast_snoop.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ipv6_mc_check_mld\22, \22a\22\09"
module asm "\09.weak\09__crc_ipv6_mc_check_mld\09\09\09\09"
module asm "\09.long\09__crc_ipv6_mc_check_mld\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_mc_check_mld:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_mc_check_mld\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_mc_check_mld:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, i32, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.mld_msg = type { %struct.icmp6hdr, %struct.in6_addr }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.146 }
%union.anon.146 = type { [1 x i32] }

@__kstrtab_ipv6_mc_check_mld = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_mc_check_mld = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_mc_check_mld = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_mc_check_mld to i32), ptr @__kstrtab_ipv6_mc_check_mld, ptr @__kstrtabns_ipv6_mc_check_mld }, section "___ksymtab+ipv6_mc_check_mld", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 130, i64 131, i64 132, i64 143]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_ipv6_mc_check_mld], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipv6_mc_check_mld(ptr noundef %skb) #0 align 64 {
entry:
  %nexthdr.i = alloca i8, align 1
  %frag_off.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.i = add i32 %sub.ptr.sub.i.i, 40
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add.i, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.if.end.i_crit_edge, !prof !11

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add.i)
  %cmp3.i.i = icmp ult i32 %7, %add.i
  br i1 %cmp3.i.i, label %if.end.i.i.cleanup_crit_edge, label %pskb_may_pull.exit.i, !prof !11

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add.i, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #4
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.cleanup_crit_edge, label %pskb_may_pull.exit.i.if.end.i_crit_edge

pskb_may_pull.exit.i.if.end.i_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

pskb_may_pull.exit.i.cleanup_crit_edge:           ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %10 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i.i, align 8
  %12 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i28.i = zext i16 %13 to i32
  %add.ptr.i.i29.i = getelementptr i8, ptr %11, i32 %conv.i.i28.i
  %14 = ptrtoint ptr %add.ptr.i.i29.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %add.ptr.i.i29.i, align 4
  %bf.lshr.mask.i = and i8 %bf.load.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr.mask.i)
  %cmp.not.i = icmp eq i8 %bf.lshr.mask.i, 96
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i29.i, i32 0, i32 2
  %15 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %payload_len.i, align 4
  %conv6.i = zext i16 %16 to i32
  %add7.i = add i32 %add.i, %conv6.i
  %17 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add7.i)
  %cmp9.i = icmp uge i32 %18, %add7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %add.i)
  %cmp11.not.i = icmp ugt i32 %add7.i, %add.i
  %or.cond.i = and i1 %cmp9.i, %cmp11.not.i
  br i1 %or.cond.i, label %if.end, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.end5.i
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i31.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %21 = trunc i32 %add.i to i16
  %conv1.i.i = add i16 %conv.i.i31.i, %21
  %22 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv1.i.i, ptr %transport_header.i.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr.i) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i) #4
  %23 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %frag_off.i, align 2, !annotation !12
  %24 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i.i, align 8
  %26 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i20 = zext i16 %27 to i32
  %add.ptr.i.i.i21 = getelementptr i8, ptr %25, i32 %conv.i.i.i20
  %nexthdr1.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i21, i32 0, i32 3
  %28 = ptrtoint ptr %nexthdr1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nexthdr1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.not.i22 = icmp eq i8 %29, 0
  br i1 %cmp.not.i22, label %if.end.i28, label %if.end.ipv6_mc_check_exthdrs.exit.thread_crit_edge

if.end.ipv6_mc_check_exthdrs.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %ipv6_mc_check_exthdrs.exit.thread

if.end.i28:                                       ; preds = %if.end
  %30 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %nexthdr.i, align 1
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i24 = ptrtoint ptr %add.ptr.i.i.i21 to i32
  %sub.ptr.rhs.cast.i.i25 = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i26 = add i32 %sub.ptr.lhs.cast.i.i24, 40
  %add.i27 = sub i32 %sub.ptr.sub.i.i26, %sub.ptr.rhs.cast.i.i25
  %call5.i = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef %add.i27, ptr noundef nonnull %nexthdr.i, ptr noundef nonnull %frag_off.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i28.ipv6_mc_check_exthdrs.exit.thread_crit_edge, label %if.end9.i

if.end.i28.ipv6_mc_check_exthdrs.exit.thread_crit_edge: ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #6
  br label %ipv6_mc_check_exthdrs.exit.thread

if.end9.i:                                        ; preds = %if.end.i28
  %33 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %nexthdr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %34)
  %cmp11.not.i29 = icmp eq i8 %34, 58
  br i1 %cmp11.not.i29, label %if.end4, label %if.end9.i.ipv6_mc_check_exthdrs.exit.thread_crit_edge

if.end9.i.ipv6_mc_check_exthdrs.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ipv6_mc_check_exthdrs.exit.thread

ipv6_mc_check_exthdrs.exit.thread:                ; preds = %if.end9.i.ipv6_mc_check_exthdrs.exit.thread_crit_edge, %if.end.i28.ipv6_mc_check_exthdrs.exit.thread_crit_edge, %if.end.ipv6_mc_check_exthdrs.exit.thread_crit_edge
  %retval.0.i36.ph = phi i32 [ -42, %if.end9.i.ipv6_mc_check_exthdrs.exit.thread_crit_edge ], [ -22, %if.end.i28.ipv6_mc_check_exthdrs.exit.thread_crit_edge ], [ -42, %if.end.ipv6_mc_check_exthdrs.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr.i) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end9.i
  %35 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i, align 4
  %37 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i30 = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast.i.i.i31 = ptrtoint ptr %38 to i32
  %sub.ptr.sub.i.i.i32 = sub i32 %sub.ptr.lhs.cast.i.i.i30, %sub.ptr.rhs.cast.i.i.i31
  %conv.i.i29.i = trunc i32 %sub.ptr.sub.i.i.i32 to i16
  %39 = trunc i32 %call5.i to i16
  %conv1.i.i34 = add i16 %conv.i.i29.i, %39
  %40 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv1.i.i34, ptr %transport_header.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr.i) #4
  %conv.i.i.i39 = zext i16 %conv1.i.i34 to i32
  %add.ptr.i.i.i40 = getelementptr i8, ptr %38, i32 %conv.i.i.i39
  %sub.ptr.lhs.cast.i.i42 = ptrtoint ptr %add.ptr.i.i.i40 to i32
  %sub.ptr.sub.i.i44 = sub i32 %sub.ptr.lhs.cast.i.i42, %sub.ptr.lhs.cast.i.i.i30
  %add.i45 = add i32 %sub.ptr.sub.i.i44, 8
  %41 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %42 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %38, i32 %conv.i.i.i.i
  %payload_len.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %payload_len.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %payload_len.i.i, align 4
  %conv.i.i = zext i16 %44 to i32
  %sub.i.neg.i.i = add nuw nsw i32 %conv.i.i.i.i, 40
  %add.i.i = add nuw nsw i32 %sub.i.neg.i.i, %conv.i.i
  %sub.i.i46 = sub nsw i32 %add.i.i, %conv.i.i.i39
  %45 = add i32 %sub.ptr.lhs.cast.i.i.i30, %conv.i.i.i39
  %sub.ptr.sub.i.i.i47 = sub i32 %sub.ptr.lhs.cast.i.i42, %45
  %add.i22.i = add i32 %sub.ptr.sub.i.i.i47, %add.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i22.i, i32 %add.i45)
  %cmp.i.i = icmp ult i32 %add.i22.i, %add.i45
  br i1 %cmp.i.i, label %if.end4.cleanup_crit_edge, label %if.end.i.i48

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i48:                                     ; preds = %if.end4
  %46 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i.i.i, align 4
  %48 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %47, %49
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i45, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %add.i45, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end.i.i48.if.end.i49_crit_edge, !prof !11

if.end.i.i48.if.end.i49_crit_edge:                ; preds = %if.end.i.i48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i49

if.end.i.i.i:                                     ; preds = %if.end.i.i48
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %add.i45)
  %cmp3.i.i.i = icmp ult i32 %47, %add.i45
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.cleanup_crit_edge, label %ipv6_mc_may_pull.exit.i, !prof !11

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

ipv6_mc_may_pull.exit.i:                          ; preds = %if.end.i.i.i
  %sub.i8.i.i = sub i32 %add.i45, %sub.i.i.i.i
  %call13.i.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i8.i.i) #4
  %cmp14.i.i.not.i = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.i.not.i, label %ipv6_mc_may_pull.exit.i.cleanup_crit_edge, label %ipv6_mc_may_pull.exit.i.if.end.i49_crit_edge

ipv6_mc_may_pull.exit.i.if.end.i49_crit_edge:     ; preds = %ipv6_mc_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i49

ipv6_mc_may_pull.exit.i.cleanup_crit_edge:        ; preds = %ipv6_mc_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i49:                                       ; preds = %ipv6_mc_may_pull.exit.i.if.end.i49_crit_edge, %if.end.i.i48.if.end.i49_crit_edge
  %call3.i = call ptr @skb_checksum_trimmed(ptr noundef %skb, i32 noundef %sub.i.i46, ptr noundef nonnull @ipv6_mc_validate_checksum) #4
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.end.i49.cleanup_crit_edge, label %if.end5.i51

if.end.i49.cleanup_crit_edge:                     ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5.i51:                                      ; preds = %if.end.i49
  %cmp.not.i50 = icmp eq ptr %call3.i, %skb
  br i1 %cmp.not.i50, label %if.end5.i51.if.end8_crit_edge, label %if.then6.i

if.end5.i51.if.end8_crit_edge:                    ; preds = %if.end5.i51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then6.i:                                       ; preds = %if.end5.i51
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree_skb_reason(ptr noundef nonnull %call3.i, i32 noundef 0) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then6.i, %if.end5.i51.if.end8_crit_edge
  %50 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.i.i.i, align 8
  %52 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i55 = zext i16 %53 to i32
  %add.ptr.i.i.i56 = getelementptr i8, ptr %51, i32 %conv.i.i.i55
  %54 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i58 = ptrtoint ptr %add.ptr.i.i.i56 to i32
  %sub.ptr.rhs.cast.i.i59 = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i.i60 = sub i32 %sub.ptr.lhs.cast.i.i58, %sub.ptr.rhs.cast.i.i59
  %add.i61 = add i32 %sub.ptr.sub.i.i60, 24
  %56 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i.i.i = zext i16 %57 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %51, i32 %conv.i.i.i.i.i
  %payload_len.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %payload_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %payload_len.i.i.i, align 4
  %conv.i.i12.i = zext i16 %59 to i32
  %60 = add i32 %conv.i.i.i55, %sub.ptr.rhs.cast.i.i59
  %add.i.i.i = sub i32 40, %60
  %sub.i.i.i62 = add i32 %add.i.i.i, %sub.ptr.lhs.cast.i.i58
  %sub.ptr.sub.i.i.i63 = add i32 %sub.i.i.i62, %conv.i.i.i.i.i
  %add.i.i64 = add i32 %sub.ptr.sub.i.i.i63, %conv.i.i12.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i64, i32 %add.i61)
  %cmp.i.i65 = icmp ult i32 %add.i.i64, %add.i61
  br i1 %cmp.i.i65, label %if.end8.cleanup_crit_edge, label %if.end.i.i70

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i70:                                     ; preds = %if.end8
  %61 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len.i.i.i, align 4
  %63 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i.i68 = sub i32 %62, %64
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i61, i32 %sub.i.i.i.i68)
  %cmp.not.i.i.i69 = icmp ugt i32 %add.i61, %sub.i.i.i.i68
  br i1 %cmp.not.i.i.i69, label %if.end.i.i.i72, label %if.end.i.i70.if.end.i78_crit_edge, !prof !11

if.end.i.i70.if.end.i78_crit_edge:                ; preds = %if.end.i.i70
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i78

if.end.i.i.i72:                                   ; preds = %if.end.i.i70
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %add.i61)
  %cmp3.i.i.i71 = icmp ult i32 %62, %add.i61
  br i1 %cmp3.i.i.i71, label %if.end.i.i.i72.cleanup_crit_edge, label %ipv6_mc_may_pull.exit.i76, !prof !11

if.end.i.i.i72.cleanup_crit_edge:                 ; preds = %if.end.i.i.i72
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

ipv6_mc_may_pull.exit.i76:                        ; preds = %if.end.i.i.i72
  %sub.i8.i.i73 = sub i32 %add.i61, %sub.i.i.i.i68
  %call13.i.i.i74 = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i8.i.i73) #4
  %cmp14.i.i.not.i75 = icmp eq ptr %call13.i.i.i74, null
  br i1 %cmp14.i.i.not.i75, label %ipv6_mc_may_pull.exit.i76.cleanup_crit_edge, label %ipv6_mc_may_pull.exit.i76.if.end.i78_crit_edge

ipv6_mc_may_pull.exit.i76.if.end.i78_crit_edge:   ; preds = %ipv6_mc_may_pull.exit.i76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i78

ipv6_mc_may_pull.exit.i76.cleanup_crit_edge:      ; preds = %ipv6_mc_may_pull.exit.i76
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i78:                                       ; preds = %ipv6_mc_may_pull.exit.i76.if.end.i78_crit_edge, %if.end.i.i70.if.end.i78_crit_edge
  %65 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %head.i.i.i, align 8
  %67 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i77 = zext i16 %68 to i32
  %add.ptr.i.i = getelementptr i8, ptr %66, i32 %conv.i.i77
  %69 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %add.ptr.i.i, align 4
  %71 = zext i8 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i8 %70, label %sw.default.i [
    i8 -124, label %if.end.i78.cleanup_crit_edge
    i8 -125, label %if.end.i78.cleanup_crit_edge91
    i8 -113, label %sw.bb3.i
    i8 -126, label %sw.bb5.i
  ]

if.end.i78.cleanup_crit_edge91:                   ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i78.cleanup_crit_edge:                     ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.end.i78
  %72 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i18.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i.i19.i = ptrtoint ptr %73 to i32
  %sub.ptr.sub.i.i20.i = sub i32 %sub.ptr.lhs.cast.i.i18.i, %sub.ptr.rhs.cast.i.i19.i
  %add.i21.i = add i32 %sub.ptr.sub.i.i20.i, 8
  %74 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i.i.i.i = zext i16 %75 to i32
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %66, i32 %conv.i.i.i.i.i.i
  %payload_len.i.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %payload_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %payload_len.i.i.i.i, align 4
  %conv.i.i4.i.i = zext i16 %77 to i32
  %78 = add i32 %sub.ptr.lhs.cast.i.i18.i, 40
  %79 = add i32 %conv.i.i77, %sub.ptr.rhs.cast.i.i19.i
  %sub.i.i.i22.i = sub i32 %78, %79
  %sub.ptr.sub.i.i.i.i = add i32 %sub.i.i.i22.i, %conv.i.i.i.i.i.i
  %add.i.i23.i = add i32 %sub.ptr.sub.i.i.i.i, %conv.i.i4.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i23.i, i32 %add.i21.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i23.i, %add.i21.i
  br i1 %cmp.i.i.i, label %sw.bb3.i.cleanup_crit_edge, label %if.end.i.i24.i

sw.bb3.i.cleanup_crit_edge:                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i24.i:                                   ; preds = %sw.bb3.i
  %80 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len.i.i.i, align 4
  %82 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i.i.i = sub i32 %81, %83
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i21.i, i32 %sub.i.i.i.i.i)
  %cmp.not.i.i.i.i = icmp ugt i32 %add.i21.i, %sub.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i24.i.ipv6_mc_may_pull.exit.thread6.i.i_crit_edge, !prof !11

if.end.i.i24.i.ipv6_mc_may_pull.exit.thread6.i.i_crit_edge: ; preds = %if.end.i.i24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ipv6_mc_may_pull.exit.thread6.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i24.i
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %add.i21.i)
  %cmp3.i.i.i.i = icmp ult i32 %81, %add.i21.i
  br i1 %cmp3.i.i.i.i, label %if.end.i.i.i.i.cleanup_crit_edge, label %ipv6_mc_may_pull.exit.i.i, !prof !11

if.end.i.i.i.i.cleanup_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

ipv6_mc_may_pull.exit.i.i:                        ; preds = %if.end.i.i.i.i
  %sub.i8.i.i.i = sub i32 %add.i21.i, %sub.i.i.i.i.i
  %call13.i.i.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i8.i.i.i) #4
  %cmp14.i.i.not.i.i = icmp eq ptr %call13.i.i.i.i, null
  br i1 %cmp14.i.i.not.i.i, label %ipv6_mc_may_pull.exit.i.i.cleanup_crit_edge, label %ipv6_mc_may_pull.exit.i.i.ipv6_mc_may_pull.exit.thread6.i.i_crit_edge

ipv6_mc_may_pull.exit.i.i.ipv6_mc_may_pull.exit.thread6.i.i_crit_edge: ; preds = %ipv6_mc_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ipv6_mc_may_pull.exit.thread6.i.i

ipv6_mc_may_pull.exit.i.i.cleanup_crit_edge:      ; preds = %ipv6_mc_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

ipv6_mc_may_pull.exit.thread6.i.i:                ; preds = %ipv6_mc_may_pull.exit.i.i.ipv6_mc_may_pull.exit.thread6.i.i_crit_edge, %if.end.i.i24.i.ipv6_mc_may_pull.exit.thread6.i.i_crit_edge
  br label %cleanup

sw.bb5.i:                                         ; preds = %if.end.i78
  %84 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i.i26.i = zext i16 %85 to i32
  %add.ptr.i.i.i.i27.i = getelementptr i8, ptr %66, i32 %conv.i.i.i.i26.i
  %payload_len.i.i28.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i27.i, i32 0, i32 2
  %86 = ptrtoint ptr %payload_len.i.i28.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %payload_len.i.i28.i, align 4
  %conv.i.i29.i79 = zext i16 %87 to i32
  %sub.i.neg.i.i.i = sub nsw i32 40, %conv.i.i77
  %add.i.i32.i = add nsw i32 %sub.i.neg.i.i.i, %conv.i.i.i.i26.i
  %sub.i.i33.i = add nsw i32 %add.i.i32.i, %conv.i.i29.i79
  %saddr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i27.i, i32 0, i32 5
  %call.i.i.i = call i32 @__ipv6_addr_type(ptr noundef %saddr.i.i) #4
  %and.i.i = and i32 %call.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb5.i.cleanup_crit_edge, label %if.end.i34.i

sw.bb5.i.cleanup_crit_edge:                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i34.i:                                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i.i33.i)
  %cmp.not.i.i80 = icmp eq i32 %sub.i.i33.i, 24
  br i1 %cmp.not.i.i80, label %if.end.i34.i.if.end11.i.i_crit_edge, label %if.then3.i.i

if.end.i34.i.if.end11.i.i_crit_edge:              ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.i.i

if.then3.i.i:                                     ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.i.i33.i)
  %cmp4.i.i = icmp ult i32 %sub.i.i33.i, 28
  br i1 %cmp4.i.i, label %if.then3.i.i.cleanup_crit_edge, label %if.end6.i.i

if.then3.i.i.cleanup_crit_edge:                   ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.then3.i.i
  %88 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %head.i.i.i, align 8
  %90 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i29.i.i = zext i16 %91 to i32
  %add.ptr.i.i30.i.i = getelementptr i8, ptr %89, i32 %conv.i.i29.i.i
  %92 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i36.i = ptrtoint ptr %add.ptr.i.i30.i.i to i32
  %sub.ptr.rhs.cast.i.i37.i = ptrtoint ptr %93 to i32
  %sub.ptr.sub.i.i38.i = sub i32 %sub.ptr.lhs.cast.i.i36.i, %sub.ptr.rhs.cast.i.i37.i
  %add.i39.i = add i32 %sub.ptr.sub.i.i38.i, 28
  %94 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i.i.i40.i = zext i16 %95 to i32
  %add.ptr.i.i.i.i.i41.i = getelementptr i8, ptr %89, i32 %conv.i.i.i.i.i40.i
  %payload_len.i.i.i42.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i.i41.i, i32 0, i32 2
  %96 = ptrtoint ptr %payload_len.i.i.i42.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %payload_len.i.i.i42.i, align 4
  %conv.i.i34.i.i = zext i16 %97 to i32
  %98 = add i32 %conv.i.i29.i.i, %sub.ptr.rhs.cast.i.i37.i
  %add.i.i.i43.i = sub i32 40, %98
  %sub.i.i.i44.i = add i32 %add.i.i.i43.i, %sub.ptr.lhs.cast.i.i36.i
  %sub.ptr.sub.i.i.i45.i = add i32 %sub.i.i.i44.i, %conv.i.i.i.i.i40.i
  %add.i35.i.i = add i32 %sub.ptr.sub.i.i.i45.i, %conv.i.i34.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i35.i.i, i32 %add.i39.i)
  %cmp.i.i46.i = icmp ult i32 %add.i35.i.i, %add.i39.i
  br i1 %cmp.i.i46.i, label %if.end6.i.i.cleanup_crit_edge, label %if.end.i.i51.i

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i51.i:                                   ; preds = %if.end6.i.i
  %99 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len.i.i.i, align 4
  %101 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i.i49.i = sub i32 %100, %102
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i39.i, i32 %sub.i.i.i.i49.i)
  %cmp.not.i.i.i50.i = icmp ugt i32 %add.i39.i, %sub.i.i.i.i49.i
  br i1 %cmp.not.i.i.i50.i, label %if.end.i.i.i53.i, label %if.end.i.i51.i.if.end11.i.i_crit_edge, !prof !11

if.end.i.i51.i.if.end11.i.i_crit_edge:            ; preds = %if.end.i.i51.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.i.i

if.end.i.i.i53.i:                                 ; preds = %if.end.i.i51.i
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %add.i39.i)
  %cmp3.i.i.i52.i = icmp ult i32 %100, %add.i39.i
  br i1 %cmp3.i.i.i52.i, label %if.end.i.i.i53.i.cleanup_crit_edge, label %ipv6_mc_may_pull.exit.i57.i, !prof !11

if.end.i.i.i53.i.cleanup_crit_edge:               ; preds = %if.end.i.i.i53.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

ipv6_mc_may_pull.exit.i57.i:                      ; preds = %if.end.i.i.i53.i
  %sub.i8.i.i54.i = sub i32 %add.i39.i, %sub.i.i.i.i49.i
  %call13.i.i.i55.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i8.i.i54.i) #4
  %cmp14.i.i.not.i56.i = icmp eq ptr %call13.i.i.i55.i, null
  br i1 %cmp14.i.i.not.i56.i, label %ipv6_mc_may_pull.exit.i57.i.cleanup_crit_edge, label %ipv6_mc_may_pull.exit.i57.i.if.end11.i.i_crit_edge

ipv6_mc_may_pull.exit.i57.i.if.end11.i.i_crit_edge: ; preds = %ipv6_mc_may_pull.exit.i57.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.i.i

ipv6_mc_may_pull.exit.i57.i.cleanup_crit_edge:    ; preds = %ipv6_mc_may_pull.exit.i57.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11.i.i:                                     ; preds = %ipv6_mc_may_pull.exit.i57.i.if.end11.i.i_crit_edge, %if.end.i.i51.i.if.end11.i.i_crit_edge, %if.end.i34.i.if.end11.i.i_crit_edge
  %103 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %head.i.i.i, align 8
  %105 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i36.i.i = zext i16 %106 to i32
  %add.ptr.i.i58.i = getelementptr i8, ptr %104, i32 %conv.i36.i.i
  %mld_mca.i.i = getelementptr inbounds %struct.mld_msg, ptr %add.ptr.i.i58.i, i32 0, i32 1
  %107 = ptrtoint ptr %mld_mca.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %mld_mca.i.i, align 4
  %arrayidx2.i.i.i = getelementptr [4 x i32], ptr %mld_mca.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %110, %108
  %arrayidx4.i.i.i = getelementptr [4 x i32], ptr %mld_mca.i.i, i32 0, i32 2
  %111 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx4.i.i.i, align 4
  %or5.i.i.i = or i32 %or.i.i.i, %112
  %arrayidx7.i.i.i = getelementptr [4 x i32], ptr %mld_mca.i.i, i32 0, i32 3
  %113 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx7.i.i.i, align 4
  %or8.i.i.i = or i32 %or5.i.i.i, %114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i.i)
  %cmp.i37.i.i = icmp eq i32 %or8.i.i.i, 0
  br i1 %cmp.i37.i.i, label %land.lhs.true.i.i, label %if.end11.i.i.if.end17.i.i_crit_edge

if.end11.i.i.if.end17.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.i.i

land.lhs.true.i.i:                                ; preds = %if.end11.i.i
  %115 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i40.i.i = zext i16 %116 to i32
  %add.ptr.i.i41.i.i = getelementptr i8, ptr %104, i32 %conv.i.i40.i.i
  %daddr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i41.i.i, i32 0, i32 6
  %117 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %daddr.i.i, align 4
  %xor.i.i.i = xor i32 %118, -16646144
  %arrayidx2.i42.i.i = getelementptr [4 x i32], ptr %daddr.i.i, i32 0, i32 1
  %119 = ptrtoint ptr %arrayidx2.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx2.i42.i.i, align 4
  %or.i43.i.i = or i32 %xor.i.i.i, %120
  %arrayidx4.i44.i.i = getelementptr [4 x i32], ptr %daddr.i.i, i32 0, i32 2
  %121 = ptrtoint ptr %arrayidx4.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx4.i44.i.i, align 4
  %or5.i45.i.i = or i32 %or.i43.i.i, %122
  %arrayidx7.i46.i.i = getelementptr [4 x i32], ptr %daddr.i.i, i32 0, i32 3
  %123 = ptrtoint ptr %arrayidx7.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx7.i46.i.i, align 4
  %xor8.i.i.i = xor i32 %124, 1
  %or9.i.i.i = or i32 %or5.i45.i.i, %xor8.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or9.i.i.i)
  %cmp.i47.i.i = icmp eq i32 %or9.i.i.i, 0
  br i1 %cmp.i47.i.i, label %land.lhs.true.i.i.if.end17.i.i_crit_edge, label %land.lhs.true.i.i.cleanup_crit_edge

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.i.i.if.end17.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %land.lhs.true.i.i.if.end17.i.i_crit_edge, %if.end11.i.i.if.end17.i.i_crit_edge
  br label %cleanup

sw.default.i:                                     ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %sw.default.i, %if.end17.i.i, %land.lhs.true.i.i.cleanup_crit_edge, %ipv6_mc_may_pull.exit.i57.i.cleanup_crit_edge, %if.end.i.i.i53.i.cleanup_crit_edge, %if.end6.i.i.cleanup_crit_edge, %if.then3.i.i.cleanup_crit_edge, %sw.bb5.i.cleanup_crit_edge, %ipv6_mc_may_pull.exit.thread6.i.i, %ipv6_mc_may_pull.exit.i.i.cleanup_crit_edge, %if.end.i.i.i.i.cleanup_crit_edge, %sw.bb3.i.cleanup_crit_edge, %if.end.i78.cleanup_crit_edge, %if.end.i78.cleanup_crit_edge91, %ipv6_mc_may_pull.exit.i76.cleanup_crit_edge, %if.end.i.i.i72.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.i49.cleanup_crit_edge, %ipv6_mc_may_pull.exit.i.cleanup_crit_edge, %if.end.i.i.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %ipv6_mc_check_exthdrs.exit.thread, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %pskb_may_pull.exit.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i36.ph, %ipv6_mc_check_exthdrs.exit.thread ], [ -61, %sw.default.i ], [ -61, %ipv6_mc_may_pull.exit.i76.cleanup_crit_edge ], [ 0, %if.end.i78.cleanup_crit_edge ], [ 0, %if.end.i78.cleanup_crit_edge91 ], [ 0, %ipv6_mc_may_pull.exit.thread6.i.i ], [ -22, %ipv6_mc_may_pull.exit.i.i.cleanup_crit_edge ], [ -22, %sw.bb3.i.cleanup_crit_edge ], [ -22, %if.end.i.i.i.i.cleanup_crit_edge ], [ 0, %if.end17.i.i ], [ -22, %sw.bb5.i.cleanup_crit_edge ], [ -22, %if.then3.i.i.cleanup_crit_edge ], [ -22, %ipv6_mc_may_pull.exit.i57.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i.i.cleanup_crit_edge ], [ -22, %if.end6.i.i.cleanup_crit_edge ], [ -22, %if.end.i.i.i53.i.cleanup_crit_edge ], [ -61, %if.end8.cleanup_crit_edge ], [ -61, %if.end.i.i.i72.cleanup_crit_edge ], [ -22, %pskb_may_pull.exit.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end5.i.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -22, %ipv6_mc_may_pull.exit.i.cleanup_crit_edge ], [ -22, %if.end.i49.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_checksum_trimmed(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @ipv6_mc_validate_checksum(ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %csum_valid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %csum_valid, align 8
  %bf.clear = and i16 %bf.load, -2
  store i16 %bf.clear, ptr %csum_valid, align 8
  %bf.lshr.i.i = lshr i16 %bf.load, 9
  %trunc = trunc i16 %bf.lshr.i.i to i2
  %1 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.1)
  switch i2 %trunc, label %entry.if.then_crit_edge [
    i2 1, label %entry.if.then.i_crit_edge
    i2 -1, label %skb_csum_unnecessary.exit.i
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

skb_csum_unnecessary.exit.i:                      ; preds = %entry
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 8
  %conv.i.i.i = zext i16 %4 to i32
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.neg.i.i.i = sub i32 %conv.i.i.i, %sub.ptr.lhs.cast.i.i.i.i
  %sub.i.i.i = add i32 %sub.ptr.sub.i.neg.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool.not.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %tobool.not.i, label %skb_csum_unnecessary.exit.i.if.then_crit_edge, label %skb_csum_unnecessary.exit.i.if.then.i_crit_edge

skb_csum_unnecessary.exit.i.if.then.i_crit_edge:  ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

skb_csum_unnecessary.exit.i.if.then_crit_edge:    ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then.i:                                        ; preds = %skb_csum_unnecessary.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %bf.set.i = or i16 %bf.load, 1
  %9 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %bf.set.i, ptr %csum_valid, align 8
  %10 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %10)
  %cmp.i3.i = icmp eq i16 %10, 512
  br i1 %cmp.i3.i, label %if.then.i.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  %csum_level.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %11 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %bf.load2.i.i = load i32, ptr %csum_level.i.i, align 2
  %12 = and i32 %bf.load2.i.i, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp7.i.i = icmp eq i32 %12, 0
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.else.i.i

if.then9.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear12.i.i = and i16 %bf.set.i, -1537
  %13 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %bf.clear12.i.i, ptr %csum_valid, align 8
  br label %if.end

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = add i32 %bf.load2.i.i, 805306368
  %bf.shl.i.i = and i32 %14, 805306368
  %bf.clear19.i.i = and i32 %bf.load2.i.i, -805306369
  %bf.set20.i.i = or i32 %bf.shl.i.i, %bf.clear19.i.i
  %15 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %bf.set20.i.i, ptr %csum_level.i.i, align 2
  br label %if.end

if.then:                                          ; preds = %skb_csum_unnecessary.exit.i.if.then_crit_edge, %entry.if.then_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i6 = zext i16 %19 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 %conv.i.i.i6
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  %call.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i, ptr noundef %daddr.i, i32 noundef %21, i32 noundef 58, i32 noundef 0) #4
  %22 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #7, !srcloc !13
  %shr.i.i.i = lshr i32 %22, 16
  %neg6.i = or i32 %shr.i.i.i, -65536
  %23 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i = load i16, ptr %csum_valid, align 8
  %24 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %24)
  %cmp.i = icmp eq i16 %24, 1024
  br i1 %cmp.i, label %if.then.i9, label %if.then.if.end6.i_crit_edge

if.then.if.end6.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i

if.then.i9:                                       ; preds = %if.then
  %25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %add.i.i = add i32 %27, %neg6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %27)
  %cmp.i.i7 = icmp ult i32 %add.i.i, %27
  %conv.i.i = zext i1 %cmp.i.i7 to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %28 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i) #7, !srcloc !13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %28)
  %tobool.not.i8 = icmp ugt i32 %28, -65537
  br i1 %tobool.not.i8, label %if.then3.i, label %if.then.i9.if.end6.i_crit_edge

if.then.i9.if.end6.i_crit_edge:                   ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #6
  %bf.set.i10 = or i16 %bf.load.i, 1
  br label %__skb_checksum_validate_complete.exit

if.end6.i:                                        ; preds = %if.then.i9.if.end6.i_crit_edge, %if.then.if.end6.i_crit_edge
  %29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %neg6.i, ptr %29, align 8
  %call12.i = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %skb) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call12.i)
  %tobool13.not.i = icmp eq i16 %call12.i, 0
  %31 = zext i1 %tobool13.not.i to i16
  %32 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load16.i = load i16, ptr %csum_valid, align 8
  %bf.clear17.i = and i16 %bf.load16.i, -2
  %bf.set18.i = or i16 %bf.clear17.i, %31
  br label %__skb_checksum_validate_complete.exit

__skb_checksum_validate_complete.exit:            ; preds = %if.end6.i, %if.then3.i
  %storemerge.i = phi i16 [ %bf.set18.i, %if.end6.i ], [ %bf.set.i10, %if.then3.i ]
  %retval.0.i = phi i16 [ %call12.i, %if.end6.i ], [ 0, %if.then3.i ]
  %33 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %storemerge.i, ptr %csum_valid, align 8
  br label %if.end

if.end:                                           ; preds = %__skb_checksum_validate_complete.exit, %if.else.i.i, %if.then9.i.i, %if.then.i.if.end_crit_edge
  %__ret.0 = phi i16 [ %retval.0.i, %__skb_checksum_validate_complete.exit ], [ 0, %if.then.i.if.end_crit_edge ], [ 0, %if.then9.i.i ], [ 0, %if.else.i.i ]
  ret i16 %__ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__ksymtab_ipv6_mc_check_mld, !1, !"__ksymtab_ipv6_mc_check_mld", i1 false, i1 false}
!1 = !{!"../net/ipv6/mcast_snoop.c", i32 190, i32 1}
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
!12 = !{!"auto-init"}
!13 = !{i64 6452200}
