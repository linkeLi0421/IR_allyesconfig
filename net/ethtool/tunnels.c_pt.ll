; ModuleID = '/llk/IR_all_yes/net/ethtool/tunnels.c_pt.bc'
source_filename = "../net/ethtool/tunnels.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.ethnl_req_info = type { ptr, ptr, i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.137, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.137 = type { ptr }
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
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.udp_tunnel_nic_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.0, %union.anon.138, %union.anon.139, [48 x i8], %union.anon.140, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.142, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.138 = type { ptr }
%union.anon.139 = type { i64 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { i32, ptr }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.144, i32, i32, i32, i16, i16, %union.anon.146, i32, %union.anon.147, %union.anon.148, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.144 = type { i32 }
%union.anon.146 = type { i32 }
%union.anon.147 = type { i32 }
%union.anon.148 = type { i16 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.21, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.105, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.105 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.124 }
%union.anon.124 = type { [6 x i32], [24 x i8] }
%struct.genl_dumpit_info = type { ptr, %struct.genl_ops, ptr }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.sock_common = type { %union.anon.108, %union.anon.110, %union.anon.111, i16, i8, i8, i32, %union.anon.113, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.116, [0 x i32], %union.anon.117, i16, i16, %union.anon.118, %struct.refcount_struct, [0 x i32], %union.anon.119 }
%union.anon.108 = type { i64 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i32 }
%union.anon.113 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.29 }
%union.anon.29 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { %struct.hlist_node }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_tunnel_info_get_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }>, [16 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, [16 x i8] zeroinitializer }, align 32
@ethnl_tunnel_info_reply_size.__msg = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"device does not report tunnel offload info\00", [53 x i8] zeroinitializer }, align 32
@udp_tunnel_type_names = external dso_local constant [0 x [32 x i8]], align 1
@udp_tunnel_nic_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.1 = private unnamed_addr constant [29 x i8] c"ethnl_tunnel_info_get_policy\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 11, i32 25 }
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.5 = private constant [25 x i8] c"../net/ethtool/tunnels.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 47, i32 3 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 991, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @ethnl_tunnel_info_get_policy, ptr @ethnl_tunnel_info_reply_size.__msg, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_tunnel_info_get_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_tunnel_info_reply_size.__msg to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_tunnel_info_doit(ptr nocapture noundef readnone %skb, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %types.addr.i61.i = alloca i32, align 4
  %types.addr.i.i = alloca i32, align 4
  %req_info = alloca %struct.ethnl_req_info, align 4
  %reply_payload = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_info) #6
  %0 = call ptr @memset(ptr %req_info, i32 0, i32 12)
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %1 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attrs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reply_payload) #6
  %3 = ptrtoint ptr %reply_payload to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %reply_payload, align 4, !annotation !16
  %arrayidx = getelementptr ptr, ptr %2, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %6 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_net.i, align 4
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %extack, align 4
  %call1 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %req_info, ptr noundef %5, ptr noundef %7, ptr noundef %9, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @rtnl_lock() #6
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extack, align 4
  %flags.i = getelementptr inbounds %struct.ethnl_req_info, ptr %req_info, i32 0, i32 2
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %14 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req_info, align 4
  %udp_tunnel_nic_info.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 152
  %16 = ptrtoint ptr %udp_tunnel_nic_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udp_tunnel_nic_info.i, align 4
  %tobool1.not.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i, label %do.body.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end
  %arrayidx.i = getelementptr %struct.udp_tunnel_nic_info, ptr %17, i32 0, i32 5, i32 0
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not.i = icmp eq i32 %19, 0
  br i1 %tobool5.not.i, label %for.body.preheader.i.for.end.i_crit_edge, label %if.end7.i

for.body.preheader.i.for.end.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

do.body.i:                                        ; preds = %if.end
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_tunnel_info_reply_size.__msg) #6
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %do.body.i.err_unlock_rtnl_crit_edge, label %if.then3.i

do.body.i.err_unlock_rtnl_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock_rtnl

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ethnl_tunnel_info_reply_size.__msg, ptr %11, align 4
  br label %err_unlock_rtnl

if.end7.i:                                        ; preds = %for.body.preheader.i
  %tunnel_types.i = getelementptr %struct.udp_tunnel_nic_info, ptr %17, i32 0, i32 5, i32 0, i32 1
  %21 = ptrtoint ptr %tunnel_types.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tunnel_types.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %types.addr.i.i) #6
  %23 = ptrtoint ptr %types.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %types.addr.i.i, align 4
  %call.i.i = call i32 @ethnl_bitset32_size(ptr noundef nonnull %types.addr.i.i, ptr noundef null, i32 noundef 3, ptr noundef nonnull @udp_tunnel_type_names, i1 noundef zeroext %tobool.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %add3.i.i = add nuw i32 %call.i.i, 12
  %retval.0.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %add3.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %types.addr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp12.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp12.i, label %if.end7.i.err_unlock_rtnl_crit_edge, label %if.end14.i

if.end7.i.err_unlock_rtnl_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock_rtnl

if.end14.i:                                       ; preds = %if.end7.i
  %add.i = add nuw i32 %retval.0.i.i, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  %24 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.end14.i.udp_tunnel_nic_dump_size.exit.i_crit_edge, label %if.end.i.i

if.end14.i.udp_tunnel_nic_dump_size.exit.i_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udp_tunnel_nic_dump_size.exit.i

if.end.i.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %req_info, align 4
  %dump_size.i.i = getelementptr inbounds %struct.udp_tunnel_nic_ops, ptr %24, i32 0, i32 5
  %27 = ptrtoint ptr %dump_size.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dump_size.i.i, align 4
  %call.i59.i = call i32 %28(ptr noundef %26, i32 noundef 0) #6
  br label %udp_tunnel_nic_dump_size.exit.i

udp_tunnel_nic_dump_size.exit.i:                  ; preds = %if.end.i.i, %if.end14.i.udp_tunnel_nic_dump_size.exit.i_crit_edge
  %retval.0.i60.i = phi i32 [ %call.i59.i, %if.end.i.i ], [ 0, %if.end14.i.udp_tunnel_nic_dump_size.exit.i_crit_edge ]
  %add17.i = add i32 %add.i, %retval.0.i60.i
  %arrayidx.1.i = getelementptr %struct.udp_tunnel_nic_info, ptr %17, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool5.not.1.i = icmp eq i32 %30, 0
  br i1 %tobool5.not.1.i, label %udp_tunnel_nic_dump_size.exit.i.for.end.i_crit_edge, label %if.end7.1.i

udp_tunnel_nic_dump_size.exit.i.for.end.i_crit_edge: ; preds = %udp_tunnel_nic_dump_size.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end7.1.i:                                      ; preds = %udp_tunnel_nic_dump_size.exit.i
  %tunnel_types.1.i = getelementptr %struct.udp_tunnel_nic_info, ptr %17, i32 0, i32 5, i32 1, i32 1
  %31 = ptrtoint ptr %tunnel_types.1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tunnel_types.1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %types.addr.i.i) #6
  %33 = ptrtoint ptr %types.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %types.addr.i.i, align 4
  %call.i.1.i = call i32 @ethnl_bitset32_size(ptr noundef nonnull %types.addr.i.i, ptr noundef null, i32 noundef 3, ptr noundef nonnull @udp_tunnel_type_names, i1 noundef zeroext %tobool.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %cmp.i.1.i = icmp slt i32 %call.i.1.i, 0
  %add3.i.1.i = add nuw i32 %call.i.1.i, 12
  %retval.0.i.1.i = select i1 %cmp.i.1.i, i32 %call.i.1.i, i32 %add3.i.1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %types.addr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.1.i)
  %cmp12.1.i = icmp slt i32 %retval.0.i.1.i, 0
  br i1 %cmp12.1.i, label %if.end7.1.i.err_unlock_rtnl_crit_edge, label %if.end14.1.i

