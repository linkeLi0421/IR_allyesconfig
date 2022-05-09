; ModuleID = '/llk/IR_all_yes/net/netfilter/utils.c_pt.bc'
source_filename = "../net/netfilter/utils.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+nf_ip_checksum\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ip_checksum\09\09\09\09"
module asm "\09.long\09__crc_nf_ip_checksum\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ip_checksum:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ip_checksum\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ip_checksum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nf_ip6_checksum\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ip6_checksum\09\09\09\09"
module asm "\09.long\09__crc_nf_ip6_checksum\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ip6_checksum:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ip6_checksum\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ip6_checksum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_checksum\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_checksum\09\09\09\09"
module asm "\09.long\09__crc_nf_checksum\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_checksum:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_checksum\22\09\09\09\09\09"
module asm "__kstrtabns_nf_checksum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_checksum_partial\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_checksum_partial\09\09\09\09"
module asm "\09.long\09__crc_nf_checksum_partial\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_checksum_partial:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_checksum_partial\22\09\09\09\09\09"
module asm "__kstrtabns_nf_checksum_partial:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_route\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_route\09\09\09\09"
module asm "\09.long\09__crc_nf_route\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_route:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_route\22\09\09\09\09\09"
module asm "__kstrtabns_nf_route:\09\09\09\09\09"
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
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.nf_queue_entry = type { %struct.list_head, ptr, i32, i32, ptr, ptr, %struct.nf_hook_state, i16 }
%struct.list_head = type { ptr, ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.nf_ipv6_ops = type { ptr, ptr, ptr }

@__kstrtab_nf_ip_checksum = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ip_checksum = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ip_checksum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ip_checksum to i32), ptr @__kstrtab_nf_ip_checksum, ptr @__kstrtabns_nf_ip_checksum }, section "___ksymtab+nf_ip_checksum", align 4
@__kstrtab_nf_ip6_checksum = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ip6_checksum = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ip6_checksum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ip6_checksum to i32), ptr @__kstrtab_nf_ip6_checksum, ptr @__kstrtabns_nf_ip6_checksum }, section "___ksymtab+nf_ip6_checksum", align 4
@__kstrtab_nf_checksum = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_checksum = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_checksum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_checksum to i32), ptr @__kstrtab_nf_checksum, ptr @__kstrtabns_nf_checksum }, section "___ksymtab_gpl+nf_checksum", align 4
@__kstrtab_nf_checksum_partial = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_checksum_partial = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_checksum_partial = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_checksum_partial to i32), ptr @__kstrtab_nf_checksum_partial, ptr @__kstrtabns_nf_checksum_partial }, section "___ksymtab_gpl+nf_checksum_partial", align 4
@__kstrtab_nf_route = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_route = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_route = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_route to i32), ptr @__kstrtab_nf_route, ptr @__kstrtabns_nf_route }, section "___ksymtab_gpl+nf_route", align 4
@nf_ipv6_ops = external dso_local global ptr, align 4
@nf_reroute.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/netfilter/utils.c\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [25 x i8] c"../net/netfilter/utils.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 211, i32 11 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_nf_checksum, ptr @__ksymtab_nf_checksum_partial, ptr @__ksymtab_nf_ip6_checksum, ptr @__ksymtab_nf_ip_checksum, ptr @__ksymtab_nf_route, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nf_ip_checksum(ptr noundef %skb, i32 noundef %hook, i32 noundef %dataoff, i8 noundef zeroext %protocol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
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
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %4 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.lshr = lshr i16 %bf.load, 9
  %5 = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %5 to i32
  %6 = zext i32 %bf.cast to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.cast, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %entry.sw.bb20_crit_edge
  ]

entry.sw.bb20_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb20

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %hook)
  %switch = icmp ult i32 %hook, 2
  br i1 %switch, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %7 = zext i8 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %protocol, label %land.lhs.true11 [
    i8 6, label %if.end.if.else.i.i_crit_edge
    i8 17, label %if.end.if.else.i.i_crit_edge58
  ]

if.end.if.else.i.i_crit_edge58:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else.i.i

if.end.if.else.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else.i.i

land.lhs.true11:                                  ; preds = %if.end
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %11 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %10) #5, !srcloc !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %11)
  %tobool.not = icmp ugt i32 %11, -65537
  br i1 %tobool.not, label %land.lhs.true11.if.then15_crit_edge, label %land.lhs.true11.if.else.i.i_crit_edge

