; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter/nf_socket_ipv6.c_pt.bc'
source_filename = "../net/ipv6/netfilter/nf_socket_ipv6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_sk_lookup_slow_v6\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_sk_lookup_slow_v6\09\09\09\09"
module asm "\09.long\09__crc_nf_sk_lookup_slow_v6\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_sk_lookup_slow_v6:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_sk_lookup_slow_v6\22\09\09\09\09\09"
module asm "__kstrtabns_nf_sk_lookup_slow_v6:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
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
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.200 }
%union.anon.200 = type { [1 x i32] }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
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
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.175, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.193, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.175 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
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

@nf_sk_lookup_slow_v6.__UNIQUE_ID_ddebug689 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nf_socket_ipv6\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nf_sk_lookup_slow_v6\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"net/ipv6/netfilter/nf_socket_ipv6.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"unable to find transport header in IPv6 packet, dropping\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"nf_socket_ipv6: unable to find transport header in IPv6 packet, dropping\0A\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_nf_sk_lookup_slow_v6 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_sk_lookup_slow_v6 = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_sk_lookup_slow_v6 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_sk_lookup_slow_v6 to i32), ptr @__kstrtab_nf_sk_lookup_slow_v6, ptr @__kstrtabns_nf_sk_lookup_slow_v6 }, section "___ksymtab_gpl+nf_sk_lookup_slow_v6", align 4
@__UNIQUE_ID_file690 = internal constant [54 x i8] c"nf_socket_ipv6.file=net/ipv6/netfilter/nf_socket_ipv6\00", section ".modinfo", align 1
@__UNIQUE_ID_license691 = internal constant [27 x i8] c"nf_socket_ipv6.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author692 = internal constant [57 x i8] c"nf_socket_ipv6.author=Krisztian Kovacs, Balazs Scheidler\00", section ".modinfo", align 1
@__UNIQUE_ID_description693 = internal constant [71 x i8] c"nf_socket_ipv6.description=Netfilter IPv6 socket lookup infrastructure\00", section ".modinfo", align 1
@tcp_hashinfo = external dso_local global %struct.inet_hashinfo, align 128
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 17, i64 58]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [39 x i8] c"../net/ipv6/netfilter/nf_socket_ipv6.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 109, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author692, ptr @__UNIQUE_ID_description693, ptr @__UNIQUE_ID_file690, ptr @__UNIQUE_ID_license691, ptr @__ksymtab_nf_sk_lookup_slow_v6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nf_sk_lookup_slow_v6(ptr noundef %net, ptr noundef %skb, ptr nocapture noundef readonly %indev) #0 align 64 {
entry:
  %_icmph.i = alloca %struct.icmp6hdr, align 8
  %_ports.i = alloca [2 x i16], align 2
  %inside_nexthdr.i = alloca i8, align 1
  %inside_fragoff.i = alloca i16, align 2
  %ipv6_var = alloca %struct.ipv6hdr, align 4
  %thoff = alloca i32, align 4
  %_hdr = alloca %struct.tcphdr, align 4
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ipv6_var) #3
  %4 = call ptr @memset(ptr %ipv6_var, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thoff) #3
  %5 = ptrtoint ptr %thoff to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %thoff, align 4
  %call1 = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %thoff, i32 noundef -1, ptr noundef null, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_sk_lookup_slow_v6.__UNIQUE_ID_ddebug689, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_sk_lookup_slow_v6, %if.then5)) #3
          to label %cleanup32 [label %if.then5], !srcloc !25

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_sk_lookup_slow_v6.__UNIQUE_ID_ddebug689, ptr noundef nonnull @.str.4) #3
  br label %cleanup32

if.end6:                                          ; preds = %entry
  %6 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1, label %if.end6.cleanup32_crit_edge [
    i32 17, label %if.end6.if.then9_crit_edge
    i32 6, label %if.end6.if.then9_crit_edge91
    i32 58, label %if.then23
  ]