if.end7.1.i.err_unlock_rtnl_crit_edge:            ; preds = %if.end7.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock_rtnl

if.end14.1.i:                                     ; preds = %if.end7.1.i
  %add.1.i = add i32 %retval.0.i.1.i, %add17.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  %34 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %tobool.not.i.1.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.1.i, label %if.end14.1.i.udp_tunnel_nic_dump_size.exit.1.i_crit_edge, label %if.end.i.1.i

if.end14.1.i.udp_tunnel_nic_dump_size.exit.1.i_crit_edge: ; preds = %if.end14.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udp_tunnel_nic_dump_size.exit.1.i

if.end.i.1.i:                                     ; preds = %if.end14.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %req_info, align 4
  %dump_size.i.1.i = getelementptr inbounds %struct.udp_tunnel_nic_ops, ptr %34, i32 0, i32 5
  %37 = ptrtoint ptr %dump_size.i.1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dump_size.i.1.i, align 4
  %call.i59.1.i = call i32 %38(ptr noundef %36, i32 noundef 1) #6
  br label %udp_tunnel_nic_dump_size.exit.1.i

udp_tunnel_nic_dump_size.exit.1.i:                ; preds = %if.end.i.1.i, %if.end14.1.i.udp_tunnel_nic_dump_size.exit.1.i_crit_edge
  %retval.0.i60.1.i = phi i32 [ %call.i59.1.i, %if.end.i.1.i ], [ 0, %if.end14.1.i.udp_tunnel_nic_dump_size.exit.1.i_crit_edge ]
  %add17.1.i = add i32 %add.1.i, %retval.0.i60.1.i
  %arrayidx.2.i = getelementptr %struct.udp_tunnel_nic_info, ptr %17, i32 0, i32 5, i32 2
  %39 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool5.not.2.i = icmp eq i32 %40, 0
  br i1 %tobool5.not.2.i, label %udp_tunnel_nic_dump_size.exit.1.i.for.end.i_crit_edge, label %if.end7.2.i

udp_tunnel_nic_dump_size.exit.1.i.for.end.i_crit_edge: ; preds = %udp_tunnel_nic_dump_size.exit.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end7.2.i:                                      ; preds = %udp_tunnel_nic_dump_size.exit.1.i
  %tunnel_types.2.i = getelementptr %struct.udp_tunnel_nic_info, ptr %17, i32 0, i32 5, i32 2, i32 1
  %41 = ptrtoint ptr %tunnel_types.2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tunnel_types.2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %types.addr.i.i) #6
  %43 = ptrtoint ptr %types.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %types.addr.i.i, align 4
  %call.i.2.i = call i32 @ethnl_bitset32_size(ptr noundef nonnull %types.addr.i.i, ptr noundef null, i32 noundef 3, ptr noundef nonnull @udp_tunnel_type_names, i1 noundef zeroext %tobool.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %cmp.i.2.i = icmp slt i32 %call.i.2.i, 0
  %add3.i.2.i = add nuw i32 %call.i.2.i, 12
  %retval.0.i.2.i = select i1 %cmp.i.2.i, i32 %call.i.2.i, i32 %add3.i.2.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %types.addr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.2.i)
  %cmp12.2.i = icmp slt i32 %retval.0.i.2.i, 0
  br i1 %cmp12.2.i, label %if.end7.2.i.err_unlock_rtnl_crit_edge, label %if.end14.2.i

if.end7.2.i.err_unlock_rtnl_crit_edge:            ; preds = %if.end7.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock_rtnl

if.end14.2.i:                                     ; preds = %if.end7.2.i
  %add.2.i = add i32 %retval.0.i.2.i, %add17.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  %44 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %tobool.not.i.2.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.2.i, label %if.end14.2.i.udp_tunnel_nic_dump_size.exit.2.i_crit_edge, label %if.end.i.2.i

if.end14.2.i.udp_tunnel_nic_dump_size.exit.2.i_crit_edge: ; preds = %if.end14.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udp_tunnel_nic_dump_size.exit.2.i

if.end.i.2.i:                                     ; preds = %if.end14.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %req_info, align 4
  %dump_size.i.2.i = getelementptr inbounds %struct.udp_tunnel_nic_ops, ptr %44, i32 0, i32 5
  %47 = ptrtoint ptr %dump_size.i.2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dump_size.i.2.i, align 4
  %call.i59.2.i = call i32 %48(ptr noundef %46, i32 noundef 2) #6
  br label %udp_tunnel_nic_dump_size.exit.2.i

udp_tunnel_nic_dump_size.exit.2.i:                ; preds = %if.end.i.2.i, %if.end14.2.i.udp_tunnel_nic_dump_size.exit.2.i_crit_edge
  %retval.0.i60.2.i = phi i32 [ %call.i59.2.i, %if.end.i.2.i ], [ 0, %if.end14.2.i.udp_tunnel_nic_dump_size.exit.2.i_crit_edge ]
  %add17.2.i = add i32 %add.2.i, %retval.0.i60.2.i
  %arrayidx.3.i = getelementptr %struct.udp_tunnel_nic_info, ptr %17, i32 0, i32 5, i32 3
  %49 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool5.not.3.i = icmp eq i32 %50, 0
  br i1 %tobool5.not.3.i, label %udp_tunnel_nic_dump_size.exit.2.i.for.end.i_crit_edge, label %if.end7.3.i

