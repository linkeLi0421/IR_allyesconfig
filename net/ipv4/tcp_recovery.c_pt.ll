; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_recovery.c_pt.bc'
source_filename = "../net/ipv4/tcp_recovery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.189, %struct.anon.190, %struct.anon.191, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.187, %struct.anon.188, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.187 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.188 = type { i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.189 = type { i32, i32, i64 }
%struct.anon.190 = type { i32, i32, i64 }
%struct.anon.191 = type { i32, i32 }
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
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.70, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.70 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_ieee802154_lowpan = type { %struct.netns_sysctl_lowpan, ptr }
%struct.netns_sysctl_lowpan = type { ptr }
%struct.netns_sctp = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netns_nf = type { ptr, [13 x ptr], ptr, [5 x ptr], [5 x ptr], [3 x ptr], [5 x ptr], [7 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.nf_ip_net, i32 }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net, %struct.nf_dccp_net, %struct.nf_sctp_net, %struct.nf_gre_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8, i32 }
%struct.nf_udp_net = type { [2 x i32], i32 }
%struct.nf_icmp_net = type { i32 }
%struct.nf_dccp_net = type { i8, [10 x i32] }
%struct.nf_sctp_net = type { [10 x i32] }
%struct.nf_gre_net = type { %struct.list_head, [2 x i32] }
%struct.netns_nftables = type { i8 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.rate_sample = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }

@inet_csk_reset_xmit_timer.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcp_recovery\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"inet_csk_reset_xmit_timer\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"include/net/inet_connection_sock.h\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"reset_xmit_timer: sk=%p %d when=0x%lx, caller=%p\0A\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_ = private constant [27 x i8] c"../net/ipv4/tcp_recovery.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [38 x i8] c"../include/net/inet_connection_sock.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 223, i32 3 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tcp_rack_skb_timeout(ptr nocapture noundef readonly %tp, ptr nocapture noundef readonly %skb, i32 noundef %reo_wnd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rtt_us = getelementptr inbounds %struct.tcp_sock, ptr %tp, i32 0, i32 31, i32 1
  %0 = ptrtoint ptr %rtt_us to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rtt_us, align 8
  %add = add i32 %1, %reo_wnd
  %tcp_mstamp = getelementptr inbounds %struct.tcp_sock, ptr %tp, i32 0, i32 44
  %2 = ptrtoint ptr %tcp_mstamp to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tcp_mstamp, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  %7 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %6, i32 0) #11, !srcloc !18
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %7, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %7, 1
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %6, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #11, !srcloc !19
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %8, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub.i = sub i64 %3, %div1581.i.i.i
  %9 = tail call i64 @llvm.smax.i64(i64 %sub.i, i64 0) #8
  %10 = trunc i64 %9 to i32
  %sub = sub i32 %add, %10
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tcp_rack_mark_lost(ptr noundef %sk) local_unnamed_addr #1 align 64 {
entry:
  %timeout = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeout) #8
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %timeout, align 4, !annotation !20
  %advanced = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 31, i32 5
  %1 = ptrtoint ptr %advanced to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %advanced, align 1
  %2 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bf.clear4 = and i8 %bf.load, -3
  %3 = ptrtoint ptr %advanced to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.clear4, ptr %advanced, align 1
  call fastcc void @tcp_rack_detect_loss(ptr noundef %sk, ptr noundef nonnull %timeout)
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.else.i

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %5) #8
  %add = add i32 %call3.i, 2
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %timeout, align 4
  %icsk_rto = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 6
  %7 = ptrtoint ptr %icsk_rto to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %icsk_rto, align 4
  tail call fastcc void @inet_csk_reset_xmit_timer(ptr noundef %sk, i32 noundef 6, i32 noundef %add, i32 noundef %8)
  br label %if.end9

