; ModuleID = '/llk/IR_all_yes/net/ipv4/netfilter/nf_socket_ipv4.c_pt.bc'
source_filename = "../net/ipv4/netfilter/nf_socket_ipv4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_sk_lookup_slow_v4\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_sk_lookup_slow_v4\09\09\09\09"
module asm "\09.long\09__crc_nf_sk_lookup_slow_v4\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_sk_lookup_slow_v4:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_sk_lookup_slow_v4\22\09\09\09\09\09"
module asm "__kstrtabns_nf_sk_lookup_slow_v4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [92 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.37 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.37 = type { %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.icmphdr = type { i8, i8, i16, %union.anon.214 }
%union.anon.214 = type { i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, i32, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.213, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.205 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.205 = type { %union.nf_inet_addr, %union.anon.206, i8, i8 }
%union.anon.206 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.213 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.175, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.193, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.175 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.193 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.165, [0 x i32], %union.anon.166, i16, i16, %union.anon.167, %struct.refcount_struct, [0 x i32], %union.anon.168 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.165 = type { i32 }
%union.anon.166 = type { %struct.hlist_node }
%union.anon.167 = type { i32 }
%union.anon.168 = type { i32 }

@__kstrtab_nf_sk_lookup_slow_v4 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_sk_lookup_slow_v4 = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_sk_lookup_slow_v4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_sk_lookup_slow_v4 to i32), ptr @__kstrtab_nf_sk_lookup_slow_v4, ptr @__kstrtabns_nf_sk_lookup_slow_v4 }, section "___ksymtab_gpl+nf_sk_lookup_slow_v4", align 4
@__UNIQUE_ID_file689 = internal constant [54 x i8] c"nf_socket_ipv4.file=net/ipv4/netfilter/nf_socket_ipv4\00", section ".modinfo", align 1
@__UNIQUE_ID_license690 = internal constant [27 x i8] c"nf_socket_ipv4.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author691 = internal constant [57 x i8] c"nf_socket_ipv4.author=Krisztian Kovacs, Balazs Scheidler\00", section ".modinfo", align 1
@__UNIQUE_ID_description692 = internal constant [71 x i8] c"nf_socket_ipv4.description=Netfilter IPv4 socket lookup infrastructure\00", section ".modinfo", align 1
@tcp_hashinfo = external dso_local global %struct.inet_hashinfo, align 128
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 6, i64 17]
@__sancov_gen_cov_switch_values.1 = internal global [7 x i64] [i64 5, i64 8, i64 3, i64 4, i64 5, i64 11, i64 12]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author691, ptr @__UNIQUE_ID_description692, ptr @__UNIQUE_ID_file689, ptr @__UNIQUE_ID_license690, ptr @__ksymtab_nf_sk_lookup_slow_v4], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nf_sk_lookup_slow_v4(ptr noundef %net, ptr noundef %skb, ptr nocapture noundef readonly %indev) #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  %_inside_iph.i = alloca %struct.iphdr, align 4
  %_icmph.i = alloca %struct.icmphdr, align 8
  %_ports.i = alloca [2 x i16], align 2
  %_hdr = alloca %struct.tcphdr, align 4
  call void @__sanitizer_cov_trace_pc() #6
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
  %protocol1 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %protocol1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protocol1, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %entry.cleanup83_crit_edge [
    i8 17, label %entry.if.then_crit_edge
    i8 6, label %entry.if.then_crit_edge173
    i8 1, label %if.then33
  ]

entry.if.then_crit_edge173:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.cleanup83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup83

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge173
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_hdr) #4
  %7 = call ptr @memset(ptr %_hdr, i32 255, i32 20)
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %9 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %protocol1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %protocol1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %11)
  %cmp10 = icmp eq i8 %11, 17
  %cond = select i1 %cmp10, i32 8, i32 20
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i, align 8
  %16 = add i32 %15, %mul.i
  %sub.i4.i = sub i32 %13, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4.i, i32 %cond)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, %cond
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !18

if.end.i.i:                                       ; preds = %if.then
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup.thread_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %mul.i, ptr noundef nonnull %_hdr, i32 noundef %cond) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup.thread_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

lor.lhs.false.i.i.cleanup.thread_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

