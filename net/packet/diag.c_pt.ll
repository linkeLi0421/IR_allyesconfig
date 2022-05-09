; ModuleID = '/llk/IR_all_yes/net/packet/diag.c_pt.bc'
source_filename = "../net/packet/diag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sock_diag_handler = type { i8, ptr, ptr, ptr }
%struct.netlink_dump_control = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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
%struct.packet_diag_ring = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.packet_diag_info = type { i32, i32, i32, i32, i32, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.113 }
%union.anon.113 = type { [6 x i32], [24 x i8] }
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
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.file = type { %union.anon.42, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.42 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.54 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.54 = type { %struct.callback_head }
%struct.packet_sock = type { %struct.sock, ptr, %union.tpacket_stats_u, %struct.packet_ring_buffer, %struct.packet_ring_buffer, i32, %struct.spinlock, %struct.mutex, i32, i8, i32, i32, i16, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, %struct.completion, ptr, ptr, [36 x i8], %struct.packet_type, [88 x i8], %struct.atomic_t, [124 x i8] }
%union.tpacket_stats_u = type { %struct.tpacket_stats_v3 }
%struct.tpacket_stats_v3 = type { i32, i32, i32 }
%struct.packet_ring_buffer = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, %union.anon.146 }
%union.anon.146 = type { %struct.tpacket_kbdq_core }
%struct.tpacket_kbdq_core = type { ptr, i32, i32, i8, i8, i16, i16, i16, ptr, ptr, i32, i32, i32, i64, ptr, ptr, ptr, %struct.rwlock_t, i16, i16, i32, %struct.timer_list }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.packet_mclist = type { ptr, i32, i32, i16, i16, [32 x i8] }
%struct.packet_diag_mclist = type { i32, i32, i16, i16, [32 x i8] }
%struct.packet_fanout = type { %struct.possible_net_t, i32, i32, i16, i8, i8, %union.anon.145, %struct.list_head, %struct.spinlock, %struct.refcount_struct, [52 x i8], %struct.packet_type, [0 x ptr], [88 x i8] }
%union.anon.145 = type { %struct.atomic_t }

