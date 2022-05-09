; ModuleID = '/llk/IR_all_yes/net/vmw_vsock/diag.c_pt.bc'
source_filename = "../net/vmw_vsock/diag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sock_diag_handler = type { i8, ptr, ptr, ptr }
%struct.netlink_dump_control = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
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
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.113 }
%union.anon.113 = type { [6 x i32], [24 x i8] }

@vsock_diag_handler = internal constant { %struct.sock_diag_handler, [16 x i8] } { %struct.sock_diag_handler { i8 40, ptr @vsock_diag_handler_dump, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@__initcall__kmod_vsock_diag__457_174_vsock_diag_init6 = internal global ptr @vsock_diag_init, section ".initcall6.init", align 4
@__exitcall_vsock_diag_exit = internal global ptr @vsock_diag_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file458 = internal constant [41 x i8] c"vsock_diag.file=net/vmw_vsock/vsock_diag\00", section ".modinfo", align 1
@__UNIQUE_ID_license459 = internal constant [23 x i8] c"vsock_diag.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias460 = internal constant [43 x i8] c"vsock_diag.alias=net-pf-16-proto-4-type-40\00", section ".modinfo", align 1
@__const.vsock_diag_handler_dump.c = private unnamed_addr constant %struct.netlink_dump_control { ptr null, ptr @vsock_diag_dump, ptr null, ptr null, ptr null, i32 0 }, align 4
@vsock_table_lock = external dso_local global %struct.spinlock, align 4
@vsock_bind_table = external dso_local global [252 x %struct.list_head], align 4
@vsock_connected_table = external dso_local global [251 x %struct.list_head], align 4
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"vsock_diag_handler\00", align 1
@___asan_gen_.2 = private constant [24 x i8] c"../net/vmw_vsock/diag.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 159, i32 39 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias460, ptr @__UNIQUE_ID_file458, ptr @__UNIQUE_ID_license459, ptr @__exitcall_vsock_diag_exit, ptr @__initcall__kmod_vsock_diag__457_174_vsock_diag_init6, ptr @vsock_diag_exit, ptr @vsock_diag_handler], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsock_diag_handler to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vsock_diag_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sock_diag_unregister(ptr noundef nonnull @vsock_diag_handler) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_diag_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_diag_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sock_diag_register(ptr noundef nonnull @vsock_diag_handler) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_diag_handler_dump(ptr noundef %skb, ptr noundef %h) #2 align 64 {
entry:
  %c = alloca %struct.netlink_dump_control, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %h, align 4
  %sub.i = add i32 %6, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i)
  %cmp = icmp slt i32 %sub.i, 24
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %h, i32 0, i32 2
  %7 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nlmsg_flags, align 2
  %9 = and i16 %8, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %netlink_dump_start.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

netlink_dump_start.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c) #4
  %10 = call ptr @memcpy(ptr %c, ptr @__const.vsock_diag_handler_dump.c, i32 24)
  %diag_nlsk = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 54
  %11 = ptrtoint ptr %diag_nlsk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %diag_nlsk, align 8
  %module.i = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 4
  %13 = ptrtoint ptr %module.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %module.i, align 4
  %call.i = call i32 @__netlink_dump_start(ptr noundef %12, ptr noundef %skb, ptr noundef %h, ptr noundef nonnull %c) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c) #4
  br label %cleanup

cleanup:                                          ; preds = %netlink_dump_start.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %netlink_dump_start.exit ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_diag_dump(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlh, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %7 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %arrayidx2 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @vsock_table_lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %while.cond.preheader, label %if.end35

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %11)
  %cmp4228 = icmp ult i32 %11, 252
  br i1 %cmp4228, label %while.body.lr.ph, label %while.cond.preheader.while.body39.lr.ph_crit_edge

