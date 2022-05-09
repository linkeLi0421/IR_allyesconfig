; ModuleID = '/llk/IR_all_yes/net/ipv6/ip6_checksum.c_pt.bc'
source_filename = "../net/ipv6/ip6_checksum.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+udp6_csum_init\22, \22a\22\09"
module asm "\09.weak\09__crc_udp6_csum_init\09\09\09\09"
module asm "\09.long\09__crc_udp6_csum_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp6_csum_init:\09\09\09\09\09"
module asm "\09.asciz \09\22udp6_csum_init\22\09\09\09\09\09"
module asm "__kstrtabns_udp6_csum_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+udp6_set_csum\22, \22a\22\09"
module asm "\09.weak\09__crc_udp6_set_csum\09\09\09\09"
module asm "\09.long\09__crc_udp6_set_csum\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp6_set_csum:\09\09\09\09\09"
module asm "\09.asciz \09\22udp6_set_csum\22\09\09\09\09\09"
module asm "__kstrtabns_udp6_set_csum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.anon.132 = type { i16, i16 }

@__kstrtab_udp6_csum_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp6_csum_init = external dso_local constant [0 x i8], align 1
@__ksymtab_udp6_csum_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp6_csum_init to i32), ptr @__kstrtab_udp6_csum_init, ptr @__kstrtabns_udp6_csum_init }, section "___ksymtab+udp6_csum_init", align 4
@__kstrtab_udp6_set_csum = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp6_set_csum = external dso_local constant [0 x i8], align 1
@__ksymtab_udp6_set_csum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp6_set_csum to i32), ptr @__kstrtab_udp6_set_csum, ptr @__kstrtabns_udp6_set_csum }, section "___ksymtab+udp6_set_csum", align 4
@udplite_checksum_init.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ip6_checksum\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"udplite_checksum_init\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/udplite.h\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"UDPLite: zeroed checksum field\0A\00", [32 x i8] zeroinitializer }, align 32
@udplite_checksum_init.descriptor.4 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"UDPLite: bad csum coverage %d/%d\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@___asan_gen_ = private constant [27 x i8] c"../net/ipv6/ip6_checksum.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 46, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [25 x i8] c"../include/net/udplite.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 58, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_udp6_csum_init, ptr @__ksymtab_udp6_set_csum, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udp6_csum_init(ptr noundef %skb, ptr nocapture noundef readonly %uh, i32 noundef %proto) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %partial_cov = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %0 = ptrtoint ptr %partial_cov to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %partial_cov, align 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  %conv = trunc i32 %2 to i16
  %cscov = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %3 = ptrtoint ptr %cscov to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %cscov, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %proto)
  %cmp = icmp eq i32 %proto, 136
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end12

if.then:                                          ; preds = %entry
  %check.i = getelementptr inbounds %struct.udphdr, ptr %uh, i32 0, i32 3
  %4 = ptrtoint ptr %check.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %check.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.i = icmp eq i16 %5, 0
  br i1 %cmp.i, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udplite_checksum_init.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udp6_csum_init, %land.lhs.true.i)) #2
          to label %cleanup [label %land.lhs.true.i], !srcloc !22

land.lhs.true.i:                                  ; preds = %do.body.i
  %call4.i = tail call i32 @net_ratelimit() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then6.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udplite_checksum_init.descriptor, ptr noundef nonnull @.str.3) #2
  br label %cleanup

if.end7.i:                                        ; preds = %if.then
  %len.i = getelementptr inbounds %struct.udphdr, ptr %uh, i32 0, i32 2
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len.i, align 2
  %conv8.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp9.i = icmp eq i16 %7, 0
  br i1 %cmp9.i, label %if.end7.i.if.end_crit_edge, label %if.else.i

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %7)
  %cmp13.i = icmp ult i16 %7, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv8.i)
  %cmp17.i = icmp ult i32 %2, %conv8.i
  %or.cond107 = select i1 %cmp13.i, i1 true, i1 %cmp17.i
  br i1 %or.cond107, label %do.body20.i, label %if.else41.i

do.body20.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udplite_checksum_init.descriptor.4, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udp6_csum_init, %land.lhs.true32.i)) #2
          to label %cleanup [label %land.lhs.true32.i], !srcloc !22

land.lhs.true32.i:                                ; preds = %do.body20.i
  %call33.i = tail call i32 @net_ratelimit() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %land.lhs.true32.i.cleanup_crit_edge, label %if.then35.i

land.lhs.true32.i.cleanup_crit_edge:              ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then35.i:                                      ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #4
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udplite_checksum_init.descriptor.4, ptr noundef nonnull @.str.5, i32 noundef %conv8.i, i32 noundef %9) #2
  br label %cleanup

if.else41.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv8.i)
  %cmp44.i = icmp ugt i32 %2, %conv8.i
  br i1 %cmp44.i, label %if.then46.i, label %if.else41.i.if.end_crit_edge