@packet_diag_handler = internal constant { %struct.sock_diag_handler, [16 x i8] } { %struct.sock_diag_handler { i8 17, ptr @packet_diag_handler_dump, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@__initcall__kmod_af_packet_diag__458_262_packet_diag_init6 = internal global ptr @packet_diag_init, section ".initcall6.init", align 4
@__exitcall_packet_diag_exit = internal global ptr @packet_diag_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file459 = internal constant [46 x i8] c"af_packet_diag.file=net/packet/af_packet_diag\00", section ".modinfo", align 1
@__UNIQUE_ID_license460 = internal constant [27 x i8] c"af_packet_diag.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias461 = internal constant [47 x i8] c"af_packet_diag.alias=net-pf-16-proto-4-type-17\00", section ".modinfo", align 1
@__const.packet_diag_handler_dump.c = private unnamed_addr constant %struct.netlink_dump_control { ptr null, ptr @packet_diag_dump, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@fanout_mutex = external dso_local global %struct.mutex, align 4
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"packet_diag_handler\00", align 1
@___asan_gen_.2 = private constant [21 x i8] c"../net/packet/diag.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 247, i32 39 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 991, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias461, ptr @__UNIQUE_ID_file459, ptr @__UNIQUE_ID_license460, ptr @__exitcall_packet_diag_exit, ptr @__initcall__kmod_af_packet_diag__458_262_packet_diag_init6, ptr @packet_diag_exit, ptr @packet_diag_handler, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packet_diag_handler to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @packet_diag_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sock_diag_unregister(ptr noundef nonnull @packet_diag_handler) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_diag_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @packet_diag_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sock_diag_register(ptr noundef nonnull @packet_diag_handler) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @packet_diag_handler_dump(ptr noundef %skb, ptr noundef %h) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i)
  %cmp = icmp slt i32 %sub.i, 20
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %sdiag_protocol = getelementptr i8, ptr %h, i32 17
  %7 = ptrtoint ptr %sdiag_protocol to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sdiag_protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %h, i32 0, i32 2
  %9 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nlmsg_flags, align 2
  %11 = and i16 %10, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool5.not = icmp eq i16 %11, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %netlink_dump_start.exit

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

netlink_dump_start.exit:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c) #4
  %12 = call ptr @memcpy(ptr %c, ptr @__const.packet_diag_handler_dump.c, i32 24)
  %diag_nlsk = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 54
  %13 = ptrtoint ptr %diag_nlsk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %diag_nlsk, align 8
  %module.i = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 4
  %15 = ptrtoint ptr %module.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %module.i, align 4
  %call.i = call i32 @__netlink_dump_start(ptr noundef %14, ptr noundef %skb, ptr noundef %h, ptr noundef nonnull %c) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c) #4
  br label %cleanup

cleanup:                                          ; preds = %netlink_dump_start.exit, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %netlink_dump_start.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -95, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @packet_diag_dump(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %tmp.i.i.i = alloca i32, align 4
  %pdr.i11.i.i = alloca %struct.packet_diag_ring, align 4
  %pdr.i.i.i = alloca %struct.packet_diag_ring, align 4
  %tmp.i.i = alloca i32, align 4
  %pinfo.i.i = alloca %struct.packet_diag_info, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %8 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nlh, align 4
  %10 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cb, align 4
  %call3 = tail call zeroext i1 @netlink_net_capable(ptr noundef %11, i32 noundef 12) #4
  %packet = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %packet, i32 noundef 0) #4
  %sklist = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 31, i32 1
  %12 = ptrtoint ptr %sklist to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sklist, align 4
  %tobool.not = icmp eq ptr %13, null
  %add.ptr = getelementptr i8, ptr %13, i32 -84
  %tobool6.not7491 = icmp eq ptr %add.ptr, null
  %tobool6.not74 = or i1 %tobool.not, %tobool6.not7491
  br i1 %tobool6.not74, label %entry.done_crit_edge, label %for.body.lr.ph

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

for.body.lr.ph:                                   ; preds = %entry
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %pdiag_show.i = getelementptr i8, ptr %9, i32 24
  %14 = getelementptr inbounds %struct.packet_diag_info, ptr %pinfo.i.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.packet_diag_info, ptr %pinfo.i.i, i32 0, i32 2
  %16 = getelementptr inbounds %struct.packet_diag_info, ptr %pinfo.i.i, i32 0, i32 3
  %17 = getelementptr inbounds %struct.packet_diag_info, ptr %pinfo.i.i, i32 0, i32 4
  %18 = getelementptr inbounds %struct.packet_diag_info, ptr %pinfo.i.i, i32 0, i32 5
  %19 = getelementptr inbounds %struct.packet_diag_ring, ptr %pdr.i.i.i, i32 0, i32 4
  %20 = getelementptr inbounds %struct.packet_diag_ring, ptr %pdr.i.i.i, i32 0, i32 5
  %21 = getelementptr inbounds %struct.packet_diag_ring, ptr %pdr.i.i.i, i32 0, i32 6
  %22 = getelementptr inbounds %struct.packet_diag_ring, ptr %pdr.i.i.i, i32 0, i32 3
  %23 = getelementptr inbounds %struct.packet_diag_ring, ptr %pdr.i.i.i, i32 0, i32 2
  %24 = getelementptr inbounds %struct.packet_diag_ring, ptr %pdr.i.i.i, i32 0, i32 1
  %25 = getelementptr inbounds %struct.packet_diag_ring, ptr %pdr.i11.i.i, i32 0, i32 4
  %26 = getelementptr inbounds %struct.packet_diag_ring, ptr %pdr.i11.i.i, i32 0, i32 5
  %27 = getelementptr inbounds %struct.packet_diag_ring, ptr %pdr.i11.i.i, i32 0, i32 6
  %28 = getelementptr inbounds %struct.packet_diag_ring, ptr %pdr.i11.i.i, i32 0, i32 3
  %29 = getelementptr inbounds %struct.packet_diag_ring, ptr %pdr.i11.i.i, i32 0, i32 2
  %30 = getelementptr inbounds %struct.packet_diag_ring, ptr %pdr.i11.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %num.083 = phi i32 [ 0, %for.body.lr.ph ], [ %num.1, %for.inc.for.body_crit_edge ]
  %sk.075 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr32, %for.inc.for.body_crit_edge ]
  %skc_net.i60 = getelementptr inbounds %struct.sock_common, ptr %sk.075, i32 0, i32 9
  %31 = ptrtoint ptr %skc_net.i60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %skc_net.i60, align 4
  %cmp.i.not = icmp eq ptr %32, %7
  br i1 %cmp.i.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %num.083, i32 %2)
  %cmp = icmp slt i32 %num.083, %2
  br i1 %cmp, label %if.end.next_crit_edge, label %if.end11

if.end.next_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %next

if.end11:                                         ; preds = %if.end
  %33 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cb, align 4
  %sk15 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3, i32 24
  %35 = ptrtoint ptr %sk15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sk15, align 8
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %36, i32 0, i32 71
  %37 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sk_socket.i, align 8
  %file.i = getelementptr inbounds %struct.socket, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %42, i32 0, i32 25
  %43 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %user_ns.i, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3, i32 12
  %45 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %portid, align 4
  %47 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nlmsg_seq, align 4
  %call20 = call i32 @sock_i_ino(ptr noundef nonnull %sk.075) #4
  %51 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i.not.i.i.i = icmp eq i32 %52, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end11.done_crit_edge

if.end11.done_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

skb_tailroom.exit.i.i:                            ; preds = %if.end11
  %53 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %end.i.i.i, align 4
  %55 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %54 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 32
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.done_crit_edge, label %nlmsg_put.exit.i, !prof !22

