; ModuleID = '/llk/IR_all_yes/net/sctp/bind_addr.c_pt.bc'
source_filename = "../net/sctp/bind_addr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.sctp_sockaddr_entry = type { %struct.list_head, %struct.callback_head, %union.sctp_addr, i8, i8 }
%struct.callback_head = type { ptr, ptr }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.106 }
%union.anon.106 = type { [4 x i32] }
%struct.sctp_af = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, ptr, i16, %struct.list_head }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.151, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.151 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.92, i32, %struct.spinlock }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { ptr, ptr }
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
%union.sctp_addr_param = type { %struct.sctp_ipv6addr_param }
%struct.sctp_ipv6addr_param = type { %struct.sctp_paramhdr, %struct.in6_addr }
%struct.sctp_paramhdr = type { i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sctp_sock = type { %struct.inet_sock, i32, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i32, %struct.sctp_rtoinfo, %struct.sctp_paddrparams, %struct.sctp_assocparams, i16, %struct.sctp_initmsg, i32, i32, i32, i32, i16, %struct.atomic_t, %struct.sk_buff_head, %struct.list_head, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.142, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.143, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.144, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.138, [0 x i32], %union.anon.139, i16, i16, %union.anon.140, %struct.refcount_struct, [0 x i32], %union.anon.141 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.138 = type { i32 }
%union.anon.139 = type { %struct.hlist_node }
%union.anon.140 = type { i32 }
%union.anon.141 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.142 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.143 = type { ptr }
%union.anon.144 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.149 }
%union.anon.149 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sctp_rtoinfo = type { i32, i32, i32, i32 }
%struct.sctp_paddrparams = type <{ i32, %struct.__kernel_sockaddr_storage, i32, i16, i32, i32, i32, i32, i8, i8 }>
%struct.__kernel_sockaddr_storage = type { %union.anon.174 }
%union.anon.174 = type { ptr, [124 x i8] }
%struct.sctp_assocparams = type { i32, i16, i16, i32, i32, i32 }
%struct.sctp_initmsg = type { i16, i16, i16, i16 }
%struct.sctp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }

@sctp_dbg_objcnt_addr = external dso_local global %struct.atomic_t, align 4
@sctp_bind_addr_match.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/sctp/bind_addr.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@sctp_bind_addrs_check.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sctp_bind_addrs_check.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sctp_bind_addr_conflict.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sctp_bind_addr_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.11 = private constant [24 x i8] c"../net/sctp/bind_addr.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 315, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 695, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 723, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_bind_addr_copy(ptr noundef %net, ptr noundef %dest, ptr noundef readonly %src, i32 noundef %scope, i32 noundef %gfp, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %src, align 4
  %2 = ptrtoint ptr %dest to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %dest, align 4
  %address_list = getelementptr inbounds %struct.sctp_bind_addr, ptr %src, i32 0, i32 1
  %3 = ptrtoint ptr %address_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %addr.067 = load ptr, ptr %address_list, align 4
  %cmp.not68 = icmp eq ptr %addr.067, %address_list
  br i1 %cmp.not68, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond:                                         ; preds = %for.body
  %4 = ptrtoint ptr %addr.069 to i32
  call void @__asan_load4_noabort(i32 %4)
  %addr.0 = load ptr, ptr %addr.069, align 4
  %cmp.not = icmp eq ptr %addr.0, %address_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %addr.069 = phi ptr [ %addr.0, %for.cond.for.body_crit_edge ], [ %addr.067, %entry.for.body_crit_edge ]
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.069, i32 0, i32 2
  %call = tail call fastcc i32 @sctp_copy_one_addr(ptr noundef %net, ptr noundef %dest, ptr noundef %a, i32 noundef %scope, i32 noundef %gfp, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %for.body.if.then38_crit_edge, label %for.cond

for.body.if.then38_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %error.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call, %for.cond.for.end_crit_edge ]
  %address_list9 = getelementptr inbounds %struct.sctp_bind_addr, ptr %dest, i32 0, i32 1
  %5 = ptrtoint ptr %address_list9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %address_list9, align 4
  %cmp.i = icmp eq ptr %6, %address_list9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scope)
  %cmp11 = icmp eq i32 %scope, 0
  %or.cond = and i1 %cmp11, %cmp.i
  br i1 %or.cond, label %for.cond18.preheader, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond18.preheader:                             ; preds = %for.end
  %7 = ptrtoint ptr %address_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %addr.170 = load ptr, ptr %address_list, align 4
  %cmp21.not71 = icmp eq ptr %addr.170, %address_list
  br i1 %cmp21.not71, label %for.cond18.preheader.out_crit_edge, label %for.cond18.preheader.for.body23_crit_edge

for.cond18.preheader.for.body23_crit_edge:        ; preds = %for.cond18.preheader
  br label %for.body23

for.cond18.preheader.out_crit_edge:               ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond18:                                       ; preds = %for.body23
  %8 = ptrtoint ptr %addr.172 to i32
  call void @__asan_load4_noabort(i32 %8)
  %addr.1 = load ptr, ptr %addr.172, align 4
  %cmp21.not = icmp eq ptr %addr.1, %address_list
  br i1 %cmp21.not, label %for.cond18.out_crit_edge, label %for.cond18.for.body23_crit_edge

for.cond18.for.body23_crit_edge:                  ; preds = %for.cond18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body23