skb_header_pointer.exit:                          ; preds = %if.then
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i119 = getelementptr i8, ptr %18, i32 %mul.i
  %cmp13 = icmp eq ptr %add.ptr.i.i119, null
  br i1 %cmp13, label %skb_header_pointer.exit.cleanup.thread_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

skb_header_pointer.exit.cleanup.thread_crit_edge: ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i149 = phi ptr [ %add.ptr.i.i119, %skb_header_pointer.exit.if.end_crit_edge ], [ %_hdr, %lor.lhs.false.i.i.if.end_crit_edge ]
  %19 = ptrtoint ptr %protocol1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %protocol1, align 1
  %saddr17 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %21 = ptrtoint ptr %saddr17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %saddr17, align 4
  %23 = ptrtoint ptr %retval.0.i.i149 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %retval.0.i.i149, align 2
  %daddr18 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %25 = ptrtoint ptr %daddr18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %daddr18, align 4
  %dest = getelementptr inbounds %struct.udphdr, ptr %retval.0.i.i149, i32 0, i32 1
  %27 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %dest, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %20)
  %cmp21 = icmp eq i8 %20, 6
  %29 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i, align 8
  %31 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i122 = zext i16 %32 to i32
  %add.ptr.i.i.i123 = getelementptr i8, ptr %30, i32 %conv.i.i.i122
  %33 = ptrtoint ptr %add.ptr.i.i.i123 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i124 = load i8, ptr %add.ptr.i.i.i123, align 4
  %bf.clear.i125 = shl i8 %bf.load.i124, 2
  %34 = and i8 %bf.clear.i125, 60
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i126 = zext i8 %34 to i32
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i149, i32 0, i32 4
  %35 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load.i127 = load i16, ptr %doff.i, align 4
  %36 = lshr i16 %bf.load.i127, 10
  %37 = and i16 %36, 60
  %mul.i128 = zext i16 %37 to i32
  %add = add nuw nsw i32 %mul.i128, %mul.i126
  br label %cleanup

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %narrow = add nuw nsw i8 %34, 8
  %add26 = zext i8 %narrow to i32
  br label %cleanup

cleanup.thread:                                   ; preds = %skb_header_pointer.exit.cleanup.thread_crit_edge, %lor.lhs.false.i.i.cleanup.thread_crit_edge, %if.end.i.i.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_hdr) #4
  br label %cleanup83

cleanup:                                          ; preds = %cond.false, %cond.true
  %doff.0 = phi i32 [ %add, %cond.true ], [ %add26, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_hdr) #4
  br label %if.end39

if.then33:                                        ; preds = %entry
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i.i = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %39 = and i8 %bf.clear.i.i, 60
  %mul.i.i = zext i8 %39 to i32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_inside_iph.i) #4
  %40 = call ptr @memset(ptr %_inside_iph.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_icmph.i) #4
  %41 = ptrtoint ptr %_icmph.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 -1, ptr %_icmph.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_ports.i) #4
  %42 = ptrtoint ptr %_ports.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -1, ptr %_ports.i, align 2, !annotation !19
  %43 = getelementptr inbounds [2 x i16], ptr %_ports.i, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -1, ptr %43, align 2, !annotation !19
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %45 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %47 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_len.i.i.i, align 8
  %49 = add i32 %48, %mul.i.i
  %sub.i4.i.i = sub i32 %46, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i.i)
  %cmp.not.i.i.i = icmp slt i32 %sub.i4.i.i, 8
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %skb_header_pointer.exit.i, !prof !18

if.end.i.i.i:                                     ; preds = %if.then33
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.extract_icmp4_fields.exit.thread_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.extract_icmp4_fields.exit.thread_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %extract_icmp4_fields.exit.thread

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %mul.i.i, ptr noundef nonnull %_icmph.i, i32 noundef 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.extract_icmp4_fields.exit.thread_crit_edge, label %lor.lhs.false.i.i.i.if.end.i_crit_edge

lor.lhs.false.i.i.i.if.end.i_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

lor.lhs.false.i.i.i.extract_icmp4_fields.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %extract_icmp4_fields.exit.thread