skb_tailroom.exit.i.i.done_crit_edge:             ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %46, i32 noundef %50, i32 noundef 20, i32 noundef 16, i32 noundef 2) #4
  %tobool.not.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i, label %nlmsg_put.exit.i.done_crit_edge, label %if.end.i

nlmsg_put.exit.i.done_crit_edge:                  ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end.i:                                         ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %57 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 17, ptr %add.ptr.i.i, align 4
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %sk.075, i32 0, i32 45
  %58 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %sk_type.i, align 2
  %conv.i61 = trunc i16 %59 to i8
  %pdiag_type.i = getelementptr i8, ptr %call3.i.i, i32 17
  %60 = ptrtoint ptr %pdiag_type.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv.i61, ptr %pdiag_type.i, align 1
  %num.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 12
  %61 = ptrtoint ptr %num.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %num.i, align 4
  %pdiag_num.i = getelementptr i8, ptr %call3.i.i, i32 18
  %63 = ptrtoint ptr %pdiag_num.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %pdiag_num.i, align 2
  %pdiag_ino.i = getelementptr i8, ptr %call3.i.i, i32 20
  %64 = ptrtoint ptr %pdiag_ino.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call20, ptr %pdiag_ino.i, align 4
  %pdiag_cookie.i = getelementptr i8, ptr %call3.i.i, i32 24
  call void @sock_diag_save_cookie(ptr noundef nonnull %sk.075, ptr noundef %pdiag_cookie.i) #4
  %65 = ptrtoint ptr %pdiag_show.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pdiag_show.i, align 4
  %and.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pinfo.i.i) #4
  %ifindex.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 11
  %67 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ifindex.i.i, align 8
  %69 = ptrtoint ptr %pinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %pinfo.i.i, align 4
  %tp_version.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 16
  %70 = ptrtoint ptr %tp_version.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tp_version.i.i, align 4
  %72 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %14, align 4
  %tp_reserve.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 18
  %73 = ptrtoint ptr %tp_reserve.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tp_reserve.i.i, align 4
  %75 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %15, align 4
  %copy_thresh.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 5
  %76 = ptrtoint ptr %copy_thresh.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %copy_thresh.i.i, align 32
  %78 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %16, align 4
  %tp_tstamp.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 19
  %79 = ptrtoint ptr %tp_tstamp.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tp_tstamp.i.i, align 8
  %81 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %17, align 4
  %running.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 8
  %82 = ptrtoint ptr %running.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %running.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i.i = icmp ne i32 %83, 0
  %spec.store.select.i.i = zext i1 %tobool.not.i.i to i32
  %84 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %spec.store.select.i.i, ptr %18, align 4
  %auxdata.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 9
  %85 = ptrtoint ptr %auxdata.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load.i.i = load i8, ptr %auxdata.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool2.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.if.end6.i.i_crit_edge, label %if.then3.i.i

land.lhs.true.i.if.end6.i.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %or5.i.i = or i32 %spec.store.select.i.i, 2
  %86 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %or5.i.i, ptr %18, align 4
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then3.i.i, %land.lhs.true.i.if.end6.i.i_crit_edge
  %87 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool10.not.i.i = icmp eq i8 %87, 0
  br i1 %tobool10.not.i.i, label %if.end6.i.i.if.end14.i.i_crit_edge, label %if.then11.i.i

if.end6.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i.i

if.then11.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %88 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %18, align 4
  %or13.i.i = or i32 %89, 4
  store i32 %or13.i.i, ptr %18, align 4
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then11.i.i, %if.end6.i.i.if.end14.i.i_crit_edge
  %90 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool19.not.i.i = icmp eq i8 %90, 0
  br i1 %tobool19.not.i.i, label %if.end14.i.i.if.end23.i.i_crit_edge, label %if.then20.i.i

if.end14.i.i.if.end23.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.i.i

if.then20.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %91 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %18, align 4
  %or22.i.i = or i32 %92, 8
  store i32 %or22.i.i, ptr %18, align 4
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then20.i.i, %if.end14.i.i.if.end23.i.i_crit_edge
  %93 = and i8 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool28.not.i.i = icmp eq i8 %93, 0
  br i1 %tobool28.not.i.i, label %if.end23.i.i.pdiag_put_info.exit.i_crit_edge, label %if.then29.i.i

if.end23.i.i.pdiag_put_info.exit.i_crit_edge:     ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdiag_put_info.exit.i

if.then29.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %94 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %18, align 4
  %or31.i.i = or i32 %95, 16
  store i32 %or31.i.i, ptr %18, align 4
  br label %pdiag_put_info.exit.i

pdiag_put_info.exit.i:                            ; preds = %if.then29.i.i, %if.end23.i.i.pdiag_put_info.exit.i_crit_edge
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 0, i32 noundef 24, ptr noundef nonnull %pinfo.i.i) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pinfo.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %pdiag_put_info.exit.i.if.end7.i_crit_edge, label %pdiag_put_info.exit.i.if.then.i.i.i_crit_edge