while.cond.preheader.while.body39.lr.ph_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body39.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %vdiag_states = getelementptr i8, ptr %1, i32 20
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %cleanup31.while.body_crit_edge, %while.body.lr.ph
  %bucket.0230 = phi i32 [ %11, %while.body.lr.ph ], [ %inc30, %cleanup31.while.body_crit_edge ]
  %last_i.0229 = phi i32 [ %13, %while.body.lr.ph ], [ 0, %cleanup31.while.body_crit_edge ]
  %arrayidx5 = getelementptr [252 x %struct.list_head], ptr @vsock_bind_table, i32 0, i32 %bucket.0230
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn153221 = load ptr, ptr %arrayidx5, align 4
  %cmp6.not223 = icmp eq ptr %.pn153221, %arrayidx5
  br i1 %cmp6.not223, label %while.body.cleanup31_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.cleanup31_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup31

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.body.for.body_crit_edge
  %.pn153226 = phi ptr [ %.pn153, %for.inc.for.body_crit_edge ], [ %.pn153221, %while.body.for.body_crit_edge ]
  %i.1224 = phi i32 [ %i.2.ph, %for.inc.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  %vsk.0227 = getelementptr i8, ptr %.pn153226, i32 -996
  %skc_net.i154 = getelementptr i8, ptr %.pn153226, i32 -960
  %15 = ptrtoint ptr %skc_net.i154 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skc_net.i154, align 4
  %cmp.i.not = icmp eq ptr %16, %6
  br i1 %cmp.i.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1224, i32 %last_i.0229)
  %cmp11 = icmp ult i32 %i.1224, %last_i.0229
  br i1 %cmp11, label %if.end.next_bind_crit_edge, label %if.end13

if.end.next_bind_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %next_bind

if.end13:                                         ; preds = %if.end
  %17 = ptrtoint ptr %vdiag_states to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vdiag_states, align 4
  %skc_state = getelementptr i8, ptr %.pn153226, i32 -978
  %19 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %20 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end13.next_bind_crit_edge, label %if.end16

if.end13.next_bind_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %next_bind

if.end16:                                         ; preds = %if.end13
  %21 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 3, i32 12
  %23 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %portid, align 4
  %25 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nlmsg_seq, align 4
  %29 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end16.cleanup103_crit_edge

if.end16.cleanup103_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup103

skb_tailroom.exit.i.i:                            ; preds = %if.end16
  %31 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i.i.i, align 4
  %33 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 48
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.cleanup103_crit_edge, label %nlmsg_put.exit.i, !prof !20

skb_tailroom.exit.i.i.cleanup103_crit_edge:       ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup103

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %24, i32 noundef %28, i32 noundef 20, i32 noundef 32, i32 noundef 2) #4
  %tobool.not.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i, label %nlmsg_put.exit.i.cleanup103_crit_edge, label %sk_diag_fill.exit

nlmsg_put.exit.i.cleanup103_crit_edge:            ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup103

