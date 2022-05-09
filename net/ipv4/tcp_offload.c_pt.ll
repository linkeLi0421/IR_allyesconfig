; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_offload.c_pt.bc'
source_filename = "../net/ipv4/tcp_offload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tcp_gro_complete\22, \22a\22\09"
module asm "\09.weak\09__crc_tcp_gro_complete\09\09\09\09"
module asm "\09.long\09__crc_tcp_gro_complete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_gro_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_gro_complete\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_gro_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_offload = type { %struct.offload_callbacks, i32 }
%struct.offload_callbacks = type { ptr, ptr, ptr }
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
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.149, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.150, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.151, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.137, %union.anon.139, %union.anon.140, i16, i8, i8, i32, %union.anon.142, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.145, [0 x i32], %union.anon.146, i16, i16, %union.anon.147, %struct.refcount_struct, [0 x i32], %union.anon.148 }
%union.anon.137 = type { i64 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { i32 }
%union.anon.142 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { %struct.hlist_node }
%union.anon.147 = type { i32 }
%union.anon.148 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.149 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.150 = type { ptr }
%union.anon.151 = type { ptr }
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.anon.175 = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@tcp_gso_segment.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/ipv4/tcp_offload.c\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_tcp_gro_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_gro_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_gro_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_gro_complete to i32), ptr @__kstrtab_tcp_gro_complete, ptr @__kstrtabns_tcp_gro_complete }, section "___ksymtab+tcp_gro_complete", align 4
@tcpv4_offload = internal constant { %struct.net_offload, [16 x i8] } { %struct.net_offload { %struct.offload_callbacks { ptr @tcp4_gso_segment, ptr @tcp4_gro_receive, ptr @tcp4_gro_complete }, i32 0 }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 165, i32 4 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"tcpv4_offload\00", align 1
@___asan_gen_.5 = private constant [26 x i8] c"../net/ipv4/tcp_offload.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 338, i32 33 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_tcp_gro_complete, ptr @.str, ptr @tcpv4_offload], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpv4_offload to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tcp_gso_segment(ptr noundef %skb, i64 noundef %features) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %doff = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %doff, align 4
  %5 = lshr i16 %bf.load, 10
  %6 = and i16 %5, 60
  %mul = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %6)
  %cmp = icmp ult i16 %6, 20
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %8, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %mul)
  %cmp.not.i = icmp ult i32 %sub.i.i, %mul
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end5_crit_edge, !prof !16

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %mul)
  %cmp3.i = icmp ult i32 %8, %mul
  br i1 %cmp3.i, label %if.end.i.out_crit_edge, label %pskb_may_pull.exit, !prof !16

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %mul, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #6
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.out_crit_edge, label %pskb_may_pull.exit.if.end5_crit_edge

pskb_may_pull.exit.if.end5_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

pskb_may_pull.exit.out_crit_edge:                 ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end5:                                          ; preds = %pskb_may_pull.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i, align 4
  %conv6 = and i32 %12, 65535
  %conv7 = xor i32 %conv6, 65535
  %sub.i308 = sub i32 %12, %mul
  store i32 %sub.i308, ptr %len.i.i, align 4
  %13 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i308, i32 %14)
  %cmp.i = icmp ult i32 %sub.i308, %14
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !16

do.body4.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #6, !srcloc !17
  unreachable

__skb_pull.exit:                                  ; preds = %if.end5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %mul
  store ptr %add.ptr.i, ptr %data.i, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %gso_size, align 4
  %conv10 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i308, i32 %conv10)
  %cmp12.not = icmp ugt i32 %sub.i308, %conv10
  br i1 %cmp12.not, label %if.end16, label %__skb_pull.exit.out_crit_edge, !prof !18

__skb_pull.exit.out_crit_edge:                    ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end16:                                         ; preds = %__skb_pull.exit
  %or = or i64 %features, 131072
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %18, i32 0, i32 8
  %21 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gso_type.i, align 8
  %conv.i.i309 = sext i32 %22 to i64
  %shl.i.i = shl nsw i64 %conv.i.i309, 16
  %and.i.i = and i64 %shl.i.i, %or
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %shl.i.i)
  %cmp.i.i = icmp eq i64 %and.i.i, %shl.i.i
  br i1 %cmp.i.i, label %land.rhs.i, label %if.end16.if.end22_crit_edge

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.rhs.i:                                       ; preds = %if.end16
  %frag_list.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %18, i32 0, i32 6
  %23 = ptrtoint ptr %frag_list.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %frag_list.i.i, align 8
  %cmp.i5.not.i = icmp eq ptr %24, null
  %and.i = and i64 %features, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i = icmp ne i64 %and.i, 0
  %or.cond = or i1 %tobool.i, %cmp.i5.not.i
  br i1 %or.cond, label %if.then18, label %land.rhs.i.if.end22_crit_edge

land.rhs.i.if.end22_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then18:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %sub.i308, -1
  %sub = add i32 %add, %conv10
  %div = udiv i32 %sub, %conv10
  %conv20 = trunc i32 %div to i16
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %18, i32 0, i32 5
  %25 = ptrtoint ptr %gso_segs to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv20, ptr %gso_segs, align 2
  br label %out

if.end22:                                         ; preds = %land.rhs.i.if.end22_crit_edge, %if.end16.if.end22_crit_edge
  %destructor = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %26 = ptrtoint ptr %destructor to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %destructor, align 4
  %cmp23 = icmp eq ptr %27, @tcp_wfree
  %ooo_okay25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %28 = ptrtoint ptr %ooo_okay25 to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load26 = load i16, ptr %ooo_okay25, align 8
  %bf.clear32 = and i16 %bf.load26, -257
  store i16 %bf.clear32, ptr %ooo_okay25, align 8
  %call33 = tail call ptr @skb_segment(ptr noundef %skb, i64 noundef %features) #6
  %cmp.i311 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i311, label %if.end22.out_crit_edge, label %if.end36

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end36:                                         ; preds = %if.end22
  %ooo_okay39 = getelementptr inbounds %struct.sk_buff, ptr %call33, i32 0, i32 15
  %29 = and i16 %bf.load26, 256
  %30 = ptrtoint ptr %ooo_okay39 to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load40 = load i16, ptr %ooo_okay39, align 8
  %bf.clear41 = and i16 %bf.load40, -257
  %bf.set42 = or i16 %bf.clear41, %29
  store i16 %bf.set42, ptr %ooo_okay39, align 8
  %end.i.i312 = getelementptr inbounds %struct.sk_buff, ptr %call33, i32 0, i32 17
  %31 = ptrtoint ptr %end.i.i312 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i.i312, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.i313.not = icmp eq i16 %34, 0
  br i1 %tobool.i313.not, label %if.end36.if.end49_crit_edge, label %if.then44

if.end36.if.end49_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then44:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %gso_segs46 = getelementptr inbounds %struct.skb_shared_info, ptr %32, i32 0, i32 5
  %35 = ptrtoint ptr %gso_segs46 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %gso_segs46, align 2
  %conv47 = zext i16 %36 to i32
  %mul48 = mul nuw i32 %conv47, %conv10
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %if.end36.if.end49_crit_edge
  %mss.0 = phi i32 [ %mul48, %if.then44 ], [ %conv10, %if.end36.if.end49_crit_edge ]
  %head.i.i315 = getelementptr inbounds %struct.sk_buff, ptr %call33, i32 0, i32 18
  %37 = ptrtoint ptr %head.i.i315 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head.i.i315, align 8
  %transport_header.i.i316 = getelementptr inbounds %struct.sk_buff, ptr %call33, i32 0, i32 15, i32 0, i32 19
  %39 = ptrtoint ptr %transport_header.i.i316 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %transport_header.i.i316, align 2
  %conv.i.i317 = zext i16 %40 to i32
  %add.ptr.i.i318 = getelementptr i8, ptr %38, i32 %conv.i.i317
  %seq53 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i318, i32 0, i32 2
  %41 = ptrtoint ptr %seq53 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %seq53, align 4
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tx_flags, align 1
  %47 = and i8 %46, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool56.not = icmp eq i8 %47, 0
  br i1 %tobool56.not, label %if.end49.if.end65_crit_edge, label %if.then63, !prof !18