pdiag_put_info.exit.i.if.then.i.i.i_crit_edge:    ; preds = %pdiag_put_info.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

pdiag_put_info.exit.i.if.end7.i_crit_edge:        ; preds = %pdiag_put_info.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i

if.end7.i:                                        ; preds = %pdiag_put_info.exit.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %96 = ptrtoint ptr %pdiag_show.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pdiag_show.i, align 4
  %and9.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end7.i.if.end18.i_crit_edge, label %land.lhs.true11.i

if.end7.i.if.end18.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i

land.lhs.true11.i:                                ; preds = %if.end7.i
  %call12.i = call i32 @sock_i_uid(ptr noundef nonnull %sk.075) #4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %call12.i, 0
  %call14.i = call i32 @from_kuid_munged(ptr noundef %44, [1 x i32] %.fca.0.insert.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #4
  %98 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %call14.i, ptr %tmp.i.i, align 4
  %call.i1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool16.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true11.i.if.end18.i_crit_edge, label %land.lhs.true11.i.if.then.i.i.i_crit_edge

land.lhs.true11.i.if.then.i.i.i_crit_edge:        ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

land.lhs.true11.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i

if.end18.i:                                       ; preds = %land.lhs.true11.i.if.end18.i_crit_edge, %if.end7.i.if.end18.i_crit_edge
  %99 = ptrtoint ptr %pdiag_show.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pdiag_show.i, align 4
  %and20.i = and i32 %100, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end18.i.if.end26.i_crit_edge, label %land.lhs.true22.i

if.end18.i.if.end26.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26.i

land.lhs.true22.i:                                ; preds = %if.end18.i
  %101 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call1.i.i.i, 0
  %tobool.not27.i.i = icmp eq ptr %102, null
  %tobool.not.i2.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not27.i.i
  br i1 %tobool.not.i2.i, label %land.lhs.true22.i.if.then.i.i.i_crit_edge, label %if.end.i3.i

land.lhs.true22.i.if.then.i.i.i_crit_edge:        ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

if.end.i3.i:                                      ; preds = %land.lhs.true22.i
  call void @rtnl_lock() #4
  %mclist.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 14
  %103 = ptrtoint ptr %mclist.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %ml.028.i.i = load ptr, ptr %mclist.i.i, align 4
  %tobool1.not29.i.i = icmp eq ptr %ml.028.i.i, null
  br i1 %tobool1.not29.i.i, label %if.end.i3.i.pdiag_put_mclist.exit.i_crit_edge, label %if.end.i3.i.for.body.i.i_crit_edge

if.end.i3.i.for.body.i.i_crit_edge:               ; preds = %if.end.i3.i
  br label %for.body.i.i

if.end.i3.i.pdiag_put_mclist.exit.i_crit_edge:    ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdiag_put_mclist.exit.i

for.body.i.i:                                     ; preds = %if.end5.i.i.for.body.i.i_crit_edge, %if.end.i3.i.for.body.i.i_crit_edge
  %ml.030.i.i = phi ptr [ %ml.0.i.i, %if.end5.i.i.for.body.i.i_crit_edge ], [ %ml.028.i.i, %if.end.i3.i.for.body.i.i_crit_edge ]
  %call2.i.i = call ptr @nla_reserve_nohdr(ptr noundef %skb, i32 noundef 44) #4
  %tobool3.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool3.not.i.i, label %if.then.i.i.i.i, label %if.end5.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i
  call void @rtnl_unlock() #4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %104 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %105, %102
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge, !prof !22

if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_nest_cancel.exit.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #4
  br label %nla_nest_cancel.exit.i.i

nla_nest_cancel.exit.i.i:                         ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge
  %106 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %102 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %107 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i) #4
  br label %if.then.i.i.i