skb_header_pointer.exit.i:                        ; preds = %if.then33
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i136 = getelementptr i8, ptr %51, i32 %mul.i.i
  %cmp.i = icmp eq ptr %add.ptr.i.i.i136, null
  br i1 %cmp.i, label %skb_header_pointer.exit.i.extract_icmp4_fields.exit.thread_crit_edge, label %skb_header_pointer.exit.i.if.end.i_crit_edge

skb_header_pointer.exit.i.if.end.i_crit_edge:     ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

skb_header_pointer.exit.i.extract_icmp4_fields.exit.thread_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %extract_icmp4_fields.exit.thread

if.end.i:                                         ; preds = %skb_header_pointer.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.i.i.if.end.i_crit_edge
  %retval.0.i.i85.i = phi ptr [ %add.ptr.i.i.i136, %skb_header_pointer.exit.i.if.end.i_crit_edge ], [ %_icmph.i, %lor.lhs.false.i.i.i.if.end.i_crit_edge ]
  %52 = ptrtoint ptr %retval.0.i.i85.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %retval.0.i.i85.i, align 4
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %53, label %if.end.i.extract_icmp4_fields.exit.thread_crit_edge [
    i8 3, label %if.end.i.if.end4.i_crit_edge
    i8 4, label %if.end.i.if.end4.i_crit_edge174
    i8 5, label %if.end.i.if.end4.i_crit_edge175
    i8 11, label %if.end.i.if.end4.i_crit_edge176
    i8 12, label %if.end.i.if.end4.i_crit_edge177
  ]

if.end.i.if.end4.i_crit_edge177:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.end.i.if.end4.i_crit_edge176:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.end.i.if.end4.i_crit_edge175:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.end.i.if.end4.i_crit_edge174:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.end.i.extract_icmp4_fields.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %extract_icmp4_fields.exit.thread

if.end4.i:                                        ; preds = %if.end.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge174, %if.end.i.if.end4.i_crit_edge175, %if.end.i.if.end4.i_crit_edge176, %if.end.i.if.end4.i_crit_edge177
  %add.i = add nuw nsw i32 %mul.i.i, 8
  %55 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len.i.i.i, align 4
  %57 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data_len.i.i.i, align 8
  %59 = add i32 %56, -8
  %60 = add i32 %58, %mul.i.i
  %sub.i4.i52.i = sub i32 %59, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i52.i)
  %cmp.not.i.i53.i = icmp slt i32 %sub.i4.i52.i, 20
  br i1 %cmp.not.i.i53.i, label %if.end.i.i58.i, label %skb_header_pointer.exit64.i, !prof !18

if.end.i.i58.i:                                   ; preds = %if.end4.i
  %tobool2.not.i.i57.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i57.i, label %if.end.i.i58.i.extract_icmp4_fields.exit.thread_crit_edge, label %lor.lhs.false.i.i62.i

if.end.i.i58.i.extract_icmp4_fields.exit.thread_crit_edge: ; preds = %if.end.i.i58.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %extract_icmp4_fields.exit.thread

lor.lhs.false.i.i62.i:                            ; preds = %if.end.i.i58.i
  %call.i.i59.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add.i, ptr noundef nonnull %_inside_iph.i, i32 noundef 20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59.i)
  %cmp3.i.i60.i = icmp slt i32 %call.i.i59.i, 0
  br i1 %cmp3.i.i60.i, label %lor.lhs.false.i.i62.i.extract_icmp4_fields.exit.thread_crit_edge, label %lor.lhs.false.i.i62.i.if.end9.i_crit_edge

lor.lhs.false.i.i62.i.if.end9.i_crit_edge:        ; preds = %lor.lhs.false.i.i62.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.i

lor.lhs.false.i.i62.i.extract_icmp4_fields.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i62.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %extract_icmp4_fields.exit.thread

skb_header_pointer.exit64.i:                      ; preds = %if.end4.i
  %data.i54.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %61 = ptrtoint ptr %data.i54.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i54.i, align 4
  %add.ptr.i.i55.i = getelementptr i8, ptr %62, i32 %add.i
  %cmp6.i = icmp eq ptr %add.ptr.i.i55.i, null
  br i1 %cmp6.i, label %skb_header_pointer.exit64.i.extract_icmp4_fields.exit.thread_crit_edge, label %skb_header_pointer.exit64.i.if.end9.i_crit_edge