if.end49.if.end65_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then63:                                        ; preds = %if.end49
  %tskey = getelementptr inbounds %struct.skb_shared_info, ptr %44, i32 0, i32 9
  %48 = ptrtoint ptr %tskey to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tskey, align 4
  %tobool.not13.i = icmp eq ptr %call33, null
  br i1 %tobool.not13.i, label %if.then63.if.end65_crit_edge, label %if.then63.while.body.i_crit_edge

if.then63.while.body.i_crit_edge:                 ; preds = %if.then63
  br label %while.body.i

if.then63.if.end65_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

while.body.i:                                     ; preds = %if.end.i324.while.body.i_crit_edge, %if.then63.while.body.i_crit_edge
  %skb.addr.015.i = phi ptr [ %58, %if.end.i324.while.body.i_crit_edge ], [ %call33, %if.then63.while.body.i_crit_edge ]
  %seq.addr.014.i = phi i32 [ %add.i, %if.end.i324.while.body.i_crit_edge ], [ %42, %if.then63.while.body.i_crit_edge ]
  %add.i = add i32 %seq.addr.014.i, %mss.0
  %sub.i.i321 = sub i32 %49, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i321)
  %cmp.i.i322 = icmp slt i32 %sub.i.i321, 0
  br i1 %cmp.i.i322, label %if.then.i, label %if.end.i324

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %end.i.i323 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.015.i, i32 0, i32 17
  %50 = ptrtoint ptr %end.i.i323 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %end.i.i323, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %tx_flags.i, align 1
  %54 = or i8 %53, 2
  store i8 %54, ptr %tx_flags.i, align 1
  %55 = load ptr, ptr %end.i.i323, align 4
  %tskey.i = getelementptr inbounds %struct.skb_shared_info, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %tskey.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %49, ptr %tskey.i, align 4
  br label %if.end65

if.end.i324:                                      ; preds = %while.body.i
  %57 = ptrtoint ptr %skb.addr.015.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %skb.addr.015.i, align 8
  %tobool.not.i = icmp eq ptr %58, null
  br i1 %tobool.not.i, label %if.end.i324.if.end65_crit_edge, label %if.end.i324.while.body.i_crit_edge

if.end.i324.while.body.i_crit_edge:               ; preds = %if.end.i324
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end.i324.if.end65_crit_edge:                   ; preds = %if.end.i324
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.end65:                                         ; preds = %if.end.i324.if.end65_crit_edge, %if.then.i, %if.then63.if.end65_crit_edge, %if.end49.if.end65_crit_edge
  %check = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i318, i32 0, i32 6
  %59 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %check, align 4
  %conv66 = zext i16 %60 to i32
  %add50 = add nuw nsw i32 %conv7, %mul
  %add51 = add i32 %add50, %mss.0
  %add67 = add i32 %add51, %conv66
  %61 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add67) #9, !srcloc !19
  %neg.i = xor i32 %61, -1
  %shr.i = lshr i32 %neg.i, 16
  %conv.i = trunc i32 %shr.i to i16
  %neg70 = xor i16 %conv.i, -1
  %62 = ptrtoint ptr %call33 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call33, align 8
  %tobool72.not369 = icmp eq ptr %63, null
  br i1 %tobool72.not369, label %if.end65.while.end_crit_edge, label %while.body.lr.ph

if.end65.while.end_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end65
  %conv92 = zext i16 %neg70 to i32
  %neg93 = xor i32 %conv92, -1
  %64 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end103.while.body_crit_edge, %while.body.lr.ph
  %skb.addr.0373 = phi ptr [ %call33, %while.body.lr.ph ], [ %96, %if.end103.while.body_crit_edge ]
  %sum_truesize.0372 = phi i32 [ 0, %while.body.lr.ph ], [ %sum_truesize.1, %if.end103.while.body_crit_edge ]
  %th.0371 = phi ptr [ %add.ptr.i.i318, %while.body.lr.ph ], [ %add.ptr.i.i336, %if.end103.while.body_crit_edge ]
  %seq.0370 = phi i32 [ %42, %while.body.lr.ph ], [ %add97, %if.end103.while.body_crit_edge ]
  %psh = getelementptr inbounds %struct.tcphdr, ptr %th.0371, i32 0, i32 4
  %65 = ptrtoint ptr %psh to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load73 = load i16, ptr %psh, align 4
  %bf.clear77 = and i16 %bf.load73, -10
  store i16 %bf.clear77, ptr %psh, align 4
  %check79 = getelementptr inbounds %struct.tcphdr, ptr %th.0371, i32 0, i32 6
  %66 = ptrtoint ptr %check79 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %neg70, ptr %check79, align 4
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0373, i32 0, i32 15
  %67 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load80 = load i16, ptr %ip_summed, align 8
  %68 = and i16 %bf.load80, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %68)
  %cmp85 = icmp eq i16 %68, 1536
  br i1 %cmp85, label %if.then87, label %if.else

if.then87:                                        ; preds = %while.body
  %remcsum_offload.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0373, i32 0, i32 15, i32 0, i32 3
  %69 = ptrtoint ptr %remcsum_offload.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %bf.load.i = load i32, ptr %remcsum_offload.i, align 2
  %70 = and i32 %bf.load.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i325 = icmp eq i32 %70, 0
  br i1 %tobool.not.i325, label %if.end.i326, label %if.then87.if.end96_crit_edge

if.then87.if.end96_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

if.end.i326:                                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  %csum.i = getelementptr %struct.sk_buff, ptr %skb.addr.0373, i32 0, i32 3, i32 40
  %71 = ptrtoint ptr %csum.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %neg93, ptr %csum.i, align 4
  %72 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0373, i32 0, i32 15, i32 0, i32 5
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %72, align 8
  %csum_start.i = getelementptr %struct.sk_buff, ptr %skb.addr.0373, i32 0, i32 3, i32 44
  %75 = ptrtoint ptr %csum_start.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %csum_start.i, align 4
  br label %if.end96

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %head.i.i327 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0373, i32 0, i32 18
  %76 = ptrtoint ptr %head.i.i327 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %head.i.i327, align 8
  %transport_header.i.i328 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0373, i32 0, i32 15, i32 0, i32 19
  %78 = ptrtoint ptr %transport_header.i.i328 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %transport_header.i.i328, align 2
  %conv.i.i329 = zext i16 %79 to i32
  %add.ptr.i.i330 = getelementptr i8, ptr %77, i32 %conv.i.i329
  %csum_start1.i = getelementptr %struct.sk_buff, ptr %skb.addr.0373, i32 0, i32 3, i32 44
  %80 = ptrtoint ptr %csum_start1.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %csum_start1.i, align 4
  %conv.i331 = zext i16 %81 to i32
  %add.ptr2.i = getelementptr i8, ptr %77, i32 %conv.i331
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr2.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i.i330 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %csum.i332 = getelementptr %struct.sk_buff, ptr %skb.addr.0373, i32 0, i32 3, i32 40
  %82 = ptrtoint ptr %csum.i332 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %csum.i332, align 4
  store i32 %neg93, ptr %csum.i332, align 4
  store i16 %79, ptr %csum_start1.i, align 4
  %call19.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i330, i32 noundef %sub.ptr.sub.i, i32 noundef %83) #6
  %84 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call19.i) #9, !srcloc !19
  %neg.i.i = xor i32 %84, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i29.i = trunc i32 %shr.i.i to i16
  %85 = ptrtoint ptr %check79 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i29.i, ptr %check79, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.else, %if.end.i326, %if.then87.if.end96_crit_edge
  %add97 = add i32 %seq.0370, %mss.0
  br i1 %cmp23, label %if.then99, label %if.end96.if.end103_crit_edge

