; ModuleID = '/llk/IR_all_yes/net/netlink/diag.c_pt.bc'
source_filename = "../net/netlink/diag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sock_diag_handler = type { i8, ptr, ptr, ptr }
%struct.netlink_dump_control = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.netlink_table = type { %struct.rhashtable, %struct.hlist_head, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.109, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.110, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.111, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.109 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.110 = type { ptr }
%union.anon.111 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.netlink_sock = type { %struct.sock, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.wait_queue_head, i8, i8, i32, %struct.netlink_callback, ptr, %struct.mutex, ptr, ptr, ptr, ptr, %struct.rhash_head, %struct.callback_head, %struct.work_struct }
%struct.rhash_head = type { ptr }
%struct.netlink_diag_req = type { i8, i8, i16, i32, i32, [2 x i32] }

@netlink_diag_handler = internal constant { %struct.sock_diag_handler, [16 x i8] } { %struct.sock_diag_handler { i8 16, ptr @netlink_diag_handler_dump, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@__initcall__kmod_netlink_diag__501_257_netlink_diag_init6 = internal global ptr @netlink_diag_init, section ".initcall6.init", align 4
@__exitcall_netlink_diag_exit = internal global ptr @netlink_diag_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file502 = internal constant [43 x i8] c"netlink_diag.file=net/netlink/netlink_diag\00", section ".modinfo", align 1
@__UNIQUE_ID_license503 = internal constant [25 x i8] c"netlink_diag.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias504 = internal constant [45 x i8] c"netlink_diag.alias=net-pf-16-proto-4-type-16\00", section ".modinfo", align 1
@__const.netlink_diag_handler_dump.c = private unnamed_addr constant %struct.netlink_dump_control { ptr null, ptr @netlink_diag_dump, ptr @netlink_diag_dump_done, ptr null, ptr null, i32 0 }, align 4
@nl_table = external dso_local local_unnamed_addr global ptr, align 4
@nl_table_lock = external dso_local global %struct.rwlock_t, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"netlink_diag_handler\00", align 1
@___asan_gen_.2 = private constant [22 x i8] c"../net/netlink/diag.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 242, i32 39 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 991, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias504, ptr @__UNIQUE_ID_file502, ptr @__UNIQUE_ID_license503, ptr @__exitcall_netlink_diag_exit, ptr @__initcall__kmod_netlink_diag__501_257_netlink_diag_init6, ptr @netlink_diag_exit, ptr @netlink_diag_handler, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlink_diag_handler to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @netlink_diag_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sock_diag_unregister(ptr noundef nonnull @netlink_diag_handler) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_diag_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @netlink_diag_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sock_diag_register(ptr noundef nonnull @netlink_diag_handler) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlink_diag_handler_dump(ptr noundef %skb, ptr noundef %h) #2 align 64 {
entry:
  %c = alloca %struct.netlink_dump_control, align 4
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i)
  %cmp = icmp slt i32 %sub.i, 20
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

netlink_dump_start.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c) #5
  %10 = call ptr @memcpy(ptr %c, ptr @__const.netlink_diag_handler_dump.c, i32 24)
  %diag_nlsk = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 54
  %11 = ptrtoint ptr %diag_nlsk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %diag_nlsk, align 8
  %module.i = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 4
  %13 = ptrtoint ptr %module.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %module.i, align 4
  %call.i = call i32 @__netlink_dump_start(ptr noundef %12, ptr noundef %skb, ptr noundef %h, ptr noundef nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c) #5
  br label %cleanup

cleanup:                                          ; preds = %netlink_dump_start.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %netlink_dump_start.exit ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlink_diag_dump(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %3 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nlh, align 4
  %sdiag_protocol = getelementptr i8, ptr %4, i32 17
  %5 = ptrtoint ptr %sdiag_protocol to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sdiag_protocol, align 1
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp = icmp eq i8 %6, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx2 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %8)
  %cmp337 = icmp slt i32 %8, 32
  br i1 %cmp337, label %if.then.for.body_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ %8, %if.then.for.body_crit_edge ]
  %s_num.038 = phi i32 [ 0, %if.end.for.body_crit_edge ], [ %2, %if.then.for.body_crit_edge ]
  %call5 = tail call fastcc i32 @__netlink_diag_dump(ptr noundef %skb, ptr noundef %cb, i32 noundef %i.039, i32 noundef %s_num.038)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end:                                           ; preds = %for.body
  %inc = add i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %8, %if.then.for.end_crit_edge ], [ %i.039, %for.body.for.end_crit_edge ], [ 32, %if.end.for.end_crit_edge ]
  %err.1 = phi i32 [ 0, %if.then.for.end_crit_edge ], [ %call5, %for.body.for.end_crit_edge ], [ 0, %if.end.for.end_crit_edge ]
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %i.0.lcssa, ptr %arrayidx2, align 4
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %6)
  %cmp10 = icmp ugt i8 %6, 31
  br i1 %cmp10, label %if.else.cleanup_crit_edge, label %if.end13

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call fastcc i32 @__netlink_diag_dump(ptr noundef %skb, ptr noundef %cb, i32 noundef %conv, i32 noundef %2)
  br label %if.end17