udp_tunnel_nic_dump_size.exit.2.i.for.end.i_crit_edge: ; preds = %udp_tunnel_nic_dump_size.exit.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end7.3.i:                                      ; preds = %udp_tunnel_nic_dump_size.exit.2.i
  %tunnel_types.3.i = getelementptr %struct.udp_tunnel_nic_info, ptr %17, i32 0, i32 5, i32 3, i32 1
  %51 = ptrtoint ptr %tunnel_types.3.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tunnel_types.3.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %types.addr.i.i) #6
  %53 = ptrtoint ptr %types.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %types.addr.i.i, align 4
  %call.i.3.i = call i32 @ethnl_bitset32_size(ptr noundef nonnull %types.addr.i.i, ptr noundef null, i32 noundef 3, ptr noundef nonnull @udp_tunnel_type_names, i1 noundef zeroext %tobool.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i)
  %cmp.i.3.i = icmp slt i32 %call.i.3.i, 0
  %add3.i.3.i = add nuw i32 %call.i.3.i, 12
  %retval.0.i.3.i = select i1 %cmp.i.3.i, i32 %call.i.3.i, i32 %add3.i.3.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %types.addr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.3.i)
  %cmp12.3.i = icmp slt i32 %retval.0.i.3.i, 0
  br i1 %cmp12.3.i, label %if.end7.3.i.err_unlock_rtnl_crit_edge, label %if.end14.3.i

if.end7.3.i.err_unlock_rtnl_crit_edge:            ; preds = %if.end7.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock_rtnl

if.end14.3.i:                                     ; preds = %if.end7.3.i
  %add.3.i = add i32 %retval.0.i.3.i, %add17.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  %54 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %tobool.not.i.3.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.3.i, label %if.end14.3.i.udp_tunnel_nic_dump_size.exit.3.i_crit_edge, label %if.end.i.3.i

if.end14.3.i.udp_tunnel_nic_dump_size.exit.3.i_crit_edge: ; preds = %if.end14.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udp_tunnel_nic_dump_size.exit.3.i

if.end.i.3.i:                                     ; preds = %if.end14.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %req_info, align 4
  %dump_size.i.3.i = getelementptr inbounds %struct.udp_tunnel_nic_ops, ptr %54, i32 0, i32 5
  %57 = ptrtoint ptr %dump_size.i.3.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dump_size.i.3.i, align 4
  %call.i59.3.i = call i32 %58(ptr noundef %56, i32 noundef 3) #6
  br label %udp_tunnel_nic_dump_size.exit.3.i

udp_tunnel_nic_dump_size.exit.3.i:                ; preds = %if.end.i.3.i, %if.end14.3.i.udp_tunnel_nic_dump_size.exit.3.i_crit_edge
  %retval.0.i60.3.i = phi i32 [ %call.i59.3.i, %if.end.i.3.i ], [ 0, %if.end14.3.i.udp_tunnel_nic_dump_size.exit.3.i_crit_edge ]
  %add17.3.i = add i32 %add.3.i, %retval.0.i60.3.i
  br label %for.end.i

for.end.i:                                        ; preds = %udp_tunnel_nic_dump_size.exit.3.i, %udp_tunnel_nic_dump_size.exit.2.i.for.end.i_crit_edge, %udp_tunnel_nic_dump_size.exit.1.i.for.end.i_crit_edge, %udp_tunnel_nic_dump_size.exit.i.for.end.i_crit_edge, %for.body.preheader.i.for.end.i_crit_edge
  %size.0.lcssa.i = phi i32 [ 4, %for.body.preheader.i.for.end.i_crit_edge ], [ %add17.i, %udp_tunnel_nic_dump_size.exit.i.for.end.i_crit_edge ], [ %add17.1.i, %udp_tunnel_nic_dump_size.exit.1.i.for.end.i_crit_edge ], [ %add17.2.i, %udp_tunnel_nic_dump_size.exit.2.i.for.end.i_crit_edge ], [ %add17.3.i, %udp_tunnel_nic_dump_size.exit.3.i ]
  %flags18.i = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %17, i32 0, i32 4
  %59 = ptrtoint ptr %flags18.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags18.i, align 4
  %and19.i = and i32 %60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %for.end.i.ethnl_tunnel_info_reply_size.exit_crit_edge, label %if.then21.i

for.end.i.ethnl_tunnel_info_reply_size.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ethnl_tunnel_info_reply_size.exit

if.then21.i:                                      ; preds = %for.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %types.addr.i61.i) #6
  %61 = ptrtoint ptr %types.addr.i61.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %types.addr.i61.i, align 4
  %call.i62.i = call i32 @ethnl_bitset32_size(ptr noundef nonnull %types.addr.i61.i, ptr noundef null, i32 noundef 3, ptr noundef nonnull @udp_tunnel_type_names, i1 noundef zeroext %tobool.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i)
  %cmp.i63.i = icmp slt i32 %call.i62.i, 0
  %add3.i64.i = add nuw i32 %call.i62.i, 12
  %retval.0.i65.i = select i1 %cmp.i63.i, i32 %call.i62.i, i32 %add3.i64.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %types.addr.i61.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i65.i)
  %cmp24.i = icmp slt i32 %retval.0.i65.i, 0
  br i1 %cmp24.i, label %if.then21.i.err_unlock_rtnl_crit_edge, label %if.end26.i

if.then21.i.err_unlock_rtnl_crit_edge:            ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock_rtnl

if.end26.i:                                       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  %add27.i = add i32 %size.0.lcssa.i, 20
  %add33.i = add i32 %add27.i, %retval.0.i65.i
  br label %ethnl_tunnel_info_reply_size.exit