if.end96.if.end103_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %destructor to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %destructor, align 4
  %destructor101 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0373, i32 0, i32 4, i32 0, i32 1
  %88 = ptrtoint ptr %destructor101 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %destructor101, align 4
  %89 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %64, align 4
  %91 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0373, i32 0, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %90, ptr %91, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0373, i32 0, i32 20
  %93 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %truesize, align 8
  %add102 = add i32 %94, %sum_truesize.0372
  br label %if.end103

if.end103:                                        ; preds = %if.then99, %if.end96.if.end103_crit_edge
  %sum_truesize.1 = phi i32 [ %add102, %if.then99 ], [ %sum_truesize.0372, %if.end96.if.end103_crit_edge ]
  %95 = ptrtoint ptr %skb.addr.0373 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %skb.addr.0373, align 8
  %head.i.i333 = getelementptr inbounds %struct.sk_buff, ptr %96, i32 0, i32 18
  %97 = ptrtoint ptr %head.i.i333 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %head.i.i333, align 8
  %transport_header.i.i334 = getelementptr inbounds %struct.sk_buff, ptr %96, i32 0, i32 15, i32 0, i32 19
  %99 = ptrtoint ptr %transport_header.i.i334 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %transport_header.i.i334, align 2
  %conv.i.i335 = zext i16 %100 to i32
  %add.ptr.i.i336 = getelementptr i8, ptr %98, i32 %conv.i.i335
  %seq106 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i336, i32 0, i32 2
  %101 = ptrtoint ptr %seq106 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %add97, ptr %seq106, align 4
  %cwr = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i336, i32 0, i32 4
  %102 = ptrtoint ptr %cwr to i32
  call void @__asan_load2_noabort(i32 %102)
  %bf.load107 = load i16, ptr %cwr, align 4
  %bf.clear108 = and i16 %bf.load107, -129
  store i16 %bf.clear108, ptr %cwr, align 4
  %103 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %96, align 8
  %tobool72.not = icmp eq ptr %104, null
  br i1 %tobool72.not, label %if.end103.while.end_crit_edge, label %if.end103.while.body_crit_edge

if.end103.while.body_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end103.while.end_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end103.while.end_crit_edge, %if.end65.while.end_crit_edge
  %th.0.lcssa = phi ptr [ %add.ptr.i.i318, %if.end65.while.end_crit_edge ], [ %add.ptr.i.i336, %if.end103.while.end_crit_edge ]
  %sum_truesize.0.lcssa = phi i32 [ 0, %if.end65.while.end_crit_edge ], [ %sum_truesize.1, %if.end103.while.end_crit_edge ]
  %skb.addr.0.lcssa = phi ptr [ %call33, %if.end65.while.end_crit_edge ], [ %96, %if.end103.while.end_crit_edge ]
  br i1 %cmp23, label %if.then111, label %while.end.if.end188_crit_edge

while.end.if.end188_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end188

if.then111:                                       ; preds = %while.end
  %105 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %108 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.lcssa, i32 0, i32 1
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  store ptr %110, ptr %105, align 4
  store ptr %107, ptr %108, align 4
  %111 = ptrtoint ptr %destructor to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %destructor, align 4
  %destructor116 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.lcssa, i32 0, i32 4, i32 0, i32 1
  %113 = ptrtoint ptr %destructor116 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %destructor116, align 4
  store ptr %114, ptr %destructor, align 4
  store ptr %112, ptr %destructor116, align 4
  %truesize121 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.lcssa, i32 0, i32 20
  %115 = ptrtoint ptr %truesize121 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %truesize121, align 8
  %add122 = add i32 %116, %sum_truesize.0.lcssa
  %truesize123 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %117 = ptrtoint ptr %truesize123 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %truesize123, align 8
  %sub124 = sub i32 %add122, %118
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub124)
  %cmp125 = icmp sgt i32 %sub124, -1
  br i1 %cmp125, label %if.then133, label %if.else134, !prof !18

if.then133:                                       ; preds = %if.then111
  %119 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %108, align 4
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %120, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %sk_wmem_alloc, i32 1, i32 3, i32 1) #6
  %121 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc, ptr %sk_wmem_alloc, i32 %sub124, ptr elementtype(i32) %sk_wmem_alloc) #6, !srcloc !20
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %121, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then133.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !16

if.then133.if.end15.sink.split.i.i_crit_edge:     ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then133
  %add.i.i = add i32 %asmresult.i.i.i.i, %sub124
  %122 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %122)
  %.not.i.i = icmp sgt i32 %122, -1
  br i1 %.not.i.i, label %if.else.i.i.if.end188_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !18

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i

if.else.i.i.if.end188_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end188

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %if.then133.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %if.then133.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc, i32 noundef %.sink.i.i) #6
  br label %if.end188

if.else134:                                       ; preds = %if.then111
  %sub135 = sub i32 0, %sub124
  %123 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %108, align 4
  %sk_wmem_alloc136 = getelementptr inbounds %struct.sock, ptr %124, i32 0, i32 23
  %call137 = tail call fastcc zeroext i1 @refcount_sub_and_test(i32 noundef %sub135, ptr noundef %sk_wmem_alloc136)
  br i1 %call137, label %land.rhs, label %if.else134.if.end188_crit_edge

if.else134.if.end188_crit_edge:                   ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end188

land.rhs:                                         ; preds = %if.else134
  %.b307 = load i1, ptr @tcp_gso_segment.__already_done, align 1
  br i1 %.b307, label %land.rhs.if.end188_crit_edge, label %if.then154, !prof !18

land.rhs.if.end188_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end188

if.then154:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @tcp_gso_segment.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 9, ptr noundef null) #6
  br label %if.end188

if.end188:                                        ; preds = %if.then154, %land.rhs.if.end188_crit_edge, %if.else134.if.end188_crit_edge, %if.end15.sink.split.i.i, %if.else.i.i.if.end188_crit_edge, %while.end.if.end188_crit_edge
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.lcssa, i32 0, i32 16
  %125 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.lcssa, i32 0, i32 18
  %127 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.lcssa, i32 0, i32 15, i32 0, i32 19
  %129 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %transport_header.i, align 2
  %conv.i337 = zext i16 %130 to i32
  %add.ptr.i338 = getelementptr i8, ptr %128, i32 %conv.i337
  %sub.ptr.lhs.cast = ptrtoint ptr %126 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i338 to i32
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.lcssa, i32 0, i32 7
  %131 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %data_len, align 8
  %check193 = getelementptr inbounds %struct.tcphdr, ptr %th.0.lcssa, i32 0, i32 6
  %133 = ptrtoint ptr %check193 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %check193, align 4
  %conv194 = zext i16 %134 to i32
  %sub.ptr.sub = add i32 %conv7, %sub.ptr.lhs.cast
  %add191 = add i32 %sub.ptr.sub, %132
  %add192 = sub i32 %add191, %sub.ptr.rhs.cast
  %add195 = add i32 %add192, %conv194
  %135 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add195) #9, !srcloc !19
  %neg.i339 = xor i32 %135, -1
  %shr.i340 = lshr i32 %neg.i339, 16
  %conv.i341 = trunc i32 %shr.i340 to i16
  %neg198 = xor i16 %conv.i341, -1
  %136 = ptrtoint ptr %check193 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %neg198, ptr %check193, align 4
  %ip_summed201 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.lcssa, i32 0, i32 15
  %137 = ptrtoint ptr %ip_summed201 to i32
  call void @__asan_load2_noabort(i32 %137)
  %bf.load202 = load i16, ptr %ip_summed201, align 8
  %138 = and i16 %bf.load202, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %138)
  %cmp207 = icmp eq i16 %138, 1536
  br i1 %cmp207, label %if.then209, label %if.else213

if.then209:                                       ; preds = %if.end188
  %remcsum_offload.i342 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.lcssa, i32 0, i32 15, i32 0, i32 3
  %139 = ptrtoint ptr %remcsum_offload.i342 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %bf.load.i343 = load i32, ptr %remcsum_offload.i342, align 2
  %140 = and i32 %bf.load.i343, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.i344 = icmp eq i32 %140, 0
  br i1 %tobool.not.i344, label %if.end.i347, label %if.then209.out_crit_edge