if.end17:                                         ; preds = %if.end13, %for.end
  %err.2 = phi i32 [ %err.1, %for.end ], [ %call16, %if.end13 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %cmp18 = icmp slt i32 %err.2, 0
  br i1 %cmp18, label %if.end17.cleanup_crit_edge, label %cond.false

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.false:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end17.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.else.cleanup_crit_edge ], [ %11, %cond.false ], [ %err.2, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlink_diag_dump_done(ptr nocapture noundef readonly %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %3 = inttoptr i32 %2 to ptr
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rhashtable_walk_exit(ptr noundef %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__netlink_diag_dump(ptr noundef %skb, ptr nocapture noundef %cb, i32 noundef %protocol, i32 noundef %s_num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nl_table to i32))
  %1 = load ptr, ptr @nl_table, align 4
  %arrayidx1 = getelementptr %struct.netlink_table, ptr %1, i32 %protocol
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %7 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nlh, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %s_num)
  %cmp = icmp sgt i32 %s_num, 1
  br i1 %cmp, label %entry.mc_list_crit_edge, label %if.end

entry.mc_list_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mc_list

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = inttoptr i32 %10 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 36) #8
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %if.then3.cleanup_crit_edge, label %if.end7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call7.i to i32
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %if.end.if.end9_crit_edge
  %hti.0 = phi ptr [ %11, %if.end.if.end9_crit_edge ], [ %call7.i, %if.end7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s_num)
  %tobool10.not = icmp eq i32 %s_num, 0
  br i1 %tobool10.not, label %if.then11, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rhashtable_walk_enter(ptr noundef %arrayidx1, ptr noundef %hti.0) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %call.i = tail call i32 @rhashtable_walk_start_check(ptr noundef %hti.0) #5
  %call13140 = tail call ptr @rhashtable_walk_next(ptr noundef %hti.0) #5
  %tobool14.not141 = icmp eq ptr %call13140, null
  br i1 %tobool14.not141, label %if.end12.while.end.thread_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  br label %while.body

if.end12.while.end.thread_crit_edge:              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.thread

while.end.thread:                                 ; preds = %while.cond.backedge.while.end.thread_crit_edge, %if.end12.while.end.thread_crit_edge
  tail call void @rhashtable_walk_stop(ptr noundef %hti.0) #5
  tail call void @rhashtable_walk_exit(ptr noundef %hti.0) #5
  br label %mc_list

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %if.end12.while.body_crit_edge
  %call13142 = phi ptr [ %call13, %while.cond.backedge.while.body_crit_edge ], [ %call13140, %if.end12.while.body_crit_edge ]
  %cmp.i = icmp ugt ptr %call13142, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end21

if.then16:                                        ; preds = %while.body
  %cmp18 = icmp eq ptr %call13142, inttoptr (i32 -11 to ptr)
  br i1 %cmp18, label %if.then16.while.cond.backedge_crit_edge, label %while.end

if.then16.while.cond.backedge_crit_edge:          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.end21:                                         ; preds = %while.body
  %skc_net.i126 = getelementptr inbounds %struct.sock_common, ptr %call13142, i32 0, i32 9
  %15 = ptrtoint ptr %skc_net.i126 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skc_net.i126, align 4
  %cmp.i127.not = icmp eq ptr %16, %6
  br i1 %cmp.i127.not, label %if.end26, label %if.end21.while.cond.backedge_crit_edge

if.end21.while.cond.backedge_crit_edge:           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end26.while.cond.backedge_crit_edge, %if.end21.while.cond.backedge_crit_edge, %if.then16.while.cond.backedge_crit_edge
  %call13 = tail call ptr @rhashtable_walk_next(ptr noundef %hti.0) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %while.cond.backedge.while.end.thread_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.backedge.while.end.thread_crit_edge:   ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.thread

