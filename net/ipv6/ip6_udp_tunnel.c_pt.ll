; ModuleID = '/llk/IR_all_yes/net/ipv6/ip6_udp_tunnel.c_pt.bc'
source_filename = "../net/ipv6/ip6_udp_tunnel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+udp_sock_create6\22, \22a\22\09"
module asm "\09.weak\09__crc_udp_sock_create6\09\09\09\09"
module asm "\09.long\09__crc_udp_sock_create6\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_sock_create6:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_sock_create6\22\09\09\09\09\09"
module asm "__kstrtabns_udp_sock_create6:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+udp_tunnel6_xmit_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_udp_tunnel6_xmit_skb\09\09\09\09"
module asm "\09.long\09__crc_udp_tunnel6_xmit_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_tunnel6_xmit_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_tunnel6_xmit_skb\22\09\09\09\09\09"
module asm "__kstrtabns_udp_tunnel6_xmit_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.udp_port_cfg = type { i8, %union.anon.156, %union.anon.157, i16, i16, i32, i8 }
%union.anon.156 = type { %struct.in6_addr }
%union.anon.157 = type { %struct.in6_addr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.135, [0 x i32], %union.anon.136, i16, i16, %union.anon.137, %struct.refcount_struct, [0 x i32], %union.anon.138 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { %struct.hlist_node }
%union.anon.137 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.138 = type { i32 }
%struct.anon.18 = type { i16, i16 }
%struct.udp_sock = type { %struct.inet_sock, i32, i32, i8, i8, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, [92 x i8], %struct.sk_buff_head, i32, [68 x i8] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.139, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.140, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.141, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.139 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.140 = type { ptr }
%union.anon.141 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.146 }
%union.anon.146 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.82, %union.anon.117, %union.anon.118, [48 x i8], %union.anon.119, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.121, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.117 = type { ptr }
%union.anon.118 = type { i64 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i32, ptr }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.123, i32, i32, i32, i16, i16, %union.anon.125, i32, %union.anon.126, %union.anon.127, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.123 = type { i32 }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i32 }
%union.anon.127 = type { i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.116 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }

