; ModuleID = '/llk/IR_all_yes/net/netfilter/ipset/ip_set_getport.c_pt.bc'
source_filename = "../net/netfilter/ipset/ip_set_getport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ip_set_get_ip4_port\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_set_get_ip4_port\09\09\09\09"
module asm "\09.long\09__crc_ip_set_get_ip4_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_set_get_ip4_port:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_set_get_ip4_port\22\09\09\09\09\09"
module asm "__kstrtabns_ip_set_get_ip4_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ip_set_get_ip6_port\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_set_get_ip6_port\09\09\09\09"
module asm "\09.long\09__crc_ip_set_get_ip6_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_set_get_ip6_port:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_set_get_ip6_port\22\09\09\09\09\09"
module asm "__kstrtabns_ip_set_get_ip6_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.168, %union.anon.169, [48 x i8], %union.anon.170, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.172, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { i64 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i32, ptr }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.174, i32, i32, i32, i16, i16, %union.anon.176, i32, %union.anon.177, %union.anon.178, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.174 = type { i32 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.sctphdr = type { i16, i16, i32, i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.icmphdr = type { i8, i8, i16, %union.anon.189 }
%union.anon.189 = type { i32 }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.192 }
%union.anon.192 = type { [1 x i32] }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }

@__kstrtab_ip_set_get_ip4_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_set_get_ip4_port = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_set_get_ip4_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_set_get_ip4_port to i32), ptr @__kstrtab_ip_set_get_ip4_port, ptr @__kstrtabns_ip_set_get_ip4_port }, section "___ksymtab_gpl+ip_set_get_ip4_port", align 4
@__kstrtab_ip_set_get_ip6_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_set_get_ip6_port = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_set_get_ip6_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_set_get_ip6_port to i32), ptr @__kstrtab_ip_set_get_ip6_port, ptr @__kstrtabns_ip_set_get_ip6_port }, section "___ksymtab_gpl+ip_set_get_ip6_port", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 6, i64 17, i64 132, i64 136]
@__sancov_gen_cov_switch_values.1 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 6, i64 17, i64 58, i64 132, i64 136]
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ip_set_get_ip4_port, ptr @__ksymtab_ip_set_get_ip6_port], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ip_set_get_ip4_port(ptr noundef %skb, i1 noundef zeroext %src, ptr nocapture noundef writeonly %port, ptr nocapture noundef writeonly %proto) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %7 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %7 to i32
  %add = add i32 %sub.ptr.sub.i, %mul.i
  %protocol3 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %protocol3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %protocol3, align 1
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %frag_off, align 2
  %12 = and i16 %11, 8191
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %13 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %sw.default [
    i8 6, label %if.then6.cleanup_crit_edge
    i8 -124, label %if.then6.cleanup_crit_edge25
    i8 17, label %if.then6.cleanup_crit_edge26
    i8 -120, label %if.then6.cleanup_crit_edge27
    i8 1, label %if.then6.cleanup_crit_edge28
  ]