sk_diag_fill.exit:                                ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 40, ptr %add.ptr.i.i, align 4
  %sk_type.i = getelementptr i8, ptr %.pn153226, i32 -362
  %36 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %sk_type.i, align 2
  %conv.i155 = trunc i16 %37 to i8
  %vdiag_type.i = getelementptr i8, ptr %call3.i.i, i32 17
  %38 = ptrtoint ptr %vdiag_type.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv.i155, ptr %vdiag_type.i, align 1
  %39 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load volatile i8, ptr %skc_state, align 2
  %vdiag_state.i = getelementptr i8, ptr %call3.i.i, i32 18
  %41 = ptrtoint ptr %vdiag_state.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %vdiag_state.i, align 2
  %sk_shutdown.i = getelementptr i8, ptr %.pn153226, i32 -130
  %42 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %sk_shutdown.i, align 2
  %vdiag_shutdown.i = getelementptr i8, ptr %call3.i.i, i32 19
  %44 = ptrtoint ptr %vdiag_shutdown.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %vdiag_shutdown.i, align 1
  %svm_cid.i = getelementptr i8, ptr %.pn153226, i32 -24
  %45 = ptrtoint ptr %svm_cid.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %svm_cid.i, align 4
  %vdiag_src_cid.i = getelementptr i8, ptr %call3.i.i, i32 20
  %47 = ptrtoint ptr %vdiag_src_cid.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %vdiag_src_cid.i, align 4
  %svm_port.i = getelementptr i8, ptr %.pn153226, i32 -28
  %48 = ptrtoint ptr %svm_port.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %svm_port.i, align 4
  %vdiag_src_port.i = getelementptr i8, ptr %call3.i.i, i32 24
  %50 = ptrtoint ptr %vdiag_src_port.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %vdiag_src_port.i, align 4
  %svm_cid3.i = getelementptr i8, ptr %.pn153226, i32 -8
  %51 = ptrtoint ptr %svm_cid3.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %svm_cid3.i, align 4
  %vdiag_dst_cid.i = getelementptr i8, ptr %call3.i.i, i32 28
  %53 = ptrtoint ptr %vdiag_dst_cid.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %vdiag_dst_cid.i, align 4
  %svm_port5.i = getelementptr i8, ptr %.pn153226, i32 -12
  %54 = ptrtoint ptr %svm_port5.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %svm_port5.i, align 4
  %vdiag_dst_port.i = getelementptr i8, ptr %call3.i.i, i32 32
  %56 = ptrtoint ptr %vdiag_dst_port.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %vdiag_dst_port.i, align 4
  %call6.i = tail call i32 @sock_i_ino(ptr noundef %vsk.0227) #4
  %vdiag_ino.i = getelementptr i8, ptr %call3.i.i, i32 36
  %57 = ptrtoint ptr %vdiag_ino.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call6.i, ptr %vdiag_ino.i, align 4
  %vdiag_cookie.i = getelementptr i8, ptr %call3.i.i, i32 40
  tail call void @sock_diag_save_cookie(ptr noundef %vsk.0227, ptr noundef %vdiag_cookie.i) #4
  br label %next_bind

next_bind:                                        ; preds = %sk_diag_fill.exit, %if.end13.next_bind_crit_edge, %if.end.next_bind_crit_edge
  %inc = add i32 %i.1224, 1
  br label %for.inc

for.inc:                                          ; preds = %next_bind, %for.body.for.inc_crit_edge
  %i.2.ph = phi i32 [ %i.1224, %for.body.for.inc_crit_edge ], [ %inc, %next_bind ]
  %58 = ptrtoint ptr %.pn153226 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn153 = load ptr, ptr %.pn153226, align 4
  %cmp6.not = icmp eq ptr %.pn153, %arrayidx5
  br i1 %cmp6.not, label %for.inc.cleanup31_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup31_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup31

cleanup31:                                        ; preds = %for.inc.cleanup31_crit_edge, %while.body.cleanup31_crit_edge
  %inc30 = add nuw nsw i32 %bucket.0230, 1
  %exitcond.not = icmp eq i32 %inc30, 252
  br i1 %exitcond.not, label %cleanup31.while.body39.lr.ph_crit_edge, label %cleanup31.while.body_crit_edge

cleanup31.while.body_crit_edge:                   ; preds = %cleanup31
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

cleanup31.while.body39.lr.ph_crit_edge:           ; preds = %cleanup31
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body39.lr.ph

if.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 251, i32 %11)
  %cmp37242 = icmp ult i32 %11, 251
  br i1 %cmp37242, label %if.end35.while.body39.lr.ph_crit_edge, label %if.end35.cleanup103_crit_edge

if.end35.cleanup103_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup103

if.end35.while.body39.lr.ph_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body39.lr.ph