if.then209.out_crit_edge:                         ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i347:                                      ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #8
  %conv211 = zext i16 %neg198 to i32
  %neg212 = xor i32 %conv211, -1
  %csum.i345 = getelementptr %struct.sk_buff, ptr %skb.addr.0.lcssa, i32 0, i32 3, i32 40
  %141 = ptrtoint ptr %csum.i345 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %neg212, ptr %csum.i345, align 4
  %142 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.lcssa, i32 0, i32 15, i32 0, i32 5
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %142, align 8
  %csum_start.i346 = getelementptr %struct.sk_buff, ptr %skb.addr.0.lcssa, i32 0, i32 3, i32 44
  %145 = ptrtoint ptr %csum_start.i346 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %csum_start.i346, align 4
  br label %out

if.else213:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  %conv215 = zext i16 %neg198 to i32
  %neg216 = xor i32 %conv215, -1
  %146 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %head.i, align 8
  %148 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %transport_header.i, align 2
  %conv.i.i351 = zext i16 %149 to i32
  %add.ptr.i.i352 = getelementptr i8, ptr %147, i32 %conv.i.i351
  %csum_start1.i353 = getelementptr %struct.sk_buff, ptr %skb.addr.0.lcssa, i32 0, i32 3, i32 44
  %150 = ptrtoint ptr %csum_start1.i353 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %csum_start1.i353, align 4
  %conv.i354 = zext i16 %151 to i32
  %add.ptr2.i355 = getelementptr i8, ptr %147, i32 %conv.i354
  %sub.ptr.lhs.cast.i356 = ptrtoint ptr %add.ptr2.i355 to i32
  %sub.ptr.rhs.cast.i357 = ptrtoint ptr %add.ptr.i.i352 to i32
  %sub.ptr.sub.i358 = sub i32 %sub.ptr.lhs.cast.i356, %sub.ptr.rhs.cast.i357
  %csum.i359 = getelementptr %struct.sk_buff, ptr %skb.addr.0.lcssa, i32 0, i32 3, i32 40
  %152 = ptrtoint ptr %csum.i359 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %csum.i359, align 4
  store i32 %neg216, ptr %csum.i359, align 4
  store i16 %149, ptr %csum_start1.i353, align 4
  %call19.i360 = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i352, i32 noundef %sub.ptr.sub.i358, i32 noundef %153) #6
  %154 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call19.i360) #9, !srcloc !19
  %neg.i.i361 = xor i32 %154, -1
  %shr.i.i362 = lshr i32 %neg.i.i361, 16
  %conv.i29.i363 = trunc i32 %shr.i.i362 to i16
  %155 = ptrtoint ptr %check193 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv.i29.i363, ptr %check193, align 4
  br label %out

out:                                              ; preds = %if.else213, %if.end.i347, %if.then209.out_crit_edge, %if.end22.out_crit_edge, %if.then18, %__skb_pull.exit.out_crit_edge, %pskb_may_pull.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %segs.0 = phi ptr [ inttoptr (i32 -22 to ptr), %entry.out_crit_edge ], [ inttoptr (i32 -22 to ptr), %__skb_pull.exit.out_crit_edge ], [ null, %if.then18 ], [ %call33, %if.end22.out_crit_edge ], [ %call33, %if.else213 ], [ inttoptr (i32 -22 to ptr), %pskb_may_pull.exit.out_crit_edge ], [ %call33, %if.then209.out_crit_edge ], [ %call33, %if.end.i347 ], [ inttoptr (i32 -22 to ptr), %if.end.i.out_crit_edge ]
  ret ptr %segs.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_wfree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_segment(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @refcount_sub_and_test(i32 noundef %i, ptr noundef %r) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 %i, ptr elementtype(i32) %r) #6, !srcloc !22
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i, %i
  br i1 %cmp.i, label %do.end.i, label %if.end5.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !23
  br label %__refcount_sub_and_test.exit

if.end5.i:                                        ; preds = %entry
  %sub.i = sub i32 %asmresult.i.i.i.i, %i
  %1 = or i32 %sub.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i = icmp sgt i32 %1, -1
  br i1 %.not.i, label %if.end5.i.__refcount_sub_and_test.exit_crit_edge, label %if.then10.i, !prof !18

if.end5.i.__refcount_sub_and_test.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__refcount_sub_and_test.exit

if.then10.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef 3) #6
  br label %__refcount_sub_and_test.exit

__refcount_sub_and_test.exit:                     ; preds = %if.then10.i, %if.end5.i.__refcount_sub_and_test.exit_crit_edge, %do.end.i
  ret i1 %cmp.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tcp_gro_receive(ptr noundef readonly %head, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data_offset.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_offset.i, align 8
  %add = add i32 %1, 20
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %frag0_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %4 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frag0_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp.i.not = icmp ult i32 %5, %add
  br i1 %cmp.i.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %entry
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.skb_gro_header_slow.exit_crit_edge, !prof !16

if.then.skb_gro_header_slow.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_gro_header_slow.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp3.i.i = icmp ult i32 %7, %add
  br i1 %cmp3.i.i, label %if.end.i.i.out_crit_edge, label %pskb_may_pull.exit.i, !prof !16

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #6
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.out_crit_edge, label %pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge

pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge: ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_gro_header_slow.exit

pskb_may_pull.exit.i.out_crit_edge:               ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

skb_gro_header_slow.exit:                         ; preds = %pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge, %if.then.skb_gro_header_slow.exit_crit_edge
  %10 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cb.i, align 8
  %11 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %frag0_len.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr.i234 = getelementptr i8, ptr %13, i32 %1
  %tobool4.not = icmp eq ptr %add.ptr.i234, null
  br i1 %tobool4.not, label %skb_gro_header_slow.exit.out_crit_edge, label %skb_gro_header_slow.exit.if.end9_crit_edge, !prof !16

skb_gro_header_slow.exit.if.end9_crit_edge:       ; preds = %skb_gro_header_slow.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

skb_gro_header_slow.exit.out_crit_edge:           ; preds = %skb_gro_header_slow.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end9:                                          ; preds = %skb_gro_header_slow.exit.if.end9_crit_edge, %entry.if.end9_crit_edge
  %th.0 = phi ptr [ %add.ptr.i234, %skb_gro_header_slow.exit.if.end9_crit_edge ], [ %add.ptr.i, %entry.if.end9_crit_edge ]
  %doff = getelementptr inbounds %struct.tcphdr, ptr %th.0, i32 0, i32 4
  %14 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %doff, align 4
  %15 = lshr i16 %bf.load, 10
  %16 = and i16 %15, 60
  %mul = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %16)
  %cmp = icmp ult i16 %16, 20
  br i1 %cmp, label %if.end9.out_crit_edge, label %if.end12

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end12:                                         ; preds = %if.end9
  %add13 = add i32 %1, %mul
  %17 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %frag0_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add13)
  %cmp.i236.not = icmp ult i32 %18, %add13
  br i1 %cmp.i236.not, label %if.then16, label %if.end12.if.end29_crit_edge

if.end12.if.end29_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then16:                                        ; preds = %if.end12
  %len.i.i.i238 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len.i.i.i238 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i.i.i238, align 4
  %data_len.i.i.i239 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %21 = ptrtoint ptr %data_len.i.i.i239 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i.i239, align 8
  %sub.i.i.i240 = sub i32 %20, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %add13, i32 %sub.i.i.i240)
  %cmp.not.i.i241 = icmp ugt i32 %add13, %sub.i.i.i240
  br i1 %cmp.not.i.i241, label %if.end.i.i243, label %if.then16.skb_gro_header_slow.exit254_crit_edge, !prof !16

if.then16.skb_gro_header_slow.exit254_crit_edge:  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_gro_header_slow.exit254

