; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_nat_helper.c_pt.bc'
source_filename = "../net/netfilter/nf_nat_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__nf_nat_mangle_tcp_packet\22, \22a\22\09"
module asm "\09.weak\09__crc___nf_nat_mangle_tcp_packet\09\09\09\09"
module asm "\09.long\09__crc___nf_nat_mangle_tcp_packet\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___nf_nat_mangle_tcp_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22__nf_nat_mangle_tcp_packet\22\09\09\09\09\09"
module asm "__kstrtabns___nf_nat_mangle_tcp_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nf_nat_mangle_udp_packet\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_mangle_udp_packet\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_mangle_udp_packet\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_mangle_udp_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_mangle_udp_packet\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_mangle_udp_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nf_nat_follow_master\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_follow_master\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_follow_master\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_follow_master:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_follow_master\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_follow_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.193, %union.anon.194, [48 x i8], %union.anon.195, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.197, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.193 = type { ptr }
%union.anon.194 = type { i64 }
%union.anon.195 = type { %struct.anon.196 }
%struct.anon.196 = type { i32, ptr }
%union.anon.197 = type { %struct.anon.198 }
%struct.anon.198 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.199, i32, i32, i32, i16, i16, %union.anon.201, i32, %union.anon.202, %union.anon.203, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.199 = type { i32 }
%union.anon.201 = type { i32 }
%union.anon.202 = type { i32 }
%union.anon.203 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.210, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
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
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.113 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.113 = type { %union.nf_inet_addr, %union.anon.114, i8, i8 }
%union.anon.114 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.210 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.nf_nat_range2 = type { i32, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto }
%struct.nf_conntrack_expect = type { %struct.hlist_node, %struct.hlist_node, %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple_mask, ptr, ptr, ptr, %struct.timer_list, %struct.refcount_struct, i32, i32, %union.nf_inet_addr, %union.nf_conntrack_man_proto, i32, %struct.callback_head }
%struct.nf_conntrack_tuple_mask = type { %struct.anon.121 }
%struct.anon.121 = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }

@__kstrtab___nf_nat_mangle_tcp_packet = external dso_local constant [0 x i8], align 1
@__kstrtabns___nf_nat_mangle_tcp_packet = external dso_local constant [0 x i8], align 1
@__ksymtab___nf_nat_mangle_tcp_packet = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__nf_nat_mangle_tcp_packet to i32), ptr @__kstrtab___nf_nat_mangle_tcp_packet, ptr @__kstrtabns___nf_nat_mangle_tcp_packet }, section "___ksymtab+__nf_nat_mangle_tcp_packet", align 4
@__kstrtab_nf_nat_mangle_udp_packet = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_mangle_udp_packet = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_mangle_udp_packet = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_mangle_udp_packet to i32), ptr @__kstrtab_nf_nat_mangle_udp_packet, ptr @__kstrtabns_nf_nat_mangle_udp_packet }, section "___ksymtab+nf_nat_mangle_udp_packet", align 4
@__kstrtab_nf_nat_follow_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_follow_master = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_follow_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_follow_master to i32), ptr @__kstrtab_nf_nat_follow_master, ptr @__kstrtabns_nf_nat_follow_master }, section "___ksymtab+nf_nat_follow_master", align 4
@mangle_contents.__UNIQUE_ID_ddebug694 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nf_nat\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mangle_contents\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"net/netfilter/nf_nat_helper.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"nf_nat_mangle_packet: Extending packet by %u from %u bytes\0A\00", [36 x i8] zeroinitializer }, align 32
@mangle_contents.__UNIQUE_ID_ddebug695 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"nf_nat_mangle_packet: Shrinking packet from %u from %u bytes\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 48, i32 3 }
@___asan_gen_.19 = private constant [33 x i8] c"../net/netfilter/nf_nat_helper.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 52, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 2789, i32 6 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab___nf_nat_mangle_tcp_packet, ptr @__ksymtab_nf_nat_follow_master, ptr @__ksymtab_nf_nat_mangle_udp_packet, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__nf_nat_mangle_tcp_packet(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %protoff, i32 noundef %match_offset, i32 noundef %match_len, ptr nocapture noundef readonly %rep_buffer, i32 noundef %rep_len, i1 noundef zeroext %adjust) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %call = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %rep_len, i32 %match_len)
  %cmp = icmp ugt i32 %rep_len, %match_len
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %sub = sub i32 %rep_len, %match_len
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %land.lhs.true.skb_tailroom.exit_crit_edge