if.end6.if.then9_crit_edge91:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

if.end6.cleanup32_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup32

if.then9:                                         ; preds = %if.end6.if.then9_crit_edge, %if.end6.if.then9_crit_edge91
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_hdr) #3
  %7 = call ptr @memset(ptr %_hdr, i32 255, i32 20)
  %8 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %thoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call1)
  %cmp10 = icmp eq i32 %call1, 17
  %cond = select i1 %cmp10, i32 8, i32 20
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  %14 = add i32 %9, %13
  %sub.i4.i = sub i32 %11, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4.i, i32 %cond)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, %cond
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !26

if.end.i.i:                                       ; preds = %if.then9
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup.thread_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.thread

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %9, ptr noundef nonnull %_hdr, i32 noundef %cond) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup.thread_crit_edge, label %lor.lhs.false.i.i.if.end14_crit_edge

lor.lhs.false.i.i.if.end14_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

lor.lhs.false.i.i.cleanup.thread_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.thread

skb_header_pointer.exit:                          ; preds = %if.then9
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i51 = getelementptr i8, ptr %16, i32 %9
  %cmp12 = icmp eq ptr %add.ptr.i.i51, null
  br i1 %cmp12, label %skb_header_pointer.exit.cleanup.thread_crit_edge, label %skb_header_pointer.exit.if.end14_crit_edge

skb_header_pointer.exit.if.end14_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

skb_header_pointer.exit.cleanup.thread_crit_edge: ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.thread

if.end14:                                         ; preds = %skb_header_pointer.exit.if.end14_crit_edge, %lor.lhs.false.i.i.if.end14_crit_edge
  %retval.0.i.i63 = phi ptr [ %add.ptr.i.i51, %skb_header_pointer.exit.if.end14_crit_edge ], [ %_hdr, %lor.lhs.false.i.i.if.end14_crit_edge ]
  %saddr15 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %retval.0.i.i63 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %retval.0.i.i63, align 2
  %daddr16 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %dest = getelementptr inbounds %struct.udphdr, ptr %retval.0.i.i63, i32 0, i32 1
  %19 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dest, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call1)
  %cmp17 = icmp eq i32 %call1, 6
  %21 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %thoff, align 4
  br i1 %cmp17, label %cond.true, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cond.true:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i63, i32 0, i32 4
  %23 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i = load i16, ptr %doff.i, align 4
  %24 = lshr i16 %bf.load.i, 10
  %25 = and i16 %24, 60
  %mul.i = zext i16 %25 to i32
  br label %cleanup

cleanup.thread:                                   ; preds = %skb_header_pointer.exit.cleanup.thread_crit_edge, %lor.lhs.false.i.i.cleanup.thread_crit_edge, %if.end.i.i.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_hdr) #3
  br label %cleanup32

cleanup:                                          ; preds = %cond.true, %if.end14.cleanup_crit_edge
  %mul.i.sink = phi i32 [ %mul.i, %cond.true ], [ 8, %if.end14.cleanup_crit_edge ]
  %add = add i32 %22, %mul.i.sink
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_hdr) #3
  br label %if.end30

if.then23:                                        ; preds = %if.end6
  %26 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %thoff, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_icmph.i) #3
  %28 = ptrtoint ptr %_icmph.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 -1, ptr %_icmph.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_ports.i) #3
  %29 = ptrtoint ptr %_ports.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %_ports.i, align 2, !annotation !27
  %30 = getelementptr inbounds [2 x i16], ptr %_ports.i, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %30, align 2, !annotation !27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %inside_nexthdr.i) #3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %inside_fragoff.i) #3
  %32 = ptrtoint ptr %inside_fragoff.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %inside_fragoff.i, align 2, !annotation !27
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %33 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %35 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len.i.i.i, align 8
  %37 = add i32 %27, %36
  %sub.i4.i.i = sub i32 %34, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i.i)
  %cmp.not.i.i.i = icmp slt i32 %sub.i4.i.i, 8
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %skb_header_pointer.exit.i, !prof !26