skb_header_pointer.exit64.i.if.end9.i_crit_edge:  ; preds = %skb_header_pointer.exit64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.i

skb_header_pointer.exit64.i.extract_icmp4_fields.exit.thread_crit_edge: ; preds = %skb_header_pointer.exit64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %extract_icmp4_fields.exit.thread

if.end9.i:                                        ; preds = %skb_header_pointer.exit64.i.if.end9.i_crit_edge, %lor.lhs.false.i.i62.i.if.end9.i_crit_edge
  %retval.0.i.i6393.i = phi ptr [ %add.ptr.i.i55.i, %skb_header_pointer.exit64.i.if.end9.i_crit_edge ], [ %_inside_iph.i, %lor.lhs.false.i.i62.i.if.end9.i_crit_edge ]
  %protocol10.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i6393.i, i32 0, i32 6
  %63 = ptrtoint ptr %protocol10.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %protocol10.i, align 1
  %65 = zext i8 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %64, label %if.end9.i.extract_icmp4_fields.exit.thread_crit_edge [
    i8 6, label %if.end9.i.if.end19.i_crit_edge
    i8 17, label %if.end9.i.if.end19.i_crit_edge178
  ]

if.end9.i.if.end19.i_crit_edge178:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i

if.end9.i.if.end19.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i

if.end9.i.extract_icmp4_fields.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %extract_icmp4_fields.exit.thread

if.end19.i:                                       ; preds = %if.end9.i.if.end19.i_crit_edge, %if.end9.i.if.end19.i_crit_edge178
  %66 = ptrtoint ptr %retval.0.i.i6393.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load.i137 = load i8, ptr %retval.0.i.i6393.i, align 4
  %bf.clear.i138 = shl i8 %bf.load.i137, 2
  %67 = and i8 %bf.clear.i138, 60
  %shl.i = zext i8 %67 to i32
  %add22.i = add nuw nsw i32 %add.i, %shl.i
  %68 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len.i.i.i, align 4
  %70 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %data_len.i.i.i, align 8
  %72 = add i32 %71, %add22.i
  %sub.i4.i67.i = sub i32 %69, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i67.i)
  %cmp.not.i.i68.i = icmp slt i32 %sub.i4.i67.i, 4
  br i1 %cmp.not.i.i68.i, label %if.end.i.i73.i, label %skb_header_pointer.exit79.i, !prof !18

if.end.i.i73.i:                                   ; preds = %if.end19.i
  %tobool2.not.i.i72.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i72.i, label %if.end.i.i73.i.extract_icmp4_fields.exit.thread_crit_edge, label %lor.lhs.false.i.i77.i

if.end.i.i73.i.extract_icmp4_fields.exit.thread_crit_edge: ; preds = %if.end.i.i73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %extract_icmp4_fields.exit.thread

lor.lhs.false.i.i77.i:                            ; preds = %if.end.i.i73.i
  %call.i.i74.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add22.i, ptr noundef nonnull %_ports.i, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i74.i)
  %cmp3.i.i75.i = icmp slt i32 %call.i.i74.i, 0
  br i1 %cmp3.i.i75.i, label %lor.lhs.false.i.i77.i.extract_icmp4_fields.exit.thread_crit_edge, label %lor.lhs.false.i.i77.i.extract_icmp4_fields.exit_crit_edge

lor.lhs.false.i.i77.i.extract_icmp4_fields.exit_crit_edge: ; preds = %lor.lhs.false.i.i77.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %extract_icmp4_fields.exit

lor.lhs.false.i.i77.i.extract_icmp4_fields.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i77.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %extract_icmp4_fields.exit.thread

skb_header_pointer.exit79.i:                      ; preds = %if.end19.i
  %data.i69.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %73 = ptrtoint ptr %data.i69.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i69.i, align 4
  %add.ptr.i.i70.i = getelementptr i8, ptr %74, i32 %add22.i
  %cmp24.i = icmp eq ptr %add.ptr.i.i70.i, null
  br i1 %cmp24.i, label %skb_header_pointer.exit79.i.extract_icmp4_fields.exit.thread_crit_edge, label %skb_header_pointer.exit79.i.extract_icmp4_fields.exit_crit_edge

