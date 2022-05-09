; ModuleID = '/llk/IR_all_yes/net/mptcp/syncookies.c_pt.bc'
source_filename = "../net/mptcp/syncookies.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.join_entry = type { i32, i32, i32, i8, i8, i8, i8 }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.158 = type { i32 }
%struct.mptcp_subflow_request_sock = type { %struct.tcp_request_sock, i8, i8, i8, i64, i64, i32, i32, i64, i32, i32, ptr, %struct.hlist_nulls_node }
%struct.tcp_request_sock = type { %struct.inet_request_sock, ptr, i64, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.184 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.184 = type { %struct.anon.185 }
%struct.anon.185 = type { ptr, ptr }
%struct.hlist_nulls_node = type { ptr, ptr }
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
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
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
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.70, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
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

@join_entry_locks = internal global [1024 x %struct.spinlock] zeroinitializer, section ".data..cacheline_aligned", align 128
@join_entries = internal unnamed_addr global [1024 x %struct.join_entry] zeroinitializer, section ".data..cacheline_aligned", align 128
@mptcp_join_cookie_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&join_entry_locks[i]\00", [43 x i8] zeroinitializer }, align 32
@mptcp_join_entry_hash.mptcp_join_hash_secret = internal global i32 0, section ".data..read_mostly", align 4
@mptcp_join_entry_hash.___done = internal global i8 0, section ".data.once", align 1
@mptcp_join_entry_hash.___once_key = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 132, i32 3 }
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"___once_key\00", align 1
@___asan_gen_.8 = private constant [26 x i8] c"../net/mptcp/syncookies.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 44, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @mptcp_join_cookie_init.__key, ptr @.str, ptr @mptcp_join_entry_hash.___once_key], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_join_cookie_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_join_entry_hash.___once_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @subflow_init_req_cookie_join_save(ptr nocapture noundef readonly %subflow_req, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net = getelementptr inbounds %struct.sock_common, ptr %subflow_req, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net, align 4
  %call2 = tail call fastcc i32 @mptcp_join_entry_hash(ptr noundef %skb, ptr noundef %1)
  %arrayidx = getelementptr [1024 x %struct.spinlock], ptr @join_entry_locks, i32 0, i32 %call2
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #5
  %arrayidx3 = getelementptr [1024 x %struct.join_entry], ptr @join_entries, i32 0, i32 %call2
  %token.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %subflow_req, i32 0, i32 6
  %2 = ptrtoint ptr %token.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %token.i, align 8
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %arrayidx3, align 16
  %remote_nonce.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %subflow_req, i32 0, i32 10
  %5 = ptrtoint ptr %remote_nonce.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %remote_nonce.i, align 4
  %remote_nonce3.i = getelementptr [1024 x %struct.join_entry], ptr @join_entries, i32 0, i32 %call2, i32 1
  %7 = ptrtoint ptr %remote_nonce3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %remote_nonce3.i, align 4
  %local_nonce.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %subflow_req, i32 0, i32 9
  %8 = ptrtoint ptr %local_nonce.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %local_nonce.i, align 8
  %local_nonce4.i = getelementptr [1024 x %struct.join_entry], ptr @join_entries, i32 0, i32 %call2, i32 2
  %10 = ptrtoint ptr %local_nonce4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %local_nonce4.i, align 8
  %backup.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %subflow_req, i32 0, i32 1
  %11 = ptrtoint ptr %backup.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %backup.i, align 8
  %bf.lshr.i = lshr i8 %bf.load.i, 5
  %bf.clear.i = and i8 %bf.lshr.i, 1
  %backup5.i = getelementptr [1024 x %struct.join_entry], ptr @join_entries, i32 0, i32 %call2, i32 5
  %12 = ptrtoint ptr %backup5.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %bf.clear.i, ptr %backup5.i, align 2
  %remote_id.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %subflow_req, i32 0, i32 3
  %13 = ptrtoint ptr %remote_id.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %remote_id.i, align 2
  %join_id.i = getelementptr [1024 x %struct.join_entry], ptr @join_entries, i32 0, i32 %call2, i32 3
  %15 = ptrtoint ptr %join_id.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %join_id.i, align 4
  %local_id.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %subflow_req, i32 0, i32 2
  %16 = ptrtoint ptr %local_id.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %local_id.i, align 1
  %local_id6.i = getelementptr [1024 x %struct.join_entry], ptr @join_entries, i32 0, i32 %call2, i32 4
  %18 = ptrtoint ptr %local_id6.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %local_id6.i, align 1
  %valid.i = getelementptr [1024 x %struct.join_entry], ptr @join_entries, i32 0, i32 %call2, i32 6
  %19 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %valid.i, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mptcp_join_entry_hash(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %net) unnamed_addr #0 align 64 {