ethnl_tunnel_info_reply_size.exit:                ; preds = %if.end26.i, %for.end.i.ethnl_tunnel_info_reply_size.exit_crit_edge
  %retval.0.i = phi i32 [ %add33.i, %if.end26.i ], [ %size.0.lcssa.i, %for.end.i.ethnl_tunnel_info_reply_size.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp4 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp4, label %ethnl_tunnel_info_reply_size.exit.err_unlock_rtnl_crit_edge, label %if.end6

ethnl_tunnel_info_reply_size.exit.err_unlock_rtnl_crit_edge: ; preds = %ethnl_tunnel_info_reply_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock_rtnl

if.end6:                                          ; preds = %ethnl_tunnel_info_reply_size.exit
  %add = add nuw i32 %retval.0.i, 32
  %62 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %req_info, align 4
  %call8 = call ptr @ethnl_reply_init(i32 noundef %add, ptr noundef %63, i8 noundef zeroext 29, i16 noundef zeroext 1, ptr noundef %info, ptr noundef nonnull %reply_payload) #6
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.end6.err_unlock_rtnl_crit_edge, label %if.end10

if.end6.err_unlock_rtnl_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock_rtnl

if.end10:                                         ; preds = %if.end6
  %call11 = call fastcc i32 @ethnl_tunnel_info_fill_reply(ptr noundef nonnull %req_info, ptr noundef nonnull %call8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %err_free_msg

if.end14:                                         ; preds = %if.end10
  call void @rtnl_unlock() #6
  %64 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %req_info, align 4
  %tobool.not.i.i35 = icmp eq ptr %65, null
  br i1 %tobool.not.i.i35, label %if.end14.ethnl_parse_header_dev_put.exit_crit_edge, label %do.body1.i.i.i

if.end14.ethnl_parse_header_dev_put.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %ethnl_parse_header_dev_put.exit

do.body1.i.i.i:                                   ; preds = %if.end14
  %dev_tracker.i = getelementptr inbounds %struct.ethnl_req_info, ptr %req_info, i32 0, i32 1
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 119
  %call.i.i.i = call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i) #6
  %66 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !17
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 118
  %67 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %69 = ptrtoint ptr %68 to i32
  %70 = call i32 @llvm.read_register.i32(metadata !6) #6
  %and.i.i.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %75, %69
  %76 = inttoptr i32 %add.i.i.i to ptr
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %add13.i.i.i = add i32 %78, -1
  store i32 %add13.i.i.i, ptr %76, align 4
  %79 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !18
  %and.i.i.i.i.i = and i32 %79, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !19

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @warn_bogus_irq_restore() #6
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %66) #6, !srcloc !20
  br label %ethnl_parse_header_dev_put.exit

ethnl_parse_header_dev_put.exit:                  ; preds = %dev_put.exit.i.i, %if.end14.ethnl_parse_header_dev_put.exit_crit_edge
  %80 = ptrtoint ptr %reply_payload to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reply_payload, align 4
  %add.ptr1.i = getelementptr i8, ptr %81, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call8, i32 0, i32 16
  %82 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %83 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %84 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %85 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %_net.i, align 4
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %87 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %86, i32 0, i32 21
  %89 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i36 = call i32 @netlink_unicast(ptr noundef %90, ptr noundef nonnull %call8, i32 noundef %88, i32 noundef 64) #6
  %91 = call i32 @llvm.smin.i32(i32 %call.i.i.i36, i32 0) #6
  br label %cleanup

err_free_msg:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree_skb_reason(ptr noundef nonnull %call8, i32 noundef 0) #6
  br label %err_unlock_rtnl

err_unlock_rtnl:                                  ; preds = %err_free_msg, %if.end6.err_unlock_rtnl_crit_edge, %ethnl_tunnel_info_reply_size.exit.err_unlock_rtnl_crit_edge, %if.then21.i.err_unlock_rtnl_crit_edge, %if.end7.3.i.err_unlock_rtnl_crit_edge, %if.end7.2.i.err_unlock_rtnl_crit_edge, %if.end7.1.i.err_unlock_rtnl_crit_edge, %if.end7.i.err_unlock_rtnl_crit_edge, %if.then3.i, %do.body.i.err_unlock_rtnl_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %ethnl_tunnel_info_reply_size.exit.err_unlock_rtnl_crit_edge ], [ %call11, %err_free_msg ], [ -12, %if.end6.err_unlock_rtnl_crit_edge ], [ %retval.0.i.3.i, %if.end7.3.i.err_unlock_rtnl_crit_edge ], [ %retval.0.i.2.i, %if.end7.2.i.err_unlock_rtnl_crit_edge ], [ %retval.0.i.1.i, %if.end7.1.i.err_unlock_rtnl_crit_edge ], [ %retval.0.i.i, %if.end7.i.err_unlock_rtnl_crit_edge ], [ %retval.0.i65.i, %if.then21.i.err_unlock_rtnl_crit_edge ], [ -95, %do.body.i.err_unlock_rtnl_crit_edge ], [ -95, %if.then3.i ]
  call void @rtnl_unlock() #6
  %92 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %req_info, align 4
  %tobool.not.i.i37 = icmp eq ptr %93, null
  br i1 %tobool.not.i.i37, label %err_unlock_rtnl.cleanup_crit_edge, label %do.body1.i.i.i49

err_unlock_rtnl.cleanup_crit_edge:                ; preds = %err_unlock_rtnl
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body1.i.i.i49:                                 ; preds = %err_unlock_rtnl
  %dev_tracker.i38 = getelementptr inbounds %struct.ethnl_req_info, ptr %req_info, i32 0, i32 1
  %refcnt_tracker.i.i.i39 = getelementptr inbounds %struct.net_device, ptr %93, i32 0, i32 119
  %call.i.i.i40 = call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i39, ptr noundef %dev_tracker.i38) #6
  %94 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !17
  %pcpu_refcnt.i.i.i41 = getelementptr inbounds %struct.net_device, ptr %93, i32 0, i32 118
  %95 = ptrtoint ptr %pcpu_refcnt.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pcpu_refcnt.i.i.i41, align 4
  %97 = ptrtoint ptr %96 to i32
  %98 = call i32 @llvm.read_register.i32(metadata !6) #6
  %and.i.i.i.i42 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i.i42 to ptr
  %cpu.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %cpu.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cpu.i.i.i43, align 4
  %arrayidx.i.i.i44 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %101
  %102 = ptrtoint ptr %arrayidx.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i.i.i44, align 4
  %add.i.i.i45 = add i32 %103, %97
  %104 = inttoptr i32 %add.i.i.i45 to ptr
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 4
  %add13.i.i.i46 = add i32 %106, -1
  store i32 %add13.i.i.i46, ptr %104, align 4
  %107 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !18
  %and.i.i.i.i.i47 = and i32 %107, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i47)
  %tobool24.not.i.i.i48 = icmp eq i32 %and.i.i.i.i.i47, 0
  br i1 %tobool24.not.i.i.i48, label %if.then28.i.i.i50, label %do.body1.i.i.i49.dev_put.exit.i.i51_crit_edge, !prof !19