if.end5.i.i:                                      ; preds = %for.body.i.i
  %ifindex.i4.i = getelementptr inbounds %struct.packet_mclist, ptr %ml.030.i.i, i32 0, i32 1
  %108 = ptrtoint ptr %ifindex.i4.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ifindex.i4.i, align 4
  %110 = ptrtoint ptr %call2.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %call2.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.packet_mclist, ptr %ml.030.i.i, i32 0, i32 3
  %111 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %type.i.i, align 4
  %pdmc_type.i.i = getelementptr inbounds %struct.packet_diag_mclist, ptr %call2.i.i, i32 0, i32 2
  %113 = ptrtoint ptr %pdmc_type.i.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %pdmc_type.i.i, align 4
  %alen.i.i = getelementptr inbounds %struct.packet_mclist, ptr %ml.030.i.i, i32 0, i32 4
  %114 = ptrtoint ptr %alen.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %alen.i.i, align 2
  %pdmc_alen.i.i = getelementptr inbounds %struct.packet_diag_mclist, ptr %call2.i.i, i32 0, i32 3
  %116 = ptrtoint ptr %pdmc_alen.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %pdmc_alen.i.i, align 2
  %count.i.i = getelementptr inbounds %struct.packet_mclist, ptr %ml.030.i.i, i32 0, i32 2
  %117 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %count.i.i, align 4
  %pdmc_count.i.i = getelementptr inbounds %struct.packet_diag_mclist, ptr %call2.i.i, i32 0, i32 1
  %119 = ptrtoint ptr %pdmc_count.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %pdmc_count.i.i, align 4
  %pdmc_addr.i.i = getelementptr inbounds %struct.packet_diag_mclist, ptr %call2.i.i, i32 0, i32 4
  %addr.i.i = getelementptr inbounds %struct.packet_mclist, ptr %ml.030.i.i, i32 0, i32 5
  %120 = call ptr @memcpy(ptr %pdmc_addr.i.i, ptr %addr.i.i, i32 32)
  %121 = ptrtoint ptr %ml.030.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %ml.0.i.i = load ptr, ptr %ml.030.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %ml.0.i.i, null
  br i1 %tobool1.not.i.i, label %if.end5.i.i.pdiag_put_mclist.exit.i_crit_edge, label %if.end5.i.i.for.body.i.i_crit_edge

if.end5.i.i.for.body.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

if.end5.i.i.pdiag_put_mclist.exit.i_crit_edge:    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdiag_put_mclist.exit.i

pdiag_put_mclist.exit.i:                          ; preds = %if.end5.i.i.pdiag_put_mclist.exit.i_crit_edge, %if.end.i3.i.pdiag_put_mclist.exit.i_crit_edge
  call void @rtnl_unlock() #4
  %122 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i5.i = ptrtoint ptr %123 to i32
  %sub.ptr.rhs.cast.i.i6.i = ptrtoint ptr %102 to i32
  %sub.ptr.sub.i.i7.i = sub i32 %sub.ptr.lhs.cast.i.i5.i, %sub.ptr.rhs.cast.i.i6.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i7.i to i16
  %124 = ptrtoint ptr %102 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv.i.i.i, ptr %102, align 2
  br label %if.end26.i

if.end26.i:                                       ; preds = %pdiag_put_mclist.exit.i, %if.end18.i.if.end26.i_crit_edge
  %125 = ptrtoint ptr %pdiag_show.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %pdiag_show.i, align 4
  %and28.i = and i32 %126, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end26.i.if.end34.i_crit_edge, label %land.lhs.true30.i

if.end26.i.if.end34.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

land.lhs.true30.i:                                ; preds = %if.end26.i
  %pg_vec_lock.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %pg_vec_lock.i.i, i32 noundef 0) #4
  %rx_ring.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 3
  %tp_version.i8.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 16
  %127 = ptrtoint ptr %tp_version.i8.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tp_version.i8.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pdr.i.i.i) #4
  %129 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %129, i32 8)
  store i64 -1, ptr %19, align 4
  %130 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rx_ring.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %131, null
  br i1 %tobool.not.i.i.i, label %pdiag_put_ring.exit.thread.i.i, label %if.end.i.i.i

pdiag_put_ring.exit.thread.i.i:                   ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pdr.i.i.i) #4
  br label %if.then.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true30.i
  %pg_vec_pages.i.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 3, i32 6
  %132 = ptrtoint ptr %pg_vec_pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %pg_vec_pages.i.i.i, align 8
  %shl.i.i.i = shl i32 %133, 12
  %134 = ptrtoint ptr %pdr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %shl.i.i.i, ptr %pdr.i.i.i, align 4
  %pg_vec_len.i.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 3, i32 7
  %135 = ptrtoint ptr %pg_vec_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %pg_vec_len.i.i.i, align 4
  %137 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %24, align 4
  %frame_size.i.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 3, i32 3
  %138 = ptrtoint ptr %frame_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %frame_size.i.i.i, align 4
  %140 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %23, align 4
  %frame_max.i.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 3, i32 4
  %141 = ptrtoint ptr %frame_max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %frame_max.i.i.i, align 8
  %add.i.i.i = add i32 %142, 1
  %143 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %add.i.i.i, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %128)
  %cmp.i.i9.i = icmp sgt i32 %128, 1
  br i1 %cmp.i.i9.i, label %if.then1.i.i.i, label %if.else.i.i.i

if.then1.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %retire_blk_tov.i.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 3, i32 9, i32 0, i32 18
  %144 = ptrtoint ptr %retire_blk_tov.i.i.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %retire_blk_tov.i.i.i, align 8
  %conv.i.i10.i = zext i16 %145 to i32
  %146 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %conv.i.i10.i, ptr %19, align 4
  %blk_sizeof_priv.i.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 3, i32 9, i32 0, i32 6
  %147 = ptrtoint ptr %blk_sizeof_priv.i.i.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %blk_sizeof_priv.i.i.i, align 8
  %conv2.i.i.i = zext i16 %148 to i32
  %149 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %conv2.i.i.i, ptr %20, align 4
  %feature_req_word.i.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 3, i32 9, i32 0, i32 1
  %150 = ptrtoint ptr %feature_req_word.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %feature_req_word.i.i.i, align 4
  br label %pdiag_put_ring.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %152 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %19, align 4
  %153 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %20, align 4
  br label %pdiag_put_ring.exit.i.i