land.lhs.true11.if.else.i.i_crit_edge:            ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else.i.i

land.lhs.true11.if.then15_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then15

if.else.i.i:                                      ; preds = %land.lhs.true11.if.else.i.i_crit_edge, %if.end.if.else.i.i_crit_edge, %if.end.if.else.i.i_crit_edge58
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %sub = sub i32 %13, %dataoff
  %conv.i.i55 = zext i8 %protocol to i32
  %add.i.i = add i32 %sub, %conv.i.i55
  %14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %17 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %daddr, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %saddr, align 4
  %21 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adcs\09$0, $0, $4\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,r,~{cc}"(i32 %16, i32 %18, i32 %20, i32 %add.i.i) #5, !srcloc !24
  %22 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %21) #5, !srcloc !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %22)
  %tobool14.not = icmp ugt i32 %22, -65537
  br i1 %tobool14.not, label %if.else.i.i.if.then15_crit_edge, label %if.else.i.i.sw.bb20_crit_edge

if.else.i.i.sw.bb20_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb20

if.else.i.i.if.then15_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then15

if.then15:                                        ; preds = %if.else.i.i.if.then15_crit_edge, %land.lhs.true11.if.then15_crit_edge
  %bf.clear18 = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear18, 512
  %23 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.else.i.i.sw.bb20_crit_edge, %entry.sw.bb20_crit_edge
  %24 = zext i8 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %protocol, label %sw.bb20.if.end34_crit_edge [
    i8 6, label %sw.bb20.if.else_crit_edge
    i8 17, label %sw.bb20.if.else_crit_edge59
  ]

sw.bb20.if.else_crit_edge59:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

sw.bb20.if.else_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

sw.bb20.if.end34_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end34

if.else:                                          ; preds = %sw.bb20.if.else_crit_edge, %sw.bb20.if.else_crit_edge59
  %saddr29 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %saddr29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %saddr29, align 4
  %daddr30 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %27 = ptrtoint ptr %daddr30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %daddr30, align 4
  %len31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %29 = ptrtoint ptr %len31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len31, align 4
  %conv.i56 = zext i8 %protocol to i32
  %sub32 = sub i32 %conv.i56, %dataoff
  %add.i = add i32 %sub32, %30
  %31 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %28, i32 %26, i32 %add.i) #5, !srcloc !25
  br label %if.end34

if.end34:                                         ; preds = %if.else, %sw.bb20.if.end34_crit_edge
  %.sink = phi i32 [ %31, %if.else ], [ 0, %sw.bb20.if.end34_crit_edge ]
  %32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %32, align 8
  %call35 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %skb) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end34, %if.then15, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %csum.0 = phi i16 [ 0, %entry.sw.epilog_crit_edge ], [ %call35, %if.end34 ], [ 0, %if.then15 ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  ret i16 %csum.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nf_ip6_checksum(ptr noundef %skb, i32 noundef %hook, i32 noundef %dataoff, i8 noundef zeroext %protocol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i40 = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i40
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %4 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.lshr = lshr i16 %bf.load, 9
  %5 = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %5 to i32
  %6 = zext i32 %bf.cast to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %bf.cast, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %entry.sw.bb12_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %.pre = zext i8 %protocol to i32
  br label %sw.bb12

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %hook)
  %switch = icmp ult i32 %hook, 2
  br i1 %switch, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %sub = sub i32 %8, %dataoff
  %9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %call4 = tail call i32 @skb_checksum(ptr noundef %skb, i32 noundef 0, i32 noundef %dataoff, i32 noundef 0) #2
  %neg.i = xor i32 %call4, -1
  %add.i.i = add i32 %11, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %neg.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %neg.i
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %conv.i41 = zext i8 %protocol to i32
  %call.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef %sub, i32 noundef %conv.i41, i32 noundef %add1.i.i) #2
  %12 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i) #5, !srcloc !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %12)
  %tobool.not = icmp ugt i32 %12, -65537
  br i1 %tobool.not, label %if.then7, label %if.end.sw.bb12_crit_edge