do.body1.i.i.i49.dev_put.exit.i.i51_crit_edge:    ; preds = %do.body1.i.i.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_put.exit.i.i51

if.then28.i.i.i50:                                ; preds = %do.body1.i.i.i49
  call void @__sanitizer_cov_trace_pc() #8
  call void @warn_bogus_irq_restore() #6
  br label %dev_put.exit.i.i51

dev_put.exit.i.i51:                               ; preds = %if.then28.i.i.i50, %do.body1.i.i.i49.dev_put.exit.i.i51_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %94) #6, !srcloc !20
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit.i.i51, %err_unlock_rtnl.cleanup_crit_edge, %ethnl_parse_header_dev_put.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %91, %ethnl_parse_header_dev_put.exit ], [ %call1, %entry.cleanup_crit_edge ], [ %ret.0, %err_unlock_rtnl.cleanup_crit_edge ], [ %ret.0, %dev_put.exit.i.i51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reply_payload) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_info) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_parse_header_dev_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ethnl_reply_init(i32 noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ethnl_tunnel_info_fill_reply(ptr nocapture noundef readonly %req_base, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %tmp.i120 = alloca i32, align 4
  %tmp.i118 = alloca i16, align 2
  %tmp.i112 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %zero = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %2 = ptrtoint ptr %req_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req_base, align 4
  %udp_tunnel_nic_info = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 152
  %4 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udp_tunnel_nic_info, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %entry.cleanup61_crit_edge, label %if.end

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

if.end:                                           ; preds = %entry
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32770, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool3.not166 = icmp eq ptr %7, null
  %tobool3.not = select i1 %cmp.i.i, i1 true, i1 %tobool3.not166
  br i1 %tobool3.not, label %if.end.cleanup61_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup61_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

for.body:                                         ; preds = %if.end31.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0163 = phi i32 [ %inc, %if.end31.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.udp_tunnel_nic_info, ptr %5, i32 0, i32 5, i32 %i.0163
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %for.body.for.end_crit_edge, label %if.end8

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end8:                                          ; preds = %for.body
  %10 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i104 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i104)
  %cmp.i.i105 = icmp slt i32 %call1.i.i104, 0
  %tobool10.not161 = icmp eq ptr %11, null
  %tobool10.not = select i1 %cmp.i.i105, i1 true, i1 %tobool10.not161
  br i1 %tobool10.not, label %if.end8.if.then.i.i141_crit_edge, label %if.end12

if.end8.if.then.i.i141_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i141

if.end12:                                         ; preds = %if.end8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.end19, label %if.end12.if.then.i.i_crit_edge

if.end12.if.then.i.i_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end19:                                         ; preds = %if.end12
  %tunnel_types = getelementptr %struct.udp_tunnel_nic_info, ptr %5, i32 0, i32 5, i32 %i.0163, i32 1
  %call23 = call i32 @ethnl_put_bitset32(ptr noundef %skb, i32 noundef 2, ptr noundef %tunnel_types, ptr noundef null, i32 noundef 3, ptr noundef nonnull @udp_tunnel_type_names, i1 noundef zeroext %tobool) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end19.if.then.i.i_crit_edge

if.end19.if.then.i.i_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end26:                                         ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  %15 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end26.if.end31_crit_edge, label %udp_tunnel_nic_dump_write.exit

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

udp_tunnel_nic_dump_write.exit:                   ; preds = %if.end26
  %16 = ptrtoint ptr %req_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req_base, align 4
  %dump_write.i = getelementptr inbounds %struct.udp_tunnel_nic_ops, ptr %15, i32 0, i32 6
  %18 = ptrtoint ptr %dump_write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dump_write.i, align 4
  %call.i107 = call i32 %19(ptr noundef %17, i32 noundef %i.0163, ptr noundef %skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool29.not = icmp eq i32 %call.i107, 0
  br i1 %tobool29.not, label %udp_tunnel_nic_dump_write.exit.if.end31_crit_edge, label %udp_tunnel_nic_dump_write.exit.if.then.i.i_crit_edge

udp_tunnel_nic_dump_write.exit.if.then.i.i_crit_edge: ; preds = %udp_tunnel_nic_dump_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

udp_tunnel_nic_dump_write.exit.if.end31_crit_edge: ; preds = %udp_tunnel_nic_dump_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end31:                                         ; preds = %udp_tunnel_nic_dump_write.exit.if.end31_crit_edge, %if.end26.if.end31_crit_edge
  %20 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i, ptr %11, align 2
  %inc = add nuw nsw i32 %i.0163, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %if.end31.for.end_crit_edge, label %if.end31.for.body_crit_edge

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end31.for.end_crit_edge, %for.body.for.end_crit_edge
  %flags33 = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %5, i32 0, i32 4
  %23 = ptrtoint ptr %flags33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags33, align 4
  %and34 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %for.end.if.end59_crit_edge, label %if.then36

for.end.if.end59_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then36:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero) #6
  %25 = ptrtoint ptr %zero to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %zero, align 4
  %26 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i109 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i109)
  %cmp.i.i110 = icmp slt i32 %call1.i.i109, 0
  %tobool38.not160 = icmp eq ptr %27, null
  %tobool38.not = select i1 %cmp.i.i110, i1 true, i1 %tobool38.not160
  br i1 %tobool38.not, label %cleanup, label %if.end40

if.end40:                                         ; preds = %if.then36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i112) #6
  %28 = ptrtoint ptr %tmp.i112 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %tmp.i112, align 4
  %call.i113 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i112) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i112) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool42.not = icmp eq i32 %call.i113, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.cleanup.thread154_crit_edge

if.end40.cleanup.thread154_crit_edge:             ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread154

if.end44:                                         ; preds = %if.end40
  %call46 = call i32 @ethnl_put_bitset32(ptr noundef %skb, i32 noundef 2, ptr noundef nonnull %zero, ptr noundef null, i32 noundef 3, ptr noundef nonnull @udp_tunnel_type_names, i1 noundef zeroext %tobool) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end44.cleanup.thread154_crit_edge

if.end44.cleanup.thread154_crit_edge:             ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread154