if.else41.i.if.end_crit_edge:                     ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then46.i:                                      ; preds = %if.else41.i
  %10 = ptrtoint ptr %partial_cov to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %partial_cov, align 2
  %11 = ptrtoint ptr %cscov to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %7, ptr %cscov, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %12 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %13 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %13)
  %cmp51.i = icmp eq i16 %13, 1024
  br i1 %cmp51.i, label %if.then53.i, label %if.then46.i.if.end57.i_crit_edge

if.then46.i.if.end57.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end57.i

if.then53.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #4
  %bf.clear56.i = and i16 %bf.load.i, -1537
  %14 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %bf.clear56.i, ptr %ip_summed.i, align 8
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then53.i, %if.then46.i.if.end57.i_crit_edge
  %15 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load58.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear59.i = and i16 %bf.load58.i, -2
  store i16 %bf.clear59.i, ptr %ip_summed.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end57.i, %if.else41.i.if.end_crit_edge, %if.end7.i.if.end_crit_edge
  %16 = ptrtoint ptr %partial_cov to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %partial_cov, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not = icmp eq i8 %17, 0
  br i1 %tobool8.not, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %18 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %20 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %21 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 %conv.i.i.i
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %call.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i, ptr noundef %daddr.i, i32 noundef %23, i32 noundef 136, i32 noundef 0) #2
  %24 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #5, !srcloc !23
  %shr.i.i.i = lshr i32 %24, 16
  %neg12.i = or i32 %shr.i.i.i, -65536
  %25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %neg12.i, ptr %25, align 8
  br label %cleanup

if.end12:                                         ; preds = %if.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  %csum_valid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %27 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load = load i16, ptr %csum_valid, align 8
  %bf.clear = and i16 %bf.load, -2
  store i16 %bf.clear, ptr %csum_valid, align 8
  %check = getelementptr inbounds %struct.udphdr, ptr %uh, i32 0, i32 3
  %28 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %check, align 2
  %bf.lshr.i.i = lshr i16 %bf.load, 9
  %trunc = trunc i16 %bf.lshr.i.i to i2
  %30 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc, label %if.end12.skb_csum_unnecessary.exit.i_crit_edge [
    i2 1, label %if.end12.if.then.i_crit_edge
    i2 -1, label %land.rhs.i.i
  ]

if.end12.if.then.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then.i

if.end12.skb_csum_unnecessary.exit.i_crit_edge:   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #4
  br label %skb_csum_unnecessary.exit.i

land.rhs.i.i:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %31, align 8
  %conv.i.i.i64 = zext i16 %33 to i32
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %36 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i.neg.i.i.i = sub i32 %conv.i.i.i64, %sub.ptr.lhs.cast.i.i.i.i
  %sub.i.i.i = add i32 %sub.ptr.sub.i.neg.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %phi.cmp.i = icmp sgt i32 %sub.i.i.i, -1
  br label %skb_csum_unnecessary.exit.i

skb_csum_unnecessary.exit.i:                      ; preds = %land.rhs.i.i, %if.end12.skb_csum_unnecessary.exit.i_crit_edge
  %38 = phi i1 [ %phi.cmp.i, %land.rhs.i.i ], [ false, %if.end12.skb_csum_unnecessary.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool2.not.i = icmp eq i16 %29, 0
  %or.cond.i = or i1 %tobool2.not.i, %38
  br i1 %or.cond.i, label %skb_csum_unnecessary.exit.i.if.then.i_crit_edge, label %if.then14

skb_csum_unnecessary.exit.i.if.then.i_crit_edge:  ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then.i

if.then.i:                                        ; preds = %skb_csum_unnecessary.exit.i.if.then.i_crit_edge, %if.end12.if.then.i_crit_edge
  %bf.set.i = or i16 %bf.load, 1
  %39 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %bf.set.i, ptr %csum_valid, align 8
  %40 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %40)
  %cmp.i3.i = icmp eq i16 %40, 512
  br i1 %cmp.i3.i, label %if.then.i.i, label %if.then.i.if.end21_crit_edge

if.then.i.if.end21_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end21

if.then.i.i:                                      ; preds = %if.then.i
  %csum_level.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %41 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %bf.load2.i.i = load i32, ptr %csum_level.i.i, align 2
  %42 = and i32 %bf.load2.i.i, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp7.i.i = icmp eq i32 %42, 0
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.else.i.i

if.then9.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %bf.clear12.i.i = and i16 %bf.set.i, -1537
  %43 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %bf.clear12.i.i, ptr %csum_valid, align 8
  br label %if.end21

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %44 = add i32 %bf.load2.i.i, 805306368
  %bf.shl.i.i = and i32 %44, 805306368
  %bf.clear19.i.i = and i32 %bf.load2.i.i, -805306369
  %bf.set20.i.i = or i32 %bf.shl.i.i, %bf.clear19.i.i
  %45 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %bf.set20.i.i, ptr %csum_level.i.i, align 2
  br label %if.end21