if.end9:                                          ; preds = %if.else.i, %if.end.if.end9_crit_edge
  %9 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10 = icmp ne i32 %10, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool10, %if.end9 ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeout) #8
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcp_rack_detect_loss(ptr noundef %sk, ptr nocapture noundef %reo_timeout) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reo_timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reo_timeout, align 4
  %reord_seen.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 59
  %1 = ptrtoint ptr %reord_seen.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reord_seen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end11.i_crit_edge

entry.if.end11.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then.i:                                        ; preds = %entry
  %icsk_ca_state.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 17
  %3 = ptrtoint ptr %icsk_ca_state.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %icsk_ca_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %bf.load.i)
  %cmp.i = icmp ugt i8 %bf.load.i, 23
  br i1 %cmp.i, label %if.then.i.tcp_rack_reo_wnd.exit_crit_edge, label %if.end.i

if.then.i.tcp_rack_reo_wnd.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcp_rack_reo_wnd.exit

if.end.i:                                         ; preds = %if.then.i
  %sacked_out.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 84
  %4 = ptrtoint ptr %sacked_out.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sacked_out.i, align 4
  %reordering.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 58
  %6 = ptrtoint ptr %reordering.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reordering.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp4.not.i = icmp ult i32 %5, %7
  br i1 %cmp4.not.i, label %if.end.i.if.end11.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %8 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i.i, align 4
  %sysctl_tcp_recovery.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 35, i32 76
  %10 = ptrtoint ptr %sysctl_tcp_recovery.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sysctl_tcp_recovery.i, align 8
  %12 = and i8 %11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not.i = icmp eq i8 %12, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.tcp_rack_reo_wnd.exit_crit_edge, label %land.lhs.true.i.if.end11.i_crit_edge

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

land.lhs.true.i.tcp_rack_reo_wnd.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcp_rack_reo_wnd.exit

if.end11.i:                                       ; preds = %land.lhs.true.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge, %entry.if.end11.i_crit_edge
  %v.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 50, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %v.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v.i.i.i, align 4
  %shr.i = lshr i32 %14, 2
  %reo_wnd_steps.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 31, i32 4
  %15 = ptrtoint ptr %reo_wnd_steps.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reo_wnd_steps.i, align 4
  %conv13.i = zext i8 %16 to i32
  %mul.i = mul i32 %shr.i, %conv13.i
  %srtt_us.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 45
  %17 = ptrtoint ptr %srtt_us.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %srtt_us.i, align 8
  %shr14.i = lshr i32 %18, 3
  %19 = tail call i32 @llvm.umin.i32(i32 %mul.i, i32 %shr14.i) #8
  br label %tcp_rack_reo_wnd.exit

tcp_rack_reo_wnd.exit:                            ; preds = %if.end11.i, %land.lhs.true.i.tcp_rack_reo_wnd.exit_crit_edge, %if.then.i.tcp_rack_reo_wnd.exit_crit_edge
  %retval.0.i = phi i32 [ %19, %if.end11.i ], [ 0, %if.then.i.tcp_rack_reo_wnd.exit_crit_edge ], [ 0, %land.lhs.true.i.tcp_rack_reo_wnd.exit_crit_edge ]
  %tsorted_sent_queue = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 24
  %20 = ptrtoint ptr %tsorted_sent_queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tsorted_sent_queue, align 8
  %cmp.not60 = icmp eq ptr %21, %tsorted_sent_queue
  br i1 %cmp.not60, label %tcp_rack_reo_wnd.exit.for.end_crit_edge, label %for.body.lr.ph