if.end.i.i243:                                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add13)
  %cmp3.i.i242 = icmp ult i32 %20, %add13
  br i1 %cmp3.i.i242, label %if.end.i.i243.out_crit_edge, label %pskb_may_pull.exit.i247, !prof !16

if.end.i.i243.out_crit_edge:                      ; preds = %if.end.i.i243
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

pskb_may_pull.exit.i247:                          ; preds = %if.end.i.i243
  %sub.i.i244 = sub i32 %add13, %sub.i.i.i240
  %call13.i.i245 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i244) #6
  %cmp14.i.not.i246 = icmp eq ptr %call13.i.i245, null
  br i1 %cmp14.i.not.i246, label %pskb_may_pull.exit.i247.out_crit_edge, label %pskb_may_pull.exit.i247.skb_gro_header_slow.exit254_crit_edge

pskb_may_pull.exit.i247.skb_gro_header_slow.exit254_crit_edge: ; preds = %pskb_may_pull.exit.i247
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_gro_header_slow.exit254

pskb_may_pull.exit.i247.out_crit_edge:            ; preds = %pskb_may_pull.exit.i247
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

skb_gro_header_slow.exit254:                      ; preds = %pskb_may_pull.exit.i247.skb_gro_header_slow.exit254_crit_edge, %if.then16.skb_gro_header_slow.exit254_crit_edge
  %23 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %cb.i, align 8
  %24 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %frag0_len.i, align 4
  %data.i250 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data.i250 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i250, align 4
  %add.ptr.i251 = getelementptr i8, ptr %26, i32 %1
  %tobool18.not = icmp eq ptr %add.ptr.i251, null
  br i1 %tobool18.not, label %skb_gro_header_slow.exit254.out_crit_edge, label %skb_gro_header_slow.exit254.if.end29_crit_edge, !prof !16

skb_gro_header_slow.exit254.if.end29_crit_edge:   ; preds = %skb_gro_header_slow.exit254
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

skb_gro_header_slow.exit254.out_crit_edge:        ; preds = %skb_gro_header_slow.exit254
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end29:                                         ; preds = %skb_gro_header_slow.exit254.if.end29_crit_edge, %if.end12.if.end29_crit_edge
  %th.1 = phi ptr [ %add.ptr.i251, %skb_gro_header_slow.exit254.if.end29_crit_edge ], [ %th.0, %if.end12.if.end29_crit_edge ]
  %27 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_offset.i, align 8
  %add.i = add i32 %28, %mul
  store i32 %add.i, ptr %data_offset.i, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %30, %add.i
  %arrayidx = getelementptr [5 x i32], ptr %th.1, i32 0, i32 3
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %33 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %33)
  %p.0274 = load ptr, ptr %head, align 4
  %cmp31.not275 = icmp eq ptr %p.0274, %head
  br i1 %cmp31.not275, label %if.end29.out_check_final.thread_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  br label %for.body

if.end29.out_check_final.thread_crit_edge:        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_check_final.thread

out_check_final.thread:                           ; preds = %for.inc.out_check_final.thread_crit_edge, %if.end29.out_check_final.thread_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %add.i)
  %cmp138266 = icmp eq i32 %30, %add.i
  %conv139267 = zext i1 %cmp138266 to i32
  %and140268 = and i32 %32, 3080192
  %or141269 = or i32 %and140268, %conv139267
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end29.for.body_crit_edge
  %p.0276 = phi ptr [ %p.0, %for.inc.for.body_crit_edge ], [ %p.0274, %if.end29.for.body_crit_edge ]
  %same_flow = getelementptr inbounds %struct.sk_buff, ptr %p.0276, i32 0, i32 3, i32 26
  %34 = ptrtoint ptr %same_flow to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load35 = load i16, ptr %same_flow, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load35)
  %tobool37.not = icmp sgt i16 %bf.load35, -1
  br i1 %tobool37.not, label %for.body.for.inc_crit_edge, label %if.end39

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end39:                                         ; preds = %for.body
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %p.0276, i32 0, i32 18
  %35 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %p.0276, i32 0, i32 15, i32 0, i32 19
  %37 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %38 to i32
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 %conv.i.i
  %39 = ptrtoint ptr %th.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %th.1, align 4
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %tobool42.not = icmp eq i32 %40, %42
  br i1 %tobool42.not, label %found, label %if.then43

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %bf.clear = and i16 %bf.load35, 32767
  %43 = ptrtoint ptr %same_flow to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %bf.clear, ptr %same_flow, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %for.body.for.inc_crit_edge
  %44 = ptrtoint ptr %p.0276 to i32
  call void @__asan_load4_noabort(i32 %44)
  %p.0 = load ptr, ptr %p.0276, align 4
  %cmp31.not = icmp eq ptr %p.0, %head
  br i1 %cmp31.not, label %for.inc.out_check_final.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.out_check_final.thread_crit_edge:         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_check_final.thread

found:                                            ; preds = %if.end39
  %conv.i.i.le = zext i16 %38 to i32
  %add.ptr.i.i.le = getelementptr i8, ptr %36, i32 %conv.i.i.le
  %flush55 = getelementptr inbounds %struct.sk_buff, ptr %p.0276, i32 0, i32 3, i32 12
  %45 = ptrtoint ptr %flush55 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %flush55, align 4
  %conv56 = zext i16 %46 to i32
  %and = and i32 %32, 8388608
  %or = or i32 %and, %conv56
  %arrayidx57 = getelementptr [5 x i32], ptr %add.ptr.i.i.le, i32 0, i32 3
  %47 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx57, align 4
  %xor58 = xor i32 %48, %32
  %and59 = and i32 %xor58, -8978433
  %or60 = or i32 %or, %and59
  %ack_seq = getelementptr inbounds %struct.tcphdr, ptr %th.1, i32 0, i32 3
  %49 = ptrtoint ptr %ack_seq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ack_seq, align 4
  %ack_seq61 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.le, i32 0, i32 3
  %51 = ptrtoint ptr %ack_seq61 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ack_seq61, align 4
  %xor62 = xor i32 %52, %50
  %or63 = or i32 %or60, %xor62
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %16)
  %cmp65277 = icmp ugt i16 %16, 20
  br i1 %cmp65277, label %found.for.body67_crit_edge, label %found.for.end74_crit_edge

found.for.end74_crit_edge:                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end74

found.for.body67_crit_edge:                       ; preds = %found
  br label %for.body67

for.body67:                                       ; preds = %for.body67.for.body67_crit_edge, %found.for.body67_crit_edge
  %i.0279 = phi i32 [ %add73, %for.body67.for.body67_crit_edge ], [ 20, %found.for.body67_crit_edge ]
  %flush.0278 = phi i32 [ %or71, %for.body67.for.body67_crit_edge ], [ %or63, %found.for.body67_crit_edge ]
  %add.ptr68 = getelementptr i8, ptr %th.1, i32 %i.0279
  %53 = ptrtoint ptr %add.ptr68 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr68, align 4
  %add.ptr69 = getelementptr i8, ptr %add.ptr.i.i.le, i32 %i.0279
  %55 = ptrtoint ptr %add.ptr69 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr69, align 4
  %xor70 = xor i32 %56, %54
  %or71 = or i32 %xor70, %flush.0278
  %add73 = add nuw nsw i32 %i.0279, 4
  %cmp65 = icmp ult i32 %add73, %mul
  br i1 %cmp65, label %for.body67.for.body67_crit_edge, label %for.body67.for.end74_crit_edge

for.body67.for.end74_crit_edge:                   ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end74

for.body67.for.body67_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body67

for.end74:                                        ; preds = %for.body67.for.end74_crit_edge, %found.for.end74_crit_edge
  %flush.0.lcssa = phi i32 [ %or63, %found.for.end74_crit_edge ], [ %or71, %for.body67.for.end74_crit_edge ]
  %flush_id = getelementptr inbounds %struct.sk_buff, ptr %p.0276, i32 0, i32 3, i32 14
  %57 = ptrtoint ptr %flush_id to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %flush_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %58)
  %cmp78.not = icmp eq i16 %58, 1
  br i1 %cmp78.not, label %lor.lhs.false, label %for.end74.if.then93_crit_edge