skb_header_pointer.exit79.i.extract_icmp4_fields.exit_crit_edge: ; preds = %skb_header_pointer.exit79.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %extract_icmp4_fields.exit

skb_header_pointer.exit79.i.extract_icmp4_fields.exit.thread_crit_edge: ; preds = %skb_header_pointer.exit79.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %extract_icmp4_fields.exit.thread

extract_icmp4_fields.exit.thread:                 ; preds = %skb_header_pointer.exit79.i.extract_icmp4_fields.exit.thread_crit_edge, %lor.lhs.false.i.i77.i.extract_icmp4_fields.exit.thread_crit_edge, %if.end.i.i73.i.extract_icmp4_fields.exit.thread_crit_edge, %if.end9.i.extract_icmp4_fields.exit.thread_crit_edge, %skb_header_pointer.exit64.i.extract_icmp4_fields.exit.thread_crit_edge, %lor.lhs.false.i.i62.i.extract_icmp4_fields.exit.thread_crit_edge, %if.end.i.i58.i.extract_icmp4_fields.exit.thread_crit_edge, %if.end.i.extract_icmp4_fields.exit.thread_crit_edge, %skb_header_pointer.exit.i.extract_icmp4_fields.exit.thread_crit_edge, %lor.lhs.false.i.i.i.extract_icmp4_fields.exit.thread_crit_edge, %if.end.i.i.i.extract_icmp4_fields.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ports.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_icmph.i) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_inside_iph.i) #4
  br label %cleanup83

extract_icmp4_fields.exit:                        ; preds = %skb_header_pointer.exit79.i.extract_icmp4_fields.exit_crit_edge, %lor.lhs.false.i.i77.i.extract_icmp4_fields.exit_crit_edge
  %retval.0.i.i78100.i = phi ptr [ %add.ptr.i.i70.i, %skb_header_pointer.exit79.i.extract_icmp4_fields.exit_crit_edge ], [ %_ports.i, %lor.lhs.false.i.i77.i.extract_icmp4_fields.exit_crit_edge ]
  %75 = ptrtoint ptr %protocol10.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %protocol10.i, align 1
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i6393.i, i32 0, i32 8
  %77 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %saddr.i, align 4
  %79 = ptrtoint ptr %retval.0.i.i78100.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %retval.0.i.i78100.i, align 2
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i6393.i, i32 0, i32 9
  %81 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %daddr.i, align 4
  %arrayidx29.i = getelementptr i16, ptr %retval.0.i.i78100.i, i32 1
  %83 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx29.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ports.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_icmph.i) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_inside_iph.i) #4
  br label %if.end39

if.end39:                                         ; preds = %extract_icmp4_fields.exit, %cleanup
  %daddr.2 = phi i32 [ %78, %extract_icmp4_fields.exit ], [ %26, %cleanup ]
  %saddr.2 = phi i32 [ %82, %extract_icmp4_fields.exit ], [ %22, %cleanup ]
  %dport.2 = phi i16 [ %80, %extract_icmp4_fields.exit ], [ %28, %cleanup ]
  %sport.2 = phi i16 [ %84, %extract_icmp4_fields.exit ], [ %24, %cleanup ]
  %protocol.2 = phi i8 [ %76, %extract_icmp4_fields.exit ], [ %20, %cleanup ]
  %data_skb.1 = phi ptr [ null, %extract_icmp4_fields.exit ], [ %skb, %cleanup ]
  %doff.1 = phi i32 [ 0, %extract_icmp4_fields.exit ], [ %doff.0, %cleanup ]
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %85 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %_nfct.i.i, align 8
  %and.i = and i32 %86, 7
  %and1.i = and i32 %86, -8
  %87 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool41.not = icmp eq i32 %and1.i, 0
  br i1 %tobool41.not, label %if.end39.if.end81_crit_edge, label %land.lhs.true

if.end39.if.end81_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end81