if.end49:                                         ; preds = %if.end44
  %29 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i115 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32771, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i115)
  %cmp.i.i116 = icmp slt i32 %call1.i.i115, 0
  %.call.i.i117 = select i1 %cmp.i.i116, ptr null, ptr %30
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i118) #6
  %31 = ptrtoint ptr %tmp.i118 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 4789, ptr %tmp.i118, align 2
  %call.i119 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i118) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i118) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool52.not = icmp eq i32 %call.i119, 0
  br i1 %tobool52.not, label %lor.lhs.false, label %if.end49.err_cancel_entry_crit_edge

if.end49.err_cancel_entry_crit_edge:              ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cancel_entry

lor.lhs.false:                                    ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i120) #6
  %32 = ptrtoint ptr %tmp.i120 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %tmp.i120, align 4
  %call.i121 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i120) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i120) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool54.not = icmp eq i32 %call.i121, 0
  br i1 %tobool54.not, label %cleanup.thread157, label %lor.lhs.false.err_cancel_entry_crit_edge

lor.lhs.false.err_cancel_entry_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cancel_entry

cleanup.thread157:                                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i123 = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i124 = ptrtoint ptr %.call.i.i117 to i32
  %sub.ptr.sub.i125 = sub i32 %sub.ptr.lhs.cast.i123, %sub.ptr.rhs.cast.i124
  %conv.i126 = trunc i32 %sub.ptr.sub.i125 to i16
  %35 = ptrtoint ptr %.call.i.i117 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i126, ptr %.call.i.i117, align 2
  %36 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i128 = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast.i129 = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i130 = sub i32 %sub.ptr.lhs.cast.i128, %sub.ptr.rhs.cast.i129
  %conv.i131 = trunc i32 %sub.ptr.sub.i130 to i16
  %37 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i131, ptr %27, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero) #6
  br label %if.end59

cleanup.thread154:                                ; preds = %if.end44.cleanup.thread154_crit_edge, %if.end40.cleanup.thread154_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero) #6
  br label %if.then.i.i

cleanup:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero) #6
  br label %if.then.i.i141

if.end59:                                         ; preds = %cleanup.thread157, %for.end.if.end59_crit_edge
  %38 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i133 = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i134 = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i135 = sub i32 %sub.ptr.lhs.cast.i133, %sub.ptr.rhs.cast.i134
  %conv.i136 = trunc i32 %sub.ptr.sub.i135 to i16
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i136, ptr %7, align 2
  br label %cleanup61

err_cancel_entry:                                 ; preds = %lor.lhs.false.err_cancel_entry_crit_edge, %if.end49.err_cancel_entry_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero) #6
  call fastcc void @nla_nest_cancel(ptr noundef %skb, ptr noundef %.call.i.i117)
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %err_cancel_entry, %cleanup.thread154, %udp_tunnel_nic_dump_write.exit.if.then.i.i_crit_edge, %if.end19.if.then.i.i_crit_edge, %if.end12.if.then.i.i_crit_edge
  %table.0 = phi ptr [ %27, %err_cancel_entry ], [ %27, %cleanup.thread154 ], [ %11, %udp_tunnel_nic_dump_write.exit.if.then.i.i_crit_edge ], [ %11, %if.end19.if.then.i.i_crit_edge ], [ %11, %if.end12.if.then.i.i_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %41 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i137 = icmp ugt ptr %42, %table.0
  br i1 %cmp.i.i137, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !19

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %43 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %table.0 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #6
  br label %if.then.i.i141

if.then.i.i141:                                   ; preds = %nla_nest_cancel.exit, %cleanup, %if.end8.if.then.i.i141_crit_edge
  %data.i.i139 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %45 = ptrtoint ptr %data.i.i139 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i139, align 4
  %cmp.i.i140 = icmp ugt ptr %46, %7
  br i1 %cmp.i.i140, label %do.end.i.i142, label %if.then.i.i141.nla_nest_cancel.exit147_crit_edge, !prof !19

if.then.i.i141.nla_nest_cancel.exit147_crit_edge: ; preds = %if.then.i.i141
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_nest_cancel.exit147

do.end.i.i142:                                    ; preds = %if.then.i.i141
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_nest_cancel.exit147

nla_nest_cancel.exit147:                          ; preds = %do.end.i.i142, %if.then.i.i141.nla_nest_cancel.exit147_crit_edge
  %47 = ptrtoint ptr %data.i.i139 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i139, align 4
  %sub.ptr.lhs.cast.i.i143 = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i144 = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i.i145 = sub i32 %sub.ptr.lhs.cast.i.i143, %sub.ptr.rhs.cast.i.i144
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i145) #6
  br label %cleanup61

cleanup61:                                        ; preds = %nla_nest_cancel.exit147, %if.end59, %if.end.cleanup61_crit_edge, %entry.cleanup61_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit147 ], [ 0, %if.end59 ], [ -95, %entry.cleanup61_crit_edge ], [ -90, %if.end.cleanup61_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_tunnel_info_start(ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %attrs = getelementptr inbounds %struct.genl_dumpit_info, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attrs, align 4
  %5 = call ptr @memset(ptr %2, i32 0, i32 20)
  %arrayidx = getelementptr ptr, ptr %4, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cb, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skc_net.i, align 4
  %extack = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 6
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %extack, align 4
  %call2 = tail call i32 @ethnl_parse_header_dev_get(ptr noundef %2, ptr noundef %7, ptr noundef %14, ptr noundef %16, i1 noundef zeroext false) #6
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1.i.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body1.i.i.i:                                   ; preds = %entry
  %dev_tracker.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 119
  %call.i.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i) #6
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !17
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 118
  %20 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !6) #6
  %and.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %28, %22
  %29 = inttoptr i32 %add.i.i.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add13.i.i.i = add i32 %31, -1
  store i32 %add13.i.i.i, ptr %29, align 4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !18
  %and.i.i.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.ethnl_parse_header_dev_put.exit_crit_edge, !prof !19

do.body1.i.i.i.ethnl_parse_header_dev_put.exit_crit_edge: ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ethnl_parse_header_dev_put.exit

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %ethnl_parse_header_dev_put.exit

ethnl_parse_header_dev_put.exit:                  ; preds = %if.then28.i.i.i, %do.body1.i.i.i.ethnl_parse_header_dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #6, !srcloc !20
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %2, align 4
  br label %if.end

