; ModuleID = '/llk/IR_all_yes/net/ipv4/raw_diag.c_pt.bc'
source_filename = "../net/ipv4/raw_diag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inet_diag_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16 }
%struct.raw_hashinfo = type { %struct.rwlock_t, [256 x %struct.hlist_head] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.113 }
%union.anon.113 = type { [6 x i32], [24 x i8] }
%struct.inet_diag_req_v2 = type { i8, i8, i8, i8, i32, %struct.inet_diag_sockid }
%struct.inet_diag_sockid = type { i16, i16, [4 x i32], [4 x i32], i32, [2 x i32] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.109, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.110, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.111, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.109 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.110 = type { ptr }
%union.anon.111 = type { ptr }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
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
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.21 }
%union.anon.21 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.96 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.inet_diag_msg = type { i8, i8, i8, i8, %struct.inet_diag_sockid, i32, i32, i32, i32, i32 }
%struct.inet_diag_req_raw = type { i8, i8, i8, i8, i32, %struct.inet_diag_sockid }

@raw_diag_handler = internal constant { %struct.inet_diag_handler, [36 x i8] } { %struct.inet_diag_handler { ptr @raw_diag_dump, ptr @raw_diag_dump_one, ptr @raw_diag_get_info, ptr null, ptr null, ptr @raw_diag_destroy, i16 255, i16 0 }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_raw_diag__479_256_raw_diag_init6 = internal global ptr @raw_diag_init, section ".initcall6.init", align 4
@__exitcall_raw_diag_exit = internal global ptr @raw_diag_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file480 = internal constant [32 x i8] c"raw_diag.file=net/ipv4/raw_diag\00", section ".modinfo", align 1
@__UNIQUE_ID_license481 = internal constant [21 x i8] c"raw_diag.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias482 = internal constant [44 x i8] c"raw_diag.alias=net-pf-16-proto-4-type-2-255\00", section ".modinfo", align 1
@__UNIQUE_ID_alias483 = internal constant [45 x i8] c"raw_diag.alias=net-pf-16-proto-4-type-10-255\00", section ".modinfo", align 1
@raw_v4_hashinfo = external dso_local global %struct.raw_hashinfo, align 4
@raw_v6_hashinfo = external dso_local global %struct.raw_hashinfo, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"raw_diag_handler\00", align 1
@___asan_gen_.3 = private constant [23 x i8] c"../net/ipv4/raw_diag.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 214, i32 39 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias482, ptr @__UNIQUE_ID_alias483, ptr @__UNIQUE_ID_file480, ptr @__UNIQUE_ID_license481, ptr @__exitcall_raw_diag_exit, ptr @__initcall__kmod_raw_diag__479_256_raw_diag_init6, ptr @raw_diag_exit, ptr @raw_diag_handler], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_diag_handler to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @raw_diag_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @inet_diag_unregister(ptr noundef nonnull @raw_diag_handler) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_diag_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_diag_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet_diag_register(ptr noundef nonnull @raw_diag_handler) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raw_diag_dump(ptr noundef %skb, ptr noundef %cb, ptr noundef %r) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %call = tail call zeroext i1 @netlink_net_capable(ptr noundef %1, i32 noundef 12) #5
  %2 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %r, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %entry.cleanup74_crit_edge [
    i8 2, label %raw_get_hashinfo.exit
    i8 10, label %if.then6.i
  ]

entry.cleanup74_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup74

if.then6.i:                                       ; preds = %entry
  br i1 icmp ult (ptr inttoptr (i32 -4096 to ptr), ptr @raw_v6_hashinfo), label %if.then6.i.cleanup74_crit_edge, label %if.then6.i.if.end_crit_edge

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then6.i.cleanup74_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup74

raw_get_hashinfo.exit:                            ; preds = %entry
  br i1 icmp ult (ptr inttoptr (i32 -4096 to ptr), ptr @raw_v4_hashinfo), label %raw_get_hashinfo.exit.cleanup74_crit_edge, label %raw_get_hashinfo.exit.if.end_crit_edge

raw_get_hashinfo.exit.if.end_crit_edge:           ; preds = %raw_get_hashinfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

raw_get_hashinfo.exit.cleanup74_crit_edge:        ; preds = %raw_get_hashinfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup74

if.end:                                           ; preds = %raw_get_hashinfo.exit.if.end_crit_edge, %if.then6.i.if.end_crit_edge
  %retval.0.i154 = phi ptr [ @raw_v6_hashinfo, %if.then6.i.if.end_crit_edge ], [ @raw_v4_hashinfo, %raw_get_hashinfo.exit.if.end_crit_edge ]
  %.pn.in = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %5 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in, align 4
  %.in = getelementptr inbounds %struct.sock_common, ptr %.pn, i32 0, i32 9
  %6 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.in, align 4
  %data = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr [4 x ptr], ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %arrayidx6 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx6, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull %retval.0.i154) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %14)
  %cmp143 = icmp slt i32 %14, 256
  br i1 %cmp143, label %for.body.lr.ph, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