land.lhs.true:                                    ; preds = %if.end39
  %88 = ptrtoint ptr %protocol1 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %protocol1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %89)
  %cmp44.not = icmp eq i8 %89, 1
  br i1 %cmp44.not, label %land.lhs.true54, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp47 = icmp eq i32 %and.i, 3
  br i1 %cmp47, label %land.lhs.true46.land.lhs.true57_crit_edge, label %land.lhs.true46.if.end81_crit_edge

land.lhs.true46.if.end81_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end81

land.lhs.true46.land.lhs.true57_crit_edge:        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true57

land.lhs.true54:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %cmp55 = icmp eq i32 %and.i, 4
  br i1 %cmp55, label %land.lhs.true54.land.lhs.true57_crit_edge, label %land.lhs.true54.if.end81_crit_edge

land.lhs.true54.if.end81_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end81

land.lhs.true54.land.lhs.true57_crit_edge:        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true57

land.lhs.true57:                                  ; preds = %land.lhs.true54.land.lhs.true57_crit_edge, %land.lhs.true46.land.lhs.true57_crit_edge
  %status = getelementptr inbounds %struct.nf_conn, ptr %87, i32 0, i32 5
  %90 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %status, align 8
  %and = and i32 %91, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool58.not = icmp eq i32 %and, 0
  br i1 %tobool58.not, label %land.lhs.true57.if.end81_crit_edge, label %if.then59

land.lhs.true57.if.end81_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end81

if.then59:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #6
  %tuple = getelementptr inbounds %struct.nf_conn, ptr %87, i32 0, i32 4, i32 0, i32 1
  %92 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tuple, align 8
  %cond79.in.in = getelementptr inbounds %struct.nf_conn, ptr %87, i32 0, i32 4, i32 0, i32 1, i32 0, i32 1
  %94 = ptrtoint ptr %cond79.in.in to i32
  call void @__asan_load2_noabort(i32 %94)
  %cond79.in118 = load i16, ptr %cond79.in.in, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.then59, %land.lhs.true57.if.end81_crit_edge, %land.lhs.true54.if.end81_crit_edge, %land.lhs.true46.if.end81_crit_edge, %if.end39.if.end81_crit_edge
  %daddr.3 = phi i32 [ %daddr.2, %if.end39.if.end81_crit_edge ], [ %daddr.2, %land.lhs.true57.if.end81_crit_edge ], [ %93, %if.then59 ], [ %daddr.2, %land.lhs.true54.if.end81_crit_edge ], [ %daddr.2, %land.lhs.true46.if.end81_crit_edge ]
  %dport.3 = phi i16 [ %dport.2, %if.end39.if.end81_crit_edge ], [ %dport.2, %land.lhs.true57.if.end81_crit_edge ], [ %cond79.in118, %if.then59 ], [ %dport.2, %land.lhs.true54.if.end81_crit_edge ], [ %dport.2, %land.lhs.true46.if.end81_crit_edge ]
  %95 = zext i8 %protocol.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %protocol.2, label %if.end81.cleanup83_crit_edge [
    i8 6, label %sw.bb.i
    i8 17, label %sw.bb1.i
  ]

if.end81.cleanup83_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup83

sw.bb.i:                                          ; preds = %if.end81
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %indev, i32 0, i32 17
  %96 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ifindex.i, align 4
  %call.i.i.i139 = call ptr @__inet_lookup_established(ptr noundef %net, ptr noundef nonnull @tcp_hashinfo, i32 noundef %saddr.2, i16 noundef zeroext %sport.2, i32 noundef %daddr.3, i16 noundef zeroext %dport.3, i32 noundef %97, i32 noundef 0) #4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i139, null
  br i1 %tobool.not.i.i.i, label %__inet_lookup.exit.i.i, label %sw.bb.i.cleanup83_crit_edge

sw.bb.i.cleanup83_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup83

__inet_lookup.exit.i.i:                           ; preds = %sw.bb.i
  %call1.i.i.i = call ptr @__inet_lookup_listener(ptr noundef %net, ptr noundef nonnull @tcp_hashinfo, ptr noundef %data_skb.1, i32 noundef %doff.1, i32 noundef %saddr.2, i16 noundef zeroext %sport.2, i32 noundef %daddr.3, i16 noundef zeroext %dport.3, i32 noundef %97, i32 noundef 0) #4
  %tobool.not.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not.i.i, label %__inet_lookup.exit.i.i.cleanup83_crit_edge, label %land.lhs.true2.i.i