pdiag_put_ring.exit.i.i:                          ; preds = %if.else.i.i.i, %if.then1.i.i.i
  %storemerge.i.i.i = phi i32 [ 0, %if.else.i.i.i ], [ %151, %if.then1.i.i.i ]
  %154 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %storemerge.i.i.i, ptr %21, align 4
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 28, ptr noundef nonnull %pdr.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pdr.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i11.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i11.i, label %pdiag_put_ring.exit.i.i.if.then.i.i_crit_edge, label %pdiag_put_rings_cfg.exit.thread.i

pdiag_put_ring.exit.i.i.if.then.i.i_crit_edge:    ; preds = %pdiag_put_ring.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

pdiag_put_rings_cfg.exit.thread.i:                ; preds = %pdiag_put_ring.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @mutex_unlock(ptr noundef %pg_vec_lock.i.i) #4
  br label %if.then.i.i.i

if.then.i.i:                                      ; preds = %pdiag_put_ring.exit.i.i.if.then.i.i_crit_edge, %pdiag_put_ring.exit.thread.i.i
  %tx_ring.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 4
  %155 = ptrtoint ptr %tp_version.i8.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %tp_version.i8.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pdr.i11.i.i) #4
  %157 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %157, i32 8)
  store i64 -1, ptr %25, align 4
  %158 = ptrtoint ptr %tx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %tx_ring.i.i, align 8
  %tobool.not.i12.i.i = icmp eq ptr %159, null
  br i1 %tobool.not.i12.i.i, label %pdiag_put_rings_cfg.exit.thread33.i, label %if.end.i20.i.i

pdiag_put_rings_cfg.exit.thread33.i:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pdr.i11.i.i) #4
  call void @mutex_unlock(ptr noundef %pg_vec_lock.i.i) #4
  br label %if.end34.i

if.end.i20.i.i:                                   ; preds = %if.then.i.i
  %pg_vec_pages.i13.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 4, i32 6
  %160 = ptrtoint ptr %pg_vec_pages.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %pg_vec_pages.i13.i.i, align 8
  %shl.i14.i.i = shl i32 %161, 12
  %162 = ptrtoint ptr %pdr.i11.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %shl.i14.i.i, ptr %pdr.i11.i.i, align 4
  %pg_vec_len.i15.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 4, i32 7
  %163 = ptrtoint ptr %pg_vec_len.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %pg_vec_len.i15.i.i, align 4
  %165 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %30, align 4
  %frame_size.i16.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 4, i32 3
  %166 = ptrtoint ptr %frame_size.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %frame_size.i16.i.i, align 4
  %168 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %29, align 4
  %frame_max.i17.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 4, i32 4
  %169 = ptrtoint ptr %frame_max.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %frame_max.i17.i.i, align 8
  %add.i18.i.i = add i32 %170, 1
  %171 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %add.i18.i.i, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %156)
  %cmp.i19.i.i = icmp sgt i32 %156, 1
  br i1 %cmp.i19.i.i, label %if.then1.i26.i.i, label %if.else.i27.i.i

if.then1.i26.i.i:                                 ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %retire_blk_tov.i21.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 4, i32 9, i32 0, i32 18
  %172 = ptrtoint ptr %retire_blk_tov.i21.i.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %retire_blk_tov.i21.i.i, align 8
  %conv.i22.i.i = zext i16 %173 to i32
  %174 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %conv.i22.i.i, ptr %25, align 4
  %blk_sizeof_priv.i23.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 4, i32 9, i32 0, i32 6
  %175 = ptrtoint ptr %blk_sizeof_priv.i23.i.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %blk_sizeof_priv.i23.i.i, align 8
  %conv2.i24.i.i = zext i16 %176 to i32
  %177 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %conv2.i24.i.i, ptr %26, align 4
  %feature_req_word.i25.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 4, i32 9, i32 0, i32 1
  %178 = ptrtoint ptr %feature_req_word.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %feature_req_word.i25.i.i, align 4
  br label %pdiag_put_rings_cfg.exit.i

if.else.i27.i.i:                                  ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %180 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %25, align 4
  %181 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %26, align 4
  br label %pdiag_put_rings_cfg.exit.i