@__kstrtab_udp_sock_create6 = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_sock_create6 = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_sock_create6 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_sock_create6 to i32), ptr @__kstrtab_udp_sock_create6, ptr @__kstrtabns_udp_sock_create6 }, section "___ksymtab_gpl+udp_sock_create6", align 4
@__kstrtab_udp_tunnel6_xmit_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_tunnel6_xmit_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_tunnel6_xmit_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_tunnel6_xmit_skb to i32), ptr @__kstrtab_udp_tunnel6_xmit_skb, ptr @__kstrtabns_udp_tunnel6_xmit_skb }, section "___ksymtab_gpl+udp_tunnel6_xmit_skb", align 4
@__UNIQUE_ID_file572 = internal constant [44 x i8] c"ip6_udp_tunnel.file=net/ipv6/ip6_udp_tunnel\00", section ".modinfo", align 1
@__UNIQUE_ID_license573 = internal constant [27 x i8] c"ip6_udp_tunnel.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_ = private constant [29 x i8] c"../net/ipv6/ip6_udp_tunnel.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 1011, i32 2 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 271, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file572, ptr @__UNIQUE_ID_license573, ptr @__ksymtab_udp_sock_create6, ptr @__ksymtab_udp_tunnel6_xmit_skb, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udp_sock_create6(ptr noundef %net, ptr nocapture noundef readonly %cfg, ptr nocapture noundef writeonly %sockp) #0 align 64 {
entry:
  %udp6_addr = alloca %struct.sockaddr_in6, align 4
  %sock = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %udp6_addr) #5
  %0 = call ptr @memset(ptr %udp6_addr, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock) #5
  %1 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %sock, align 4
  %call = call i32 @sock_create_kern(ptr noundef %net, i32 noundef 10, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %sock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end:                                           ; preds = %entry
  %ipv6_v6only = getelementptr inbounds %struct.udp_port_cfg, ptr %cfg, i32 0, i32 6
  %2 = ptrtoint ptr %ipv6_v6only to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %ipv6_v6only, align 4
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then1

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then1:                                         ; preds = %if.end
  %4 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk, align 16
  %8 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 2
  %skc_num.i = getelementptr inbounds %struct.anon.18, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %skc_num.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %skc_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %ip6_sock_set_v6only.exit, label %if.then1.error_crit_edge

if.then1.error_crit_edge:                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

ip6_sock_set_v6only.exit:                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  call void @lock_sock_nested(ptr noundef %7, i32 noundef 0) #5
  %skc_ipv6only.i = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 5
  %11 = ptrtoint ptr %skc_ipv6only.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %skc_ipv6only.i, align 1
  %bf.set.i = or i8 %bf.load.i, 4
  store i8 %bf.set.i, ptr %skc_ipv6only.i, align 1
  call void @release_sock(ptr noundef %7) #5
  br label %if.end6

if.end6:                                          ; preds = %ip6_sock_set_v6only.exit, %if.end.if.end6_crit_edge
  %bind_ifindex = getelementptr inbounds %struct.udp_port_cfg, ptr %cfg, i32 0, i32 5
  %12 = ptrtoint ptr %bind_ifindex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bind_ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %if.end6.if.end15_crit_edge, label %if.then8

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then8:                                         ; preds = %if.end6
  %14 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sock, align 4
  %sk9 = getelementptr inbounds %struct.socket, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %sk9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk9, align 16
  %call11 = call i32 @sock_bindtoindex(ptr noundef %17, i32 noundef %13, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then8.error_crit_edge, label %if.then8.if.end15_crit_edge

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then8.error_crit_edge:                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end15:                                         ; preds = %if.then8.if.end15_crit_edge, %if.end6.if.end15_crit_edge
  %18 = ptrtoint ptr %udp6_addr to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 10, ptr %udp6_addr, align 4
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %udp6_addr, i32 0, i32 3
  %19 = getelementptr inbounds %struct.udp_port_cfg, ptr %cfg, i32 0, i32 1
  %20 = call ptr @memcpy(ptr %sin6_addr, ptr %19, i32 16)
  %local_udp_port = getelementptr inbounds %struct.udp_port_cfg, ptr %cfg, i32 0, i32 3
  %21 = ptrtoint ptr %local_udp_port to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %local_udp_port, align 4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %udp6_addr, i32 0, i32 1
  %23 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %sin6_port, align 2
  %24 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sock, align 4
  %call16 = call i32 @kernel_bind(ptr noundef %25, ptr noundef nonnull %udp6_addr, i32 noundef 28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.error_crit_edge, label %if.end19

if.end15.error_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end19:                                         ; preds = %if.end15
  %peer_udp_port = getelementptr inbounds %struct.udp_port_cfg, ptr %cfg, i32 0, i32 4
  %26 = ptrtoint ptr %peer_udp_port to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %peer_udp_port, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool20.not = icmp eq i16 %27, 0
  br i1 %tobool20.not, label %if.end19.if.end30_crit_edge, label %if.end27

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.end27:                                         ; preds = %if.end19
  %28 = getelementptr inbounds i8, ptr %udp6_addr, i32 4
  %29 = call ptr @memset(ptr %28, i32 0, i32 24)
  %30 = ptrtoint ptr %udp6_addr to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 10, ptr %udp6_addr, align 4
  %31 = getelementptr inbounds %struct.udp_port_cfg, ptr %cfg, i32 0, i32 2
  %32 = call ptr @memcpy(ptr %sin6_addr, ptr %31, i32 16)
  %33 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %27, ptr %sin6_port, align 2
  %34 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sock, align 4
  %call26 = call i32 @kernel_connect(ptr noundef %35, ptr noundef nonnull %udp6_addr, i32 noundef 28, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp28 = icmp slt i32 %call26, 0
  br i1 %cmp28, label %if.end27.error_crit_edge, label %if.end27.if.end30_crit_edge

if.end27.if.end30_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.end27.error_crit_edge:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end30:                                         ; preds = %if.end27.if.end30_crit_edge, %if.end19.if.end30_crit_edge
  %36 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sock, align 4
  %sk31 = getelementptr inbounds %struct.socket, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %sk31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sk31, align 16
  %40 = ptrtoint ptr %ipv6_v6only to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load32 = load i8, ptr %ipv6_v6only, align 4
  %no_check6_tx.i = getelementptr inbounds %struct.udp_sock, ptr %39, i32 0, i32 4
  %41 = ptrtoint ptr %no_check6_tx.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i66 = load i8, ptr %no_check6_tx.i, align 1
  %42 = shl i8 %bf.load32, 1
  %43 = and i8 %42, -128
  %bf.clear.i = and i8 %bf.load.i66, 127
  %44 = or i8 %43, %bf.clear.i
  %bf.set.i67 = xor i8 %44, -128
  store i8 %bf.set.i67, ptr %no_check6_tx.i, align 1
  %45 = load ptr, ptr %sk31, align 16
  %bf.load38 = load i8, ptr %ipv6_v6only, align 4
  %no_check6_rx.i = getelementptr inbounds %struct.udp_sock, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %no_check6_rx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.i68 = load i8, ptr %no_check6_rx.i, align 1
  %47 = shl i8 %bf.load38, 1
  %48 = and i8 %47, 64
  %bf.clear.i70 = and i8 %bf.load.i68, -65
  %49 = or i8 %48, %bf.clear.i70
  %bf.set.i71 = xor i8 %49, 64
  store i8 %bf.set.i71, ptr %no_check6_rx.i, align 1
  br label %cleanup

error:                                            ; preds = %if.end27.error_crit_edge, %if.end15.error_crit_edge, %if.then8.error_crit_edge, %if.then1.error_crit_edge, %entry.error_crit_edge
  %err.1 = phi i32 [ %call, %entry.error_crit_edge ], [ %call11, %if.then8.error_crit_edge ], [ %call16, %if.end15.error_crit_edge ], [ %call26, %if.end27.error_crit_edge ], [ -22, %if.then1.error_crit_edge ]
  %50 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sock, align 4
  %tobool44.not = icmp eq ptr %51, null
  br i1 %tobool44.not, label %error.cleanup_crit_edge, label %if.then45

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then45:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #7
  %call46 = call i32 @kernel_sock_shutdown(ptr noundef nonnull %51, i32 noundef 2) #5
  %52 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sock, align 4
  call void @sock_release(ptr noundef %53) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %error.cleanup_crit_edge, %if.end30
  %storemerge = phi ptr [ %37, %if.end30 ], [ null, %if.then45 ], [ null, %error.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %if.end30 ], [ %err.1, %if.then45 ], [ %err.1, %error.cleanup_crit_edge ]
  %54 = ptrtoint ptr %sockp to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %storemerge, ptr %sockp, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %udp6_addr) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create_kern(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_bindtoindex(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udp_tunnel6_xmit_skb(ptr noundef %dst, ptr noundef %sk, ptr noundef %skb, ptr noundef %dev, ptr noundef %saddr, ptr noundef %daddr, i8 noundef zeroext %prio, i8 noundef zeroext %ttl, i32 noundef %label, i16 noundef zeroext %src_port, i16 noundef zeroext %dst_port, i1 noundef zeroext %nocheck) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  store ptr %add.ptr.i, ptr %data.i, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %3, 8
  store i32 %add.i, ptr %len1.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %6 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %dest to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %dst_port, ptr %dest, align 2
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %src_port, ptr %add.ptr.i.i, align 2
  %9 = load i32, ptr %len1.i, align 4
  %conv = trunc i32 %9 to i16
  %len2 = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %len2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %len2, align 2
  %tobool.not.i = icmp eq ptr %dst, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %11 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %12 = ptrtoint ptr %dst to i32
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %13, align 8
  %15 = load i32, ptr %len1.i, align 4
  tail call void @udp6_set_csum(i1 noundef zeroext %nocheck, ptr noundef %skb, ptr noundef %saddr, ptr noundef %daddr, i32 noundef %15) #5
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %17, i32 -40
  store ptr %add.ptr.i33, ptr %data.i, align 4
  %18 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len1.i, align 4
  %add.i35 = add i32 %19, 40
  store i32 %add.i35, ptr %len1.i, align 4
  %20 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i38 = ptrtoint ptr %add.ptr.i33 to i32
  %sub.ptr.rhs.cast.i39 = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i40 = sub i32 %sub.ptr.lhs.cast.i38, %sub.ptr.rhs.cast.i39
  %conv.i41 = trunc i32 %sub.ptr.sub.i40 to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i41, ptr %network_header.i, align 4
  %conv.i.i43 = and i32 %sub.ptr.sub.i40, 65535
  %add.ptr.i.i44 = getelementptr i8, ptr %21, i32 %conv.i.i43
  %conv6 = zext i8 %prio to i32
  %shl.i = shl nuw nsw i32 %conv6, 20
  %or.i = or i32 %shl.i, %label
  %or1.i = or i32 %or.i, 1610612736
  %23 = ptrtoint ptr %add.ptr.i.i44 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or1.i, ptr %add.ptr.i.i44, align 4
  %24 = load i32, ptr %len1.i, align 4
  %conv8 = trunc i32 %24 to i16
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i44, i32 0, i32 2
  %25 = ptrtoint ptr %payload_len to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv8, ptr %payload_len, align 4
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i44, i32 0, i32 3
  %26 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 17, ptr %nexthdr, align 2
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i44, i32 0, i32 4
  %27 = ptrtoint ptr %hop_limit to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %ttl, ptr %hop_limit, align 1
  %daddr9 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i44, i32 0, i32 6
  %28 = call ptr @memcpy(ptr %daddr9, ptr %daddr, i32 16)
  %saddr10 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i44, i32 0, i32 5
  %29 = call ptr @memcpy(ptr %saddr10, ptr %saddr, i32 16)
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %30 = call ptr @memset(ptr %cb.i, i32 0, i32 24)
  %31 = load i32, ptr %len1.i, align 4
  %32 = load ptr, ptr %head.i, align 8
  %inner_network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %33 = ptrtoint ptr %inner_network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %inner_network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %34 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 %conv.i.i.i
  %35 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %sub.ptr.rhs.cast.i.i, %sub.ptr.lhs.cast.i.i
  %sub.i = add i32 %sub.ptr.sub.i.neg.i, %31
  %36 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %13, align 8
  %and.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

entry.skb_dst.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !22

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #5
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %entry.skb_dst.exit.i_crit_edge
  %38 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %13, align 8
  %and25.i.i = and i32 %39, -2
  %40 = inttoptr i32 %and25.i.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 127
  %43 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %nd_net.i.i, align 4
  %call4.i = tail call i32 @ip6_local_out(ptr noundef %44, ptr noundef %sk, ptr noundef %skb) #5
  %tobool.not.i45 = icmp eq ptr %dev, null
  br i1 %tobool.not.i45, label %skb_dst.exit.i.ip6tunnel_xmit.exit_crit_edge, label %if.then.i

skb_dst.exit.i.ip6tunnel_xmit.exit_crit_edge:     ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ip6tunnel_xmit.exit

if.then.i:                                        ; preds = %skb_dst.exit.i
  %45 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4.i, label %if.then.i.if.then16.i.i_crit_edge [
    i32 2, label %if.then.i.if.end.i_crit_edge
    i32 0, label %if.then.i.if.end.i_crit_edge46
  ]

if.then.i.if.end.i_crit_edge46:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i.if.then16.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end.i:                                         ; preds = %if.then.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %46 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %49, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !23
  %50 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 64
  %53 = ptrtoint ptr %52 to i32
  %54 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %59, %53
  %60 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %60, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %61 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i.i.i.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.u64_stats_update_begin.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.u64_stats_update_begin.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %u64_stats_update_begin.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %63, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !24
  %64 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i33.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i33.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %67
  %68 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %69, ptrtoint (ptr @lockdep_recursion to i32)
  %70 = inttoptr i32 %add.i.i.i.i to ptr
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !25
  %73 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i7.i.i.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %76, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool20.not.i.i.i.i = icmp eq i32 %72, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %u64_stats_update_begin.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %77 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.i.i.i.i = icmp eq i32 %80, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %u64_stats_update_begin.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %81 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i9.i.i.i.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %84, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !26
  %85 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %86
  %87 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %88, ptrtoint (ptr @hardirqs_enabled to i32)
  %89 = inttoptr i32 %add47.i.i.i.i to ptr
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %89, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  %92 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i12.i.i.i.i = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %95, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool54.not.i.i.i.i = icmp eq i32 %91, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %u64_stats_update_begin.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !28

land.rhs58.i.i.i.i.u64_stats_update_begin.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %u64_stats_update_begin.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 271, i32 noundef 9, ptr noundef null) #5
  br label %u64_stats_update_begin.exit.i.i

u64_stats_update_begin.exit.i.i:                  ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin.exit.i.i_crit_edge, %if.then.i.i.u64_stats_update_begin.exit.i.i_crit_edge
  %96 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %97, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !29
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %60, i32 0, i32 4, i32 0, i32 1
  %98 = tail call ptr @llvm.returnaddress(i32 0) #5
  %99 = ptrtoint ptr %98 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %99) #5
  %conv34.i.i = zext i32 %sub.i to i64
  %tx_bytes.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %60, i32 0, i32 3
  %100 = ptrtoint ptr %tx_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %tx_bytes.i.i, align 8
  %add6.i.i = add i64 %101, %conv34.i.i
  store i64 %add6.i.i, ptr %tx_bytes.i.i, align 8
  %tx_packets.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %60, i32 0, i32 2
  %102 = ptrtoint ptr %tx_packets.i.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %tx_packets.i.i, align 16
  %inc.i.i = add i64 %103, 1
  store i64 %inc.i.i, ptr %tx_packets.i.i, align 16
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %99) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !30
  %104 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %105, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !31
  %106 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i31.i.i = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i31.i.i to ptr
  %preempt_count.i.i32.i.i = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %preempt_count.i.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %preempt_count.i.i32.i.i, align 4
  %sub.i.i.i = add i32 %109, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i32.i.i, align 4
  br label %ip6tunnel_xmit.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp14.i.i = icmp slt i32 %sub.i, 0
  br i1 %cmp14.i.i, label %if.else.i.i.if.then16.i.i_crit_edge, label %if.else19.i.i

if.else.i.i.if.then16.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.then16.i.i:                                    ; preds = %if.else.i.i.if.then16.i.i_crit_edge, %if.then.i.if.then16.i.i_crit_edge
  %tx_errors.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %110 = ptrtoint ptr %tx_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tx_errors.i.i, align 4
  %inc17.i.i = add i32 %111, 1
  store i32 %inc17.i.i, ptr %tx_errors.i.i, align 4
  %tx_aborted_errors.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %112 = ptrtoint ptr %tx_aborted_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %tx_aborted_errors.i.i, align 4
  %inc18.i.i = add i32 %113, 1
  store i32 %inc18.i.i, ptr %tx_aborted_errors.i.i, align 4
  br label %ip6tunnel_xmit.exit

if.else19.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %tx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %114 = ptrtoint ptr %tx_dropped.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tx_dropped.i.i, align 4
  %inc20.i.i = add i32 %115, 1
  store i32 %inc20.i.i, ptr %tx_dropped.i.i, align 4
  br label %ip6tunnel_xmit.exit

ip6tunnel_xmit.exit:                              ; preds = %if.else19.i.i, %if.then16.i.i, %u64_stats_update_begin.exit.i.i, %skb_dst.exit.i.ip6tunnel_xmit.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp6_set_csum(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_local_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11}
!llvm.named.register.sp = !{!12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__ksymtab_udp_sock_create6, !1, !"__ksymtab_udp_sock_create6", i1 false, i1 false}
!1 = !{!"../net/ipv6/ip6_udp_tunnel.c", i32 74, i32 1}
!2 = !{ptr @__ksymtab_udp_tunnel6_xmit_skb, !3, !"__ksymtab_udp_tunnel6_xmit_skb", i1 false, i1 false}
!3 = !{!"../net/ipv6/ip6_udp_tunnel.c", i32 112, i32 1}
!4 = !{ptr @__UNIQUE_ID_file572, !5, !"__UNIQUE_ID_file572", i1 false, i1 false}
!5 = !{!"../net/ipv6/ip6_udp_tunnel.c", i32 114, i32 1}
!6 = !{ptr @__UNIQUE_ID_license573, !5, !"__UNIQUE_ID_license573", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{!"sp"}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 2157942816}
!24 = !{i64 2149865013}
!25 = !{i64 2149869945}
!26 = !{i64 2149891657}
!27 = !{i64 2149896549}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{i64 2149973006}
!30 = !{i64 2149973331}
!31 = !{i64 2157943872}