for.cond18.out_crit_edge:                         ; preds = %for.cond18
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body23:                                       ; preds = %for.cond18.for.body23_crit_edge, %for.cond18.preheader.for.body23_crit_edge
  %addr.172 = phi ptr [ %addr.1, %for.cond18.for.body23_crit_edge ], [ %addr.170, %for.cond18.preheader.for.body23_crit_edge ]
  %a24 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.172, i32 0, i32 2
  %call25 = tail call fastcc i32 @sctp_copy_one_addr(ptr noundef %net, ptr noundef %dest, ptr noundef %a24, i32 noundef 2, i32 noundef %gfp, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %for.body23.if.then38_crit_edge, label %for.cond18

for.body23.if.then38_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

out:                                              ; preds = %for.cond18.out_crit_edge, %for.cond18.preheader.out_crit_edge, %for.end.out_crit_edge
  %error.2 = phi i32 [ %error.0.lcssa, %for.end.out_crit_edge ], [ %error.0.lcssa, %for.cond18.preheader.out_crit_edge ], [ %call25, %for.cond18.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.2)
  %tobool37.not = icmp eq i32 %error.2, 0
  br i1 %tobool37.not, label %out.if.end39_crit_edge, label %out.if.then38_crit_edge

out.if.then38_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

out.if.end39_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then38:                                        ; preds = %out.if.then38_crit_edge, %for.body23.if.then38_crit_edge, %for.body.if.then38_crit_edge
  %error.262 = phi i32 [ %error.2, %out.if.then38_crit_edge ], [ %call25, %for.body23.if.then38_crit_edge ], [ %call, %for.body.if.then38_crit_edge ]
  %address_list.i = getelementptr inbounds %struct.sctp_bind_addr, ptr %dest, i32 0, i32 1
  %9 = ptrtoint ptr %address_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %address_list.i, align 4
  %cmp.not24.i = icmp eq ptr %10, %address_list.i
  br i1 %cmp.not24.i, label %if.then38.if.end39_crit_edge, label %if.then38.for.body.i_crit_edge

if.then38.for.body.i_crit_edge:                   ; preds = %if.then38
  br label %for.body.i

if.then38.if.end39_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then38.for.body.i_crit_edge
  %addr.025.i = phi ptr [ %temp.027.i, %if.end.i.for.body.i_crit_edge ], [ %10, %if.then38.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %addr.025.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %temp.027.i = load ptr, ptr %addr.025.i, align 4
  %call.i.i22.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %addr.025.i) #10
  br i1 %call.i.i22.i, label %if.end.i.i.i, label %for.body.i.list_del_rcu.exit.i_crit_edge

for.body.i.list_del_rcu.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %addr.025.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %addr.025.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr.025.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %for.body.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %addr.025.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tobool.not.i = icmp eq ptr %addr.025.i, null
  br i1 %tobool.not.i, label %list_del_rcu.exit.i.if.end.i_crit_edge, label %do.end.i

list_del_rcu.exit.i.if.end.i_crit_edge:           ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %rcu.i = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.025.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %list_del_rcu.exit.i.if.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sctp_dbg_objcnt_addr, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull @sctp_dbg_objcnt_addr, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sctp_dbg_objcnt_addr, ptr nonnull @sctp_dbg_objcnt_addr, i32 1, ptr nonnull elementtype(i32) @sctp_dbg_objcnt_addr) #10, !srcloc !29
  %cmp.not.i = icmp eq ptr %temp.027.i, %address_list.i
  br i1 %cmp.not.i, label %if.end.i.if.end39_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i.if.end39_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.end39:                                         ; preds = %if.end.i.if.end39_crit_edge, %if.then38.if.end39_crit_edge, %out.if.end39_crit_edge
  %error.263 = phi i32 [ 0, %out.if.end39_crit_edge ], [ %error.262, %if.then38.if.end39_crit_edge ], [ %error.262, %if.end.i.if.end39_crit_edge ]
  ret i32 %error.263
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_copy_one_addr(ptr noundef %net, ptr noundef %dest, ptr noundef %addr, i32 noundef %scope, i32 noundef %gfp, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 4
  %call.i = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %1) #10
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %entry.if.else_crit_edge, label %sctp_is_any.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

sctp_is_any.exit:                                 ; preds = %entry
  %is_any.i = getelementptr inbounds %struct.sctp_af, ptr %call.i, i32 0, i32 15
  %2 = ptrtoint ptr %is_any.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %is_any.i, align 4
  %call8.i = tail call i32 %3(ptr noundef %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not = icmp eq i32 %call8.i, 0
  br i1 %tobool.not, label %sctp_is_any.exit.if.else_crit_edge, label %if.then

sctp_is_any.exit.if.else_crit_edge:               ; preds = %sctp_is_any.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %sctp_is_any.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @sctp_copy_local_addr_list(ptr noundef %net, ptr noundef %dest, i32 noundef %scope, i32 noundef %gfp, i32 noundef %flags) #10
  br label %if.end23

if.else:                                          ; preds = %sctp_is_any.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 4
  %call.i.i = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %5) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.else.if.end23_crit_edge, label %sctp_scope.exit.i

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

sctp_scope.exit.i:                                ; preds = %if.else
  %scope.i.i = getelementptr inbounds %struct.sctp_af, ptr %call.i.i, i32 0, i32 13
  %6 = ptrtoint ptr %scope.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scope.i.i, align 4
  %call1.i.i = tail call i32 %7(ptr noundef %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1.i.i)
  %cmp.i = icmp eq i32 %call1.i.i, 4
  br i1 %cmp.i, label %sctp_scope.exit.i.if.end23_crit_edge, label %if.end.i

sctp_scope.exit.i.if.end23_crit_edge:             ; preds = %sctp_scope.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end.i:                                         ; preds = %sctp_scope.exit.i
  %scope_policy.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 43
  %8 = ptrtoint ptr %scope_policy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scope_policy.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end.i.if.end23_crit_edge [
    i32 0, label %if.end.i.if.then4_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb5.i
    i32 3, label %sw.bb10.i
  ]

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.end.i.if.end23_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i, i32 %scope)
  %cmp2.not.i = icmp ugt i32 %call1.i.i, %scope
  br i1 %cmp2.not.i, label %sw.bb1.i.if.end23_crit_edge, label %sw.bb1.i.if.then4_crit_edge

sw.bb1.i.if.then4_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

sw.bb1.i.if.end23_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i, i32 %scope)
  %cmp6.not.i = icmp ule i32 %call1.i.i, %scope
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i.i)
  %cmp7.i = icmp eq i32 %call1.i.i, 1
  %or.cond.i = or i1 %cmp6.not.i, %cmp7.i
  br i1 %or.cond.i, label %sw.bb5.i.if.then4_crit_edge, label %sw.bb5.i.if.end23_crit_edge

sw.bb5.i.if.end23_crit_edge:                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

sw.bb5.i.if.then4_crit_edge:                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

sw.bb10.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i, i32 %scope)
  %cmp11.not.i = icmp ule i32 %call1.i.i, %scope
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1.i.i)
  %cmp13.i = icmp eq i32 %call1.i.i, 2
  %or.cond23.i = or i1 %cmp11.not.i, %cmp13.i
  br i1 %or.cond23.i, label %sw.bb10.i.if.then4_crit_edge, label %sw.bb10.i.if.end23_crit_edge

sw.bb10.i.if.end23_crit_edge:                     ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

sw.bb10.i.if.then4_crit_edge:                     ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.then4:                                         ; preds = %sw.bb10.i.if.then4_crit_edge, %sw.bb5.i.if.then4_crit_edge, %sw.bb1.i.if.then4_crit_edge, %if.end.i.if.then4_crit_edge
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %12)
  %cmp = icmp ne i16 %12, 2
  %13 = and i32 %flags, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %14 = icmp ne i32 %13, 5
  %15 = or i1 %14, %cmp
  br i1 %15, label %lor.lhs.false, label %if.then4.if.then20_crit_edge