__inet_lookup.exit.i.i.cleanup83_crit_edge:       ; preds = %__inet_lookup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup83

land.lhs.true2.i.i:                               ; preds = %__inet_lookup.exit.i.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %call1.i.i.i, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #4
  %98 = ptrtoint ptr %skc_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %skc_refcnt.i.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true2.i.i
  %100 = phi i32 [ %99, %land.lhs.true2.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %101 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i.i.i.i.i = icmp eq i32 %100, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %100, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #4
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #4
  %102 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #4
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %104 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 %103, i32 %add.i.i.i.i.i, ptr elementtype(i32) %skc_refcnt.i.i) #4, !srcloc !20
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %104, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %104, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %103
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !21

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %105 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %106, 1
  %107 = or i32 %add5.i.i.i.i.i, %106
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %107)
  %.not.i.i.i.i.i = icmp sgt i32 %107, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !21

if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %refcount_inc_not_zero.exit.i.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 0) #4
  br label %refcount_inc_not_zero.exit.i.i

refcount_inc_not_zero.exit.i.i:                   ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge
  %108 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool12.i.i.i.not.i.i = icmp eq i32 %109, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #4
  %spec.select.i.i140 = select i1 %tobool12.i.i.i.not.i.i, ptr null, ptr %call1.i.i.i
  br label %cleanup83

sw.bb1.i:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #6
  %ifindex2.i = getelementptr inbounds %struct.net_device, ptr %indev, i32 0, i32 17
  %110 = ptrtoint ptr %ifindex2.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ifindex2.i, align 4
  %call3.i = call ptr @udp4_lib_lookup(ptr noundef %net, i32 noundef %saddr.2, i16 noundef zeroext %sport.2, i32 noundef %daddr.3, i16 noundef zeroext %dport.3, i32 noundef %111) #4
  br label %cleanup83

cleanup83:                                        ; preds = %sw.bb1.i, %refcount_inc_not_zero.exit.i.i, %__inet_lookup.exit.i.i.cleanup83_crit_edge, %sw.bb.i.cleanup83_crit_edge, %if.end81.cleanup83_crit_edge, %extract_icmp4_fields.exit.thread, %cleanup.thread, %entry.cleanup83_crit_edge
  %retval.1 = phi ptr [ null, %entry.cleanup83_crit_edge ], [ null, %cleanup.thread ], [ null, %extract_icmp4_fields.exit.thread ], [ %call3.i, %sw.bb1.i ], [ null, %if.end81.cleanup83_crit_edge ], [ null, %__inet_lookup.exit.i.i.cleanup83_crit_edge ], [ %spec.select.i.i140, %refcount_inc_not_zero.exit.i.i ], [ %call.i.i.i139, %sw.bb.i.cleanup83_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udp4_lib_lookup(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__inet_lookup_established(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__inet_lookup_listener(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab_nf_sk_lookup_slow_v4, !1, !"__ksymtab_nf_sk_lookup_slow_v4", i1 false, i1 false}
!1 = !{!"../net/ipv4/netfilter/nf_socket_ipv4.c", i32 149, i32 1}
!2 = !{ptr @__UNIQUE_ID_file689, !3, !"__UNIQUE_ID_file689", i1 false, i1 false}
!3 = !{!"../net/ipv4/netfilter/nf_socket_ipv4.c", i32 151, i32 1}
!4 = !{ptr @__UNIQUE_ID_license690, !3, !"__UNIQUE_ID_license690", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author691, !6, !"__UNIQUE_ID_author691", i1 false, i1 false}
!6 = !{!"../net/ipv4/netfilter/nf_socket_ipv4.c", i32 152, i32 1}
!7 = !{ptr @__UNIQUE_ID_description692, !8, !"__UNIQUE_ID_description692", i1 false, i1 false}
!8 = !{!"../net/ipv4/netfilter/nf_socket_ipv4.c", i32 153, i32 1}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{!"auto-init"}
!20 = !{i64 826810, i64 826834, i64 826855, i64 826872, i64 826889}
!21 = !{!"branch_weights", i32 2000, i32 1}