while.body39.lr.ph:                               ; preds = %if.end35.while.body39.lr.ph_crit_edge, %cleanup31.while.body39.lr.ph_crit_edge, %while.cond.preheader.while.body39.lr.ph_crit_edge
  %bucket.2262 = phi i32 [ %11, %if.end35.while.body39.lr.ph_crit_edge ], [ 0, %while.cond.preheader.while.body39.lr.ph_crit_edge ], [ 0, %cleanup31.while.body39.lr.ph_crit_edge ]
  %last_i.2261 = phi i32 [ %13, %if.end35.while.body39.lr.ph_crit_edge ], [ %13, %while.cond.preheader.while.body39.lr.ph_crit_edge ], [ 0, %cleanup31.while.body39.lr.ph_crit_edge ]
  %table.0260 = phi i32 [ %9, %if.end35.while.body39.lr.ph_crit_edge ], [ 1, %while.cond.preheader.while.body39.lr.ph_crit_edge ], [ 1, %cleanup31.while.body39.lr.ph_crit_edge ]
  %vdiag_states65 = getelementptr i8, ptr %1, i32 20
  %data_len.i.i.i.i160 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %end.i.i.i162 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %tail.i.i.i163 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %while.body39

while.body39:                                     ; preds = %cleanup96.while.body39_crit_edge, %while.body39.lr.ph
  %bucket.3244 = phi i32 [ %bucket.2262, %while.body39.lr.ph ], [ %inc95, %cleanup96.while.body39_crit_edge ]
  %last_i.3243 = phi i32 [ %last_i.2261, %while.body39.lr.ph ], [ 0, %cleanup96.while.body39_crit_edge ]
  %arrayidx41 = getelementptr [251 x %struct.list_head], ptr @vsock_connected_table, i32 0, i32 %bucket.3244
  %59 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn234 = load ptr, ptr %arrayidx41, align 4
  %cmp47.not236 = icmp eq ptr %.pn234, %arrayidx41
  br i1 %cmp47.not236, label %while.body39.cleanup96_crit_edge, label %while.body39.for.body50_crit_edge

while.body39.for.body50_crit_edge:                ; preds = %while.body39
  br label %for.body50

while.body39.cleanup96_crit_edge:                 ; preds = %while.body39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup96

for.body50:                                       ; preds = %for.inc88.for.body50_crit_edge, %while.body39.for.body50_crit_edge
  %.pn239 = phi ptr [ %.pn, %for.inc88.for.body50_crit_edge ], [ %.pn234, %while.body39.for.body50_crit_edge ]
  %i.6237 = phi i32 [ %i.7.ph, %for.inc88.for.body50_crit_edge ], [ 0, %while.body39.for.body50_crit_edge ]
  %vsk.1240 = getelementptr i8, ptr %.pn239, i32 -1004
  %bound_table.i = getelementptr i8, ptr %.pn239, i32 -8
  %60 = ptrtoint ptr %bound_table.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %bound_table.i, align 4
  %cmp.i.i156.not = icmp eq ptr %61, %bound_table.i
  br i1 %cmp.i.i156.not, label %if.end55, label %for.body50.for.inc88_crit_edge

for.body50.for.inc88_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc88

if.end55:                                         ; preds = %for.body50
  %skc_net.i157 = getelementptr i8, ptr %.pn239, i32 -968
  %62 = ptrtoint ptr %skc_net.i157 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %skc_net.i157, align 4
  %cmp.i158.not = icmp eq ptr %63, %6
  br i1 %cmp.i158.not, label %if.end60, label %if.end55.for.inc88_crit_edge

if.end55.for.inc88_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc88

if.end60:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_cmp4(i32 %i.6237, i32 %last_i.3243)
  %cmp61 = icmp ult i32 %i.6237, %last_i.3243
  br i1 %cmp61, label %if.end60.next_connected_crit_edge, label %if.end64

if.end60.next_connected_crit_edge:                ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %next_connected

if.end64:                                         ; preds = %if.end60
  %64 = ptrtoint ptr %vdiag_states65 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %vdiag_states65, align 4
  %skc_state67 = getelementptr i8, ptr %.pn239, i32 -986
  %66 = ptrtoint ptr %skc_state67 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load volatile i8, ptr %skc_state67, align 2
  %conv68 = zext i8 %67 to i32
  %shl69 = shl nuw i32 1, %conv68
  %and70 = and i32 %shl69, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end64.next_connected_crit_edge, label %if.end73

if.end64.next_connected_crit_edge:                ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %next_connected