for.end74.if.then93_crit_edge:                    ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then93

lor.lhs.false:                                    ; preds = %for.end74
  %count = getelementptr inbounds %struct.sk_buff, ptr %p.0276, i32 0, i32 3, i32 16
  %59 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %60)
  %cmp83.not = icmp ne i16 %60, 1
  %61 = and i16 %bf.load35, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool92.not = icmp eq i16 %61, 0
  %or.cond271 = select i1 %cmp83.not, i1 true, i1 %tobool92.not
  br i1 %or.cond271, label %lor.lhs.false.if.then93_crit_edge, label %if.else

lor.lhs.false.if.then93_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then93

if.then93:                                        ; preds = %lor.lhs.false.if.then93_crit_edge, %for.end74.if.then93_crit_edge
  %conv97 = zext i16 %58 to i32
  %or98 = or i32 %flush.0.lcssa, %conv97
  br label %if.end105

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %bf.clear103 = and i16 %bf.load35, -33
  %62 = ptrtoint ptr %same_flow to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %bf.clear103, ptr %same_flow, align 2
  br label %if.end105

if.end105:                                        ; preds = %if.else, %if.then93
  %flush.1 = phi i32 [ %or98, %if.then93 ], [ %flush.0.lcssa, %if.else ]
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %p.0276, i32 0, i32 17
  %63 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %gso_size, align 4
  %conv107 = zext i16 %66 to i32
  %sub = add i32 %sub.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv107)
  %cmp108 = icmp uge i32 %sub, %conv107
  %conv109 = zext i1 %cmp108 to i32
  %or110 = or i32 %flush.1, %conv109
  %seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.le, i32 0, i32 2
  %67 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %seq, align 4
  %len.i257 = getelementptr inbounds %struct.sk_buff, ptr %p.0276, i32 0, i32 6
  %69 = ptrtoint ptr %len.i257 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len.i257, align 4
  %data_offset.i258 = getelementptr inbounds %struct.sk_buff, ptr %p.0276, i32 0, i32 3, i32 8
  %71 = ptrtoint ptr %data_offset.i258 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %data_offset.i258, align 8
  %sub.i259 = add i32 %70, %68
  %add112 = sub i32 %sub.i259, %72
  %seq113 = getelementptr inbounds %struct.tcphdr, ptr %th.1, i32 0, i32 2
  %73 = ptrtoint ptr %seq113 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %seq113, align 4
  %xor114 = xor i32 %add112, %74
  %or115 = or i32 %or110, %xor114
  %decrypted = getelementptr inbounds %struct.sk_buff, ptr %p.0276, i32 0, i32 15, i32 0, i32 3
  %75 = ptrtoint ptr %decrypted to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %bf.load116 = load i32, ptr %decrypted, align 2
  %decrypted121 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %76 = ptrtoint ptr %decrypted121 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %bf.load122 = load i32, ptr %decrypted121, align 2
  %bf.lshr117232 = xor i32 %bf.load122, %bf.load116
  %bf.cast119231 = lshr i32 %bf.lshr117232, 13
  %xor127 = and i32 %bf.cast119231, 1
  %or128 = or i32 %or115, %xor127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or128)
  %tobool129.not = icmp eq i32 %or128, 0
  br i1 %tobool129.not, label %lor.lhs.false130, label %if.end105.out_check_final_crit_edge

if.end105.out_check_final_crit_edge:              ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_check_final

lor.lhs.false130:                                 ; preds = %if.end105
  %call131 = tail call i32 @skb_gro_receive(ptr noundef %p.0276, ptr noundef %skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end134, label %lor.lhs.false130.out_check_final_crit_edge

lor.lhs.false130.out_check_final_crit_edge:       ; preds = %lor.lhs.false130
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_check_final

if.end134:                                        ; preds = %lor.lhs.false130
  call void @__sanitizer_cov_trace_pc() #8
  %and135 = and i32 %32, 589824
  %77 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx57, align 4
  %or137 = or i32 %78, %and135
  store i32 %or137, ptr %arrayidx57, align 4
  br label %out_check_final

out_check_final:                                  ; preds = %if.end134, %lor.lhs.false130.out_check_final_crit_edge, %if.end105.out_check_final_crit_edge
  %mss.0 = phi i32 [ %conv107, %if.end134 ], [ 1, %lor.lhs.false130.out_check_final_crit_edge ], [ 1, %if.end105.out_check_final_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %mss.0)
  %cmp138 = icmp ult i32 %sub.i, %mss.0
  %conv139 = zext i1 %cmp138 to i32
  %and140 = and i32 %32, 3080192
  %or141 = or i32 %and140, %conv139
  %tobool142.not = icmp eq ptr %p.0276, null
  br i1 %tobool142.not, label %out_check_final.out_crit_edge, label %land.lhs.true

out_check_final.out_crit_edge:                    ; preds = %out_check_final
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

land.lhs.true:                                    ; preds = %out_check_final
  call void @__sanitizer_cov_trace_pc() #8
  %same_flow145 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %79 = ptrtoint ptr %same_flow145 to i32
  call void @__asan_load2_noabort(i32 %79)
  %bf.load146 = load i16, ptr %same_flow145, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load146)
  %tobool149.not = icmp slt i16 %bf.load146, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or141)
  %tobool151.not = icmp eq i32 %or141, 0
  %or.cond = select i1 %tobool149.not, i1 %tobool151.not, i1 false
  %spec.select = select i1 %or.cond, i32 0, i32 %or141
  %spec.select233 = select i1 %or.cond, ptr null, ptr %p.0276
  br label %out

out:                                              ; preds = %land.lhs.true, %out_check_final.out_crit_edge, %out_check_final.thread, %skb_gro_header_slow.exit254.out_crit_edge, %pskb_may_pull.exit.i247.out_crit_edge, %if.end.i.i243.out_crit_edge, %if.end9.out_crit_edge, %skb_gro_header_slow.exit.out_crit_edge, %pskb_may_pull.exit.i.out_crit_edge, %if.end.i.i.out_crit_edge
  %flush.2 = phi i32 [ 1, %skb_gro_header_slow.exit.out_crit_edge ], [ 1, %if.end9.out_crit_edge ], [ 1, %skb_gro_header_slow.exit254.out_crit_edge ], [ %or141, %out_check_final.out_crit_edge ], [ %spec.select, %land.lhs.true ], [ %or141269, %out_check_final.thread ], [ 1, %pskb_may_pull.exit.i.out_crit_edge ], [ 1, %if.end.i.i.out_crit_edge ], [ 1, %pskb_may_pull.exit.i247.out_crit_edge ], [ 1, %if.end.i.i243.out_crit_edge ]
  %pp.0 = phi ptr [ null, %skb_gro_header_slow.exit.out_crit_edge ], [ null, %if.end9.out_crit_edge ], [ null, %skb_gro_header_slow.exit254.out_crit_edge ], [ null, %out_check_final.out_crit_edge ], [ %spec.select233, %land.lhs.true ], [ null, %out_check_final.thread ], [ null, %pskb_may_pull.exit.i.out_crit_edge ], [ null, %if.end.i.i.out_crit_edge ], [ null, %pskb_may_pull.exit.i247.out_crit_edge ], [ null, %if.end.i.i243.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flush.2)
  %cmp154 = icmp ne i32 %flush.2, 0
  %conv155 = zext i1 %cmp154 to i16
  %flush158 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %80 = ptrtoint ptr %flush158 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %flush158, align 4
  %or160 = or i16 %81, %conv155
  store i16 %or160, ptr %flush158, align 4
  ret ptr %pp.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tcp_gro_complete(ptr nocapture noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %3, ptr %4, align 8
  %csum_offset = getelementptr inbounds %struct.anon.175, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %csum_offset to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 16, ptr %csum_offset, align 2
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %7 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.set = or i16 %bf.load, 1536
  store i16 %bf.set, ptr %ip_summed, align 8
  %count = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %count, align 8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i, align 4
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %gso_segs to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %9, ptr %gso_segs, align 2
  %cwr = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %cwr to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load2 = load i16, ptr %cwr, align 4
  %14 = and i16 %bf.load2, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not = icmp eq i16 %14, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gso_type, align 8
  %or = or i32 %18, 4
  store i32 %or, ptr %gso_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load5 = load i16, ptr %ip_summed, align 8
  %20 = and i16 %bf.load5, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool8.not = icmp eq i16 %20, 0
  br i1 %tobool8.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %transport_header.i.i, align 2
  %inner_transport_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %23 = ptrtoint ptr %inner_transport_header to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %inner_transport_header, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tcpv4_offload_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet_add_offload(ptr noundef nonnull @tcpv4_offload, i8 noundef zeroext 6) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcp4_gso_segment(ptr noundef %skb, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gso_type, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 20
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end5_crit_edge, !prof !16

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %5)
  %cmp3.i = icmp ult i32 %5, 20
  br i1 %cmp3.i, label %if.end.i.return_crit_edge, label %pskb_may_pull.exit, !prof !16

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 20, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #6
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.return_crit_edge, label %pskb_may_pull.exit.if.end5_crit_edge

pskb_may_pull.exit.if.end5_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

pskb_may_pull.exit.return_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end5:                                          ; preds = %pskb_may_pull.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %8 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %ip_summed, align 8
  %9 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %9)
  %cmp.not = icmp eq i16 %9, 1536
  br i1 %cmp.not, label %if.end5.if.end15_crit_edge, label %if.then9, !prof !18

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %14 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i26 = zext i16 %15 to i32
  %add.ptr.i.i27 = getelementptr i8, ptr %11, i32 %conv.i.i26
  %check = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i27, i32 0, i32 6
  %16 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %check, align 4
  %17 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load13 = load i16, ptr %ip_summed, align 8
  %bf.set = or i16 %bf.load13, 1536
  store i16 %bf.set, ptr %ip_summed, align 8
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %saddr, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %20 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %daddr, align 4
  tail call void @__tcp_v4_send_check(ptr noundef %skb, i32 noundef %19, i32 noundef %21) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end5.if.end15_crit_edge
  %call16 = tail call ptr @tcp_gso_segment(ptr noundef %skb, i64 noundef %features)
  br label %return