tcp_rack_reo_wnd.exit.for.end_crit_edge:          ; preds = %tcp_rack_reo_wnd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %tcp_rack_reo_wnd.exit
  %rack = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 31
  %end_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 31, i32 2
  %rtt_us.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 31, i32 1
  %tcp_mstamp.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn.in61 = phi ptr [ %21, %for.body.lr.ph ], [ %.pn64, %cleanup.for.body_crit_edge ]
  %skb.063 = getelementptr i8, ptr %.pn.in61, i32 -72
  %22 = ptrtoint ptr %.pn.in61 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn64 = load ptr, ptr %.pn.in61, align 8
  %sacked = getelementptr i8, ptr %.pn.in61, i32 -35
  %23 = ptrtoint ptr %sacked to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sacked, align 1
  %25 = and i8 %24, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %25)
  %26 = icmp eq i8 %25, 4
  br i1 %26, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %27 = ptrtoint ptr %rack to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rack, align 8
  %29 = getelementptr i8, ptr %.pn.in61, i32 -56
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %29, align 8
  %32 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %31, i32 0) #11, !srcloc !18
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %32, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %32, 1
  %33 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %31, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #11, !srcloc !19
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %33, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %div1581.i.i.i)
  %cmp.i51 = icmp ugt i64 %28, %div1581.i.i.i
  br i1 %cmp.i51, label %if.end.if.end16_crit_edge, label %lor.rhs.i

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

lor.rhs.i:                                        ; preds = %if.end
  %end_seq13 = getelementptr i8, ptr %.pn.in61, i32 -44
  %34 = ptrtoint ptr %end_seq13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %end_seq13, align 4
  %36 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %end_seq, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %div1581.i.i.i)
  %cmp1.i = icmp eq i64 %28, %div1581.i.i.i
  %sub.i.i = sub i32 %35, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  %or.cond57 = select i1 %cmp1.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond57, label %lor.rhs.i.if.end16_crit_edge, label %lor.rhs.i.for.end_crit_edge

lor.rhs.i.for.end_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.rhs.i.if.end16_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end16:                                         ; preds = %lor.rhs.i.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %38 = ptrtoint ptr %rtt_us.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rtt_us.i, align 8
  %add.i = add i32 %39, %retval.0.i
  %40 = ptrtoint ptr %tcp_mstamp.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %tcp_mstamp.i, align 8
  %sub.i.i52 = sub i64 %41, %div1581.i.i.i
  %42 = tail call i64 @llvm.smax.i64(i64 %sub.i.i52, i64 0) #8
  %43 = trunc i64 %42 to i32
  %sub.i = sub i32 %add.i, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp18 = icmp slt i32 %sub.i, 1
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end16
  tail call void @tcp_mark_skb_lost(ptr noundef %sk, ptr noundef %skb.063) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in61) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then20.list_del_init.exit_crit_edge

if.then20.list_del_init.exit_crit_edge:           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in61, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i, align 4
  %46 = ptrtoint ptr %.pn.in61 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %.pn.in61, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then20.list_del_init.exit_crit_edge
  %50 = ptrtoint ptr %.pn.in61 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %.pn.in61, ptr %.pn.in61, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in61, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %.pn.in61, ptr %prev.i3.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %reo_timeout to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reo_timeout, align 4
  %54 = tail call i32 @llvm.umax.i32(i32 %53, i32 %sub.i)
  %55 = ptrtoint ptr %reo_timeout to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %reo_timeout, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %list_del_init.exit, %for.body.cleanup_crit_edge
  %cmp.not = icmp eq ptr %.pn64, %tsorted_sent_queue
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.rhs.i.for.end_crit_edge, %tcp_rack_reo_wnd.exit.for.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @inet_csk_reset_xmit_timer(ptr noundef %sk, i32 noundef %what, i32 noundef %when, i32 noundef %max_when) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %when, i32 %max_when)
  %cmp = icmp ugt i32 %when, %max_when
  br i1 %cmp, label %do.body, label %entry.if.then13_crit_edge

entry.if.then13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inet_csk_reset_xmit_timer.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inet_csk_reset_xmit_timer, %__here)) #8
          to label %if.then13 [label %__here], !srcloc !21

__here:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @inet_csk_reset_xmit_timer.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.3, ptr noundef %sk, i32 noundef 6, i32 noundef %when, ptr noundef blockaddress(@inet_csk_reset_xmit_timer, %__here)) #8
  br label %if.then13