if.then4.if.then20_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %12)
  %cmp12 = icmp ne i16 %12, 10
  %16 = and i32 %flags, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %16)
  %17 = icmp ne i32 %16, 10
  %18 = or i1 %17, %cmp12
  br i1 %18, label %lor.lhs.false.if.end23_crit_edge, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.then4.if.then20_crit_edge
  %call21 = tail call i32 @sctp_add_bind_addr(ptr noundef %dest, ptr noundef %addr, i32 noundef 28, i8 noundef zeroext 1, i32 noundef %gfp)
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %lor.lhs.false.if.end23_crit_edge, %sw.bb10.i.if.end23_crit_edge, %sw.bb5.i.if.end23_crit_edge, %sw.bb1.i.if.end23_crit_edge, %if.end.i.if.end23_crit_edge, %sctp_scope.exit.i.if.end23_crit_edge, %if.else.if.end23_crit_edge, %if.then
  %error.0 = phi i32 [ %call1, %if.then ], [ %call21, %if.then20 ], [ 0, %lor.lhs.false.if.end23_crit_edge ], [ 0, %if.else.if.end23_crit_edge ], [ 0, %sctp_scope.exit.i.if.end23_crit_edge ], [ 0, %sw.bb10.i.if.end23_crit_edge ], [ 0, %sw.bb5.i.if.end23_crit_edge ], [ 0, %sw.bb1.i.if.end23_crit_edge ], [ 0, %if.end.i.if.end23_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_bind_addr_dup(ptr noundef %dest, ptr noundef readonly %src, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %src, align 4
  %2 = ptrtoint ptr %dest to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %dest, align 4
  %address_list = getelementptr inbounds %struct.sctp_bind_addr, ptr %src, i32 0, i32 1
  %3 = ptrtoint ptr %address_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %addr.015 = load ptr, ptr %address_list, align 4
  %cmp.not16 = icmp eq ptr %addr.015, %address_list
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond:                                         ; preds = %for.body
  %4 = ptrtoint ptr %addr.017 to i32
  call void @__asan_load4_noabort(i32 %4)
  %addr.0 = load ptr, ptr %addr.017, align 4
  %cmp.not = icmp eq ptr %addr.0, %address_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %addr.017 = phi ptr [ %addr.0, %for.cond.for.body_crit_edge ], [ %addr.015, %entry.for.body_crit_edge ]
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.017, i32 0, i32 2
  %call = tail call i32 @sctp_add_bind_addr(ptr noundef %dest, ptr noundef %a, i32 noundef 28, i8 noundef zeroext 1, i32 noundef %gfp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %error.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ %call, %for.cond.for.end_crit_edge ]
  ret i32 %error.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_add_bind_addr(ptr noundef %bp, ptr nocapture noundef readonly %new, i32 noundef %new_size, i8 noundef zeroext %addr_state, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !30

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 48) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %call7.i.i, i32 0, i32 2
  %2 = tail call i32 @llvm.umin.i32(i32 %new_size, i32 28)
  %3 = call ptr @memcpy(ptr %a, ptr %new, i32 %2)
  %sin_port = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sin_port, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool2.not = icmp eq i16 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %bp to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bp, align 4
  %8 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %sin_port, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %state = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %addr_state, ptr %state, align 4
  %valid = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %valid, align 1
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %address_list = getelementptr inbounds %struct.sctp_bind_addr, ptr %bp, i32 0, i32 1
  %prev.i18 = getelementptr inbounds %struct.sctp_bind_addr, ptr %bp, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i18, align 4
  %call.i.i19 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %14, ptr noundef %address_list) #10
  br i1 %call.i.i19, label %if.end.i.i, label %if.end6.list_add_tail_rcu.exit_crit_edge

if.end6.list_add_tail_rcu.exit_crit_edge:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %address_list, ptr %call7.i.i, align 8
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %prev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !31
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i.i, ptr %14, align 4
  %18 = ptrtoint ptr %prev.i18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %prev.i18, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %if.end6.list_add_tail_rcu.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sctp_dbg_objcnt_addr, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull @sctp_dbg_objcnt_addr, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sctp_dbg_objcnt_addr, ptr nonnull @sctp_dbg_objcnt_addr, i32 1, ptr nonnull elementtype(i32) @sctp_dbg_objcnt_addr) #10, !srcloc !32
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail_rcu.exit, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail_rcu.exit ], [ -12, %kzalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_bind_addr_init(ptr noundef %bp, i16 noundef zeroext %port) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %address_list = getelementptr inbounds %struct.sctp_bind_addr, ptr %bp, i32 0, i32 1
  %0 = ptrtoint ptr %address_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %address_list, ptr %address_list, align 4
  %prev.i = getelementptr inbounds %struct.sctp_bind_addr, ptr %bp, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %address_list, ptr %prev.i, align 4
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %port, ptr %bp, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_bind_addr_free(ptr noundef readonly %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %address_list.i = getelementptr inbounds %struct.sctp_bind_addr, ptr %bp, i32 0, i32 1
  %0 = ptrtoint ptr %address_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %address_list.i, align 4
  %cmp.not24.i = icmp eq ptr %1, %address_list.i
  br i1 %cmp.not24.i, label %entry.sctp_bind_addr_clean.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.sctp_bind_addr_clean.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sctp_bind_addr_clean.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %addr.025.i = phi ptr [ %temp.027.i, %if.end.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %addr.025.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %temp.027.i = load ptr, ptr %addr.025.i, align 4
  %call.i.i22.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %addr.025.i) #10
  br i1 %call.i.i22.i, label %if.end.i.i.i, label %for.body.i.list_del_rcu.exit.i_crit_edge

for.body.i.list_del_rcu.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %addr.025.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %addr.025.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr.025.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %for.body.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %addr.025.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tobool.not.i = icmp eq ptr %addr.025.i, null
  br i1 %tobool.not.i, label %list_del_rcu.exit.i.if.end.i_crit_edge, label %do.end.i

list_del_rcu.exit.i.if.end.i_crit_edge:           ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %rcu.i = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.025.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %list_del_rcu.exit.i.if.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sctp_dbg_objcnt_addr, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull @sctp_dbg_objcnt_addr, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sctp_dbg_objcnt_addr, ptr nonnull @sctp_dbg_objcnt_addr, i32 1, ptr nonnull elementtype(i32) @sctp_dbg_objcnt_addr) #10, !srcloc !29
  %cmp.not.i = icmp eq ptr %temp.027.i, %address_list.i
  br i1 %cmp.not.i, label %if.end.i.sctp_bind_addr_clean.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i.sctp_bind_addr_clean.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sctp_bind_addr_clean.exit

sctp_bind_addr_clean.exit:                        ; preds = %if.end.i.sctp_bind_addr_clean.exit_crit_edge, %entry.sctp_bind_addr_clean.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_del_bind_addr(ptr noundef readonly %bp, ptr noundef %del_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %address_list = getelementptr inbounds %struct.sctp_bind_addr, ptr %bp, i32 0, i32 1
  %0 = ptrtoint ptr %address_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %address_list, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %addr.0 = phi ptr [ %1, %entry ], [ %temp.0, %for.body.for.cond_crit_edge ]
  %cmp.not = icmp eq ptr %addr.0, %address_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %2 = ptrtoint ptr %addr.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %temp.0 = load ptr, ptr %addr.0, align 4
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.0, i32 0, i32 2
  %call = tail call i32 @sctp_cmp_addr_exact(ptr noundef %a, ptr noundef %del_addr) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %if.then

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  %valid = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.0, i32 0, i32 4
  %3 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %valid, align 1
  %call.i.i32 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %addr.0) #10
  br i1 %call.i.i32, label %if.end.i.i, label %if.then.list_del_rcu.exit_crit_edge

if.then.list_del_rcu.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %addr.0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %addr.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %addr.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool15.not = icmp eq ptr %addr.0, null
  br i1 %tobool15.not, label %list_del_rcu.exit.if.end18_crit_edge, label %do.end

list_del_rcu.exit.if.end18_crit_edge:             ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end:                                           ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rcu = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.0, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 8 to ptr)) #10
  br label %if.end18