if.end73:                                         ; preds = %if.end64
  %68 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cb, align 4
  %portid76 = getelementptr inbounds %struct.sk_buff, ptr %69, i32 0, i32 3, i32 12
  %70 = ptrtoint ptr %portid76 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %portid76, align 4
  %72 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %nlh, align 4
  %nlmsg_seq78 = getelementptr inbounds %struct.nlmsghdr, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %nlmsg_seq78 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nlmsg_seq78, align 4
  %76 = ptrtoint ptr %data_len.i.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data_len.i.i.i.i160, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.i.not.i.i.i161 = icmp eq i32 %77, 0
  br i1 %tobool.i.not.i.i.i161, label %skb_tailroom.exit.i.i168, label %if.end73.cleanup103_crit_edge

if.end73.cleanup103_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup103

skb_tailroom.exit.i.i168:                         ; preds = %if.end73
  %78 = ptrtoint ptr %end.i.i.i162 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %end.i.i.i162, align 4
  %80 = ptrtoint ptr %tail.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tail.i.i.i163, align 8
  %sub.ptr.lhs.cast.i.i.i164 = ptrtoint ptr %79 to i32
  %sub.ptr.rhs.cast.i.i.i165 = ptrtoint ptr %81 to i32
  %sub.ptr.sub.i.i.i166 = sub i32 %sub.ptr.lhs.cast.i.i.i164, %sub.ptr.rhs.cast.i.i.i165
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %sub.ptr.sub.i.i.i166)
  %cmp.i.i167 = icmp slt i32 %sub.ptr.sub.i.i.i166, 48
  br i1 %cmp.i.i167, label %skb_tailroom.exit.i.i168.cleanup103_crit_edge, label %nlmsg_put.exit.i171, !prof !20

skb_tailroom.exit.i.i168.cleanup103_crit_edge:    ; preds = %skb_tailroom.exit.i.i168
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup103

nlmsg_put.exit.i171:                              ; preds = %skb_tailroom.exit.i.i168
  %call3.i.i169 = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %71, i32 noundef %75, i32 noundef 20, i32 noundef 32, i32 noundef 2) #4
  %tobool.not.i170 = icmp eq ptr %call3.i.i169, null
  br i1 %tobool.not.i170, label %nlmsg_put.exit.i171.cleanup103_crit_edge, label %sk_diag_fill.exit193

nlmsg_put.exit.i171.cleanup103_crit_edge:         ; preds = %nlmsg_put.exit.i171
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup103