land.lhs.true.skb_tailroom.exit_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %land.lhs.true.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %land.lhs.true.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %cond.i)
  %cmp2 = icmp ugt i32 %sub, %cond.i
  br i1 %cmp2, label %land.lhs.true3, label %skb_tailroom.exit.if.end7_crit_edge

skb_tailroom.exit.if.end7_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

land.lhs.true3:                                   ; preds = %skb_tailroom.exit
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %add.i = add i32 %9, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 65535
  br i1 %cmp.i, label %land.lhs.true3.cleanup_crit_edge, label %if.end.i

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true3
  br i1 %tobool.i.not.i, label %cond.false.i.i, label %if.end.i.enlarge_skb.exit_crit_edge

if.end.i.enlarge_skb.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %enlarge_skb.exit

cond.false.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %10 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %sub.ptr.rhs.cast.i.i, %sub.ptr.lhs.cast.i.i
  br label %enlarge_skb.exit

enlarge_skb.exit:                                 ; preds = %cond.false.i.i, %if.end.i.enlarge_skb.exit_crit_edge
  %cond.i.neg.i = phi i32 [ %sub.ptr.sub.i.neg.i, %cond.false.i.i ], [ 0, %if.end.i.enlarge_skb.exit_crit_edge ]
  %sub.i = add i32 %cond.i.neg.i, %sub
  %call1.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef %sub.i, i32 noundef 2592) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %enlarge_skb.exit.if.end7_crit_edge, label %enlarge_skb.exit.cleanup_crit_edge

enlarge_skb.exit.cleanup_crit_edge:               ; preds = %enlarge_skb.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

enlarge_skb.exit.if.end7_crit_edge:               ; preds = %enlarge_skb.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.end7:                                          ; preds = %enlarge_skb.exit.if.end7_crit_edge, %skb_tailroom.exit.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %protoff
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %sub9 = sub i32 %17, %protoff
  %doff = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 4
  %18 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %doff, align 4
  %19 = lshr i16 %bf.load, 10
  %20 = and i16 %19, 60
  %mul = zext i16 %20 to i32
  %add = add i32 %mul, %protoff
  tail call fastcc void @mangle_contents(ptr noundef %skb, i32 noundef %add, i32 noundef %match_offset, i32 noundef %match_len, ptr noundef %rep_buffer, i32 noundef %rep_len)
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %sub11 = sub i32 %22, %protoff
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %l3num.i, align 2
  %conv13 = trunc i16 %24 to i8
  %check = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 6
  tail call void @nf_nat_csum_recalc(ptr noundef %skb, i8 noundef zeroext %conv13, i8 noundef zeroext 6, ptr noundef %add.ptr, ptr noundef %check, i32 noundef %sub11, i32 noundef %sub9) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %rep_len, i32 %match_len)
  %cmp17.not = icmp ne i32 %rep_len, %match_len
  %25 = and i1 %cmp17.not, %adjust
  br i1 %25, label %if.then19, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then19:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 2
  %26 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %seq, align 4
  %sub20 = sub i32 %rep_len, %match_len
  %call21 = tail call i32 @nf_ct_seqadj_set(ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %27, i32 noundef %sub20) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end7.cleanup_crit_edge, %enlarge_skb.exit.cleanup_crit_edge, %land.lhs.true3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %enlarge_skb.exit.cleanup_crit_edge ], [ true, %if.then19 ], [ true, %if.end7.cleanup_crit_edge ], [ false, %land.lhs.true3.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mangle_contents(ptr noundef %skb, i32 noundef %dataoff, i32 noundef %match_offset, i32 noundef %match_len, ptr nocapture noundef readonly %rep_buffer, i32 noundef %rep_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not = icmp eq i32 %1, 0
  br i1 %tobool.i.not, label %do.end7, label %do.body2, !prof !26

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netfilter/nf_nat_helper.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 34, 0\0A.popsection", ""() #3, !srcloc !27
  unreachable

do.end7:                                          ; preds = %entry
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %dataoff
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i32 %match_offset
  %add.ptr10 = getelementptr i8, ptr %add.ptr9, i32 %rep_len
  %add.ptr12 = getelementptr i8, ptr %add.ptr9, i32 %match_len
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr12 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %8 = call ptr @memmove(ptr %add.ptr10, ptr %add.ptr12, i32 %sub.ptr.sub)
  %9 = call ptr @memcpy(ptr %add.ptr9, ptr %rep_buffer, i32 %rep_len)
  call void @__sanitizer_cov_trace_cmp4(i32 %rep_len, i32 %match_len)
  %cmp = icmp ugt i32 %rep_len, %match_len
  br i1 %cmp, label %do.body20, label %do.body35

do.body20:                                        ; preds = %do.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mangle_contents.__UNIQUE_ID_ddebug694, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mangle_contents, %if.then29)) #3
          to label %do.end32 [label %if.then29], !srcloc !28