if.end.i.i.i:                                     ; preds = %if.then23
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.extract_icmp6_fields.exit.thread_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.extract_icmp6_fields.exit.thread_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %extract_icmp6_fields.exit.thread

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %27, ptr noundef nonnull %_icmph.i, i32 noundef 8) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.extract_icmp6_fields.exit.thread_crit_edge, label %lor.lhs.false.i.i.i.if.end.i_crit_edge

lor.lhs.false.i.i.i.if.end.i_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

lor.lhs.false.i.i.i.extract_icmp6_fields.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %extract_icmp6_fields.exit.thread

skb_header_pointer.exit.i:                        ; preds = %if.then23
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %38 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %39, i32 %27
  %cmp.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %cmp.i, label %skb_header_pointer.exit.i.extract_icmp6_fields.exit.thread_crit_edge, label %skb_header_pointer.exit.i.if.end.i_crit_edge

skb_header_pointer.exit.i.if.end.i_crit_edge:     ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

skb_header_pointer.exit.i.extract_icmp6_fields.exit.thread_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %extract_icmp6_fields.exit.thread

if.end.i:                                         ; preds = %skb_header_pointer.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.i.i.if.end.i_crit_edge
  %retval.0.i.i84.i = phi ptr [ %add.ptr.i.i.i, %skb_header_pointer.exit.i.if.end.i_crit_edge ], [ %_icmph.i, %lor.lhs.false.i.i.i.if.end.i_crit_edge ]
  %40 = ptrtoint ptr %retval.0.i.i84.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %retval.0.i.i84.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %41)
  %tobool.not.i = icmp sgt i8 %41, -1
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.extract_icmp6_fields.exit.thread_crit_edge

if.end.i.extract_icmp6_fields.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %extract_icmp6_fields.exit.thread

if.end2.i:                                        ; preds = %if.end.i
  %add.i = add i32 %27, 8
  %42 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i.i.i, align 4
  %44 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_len.i.i.i, align 8
  %46 = add i32 %43, -8
  %47 = add i32 %27, %45
  %sub.i4.i51.i = sub i32 %46, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i51.i)
  %cmp.not.i.i52.i = icmp slt i32 %sub.i4.i51.i, 40
  br i1 %cmp.not.i.i52.i, label %if.end.i.i57.i, label %skb_header_pointer.exit63.i, !prof !26

if.end.i.i57.i:                                   ; preds = %if.end2.i
  %tobool2.not.i.i56.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i56.i, label %if.end.i.i57.i.extract_icmp6_fields.exit.thread_crit_edge, label %lor.lhs.false.i.i61.i

if.end.i.i57.i.extract_icmp6_fields.exit.thread_crit_edge: ; preds = %if.end.i.i57.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %extract_icmp6_fields.exit.thread

lor.lhs.false.i.i61.i:                            ; preds = %if.end.i.i57.i
  %call.i.i58.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add.i, ptr noundef nonnull %ipv6_var, i32 noundef 40) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58.i)
  %cmp3.i.i59.i = icmp slt i32 %call.i.i58.i, 0
  br i1 %cmp3.i.i59.i, label %lor.lhs.false.i.i61.i.extract_icmp6_fields.exit.thread_crit_edge, label %lor.lhs.false.i.i61.i.if.end7.i_crit_edge

lor.lhs.false.i.i61.i.if.end7.i_crit_edge:        ; preds = %lor.lhs.false.i.i61.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7.i

lor.lhs.false.i.i61.i.extract_icmp6_fields.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i61.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %extract_icmp6_fields.exit.thread