sk_diag_fill.exit193:                             ; preds = %nlmsg_put.exit.i171
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i172 = getelementptr i8, ptr %call3.i.i169, i32 16
  %82 = ptrtoint ptr %add.ptr.i.i172 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 40, ptr %add.ptr.i.i172, align 4
  %sk_type.i173 = getelementptr i8, ptr %.pn239, i32 -370
  %83 = ptrtoint ptr %sk_type.i173 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %sk_type.i173, align 2
  %conv.i174 = trunc i16 %84 to i8
  %vdiag_type.i175 = getelementptr i8, ptr %call3.i.i169, i32 17
  %85 = ptrtoint ptr %vdiag_type.i175 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv.i174, ptr %vdiag_type.i175, align 1
  %86 = ptrtoint ptr %skc_state67 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load volatile i8, ptr %skc_state67, align 2
  %vdiag_state.i177 = getelementptr i8, ptr %call3.i.i169, i32 18
  %88 = ptrtoint ptr %vdiag_state.i177 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %vdiag_state.i177, align 2
  %sk_shutdown.i178 = getelementptr i8, ptr %.pn239, i32 -138
  %89 = ptrtoint ptr %sk_shutdown.i178 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %sk_shutdown.i178, align 2
  %vdiag_shutdown.i179 = getelementptr i8, ptr %call3.i.i169, i32 19
  %91 = ptrtoint ptr %vdiag_shutdown.i179 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %vdiag_shutdown.i179, align 1
  %svm_cid.i180 = getelementptr i8, ptr %.pn239, i32 -32
  %92 = ptrtoint ptr %svm_cid.i180 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %svm_cid.i180, align 4
  %vdiag_src_cid.i181 = getelementptr i8, ptr %call3.i.i169, i32 20
  %94 = ptrtoint ptr %vdiag_src_cid.i181 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %vdiag_src_cid.i181, align 4
  %svm_port.i182 = getelementptr i8, ptr %.pn239, i32 -36
  %95 = ptrtoint ptr %svm_port.i182 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %svm_port.i182, align 4
  %vdiag_src_port.i183 = getelementptr i8, ptr %call3.i.i169, i32 24
  %97 = ptrtoint ptr %vdiag_src_port.i183 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %vdiag_src_port.i183, align 4
  %svm_cid3.i184 = getelementptr i8, ptr %.pn239, i32 -16
  %98 = ptrtoint ptr %svm_cid3.i184 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %svm_cid3.i184, align 4
  %vdiag_dst_cid.i185 = getelementptr i8, ptr %call3.i.i169, i32 28
  %100 = ptrtoint ptr %vdiag_dst_cid.i185 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %vdiag_dst_cid.i185, align 4
  %svm_port5.i186 = getelementptr i8, ptr %.pn239, i32 -20
  %101 = ptrtoint ptr %svm_port5.i186 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %svm_port5.i186, align 4
  %vdiag_dst_port.i187 = getelementptr i8, ptr %call3.i.i169, i32 32
  %103 = ptrtoint ptr %vdiag_dst_port.i187 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %vdiag_dst_port.i187, align 4
  %call6.i188 = tail call i32 @sock_i_ino(ptr noundef %vsk.1240) #4
  %vdiag_ino.i189 = getelementptr i8, ptr %call3.i.i169, i32 36
  %104 = ptrtoint ptr %vdiag_ino.i189 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %call6.i188, ptr %vdiag_ino.i189, align 4
  %vdiag_cookie.i190 = getelementptr i8, ptr %call3.i.i169, i32 40
  tail call void @sock_diag_save_cookie(ptr noundef %vsk.1240, ptr noundef %vdiag_cookie.i190) #4
  br label %next_connected

next_connected:                                   ; preds = %sk_diag_fill.exit193, %if.end64.next_connected_crit_edge, %if.end60.next_connected_crit_edge
  %inc84 = add i32 %i.6237, 1
  br label %for.inc88

for.inc88:                                        ; preds = %next_connected, %if.end55.for.inc88_crit_edge, %for.body50.for.inc88_crit_edge
  %i.7.ph = phi i32 [ %i.6237, %if.end55.for.inc88_crit_edge ], [ %i.6237, %for.body50.for.inc88_crit_edge ], [ %inc84, %next_connected ]
  %105 = ptrtoint ptr %.pn239 to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pn = load ptr, ptr %.pn239, align 4
  %cmp47.not = icmp eq ptr %.pn, %arrayidx41
  br i1 %cmp47.not, label %for.inc88.cleanup96_crit_edge, label %for.inc88.for.body50_crit_edge

for.inc88.for.body50_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body50

for.inc88.cleanup96_crit_edge:                    ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup96

cleanup96:                                        ; preds = %for.inc88.cleanup96_crit_edge, %while.body39.cleanup96_crit_edge
  %i.6.lcssa = phi i32 [ 0, %while.body39.cleanup96_crit_edge ], [ %i.7.ph, %for.inc88.cleanup96_crit_edge ]
  %inc95 = add nuw nsw i32 %bucket.3244, 1
  %exitcond254.not = icmp eq i32 %inc95, 251
  br i1 %exitcond254.not, label %cleanup96.cleanup103_crit_edge, label %cleanup96.while.body39_crit_edge

cleanup96.while.body39_crit_edge:                 ; preds = %cleanup96
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body39

cleanup96.cleanup103_crit_edge:                   ; preds = %cleanup96
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup103