if.then29:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #5
  %sub = sub i32 %rep_len, %match_len
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mangle_contents.__UNIQUE_ID_ddebug694, ptr noundef nonnull @.str.3, i32 noundef %sub, i32 noundef %11) #3
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body20
  %sub33 = sub i32 %rep_len, %match_len
  %call34 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %sub33) #3
  br label %if.end55

do.body35:                                        ; preds = %do.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mangle_contents.__UNIQUE_ID_ddebug695, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mangle_contents, %if.then47)) #3
          to label %do.end52 [label %if.then47], !srcloc !28

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #5
  %sub48 = sub i32 %match_len, %rep_len
  %len49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len49 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len49, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mangle_contents.__UNIQUE_ID_ddebug695, ptr noundef nonnull @.str.4, i32 noundef %sub48, i32 noundef %13) #3
  br label %do.end52

do.end52:                                         ; preds = %if.then47, %do.body35
  %14 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i.i, label %if.end21.critedge.i.i, label %do.end.i.i, !prof !26

do.end.i.i:                                       ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2789, i32 noundef 9, ptr noundef null) #3
  br label %if.end55

if.end21.critedge.i.i:                            ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #5
  %len53 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len53 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len53, align 4
  %add = sub i32 %rep_len, %match_len
  %sub54 = add i32 %add, %17
  store i32 %sub54, ptr %len53, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 %sub54
  %20 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i.i.i, ptr %tail.i, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.end21.critedge.i.i, %do.end.i.i, %do.end32
  %_nfct.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %21 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %_nfct.i, align 8
  %and.i = and i32 %22, -8
  %23 = inttoptr i32 %and.i to ptr
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %23, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %l3num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %25)
  %cmp58 = icmp eq i16 %25, 2
  %len61 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %26 = ptrtoint ptr %len61 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len61, align 4
  %conv62 = trunc i32 %27 to i16
  br i1 %cmp58, label %if.then60, label %if.else65

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i, align 8
  %30 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %31 to i32
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %conv.i.i
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv62, ptr %tot_len, align 2
  %33 = load ptr, ptr %head.i, align 8
  %34 = load i16, ptr %network_header.i, align 4
  %conv.i.i112 = zext i16 %34 to i32
  %add.ptr.i.i113 = getelementptr i8, ptr %33, i32 %conv.i.i112
  tail call void @ip_send_check(ptr noundef %add.ptr.i.i113) #3
  br label %if.end70