if.end26:                                         ; preds = %if.end21
  %17 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 12
  %19 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %portid, align 4
  %21 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nlmsg_seq, align 4
  %call30 = tail call i32 @sock_i_ino(ptr noundef nonnull %call13142) #5
  %call31 = tail call fastcc i32 @sk_diag_fill(ptr noundef nonnull %call13142, ptr noundef %skb, ptr noundef %add.ptr.i, i32 noundef %20, i32 noundef %24, i32 noundef %call30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %while.end.thread133, label %if.end26.while.cond.backedge_crit_edge

if.end26.while.cond.backedge_crit_edge:           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

while.end.thread133:                              ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rhashtable_walk_stop(ptr noundef %hti.0) #5
  br label %done

while.end:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %call13142 to i32
  tail call void @rhashtable_walk_stop(ptr noundef %hti.0) #5
  br label %done

mc_list:                                          ; preds = %while.end.thread, %entry.mc_list_crit_edge
  tail call void @_raw_read_lock(ptr noundef nonnull @nl_table_lock) #5
  %mc_list38 = getelementptr %struct.netlink_table, ptr %1, i32 %protocol, i32 1
  %26 = ptrtoint ptr %mc_list38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mc_list38, align 4
  %tobool39.not = icmp eq ptr %27, null
  %add.ptr = getelementptr i8, ptr %27, i32 -24
  %tobool41.not143152 = icmp eq ptr %add.ptr, null
  %tobool41.not143 = or i1 %tobool39.not, %tobool41.not143152
  br i1 %tobool41.not143, label %mc_list.for.end_crit_edge, label %mc_list.for.body_crit_edge

mc_list.for.body_crit_edge:                       ; preds = %mc_list
  br label %for.body

mc_list.for.end_crit_edge:                        ; preds = %mc_list
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %mc_list.for.body_crit_edge
  %num.1146 = phi i32 [ %num.2, %for.inc.for.body_crit_edge ], [ 2, %mc_list.for.body_crit_edge ]
  %sk.0144 = phi ptr [ %add.ptr71, %for.inc.for.body_crit_edge ], [ %add.ptr, %mc_list.for.body_crit_edge ]
  %pprev.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.0144, i32 0, i32 15, i32 0, i32 1
  %28 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i.not = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i.not, label %if.end44, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end44:                                         ; preds = %for.body
  %skc_net.i128 = getelementptr inbounds %struct.sock_common, ptr %sk.0144, i32 0, i32 9
  %30 = ptrtoint ptr %skc_net.i128 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skc_net.i128, align 4
  %cmp.i129.not = icmp eq ptr %31, %6
  br i1 %cmp.i129.not, label %if.end49, label %if.end44.for.inc_crit_edge

if.end44.for.inc_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end49:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1146, i32 %s_num)
  %cmp50 = icmp slt i32 %num.1146, %s_num
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %inc52 = add nsw i32 %num.1146, 1
  br label %for.inc