if.then6.cleanup_crit_edge28:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then6.cleanup_crit_edge27:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then6.cleanup_crit_edge26:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then6.cleanup_crit_edge25:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.default:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %9, ptr %proto, align 1
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call10 = tail call fastcc zeroext i1 @get_port(ptr noundef %skb, i32 noundef %conv, i32 noundef %add, i1 noundef zeroext %src, ptr noundef %port, ptr noundef %proto)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %sw.default, %if.then6.cleanup_crit_edge, %if.then6.cleanup_crit_edge25, %if.then6.cleanup_crit_edge26, %if.then6.cleanup_crit_edge27, %if.then6.cleanup_crit_edge28, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.default ], [ %call10, %if.end8 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.then6.cleanup_crit_edge ], [ false, %if.then6.cleanup_crit_edge25 ], [ false, %if.then6.cleanup_crit_edge26 ], [ false, %if.then6.cleanup_crit_edge27 ], [ false, %if.then6.cleanup_crit_edge28 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @get_port(ptr noundef %skb, i32 noundef %protocol, i32 noundef %protooff, i1 noundef zeroext %src, ptr nocapture noundef writeonly %port, ptr nocapture noundef writeonly %proto) unnamed_addr #0 align 64 {
entry:
  %_tcph = alloca %struct.tcphdr, align 4
  %_sh = alloca %struct.sctphdr, align 4
  %_udph = alloca %struct.udphdr, align 8
  %_ich = alloca %struct.icmphdr, align 8
  %_ich55 = alloca %struct.icmp6hdr, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %protocol, label %entry.sw.epilog_crit_edge [
    i32 6, label %sw.bb
    i32 132, label %sw.bb5
    i32 17, label %entry.sw.bb24_crit_edge
    i32 136, label %entry.sw.bb24_crit_edge224
    i32 1, label %sw.bb43
    i32 58, label %sw.bb54
  ]

entry.sw.bb24_crit_edge224:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb24

entry.sw.bb24_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb24

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph) #3
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = call ptr @memset(ptr %_tcph, i32 255, i32 20)
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  %6 = add i32 %5, %protooff
  %sub.i4.i = sub i32 %3, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !13

if.end.i.i:                                       ; preds = %sw.bb
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup.thread_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.thread

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %protooff, ptr noundef nonnull %_tcph, i32 noundef 20) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup.thread_crit_edge, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false.i.i.cleanup.thread_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.thread

skb_header_pointer.exit:                          ; preds = %sw.bb
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %protooff
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup.thread_crit_edge, label %skb_header_pointer.exit.cleanup_crit_edge

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

skb_header_pointer.exit.cleanup.thread_crit_edge: ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %skb_header_pointer.exit.cleanup.thread_crit_edge, %lor.lhs.false.i.i.cleanup.thread_crit_edge, %if.end.i.i.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph) #3
  br label %return

cleanup:                                          ; preds = %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge
  %retval.0.i.i171 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.cleanup_crit_edge ], [ %_tcph, %lor.lhs.false.i.i.cleanup_crit_edge ]
  %dest = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i171, i32 0, i32 1
  %cond.in.in = select i1 %src, ptr %retval.0.i.i171, ptr %dest
  %9 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load2_noabort(i32 %9)
  %cond.in101 = load i16, ptr %cond.in.in, align 2
  %10 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %cond.in101, ptr %port, align 2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph) #3
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %_sh) #3
  %len.i.i106 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = call ptr @memset(ptr %_sh, i32 255, i32 12)
  %12 = ptrtoint ptr %len.i.i106 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i106, align 4
  %data_len.i.i107 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i107 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i107, align 8
  %16 = add i32 %15, %protooff
  %sub.i4.i108 = sub i32 %13, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i4.i108)
  %cmp.not.i.i109 = icmp slt i32 %sub.i4.i108, 12
  br i1 %cmp.not.i.i109, label %if.end.i.i114, label %skb_header_pointer.exit120, !prof !13

if.end.i.i114:                                    ; preds = %sw.bb5
  %tobool2.not.i.i113 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i113, label %if.end.i.i114.cleanup21.thread_crit_edge, label %lor.lhs.false.i.i118

if.end.i.i114.cleanup21.thread_crit_edge:         ; preds = %if.end.i.i114
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup21.thread

lor.lhs.false.i.i118:                             ; preds = %if.end.i.i114
  %call.i.i115 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %protooff, ptr noundef nonnull %_sh, i32 noundef 12) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i115)
  %cmp3.i.i116 = icmp slt i32 %call.i.i115, 0
  br i1 %cmp3.i.i116, label %lor.lhs.false.i.i118.cleanup21.thread_crit_edge, label %lor.lhs.false.i.i118.cleanup21_crit_edge

lor.lhs.false.i.i118.cleanup21_crit_edge:         ; preds = %lor.lhs.false.i.i118
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup21