pdiag_put_rings_cfg.exit.i:                       ; preds = %if.else.i27.i.i, %if.then1.i26.i.i
  %storemerge.i28.i.i = phi i32 [ 0, %if.else.i27.i.i ], [ %179, %if.then1.i26.i.i ]
  %182 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %storemerge.i28.i.i, ptr %27, align 4
  %call.i29.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 28, ptr noundef nonnull %pdr.i11.i.i) #4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pdr.i11.i.i) #4
  call void @mutex_unlock(ptr noundef %pg_vec_lock.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i.i)
  %tobool32.not.i = icmp eq i32 %call.i29.i.i, 0
  br i1 %tobool32.not.i, label %pdiag_put_rings_cfg.exit.i.if.end34.i_crit_edge, label %pdiag_put_rings_cfg.exit.i.if.then.i.i.i_crit_edge

pdiag_put_rings_cfg.exit.i.if.then.i.i.i_crit_edge: ; preds = %pdiag_put_rings_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

pdiag_put_rings_cfg.exit.i.if.end34.i_crit_edge:  ; preds = %pdiag_put_rings_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

if.end34.i:                                       ; preds = %pdiag_put_rings_cfg.exit.i.if.end34.i_crit_edge, %pdiag_put_rings_cfg.exit.thread33.i, %if.end26.i.if.end34.i_crit_edge
  %183 = ptrtoint ptr %pdiag_show.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %pdiag_show.i, align 4
  %and36.i = and i32 %184, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end34.i.if.end42.i_crit_edge, label %land.lhs.true38.i

if.end34.i.if.end42.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i

land.lhs.true38.i:                                ; preds = %if.end34.i
  call void @mutex_lock_nested(ptr noundef nonnull @fanout_mutex, i32 noundef 0) #4
  %fanout.i.i = getelementptr inbounds %struct.packet_sock, ptr %sk.075, i32 0, i32 1
  %185 = ptrtoint ptr %fanout.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %fanout.i.i, align 64
  %tobool.not.i13.i = icmp eq ptr %186, null
  br i1 %tobool.not.i13.i, label %pdiag_put_fanout.exit.thread.i, label %pdiag_put_fanout.exit.i

pdiag_put_fanout.exit.thread.i:                   ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @mutex_unlock(ptr noundef nonnull @fanout_mutex) #4
  br label %if.end42.i

pdiag_put_fanout.exit.i:                          ; preds = %land.lhs.true38.i
  %id.i.i = getelementptr inbounds %struct.packet_fanout, ptr %186, i32 0, i32 3
  %187 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %id.i.i, align 4
  %conv.i.i = zext i16 %188 to i32
  %type.i14.i = getelementptr inbounds %struct.packet_fanout, ptr %186, i32 0, i32 4
  %189 = ptrtoint ptr %type.i14.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %type.i14.i, align 2
  %conv3.i.i = zext i8 %190 to i32
  %shl.i.i = shl nuw nsw i32 %conv3.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #4
  %191 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %or.i.i, ptr %tmp.i.i.i, align 4
  %call.i.i15.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #4
  call void @mutex_unlock(ptr noundef nonnull @fanout_mutex) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15.i)
  %tobool40.not.i = icmp eq i32 %call.i.i15.i, 0
  br i1 %tobool40.not.i, label %pdiag_put_fanout.exit.i.if.end42.i_crit_edge, label %pdiag_put_fanout.exit.i.if.then.i.i.i_crit_edge

pdiag_put_fanout.exit.i.if.then.i.i.i_crit_edge:  ; preds = %pdiag_put_fanout.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

pdiag_put_fanout.exit.i.if.end42.i_crit_edge:     ; preds = %pdiag_put_fanout.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i

if.end42.i:                                       ; preds = %pdiag_put_fanout.exit.i.if.end42.i_crit_edge, %pdiag_put_fanout.exit.thread.i, %if.end34.i.if.end42.i_crit_edge
  %192 = ptrtoint ptr %pdiag_show.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %pdiag_show.i, align 4
  %and44.i = and i32 %193, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.end42.i.if.end50.i_crit_edge, label %land.lhs.true46.i

if.end42.i.if.end50.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50.i