if.then13:                                        ; preds = %__here, %do.body, %entry.if.then13_crit_edge
  %when.addr.0 = phi i32 [ %when, %entry.if.then13_crit_edge ], [ %max_when, %__here ], [ %max_when, %do.body ]
  %icsk_pending = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 19
  %0 = ptrtoint ptr %icsk_pending to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 6, ptr %icsk_pending, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %1, %when.addr.0
  %icsk_timeout = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %icsk_timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %icsk_timeout, align 8
  %icsk_retransmit_timer = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 4
  tail call void @sk_reset_timer(ptr noundef %sk, ptr noundef %icsk_retransmit_timer, i32 noundef %add) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tcp_rack_advance(ptr nocapture noundef %tp, i8 noundef zeroext %sacked, i32 noundef %end_seq, i64 noundef %xmit_time) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tcp_mstamp = getelementptr inbounds %struct.tcp_sock, ptr %tp, i32 0, i32 44
  %0 = ptrtoint ptr %tcp_mstamp to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tcp_mstamp, align 8
  %sub.i = sub i64 %1, %xmit_time
  %2 = tail call i64 @llvm.smax.i64(i64 %sub.i, i64 0) #8
  %3 = trunc i64 %2 to i32
  %v.i.i = getelementptr inbounds %struct.tcp_sock, ptr %tp, i32 0, i32 50, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %v.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp = icmp ule i32 %5, %3
  %6 = and i8 %sacked, -110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rack = getelementptr inbounds %struct.tcp_sock, ptr %tp, i32 0, i32 31
  %advanced = getelementptr inbounds %struct.tcp_sock, ptr %tp, i32 0, i32 31, i32 5
  %7 = ptrtoint ptr %advanced to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %advanced, align 1
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, ptr %advanced, align 1
  %rtt_us3 = getelementptr inbounds %struct.tcp_sock, ptr %tp, i32 0, i32 31, i32 1
  %8 = ptrtoint ptr %rtt_us3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %rtt_us3, align 8
  %9 = ptrtoint ptr %rack to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rack, align 8
  %end_seq6 = getelementptr inbounds %struct.tcp_sock, ptr %tp, i32 0, i32 31, i32 2
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %xmit_time)
  %cmp.i = icmp ult i64 %10, %xmit_time
  br i1 %cmp.i, label %if.end.if.then8_crit_edge, label %lor.rhs.i

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

lor.rhs.i:                                        ; preds = %if.end
  %11 = ptrtoint ptr %end_seq6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end_seq6, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %xmit_time)
  %cmp1.i = icmp eq i64 %10, %xmit_time
  %sub.i.i = sub i32 %12, %end_seq
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  %or.cond26 = select i1 %cmp1.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond26, label %lor.rhs.i.if.then8_crit_edge, label %lor.rhs.i.cleanup_crit_edge

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs.i.if.then8_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then8:                                         ; preds = %lor.rhs.i.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %13 = ptrtoint ptr %rack to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %xmit_time, ptr %rack, align 8
  %14 = ptrtoint ptr %end_seq6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %end_seq, ptr %end_seq6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %lor.rhs.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_rack_reo_timeout(ptr noundef %sk) local_unnamed_addr #1 align 64 {