if.end.sw.bb12_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %13 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load9 = load i16, ptr %ip_summed, align 8
  %bf.clear10 = and i16 %bf.load9, -1537
  %bf.set = or i16 %bf.clear10, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end.sw.bb12_crit_edge, %entry.sw.bb12_crit_edge
  %conv.i43.pre-phi = phi i32 [ %.pre, %entry.sw.bb12_crit_edge ], [ %conv.i41, %if.end.sw.bb12_crit_edge ]
  %saddr13 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %daddr14 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %len15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len15, align 4
  %sub16 = sub i32 %15, %dataoff
  %call17 = tail call i32 @skb_checksum(ptr noundef %skb, i32 noundef 0, i32 noundef %dataoff, i32 noundef 0) #2
  %neg.i39 = xor i32 %call17, -1
  %call.i44 = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr13, ptr noundef %daddr14, i32 noundef %sub16, i32 noundef %conv.i43.pre-phi, i32 noundef %neg.i39) #2
  %16 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i44) #5, !srcloc !23
  %shr.i.i46 = lshr i32 %16, 16
  %neg48 = or i32 %shr.i.i46, -65536
  %17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %neg48, ptr %17, align 8
  %call21 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %skb) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %if.then7, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %csum.0 = phi i16 [ 0, %entry.sw.epilog_crit_edge ], [ %call21, %sw.bb12 ], [ 0, %if.then7 ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  ret i16 %csum.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nf_checksum(ptr noundef %skb, i32 noundef %hook, i32 noundef %dataoff, i8 noundef zeroext %protocol, i16 noundef zeroext %family) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %family, label %entry.sw.epilog_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call zeroext i16 @nf_ip_checksum(ptr noundef %skb, i32 noundef %hook, i32 noundef %dataoff, i8 noundef zeroext %protocol)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call2 = tail call zeroext i16 @nf_ip6_checksum(ptr noundef %skb, i32 noundef %hook, i32 noundef %dataoff, i8 noundef zeroext %protocol)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %csum.0 = phi i16 [ 0, %entry.sw.epilog_crit_edge ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  ret i16 %csum.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nf_checksum_partial(ptr noundef %skb, i32 noundef %hook, i32 noundef %dataoff, i32 noundef %len, i8 noundef zeroext %protocol, i16 noundef zeroext %family) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %family, label %entry.sw.epilog_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %1 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %3 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %4 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %2, i32 %conv.i.i.i
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %5 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 9
  %6 = and i16 %bf.lshr.i, 3
  %bf.cast.i = zext i16 %6 to i32
  %7 = zext i32 %bf.cast.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %bf.cast.i, label %sw.bb.sw.epilog_crit_edge [
    i32 2, label %sw.bb.i
    i32 0, label %sw.bb.sw.bb4.i_crit_edge
  ]

sw.bb.sw.bb4.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb4.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len1.i, align 4
  %sub.i = sub i32 %9, %dataoff
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %len)
  %cmp.i = icmp eq i32 %sub.i, %len
  br i1 %cmp.i, label %if.then.i, label %sw.bb.i.sw.bb4.i_crit_edge

sw.bb.i.sw.bb4.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb4.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #4
  %call3.i = tail call zeroext i16 @nf_ip_checksum(ptr noundef %skb, i32 noundef %hook, i32 noundef %dataoff, i8 noundef zeroext %protocol) #2
  br label %sw.epilog

sw.bb4.i:                                         ; preds = %sw.bb.i.sw.bb4.i_crit_edge, %sw.bb.sw.bb4.i_crit_edge
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %12 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %daddr.i, align 4
  %conv5.i = zext i8 %protocol to i32
  %len6.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len6.i, align 4
  %sub7.i = sub i32 %15, %dataoff
  %conv.i.i = and i32 %sub7.i, 255
  %add.i.i = add nuw nsw i32 %conv.i.i, %conv5.i
  %16 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %13, i32 %11, i32 %add.i.i) #5, !srcloc !25
  %17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %17, align 8
  %bf.clear12.i = and i16 %bf.load.i, -1537
  %19 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %bf.clear12.i, ptr %ip_summed.i, align 8
  %add.i = add i32 %len, %dataoff
  %call13.i = tail call zeroext i16 @__skb_checksum_complete_head(ptr noundef %skb, i32 noundef %add.i) #2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %head.i.i.i8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i8, align 8
  %network_header.i.i.i9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i.i.i9 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i.i9, align 4
  %conv.i.i.i10 = zext i16 %23 to i32
  %add.ptr.i.i.i11 = getelementptr i8, ptr %21, i32 %conv.i.i.i10
  %ip_summed.i12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %24 = ptrtoint ptr %ip_summed.i12 to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i13 = load i16, ptr %ip_summed.i12, align 8
  %bf.lshr.i14 = lshr i16 %bf.load.i13, 9
  %25 = and i16 %bf.lshr.i14, 3
  %bf.cast.i15 = zext i16 %25 to i32
  %26 = zext i32 %bf.cast.i15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %bf.cast.i15, label %sw.bb1.sw.epilog_crit_edge [
    i32 2, label %sw.bb.i19
    i32 0, label %sw.bb1.sw.bb4.i27_crit_edge
  ]