if.end53:                                         ; preds = %if.end49
  %32 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cb, align 4
  %portid56 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 3, i32 12
  %34 = ptrtoint ptr %portid56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %portid56, align 4
  %36 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nlh, align 4
  %nlmsg_seq58 = getelementptr inbounds %struct.nlmsghdr, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %nlmsg_seq58 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nlmsg_seq58, align 4
  %call59 = tail call i32 @sock_i_ino(ptr noundef nonnull %sk.0144) #5
  %call60 = tail call fastcc i32 @sk_diag_fill(ptr noundef nonnull %sk.0144, ptr noundef %skb, ptr noundef %add.ptr.i, i32 noundef %35, i32 noundef %39, i32 noundef %call59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end53.for.end_crit_edge, label %if.end63

if.end53.for.end_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end63:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %inc64 = add i32 %num.1146, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end63, %if.then51, %if.end44.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %num.2 = phi i32 [ %num.1146, %for.body.for.inc_crit_edge ], [ %inc52, %if.then51 ], [ %inc64, %if.end63 ], [ %num.1146, %if.end44.for.inc_crit_edge ]
  %40 = getelementptr inbounds %struct.sock_common, ptr %sk.0144, i32 0, i32 7
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %tobool67.not = icmp eq ptr %42, null
  %add.ptr71 = getelementptr i8, ptr %42, i32 -24
  %tobool41.not155 = icmp eq ptr %add.ptr71, null
  %tobool41.not = or i1 %tobool67.not, %tobool41.not155
  br i1 %tobool41.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end53.for.end_crit_edge, %mc_list.for.end_crit_edge
  %num.1.lcssa = phi i32 [ 2, %mc_list.for.end_crit_edge ], [ %num.1146, %if.end53.for.end_crit_edge ], [ %num.2, %for.inc.for.end_crit_edge ]
  %ret.3 = phi i32 [ 0, %mc_list.for.end_crit_edge ], [ 1, %if.end53.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @nl_table_lock) #5
  br label %done

done:                                             ; preds = %for.end, %while.end, %while.end.thread133
  %num.3 = phi i32 [ %num.1.lcssa, %for.end ], [ 1, %while.end ], [ 1, %while.end.thread133 ]
  %ret.4 = phi i32 [ %ret.3, %for.end ], [ %25, %while.end ], [ 1, %while.end.thread133 ]
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %num.3, ptr %0, align 4
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %done ], [ -12, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_enter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_walk_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sk_diag_fill(ptr noundef %sk, ptr noundef %skb, ptr nocapture noundef readonly %req, i32 noundef %portid, i32 noundef %seq, i32 noundef %sk_ino) unnamed_addr #2 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

skb_tailroom.exit.i:                              ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 44
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup_crit_edge, label %nlmsg_put.exit, !prof !22

skb_tailroom.exit.i.cleanup_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef 20, i32 noundef 28, i32 noundef 2) #5
  %tobool.not = icmp eq ptr %call3.i, null
  br i1 %tobool.not, label %nlmsg_put.exit.cleanup_crit_edge, label %if.end

nlmsg_put.exit.cleanup_crit_edge:                 ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %add.ptr.i, align 4
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %7 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sk_type, align 2
  %conv = trunc i16 %8 to i8
  %ndiag_type = getelementptr i8, ptr %call3.i, i32 17
  %9 = ptrtoint ptr %ndiag_type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %ndiag_type, align 1
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %10 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sk_protocol, align 4
  %conv3 = trunc i16 %11 to i8
  %ndiag_protocol = getelementptr i8, ptr %call3.i, i32 18
  %12 = ptrtoint ptr %ndiag_protocol to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv3, ptr %ndiag_protocol, align 2
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %13 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state, align 2
  %ndiag_state = getelementptr i8, ptr %call3.i, i32 19
  %15 = ptrtoint ptr %ndiag_state to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ndiag_state, align 1
  %ndiag_ino = getelementptr i8, ptr %call3.i, i32 32
  %16 = ptrtoint ptr %ndiag_ino to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sk_ino, ptr %ndiag_ino, align 4
  %portid4 = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 1
  %17 = ptrtoint ptr %portid4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %portid4, align 8
  %ndiag_portid = getelementptr i8, ptr %call3.i, i32 20
  %19 = ptrtoint ptr %ndiag_portid to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %ndiag_portid, align 4
  %dst_portid = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 2
  %20 = ptrtoint ptr %dst_portid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dst_portid, align 4
  %ndiag_dst_portid = getelementptr i8, ptr %call3.i, i32 24
  %22 = ptrtoint ptr %ndiag_dst_portid to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ndiag_dst_portid, align 4
  %dst_group = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 3
  %23 = ptrtoint ptr %dst_group to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dst_group, align 8
  %ndiag_dst_group = getelementptr i8, ptr %call3.i, i32 28
  %25 = ptrtoint ptr %ndiag_dst_group to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %ndiag_dst_group, align 4
  %ndiag_cookie = getelementptr i8, ptr %call3.i, i32 36
  tail call void @sock_diag_save_cookie(ptr noundef %sk, ptr noundef %ndiag_cookie) #5
  %ndiag_show = getelementptr inbounds %struct.netlink_diag_req, ptr %req, i32 0, i32 4
  %26 = ptrtoint ptr %ndiag_show to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ndiag_show, align 4
  %and = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %groups.i = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 7
  %28 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %groups.i, align 8
  %cmp.i1 = icmp eq ptr %29, null
  br i1 %cmp.i1, label %land.lhs.true.if.end9_crit_edge, label %sk_diag_dump_groups.exit

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

sk_diag_dump_groups.exit:                         ; preds = %land.lhs.true
  %ngroups.i = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 6
  %30 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ngroups.i, align 4
  %add.i = add i32 %31, 31
  %and.i = lshr i32 %add.i, 3
  %div5.i = and i32 %and.i, 536870908
  %call2.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %div5.i, ptr noundef nonnull %29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool7.not = icmp eq i32 %call2.i, 0
  br i1 %tobool7.not, label %sk_diag_dump_groups.exit.if.end9_crit_edge, label %sk_diag_dump_groups.exit.if.then.i.i_crit_edge