skb_header_pointer.exit63.i:                      ; preds = %if.end2.i
  %data.i53.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %48 = ptrtoint ptr %data.i53.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i53.i, align 4
  %add.ptr.i.i54.i = getelementptr i8, ptr %49, i32 %add.i
  %cmp4.i = icmp eq ptr %add.ptr.i.i54.i, null
  br i1 %cmp4.i, label %skb_header_pointer.exit63.i.extract_icmp6_fields.exit.thread_crit_edge, label %skb_header_pointer.exit63.i.if.end7.i_crit_edge

skb_header_pointer.exit63.i.if.end7.i_crit_edge:  ; preds = %skb_header_pointer.exit63.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7.i

skb_header_pointer.exit63.i.extract_icmp6_fields.exit.thread_crit_edge: ; preds = %skb_header_pointer.exit63.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %extract_icmp6_fields.exit.thread

if.end7.i:                                        ; preds = %skb_header_pointer.exit63.i.if.end7.i_crit_edge, %lor.lhs.false.i.i61.i.if.end7.i_crit_edge
  %retval.0.i.i62.i74 = phi ptr [ %add.ptr.i.i54.i, %skb_header_pointer.exit63.i.if.end7.i_crit_edge ], [ %ipv6_var, %lor.lhs.false.i.i61.i.if.end7.i_crit_edge ]
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i62.i74, i32 0, i32 3
  %50 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %nexthdr.i, align 2
  %52 = ptrtoint ptr %inside_nexthdr.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %inside_nexthdr.i, align 1
  %add9.i = add i32 %27, 48
  %call10.i = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef %add9.i, ptr noundef nonnull %inside_nexthdr.i, ptr noundef nonnull %inside_fragoff.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end7.i.extract_icmp6_fields.exit.thread_crit_edge, label %if.end14.i

if.end7.i.extract_icmp6_fields.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %extract_icmp6_fields.exit.thread

if.end14.i:                                       ; preds = %if.end7.i
  %53 = ptrtoint ptr %inside_nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %inside_nexthdr.i, align 1
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %54, label %if.end14.i.extract_icmp6_fields.exit.thread_crit_edge [
    i8 6, label %if.end14.i.if.end22.i_crit_edge
    i8 17, label %if.end14.i.if.end22.i_crit_edge92
  ]

if.end14.i.if.end22.i_crit_edge92:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22.i

if.end14.i.if.end22.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22.i

if.end14.i.extract_icmp6_fields.exit.thread_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %extract_icmp6_fields.exit.thread

if.end22.i:                                       ; preds = %if.end14.i.if.end22.i_crit_edge, %if.end14.i.if.end22.i_crit_edge92
  %56 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len.i.i.i, align 4
  %58 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %data_len.i.i.i, align 8
  %60 = add i32 %call10.i, %59
  %sub.i4.i66.i = sub i32 %57, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i66.i)
  %cmp.not.i.i67.i = icmp slt i32 %sub.i4.i66.i, 4
  br i1 %cmp.not.i.i67.i, label %if.end.i.i72.i, label %skb_header_pointer.exit78.i, !prof !26

if.end.i.i72.i:                                   ; preds = %if.end22.i
  %tobool2.not.i.i71.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i71.i, label %if.end.i.i72.i.extract_icmp6_fields.exit.thread_crit_edge, label %lor.lhs.false.i.i76.i

if.end.i.i72.i.extract_icmp6_fields.exit.thread_crit_edge: ; preds = %if.end.i.i72.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %extract_icmp6_fields.exit.thread

lor.lhs.false.i.i76.i:                            ; preds = %if.end.i.i72.i
  %call.i.i73.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %call10.i, ptr noundef nonnull %_ports.i, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i73.i)
  %cmp3.i.i74.i = icmp slt i32 %call.i.i73.i, 0
  br i1 %cmp3.i.i74.i, label %lor.lhs.false.i.i76.i.extract_icmp6_fields.exit.thread_crit_edge, label %lor.lhs.false.i.i76.i.extract_icmp6_fields.exit_crit_edge

lor.lhs.false.i.i76.i.extract_icmp6_fields.exit_crit_edge: ; preds = %lor.lhs.false.i.i76.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %extract_icmp6_fields.exit