lor.lhs.false.i.i118.cleanup21.thread_crit_edge:  ; preds = %lor.lhs.false.i.i118
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup21.thread

skb_header_pointer.exit120:                       ; preds = %sw.bb5
  %data.i110 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data.i110 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i110, align 4
  %add.ptr.i.i111 = getelementptr i8, ptr %18, i32 %protooff
  %tobool7.not = icmp eq ptr %add.ptr.i.i111, null
  br i1 %tobool7.not, label %skb_header_pointer.exit120.cleanup21.thread_crit_edge, label %skb_header_pointer.exit120.cleanup21_crit_edge

skb_header_pointer.exit120.cleanup21_crit_edge:   ; preds = %skb_header_pointer.exit120
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup21

skb_header_pointer.exit120.cleanup21.thread_crit_edge: ; preds = %skb_header_pointer.exit120
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup21.thread

cleanup21.thread:                                 ; preds = %skb_header_pointer.exit120.cleanup21.thread_crit_edge, %lor.lhs.false.i.i118.cleanup21.thread_crit_edge, %if.end.i.i114.cleanup21.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_sh) #3
  br label %return

cleanup21:                                        ; preds = %skb_header_pointer.exit120.cleanup21_crit_edge, %lor.lhs.false.i.i118.cleanup21_crit_edge
  %retval.0.i.i119181 = phi ptr [ %add.ptr.i.i111, %skb_header_pointer.exit120.cleanup21_crit_edge ], [ %_sh, %lor.lhs.false.i.i118.cleanup21_crit_edge ]
  %dest16 = getelementptr inbounds %struct.sctphdr, ptr %retval.0.i.i119181, i32 0, i32 1
  %cond19.in.in = select i1 %src, ptr %retval.0.i.i119181, ptr %dest16
  %19 = ptrtoint ptr %cond19.in.in to i32
  call void @__asan_load2_noabort(i32 %19)
  %cond19.in100 = load i16, ptr %cond19.in.in, align 2
  %20 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %cond19.in100, ptr %port, align 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_sh) #3
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry.sw.bb24_crit_edge, %entry.sw.bb24_crit_edge224
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_udph) #3
  %len.i.i121 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %_udph to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 -1, ptr %_udph, align 8
  %22 = ptrtoint ptr %len.i.i121 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i.i121, align 4
  %data_len.i.i122 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %24 = ptrtoint ptr %data_len.i.i122 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i.i122, align 8
  %26 = add i32 %25, %protooff
  %sub.i4.i123 = sub i32 %23, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i123)
  %cmp.not.i.i124 = icmp slt i32 %sub.i4.i123, 8
  br i1 %cmp.not.i.i124, label %if.end.i.i129, label %skb_header_pointer.exit135, !prof !13

if.end.i.i129:                                    ; preds = %sw.bb24
  %tobool2.not.i.i128 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i128, label %if.end.i.i129.cleanup40.thread_crit_edge, label %lor.lhs.false.i.i133

if.end.i.i129.cleanup40.thread_crit_edge:         ; preds = %if.end.i.i129
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup40.thread

lor.lhs.false.i.i133:                             ; preds = %if.end.i.i129
  %call.i.i130 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %protooff, ptr noundef nonnull %_udph, i32 noundef 8) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i130)
  %cmp3.i.i131 = icmp slt i32 %call.i.i130, 0
  br i1 %cmp3.i.i131, label %lor.lhs.false.i.i133.cleanup40.thread_crit_edge, label %lor.lhs.false.i.i133.cleanup40_crit_edge

lor.lhs.false.i.i133.cleanup40_crit_edge:         ; preds = %lor.lhs.false.i.i133
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup40

lor.lhs.false.i.i133.cleanup40.thread_crit_edge:  ; preds = %lor.lhs.false.i.i133
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup40.thread