for.body.lr.ph:                                   ; preds = %if.end
  %id = getelementptr inbounds %struct.inet_diag_req_v2, ptr %r, i32 0, i32 5
  %idiag_dport = getelementptr inbounds %struct.inet_diag_req_v2, ptr %r, i32 0, i32 5, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc68.for.body_crit_edge, %for.body.lr.ph
  %s_num.0146 = phi i32 [ %16, %for.body.lr.ph ], [ 0, %for.inc68.for.body_crit_edge ]
  %slot.0144 = phi i32 [ %14, %for.body.lr.ph ], [ %inc69, %for.inc68.for.body_crit_edge ]
  %arrayidx7 = getelementptr %struct.raw_hashinfo, ptr %retval.0.i154, i32 0, i32 1, i32 %slot.0144
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx7, align 4
  %tobool.not = icmp eq ptr %18, null
  %add.ptr = getelementptr i8, ptr %18, i32 -84
  %tobool10.not137152 = icmp eq ptr %add.ptr, null
  %tobool10.not137 = or i1 %tobool.not, %tobool10.not137152
  br i1 %tobool10.not137, label %for.body.for.inc68_crit_edge, label %for.body.for.body11_crit_edge

for.body.for.body11_crit_edge:                    ; preds = %for.body
  br label %for.body11

for.body.for.inc68_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc68

for.body11:                                       ; preds = %for.inc.for.body11_crit_edge, %for.body.for.body11_crit_edge
  %num.1141 = phi i32 [ %num.2.ph, %for.inc.for.body11_crit_edge ], [ 0, %for.body.for.body11_crit_edge ]
  %sk.0138 = phi ptr [ %add.ptr64, %for.inc.for.body11_crit_edge ], [ %add.ptr, %for.body.for.body11_crit_edge ]
  %skc_net.i118 = getelementptr inbounds %struct.sock_common, ptr %sk.0138, i32 0, i32 9
  %19 = ptrtoint ptr %skc_net.i118 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skc_net.i118, align 4
  %cmp.i119.not = icmp eq ptr %20, %7
  br i1 %cmp.i119.not, label %if.end17, label %for.body11.for.inc_crit_edge

for.body11.for.inc_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end17:                                         ; preds = %for.body11
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1141, i32 %s_num.0146)
  %cmp18 = icmp slt i32 %num.1141, %s_num.0146
  br i1 %cmp18, label %if.end17.next_crit_edge, label %if.end20

if.end17.next_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %next

if.end20:                                         ; preds = %if.end17
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk.0138, i32 0, i32 3
  %21 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %skc_family, align 8
  %23 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %r, align 4
  %25 = zext i8 %24 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %25)
  %cmp22.not = icmp eq i16 %22, %25
  br i1 %cmp22.not, label %if.end25, label %if.end20.next_crit_edge

if.end20.next_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %next

if.end25:                                         ; preds = %if.end20
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %id, align 4
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %sk.0138, i32 0, i32 6
  %28 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %inet_sport, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp28.not = icmp eq i16 %27, %29
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool33.not = icmp eq i16 %27, 0
  %or.cond = or i1 %tobool33.not, %cmp28.not
  br i1 %or.cond, label %if.end35, label %if.end25.next_crit_edge