sk_diag_dump_groups.exit.if.then.i.i_crit_edge:   ; preds = %sk_diag_dump_groups.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

sk_diag_dump_groups.exit.if.end9_crit_edge:       ; preds = %sk_diag_dump_groups.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end9:                                          ; preds = %sk_diag_dump_groups.exit.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %32 = ptrtoint ptr %ndiag_show to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ndiag_show, align 4
  %and11 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end17_crit_edge, label %land.lhs.true13

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

land.lhs.true13:                                  ; preds = %if.end9
  %call14 = tail call i32 @sock_diag_put_meminfo(ptr noundef %sk, ptr noundef %skb, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true13.if.end17_crit_edge, label %land.lhs.true13.if.then.i.i_crit_edge

land.lhs.true13.if.then.i.i_crit_edge:            ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

land.lhs.true13.if.end17_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true13.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %34 = ptrtoint ptr %ndiag_show to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ndiag_show, align 4
  %and19 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.if.end25_crit_edge, label %land.lhs.true21

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

land.lhs.true21:                                  ; preds = %if.end17
  %cb_running.i = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 12
  %36 = ptrtoint ptr %cb_running.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cb_running.i, align 1, !range !23
  %38 = zext i8 %37 to i32
  %flags1.i = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 4
  %39 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags1.i, align 4
  %and.i4 = and i32 %40, 2
  %41 = or i32 %and.i4, %38
  %and7.i = and i32 %40, 4
  %42 = or i32 %41, %and7.i
  %and13.i = and i32 %40, 8
  %43 = or i32 %42, %and13.i
  %and19.i = and i32 %40, 16
  %44 = or i32 %43, %and19.i
  %and25.i = and i32 %40, 32
  %45 = or i32 %44, %and25.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #5
  %46 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool23.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool23.not, label %land.lhs.true21.if.end25_crit_edge, label %land.lhs.true21.if.then.i.i_crit_edge

land.lhs.true21.if.then.i.i_crit_edge:            ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

land.lhs.true21.if.end25_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true21.if.end25_crit_edge, %if.end17.if.end25_crit_edge
  %47 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %49 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %land.lhs.true21.if.then.i.i_crit_edge, %land.lhs.true13.if.then.i.i_crit_edge, %sk_diag_dump_groups.exit.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %51, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !22

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #5
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %52 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i6 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i7 = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.i8 = sub i32 %sub.ptr.lhs.cast.i.i6, %sub.ptr.rhs.cast.i.i7
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i8) #5
  br label %cleanup

cleanup:                                          ; preds = %nlmsg_cancel.exit, %if.end25, %nlmsg_put.exit.cleanup_crit_edge, %skb_tailroom.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nlmsg_cancel.exit ], [ 0, %if.end25 ], [ -90, %nlmsg_put.exit.cleanup_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_walk_start_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_diag_save_cookie(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_diag_put_meminfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netlink_dump_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_diag_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__initcall__kmod_netlink_diag__501_257_netlink_diag_init6, !1, !"__initcall__kmod_netlink_diag__501_257_netlink_diag_init6", i1 false, i1 false}
!1 = !{!"../net/netlink/diag.c", i32 257, i32 1}
!2 = !{ptr @__exitcall_netlink_diag_exit, !3, !"__exitcall_netlink_diag_exit", i1 false, i1 false}
!3 = !{!"../net/netlink/diag.c", i32 258, i32 1}
!4 = !{ptr @__UNIQUE_ID_file502, !5, !"__UNIQUE_ID_file502", i1 false, i1 false}
!5 = !{!"../net/netlink/diag.c", i32 259, i32 1}
!6 = !{ptr @__UNIQUE_ID_license503, !5, !"__UNIQUE_ID_license503", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias504, !8, !"__UNIQUE_ID_alias504", i1 false, i1 false}
!8 = !{!"../net/netlink/diag.c", i32 260, i32 1}
!9 = !{ptr @netlink_diag_handler, !10, !"netlink_diag_handler", i1 false, i1 false}
!10 = !{!"../net/netlink/diag.c", i32 242, i32 39}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/net/netlink.h", i32 991, i32 3}
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
!23 = !{i8 0, i8 2}