land.lhs.true46.i:                                ; preds = %if.end42.i
  %call47.i = call i32 @sock_diag_put_meminfo(ptr noundef %sk.075, ptr noundef %skb, i32 noundef 6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %land.lhs.true46.i.if.end50.i_crit_edge, label %land.lhs.true46.i.if.then.i.i.i_crit_edge

land.lhs.true46.i.if.then.i.i.i_crit_edge:        ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

land.lhs.true46.i.if.end50.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50.i

if.end50.i:                                       ; preds = %land.lhs.true46.i.if.end50.i_crit_edge, %if.end42.i.if.end50.i_crit_edge
  %194 = ptrtoint ptr %pdiag_show.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %pdiag_show.i, align 4
  %and52.i = and i32 %195, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %if.end50.i.sk_diag_fill.exit_crit_edge, label %land.lhs.true54.i

if.end50.i.sk_diag_fill.exit_crit_edge:           ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sk_diag_fill.exit

land.lhs.true54.i:                                ; preds = %if.end50.i
  %call56.i = call i32 @sock_diag_put_filterinfo(i1 noundef zeroext %call3, ptr noundef %sk.075, ptr noundef %skb, i32 noundef 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %land.lhs.true54.i.sk_diag_fill.exit_crit_edge, label %land.lhs.true54.i.if.then.i.i.i_crit_edge

land.lhs.true54.i.if.then.i.i.i_crit_edge:        ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

land.lhs.true54.i.sk_diag_fill.exit_crit_edge:    ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sk_diag_fill.exit

if.then.i.i.i:                                    ; preds = %land.lhs.true54.i.if.then.i.i.i_crit_edge, %land.lhs.true46.i.if.then.i.i.i_crit_edge, %pdiag_put_fanout.exit.i.if.then.i.i.i_crit_edge, %pdiag_put_rings_cfg.exit.i.if.then.i.i.i_crit_edge, %pdiag_put_rings_cfg.exit.thread.i, %nla_nest_cancel.exit.i.i, %land.lhs.true22.i.if.then.i.i.i_crit_edge, %land.lhs.true11.i.if.then.i.i.i_crit_edge, %pdiag_put_info.exit.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %196 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i21.i = icmp ugt ptr %197, %call3.i.i
  br i1 %cmp.i.i21.i, label %do.end.i.i.i, label %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge, !prof !22

if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nlmsg_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #4
  br label %nlmsg_cancel.exit.i

nlmsg_cancel.exit.i:                              ; preds = %do.end.i.i.i, %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge
  %198 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i22.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i23.i = ptrtoint ptr %199 to i32
  %sub.ptr.sub.i.i24.i = sub i32 %sub.ptr.lhs.cast.i.i22.i, %sub.ptr.rhs.cast.i.i23.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i24.i) #4
  br label %done

sk_diag_fill.exit:                                ; preds = %land.lhs.true54.i.sk_diag_fill.exit_crit_edge, %if.end50.i.sk_diag_fill.exit_crit_edge
  %200 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %201 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %202 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i, align 4
  br label %next

next:                                             ; preds = %sk_diag_fill.exit, %if.end.next_crit_edge
  %inc = add i32 %num.083, 1
  br label %for.inc

for.inc:                                          ; preds = %next, %for.body.for.inc_crit_edge
  %num.1 = phi i32 [ %inc, %next ], [ %num.083, %for.body.for.inc_crit_edge ]
  %203 = getelementptr inbounds %struct.sock_common, ptr %sk.075, i32 0, i32 15
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %203, align 4
  %tobool28.not = icmp eq ptr %205, null
  %add.ptr32 = getelementptr i8, ptr %205, i32 -84
  %tobool6.not106 = icmp eq ptr %add.ptr32, null
  %tobool6.not = or i1 %tobool28.not, %tobool6.not106
  br i1 %tobool6.not, label %for.inc.done_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.done_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

done:                                             ; preds = %for.inc.done_crit_edge, %nlmsg_cancel.exit.i, %nlmsg_put.exit.i.done_crit_edge, %skb_tailroom.exit.i.i.done_crit_edge, %if.end11.done_crit_edge, %entry.done_crit_edge
  %num.069 = phi i32 [ %num.083, %nlmsg_cancel.exit.i ], [ 0, %entry.done_crit_edge ], [ %num.1, %for.inc.done_crit_edge ], [ %num.083, %nlmsg_put.exit.i.done_crit_edge ], [ %num.083, %skb_tailroom.exit.i.i.done_crit_edge ], [ %num.083, %if.end11.done_crit_edge ]
  call void @mutex_unlock(ptr noundef %packet) #4
  %206 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %num.069, ptr %0, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %207 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %len, align 4
  ret i32 %208
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_net_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_diag_save_cookie(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_diag_put_meminfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_diag_put_filterinfo(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve_nohdr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netlink_dump_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_diag_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__initcall__kmod_af_packet_diag__458_262_packet_diag_init6, !1, !"__initcall__kmod_af_packet_diag__458_262_packet_diag_init6", i1 false, i1 false}
!1 = !{!"../net/packet/diag.c", i32 262, i32 1}
!2 = !{ptr @__exitcall_packet_diag_exit, !3, !"__exitcall_packet_diag_exit", i1 false, i1 false}
!3 = !{!"../net/packet/diag.c", i32 263, i32 1}
!4 = !{ptr @__UNIQUE_ID_file459, !5, !"__UNIQUE_ID_file459", i1 false, i1 false}
!5 = !{!"../net/packet/diag.c", i32 264, i32 1}
!6 = !{ptr @__UNIQUE_ID_license460, !5, !"__UNIQUE_ID_license460", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias461, !8, !"__UNIQUE_ID_alias461", i1 false, i1 false}
!8 = !{!"../net/packet/diag.c", i32 265, i32 1}
!9 = !{ptr @packet_diag_handler, !10, !"packet_diag_handler", i1 false, i1 false}
!10 = !{!"../net/packet/diag.c", i32 247, i32 39}
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