if.end25.next_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %next

if.end35:                                         ; preds = %if.end25
  %30 = ptrtoint ptr %idiag_dport to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %idiag_dport, align 2
  %32 = getelementptr inbounds %struct.sock_common, ptr %sk.0138, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %32, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %34)
  %cmp41.not = icmp eq i16 %31, %34
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool47.not = icmp eq i16 %31, 0
  %or.cond116 = or i1 %tobool47.not, %cmp41.not
  br i1 %or.cond116, label %if.end49, label %if.end35.next_crit_edge

if.end35.next_crit_edge:                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %next

if.end49:                                         ; preds = %if.end35
  %call.i = tail call i32 @inet_diag_bc_sk(ptr noundef %11, ptr noundef nonnull %sk.0138) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end49.next_crit_edge, label %sk_diag_dump.exit

if.end49.next_crit_edge:                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %next

sk_diag_dump.exit:                                ; preds = %if.end49
  %call2.i = tail call i32 @inet_sk_diag_fill(ptr noundef nonnull %sk.0138, ptr noundef null, ptr noundef %skb, ptr noundef %cb, ptr noundef %r, i16 noundef zeroext 2, i1 noundef zeroext %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp52 = icmp slt i32 %call2.i, 0
  br i1 %cmp52, label %sk_diag_dump.exit.out_unlock_crit_edge, label %sk_diag_dump.exit.next_crit_edge

sk_diag_dump.exit.next_crit_edge:                 ; preds = %sk_diag_dump.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %next

sk_diag_dump.exit.out_unlock_crit_edge:           ; preds = %sk_diag_dump.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

next:                                             ; preds = %sk_diag_dump.exit.next_crit_edge, %if.end49.next_crit_edge, %if.end35.next_crit_edge, %if.end25.next_crit_edge, %if.end20.next_crit_edge, %if.end17.next_crit_edge
  %inc = add i32 %num.1141, 1
  br label %for.inc

for.inc:                                          ; preds = %next, %for.body11.for.inc_crit_edge
  %num.2.ph = phi i32 [ %num.1141, %for.body11.for.inc_crit_edge ], [ %inc, %next ]
  %35 = getelementptr inbounds %struct.sock_common, ptr %sk.0138, i32 0, i32 15
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %tobool60.not = icmp eq ptr %37, null
  %add.ptr64 = getelementptr i8, ptr %37, i32 -84
  %tobool10.not159 = icmp eq ptr %add.ptr64, null
  %tobool10.not = or i1 %tobool60.not, %tobool10.not159
  br i1 %tobool10.not, label %for.inc.for.inc68_crit_edge, label %for.inc.for.body11_crit_edge

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body11

for.inc.for.inc68_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc68

for.inc68:                                        ; preds = %for.inc.for.inc68_crit_edge, %for.body.for.inc68_crit_edge
  %num.1.lcssa = phi i32 [ 0, %for.body.for.inc68_crit_edge ], [ %num.2.ph, %for.inc.for.inc68_crit_edge ]
  %inc69 = add nsw i32 %slot.0144, 1
  %exitcond.not = icmp eq i32 %inc69, 256
  br i1 %exitcond.not, label %for.inc68.out_unlock_crit_edge, label %for.inc68.for.body_crit_edge

for.inc68.for.body_crit_edge:                     ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc68.out_unlock_crit_edge:                   ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

out_unlock:                                       ; preds = %for.inc68.out_unlock_crit_edge, %sk_diag_dump.exit.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %slot.0136 = phi i32 [ %14, %if.end.out_unlock_crit_edge ], [ %slot.0144, %sk_diag_dump.exit.out_unlock_crit_edge ], [ 256, %for.inc68.out_unlock_crit_edge ]
  %num.3 = phi i32 [ %16, %if.end.out_unlock_crit_edge ], [ %num.1141, %sk_diag_dump.exit.out_unlock_crit_edge ], [ %num.1.lcssa, %for.inc68.out_unlock_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull %retval.0.i154) #5
  %38 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %slot.0136, ptr %12, align 4
  %39 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %num.3, ptr %arrayidx6, align 4
  br label %cleanup74

cleanup74:                                        ; preds = %out_unlock, %raw_get_hashinfo.exit.cleanup74_crit_edge, %if.then6.i.cleanup74_crit_edge, %entry.cleanup74_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_diag_dump_one(ptr noundef %cb, ptr noundef %r) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %call1 = tail call fastcc ptr @raw_sock_get(ptr noundef %6, ptr noundef %r)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 244, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #5
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #5, !srcloc !23
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !24

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #5
  br label %cleanup

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void @sk_free(ptr noundef %call1) #5
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call zeroext i1 @netlink_net_capable(ptr noundef %1, i32 noundef 12) #5
  %call13 = tail call i32 @inet_sk_diag_fill(ptr noundef %call1, ptr noundef null, ptr noundef nonnull %call.i.i, ptr noundef %cb, ptr noundef %r, i16 noundef zeroext 0, i1 noundef zeroext %call12) #5
  %skc_refcnt.i36 = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 19
  %call.i.i.i.i.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i36, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i36, i32 1, i32 3, i32 1) #5
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i36, ptr %skc_refcnt.i36, i32 1, ptr elementtype(i32) %skc_refcnt.i36) #5, !srcloc !23
  %asmresult.i.i.i.i.i.i.i38 = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i38)
  %cmp.i.i.i.i39 = icmp eq i32 %asmresult.i.i.i.i.i.i.i38, 1
  br i1 %cmp.i.i.i.i39, label %if.then.i43, label %if.end5.i.i.i.i41