entry:
  %timeout = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeout) #8
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %timeout, align 4, !annotation !20
  %lost1 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 73
  %1 = ptrtoint ptr %lost1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lost1, align 8
  %packets_out.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 51
  %3 = ptrtoint ptr %packets_out.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %packets_out.i, align 4
  %sacked_out.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 84
  %5 = ptrtoint ptr %sacked_out.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sacked_out.i.i, align 4
  %lost_out.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 83
  %7 = ptrtoint ptr %lost_out.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lost_out.i.i, align 8
  %retrans_out.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 52
  %9 = ptrtoint ptr %retrans_out.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %retrans_out.i, align 8
  %11 = add i32 %6, %8
  %sub.i = sub i32 %4, %11
  %add.i = add i32 %sub.i, %10
  call fastcc void @tcp_rack_detect_loss(ptr noundef %sk, ptr noundef nonnull %timeout)
  %12 = ptrtoint ptr %packets_out.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %packets_out.i, align 4
  %14 = ptrtoint ptr %sacked_out.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sacked_out.i.i, align 4
  %16 = ptrtoint ptr %lost_out.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lost_out.i.i, align 8
  %18 = ptrtoint ptr %retrans_out.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %retrans_out.i, align 8
  %20 = add i32 %15, %17
  %sub.i34 = sub i32 %13, %20
  %add.i35 = add i32 %sub.i34, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add.i35)
  %cmp.not = icmp eq i32 %add.i, %add.i35
  br i1 %cmp.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then:                                          ; preds = %entry
  %icsk_ca_state = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 17
  %21 = ptrtoint ptr %icsk_ca_state to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %icsk_ca_state, align 4
  %bf.lshr.mask = and i8 %bf.load, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %bf.lshr.mask)
  %cmp5.not = icmp eq i8 %bf.lshr.mask, 24
  br i1 %cmp5.not, label %if.then.if.end11_crit_edge, label %if.then7

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then7:                                         ; preds = %if.then
  tail call void @tcp_enter_recovery(ptr noundef %sk, i1 noundef zeroext false) #8
  %icsk_ca_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 10
  %22 = ptrtoint ptr %icsk_ca_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %icsk_ca_ops, align 4
  %cong_control = getelementptr inbounds %struct.tcp_congestion_ops, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %cong_control to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cong_control, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %if.then9, label %if.then7.if.end11_crit_edge

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %lost1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lost1, align 8
  %sub = sub i32 %27, %2
  tail call void @tcp_cwnd_reduction(ptr noundef %sk, i32 noundef 1, i32 noundef %sub, i32 noundef 0) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then7.if.end11_crit_edge, %if.then.if.end11_crit_edge
  tail call void @tcp_xmit_retransmit_queue(ptr noundef %sk) #8
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %entry.if.end12_crit_edge
  %icsk_pending = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 19
  %28 = ptrtoint ptr %icsk_pending to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %icsk_pending, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp15.not = icmp eq i8 %29, 1
  br i1 %cmp15.not, label %if.end12.if.end18_crit_edge, label %if.then17

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @tcp_rearm_rto(ptr noundef %sk) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end12.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeout) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_enter_recovery(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_cwnd_reduction(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_xmit_retransmit_queue(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_rearm_rto(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tcp_rack_update_reo_wnd(ptr nocapture noundef %sk, ptr nocapture noundef readonly %rs) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_recovery = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 76
  %2 = ptrtoint ptr %sysctl_tcp_recovery to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sysctl_tcp_recovery, align 8
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %prior_delivered = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 1
  %5 = ptrtoint ptr %prior_delivered to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prior_delivered, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %last_delivered = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 31, i32 3
  %7 = ptrtoint ptr %last_delivered to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_delivered, align 8
  %sub.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dsack_seen = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 31, i32 5
  %9 = ptrtoint ptr %dsack_seen to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %dsack_seen, align 1
  %bf.clear = and i8 %bf.load, -5
  store i8 %bf.clear, ptr %dsack_seen, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %dsack_seen9 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 31, i32 5
  %10 = ptrtoint ptr %dsack_seen9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load10 = load i8, ptr %dsack_seen9, align 1
  %11 = and i8 %bf.load10, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not = icmp eq i8 %11, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %reo_wnd_steps = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 31, i32 4
  %12 = ptrtoint ptr %reo_wnd_steps to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reo_wnd_steps, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp = icmp eq i8 %13, -1
  %add = add i8 %13, 1
  %cond = select i1 %cmp, i8 -1, i8 %add
  %14 = ptrtoint ptr %reo_wnd_steps to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %cond, ptr %reo_wnd_steps, align 4
  %delivered = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %15 = ptrtoint ptr %delivered to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delivered, align 8
  %17 = ptrtoint ptr %last_delivered to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %last_delivered, align 8
  %bf.clear29 = and i8 %bf.load10, 3
  %bf.set30 = or i8 %bf.clear29, -128
  %18 = ptrtoint ptr %dsack_seen9 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %bf.set30, ptr %dsack_seen9, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %bf.load10)
  %tobool35.not = icmp ult i8 %bf.load10, 8
  br i1 %tobool35.not, label %if.then36, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %reo_wnd_steps38 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 31, i32 4
  %19 = ptrtoint ptr %reo_wnd_steps38 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %reo_wnd_steps38, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.else.cleanup_crit_edge, %if.then13, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_newreno_mark_lost(ptr noundef %sk, i1 noundef zeroext %snd_una_advanced) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_state = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 17
  %0 = ptrtoint ptr %icsk_ca_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %icsk_ca_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %bf.load)
  %cmp = icmp ult i8 %bf.load, 24
  br i1 %cmp, label %land.lhs.true, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %sacked_out = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 84
  %1 = ptrtoint ptr %sacked_out to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sacked_out, align 4
  %reordering = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 58
  %3 = ptrtoint ptr %reordering to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reordering, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp3.not = icmp ult i32 %2, %4
  br i1 %cmp3.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %bf.lshr.mask = and i8 %bf.load, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %bf.lshr.mask)
  %cmp6 = icmp eq i8 %bf.lshr.mask, 24
  %5 = and i1 %cmp6, %snd_una_advanced
  br i1 %5, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.cleanup26_crit_edge

lor.lhs.false.cleanup26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup26

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %6 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 25
  %call.i = tail call ptr @rb_first(ptr noundef %6) #8
  %sacked = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 13
  %7 = ptrtoint ptr %sacked to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sacked, align 1
  %9 = and i8 %8, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %if.end, label %if.then.cleanup26_crit_edge

if.then.cleanup26_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup26

if.end:                                           ; preds = %if.then
  %tcp_gso_size.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 10
  %10 = ptrtoint ptr %tcp_gso_size.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tcp_gso_size.i, align 2
  %conv.i = zext i16 %11 to i32
  %12 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %14)
  %cmp16 = icmp ugt i16 %14, 1
  br i1 %cmp16, label %land.lhs.true18, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true18:                                  ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv.i)
  %cmp19 = icmp ugt i32 %16, %conv.i
  br i1 %cmp19, label %if.then21, label %land.lhs.true18.if.end23_crit_edge

land.lhs.true18.if.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then21:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 @tcp_fragment(ptr noundef %sk, i32 noundef 1, ptr noundef %call.i, i32 noundef %conv.i, i32 noundef %conv.i, i32 noundef 2592) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true18.if.end23_crit_edge, %if.end.if.end23_crit_edge
  tail call void @tcp_mark_skb_lost(ptr noundef %sk, ptr noundef %call.i) #8
  br label %cleanup26

cleanup26:                                        ; preds = %if.end23, %if.then.cleanup26_crit_edge, %lor.lhs.false.cleanup26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_fragment(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_mark_skb_lost(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_reset_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../include/net/inet_connection_sock.h", i32 223, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @inet_csk_reset_xmit_timer.__UNIQUE_ID_ddebug462, !1, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/net/inet_connection_sock.h", i32 238, i32 3}
!8 = distinct !{null, !7, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 1277228, i64 1277255, i64 1277277, i64 1277305}
!19 = !{i64 1277636, i64 1277663, i64 1277696, i64 1277717, i64 1277744, i64 1277770}
!20 = !{!"auto-init"}
!21 = !{i64 2148854053, i64 2148854058, i64 2148854071, i64 2148854115, i64 2148854149, i64 2148854170}