skb_header_pointer.exit135:                       ; preds = %sw.bb24
  %data.i125 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i125 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i125, align 4
  %add.ptr.i.i126 = getelementptr i8, ptr %28, i32 %protooff
  %tobool26.not = icmp eq ptr %add.ptr.i.i126, null
  br i1 %tobool26.not, label %skb_header_pointer.exit135.cleanup40.thread_crit_edge, label %skb_header_pointer.exit135.cleanup40_crit_edge

skb_header_pointer.exit135.cleanup40_crit_edge:   ; preds = %skb_header_pointer.exit135
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup40

skb_header_pointer.exit135.cleanup40.thread_crit_edge: ; preds = %skb_header_pointer.exit135
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup40.thread

cleanup40.thread:                                 ; preds = %skb_header_pointer.exit135.cleanup40.thread_crit_edge, %lor.lhs.false.i.i133.cleanup40.thread_crit_edge, %if.end.i.i129.cleanup40.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_udph) #3
  br label %return

cleanup40:                                        ; preds = %skb_header_pointer.exit135.cleanup40_crit_edge, %lor.lhs.false.i.i133.cleanup40_crit_edge
  %retval.0.i.i134191 = phi ptr [ %add.ptr.i.i126, %skb_header_pointer.exit135.cleanup40_crit_edge ], [ %_udph, %lor.lhs.false.i.i133.cleanup40_crit_edge ]
  %dest35 = getelementptr inbounds %struct.udphdr, ptr %retval.0.i.i134191, i32 0, i32 1
  %cond38.in.in = select i1 %src, ptr %retval.0.i.i134191, ptr %dest35
  %29 = ptrtoint ptr %cond38.in.in to i32
  call void @__asan_load2_noabort(i32 %29)
  %cond38.in99 = load i16, ptr %cond38.in.in, align 2
  %30 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %cond38.in99, ptr %port, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_udph) #3
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_ich) #3
  %len.i.i136 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %31 = ptrtoint ptr %_ich to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 -1, ptr %_ich, align 8
  %32 = ptrtoint ptr %len.i.i136 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i.i136, align 4
  %data_len.i.i137 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %34 = ptrtoint ptr %data_len.i.i137 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len.i.i137, align 8
  %36 = add i32 %35, %protooff
  %sub.i4.i138 = sub i32 %33, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i138)
  %cmp.not.i.i139 = icmp slt i32 %sub.i4.i138, 8
  br i1 %cmp.not.i.i139, label %if.end.i.i144, label %skb_header_pointer.exit150, !prof !13

if.end.i.i144:                                    ; preds = %sw.bb43
  %tobool2.not.i.i143 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i143, label %if.end.i.i144.cleanup51.thread_crit_edge, label %lor.lhs.false.i.i148

if.end.i.i144.cleanup51.thread_crit_edge:         ; preds = %if.end.i.i144
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup51.thread

lor.lhs.false.i.i148:                             ; preds = %if.end.i.i144
  %call.i.i145 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %protooff, ptr noundef nonnull %_ich, i32 noundef 8) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i145)
  %cmp3.i.i146 = icmp slt i32 %call.i.i145, 0
  br i1 %cmp3.i.i146, label %lor.lhs.false.i.i148.cleanup51.thread_crit_edge, label %lor.lhs.false.i.i148.cleanup51_crit_edge

lor.lhs.false.i.i148.cleanup51_crit_edge:         ; preds = %lor.lhs.false.i.i148
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup51

lor.lhs.false.i.i148.cleanup51.thread_crit_edge:  ; preds = %lor.lhs.false.i.i148
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup51.thread

skb_header_pointer.exit150:                       ; preds = %sw.bb43
  %data.i140 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %37 = ptrtoint ptr %data.i140 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i140, align 4
  %add.ptr.i.i141 = getelementptr i8, ptr %38, i32 %protooff
  %tobool45.not = icmp eq ptr %add.ptr.i.i141, null
  br i1 %tobool45.not, label %skb_header_pointer.exit150.cleanup51.thread_crit_edge, label %skb_header_pointer.exit150.cleanup51_crit_edge