entry:
  %___flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @mptcp_join_entry_hash.___once_key, ptr blockaddress(@mptcp_join_entry_hash, %if.then)) #5
          to label %if.end14 [label %if.then], !srcloc !21

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags) #5
  %4 = ptrtoint ptr %___flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %___flags, align 4, !annotation !22
  %call4 = call zeroext i1 @__do_once_start(ptr noundef nonnull @mptcp_join_entry_hash.___done, ptr noundef nonnull %___flags) #5
  br i1 %call4, label %if.then13, label %if.then.if.end_crit_edge, !prof !23

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @get_random_bytes(ptr noundef nonnull @mptcp_join_entry_hash.mptcp_join_hash_secret, i32 noundef 4) #5
  call void @__do_once_done(ptr noundef nonnull @mptcp_join_entry_hash.___done, ptr noundef nonnull @mptcp_join_entry_hash.___once_key, ptr noundef nonnull %___flags, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags) #5
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %syn = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %syn to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %syn, align 4
  %cb22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %6 = ptrtoint ptr %cb22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cb22, align 8
  %8 = lshr i16 %bf.load, 1
  %9 = and i16 %8, 1
  %sext = add nsw i16 %9, -1
  %sub = sext i16 %sext to i32
  %seq.0 = add i32 %7, %sub
  %hash_mix.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 26
  %10 = ptrtoint ptr %hash_mix.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_mix.i, align 8
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i, align 4
  %conv = zext i16 %13 to i32
  %shl = shl nuw i32 %conv, 16
  %dest = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dest, align 2
  %conv27 = zext i16 %15 to i32
  %or = or i32 %shl, %conv27
  %16 = load i32, ptr @mptcp_join_entry_hash.mptcp_join_hash_secret, align 4
  %add1.i = add i32 %16, -559038725
  %add.i.i = add i32 %add1.i, %seq.0
  %add1.i.i = add i32 %add1.i, %11
  %add2.i.i = add i32 %add1.i, %or
  %xor.i.i = xor i32 %add2.i.i, %add1.i.i
  %or.i.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #5
  %sub.i.i = sub i32 %xor.i.i, %or.i.i.i
  %xor3.i.i = xor i32 %sub.i.i, %add.i.i
  %or.i52.i.i = call i32 @llvm.fshl.i32(i32 %sub.i.i, i32 %sub.i.i, i32 11) #5
  %sub5.i.i = sub i32 %xor3.i.i, %or.i52.i.i
  %xor6.i.i = xor i32 %sub5.i.i, %add1.i.i
  %or.i53.i.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i, i32 %sub5.i.i, i32 25) #5
  %sub8.i.i = sub i32 %xor6.i.i, %or.i53.i.i
  %xor9.i.i = xor i32 %sub8.i.i, %sub.i.i
  %or.i54.i.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i, i32 %sub8.i.i, i32 16) #5
  %sub11.i.i = sub i32 %xor9.i.i, %or.i54.i.i
  %xor12.i.i = xor i32 %sub11.i.i, %sub5.i.i
  %or.i55.i.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i, i32 %sub11.i.i, i32 4) #5
  %sub14.i.i = sub i32 %xor12.i.i, %or.i55.i.i
  %xor15.i.i = xor i32 %sub14.i.i, %sub8.i.i
  %or.i56.i.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i, i32 %sub14.i.i, i32 14) #5
  %sub17.i.i = sub i32 %xor15.i.i, %or.i56.i.i
  %xor18.i.i = xor i32 %sub17.i.i, %sub11.i.i
  %or.i57.i.i = lshr i32 %sub17.i.i, 8
  %sub20.i.i = sub i32 %xor18.i.i, %or.i57.i.i
  %rem = and i32 %sub20.i.i, 1023
  ret i32 %rem
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mptcp_token_join_cookie_init_state(ptr nocapture noundef %subflow_req, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net = getelementptr inbounds %struct.sock_common, ptr %subflow_req, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net, align 4
  %call2 = tail call fastcc i32 @mptcp_join_entry_hash(ptr noundef %skb, ptr noundef %1)
  %arrayidx = getelementptr [1024 x %struct.join_entry], ptr @join_entries, i32 0, i32 %call2
  %arrayidx3 = getelementptr [1024 x %struct.spinlock], ptr @join_entry_locks, i32 0, i32 %call2
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx3) #5
  %valid = getelementptr [1024 x %struct.join_entry], ptr @join_entries, i32 0, i32 %call2, i32 6
  %2 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %valid, align 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 16
  %call7 = tail call ptr @mptcp_token_get_sock(ptr noundef %1, i32 noundef %6) #5
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %remote_nonce = getelementptr [1024 x %struct.join_entry], ptr @join_entries, i32 0, i32 %call2, i32 1
  %7 = ptrtoint ptr %remote_nonce to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %remote_nonce, align 4
  %remote_nonce11 = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %subflow_req, i32 0, i32 10
  %9 = ptrtoint ptr %remote_nonce11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %remote_nonce11, align 4
  %local_nonce = getelementptr [1024 x %struct.join_entry], ptr @join_entries, i32 0, i32 %call2, i32 2
  %10 = ptrtoint ptr %local_nonce to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %local_nonce, align 8
  %local_nonce12 = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %subflow_req, i32 0, i32 9
  %12 = ptrtoint ptr %local_nonce12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %local_nonce12, align 8
  %backup = getelementptr [1024 x %struct.join_entry], ptr @join_entries, i32 0, i32 %call2, i32 5
  %13 = ptrtoint ptr %backup to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %backup, align 2
  %backup14 = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %subflow_req, i32 0, i32 1
  %15 = ptrtoint ptr %backup14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %backup14, align 8
  %bf.value = shl i8 %14, 5
  %bf.shl = and i8 %bf.value, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %backup14, align 8
  %join_id = getelementptr [1024 x %struct.join_entry], ptr @join_entries, i32 0, i32 %call2, i32 3
  %16 = ptrtoint ptr %join_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %join_id, align 4
  %remote_id = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %subflow_req, i32 0, i32 3
  %18 = ptrtoint ptr %remote_id to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %remote_id, align 2
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 16
  %token16 = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %subflow_req, i32 0, i32 6
  %21 = ptrtoint ptr %token16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %token16, align 8
  %msk17 = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %subflow_req, i32 0, i32 11
  %22 = ptrtoint ptr %msk17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7, ptr %msk17, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end10 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx3) #5
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mptcp_token_get_sock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_join_cookie_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  %arrayidx = getelementptr [1024 x %struct.spinlock], ptr @join_entry_locks, i32 0, i32 %i.03
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str, ptr noundef nonnull @mptcp_join_cookie_init.__key, i16 noundef signext 3) #5
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.end:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @mptcp_join_cookie_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/mptcp/syncookies.c", i32 132, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @join_entries, !4, !"join_entries", i1 false, i1 false}
!4 = !{!"../net/mptcp/syncookies.c", i32 35, i32 26}
!5 = !{ptr @join_entry_locks, !6, !"join_entry_locks", i1 false, i1 false}
!6 = !{!"../net/mptcp/syncookies.c", i32 36, i32 19}
!7 = !{ptr @mptcp_join_entry_hash.mptcp_join_hash_secret, !8, !"mptcp_join_hash_secret", i1 false, i1 false}
!8 = !{!"../net/mptcp/syncookies.c", i32 40, i32 13}
!9 = !{ptr @mptcp_join_entry_hash.___done, !10, !"___done", i1 false, i1 false}
!10 = !{!"../net/mptcp/syncookies.c", i32 44, i32 2}
!11 = !{ptr @mptcp_join_entry_hash.___once_key, !10, !"___once_key", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2148832724, i64 2148832729, i64 2148832750, i64 2148832794, i64 2148832828, i64 2148832849}
!22 = !{!"auto-init"}
!23 = !{!"branch_weights", i32 1, i32 2000}