if.end18:                                         ; preds = %do.end, %list_del_rcu.exit.if.end18_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sctp_dbg_objcnt_addr, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull @sctp_dbg_objcnt_addr, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sctp_dbg_objcnt_addr, ptr nonnull @sctp_dbg_objcnt_addr, i32 1, ptr nonnull elementtype(i32) @sctp_dbg_objcnt_addr) #10, !srcloc !29
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_cmp_addr_exact(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_bind_addrs_to_raw(ptr noundef readonly %bp, ptr nocapture noundef writeonly %addrs_len, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  %rawaddr = alloca %union.sctp_addr_param, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rawaddr) #10
  %address_list = getelementptr inbounds %struct.sctp_bind_addr, ptr %bp, i32 0, i32 1
  %0 = call ptr @memset(ptr %rawaddr, i32 255, i32 20)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %pos.0.in = phi ptr [ %address_list, %entry ], [ %pos.0, %for.cond.for.cond_crit_edge ]
  %len.0 = phi i32 [ 0, %entry ], [ %add, %for.cond.for.cond_crit_edge ]
  %1 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %pos.0 = load ptr, ptr %pos.0.in, align 4
  %cmp.i41.not = icmp eq ptr %pos.0, %address_list
  %add = add i32 %len.0, 20
  br i1 %cmp.i41.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %len.0)
  %cmp = icmp eq i32 %len.0, 20
  br i1 %cmp, label %for.end.end_raw_crit_edge, label %if.end8.i

for.end.end_raw_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %end_raw

if.end8.i:                                        ; preds = %for.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len.0, i32 noundef %gfp) #14
  %tobool4.not = icmp eq ptr %call9.i, null
  br i1 %tobool4.not, label %if.end8.i.end_raw_crit_edge, label %for.cond9.preheader

if.end8.i.end_raw_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %end_raw

for.cond9.preheader:                              ; preds = %if.end8.i
  %2 = ptrtoint ptr %address_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %addr.042 = load ptr, ptr %address_list, align 4
  %cmp11.not43 = icmp eq ptr %addr.042, %address_list
  br i1 %cmp11.not43, label %for.cond9.preheader.end_raw_crit_edge, label %for.cond9.preheader.for.body13_crit_edge

for.cond9.preheader.for.body13_crit_edge:         ; preds = %for.cond9.preheader
  br label %for.body13

for.cond9.preheader.end_raw_crit_edge:            ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %end_raw

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.cond9.preheader.for.body13_crit_edge
  %addr.046 = phi ptr [ %addr.0, %for.body13.for.body13_crit_edge ], [ %addr.042, %for.cond9.preheader.for.body13_crit_edge ]
  %addrparms.sroa.0.045 = phi ptr [ %add.ptr17, %for.body13.for.body13_crit_edge ], [ %call9.i, %for.cond9.preheader.for.body13_crit_edge ]
  %addrparms_len.044 = phi i32 [ %add18, %for.body13.for.body13_crit_edge ], [ 0, %for.cond9.preheader.for.body13_crit_edge ]
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.046, i32 0, i32 2
  %3 = ptrtoint ptr %a to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %a, align 4
  %call14 = call ptr @sctp_get_af_specific(i16 noundef zeroext %4) #10
  %to_addr_param = getelementptr inbounds %struct.sctp_af, ptr %call14, i32 0, i32 11
  %5 = ptrtoint ptr %to_addr_param to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %to_addr_param, align 4
  %call16 = call i32 %6(ptr noundef %a, ptr noundef nonnull %rawaddr) #10
  %7 = call ptr @memcpy(ptr %addrparms.sroa.0.045, ptr %rawaddr, i32 %call16)
  %add.ptr17 = getelementptr i8, ptr %addrparms.sroa.0.045, i32 %call16
  %add18 = add i32 %call16, %addrparms_len.044
  %8 = ptrtoint ptr %addr.046 to i32
  call void @__asan_load4_noabort(i32 %8)
  %addr.0 = load ptr, ptr %addr.046, align 4
  %cmp11.not = icmp eq ptr %addr.0, %address_list
  br i1 %cmp11.not, label %for.body13.end_raw_crit_edge, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13

for.body13.end_raw_crit_edge:                     ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %end_raw

end_raw:                                          ; preds = %for.body13.end_raw_crit_edge, %for.cond9.preheader.end_raw_crit_edge, %if.end8.i.end_raw_crit_edge, %for.end.end_raw_crit_edge
  %addrparms_len.1 = phi i32 [ 0, %if.end8.i.end_raw_crit_edge ], [ 0, %for.end.end_raw_crit_edge ], [ 0, %for.cond9.preheader.end_raw_crit_edge ], [ %add18, %for.body13.end_raw_crit_edge ]
  %retval.sroa.0.0 = phi ptr [ null, %if.end8.i.end_raw_crit_edge ], [ null, %for.end.end_raw_crit_edge ], [ %call9.i, %for.cond9.preheader.end_raw_crit_edge ], [ %call9.i, %for.body13.end_raw_crit_edge ]
  %9 = ptrtoint ptr %addrs_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %addrparms_len.1, ptr %addrs_len, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rawaddr) #10
  %coerce.val.pi = ptrtoint ptr %retval.sroa.0.0 to i32
  ret i32 %coerce.val.pi
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_get_af_specific(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_raw_to_bind_addrs(ptr noundef %bp, ptr noundef %raw_addr_list, i32 noundef %addrs_len, i16 noundef zeroext %port, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca %union.sctp_addr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addrs_len)
  %tobool.not37 = icmp eq i32 %addrs_len, 0
  %0 = call ptr @memset(ptr %addr, i32 255, i32 28)
  br i1 %tobool.not37, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %next.while.body_crit_edge, %entry.while.body_crit_edge
  %raw_addr_list.addr.039 = phi ptr [ %add.ptr, %next.while.body_crit_edge ], [ %raw_addr_list, %entry.while.body_crit_edge ]
  %addrs_len.addr.038 = phi i32 [ %sub, %next.while.body_crit_edge ], [ %addrs_len, %entry.while.body_crit_edge ]
  %1 = ptrtoint ptr %raw_addr_list.addr.039 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %raw_addr_list.addr.039, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %2)
  %switch.selectcmp.i = icmp eq i16 %2, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %2)
  %switch.selectcmp2.i = icmp eq i16 %2, 5
  %3 = select i1 %switch.selectcmp.i, i16 10, i16 0
  %conv = select i1 %switch.selectcmp2.i, i16 2, i16 %3
  %call2 = call ptr @sctp_get_af_specific(i16 noundef zeroext %conv) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %while.body.if.then18_crit_edge, label %lor.lhs.false, !prof !33

while.body.if.then18_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