sw.bb1.sw.bb4.i27_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb4.i27

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb.i19:                                        ; preds = %sw.bb1
  %len1.i16 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %27 = ptrtoint ptr %len1.i16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len1.i16, align 4
  %sub.i17 = sub i32 %28, %dataoff
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i17, i32 %len)
  %cmp.i18 = icmp eq i32 %sub.i17, %len
  br i1 %cmp.i18, label %if.then.i21, label %sw.bb.i19.sw.bb4.i27_crit_edge

sw.bb.i19.sw.bb4.i27_crit_edge:                   ; preds = %sw.bb.i19
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb4.i27

if.then.i21:                                      ; preds = %sw.bb.i19
  call void @__sanitizer_cov_trace_pc() #4
  %call3.i20 = tail call zeroext i16 @nf_ip6_checksum(ptr noundef %skb, i32 noundef %hook, i32 noundef %dataoff, i8 noundef zeroext %protocol) #2
  br label %sw.epilog

sw.bb4.i27:                                       ; preds = %sw.bb.i19.sw.bb4.i27_crit_edge, %sw.bb1.sw.bb4.i27_crit_edge
  %call5.i = tail call i32 @skb_checksum(ptr noundef %skb, i32 noundef 0, i32 noundef %dataoff, i32 noundef 0) #2
  %saddr.i22 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i11, i32 0, i32 5
  %daddr.i23 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i11, i32 0, i32 6
  %len6.i24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %29 = ptrtoint ptr %len6.i24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len6.i24, align 4
  %sub7.i25 = sub i32 %30, %dataoff
  %neg.i.i = xor i32 %call5.i, -1
  %conv.i32.i = zext i8 %protocol to i32
  %call.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i22, ptr noundef %daddr.i23, i32 noundef %sub7.i25, i32 noundef %conv.i32.i, i32 noundef %neg.i.i) #2
  %31 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #5, !srcloc !23
  %shr.i.i.i = lshr i32 %31, 16
  %neg34.i = or i32 %shr.i.i.i, -65536
  %32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %neg34.i, ptr %32, align 8
  %34 = ptrtoint ptr %ip_summed.i12 to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load12.i = load i16, ptr %ip_summed.i12, align 8
  %bf.clear13.i = and i16 %bf.load12.i, -1537
  store i16 %bf.clear13.i, ptr %ip_summed.i12, align 8
  %add.i26 = add i32 %len, %dataoff
  %call14.i = tail call zeroext i16 @__skb_checksum_complete_head(ptr noundef %skb, i32 noundef %add.i26) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4.i27, %if.then.i21, %sw.bb1.sw.epilog_crit_edge, %sw.bb4.i, %if.then.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %csum.0 = phi i16 [ 0, %entry.sw.epilog_crit_edge ], [ %call13.i, %sw.bb4.i ], [ %call3.i, %if.then.i ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %call14.i, %sw.bb4.i27 ], [ %call3.i20, %if.then.i21 ], [ 0, %sw.bb1.sw.epilog_crit_edge ]
  ret i16 %csum.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_route(ptr noundef %net, ptr noundef %dst, ptr noundef %fl, i1 noundef zeroext %strict, i16 noundef zeroext %family) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %family, label %entry.sw.epilog_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 @nf_ip_route(ptr noundef %net, ptr noundef %dst, ptr noundef %fl, i1 noundef zeroext %strict) #2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call.i = tail call i32 @__nf_ip6_route(ptr noundef %net, ptr noundef %dst, ptr noundef %fl, i1 noundef zeroext %strict) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call.i, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ip_route(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_reroute(ptr noundef %skb, ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %pf = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pf, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %entry1, i32 56
  %state.i = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cmp.i = icmp eq i8 %4, 3
  br i1 %cmp.i, label %if.then.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %8 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %conv.i.i.i
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tos.i, align 1
  %tos4.i = getelementptr i8, ptr %entry1, i32 64
  %11 = ptrtoint ptr %tos4.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tos4.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp6.i = icmp eq i8 %10, %12
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.then.i.cleanup.i_crit_edge