skb_header_pointer.exit150.cleanup51_crit_edge:   ; preds = %skb_header_pointer.exit150
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup51

skb_header_pointer.exit150.cleanup51.thread_crit_edge: ; preds = %skb_header_pointer.exit150
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup51.thread

cleanup51.thread:                                 ; preds = %skb_header_pointer.exit150.cleanup51.thread_crit_edge, %lor.lhs.false.i.i148.cleanup51.thread_crit_edge, %if.end.i.i144.cleanup51.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_ich) #3
  br label %return

cleanup51:                                        ; preds = %skb_header_pointer.exit150.cleanup51_crit_edge, %lor.lhs.false.i.i148.cleanup51_crit_edge
  %retval.0.i.i149201 = phi ptr [ %add.ptr.i.i141, %skb_header_pointer.exit150.cleanup51_crit_edge ], [ %_ich, %lor.lhs.false.i.i148.cleanup51_crit_edge ]
  %39 = ptrtoint ptr %retval.0.i.i149201 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %retval.0.i.i149201, align 4
  %conv48 = zext i8 %40 to i16
  %shl = shl nuw i16 %conv48, 8
  %code = getelementptr inbounds %struct.icmphdr, ptr %retval.0.i.i149201, i32 0, i32 1
  %41 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %code, align 1
  %conv49 = zext i8 %42 to i16
  %or = or i16 %shl, %conv49
  %43 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %or, ptr %port, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_ich) #3
  br label %sw.epilog

sw.bb54:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_ich55) #3
  %len.i.i151 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %44 = ptrtoint ptr %_ich55 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 -1, ptr %_ich55, align 8
  %45 = ptrtoint ptr %len.i.i151 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i.i151, align 4
  %data_len.i.i152 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %47 = ptrtoint ptr %data_len.i.i152 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_len.i.i152, align 8
  %49 = add i32 %48, %protooff
  %sub.i4.i153 = sub i32 %46, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i153)
  %cmp.not.i.i154 = icmp slt i32 %sub.i4.i153, 8
  br i1 %cmp.not.i.i154, label %if.end.i.i159, label %skb_header_pointer.exit165, !prof !13

if.end.i.i159:                                    ; preds = %sw.bb54
  %tobool2.not.i.i158 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i158, label %if.end.i.i159.cleanup66.thread_crit_edge, label %lor.lhs.false.i.i163

if.end.i.i159.cleanup66.thread_crit_edge:         ; preds = %if.end.i.i159
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup66.thread

lor.lhs.false.i.i163:                             ; preds = %if.end.i.i159
  %call.i.i160 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %protooff, ptr noundef nonnull %_ich55, i32 noundef 8) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i160)
  %cmp3.i.i161 = icmp slt i32 %call.i.i160, 0
  br i1 %cmp3.i.i161, label %lor.lhs.false.i.i163.cleanup66.thread_crit_edge, label %lor.lhs.false.i.i163.cleanup66_crit_edge

lor.lhs.false.i.i163.cleanup66_crit_edge:         ; preds = %lor.lhs.false.i.i163
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup66

lor.lhs.false.i.i163.cleanup66.thread_crit_edge:  ; preds = %lor.lhs.false.i.i163
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup66.thread

skb_header_pointer.exit165:                       ; preds = %sw.bb54
  %data.i155 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %50 = ptrtoint ptr %data.i155 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i155, align 4
  %add.ptr.i.i156 = getelementptr i8, ptr %51, i32 %protooff
  %tobool58.not = icmp eq ptr %add.ptr.i.i156, null
  br i1 %tobool58.not, label %skb_header_pointer.exit165.cleanup66.thread_crit_edge, label %skb_header_pointer.exit165.cleanup66_crit_edge