lor.lhs.false:                                    ; preds = %while.body
  %from_addr_param = getelementptr inbounds %struct.sctp_af, ptr %call2, i32 0, i32 10
  %4 = ptrtoint ptr %from_addr_param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %from_addr_param, align 4
  %call7 = call zeroext i1 %5(ptr noundef nonnull %addr, ptr noundef %raw_addr_list.addr.039, i16 noundef zeroext %port, i32 noundef 0) #10
  br i1 %call7, label %if.end, label %lor.lhs.false.if.then18_crit_edge

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.end:                                           ; preds = %lor.lhs.false
  %call8 = call i32 @sctp_bind_addr_state(ptr noundef %bp, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8)
  %cmp.not = icmp eq i32 %call8, -1
  br i1 %cmp.not, label %if.end11, label %if.end.next_crit_edge

if.end.next_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %next

if.end11:                                         ; preds = %if.end
  %call12 = call i32 @sctp_add_bind_addr(ptr noundef %bp, ptr noundef nonnull %addr, i32 noundef 28, i8 noundef zeroext 1, i32 noundef %gfp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.next_crit_edge, label %if.end11.if.then18_crit_edge

if.end11.if.then18_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.end11.next_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %next

next:                                             ; preds = %if.end11.next_crit_edge, %if.end.next_crit_edge
  %length = getelementptr inbounds %struct.sctp_paramhdr, ptr %raw_addr_list.addr.039, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %length, align 2
  %conv16 = zext i16 %7 to i32
  %sub = sub i32 %addrs_len.addr.038, %conv16
  %add.ptr = getelementptr i8, ptr %raw_addr_list.addr.039, i32 %conv16
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %next.cleanup_crit_edge, label %next.while.body_crit_edge

next.while.body_crit_edge:                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

next.cleanup_crit_edge:                           ; preds = %next
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %if.end11.if.then18_crit_edge, %lor.lhs.false.if.then18_crit_edge, %while.body.if.then18_crit_edge
  %retval1.2 = phi i32 [ %call12, %if.end11.if.then18_crit_edge ], [ -22, %lor.lhs.false.if.then18_crit_edge ], [ -22, %while.body.if.then18_crit_edge ]
  %address_list.i = getelementptr inbounds %struct.sctp_bind_addr, ptr %bp, i32 0, i32 1
  %8 = ptrtoint ptr %address_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %address_list.i, align 4
  %cmp.not24.i = icmp eq ptr %9, %address_list.i
  br i1 %cmp.not24.i, label %if.then18.cleanup_crit_edge, label %if.then18.for.body.i_crit_edge

if.then18.for.body.i_crit_edge:                   ; preds = %if.then18
  br label %for.body.i

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then18.for.body.i_crit_edge
  %addr.025.i = phi ptr [ %temp.027.i, %if.end.i.for.body.i_crit_edge ], [ %9, %if.then18.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %addr.025.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %temp.027.i = load ptr, ptr %addr.025.i, align 4
  %call.i.i22.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %addr.025.i) #10
  br i1 %call.i.i22.i, label %if.end.i.i.i, label %for.body.i.list_del_rcu.exit.i_crit_edge

for.body.i.list_del_rcu.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %addr.025.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %addr.025.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr.025.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %for.body.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %addr.025.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tobool.not.i = icmp eq ptr %addr.025.i, null
  br i1 %tobool.not.i, label %list_del_rcu.exit.i.if.end.i_crit_edge, label %do.end.i

list_del_rcu.exit.i.if.end.i_crit_edge:           ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %rcu.i = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %addr.025.i, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %list_del_rcu.exit.i.if.end.i_crit_edge
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sctp_dbg_objcnt_addr, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull @sctp_dbg_objcnt_addr, i32 1, i32 3, i32 1) #10
  %18 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sctp_dbg_objcnt_addr, ptr nonnull @sctp_dbg_objcnt_addr, i32 1, ptr nonnull elementtype(i32) @sctp_dbg_objcnt_addr) #10, !srcloc !29
  %cmp.not.i = icmp eq ptr %temp.027.i, %address_list.i
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %next.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.2, %if.then18.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval1.2, %if.end.i.cleanup_crit_edge ], [ 0, %next.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %addr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_bind_addr_state(ptr noundef %bp, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 4
  %call = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body, !prof !33

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %call4 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true8

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b41 = load i1, ptr @sctp_bind_addr_state.__warned, align 1
  br i1 %.b41, label %land.lhs.true8.do.end_crit_edge, label %if.then10

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sctp_bind_addr_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 404, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then10, %land.lhs.true8.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %address_list = getelementptr inbounds %struct.sctp_bind_addr, ptr %bp, i32 0, i32 1
  %2 = ptrtoint ptr %address_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %laddr.043 = load volatile ptr, ptr %address_list, align 4
  %cmp.not44 = icmp eq ptr %laddr.043, %address_list
  br i1 %cmp.not44, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %cmp_addr = getelementptr inbounds %struct.sctp_af, ptr %call, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %laddr.045 = phi ptr [ %laddr.043, %for.body.lr.ph ], [ %laddr.0, %for.inc.for.body_crit_edge ]
  %valid = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.045, i32 0, i32 4
  %3 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool17.not = icmp eq i8 %4, 0
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %if.end19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end19:                                         ; preds = %for.body
  %5 = ptrtoint ptr %cmp_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmp_addr, align 4
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.045, i32 0, i32 2
  %call20 = tail call i32 %6(ptr noundef %a, ptr noundef %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.for.inc_crit_edge, label %if.then22

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.045, i32 0, i32 3
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %state, align 4
  %conv = zext i8 %8 to i32
  br label %cleanup

for.inc:                                          ; preds = %if.end19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %laddr.045 to i32
  call void @__asan_load4_noabort(i32 %9)
  %laddr.0 = load volatile ptr, ptr %laddr.045, align 4
  %cmp.not = icmp eq ptr %laddr.0, %address_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then22, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.then22 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %do.end.cleanup_crit_edge ], [ -1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_bind_addr_match(ptr noundef %bp, ptr noundef %addr, ptr noundef %opt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !19) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @sctp_bind_addr_match.__warned, align 1
  br i1 %.b31, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sctp_bind_addr_match.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 315, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %address_list = getelementptr inbounds %struct.sctp_bind_addr, ptr %bp, i32 0, i32 1
  %pf = getelementptr inbounds %struct.sctp_sock, ptr %opt, i32 0, i32 2
  %4 = ptrtoint ptr %address_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %laddr.041 = load volatile ptr, ptr %address_list, align 4
  %cmp.not42 = icmp eq ptr %laddr.041, %address_list
  br i1 %cmp.not42, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %laddr.043 = phi ptr [ %laddr.0, %for.inc.for.body_crit_edge ], [ %laddr.041, %do.end.for.body_crit_edge ]
  %valid = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.043, i32 0, i32 4
  %5 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not = icmp eq i8 %6, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.end12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %7 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pf, align 4
  %cmp_addr = getelementptr inbounds %struct.sctp_pf, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cmp_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmp_addr, align 4
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.043, i32 0, i32 2
  %call13 = tail call i32 %10(ptr noundef %a, ptr noundef %addr, ptr noundef %opt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.for.inc_crit_edge, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %laddr.043 to i32
  call void @__asan_load4_noabort(i32 %11)
  %laddr.0 = load volatile ptr, ptr %laddr.043, align 4
  %cmp.not = icmp eq ptr %laddr.0, %address_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end12.for.end_crit_edge, %do.end.for.end_crit_edge
  %match.0 = phi i32 [ 0, %do.end.for.end_crit_edge ], [ 1, %if.end12.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %call.i32 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i32, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i35

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i35:                                ; preds = %for.end
  %call1.i33 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %tobool.not.i34 = icmp eq i32 %call1.i33, 0
  br i1 %tobool.not.i34, label %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i37

land.lhs.true.i35.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i37:                               ; preds = %land.lhs.true.i35
  %.b4.i36 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i36, label %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, label %if.then.i38

land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i38:                                      ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i38, %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  %12 = tail call i32 @llvm.read_register.i32(metadata !19) #10
  %and.i.i.i.i.i39 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i39 to ptr
  %preempt_count.i.i.i.i40 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i40, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i40, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i32 %match.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_bind_addrs_check(ptr nocapture noundef readonly %sp, ptr nocapture noundef readonly %sp2, i32 noundef %cnt2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ep = getelementptr inbounds %struct.sctp_sock, ptr %sp2, i32 0, i32 5
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %ep1 = getelementptr inbounds %struct.sctp_sock, ptr %sp, i32 0, i32 5
  %2 = ptrtoint ptr %ep1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep1, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !19) #10
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b88 = load i1, ptr @sctp_bind_addrs_check.__warned, align 1
  br i1 %.b88, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sctp_bind_addrs_check.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 338, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %address_list = getelementptr inbounds %struct.sctp_ep_common, ptr %3, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %address_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %laddr.0106 = load volatile ptr, ptr %address_list, align 4
  %cmp.not107 = icmp eq ptr %laddr.0106, %address_list
  br i1 %cmp.not107, label %do.end.for.end70_crit_edge, label %do.body13.lr.ph

do.end.for.end70_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end70

do.body13.lr.ph:                                  ; preds = %do.end
  %address_list30 = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 6, i32 1
  %pf = getelementptr inbounds %struct.sctp_sock, ptr %sp, i32 0, i32 2
  br label %do.body13

do.body13:                                        ; preds = %if.then48.do.body13_crit_edge, %do.body13.lr.ph
  %laddr.0110 = phi ptr [ %laddr.0106, %do.body13.lr.ph ], [ %laddr.0, %if.then48.do.body13_crit_edge ]
  %exist.0.off0109 = phi i32 [ 1, %do.body13.lr.ph ], [ -17, %if.then48.do.body13_crit_edge ]
  %cnt.0108 = phi i32 [ 0, %do.body13.lr.ph ], [ %inc, %if.then48.do.body13_crit_edge ]
  %call14 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %do.body13.do.end24_crit_edge

do.body13.do.end24_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

land.lhs.true16:                                  ; preds = %do.body13
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true16.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true16.do.end24_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %.b8687 = load i1, ptr @sctp_bind_addrs_check.__warned.2, align 1
  br i1 %.b8687, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sctp_bind_addrs_check.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 339, ptr noundef nonnull @.str.1) #10
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true16.do.end24_crit_edge, %do.body13.do.end24_crit_edge
  %9 = ptrtoint ptr %address_list30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %laddr2.0102 = load volatile ptr, ptr %address_list30, align 4
  %cmp37.not103 = icmp eq ptr %laddr2.0102, %address_list30
  br i1 %cmp37.not103, label %do.end24.for.end70_crit_edge, label %for.body38.lr.ph

do.end24.for.end70_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end70

for.body38.lr.ph:                                 ; preds = %do.end24
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.0110, i32 0, i32 2
  %valid = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.0110, i32 0, i32 4
  br label %for.body38

for.body38:                                       ; preds = %for.inc.for.body38_crit_edge, %for.body38.lr.ph
  %laddr2.0104 = phi ptr [ %laddr2.0102, %for.body38.lr.ph ], [ %laddr2.0, %for.inc.for.body38_crit_edge ]
  %10 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pf, align 4
  %af = getelementptr inbounds %struct.sctp_pf, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %af to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %af, align 4
  %cmp_addr = getelementptr inbounds %struct.sctp_af, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %cmp_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmp_addr, align 4
  %a39 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr2.0104, i32 0, i32 2
  %call40 = tail call i32 %15(ptr noundef %a, ptr noundef %a39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %for.body38.for.inc_crit_edge, label %land.lhs.true42

for.body38.for.inc_crit_edge:                     ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true42:                                  ; preds = %for.body38
  %16 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool43.not = icmp eq i8 %17, 0
  br i1 %tobool43.not, label %land.lhs.true42.for.inc_crit_edge, label %land.lhs.true44

land.lhs.true42.for.inc_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true44:                                  ; preds = %land.lhs.true42
  %valid45 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr2.0104, i32 0, i32 4
  %18 = ptrtoint ptr %valid45 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %valid45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool47.not = icmp eq i8 %19, 0
  br i1 %tobool47.not, label %land.lhs.true44.for.inc_crit_edge, label %if.then48

land.lhs.true44.for.inc_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then48:                                        ; preds = %land.lhs.true44
  %inc = add i32 %cnt.0108, 1
  %20 = ptrtoint ptr %laddr.0110 to i32
  call void @__asan_load4_noabort(i32 %20)
  %laddr.0 = load volatile ptr, ptr %laddr.0110, align 4
  %cmp.not = icmp eq ptr %laddr.0, %address_list
  br i1 %cmp.not, label %if.then48.for.end70_crit_edge, label %if.then48.do.body13_crit_edge

if.then48.do.body13_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body13

if.then48.for.end70_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end70

for.inc:                                          ; preds = %land.lhs.true44.for.inc_crit_edge, %land.lhs.true42.for.inc_crit_edge, %for.body38.for.inc_crit_edge
  %21 = ptrtoint ptr %laddr2.0104 to i32
  call void @__asan_load4_noabort(i32 %21)
  %laddr2.0 = load volatile ptr, ptr %laddr2.0104, align 4
  %cmp37.not = icmp eq ptr %laddr2.0, %address_list30
  br i1 %cmp37.not, label %for.inc.for.end70_crit_edge, label %for.inc.for.body38_crit_edge

for.inc.for.body38_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38

for.inc.for.end70_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end70

for.end70:                                        ; preds = %for.inc.for.end70_crit_edge, %if.then48.for.end70_crit_edge, %do.end24.for.end70_crit_edge, %do.end.for.end70_crit_edge
  %exist.0.off0100 = phi i32 [ 1, %do.end.for.end70_crit_edge ], [ %exist.0.off0109, %for.inc.for.end70_crit_edge ], [ %exist.0.off0109, %do.end24.for.end70_crit_edge ], [ -17, %if.then48.for.end70_crit_edge ]
  %cnt.1 = phi i32 [ 0, %do.end.for.end70_crit_edge ], [ 0, %for.inc.for.end70_crit_edge ], [ 0, %do.end24.for.end70_crit_edge ], [ %inc, %if.then48.for.end70_crit_edge ]
  %call.i89 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i89, label %for.end70.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i92

for.end70.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i92:                                ; preds = %for.end70
  %call1.i90 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i90)
  %tobool.not.i91 = icmp eq i32 %call1.i90, 0
  br i1 %tobool.not.i91, label %land.lhs.true.i92.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i94

land.lhs.true.i92.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i94:                               ; preds = %land.lhs.true.i92
  %.b4.i93 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i93, label %land.lhs.true2.i94.rcu_read_unlock.exit_crit_edge, label %if.then.i95

land.lhs.true2.i94.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i95:                                      ; preds = %land.lhs.true2.i94
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i95, %land.lhs.true2.i94.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i92.rcu_read_unlock.exit_crit_edge, %for.end70.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  %22 = tail call i32 @llvm.read_register.i32(metadata !19) #10
  %and.i.i.i.i.i96 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i96 to ptr
  %preempt_count.i.i.i.i97 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i97, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i97, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.1, i32 %cnt2)
  %cmp71 = icmp eq i32 %cnt.1, %cnt2
  %spec.select = select i1 %cmp71, i32 0, i32 %exist.0.off0100
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_bind_addr_conflict(ptr noundef %bp, ptr noundef %addr, ptr noundef %bp_sp, ptr noundef %addr_sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %bp_sp, i32 0, i32 3
  %0 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %1)
  %cmp = icmp eq i16 %1, 10
  br i1 %cmp, label %entry.if.end10_crit_edge, label %if.else

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %skc_family4 = getelementptr inbounds %struct.sock_common, ptr %addr_sp, i32 0, i32 3
  %2 = ptrtoint ptr %skc_family4 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %skc_family4, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp6 = icmp eq i16 %3, 10
  %addr_sp.bp_sp = select i1 %cmp6, ptr %addr_sp, ptr %bp_sp
  br label %if.end10

if.end10:                                         ; preds = %if.else, %entry.if.end10_crit_edge
  %sp.0 = phi ptr [ %bp_sp, %entry.if.end10_crit_edge ], [ %addr_sp.bp_sp, %if.else ]
  %4 = tail call i32 @llvm.read_register.i32(metadata !19) #10
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end10.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end10.rcu_read_lock.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end10
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end10.rcu_read_lock.exit_crit_edge
  %call11 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true14

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b50 = load i1, ptr @sctp_bind_addr_conflict.__warned, align 1
  br i1 %.b50, label %land.lhs.true14.do.end_crit_edge, label %if.then16

land.lhs.true14.do.end_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sctp_bind_addr_conflict.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 380, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then16, %land.lhs.true14.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %address_list = getelementptr inbounds %struct.sctp_bind_addr, ptr %bp, i32 0, i32 1
  %pf = getelementptr inbounds %struct.sctp_sock, ptr %sp.0, i32 0, i32 2
  %8 = ptrtoint ptr %address_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %laddr.060 = load volatile ptr, ptr %address_list, align 4
  %cmp23.not61 = icmp eq ptr %laddr.060, %address_list
  br i1 %cmp23.not61, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %laddr.062 = phi ptr [ %laddr.0, %for.inc.for.body_crit_edge ], [ %laddr.060, %do.end.for.body_crit_edge ]
  %valid = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.062, i32 0, i32 4
  %9 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool25.not = icmp eq i8 %10, 0
  br i1 %tobool25.not, label %for.body.for.inc_crit_edge, label %if.end27

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end27:                                         ; preds = %for.body
  %11 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pf, align 4
  %cmp_addr = getelementptr inbounds %struct.sctp_pf, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cmp_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmp_addr, align 4
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.062, i32 0, i32 2
  %call28 = tail call i32 %14(ptr noundef %a, ptr noundef %addr, ptr noundef %sp.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.for.inc_crit_edge, label %if.end27.for.end_crit_edge

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end27.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %laddr.062 to i32
  call void @__asan_load4_noabort(i32 %15)
  %laddr.0 = load volatile ptr, ptr %laddr.062, align 4
  %cmp23.not = icmp eq ptr %laddr.0, %address_list
  br i1 %cmp23.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end27.for.end_crit_edge, %do.end.for.end_crit_edge
  %conflict.2 = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %call28, %if.end27.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %call.i51 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i51, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i54

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i54:                                ; preds = %for.end
  %call1.i52 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %tobool.not.i53 = icmp eq i32 %call1.i52, 0
  br i1 %tobool.not.i53, label %land.lhs.true.i54.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i56

land.lhs.true.i54.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i56:                               ; preds = %land.lhs.true.i54
  %.b4.i55 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55, label %land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge, label %if.then.i57

land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i57:                                      ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i57, %land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i54.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  %16 = tail call i32 @llvm.read_register.i32(metadata !19) #10
  %and.i.i.i.i.i58 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i58 to ptr
  %preempt_count.i.i.i.i59 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i59, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i59, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i32 %conflict.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_find_unmatch_addr(ptr noundef readonly %bp, ptr noundef %addrs, i32 noundef %addrcnt, ptr noundef %opt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %address_list = getelementptr inbounds %struct.sctp_bind_addr, ptr %bp, i32 0, i32 1
  %pf = getelementptr inbounds %struct.sctp_sock, ptr %opt, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addrcnt)
  %cmp337 = icmp sgt i32 %addrcnt, 0
  br label %for.cond

for.cond:                                         ; preds = %for.end.for.cond_crit_edge, %entry
  %laddr.0.in = phi ptr [ %address_list, %entry ], [ %laddr.0, %for.end.for.cond_crit_edge ]
  %0 = ptrtoint ptr %laddr.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %laddr.0 = load ptr, ptr %laddr.0.in, align 4
  %cmp.not = icmp eq ptr %laddr.0, %address_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.cond2.preheader

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond2.preheader:                              ; preds = %for.cond
  br i1 %cmp337, label %for.body4.lr.ph, label %for.cond2.preheader.for.end_crit_edge

for.cond2.preheader.for.end_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.0, i32 0, i32 2
  br label %for.body4

for.body4:                                        ; preds = %if.end8.for.body4_crit_edge, %for.body4.lr.ph
  %addr_buf.039 = phi ptr [ %addrs, %for.body4.lr.ph ], [ %add.ptr9, %if.end8.for.body4_crit_edge ]
  %i.038 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %if.end8.for.body4_crit_edge ]
  %1 = ptrtoint ptr %addr_buf.039 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %addr_buf.039, align 4
  %call = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %2) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body4.for.end_crit_edge, label %if.end

for.body4.for.end_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %for.body4
  %3 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pf, align 4
  %cmp_addr = getelementptr inbounds %struct.sctp_pf, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cmp_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmp_addr, align 4
  %call5 = tail call i32 %6(ptr noundef %a, ptr noundef %addr_buf.039, ptr noundef %opt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end8:                                          ; preds = %if.end
  %sockaddr_len = getelementptr inbounds %struct.sctp_af, ptr %call, i32 0, i32 22
  %7 = ptrtoint ptr %sockaddr_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sockaddr_len, align 4
  %add.ptr9 = getelementptr i8, ptr %addr_buf.039, i32 %8
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, %addrcnt
  br i1 %exitcond.not, label %if.end8.if.then11_crit_edge, label %if.end8.for.body4_crit_edge

if.end8.for.body4_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4

if.end8.if.then11_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body4.for.end_crit_edge, %for.cond2.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond2.preheader.for.end_crit_edge ], [ %i.038, %if.end.for.end_crit_edge ], [ %i.038, %for.body4.for.end_crit_edge ]
  %cmp10 = icmp eq i32 %i.0.lcssa, %addrcnt
  br i1 %cmp10, label %for.end.if.then11_crit_edge, label %for.end.for.cond_crit_edge

for.end.for.cond_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end.if.then11_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then11:                                        ; preds = %for.end.if.then11_crit_edge, %if.end8.if.then11_crit_edge
  %a12 = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %laddr.0, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %a12, %if.then11 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_is_any(ptr noundef readonly %sk, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %if.else, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.else:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %sk, null
  br i1 %tobool.not, label %if.else.if.end4_crit_edge, label %if.then3

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %skc_family, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.else.if.end4_crit_edge, %entry.if.end4_crit_edge
  %fam.0 = phi i16 [ %3, %if.then3 ], [ 0, %if.else.if.end4_crit_edge ], [ %1, %entry.if.end4_crit_edge ]
  %call = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %fam.0) #10
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %is_any = getelementptr inbounds %struct.sctp_af, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %is_any to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %is_any, align 4
  %call8 = tail call i32 %5(ptr noundef %addr) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_in_scope(ptr nocapture noundef readonly %net, ptr noundef %addr, i32 noundef %scope) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 4
  %call.i = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %1) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %sctp_scope.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sctp_scope.exit:                                  ; preds = %entry
  %scope.i = getelementptr inbounds %struct.sctp_af, ptr %call.i, i32 0, i32 13
  %2 = ptrtoint ptr %scope.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scope.i, align 4
  %call1.i = tail call i32 %3(ptr noundef %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1.i)
  %cmp = icmp eq i32 %call1.i, 4
  br i1 %cmp, label %sctp_scope.exit.cleanup_crit_edge, label %if.end

sctp_scope.exit.cleanup_crit_edge:                ; preds = %sctp_scope.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sctp_scope.exit
  %scope_policy = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 38, i32 43
  %4 = ptrtoint ptr %scope_policy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scope_policy, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %5, label %if.end.sw.epilog_crit_edge [
    i32 0, label %if.end.cleanup_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
    i32 3, label %sw.bb10
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %scope)
  %cmp2.not = icmp ugt i32 %call1.i, %scope
  br i1 %cmp2.not, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %scope)
  %cmp6.not = icmp ule i32 %call1.i, %scope
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp7 = icmp eq i32 %call1.i, 1
  %or.cond = or i1 %cmp6.not, %cmp7
  br i1 %or.cond, label %sw.bb5.cleanup_crit_edge, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %scope)
  %cmp11.not = icmp ule i32 %call1.i, %scope
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1.i)
  %cmp13 = icmp eq i32 %call1.i, 2
  %or.cond23 = or i1 %cmp11.not, %cmp13
  br i1 %or.cond23, label %sw.bb10.cleanup_crit_edge, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb10.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb10.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sctp_scope.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 0, %sctp_scope.exit.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %sw.bb1.cleanup_crit_edge ], [ 1, %sw.bb5.cleanup_crit_edge ], [ 1, %sw.bb10.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_scope(ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 4
  %call = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %scope = getelementptr inbounds %struct.sctp_af, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %scope to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scope, align 4
  %call1 = tail call i32 %3(ptr noundef %addr) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_is_ep_boundall(ptr noundef readonly %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ep = getelementptr inbounds %struct.sctp_sock, ptr %sk, i32 0, i32 5
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %address_list = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %address_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %address_list, align 4
  %cmp.i.not.i.i = icmp eq ptr %3, %address_list
  br i1 %cmp.i.not.i.i, label %entry.if.end6_crit_edge, label %sctp_list_single_entry.exit

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

sctp_list_single_entry.exit:                      ; preds = %entry
  %prev.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 6, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.i.not = icmp eq ptr %3, %5
  br i1 %cmp.i.i.not, label %if.then, label %sctp_list_single_entry.exit.if.end6_crit_edge

sctp_list_single_entry.exit.if.end6_crit_edge:    ; preds = %sctp_list_single_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %sctp_list_single_entry.exit
  %a = getelementptr inbounds %struct.sctp_sockaddr_entry, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %a to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.not.i = icmp eq i16 %7, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.if.end4.i_crit_edge

if.then.if.end4.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.else.i:                                        ; preds = %if.then
  %tobool.not.i = icmp eq ptr %sk, null
  br i1 %tobool.not.i, label %if.else.i.if.end4.i_crit_edge, label %if.then3.i

if.else.i.if.end4.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %8 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %skc_family.i, align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.else.i.if.end4.i_crit_edge, %if.then.if.end4.i_crit_edge
  %fam.0.i = phi i16 [ %9, %if.then3.i ], [ 0, %if.else.i.if.end4.i_crit_edge ], [ %7, %if.then.if.end4.i_crit_edge ]
  %call.i = tail call ptr @sctp_get_af_specific(i16 noundef zeroext %fam.0.i) #10
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %if.end4.i.if.end6_crit_edge, label %sctp_is_any.exit

if.end4.i.if.end6_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

sctp_is_any.exit:                                 ; preds = %if.end4.i
  %is_any.i = getelementptr inbounds %struct.sctp_af, ptr %call.i, i32 0, i32 15
  %10 = ptrtoint ptr %is_any.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %is_any.i, align 4
  %call8.i = tail call i32 %11(ptr noundef %a) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool4.not = icmp eq i32 %call8.i, 0
  br i1 %tobool4.not, label %sctp_is_any.exit.if.end6_crit_edge, label %sctp_is_any.exit.cleanup_crit_edge

sctp_is_any.exit.cleanup_crit_edge:               ; preds = %sctp_is_any.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sctp_is_any.exit.if.end6_crit_edge:               ; preds = %sctp_is_any.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end6:                                          ; preds = %sctp_is_any.exit.if.end6_crit_edge, %if.end4.i.if.end6_crit_edge, %sctp_list_single_entry.exit.if.end6_crit_edge, %entry.if.end6_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %sctp_is_any.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 1, %sctp_is_any.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_copy_local_addr_list(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !16, !18}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/sctp/bind_addr.c", i32 315, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/sctp/bind_addr.c", i32 338, i32 2}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/sctp/bind_addr.c", i32 339, i32 3}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/sctp/bind_addr.c", i32 380, i32 2}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/sctp/bind_addr.c", i32 404, i32 2}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2148595236, i64 2148595262, i64 2148595291, i64 2148595325, i64 2148595356, i64 2148595379}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 2151432154}
!32 = !{i64 2148592771, i64 2148592797, i64 2148592826, i64 2148592860, i64 2148592891, i64 2148592914}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i64 2149929642}
!35 = !{i64 2149929908}