if.end5.i.i.i.i41:                                ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i38)
  %.not.i.i.i.i40 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i38, 0
  br i1 %.not.i.i.i.i40, label %if.end5.i.i.i.i41.sock_put.exit44_crit_edge, label %if.then10.i.i.i.i42, !prof !24

if.end5.i.i.i.i41.sock_put.exit44_crit_edge:      ; preds = %if.end5.i.i.i.i41
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_put.exit44

if.then10.i.i.i.i42:                              ; preds = %if.end5.i.i.i.i41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i36, i32 noundef 3) #5
  br label %sock_put.exit44

if.then.i43:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void @sk_free(ptr noundef %call1) #5
  br label %sock_put.exit44

sock_put.exit44:                                  ; preds = %if.then.i43, %if.then10.i.i.i.i42, %if.end5.i.i.i.i41.sock_put.exit44_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.then14, label %if.end15

if.then14:                                        ; preds = %sock_put.exit44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #5
  br label %cleanup

if.end15:                                         ; preds = %sock_put.exit44
  call void @__sanitizer_cov_trace_pc() #7
  %diag_nlsk = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 54
  %10 = ptrtoint ptr %diag_nlsk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %diag_nlsk, align 8
  %portid = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %12 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %portid, align 4
  %call.i = tail call i32 @netlink_unicast(ptr noundef %11, ptr noundef nonnull %call.i.i, i32 noundef %13, i32 noundef 64) #5
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ %call13, %if.then14 ], [ %14, %if.end15 ], [ -12, %if.end5.i.i.i.i.cleanup_crit_edge ], [ -12, %if.then10.i.i.i.i ], [ -12, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raw_diag_get_info(ptr noundef %sk, ptr nocapture noundef writeonly %r, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #5
  %0 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sk_backlog.i, align 4
  %idiag_rqueue = getelementptr inbounds %struct.inet_diag_msg, ptr %r, i32 0, i32 6
  %2 = ptrtoint ptr %idiag_rqueue to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %idiag_rqueue, align 4
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #5
  %3 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i = add i32 %4, -1
  %idiag_wqueue = getelementptr inbounds %struct.inet_diag_msg, ptr %r, i32 0, i32 7
  %5 = ptrtoint ptr %idiag_wqueue to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.i, ptr %idiag_wqueue, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_diag_destroy(ptr nocapture noundef readonly %in_skb, ptr noundef %r) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %call1 = tail call fastcc ptr @raw_sock_get(ptr noundef %4, ptr noundef %r)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @sock_diag_destroy(ptr noundef %call1, i32 noundef 103) #5
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #5
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #5, !srcloc !23
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !24

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #5
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void @sk_free(ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %call4, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call4, %if.then10.i.i.i.i ], [ %call4, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_net_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_diag_bc_sk(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_sk_diag_fill(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @raw_sock_get(ptr noundef %net, ptr noundef %r) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %r, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 2, label %raw_get_hashinfo.exit
    i8 10, label %if.then6.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6.i:                                       ; preds = %entry
  br i1 icmp ult (ptr inttoptr (i32 -4096 to ptr), ptr @raw_v6_hashinfo), label %if.then6.i.cleanup_crit_edge, label %if.then6.i.if.end_crit_edge

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

raw_get_hashinfo.exit:                            ; preds = %entry
  br i1 icmp ult (ptr inttoptr (i32 -4096 to ptr), ptr @raw_v4_hashinfo), label %raw_get_hashinfo.exit.cleanup_crit_edge, label %raw_get_hashinfo.exit.if.end_crit_edge

raw_get_hashinfo.exit.if.end_crit_edge:           ; preds = %raw_get_hashinfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

raw_get_hashinfo.exit.cleanup_crit_edge:          ; preds = %raw_get_hashinfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %raw_get_hashinfo.exit.if.end_crit_edge, %if.then6.i.if.end_crit_edge
  %retval.0.i65 = phi ptr [ @raw_v6_hashinfo, %if.then6.i.if.end_crit_edge ], [ @raw_v4_hashinfo, %raw_get_hashinfo.exit.if.end_crit_edge ]
  tail call void @_raw_read_lock(ptr noundef nonnull %retval.0.i65) #5
  %sdiag_raw_protocol.i = getelementptr inbounds %struct.inet_diag_req_raw, ptr %r, i32 0, i32 3
  %idiag_src9.i = getelementptr inbounds %struct.inet_diag_req_raw, ptr %r, i32 0, i32 5, i32 2
  %idiag_dst11.i = getelementptr inbounds %struct.inet_diag_req_raw, ptr %r, i32 0, i32 5, i32 3
  %idiag_if14.i = getelementptr inbounds %struct.inet_diag_req_raw, ptr %r, i32 0, i32 5, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc21.for.body_crit_edge, %if.end
  %slot.062 = phi i32 [ 0, %if.end ], [ %inc, %for.inc21.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.raw_hashinfo, ptr %retval.0.i65, i32 0, i32 1, i32 %slot.062
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  %add.ptr = getelementptr i8, ptr %4, i32 -84
  %tobool5.not5964 = icmp eq ptr %add.ptr, null
  %tobool5.not59 = or i1 %tobool.not, %tobool5.not5964
  br i1 %tobool5.not59, label %for.body.for.inc21_crit_edge, label %for.body.for.body6_crit_edge

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body.for.inc21_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc21

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %s.060 = phi ptr [ %add.ptr17, %for.inc.for.body6_crit_edge ], [ %add.ptr, %for.body.for.body6_crit_edge ]
  %5 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp.i49 = icmp eq i8 %6, 2
  %7 = ptrtoint ptr %sdiag_raw_protocol.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sdiag_raw_protocol.i, align 1
  %conv2.i = zext i8 %8 to i16
  br i1 %cmp.i49, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %idiag_dst11.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idiag_dst11.i, align 4
  %11 = ptrtoint ptr %idiag_src9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %idiag_src9.i, align 4
  %13 = ptrtoint ptr %idiag_if14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idiag_if14.i, align 4
  %call.i = tail call ptr @__raw_v4_lookup(ptr noundef %net, ptr noundef nonnull %s.060, i16 noundef zeroext %conv2.i, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef 0) #5
  br label %raw_lookup.exit

if.else.i:                                        ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %idiag_if14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idiag_if14.i, align 4
  %call15.i = tail call ptr @__raw_v6_lookup(ptr noundef %net, ptr noundef nonnull %s.060, i16 noundef zeroext %conv2.i, ptr noundef %idiag_src9.i, ptr noundef %idiag_dst11.i, i32 noundef %16, i32 noundef 0) #5
  br label %raw_lookup.exit

raw_lookup.exit:                                  ; preds = %if.else.i, %if.then.i
  %sk.0.i = phi ptr [ %call.i, %if.then.i ], [ %call15.i, %if.else.i ]
  %tobool8.not = icmp eq ptr %sk.0.i, null
  br i1 %tobool8.not, label %for.inc, label %if.then9

if.then9:                                         ; preds = %raw_lookup.exit
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk.0.i, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #5
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #5, !srcloc !26
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then9.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !27

if.then9.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then9
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup.sink.split_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !24

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup.sink.split_crit_edge:     ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then9.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then9.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #5
  br label %cleanup.sink.split

for.inc:                                          ; preds = %raw_lookup.exit
  %19 = getelementptr inbounds %struct.sock_common, ptr %s.060, i32 0, i32 15
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool13.not = icmp eq ptr %21, null
  %add.ptr17 = getelementptr i8, ptr %21, i32 -84
  %tobool5.not67 = icmp eq ptr %add.ptr17, null
  %tobool5.not = or i1 %tobool13.not, %tobool5.not67
  br i1 %tobool5.not, label %for.inc.for.inc21_crit_edge, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6

for.inc.for.inc21_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc21

for.inc21:                                        ; preds = %for.inc.for.inc21_crit_edge, %for.body.for.inc21_crit_edge
  %inc = add nuw nsw i32 %slot.062, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc21.cleanup.sink.split_crit_edge, label %for.inc21.for.body_crit_edge

for.inc21.for.body_crit_edge:                     ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc21.cleanup.sink.split_crit_edge:           ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.inc21.cleanup.sink.split_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ %sk.0.i, %if.else.i.i.i.i.cleanup.sink.split_crit_edge ], [ %sk.0.i, %if.end15.sink.split.i.i.i.i ], [ inttoptr (i32 -2 to ptr), %for.inc21.cleanup.sink.split_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull %retval.0.i65) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %raw_get_hashinfo.exit.cleanup_crit_edge, %if.then6.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @raw_v4_hashinfo, %raw_get_hashinfo.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ @raw_v6_hashinfo, %if.then6.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__raw_v4_lookup(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__raw_v6_lookup(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_diag_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_diag_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__initcall__kmod_raw_diag__479_256_raw_diag_init6, !1, !"__initcall__kmod_raw_diag__479_256_raw_diag_init6", i1 false, i1 false}
!1 = !{!"../net/ipv4/raw_diag.c", i32 256, i32 1}
!2 = !{ptr @__exitcall_raw_diag_exit, !3, !"__exitcall_raw_diag_exit", i1 false, i1 false}
!3 = !{!"../net/ipv4/raw_diag.c", i32 257, i32 1}
!4 = !{ptr @__UNIQUE_ID_file480, !5, !"__UNIQUE_ID_file480", i1 false, i1 false}
!5 = !{!"../net/ipv4/raw_diag.c", i32 258, i32 1}
!6 = !{ptr @__UNIQUE_ID_license481, !5, !"__UNIQUE_ID_license481", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias482, !8, !"__UNIQUE_ID_alias482", i1 false, i1 false}
!8 = !{!"../net/ipv4/raw_diag.c", i32 259, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias483, !10, !"__UNIQUE_ID_alias483", i1 false, i1 false}
!10 = !{!"../net/ipv4/raw_diag.c", i32 260, i32 1}
!11 = !{ptr @raw_diag_handler, !12, !"raw_diag_handler", i1 false, i1 false}
!12 = !{!"../net/ipv4/raw_diag.c", i32 214, i32 39}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2148434008}
!23 = !{i64 2148348448, i64 2148348480, i64 2148348509, i64 2148348543, i64 2148348574, i64 2148348597}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2149310122}
!26 = !{i64 2148345983, i64 2148346015, i64 2148346044, i64 2148346078, i64 2148346109, i64 2148346132}
!27 = !{!"branch_weights", i32 1, i32 2000}