if.then14:                                        ; preds = %skb_csum_unnecessary.exit.i
  %head.i.i.i66 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %46 = ptrtoint ptr %head.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i.i66, align 8
  %network_header.i.i.i67 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %48 = ptrtoint ptr %network_header.i.i.i67 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %network_header.i.i.i67, align 4
  %conv.i.i.i68 = zext i16 %49 to i32
  %add.ptr.i.i.i69 = getelementptr i8, ptr %47, i32 %conv.i.i.i68
  %saddr.i70 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i69, i32 0, i32 5
  %daddr.i71 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i69, i32 0, i32 6
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len, align 4
  %conv.i10.i = and i32 %proto, 255
  %call.i.i73 = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i70, ptr noundef %daddr.i71, i32 noundef %51, i32 noundef %conv.i10.i, i32 noundef 0) #2
  %52 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i73) #5, !srcloc !23
  %shr.i.i.i74 = lshr i32 %52, 16
  %neg12.i75 = or i32 %shr.i.i.i74, -65536
  %53 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load.i77 = load i16, ptr %csum_valid, align 8
  %54 = and i16 %bf.load.i77, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %54)
  %cmp.i78 = icmp eq i16 %54, 1024
  br i1 %cmp.i78, label %if.then.i80, label %if.then14.if.end6.i_crit_edge

if.then14.if.end6.i_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6.i

if.then.i80:                                      ; preds = %if.then14
  %55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 8
  %add.i.i = add i32 %57, %neg12.i75
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %57)
  %cmp.i.i79 = icmp ult i32 %add.i.i, %57
  %conv.i.i = zext i1 %cmp.i.i79 to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %58 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i) #5, !srcloc !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %58)
  %tobool.not.i = icmp ugt i32 %58, -65537
  br i1 %tobool.not.i, label %if.end17.thread102, label %if.then.i80.if.end6.i_crit_edge

if.then.i80.if.end6.i_crit_edge:                  ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6.i

if.end17.thread102:                               ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #4
  %bf.set.i81 = or i16 %bf.load.i77, 1
  %59 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %bf.set.i81, ptr %csum_valid, align 8
  br label %if.end21

if.end6.i:                                        ; preds = %if.then.i80.if.end6.i_crit_edge, %if.then14.if.end6.i_crit_edge
  %60 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %neg12.i75, ptr %60, align 8
  %62 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 77, i32 %63)
  %cmp9.i83 = icmp ult i32 %63, 77
  br i1 %cmp9.i83, label %if.end17, label %if.end6.i.if.end21_crit_edge

if.end6.i.if.end21_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end21

if.end17:                                         ; preds = %if.end6.i
  %call12.i = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %skb) #2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call12.i)
  %tobool13.not.i = icmp eq i16 %call12.i, 0
  %64 = zext i1 %tobool13.not.i to i16
  %65 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load16.i = load i16, ptr %csum_valid, align 8
  %bf.clear17.i = and i16 %bf.load16.i, -2
  %bf.set18.i = or i16 %bf.clear17.i, %64
  store i16 %bf.set18.i, ptr %csum_valid, align 8
  %phi.cast = zext i16 %call12.i to i32
  br i1 %tobool13.not.i, label %if.end17.if.end21_crit_edge, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end21

if.end21:                                         ; preds = %if.end17.if.end21_crit_edge, %if.end6.i.if.end21_crit_edge, %if.end17.thread102, %if.else.i.i, %if.then9.i.i, %if.then.i.if.end21_crit_edge
  %66 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load22 = load i16, ptr %csum_valid, align 8
  %67 = and i16 %bf.load22, 1537
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %67)
  %68 = icmp eq i16 %67, 1024
  br i1 %68, label %if.then32, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then32:                                        ; preds = %if.end21
  %csum_complete_sw = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %69 = ptrtoint ptr %csum_complete_sw to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %bf.load33 = load i32, ptr %csum_complete_sw, align 2
  %70 = and i32 %bf.load33, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool37.not = icmp eq i32 %70, 0
  br i1 %tobool37.not, label %skb_checksum_complete_unset.exit, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

skb_checksum_complete_unset.exit:                 ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #4
  %bf.clear4.i = and i16 %bf.load22, -1537
  %71 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %bf.clear4.i, ptr %csum_valid, align 8
  br label %cleanup