if.then.i.cleanup.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %mark.i = getelementptr i8, ptr %entry1, i32 68
  %16 = ptrtoint ptr %mark.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mark.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp8.i = icmp eq i32 %15, %17
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %18 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %daddr.i, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp12.i = icmp eq i32 %19, %21
  br i1 %cmp12.i, label %land.lhs.true14.i, label %land.lhs.true10.i.cleanup.i_crit_edge

land.lhs.true10.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

land.lhs.true14.i:                                ; preds = %land.lhs.true10.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %22 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %saddr.i, align 4
  %saddr15.i = getelementptr i8, ptr %entry1, i32 60
  %24 = ptrtoint ptr %saddr15.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %saddr15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp16.i = icmp eq i32 %23, %25
  br i1 %cmp16.i, label %land.lhs.true14.i.sw.epilog_crit_edge, label %land.lhs.true14.i.cleanup.i_crit_edge

land.lhs.true14.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

land.lhs.true14.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

cleanup.i:                                        ; preds = %land.lhs.true14.i.cleanup.i_crit_edge, %land.lhs.true10.i.cleanup.i_crit_edge, %land.lhs.true.i.cleanup.i_crit_edge, %if.then.i.cleanup.i_crit_edge
  %net.i = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1, i32 0, i32 6, i32 5
  %26 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net.i, align 4
  %sk.i = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1, i32 0, i32 6, i32 4
  %28 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk.i, align 4
  %call21.i = tail call i32 @ip_route_me_harder(ptr noundef %27, ptr noundef %29, ptr noundef %skb, i32 noundef 0) #2
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_ipv6_ops to i32))
  %30 = load volatile ptr, ptr @nf_ipv6_ops, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %sw.bb2.do.end10_crit_edge

sw.bb2.do.end10_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end10

land.lhs.true:                                    ; preds = %sw.bb2
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b20 = load i1, ptr @nf_reroute.__warned, align 1
  br i1 %.b20, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #4
  store i1 true, ptr @nf_reroute.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #2
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %sw.bb2.do.end10_crit_edge
  %tobool12.not = icmp eq ptr %30, null
  br i1 %tobool12.not, label %do.end10.sw.epilog_crit_edge, label %if.then13

do.end10.sw.epilog_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.then13:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #4
  %reroute = getelementptr inbounds %struct.nf_ipv6_ops, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %reroute to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reroute, align 4
  %call14 = tail call i32 %32(ptr noundef %skb, ptr noundef %entry1) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then13, %do.end10.sw.epilog_crit_edge, %cleanup.i, %land.lhs.true14.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call14, %if.then13 ], [ 0, %do.end10.sw.epilog_crit_edge ], [ %call21.i, %cleanup.i ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %land.lhs.true14.i.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete_head(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nf_ip6_route(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_me_harder(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__ksymtab_nf_ip_checksum, !1, !"__ksymtab_nf_ip_checksum", i1 false, i1 false}
!1 = !{!"../net/netfilter/utils.c", i32 40, i32 1}
!2 = !{ptr @__ksymtab_nf_ip6_checksum, !3, !"__ksymtab_nf_ip6_checksum", i1 false, i1 false}
!3 = !{!"../net/netfilter/utils.c", i32 95, i32 1}
!4 = !{ptr @__ksymtab_nf_checksum, !5, !"__ksymtab_nf_checksum", i1 false, i1 false}
!5 = !{!"../net/netfilter/utils.c", i32 140, i32 1}
!6 = !{ptr @__ksymtab_nf_checksum_partial, !7, !"__ksymtab_nf_checksum_partial", i1 false, i1 false}
!7 = !{!"../net/netfilter/utils.c", i32 161, i32 1}
!8 = !{ptr @__ksymtab_nf_route, !9, !"__ksymtab_nf_route", i1 false, i1 false}
!9 = !{!"../net/netfilter/utils.c", i32 180, i32 1}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/netfilter/utils.c", i32 211, i32 11}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 6466900}
!24 = !{i64 6468253, i64 6468293, i64 6468321, i64 6468366}
!25 = !{i64 6468002, i64 6468043, i64 6468088}