skb_header_pointer.exit165.cleanup66_crit_edge:   ; preds = %skb_header_pointer.exit165
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup66

skb_header_pointer.exit165.cleanup66.thread_crit_edge: ; preds = %skb_header_pointer.exit165
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup66.thread

cleanup66.thread:                                 ; preds = %skb_header_pointer.exit165.cleanup66.thread_crit_edge, %lor.lhs.false.i.i163.cleanup66.thread_crit_edge, %if.end.i.i159.cleanup66.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_ich55) #3
  br label %return

cleanup66:                                        ; preds = %skb_header_pointer.exit165.cleanup66_crit_edge, %lor.lhs.false.i.i163.cleanup66_crit_edge
  %retval.0.i.i164211 = phi ptr [ %add.ptr.i.i156, %skb_header_pointer.exit165.cleanup66_crit_edge ], [ %_ich55, %lor.lhs.false.i.i163.cleanup66_crit_edge ]
  %52 = ptrtoint ptr %retval.0.i.i164211 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %retval.0.i.i164211, align 4
  %conv61 = zext i8 %53 to i16
  %shl62 = shl nuw i16 %conv61, 8
  %icmp6_code = getelementptr inbounds %struct.icmp6hdr, ptr %retval.0.i.i164211, i32 0, i32 1
  %54 = ptrtoint ptr %icmp6_code to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %icmp6_code, align 1
  %conv63 = zext i8 %55 to i16
  %or64 = or i16 %shl62, %conv63
  %56 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %or64, ptr %port, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_ich55) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %cleanup66, %cleanup51, %cleanup40, %cleanup21, %cleanup, %entry.sw.epilog_crit_edge
  %conv69 = trunc i32 %protocol to i8
  %57 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv69, ptr %proto, align 1
  br label %return

return:                                           ; preds = %sw.epilog, %cleanup66.thread, %cleanup51.thread, %cleanup40.thread, %cleanup21.thread, %cleanup.thread
  %retval.5 = phi i1 [ true, %sw.epilog ], [ false, %cleanup.thread ], [ false, %cleanup21.thread ], [ false, %cleanup40.thread ], [ false, %cleanup51.thread ], [ false, %cleanup66.thread ]
  ret i1 %retval.5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ip_set_get_ip6_port(ptr noundef %skb, i1 noundef zeroext %src, ptr nocapture noundef writeonly %port, ptr nocapture noundef writeonly %proto) #0 align 64 {
entry:
  %nexthdr = alloca i8, align 1
  %frag_off = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr) #3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off) #3
  %0 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %frag_off, align 2
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %1 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %3 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %4 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %nexthdr1 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %nexthdr1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nexthdr1, align 2
  %7 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %nexthdr, align 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = add i32 %sub.ptr.lhs.cast.i, 40
  %add = sub i32 %sub.ptr.sub.i, %sub.ptr.rhs.cast.i
  %call3 = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef %add, ptr noundef nonnull %nexthdr, ptr noundef nonnull %frag_off) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %10 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %frag_off, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %11)
  %cmp4.not = icmp ult i16 %11, 8
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nexthdr, align 1
  %conv6 = zext i8 %13 to i32
  %call7 = call fastcc zeroext i1 @get_port(ptr noundef %skb, i32 noundef %conv6, i32 noundef %call3, i1 noundef zeroext %src, ptr noundef %port, ptr noundef %proto)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call7, %if.end ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr) #3
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store8_noabort(i32)

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

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_ip_set_get_ip4_port, !1, !"__ksymtab_ip_set_get_ip4_port", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipset/ip_set_getport.c", i32 128, i32 1}
!2 = !{ptr @__ksymtab_ip_set_get_ip6_port, !3, !"__ksymtab_ip_set_get_ip6_port", i1 false, i1 false}
!3 = !{!"../net/netfilter/ipset/ip_set_getport.c", i32 149, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 1, i32 2000}