lor.lhs.false.i.i76.i.extract_icmp6_fields.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i76.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %extract_icmp6_fields.exit.thread

skb_header_pointer.exit78.i:                      ; preds = %if.end22.i
  %data.i68.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %61 = ptrtoint ptr %data.i68.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i68.i, align 4
  %add.ptr.i.i69.i = getelementptr i8, ptr %62, i32 %call10.i
  %cmp24.i = icmp eq ptr %add.ptr.i.i69.i, null
  br i1 %cmp24.i, label %skb_header_pointer.exit78.i.extract_icmp6_fields.exit.thread_crit_edge, label %skb_header_pointer.exit78.i.extract_icmp6_fields.exit_crit_edge

skb_header_pointer.exit78.i.extract_icmp6_fields.exit_crit_edge: ; preds = %skb_header_pointer.exit78.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %extract_icmp6_fields.exit

skb_header_pointer.exit78.i.extract_icmp6_fields.exit.thread_crit_edge: ; preds = %skb_header_pointer.exit78.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %extract_icmp6_fields.exit.thread

extract_icmp6_fields.exit.thread:                 ; preds = %skb_header_pointer.exit78.i.extract_icmp6_fields.exit.thread_crit_edge, %lor.lhs.false.i.i76.i.extract_icmp6_fields.exit.thread_crit_edge, %if.end.i.i72.i.extract_icmp6_fields.exit.thread_crit_edge, %if.end14.i.extract_icmp6_fields.exit.thread_crit_edge, %if.end7.i.extract_icmp6_fields.exit.thread_crit_edge, %skb_header_pointer.exit63.i.extract_icmp6_fields.exit.thread_crit_edge, %lor.lhs.false.i.i61.i.extract_icmp6_fields.exit.thread_crit_edge, %if.end.i.i57.i.extract_icmp6_fields.exit.thread_crit_edge, %if.end.i.extract_icmp6_fields.exit.thread_crit_edge, %skb_header_pointer.exit.i.extract_icmp6_fields.exit.thread_crit_edge, %lor.lhs.false.i.i.i.extract_icmp6_fields.exit.thread_crit_edge, %if.end.i.i.i.extract_icmp6_fields.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %inside_fragoff.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %inside_nexthdr.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ports.i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_icmph.i) #3
  br label %cleanup32

extract_icmp6_fields.exit:                        ; preds = %skb_header_pointer.exit78.i.extract_icmp6_fields.exit_crit_edge, %lor.lhs.false.i.i76.i.extract_icmp6_fields.exit_crit_edge
  %retval.0.i.i7794.i = phi ptr [ %add.ptr.i.i69.i, %skb_header_pointer.exit78.i.extract_icmp6_fields.exit_crit_edge ], [ %_ports.i, %lor.lhs.false.i.i76.i.extract_icmp6_fields.exit_crit_edge ]
  %63 = ptrtoint ptr %inside_nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %inside_nexthdr.i, align 1
  %conv28.i = zext i8 %64 to i32
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i62.i74, i32 0, i32 5
  %65 = ptrtoint ptr %retval.0.i.i7794.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %retval.0.i.i7794.i, align 2
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i62.i74, i32 0, i32 6
  %arrayidx29.i = getelementptr i16, ptr %retval.0.i.i7794.i, i32 1
  %67 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx29.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %inside_fragoff.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %inside_nexthdr.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ports.i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_icmph.i) #3
  br label %if.end30