cleanup103:                                       ; preds = %cleanup96.cleanup103_crit_edge, %nlmsg_put.exit.i171.cleanup103_crit_edge, %skb_tailroom.exit.i.i168.cleanup103_crit_edge, %if.end73.cleanup103_crit_edge, %if.end35.cleanup103_crit_edge, %nlmsg_put.exit.i.cleanup103_crit_edge, %skb_tailroom.exit.i.i.cleanup103_crit_edge, %if.end16.cleanup103_crit_edge
  %i.9 = phi i32 [ %13, %if.end35.cleanup103_crit_edge ], [ %i.6237, %nlmsg_put.exit.i171.cleanup103_crit_edge ], [ %i.6237, %skb_tailroom.exit.i.i168.cleanup103_crit_edge ], [ %i.6237, %if.end73.cleanup103_crit_edge ], [ %i.6.lcssa, %cleanup96.cleanup103_crit_edge ], [ %i.1224, %nlmsg_put.exit.i.cleanup103_crit_edge ], [ %i.1224, %skb_tailroom.exit.i.i.cleanup103_crit_edge ], [ %i.1224, %if.end16.cleanup103_crit_edge ]
  %table.1 = phi i32 [ %9, %if.end35.cleanup103_crit_edge ], [ %table.0260, %nlmsg_put.exit.i171.cleanup103_crit_edge ], [ %table.0260, %skb_tailroom.exit.i.i168.cleanup103_crit_edge ], [ %table.0260, %if.end73.cleanup103_crit_edge ], [ %table.0260, %cleanup96.cleanup103_crit_edge ], [ 0, %nlmsg_put.exit.i.cleanup103_crit_edge ], [ 0, %skb_tailroom.exit.i.i.cleanup103_crit_edge ], [ 0, %if.end16.cleanup103_crit_edge ]
  %bucket.5 = phi i32 [ %11, %if.end35.cleanup103_crit_edge ], [ %bucket.3244, %nlmsg_put.exit.i171.cleanup103_crit_edge ], [ %bucket.3244, %skb_tailroom.exit.i.i168.cleanup103_crit_edge ], [ %bucket.3244, %if.end73.cleanup103_crit_edge ], [ 251, %cleanup96.cleanup103_crit_edge ], [ %bucket.0230, %nlmsg_put.exit.i.cleanup103_crit_edge ], [ %bucket.0230, %skb_tailroom.exit.i.i.cleanup103_crit_edge ], [ %bucket.0230, %if.end16.cleanup103_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @vsock_table_lock) #4
  %106 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %table.1, ptr %7, align 4
  %107 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %bucket.5, ptr %arrayidx2, align 4
  %108 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %i.9, ptr %arrayidx3, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %109 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %len, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_diag_save_cookie(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netlink_dump_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_diag_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__initcall__kmod_vsock_diag__457_174_vsock_diag_init6, !1, !"__initcall__kmod_vsock_diag__457_174_vsock_diag_init6", i1 false, i1 false}
!1 = !{!"../net/vmw_vsock/diag.c", i32 174, i32 1}
!2 = !{ptr @__exitcall_vsock_diag_exit, !3, !"__exitcall_vsock_diag_exit", i1 false, i1 false}
!3 = !{!"../net/vmw_vsock/diag.c", i32 175, i32 1}
!4 = !{ptr @__UNIQUE_ID_file458, !5, !"__UNIQUE_ID_file458", i1 false, i1 false}
!5 = !{!"../net/vmw_vsock/diag.c", i32 176, i32 1}
!6 = !{ptr @__UNIQUE_ID_license459, !5, !"__UNIQUE_ID_license459", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias460, !8, !"__UNIQUE_ID_alias460", i1 false, i1 false}
!8 = !{!"../net/vmw_vsock/diag.c", i32 177, i32 1}
!9 = !{ptr @vsock_diag_handler, !10, !"vsock_diag_handler", i1 false, i1 false}
!10 = !{!"../net/vmw_vsock/diag.c", i32 159, i32 39}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 1, i32 2000}