cleanup:                                          ; preds = %skb_checksum_complete_unset.exit, %if.then32.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then9, %if.then35.i, %land.lhs.true32.i.cleanup_crit_edge, %do.body20.i, %if.then6.i, %land.lhs.true.i.cleanup_crit_edge, %do.body.i
  %retval.0 = phi i32 [ 0, %if.then9 ], [ %phi.cast, %if.end17.cleanup_crit_edge ], [ 1, %if.then32.cleanup_crit_edge ], [ 0, %skb_checksum_complete_unset.exit ], [ 0, %if.end21.cleanup_crit_edge ], [ 1, %do.body.i ], [ 1, %do.body20.i ], [ 1, %if.then6.i ], [ 1, %land.lhs.true.i.cleanup_crit_edge ], [ 1, %if.then35.i ], [ 1, %land.lhs.true32.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @udp6_set_csum(i1 noundef zeroext %nocheck, ptr nocapture noundef %skb, ptr noundef %saddr, ptr noundef %daddr, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  br i1 %nocheck, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %check = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %check, align 2
  br label %if.end33

if.else:                                          ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %5 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.i.not = icmp eq i16 %8, 0
  br i1 %tobool.i.not, label %if.else6, label %if.then2

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %call.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef %len, i32 noundef 17, i32 noundef 0) #2
  %9 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #5, !srcloc !23
  %neg.i.i.i = xor i32 %9, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %neg = xor i16 %conv.i.i.i, -1
  %check5 = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %check5 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %neg, ptr %check5, align 2
  br label %if.end33

if.else6:                                         ; preds = %if.else
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %11 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %ip_summed, align 8
  %12 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %12)
  %cmp = icmp eq i16 %12, 1536
  br i1 %cmp, label %if.then9, label %if.else20

if.then9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #4
  %check10 = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %check10 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %check10, align 2
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 8
  %conv.i8.i = zext i16 %18 to i32
  %add.ptr.i.i55 = getelementptr i8, ptr %15, i32 %conv.i8.i
  %19 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %transport_header.i.i, align 2
  %conv.i10.i = zext i16 %20 to i32
  %add.ptr.i11.i = getelementptr i8, ptr %15, i32 %conv.i10.i
  %csum_offset.i = getelementptr inbounds %struct.anon.132, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %csum_offset.i, align 2
  %conv.i = zext i16 %22 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i55, i32 %conv.i
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i, align 2
  %conv.i.i57 = zext i16 %24 to i32
  %neg.i = xor i32 %conv.i.i57, -1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i55 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i11.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call3.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i11.i, i32 noundef %sub.ptr.sub.i, i32 noundef %neg.i) #2
  %call.i.i58 = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef %len, i32 noundef 17, i32 noundef %call3.i) #2
  %25 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i58) #5, !srcloc !23
  %neg.i.i.i59 = xor i32 %25, -1
  %shr.i.i.i60 = lshr i32 %neg.i.i.i59, 16
  %conv.i.i.i61 = trunc i32 %shr.i.i.i60 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i.i.i61)
  %cmp16 = icmp eq i16 %conv.i.i.i61, 0
  %spec.store.select = select i1 %cmp16, i16 -1, i16 %conv.i.i.i61
  %26 = ptrtoint ptr %check10 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %spec.store.select, ptr %check10, align 2
  br label %if.end33

if.else20:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #4
  %bf.set = or i16 %bf.load, 1536
  %27 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %bf.set, ptr %ip_summed, align 8
  %28 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %3, ptr %28, align 8
  %csum_offset = getelementptr inbounds %struct.anon.132, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %csum_offset to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 6, ptr %csum_offset, align 2
  %call.i.i64 = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef %len, i32 noundef 17, i32 noundef 0) #2
  %31 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i64) #5, !srcloc !23
  %neg.i.i.i65 = xor i32 %31, -1
  %shr.i.i.i66 = lshr i32 %neg.i.i.i65, 16
  %conv.i.i.i67 = trunc i32 %shr.i.i.i66 to i16
  %neg28 = xor i16 %conv.i.i.i67, -1
  %check30 = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %check30 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %neg28, ptr %check30, align 2
  br label %if.end33

if.end33:                                         ; preds = %if.else20, %if.then9, %if.then2, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__ksymtab_udp6_csum_init, !1, !"__ksymtab_udp6_csum_init", i1 false, i1 false}
!1 = !{!"../net/ipv6/ip6_checksum.c", i32 110, i32 1}
!2 = !{ptr @__ksymtab_udp6_set_csum, !3, !"__ksymtab_udp6_set_csum", i1 false, i1 false}
!3 = !{!"../net/ipv6/ip6_checksum.c", i32 137, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/net/udplite.h", i32 46, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @udplite_checksum_init.descriptor, !5, !"descriptor", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/net/udplite.h", i32 58, i32 3}
!12 = !{ptr @udplite_checksum_init.descriptor.4, !11, !"descriptor", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2148855743, i64 2148855748, i64 2148855761, i64 2148855805, i64 2148855839, i64 2148855860}
!23 = !{i64 6474839}