if.end30:                                         ; preds = %extract_icmp6_fields.exit, %cleanup
  %dport.2 = phi i16 [ %66, %extract_icmp6_fields.exit ], [ %20, %cleanup ]
  %sport.2 = phi i16 [ %68, %extract_icmp6_fields.exit ], [ %18, %cleanup ]
  %daddr.2 = phi ptr [ %saddr.i, %extract_icmp6_fields.exit ], [ %daddr16, %cleanup ]
  %saddr.2 = phi ptr [ %daddr.i, %extract_icmp6_fields.exit ], [ %saddr15, %cleanup ]
  %tproto.1 = phi i32 [ %conv28.i, %extract_icmp6_fields.exit ], [ %call1, %cleanup ]
  %data_skb.1 = phi ptr [ null, %extract_icmp6_fields.exit ], [ %skb, %cleanup ]
  %doff.1 = phi i32 [ 0, %extract_icmp6_fields.exit ], [ %add, %cleanup ]
  %conv = trunc i32 %tproto.1 to i8
  %69 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %conv, label %if.end30.cleanup32_crit_edge [
    i8 6, label %sw.bb.i
    i8 17, label %sw.bb1.i
  ]

if.end30.cleanup32_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup32

sw.bb.i:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %indev, i32 0, i32 17
  %70 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ifindex.i, align 4
  %call.i = call ptr @inet6_lookup(ptr noundef %net, ptr noundef nonnull @tcp_hashinfo, ptr noundef %data_skb.1, i32 noundef %doff.1, ptr noundef %saddr.2, i16 noundef zeroext %sport.2, ptr noundef %daddr.2, i16 noundef zeroext %dport.2, i32 noundef %71) #3
  br label %cleanup32

sw.bb1.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  %ifindex2.i = getelementptr inbounds %struct.net_device, ptr %indev, i32 0, i32 17
  %72 = ptrtoint ptr %ifindex2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ifindex2.i, align 4
  %call3.i = call ptr @udp6_lib_lookup(ptr noundef %net, ptr noundef %saddr.2, i16 noundef zeroext %sport.2, ptr noundef %daddr.2, i16 noundef zeroext %dport.2, i32 noundef %73) #3
  br label %cleanup32

cleanup32:                                        ; preds = %sw.bb1.i, %sw.bb.i, %if.end30.cleanup32_crit_edge, %extract_icmp6_fields.exit.thread, %cleanup.thread, %if.end6.cleanup32_crit_edge, %if.then5, %do.body
  %retval.1 = phi ptr [ null, %if.then5 ], [ null, %if.end6.cleanup32_crit_edge ], [ null, %do.body ], [ null, %cleanup.thread ], [ null, %extract_icmp6_fields.exit.thread ], [ %call3.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ], [ null, %if.end30.cleanup32_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thoff) #3
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ipv6_var) #3
  ret ptr %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet6_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udp6_lib_lookup(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !11, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter/nf_socket_ipv6.c", i32 109, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nf_sk_lookup_slow_v6.__UNIQUE_ID_ddebug689, !1, !"__UNIQUE_ID_ddebug689", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab_nf_sk_lookup_slow_v6, !8, !"__ksymtab_nf_sk_lookup_slow_v6", i1 false, i1 false}
!8 = !{!"../net/ipv6/netfilter/nf_socket_ipv6.c", i32 142, i32 1}
!9 = !{ptr @__UNIQUE_ID_file690, !10, !"__UNIQUE_ID_file690", i1 false, i1 false}
!10 = !{!"../net/ipv6/netfilter/nf_socket_ipv6.c", i32 144, i32 1}
!11 = !{ptr @__UNIQUE_ID_license691, !10, !"__UNIQUE_ID_license691", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author692, !13, !"__UNIQUE_ID_author692", i1 false, i1 false}
!13 = !{!"../net/ipv6/netfilter/nf_socket_ipv6.c", i32 145, i32 1}
!14 = !{ptr @__UNIQUE_ID_description693, !15, !"__UNIQUE_ID_description693", i1 false, i1 false}
!15 = !{!"../net/ipv6/netfilter/nf_socket_ipv6.c", i32 146, i32 1}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2148955419, i64 2148955424, i64 2148955437, i64 2148955481, i64 2148955515, i64 2148955536}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{!"auto-init"}