if.end:                                           ; preds = %ethnl_parse_header_dev_put.exit, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_tunnel_info_dumpit(ptr noundef %skb, ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %pos_idx = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %6 = ptrtoint ptr %pos_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pos_idx, align 4
  tail call void @rtnl_lock() #6
  %dev_base_seq = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %dev_base_seq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_base_seq, align 4
  %seq = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %10 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %seq, align 4
  %pos_hash = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 3
  %11 = ptrtoint ptr %pos_hash to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pos_hash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %12)
  %cmp132 = icmp slt i32 %12, 256
  br i1 %cmp132, label %for.body.lr.ph, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.body.lr.ph:                                   ; preds = %entry
  %dev_index_head = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 24
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %data.i.i.i97 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc36.for.body_crit_edge, %for.body.lr.ph
  %s_idx.0136 = phi i32 [ %7, %for.body.lr.ph ], [ 0, %for.inc36.for.body_crit_edge ]
  %h.0134 = phi i32 [ %12, %for.body.lr.ph ], [ %inc37, %for.inc36.for.body_crit_edge ]
  %ret.0133 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1.lcssa, %for.inc36.for.body_crit_edge ]
  %13 = ptrtoint ptr %dev_index_head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_index_head, align 16
  %arrayidx = getelementptr %struct.hlist_head, ptr %14, i32 %h.0134
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %16, null
  %add.ptr = getelementptr i8, ptr %16, i32 -664
  %tobool3.not126146 = icmp eq ptr %add.ptr, null
  %tobool3.not126 = or i1 %tobool.not, %tobool3.not126146
  br i1 %tobool3.not126, label %for.body.for.inc36_crit_edge, label %for.body.for.body4_crit_edge

for.body.for.body4_crit_edge:                     ; preds = %for.body
  br label %for.body4

for.body.for.inc36_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc36

for.body4:                                        ; preds = %cont.for.body4_crit_edge, %for.body.for.body4_crit_edge
  %idx.1129 = phi i32 [ %inc, %cont.for.body4_crit_edge ], [ 0, %for.body.for.body4_crit_edge ]
  %dev.0128 = phi ptr [ %add.ptr31, %cont.for.body4_crit_edge ], [ %add.ptr, %for.body.for.body4_crit_edge ]
  %ret.1127 = phi i32 [ %ret.2, %cont.for.body4_crit_edge ], [ %ret.0133, %for.body.for.body4_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.1129, i32 %s_idx.0136)
  %cmp5 = icmp slt i32 %idx.1129, %s_idx.0136
  br i1 %cmp5, label %for.body4.cont_crit_edge, label %if.end

for.body4.cont_crit_edge:                         ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cont

if.end:                                           ; preds = %for.body4
  %call6 = tail call ptr @ethnl_dump_put(ptr noundef %skb, ptr noundef %cb, i8 noundef zeroext 29) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.out_crit_edge, label %if.end9

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @ethnl_fill_reply_header(ptr noundef %skb, ptr noundef nonnull %dev.0128, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.i, label %if.end13

if.then.i:                                        ; preds = %if.end9
  %add.ptr1.i = getelementptr i8, ptr %call6, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.out_crit_edge, label %if.then.i.i.i

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then.i.i.i:                                    ; preds = %if.then.i
  %17 = ptrtoint ptr %data.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i.i97, align 4
  %cmp.i.i.i = icmp ugt ptr %18, %add.ptr1.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !19

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %19 = ptrtoint ptr %data.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i97, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #6
  br label %out

if.end13:                                         ; preds = %if.end9
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev.0128, ptr %0, align 4
  %call16 = tail call fastcc i32 @ethnl_tunnel_info_fill_reply(ptr noundef %0, ptr noundef %skb)
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp19 = icmp slt i32 %call16, 0
  %add.ptr1.i94 = getelementptr i8, ptr %call6, i32 -20
  br i1 %cmp19, label %if.then.i96, label %if.end24

if.then.i96:                                      ; preds = %if.end13
  %tobool.not.i.i.i95 = icmp eq ptr %add.ptr1.i94, null
  br i1 %tobool.not.i.i.i95, label %if.then.i96.genlmsg_cancel.exit105_crit_edge, label %if.then.i.i.i99

if.then.i96.genlmsg_cancel.exit105_crit_edge:     ; preds = %if.then.i96
  call void @__sanitizer_cov_trace_pc() #8
  br label %genlmsg_cancel.exit105

if.then.i.i.i99:                                  ; preds = %if.then.i96
  %23 = ptrtoint ptr %data.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i97, align 4
  %cmp.i.i.i98 = icmp ugt ptr %24, %add.ptr1.i94
  br i1 %cmp.i.i.i98, label %do.end.i.i.i100, label %if.then.i.i.i99.if.end.i.i.i104_crit_edge, !prof !19

if.then.i.i.i99.if.end.i.i.i104_crit_edge:        ; preds = %if.then.i.i.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i104

do.end.i.i.i100:                                  ; preds = %if.then.i.i.i99
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i.i.i104

if.end.i.i.i104:                                  ; preds = %do.end.i.i.i100, %if.then.i.i.i99.if.end.i.i.i104_crit_edge
  %25 = ptrtoint ptr %data.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i.i97, align 4
  %sub.ptr.lhs.cast.i.i.i101 = ptrtoint ptr %add.ptr1.i94 to i32
  %sub.ptr.rhs.cast.i.i.i102 = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i.i103 = sub i32 %sub.ptr.lhs.cast.i.i.i101, %sub.ptr.rhs.cast.i.i.i102
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i103) #6
  br label %genlmsg_cancel.exit105

genlmsg_cancel.exit105:                           ; preds = %if.end.i.i.i104, %if.then.i96.genlmsg_cancel.exit105_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call16)
  %cmp21 = icmp eq i32 %call16, -95
  br i1 %cmp21, label %genlmsg_cancel.exit105.cont_crit_edge, label %genlmsg_cancel.exit105.out_crit_edge

genlmsg_cancel.exit105.out_crit_edge:             ; preds = %genlmsg_cancel.exit105
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

genlmsg_cancel.exit105.cont_crit_edge:            ; preds = %genlmsg_cancel.exit105
  call void @__sanitizer_cov_trace_pc() #8
  br label %cont

if.end24:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i94 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %29 = ptrtoint ptr %add.ptr1.i94 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i94, align 4
  br label %cont