return:                                           ; preds = %if.end15, %pskb_may_pull.exit.return_crit_edge, %if.end.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call16, %if.end15 ], [ inttoptr (i32 -22 to ptr), %entry.return_crit_edge ], [ inttoptr (i32 -22 to ptr), %pskb_may_pull.exit.return_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcp4_gro_receive(ptr noundef %head, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flush = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %0 = ptrtoint ptr %flush to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flush, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %2 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %3 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %3)
  %cmp.not.i = icmp eq i16 %3, 1536
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %land.lhs.true.land.lhs.true.i_crit_edge

land.lhs.true.land.lhs.true.i_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 8
  %conv.i.i = zext i16 %6 to i32
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %conv.i.i, %sub.ptr.lhs.cast.i.i.i
  %sub.i.i = add i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.rhs.cast.i.i.i
  %data_offset.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_offset.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %12)
  %cmp3.i = icmp ult i32 %sub.i.i, %12
  br i1 %cmp3.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.if.then4_crit_edge

lor.lhs.false.i.if.then4_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %land.lhs.true.land.lhs.true.i_crit_edge
  %gro_remcsum_start.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %13 = ptrtoint ptr %gro_remcsum_start.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %gro_remcsum_start.i.i, align 2
  %conv.i1.i = zext i16 %14 to i32
  %data_offset.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %data_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_offset.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv.i1.i)
  %cmp.i.i = icmp eq i32 %16, %conv.i1.i
  br i1 %cmp.i.i, label %land.lhs.true.i.if.then4_crit_edge, label %__skb_gro_checksum_validate_needed.exit

land.lhs.true.i.if.then4_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

__skb_gro_checksum_validate_needed.exit:          ; preds = %land.lhs.true.i
  %csum_cnt.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %17 = ptrtoint ptr %csum_cnt.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load7.i = load i16, ptr %csum_cnt.i, align 2
  %18 = and i16 %bf.load7.i, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp12.i = icmp eq i16 %18, 0
  br i1 %cmp12.i, label %if.then, label %__skb_gro_checksum_validate_needed.exit.if.then4_crit_edge

__skb_gro_checksum_validate_needed.exit.if.then4_crit_edge: ; preds = %__skb_gro_checksum_validate_needed.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.then:                                          ; preds = %__skb_gro_checksum_validate_needed.exit
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %19 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cb.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.then.inet_gro_compute_pseudo.exit_crit_edge

if.then.inet_gro_compute_pseudo.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %inet_gro_compute_pseudo.exit

cond.false.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i, align 4
  br label %inet_gro_compute_pseudo.exit

inet_gro_compute_pseudo.exit:                     ; preds = %cond.false.i.i, %if.then.inet_gro_compute_pseudo.exit_crit_edge
  %cond.i.i = phi ptr [ %22, %cond.false.i.i ], [ %20, %if.then.inet_gro_compute_pseudo.exit_crit_edge ]
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %25 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %26 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %24, i32 %conv.i.i.i.i
  %data.i.i.i20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i.i20, align 4
  %sub.ptr.lhs.cast.i.i.i21 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i22 = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i21, %sub.ptr.rhs.cast.i.i.i22
  %add.ptr.i.i = getelementptr i8, ptr %cond.i.i, i32 %sub.ptr.sub.i.i.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %29 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %31 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %daddr.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %33 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i.i, align 4
  %35 = ptrtoint ptr %data_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_offset.i.i.i, align 8
  %sub.i.i24 = add i32 %34, 6
  %add.i.i = sub i32 %sub.i.i24, %36
  %37 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %32, i32 %30, i32 %add.i.i) #9, !srcloc !24
  %38 = ptrtoint ptr %csum_cnt.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load.i25 = load i16, ptr %csum_cnt.i, align 2
  %39 = and i16 %bf.load.i25, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.not.i = icmp eq i16 %39, 0
  br i1 %tobool.not.i, label %inet_gro_compute_pseudo.exit.__skb_gro_checksum_validate_complete.exit_crit_edge, label %land.lhs.true.i29

inet_gro_compute_pseudo.exit.__skb_gro_checksum_validate_complete.exit_crit_edge: ; preds = %inet_gro_compute_pseudo.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %__skb_gro_checksum_validate_complete.exit

land.lhs.true.i29:                                ; preds = %inet_gro_compute_pseudo.exit
  %csum.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %40 = ptrtoint ptr %csum.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %csum.i, align 4
  %add.i.i26 = add i32 %41, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i26, i32 %41)
  %cmp.i.i27 = icmp ult i32 %add.i.i26, %41
  %conv.i.i28 = zext i1 %cmp.i.i27 to i32
  %add1.i.i = add i32 %add.i.i26, %conv.i.i28
  %42 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i) #9, !srcloc !19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %42)
  %tobool4.not.i = icmp ugt i32 %42, -65537
  br i1 %tobool4.not.i, label %land.lhs.true.i29.if.then4_crit_edge, label %land.lhs.true.i29.__skb_gro_checksum_validate_complete.exit_crit_edge

land.lhs.true.i29.__skb_gro_checksum_validate_complete.exit_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %__skb_gro_checksum_validate_complete.exit

land.lhs.true.i29.if.then4_crit_edge:             ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

__skb_gro_checksum_validate_complete.exit:        ; preds = %land.lhs.true.i29.__skb_gro_checksum_validate_complete.exit_crit_edge, %inet_gro_compute_pseudo.exit.__skb_gro_checksum_validate_complete.exit_crit_edge
  %csum7.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %43 = ptrtoint ptr %csum7.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %37, ptr %csum7.i, align 4
  %call8.i = tail call zeroext i16 @__skb_gro_checksum_complete(ptr noundef %skb) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call8.i)
  %phi.cmp = icmp eq i16 %call8.i, 0
  br i1 %phi.cmp, label %__skb_gro_checksum_validate_complete.exit.if.then4_crit_edge, label %if.then7.critedge