if.else65:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #5
  %conv68 = add i16 %conv62, -40
  %35 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i, align 8
  %37 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %network_header.i, align 4
  %conv.i.i116 = zext i16 %38 to i32
  %add.ptr.i.i117 = getelementptr i8, ptr %36, i32 %conv.i.i116
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i117, i32 0, i32 2
  %39 = ptrtoint ptr %payload_len to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv68, ptr %payload_len, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.else65, %if.then60
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_csum_recalc(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_seqadj_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nf_nat_mangle_udp_packet(ptr noundef %skb, ptr nocapture noundef readonly %ct, i32 %ctinfo, i32 noundef %protoff, i32 noundef %match_offset, i32 noundef %match_len, ptr nocapture noundef readonly %rep_buffer, i32 noundef %rep_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %call = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %rep_len, i32 %match_len)
  %cmp = icmp ugt i32 %rep_len, %match_len
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %sub = sub i32 %rep_len, %match_len
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %land.lhs.true.skb_tailroom.exit_crit_edge

land.lhs.true.skb_tailroom.exit_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %land.lhs.true.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %land.lhs.true.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %cond.i)
  %cmp2 = icmp ugt i32 %sub, %cond.i
  br i1 %cmp2, label %land.lhs.true3, label %skb_tailroom.exit.if.end7_crit_edge

skb_tailroom.exit.if.end7_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

land.lhs.true3:                                   ; preds = %skb_tailroom.exit
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %add.i = add i32 %9, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 65535
  br i1 %cmp.i, label %land.lhs.true3.cleanup_crit_edge, label %if.end.i

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true3
  br i1 %tobool.i.not.i, label %cond.false.i.i, label %if.end.i.enlarge_skb.exit_crit_edge

if.end.i.enlarge_skb.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %enlarge_skb.exit

cond.false.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %10 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %sub.ptr.rhs.cast.i.i, %sub.ptr.lhs.cast.i.i
  br label %enlarge_skb.exit

enlarge_skb.exit:                                 ; preds = %cond.false.i.i, %if.end.i.enlarge_skb.exit_crit_edge
  %cond.i.neg.i = phi i32 [ %sub.ptr.sub.i.neg.i, %cond.false.i.i ], [ 0, %if.end.i.enlarge_skb.exit_crit_edge ]
  %sub.i = add i32 %cond.i.neg.i, %sub
  %call1.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef %sub.i, i32 noundef 2592) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %enlarge_skb.exit.if.end7_crit_edge, label %enlarge_skb.exit.cleanup_crit_edge

enlarge_skb.exit.cleanup_crit_edge:               ; preds = %enlarge_skb.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

enlarge_skb.exit.if.end7_crit_edge:               ; preds = %enlarge_skb.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.end7:                                          ; preds = %enlarge_skb.exit.if.end7_crit_edge, %skb_tailroom.exit.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %protoff
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %sub9 = sub i32 %17, %protoff
  %add = add i32 %protoff, 8
  tail call fastcc void @mangle_contents(ptr noundef %skb, i32 noundef %add, i32 noundef %match_offset, i32 noundef %match_len, ptr noundef %rep_buffer, i32 noundef %rep_len)
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %sub11 = sub i32 %19, %protoff
  %conv = trunc i32 %sub11 to i16
  %len12 = getelementptr inbounds %struct.udphdr, ptr %add.ptr, i32 0, i32 2
  %20 = ptrtoint ptr %len12 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %len12, align 2
  %check = getelementptr inbounds %struct.udphdr, ptr %add.ptr, i32 0, i32 3
  %21 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool13.not = icmp eq i16 %22, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %if.end7.if.end19_crit_edge

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