cont:                                             ; preds = %if.end24, %genlmsg_cancel.exit105.cont_crit_edge, %for.body4.cont_crit_edge
  %ret.2 = phi i32 [ %ret.1127, %for.body4.cont_crit_edge ], [ -95, %genlmsg_cancel.exit105.cont_crit_edge ], [ %call16, %if.end24 ]
  %inc = add i32 %idx.1129, 1
  %index_hlist = getelementptr inbounds %struct.net_device, ptr %dev.0128, i32 0, i32 101
  %30 = ptrtoint ptr %index_hlist to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %index_hlist, align 8
  %tobool27.not = icmp eq ptr %31, null
  %add.ptr31 = getelementptr i8, ptr %31, i32 -664
  %tobool3.not153 = icmp eq ptr %add.ptr31, null
  %tobool3.not = or i1 %tobool27.not, %tobool3.not153
  br i1 %tobool3.not, label %cont.for.inc36_crit_edge, label %cont.for.body4_crit_edge

cont.for.body4_crit_edge:                         ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4

cont.for.inc36_crit_edge:                         ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc36

for.inc36:                                        ; preds = %cont.for.inc36_crit_edge, %for.body.for.inc36_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.0133, %for.body.for.inc36_crit_edge ], [ %ret.2, %cont.for.inc36_crit_edge ]
  %idx.1.lcssa = phi i32 [ 0, %for.body.for.inc36_crit_edge ], [ %inc, %cont.for.inc36_crit_edge ]
  %inc37 = add nsw i32 %h.0134, 1
  %exitcond.not = icmp eq i32 %inc37, 256
  br i1 %exitcond.not, label %for.inc36.out_crit_edge, label %for.inc36.for.body_crit_edge

for.inc36.for.body_crit_edge:                     ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc36.out_crit_edge:                          ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %for.inc36.out_crit_edge, %genlmsg_cancel.exit105.out_crit_edge, %if.end.i.i.i, %if.then.i.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %h.0121 = phi i32 [ %h.0134, %if.end.i.i.i ], [ %h.0134, %if.then.i.out_crit_edge ], [ %12, %entry.out_crit_edge ], [ %h.0134, %if.end.out_crit_edge ], [ %h.0134, %genlmsg_cancel.exit105.out_crit_edge ], [ 256, %for.inc36.out_crit_edge ]
  %ret.4 = phi i32 [ %call10, %if.end.i.i.i ], [ %call10, %if.then.i.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ %call16, %genlmsg_cancel.exit105.out_crit_edge ], [ -90, %if.end.out_crit_edge ], [ %ret.1.lcssa, %for.inc36.out_crit_edge ]
  %idx.2 = phi i32 [ %idx.1129, %if.end.i.i.i ], [ %idx.1129, %if.then.i.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ %idx.1129, %if.end.out_crit_edge ], [ %idx.1129, %genlmsg_cancel.exit105.out_crit_edge ], [ %idx.1.lcssa, %for.inc36.out_crit_edge ]
  tail call void @rtnl_unlock() #6
  %32 = ptrtoint ptr %pos_hash to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %h.0121, ptr %pos_hash, align 4
  %33 = ptrtoint ptr %pos_idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %idx.2, ptr %pos_idx, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i, align 4
  %prev_seq.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 10
  %36 = ptrtoint ptr %prev_seq.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %prev_seq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i107 = icmp eq i32 %37, 0
  br i1 %tobool.not.i107, label %out.nl_dump_check_consistent.exit_crit_edge, label %land.lhs.true.i

out.nl_dump_check_consistent.exit_crit_edge:      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %nl_dump_check_consistent.exit

land.lhs.true.i:                                  ; preds = %out
  %38 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %37)
  %cmp.not.i = icmp eq i32 %39, %37
  br i1 %cmp.not.i, label %land.lhs.true.i.nl_dump_check_consistent.exit_crit_edge, label %if.then.i108

land.lhs.true.i.nl_dump_check_consistent.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nl_dump_check_consistent.exit

if.then.i108:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %nlmsg_flags.i = getelementptr inbounds %struct.nlmsghdr, ptr %35, i32 0, i32 2
  %40 = ptrtoint ptr %nlmsg_flags.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %nlmsg_flags.i, align 2
  %42 = or i16 %41, 16
  store i16 %42, ptr %nlmsg_flags.i, align 2
  br label %nl_dump_check_consistent.exit

nl_dump_check_consistent.exit:                    ; preds = %if.then.i108, %land.lhs.true.i.nl_dump_check_consistent.exit_crit_edge, %out.nl_dump_check_consistent.exit_crit_edge
  %43 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %seq, align 4
  %45 = ptrtoint ptr %prev_seq.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %prev_seq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %ret.4)
  %cmp42 = icmp eq i32 %ret.4, -90
  br i1 %cmp42, label %land.lhs.true, label %nl_dump_check_consistent.exit.if.end46_crit_edge

nl_dump_check_consistent.exit.if.end46_crit_edge: ; preds = %nl_dump_check_consistent.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

land.lhs.true:                                    ; preds = %nl_dump_check_consistent.exit
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool43.not = icmp eq i32 %47, 0
  br i1 %tobool43.not, label %land.lhs.true.if.end46_crit_edge, label %land.lhs.true.cleanup47_crit_edge

land.lhs.true.cleanup47_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %nl_dump_check_consistent.exit.if.end46_crit_edge
  br label %cleanup47

cleanup47:                                        ; preds = %if.end46, %land.lhs.true.cleanup47_crit_edge
  %retval.0 = phi i32 [ %ret.4, %if.end46 ], [ %47, %land.lhs.true.cleanup47_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ethnl_dump_put(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_fill_reply_header(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_bitset32_size(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_put_bitset32(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nla_nest_cancel(ptr noundef %skb, ptr noundef %start) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %tobool.not.i = icmp eq ptr %start, null
  br i1 %tobool.not.i, label %entry.nlmsg_trim.exit_crit_edge, label %if.then.i

entry.nlmsg_trim.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nlmsg_trim.exit

if.then.i:                                        ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %1, %start
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !19

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %start to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #6
  br label %nlmsg_trim.exit

nlmsg_trim.exit:                                  ; preds = %if.end.i, %entry.nlmsg_trim.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.named.register.sp = !{!6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @ethnl_tunnel_info_get_policy, !1, !"ethnl_tunnel_info_get_policy", i1 false, i1 false}
!1 = !{!"../net/ethtool/tunnels.c", i32 11, i32 25}
!2 = !{ptr @ethnl_tunnel_info_reply_size.__msg, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../net/ethtool/tunnels.c", i32 47, i32 3}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/net/netlink.h", i32 991, i32 3}
!6 = !{!"sp"}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"auto-init"}
!17 = !{i64 641499, i64 641560}
!18 = !{i64 644231}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 644516}