__skb_gro_checksum_validate_complete.exit.if.then4_crit_edge: ; preds = %__skb_gro_checksum_validate_complete.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.then4:                                         ; preds = %__skb_gro_checksum_validate_complete.exit.if.then4_crit_edge, %land.lhs.true.i29.if.then4_crit_edge, %__skb_gro_checksum_validate_needed.exit.if.then4_crit_edge, %land.lhs.true.i.if.then4_crit_edge, %lor.lhs.false.i.if.then4_crit_edge
  %csum_cnt.i30 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %44 = ptrtoint ptr %csum_cnt.i30 to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load.i31 = load i16, ptr %csum_cnt.i30, align 2
  %bf.lshr.i = lshr i16 %bf.load.i31, 10
  %45 = trunc i16 %bf.lshr.i to i8
  %bf.cast.i = and i8 %45, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.cast.i)
  %cmp.not.i32 = icmp eq i8 %bf.cast.i, 0
  br i1 %cmp.not.i32, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i = add nuw nsw i8 %45, 7
  %46 = and i8 %dec.i, 7
  %bf.value.i = zext i8 %46 to i16
  %bf.shl.i = shl nuw nsw i16 %bf.value.i, 10
  %bf.clear10.i = and i16 %bf.load.i31, -7169
  %bf.set.i = or i16 %bf.shl.i, %bf.clear10.i
  %47 = ptrtoint ptr %csum_cnt.i30 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %bf.set.i, ptr %csum_cnt.i30, align 2
  br label %if.end11

if.else.i:                                        ; preds = %if.then4
  %48 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load.i.i = load i16, ptr %ip_summed.i, align 8
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 9
  %trunc.i.i = trunc i16 %bf.lshr.i.i to i2
  %49 = zext i2 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc.i.i, label %if.else.i.if.end11_crit_edge [
    i2 1, label %if.then.i.i
    i2 0, label %if.then25.i.i
  ]

if.else.i.if.end11_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then.i.i:                                      ; preds = %if.else.i
  %csum_level.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %50 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %bf.load2.i.i = load i32, ptr %csum_level.i.i, align 2
  %51 = and i32 %bf.load2.i.i, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %51)
  %cmp7.not.i.i = icmp eq i32 %51, 805306368
  br i1 %cmp7.not.i.i, label %if.then.i.i.if.end11_crit_edge, label %if.then9.i.i

if.then.i.i.if.end11_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = add i32 %bf.load2.i.i, 268435456
  %bf.shl.i.i = and i32 %52, 805306368
  %bf.clear16.i.i = and i32 %bf.load2.i.i, -805306369
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear16.i.i
  %53 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %bf.set.i.i, ptr %csum_level.i.i, align 2
  br label %if.end11

if.then25.i.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %bf.clear28.i.i = and i16 %bf.load.i.i, -1537
  %bf.set29.i.i = or i16 %bf.clear28.i.i, 512
  %54 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %bf.set29.i.i, ptr %ip_summed.i, align 8
  %csum_level30.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %55 = ptrtoint ptr %csum_level30.i.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %bf.load31.i.i = load i32, ptr %csum_level30.i.i, align 2
  %bf.clear32.i.i = and i32 %bf.load31.i.i, -805306369
  store i32 %bf.clear32.i.i, ptr %csum_level30.i.i, align 2
  br label %if.end11

if.then7.critedge:                                ; preds = %__skb_gro_checksum_validate_complete.exit
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %flush to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1, ptr %flush, align 4
  br label %return

if.end11:                                         ; preds = %if.then25.i.i, %if.then9.i.i, %if.then.i.i.if.end11_crit_edge, %if.else.i.if.end11_crit_edge, %if.then.i, %entry.if.end11_crit_edge
  %call12 = tail call ptr @tcp_gro_receive(ptr noundef %head, ptr noundef %skb)
  br label %return

return:                                           ; preds = %if.end11, %if.then7.critedge
  %retval.0 = phi ptr [ %call12, %if.end11 ], [ null, %if.then7.critedge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp4_gro_complete(ptr nocapture noundef %skb, i32 noundef %thoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %4 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i17 = zext i16 %5 to i32
  %add.ptr.i.i18 = getelementptr i8, ptr %1, i32 %conv.i.i17
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %saddr, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %daddr, align 4
  %sub = sub i32 6, %thoff
  %add.i.i.i = add i32 %sub, %7
  %12 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %11, i32 %9, i32 %add.i.i.i) #9, !srcloc !24
  %13 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %12) #9, !srcloc !19
  %neg.i.i.i = xor i32 %13, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %neg = xor i16 %conv.i.i.i, -1
  %check = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i18, i32 0, i32 6
  %14 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %neg, ptr %check, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gso_type, align 8
  %or = or i32 %18, 1
  store i32 %or, ptr %gso_type, align 8
  %is_atomic = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %19 = ptrtoint ptr %is_atomic to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load = load i16, ptr %is_atomic, align 2
  %20 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not = icmp eq i16 %20, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i, align 4
  %gso_type6 = getelementptr inbounds %struct.skb_shared_info, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %gso_type6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gso_type6, align 8
  %or7 = or i32 %24, 8
  store i32 %or7, ptr %gso_type6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %25 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i, align 8
  %27 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i.i20 = zext i16 %28 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 %conv.i.i.i20
  %29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %28, ptr %29, align 8
  %csum_offset.i = getelementptr inbounds %struct.anon.175, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 16, ptr %csum_offset.i, align 2
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %32 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.set.i = or i16 %bf.load.i, 1536
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  %count.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %33 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %count.i, align 8
  %35 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end.i, align 4
  %gso_segs.i = getelementptr inbounds %struct.skb_shared_info, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %34, ptr %gso_segs.i, align 2
  %cwr.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %cwr.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load2.i = load i16, ptr %cwr.i, align 4
  %39 = and i16 %bf.load2.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.not.i = icmp eq i16 %39, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %end.i, align 4
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %gso_type.i, align 8
  %or.i = or i32 %43, 4
  store i32 %or.i, ptr %gso_type.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %44 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load5.i = load i16, ptr %ip_summed.i, align 8
  %45 = and i16 %bf.load5.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool8.not.i = icmp eq i16 %45, 0
  br i1 %tobool8.not.i, label %if.end.i.tcp_gro_complete.exit_crit_edge, label %if.then9.i

if.end.i.tcp_gro_complete.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tcp_gro_complete.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %transport_header.i.i, align 2
  %inner_transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %48 = ptrtoint ptr %inner_transport_header.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %inner_transport_header.i, align 2
  br label %tcp_gro_complete.exit

tcp_gro_complete.exit:                            ; preds = %if.then9.i, %if.end.i.tcp_gro_complete.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tcp_v4_send_check(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_gro_checksum_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_offload.c", i32 165, i32 4}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_tcp_gro_complete, !4, !"__ksymtab_tcp_gro_complete", i1 false, i1 false}
!4 = !{!"../net/ipv4/tcp_offload.c", i32 307, i32 1}
!5 = !{ptr @tcpv4_offload, !6, !"tcpv4_offload", i1 false, i1 false}
!6 = !{!"../net/ipv4/tcp_offload.c", i32 338, i32 33}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2154573961, i64 2154574449, i64 2154573998, i64 2154574054, i64 2154574088, i64 2154574112, i64 2154574153, i64 2154574174, i64 2154574202, i64 2154574236}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 6459073}
!20 = !{i64 2148359692, i64 2148359724, i64 2148359753, i64 2148359787, i64 2148359818, i64 2148359841}
!21 = !{i64 2148447693}
!22 = !{i64 2148362157, i64 2148362189, i64 2148362218, i64 2148362252, i64 2148362283, i64 2148362306}
!23 = !{i64 2150529346}
!24 = !{i64 6460175, i64 6460216, i64 6460261}