land.lhs.true14:                                  ; preds = %if.end7
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %23 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load = load i16, ptr %ip_summed, align 8
  %24 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %24)
  %cmp16.not = icmp eq i16 %24, 1536
  br i1 %cmp16.not, label %land.lhs.true14.if.end19_crit_edge, label %land.lhs.true14.cleanup_crit_edge

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true14.if.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true14.if.end19_crit_edge, %if.end7.if.end19_crit_edge
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %l3num.i, align 2
  %conv21 = trunc i16 %26 to i8
  tail call void @nf_nat_csum_recalc(ptr noundef %skb, i8 noundef zeroext %conv21, i8 noundef zeroext 17, ptr noundef %add.ptr, ptr noundef %check, i32 noundef %sub11, i32 noundef %sub9) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %land.lhs.true14.cleanup_crit_edge, %enlarge_skb.exit.cleanup_crit_edge, %land.lhs.true3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end19 ], [ false, %entry.cleanup_crit_edge ], [ false, %enlarge_skb.exit.cleanup_crit_edge ], [ true, %land.lhs.true14.cleanup_crit_edge ], [ false, %land.lhs.true3.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_nat_follow_master(ptr noundef %ct, ptr nocapture noundef readonly %exp) #0 align 64 {
entry:
  %range = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range) #3
  %0 = getelementptr inbounds i8, ptr %range, i32 36
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4, !annotation !29
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 8
  %and = and i32 %3, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !26

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netfilter/nf_nat_helper.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 185, 0\0A.popsection", ""() #3, !srcloc !30
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %range, align 4
  %min_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %max_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2
  %master = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 10
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 4
  %dir = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 13
  %7 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  %lnot.ext11 = zext i1 %tobool9.not to i32
  %dst = getelementptr %struct.nf_conn, ptr %6, i32 0, i32 4, i32 %lnot.ext11, i32 1, i32 1
  %9 = call ptr @memcpy(ptr %max_addr, ptr %dst, i32 16)
  %10 = call ptr @memmove(ptr %min_addr, ptr %dst, i32 16)
  %call = call i32 @nf_nat_setup_info(ptr noundef %ct, ptr noundef nonnull %range, i32 noundef 0) #3
  %11 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %range, align 4
  %min_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %max_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %saved_proto = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 12
  %12 = ptrtoint ptr %saved_proto to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %saved_proto, align 4
  %14 = ptrtoint ptr %max_proto to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %max_proto, align 2
  %15 = ptrtoint ptr %min_proto to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %13, ptr %min_proto, align 4
  %16 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master, align 4
  %18 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool18.not = icmp eq i32 %19, 0
  %lnot.ext20 = zext i1 %tobool18.not to i32
  %tuple22 = getelementptr %struct.nf_conn, ptr %17, i32 0, i32 4, i32 %lnot.ext20, i32 1
  %20 = call ptr @memcpy(ptr %max_addr, ptr %tuple22, i32 16)
  %21 = call ptr @memmove(ptr %min_addr, ptr %tuple22, i32 16)
  %call24 = call i32 @nf_nat_setup_info(ptr noundef %ct, ptr noundef nonnull %range, i32 noundef 1) #3
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_setup_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__ksymtab___nf_nat_mangle_tcp_packet, !1, !"__ksymtab___nf_nat_mangle_tcp_packet", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_nat_helper.c", i32 123, i32 1}
!2 = !{ptr @__ksymtab_nf_nat_mangle_udp_packet, !3, !"__ksymtab_nf_nat_mangle_udp_packet", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_nat_helper.c", i32 175, i32 1}
!4 = !{ptr @__ksymtab_nf_nat_follow_master, !5, !"__ksymtab_nf_nat_follow_master", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_nat_helper.c", i32 200, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/netfilter/nf_nat_helper.c", i32 48, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mangle_contents.__UNIQUE_ID_ddebug694, !7, !"__UNIQUE_ID_ddebug694", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/netfilter/nf_nat_helper.c", i32 52, i32 3}
!14 = !{ptr @mangle_contents.__UNIQUE_ID_ddebug695, !13, !"__UNIQUE_ID_ddebug695", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
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
!27 = !{i64 2159056207, i64 2159056700, i64 2159056244, i64 2159056300, i64 2159056334, i64 2159056358, i64 2159056399, i64 2159056420, i64 2159056448, i64 2159056482}
!28 = !{i64 2148957361, i64 2148957366, i64 2148957379, i64 2148957423, i64 2148957457, i64 2148957478}
!29 = !{!"auto-init"}
!30 = !{i64 2159071204, i64 2159071698, i64 2159071241, i64 2159071297, i64 2159071331, i64 2159071355, i64 2159071396, i64 2159071417, i64 2159071445, i64 2159071479}
