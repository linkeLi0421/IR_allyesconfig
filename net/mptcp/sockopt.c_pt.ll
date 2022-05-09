; ModuleID = '/llk/IR_all_yes/net/mptcp/sockopt.c_pt.bc'
source_filename = "../net/mptcp/sockopt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mptcp_diag_fill_info\22, \22a\22\09"
module asm "\09.weak\09__crc_mptcp_diag_fill_info\09\09\09\09"
module asm "\09.long\09__crc_mptcp_diag_fill_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mptcp_diag_fill_info:\09\09\09\09\09"
module asm "\09.asciz \09\22mptcp_diag_fill_info\22\09\09\09\09\09"
module asm "__kstrtabns_mptcp_diag_fill_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.linger = type { i32, i32 }
%struct.so_timestamping = type { i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.158 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.mptcp_sock = type { %struct.inet_connection_sock, i64, i64, i64, i64, i64, i64, i64, i32, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, ptr, %struct.rb_root, %struct.sk_buff_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.mptcp_pm_data, %struct.anon.196, i32, [16 x i8] }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.193, %struct.anon.194, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
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
%struct.anon.193 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.194 = type { i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.mptcp_pm_data = type { %struct.mptcp_addr_info, %struct.mptcp_addr_info, %struct.list_head, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i32], %struct.mptcp_rm_list, %struct.mptcp_rm_list }
%struct.mptcp_addr_info = type { i8, i16, i16, %union.anon.195 }
%union.anon.195 = type { %struct.in6_addr }
%struct.mptcp_rm_list = type { [8 x i8], i8 }
%struct.anon.196 = type { i32, i32, i64, i64 }
%struct.mptcp_subflow_context = type { %struct.list_head, %union.anon.198, %struct.list_head, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head }
%union.anon.198 = type { %struct.anon.199 }
%struct.anon.199 = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i24, i32, i32, i64, i32, i32, [20 x i8], i8, i8, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.mptcp_info = type { i8, i8, i8, i8, i8, i8, i32, i32, i64, i64, i64, i8, i8, i8 }
%struct.mptcp_subflow_data = type { i32, i32, i32, i32 }
%struct.mptcp_subflow_addrs = type { %union.anon.201, %union.anon.204 }
%union.anon.201 = type { %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.202 }
%union.anon.202 = type { ptr, [124 x i8] }
%union.anon.204 = type { %struct.__kernel_sockaddr_storage }
%struct.tcp_info = type { i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.anon = type { i32, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.154, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.154 = type { ptr }

@mptcp_setsockopt.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mptcp\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mptcp_setsockopt\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/mptcp/sockopt.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"msk=%p\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MPTCP: msk=%p\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_mptcp_diag_fill_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_mptcp_diag_fill_info = external dso_local constant [0 x i8], align 1
@__ksymtab_mptcp_diag_fill_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mptcp_diag_fill_info to i32), ptr @__kstrtab_mptcp_diag_fill_info, ptr @__kstrtabns_mptcp_diag_fill_info }, section "___ksymtab_gpl+mptcp_diag_fill_info", align 4
@mptcp_getsockopt.__UNIQUE_ID_ddebug645 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 1, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mptcp_getsockopt\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@mptcp_setsockopt_sol_ip_set_transparent.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mptcp_get_sub_addrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 6, i64 41]
@__sancov_gen_cov_switch_values.10 = internal global [38 x i64] [i64 36, i64 32, i64 1, i64 2, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 18, i64 20, i64 25, i64 29, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 40, i64 41, i64 43, i64 45, i64 46, i64 49, i64 62, i64 63, i64 64, i64 65, i64 66, i64 69, i64 70]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 15, i64 25, i64 62]
@__sancov_gen_cov_switch_values.12 = internal global [15 x i64] [i64 13, i64 32, i64 1, i64 7, i64 8, i64 9, i64 12, i64 29, i64 32, i64 33, i64 35, i64 36, i64 49, i64 63, i64 64]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.14 = internal global [20 x i64] [i64 18, i64 32, i64 1, i64 2, i64 6, i64 7, i64 8, i64 10, i64 11, i64 12, i64 13, i64 15, i64 18, i64 19, i64 20, i64 21, i64 23, i64 24, i64 25, i64 26]
@__sancov_gen_cov_switch_values.15 = internal global [33 x i64] [i64 31, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 11, i64 16, i64 23, i64 24, i64 25, i64 26, i64 31, i64 32, i64 33, i64 49, i64 50, i64 51, i64 53, i64 56, i64 58, i64 60, i64 62, i64 66, i64 67, i64 70, i64 73, i64 74, i64 75, i64 77, i64 78]
@__sancov_gen_cov_switch_values.16 = internal global [22 x i64] [i64 20, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 12, i64 13, i64 16, i64 17, i64 18, i64 24, i64 25, i64 27, i64 36, i64 37]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 41]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 15, i64 19]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 15, i64 19]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 26, i64 75, i64 78]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 26, i64 75, i64 78]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 13, i64 36]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 284]
@__sancov_gen_cov_switch_values.24 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 3, i64 11, i64 13, i64 26, i64 31, i64 36]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.27 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 7, i64 8, i64 9, i64 12, i64 32, i64 33, i64 36, i64 49]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 794, i32 2 }
@___asan_gen_.44 = private constant [23 x i8] c"../net/mptcp/sockopt.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 1195, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 230, i32 6 }
@___asan_gen_.50 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 214, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 156, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 1750, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_mptcp_diag_fill_info, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mptcp_setsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) local_unnamed_addr #0 align 64 {
entry:
  %val.i77.i = alloca i32, align 4
  %val.i.i136 = alloca i32, align 4
  %name.i.i = alloca [16 x i8], align 1
  %val.i = alloca i32, align 4
  %ling.i.i = alloca %struct.linger, align 8
  %timestamping.i.i = alloca %struct.so_timestamping, align 8
  %val.addr.i15.i.i = alloca i32, align 4
  %val.addr.i.i.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_setsockopt.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_setsockopt, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !38

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_setsockopt.__UNIQUE_ID_ddebug621, ptr noundef nonnull @.str.4, ptr noundef %sk) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %do.end.cleanup_crit_edge [
    i32 1, label %if.then4
    i32 0, label %if.then.i83
    i32 41, label %if.then2.i85
    i32 6, label %if.then7.i
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %do.end
  %1 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %optname, label %sw.epilog.i [
    i32 15, label %if.then4.sw.bb.i_crit_edge
    i32 2, label %if.then4.sw.bb.i_crit_edge204
    i32 25, label %if.then4.sw.bb.i_crit_edge205
    i32 62, label %if.then4.sw.bb.i_crit_edge206
    i32 9, label %if.then4.sw.bb43.i_crit_edge
    i32 12, label %if.then4.sw.bb43.i_crit_edge207
    i32 7, label %if.then4.sw.bb43.i_crit_edge208
    i32 32, label %if.then4.sw.bb43.i_crit_edge209
    i32 8, label %if.then4.sw.bb43.i_crit_edge210
    i32 33, label %if.then4.sw.bb43.i_crit_edge211
    i32 36, label %if.then4.sw.bb43.i_crit_edge212
    i32 49, label %if.then4.sw.bb43.i_crit_edge213
    i32 1, label %if.then4.sw.bb43.i_crit_edge214
    i32 29, label %if.then4.sw.bb43.i_crit_edge215
    i32 63, label %if.then4.sw.bb43.i_crit_edge216
    i32 35, label %if.then4.sw.bb43.i_crit_edge217
    i32 64, label %if.then4.sw.bb43.i_crit_edge218
    i32 37, label %if.then4.sw.bb45.i_crit_edge
    i32 65, label %if.then4.sw.bb45.i_crit_edge219
    i32 13, label %sw.bb47.i
    i32 18, label %if.then4.sw.bb49.i_crit_edge
    i32 20, label %if.then4.sw.bb49.i_crit_edge220
    i32 66, label %if.then4.sw.bb49.i_crit_edge221
    i32 46, label %if.then4.sw.bb49.i_crit_edge222
    i32 69, label %if.then4.sw.bb49.i_crit_edge223
    i32 70, label %if.then4.sw.bb49.i_crit_edge224
    i32 11, label %if.then4.cleanup_crit_edge
    i32 5, label %if.then4.cleanup_crit_edge225
    i32 6, label %if.then4.cleanup_crit_edge226
    i32 14, label %if.then4.cleanup_crit_edge227
    i32 16, label %if.then4.cleanup_crit_edge228
    i32 34, label %if.then4.cleanup_crit_edge229
    i32 40, label %if.then4.cleanup_crit_edge230
    i32 41, label %if.then4.cleanup_crit_edge231
    i32 43, label %if.then4.cleanup_crit_edge232
    i32 45, label %if.then4.cleanup_crit_edge233
  ]

if.then4.cleanup_crit_edge233:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.cleanup_crit_edge232:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.cleanup_crit_edge231:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.cleanup_crit_edge230:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.cleanup_crit_edge229:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.cleanup_crit_edge228:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.cleanup_crit_edge227:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.cleanup_crit_edge226:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.cleanup_crit_edge225:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.sw.bb49.i_crit_edge224:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb49.i

if.then4.sw.bb49.i_crit_edge223:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb49.i

if.then4.sw.bb49.i_crit_edge222:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb49.i

if.then4.sw.bb49.i_crit_edge221:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb49.i

if.then4.sw.bb49.i_crit_edge220:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb49.i

if.then4.sw.bb49.i_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb49.i

if.then4.sw.bb45.i_crit_edge219:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb45.i

if.then4.sw.bb45.i_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb45.i

if.then4.sw.bb43.i_crit_edge218:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43.i

if.then4.sw.bb43.i_crit_edge217:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43.i

if.then4.sw.bb43.i_crit_edge216:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43.i

if.then4.sw.bb43.i_crit_edge215:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43.i

if.then4.sw.bb43.i_crit_edge214:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43.i

if.then4.sw.bb43.i_crit_edge213:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43.i

if.then4.sw.bb43.i_crit_edge212:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43.i

if.then4.sw.bb43.i_crit_edge211:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43.i

if.then4.sw.bb43.i_crit_edge210:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43.i

if.then4.sw.bb43.i_crit_edge209:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43.i

if.then4.sw.bb43.i_crit_edge208:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43.i

if.then4.sw.bb43.i_crit_edge207:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43.i

if.then4.sw.bb43.i_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43.i

if.then4.sw.bb.i_crit_edge206:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.then4.sw.bb.i_crit_edge205:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.then4.sw.bb.i_crit_edge204:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.then4.sw.bb.i_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then4.sw.bb.i_crit_edge, %if.then4.sw.bb.i_crit_edge204, %if.then4.sw.bb.i_crit_edge205, %if.then4.sw.bb.i_crit_edge206
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  %call.i = tail call ptr @__mptcp_nmpc_socket(ptr noundef %sk) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @release_sock(ptr noundef %sk) #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb.i
  %call1.i = tail call i32 @sock_setsockopt(ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end42.i_crit_edge

if.end.i.if.end42.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then2.i:                                       ; preds = %if.end.i
  %2 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %optname, label %if.then2.i.if.end42.i_crit_edge [
    i32 15, label %if.then4.i
    i32 2, label %if.then11.i
    i32 25, label %if.then25.i
    i32 62, label %if.then32.i
  ]

if.then2.i.if.end42.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %sk5.i = getelementptr inbounds %struct.socket, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %sk5.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk5.i, align 16
  %skc_reuseport.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %skc_reuseport.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %skc_reuseport.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 8
  %skc_reuseport7.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %skc_reuseport7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load8.i = load i8, ptr %skc_reuseport7.i, align 1
  %bf.clear9.i = and i8 %bf.load8.i, -9
  %bf.set.i = or i8 %bf.clear9.i, %bf.clear.i
  store i8 %bf.set.i, ptr %skc_reuseport7.i, align 1
  br label %if.end42.i

if.then11.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %sk12.i = getelementptr inbounds %struct.socket, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %sk12.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk12.i, align 16
  %skc_reuse.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %skc_reuse.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load14.i = load i8, ptr %skc_reuse.i, align 1
  %bf.lshr15.i = and i8 %bf.load14.i, -16
  %skc_reuse17.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %10 = ptrtoint ptr %skc_reuse17.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load18.i = load i8, ptr %skc_reuse17.i, align 1
  %bf.clear21.i = and i8 %bf.load18.i, 15
  %bf.set22.i = or i8 %bf.clear21.i, %bf.lshr15.i
  store i8 %bf.set22.i, ptr %skc_reuse17.i, align 1
  br label %if.end42.i

if.then25.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %sk26.i = getelementptr inbounds %struct.socket, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %sk26.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk26.i, align 16
  %skc_bound_dev_if.i = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %skc_bound_dev_if.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %skc_bound_dev_if.i, align 4
  %skc_bound_dev_if29.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %15 = ptrtoint ptr %skc_bound_dev_if29.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %skc_bound_dev_if29.i, align 4
  br label %if.end42.i

if.then32.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %sk33.i = getelementptr inbounds %struct.socket, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %sk33.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk33.i, align 16
  %skc_bound_dev_if35.i = getelementptr inbounds %struct.sock_common, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %skc_bound_dev_if35.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %skc_bound_dev_if35.i, align 4
  %skc_bound_dev_if37.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %20 = ptrtoint ptr %skc_bound_dev_if37.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %skc_bound_dev_if37.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then32.i, %if.then25.i, %if.then11.i, %if.then4.i, %if.then2.i.if.end42.i_crit_edge, %if.end.i.if.end42.i_crit_edge
  tail call void @release_sock(ptr noundef %sk) #9
  br label %cleanup

sw.bb43.i:                                        ; preds = %if.then4.sw.bb43.i_crit_edge, %if.then4.sw.bb43.i_crit_edge207, %if.then4.sw.bb43.i_crit_edge208, %if.then4.sw.bb43.i_crit_edge209, %if.then4.sw.bb43.i_crit_edge210, %if.then4.sw.bb43.i_crit_edge211, %if.then4.sw.bb43.i_crit_edge212, %if.then4.sw.bb43.i_crit_edge213, %if.then4.sw.bb43.i_crit_edge214, %if.then4.sw.bb43.i_crit_edge215, %if.then4.sw.bb43.i_crit_edge216, %if.then4.sw.bb43.i_crit_edge217, %if.then4.sw.bb43.i_crit_edge218
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %21 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i.i, align 4, !annotation !39
  %call.i.i = call fastcc i32 @mptcp_get_int_option([2 x i32] %optval.coerce, i32 noundef %optlen, ptr noundef nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb43.i.mptcp_setsockopt_sol_socket_int.exit.i_crit_edge

sw.bb43.i.mptcp_setsockopt_sol_socket_int.exit.i_crit_edge: ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_setsockopt_sol_socket_int.exit.i

if.end.i.i:                                       ; preds = %sw.bb43.i
  %22 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %optname, label %if.end.i.i.mptcp_setsockopt_sol_socket_int.exit.i_crit_edge [
    i32 9, label %sw.bb.i.i
    i32 1, label %if.end.i.i.sw.bb1.i.i_crit_edge
    i32 36, label %if.end.i.i.sw.bb1.i.i_crit_edge234
    i32 12, label %if.end.i.i.sw.bb1.i.i_crit_edge235
    i32 7, label %if.end.i.i.sw.bb1.i.i_crit_edge236
    i32 32, label %if.end.i.i.sw.bb1.i.i_crit_edge237
    i32 8, label %if.end.i.i.sw.bb1.i.i_crit_edge238
    i32 33, label %if.end.i.i.sw.bb1.i.i_crit_edge239
    i32 49, label %sw.bb3.i.i
    i32 29, label %if.end.i.i.sw.bb4.i.i_crit_edge
    i32 63, label %if.end.i.i.sw.bb4.i.i_crit_edge240
    i32 35, label %if.end.i.i.sw.bb4.i.i_crit_edge241
    i32 64, label %if.end.i.i.sw.bb4.i.i_crit_edge242
  ]

if.end.i.i.sw.bb4.i.i_crit_edge242:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4.i.i

if.end.i.i.sw.bb4.i.i_crit_edge241:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4.i.i

if.end.i.i.sw.bb4.i.i_crit_edge240:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4.i.i

if.end.i.i.sw.bb4.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4.i.i

if.end.i.i.sw.bb1.i.i_crit_edge239:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i.i

if.end.i.i.sw.bb1.i.i_crit_edge238:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i.i

if.end.i.i.sw.bb1.i.i_crit_edge237:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i.i

if.end.i.i.sw.bb1.i.i_crit_edge236:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i.i

if.end.i.i.sw.bb1.i.i_crit_edge235:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i.i

if.end.i.i.sw.bb1.i.i_crit_edge234:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i.i

if.end.i.i.sw.bb1.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i.i

if.end.i.i.mptcp_setsockopt_sol_socket_int.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_setsockopt_sol_socket_int.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i.i, align 4
  call fastcc void @mptcp_sol_socket_sync_intval(ptr noundef %sk, i32 noundef 9, i32 noundef %24) #9
  br label %mptcp_setsockopt_sol_socket_int.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i.i.sw.bb1.i.i_crit_edge, %if.end.i.i.sw.bb1.i.i_crit_edge234, %if.end.i.i.sw.bb1.i.i_crit_edge235, %if.end.i.i.sw.bb1.i.i_crit_edge236, %if.end.i.i.sw.bb1.i.i_crit_edge237, %if.end.i.i.sw.bb1.i.i_crit_edge238, %if.end.i.i.sw.bb1.i.i_crit_edge239
  %25 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i.i.i) #9
  %27 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %val.addr.i.i.i, align 4
  %sk_socket.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %28 = ptrtoint ptr %sk_socket.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk_socket.i.i.i, align 8
  %30 = ptrtoint ptr %val.addr.i.i.i to i32
  %.fca.0.insert.i.i.i = insertvalue [2 x i32] poison, i32 %30, 0
  %.fca.1.insert.i.i.i = insertvalue [2 x i32] %.fca.0.insert.i.i.i, i32 -1, 1
  %call.i.i.i = call i32 @sock_setsockopt(ptr noundef %29, i32 noundef 1, i32 noundef %optname, [2 x i32] %.fca.1.insert.i.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %sw.bb1.i.i.mptcp_sol_socket_intval.exit.i.i_crit_edge

sw.bb1.i.i.mptcp_sol_socket_intval.exit.i.i_crit_edge: ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_sol_socket_intval.exit.i.i

if.end.i.i.i:                                     ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.addr.i.i.i, align 4
  call fastcc void @mptcp_sol_socket_sync_intval(ptr noundef %sk, i32 noundef %optname, i32 noundef %32) #9
  br label %mptcp_sol_socket_intval.exit.i.i

mptcp_sol_socket_intval.exit.i.i:                 ; preds = %if.end.i.i.i, %sw.bb1.i.i.mptcp_sol_socket_intval.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i.i.i) #9
  br label %mptcp_setsockopt_sol_socket_int.exit.i

sw.bb3.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i.i, align 4
  %35 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 18
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 %34, ptr %35, align 8
  call fastcc void @mptcp_sol_socket_sync_intval(ptr noundef %sk, i32 noundef 49, i32 noundef %34) #9
  br label %mptcp_setsockopt_sol_socket_int.exit.i

sw.bb4.i.i:                                       ; preds = %if.end.i.i.sw.bb4.i.i_crit_edge, %if.end.i.i.sw.bb4.i.i_crit_edge240, %if.end.i.i.sw.bb4.i.i_crit_edge241, %if.end.i.i.sw.bb4.i.i_crit_edge242
  %37 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i15.i.i) #9
  %39 = ptrtoint ptr %val.addr.i15.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %val.addr.i15.i.i, align 4
  %sk_socket.i16.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %40 = ptrtoint ptr %sk_socket.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sk_socket.i16.i.i, align 8
  %42 = ptrtoint ptr %val.addr.i15.i.i to i32
  %.fca.0.insert.i17.i.i = insertvalue [2 x i32] poison, i32 %42, 0
  %.fca.1.insert.i18.i.i = insertvalue [2 x i32] %.fca.0.insert.i17.i.i, i32 -1, 1
  %call.i19.i.i = call i32 @sock_setsockopt(ptr noundef %41, i32 noundef 1, i32 noundef %optname, [2 x i32] %.fca.1.insert.i18.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i.i)
  %tobool.not.i20.i.i = icmp eq i32 %call.i19.i.i, 0
  br i1 %tobool.not.i20.i.i, label %if.end.i21.i.i, label %sw.bb4.i.i.mptcp_setsockopt_sol_socket_tstamp.exit.i.i_crit_edge

sw.bb4.i.i.mptcp_setsockopt_sol_socket_tstamp.exit.i.i_crit_edge: ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_setsockopt_sol_socket_tstamp.exit.i.i

if.end.i21.i.i:                                   ; preds = %sw.bb4.i.i
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  %conn_list.i.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 34
  %43 = ptrtoint ptr %conn_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %subflow.027.i.i.i = load ptr, ptr %conn_list.i.i.i, align 8
  %cmp.not28.i.i.i = icmp eq ptr %subflow.027.i.i.i, %conn_list.i.i.i
  br i1 %cmp.not28.i.i.i, label %if.end.i21.i.i.for.end.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end.i21.i.i.for.end.i.i.i_crit_edge:           ; preds = %if.end.i21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i21.i.i
  %44 = call ptr @llvm.returnaddress(i32 0) #9
  %45 = ptrtoint ptr %44 to i32
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %unlock_sock_fast.exit.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %subflow.029.i.i.i = phi ptr [ %subflow.027.i.i.i, %for.body.lr.ph.i.i.i ], [ %subflow.0.i.i.i, %unlock_sock_fast.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %tcp_sock.i.i.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.029.i.i.i, i32 0, i32 5
  %46 = ptrtoint ptr %tcp_sock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tcp_sock.i.i.i.i, align 8
  %dep_map.i.i.i.i = getelementptr inbounds %struct.sock, ptr %47, i32 0, i32 4, i32 3
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %45) #9
  %call.i.i.i.i = call zeroext i1 @__lock_sock_fast(ptr noundef %47) #9
  %48 = ptrtoint ptr %val.addr.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val.addr.i15.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool4.i.i.i = icmp ne i32 %49, 0
  call void @sock_set_timestamp(ptr noundef %sk, i32 noundef %optname, i1 noundef zeroext %tobool4.i.i.i) #9
  br i1 %call.i.i.i.i, label %if.then.i.i.i.i, label %if.else.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @release_sock(ptr noundef %47) #9
  br label %unlock_sock_fast.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sk_lock.i.i.i.i = getelementptr inbounds %struct.sock, ptr %47, i32 0, i32 4
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %45) #9
  call void @_raw_spin_unlock_bh(ptr noundef %sk_lock.i.i.i.i) #9
  br label %unlock_sock_fast.exit.i.i.i

unlock_sock_fast.exit.i.i.i:                      ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %50 = ptrtoint ptr %subflow.029.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %subflow.0.i.i.i = load ptr, ptr %subflow.029.i.i.i, align 8
  %cmp.not.i.i.i = icmp eq ptr %subflow.0.i.i.i, %conn_list.i.i.i
  br i1 %cmp.not.i.i.i, label %unlock_sock_fast.exit.i.i.i.for.end.i.i.i_crit_edge, label %unlock_sock_fast.exit.i.i.i.for.body.i.i.i_crit_edge

unlock_sock_fast.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %unlock_sock_fast.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

unlock_sock_fast.exit.i.i.i.for.end.i.i.i_crit_edge: ; preds = %unlock_sock_fast.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %unlock_sock_fast.exit.i.i.i.for.end.i.i.i_crit_edge, %if.end.i21.i.i.for.end.i.i.i_crit_edge
  call void @release_sock(ptr noundef %sk) #9
  br label %mptcp_setsockopt_sol_socket_tstamp.exit.i.i

mptcp_setsockopt_sol_socket_tstamp.exit.i.i:      ; preds = %for.end.i.i.i, %sw.bb4.i.i.mptcp_setsockopt_sol_socket_tstamp.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %for.end.i.i.i ], [ %call.i19.i.i, %sw.bb4.i.i.mptcp_setsockopt_sol_socket_tstamp.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i15.i.i) #9
  br label %mptcp_setsockopt_sol_socket_int.exit.i

mptcp_setsockopt_sol_socket_int.exit.i:           ; preds = %mptcp_setsockopt_sol_socket_tstamp.exit.i.i, %sw.bb3.i.i, %mptcp_sol_socket_intval.exit.i.i, %sw.bb.i.i, %if.end.i.i.mptcp_setsockopt_sol_socket_int.exit.i_crit_edge, %sw.bb43.i.mptcp_setsockopt_sol_socket_int.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %retval.0.i.i.i, %mptcp_setsockopt_sol_socket_tstamp.exit.i.i ], [ 0, %sw.bb3.i.i ], [ %call.i.i.i, %mptcp_sol_socket_intval.exit.i.i ], [ 0, %sw.bb.i.i ], [ %call.i.i, %sw.bb43.i.mptcp_setsockopt_sol_socket_int.exit.i_crit_edge ], [ -92, %if.end.i.i.mptcp_setsockopt_sol_socket_int.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  br label %cleanup

sw.bb45.i:                                        ; preds = %if.then4.sw.bb45.i_crit_edge, %if.then4.sw.bb45.i_crit_edge219
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %timestamping.i.i) #9
  %51 = ptrtoint ptr %timestamping.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %timestamping.i.i, align 8, !annotation !39
  %52 = getelementptr inbounds %struct.so_timestamping, ptr %timestamping.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %52, align 4, !annotation !39
  %54 = zext i32 %optlen to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %optlen, label %sw.bb45.i.mptcp_setsockopt_sol_socket_timestamping.exit.i_crit_edge [
    i32 8, label %if.then.i.i
    i32 4, label %if.then3.i.i
  ]

sw.bb45.i.mptcp_setsockopt_sol_socket_timestamping.exit.i_crit_edge: ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_setsockopt_sol_socket_timestamping.exit.i

if.then.i.i:                                      ; preds = %sw.bb45.i
  %src.coerce.fca.0.extract.i.i.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %55 = inttoptr i32 %src.coerce.fca.0.extract.i.i.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i.i)
  %bf.cast.i.i.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i.i, 0
  br i1 %bf.cast.i.i.i.i.i, label %if.end.i.i.i.i, label %if.end8.i.i.i.i.i.i

if.end8.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #9
  %call.i.i.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i.i.i, label %if.end8.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.i

if.end8.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge: ; preds = %if.end8.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i:                        ; preds = %if.end8.i.i.i.i.i.i
  %56 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %55, i32 8, i32 -1226833920) #12, !srcloc !40
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i6.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge, !prof !41

land.lhs.true.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i.i
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %timestamping.i.i, i32 noundef 8) #9
  %57 = call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i.i.i.i.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 4
  %59 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i.i) #3, !srcloc !42
  %and.i.i.i.i.i.i.i.i = and i32 %59, -13
  %or.i.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i.i) #9, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  %call1.i.i.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %timestamping.i.i, ptr noundef %55, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #9, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.if.end10.i.i_crit_edge, label %if.end.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge, !prof !41

if.end.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i.i.i

if.end.i.i.i.i.i.i.if.end10.i.i_crit_edge:        ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i.i

if.then11.i.i.i.i.i.i:                            ; preds = %if.end.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge, %if.end8.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge
  %res.0.i.i.i.i91.i.i = phi i32 [ %call1.i.i.i.i.i.i.i, %if.end.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge ], [ 8, %if.end8.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.i.i.i.if.then11.i.i.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i.i = sub i32 8, %res.0.i.i.i.i91.i.i
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %timestamping.i.i, i32 %sub.i.i.i.i.i.i
  %60 = call ptr @memset(ptr %add.ptr.i.i.i.i.i.i, i32 0, i32 %res.0.i.i.i.i91.i.i)
  br label %mptcp_setsockopt_sol_socket_timestamping.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %55 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %55, align 1
  %63 = ptrtoint ptr %timestamping.i.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %timestamping.i.i, align 8
  br label %if.end10.i.i

if.then3.i.i:                                     ; preds = %sw.bb45.i
  %64 = ptrtoint ptr %timestamping.i.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 0, ptr %timestamping.i.i, align 8
  %src.coerce.fca.0.extract.i.i60.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %65 = inttoptr i32 %src.coerce.fca.0.extract.i.i60.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i61.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i61.i.i)
  %bf.cast.i.i.i62.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i61.i.i, 0
  br i1 %bf.cast.i.i.i62.i.i, label %if.end.i.i85.i.i, label %if.end8.i.i.i.i67.i.i

if.end8.i.i.i.i67.i.i:                            ; preds = %if.then3.i.i
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #9
  %call.i.i.i.i68.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i68.i.i, label %if.end8.i.i.i.i67.i.i.if.then11.i.i.i.i84.i.i_crit_edge, label %land.lhs.true.i.i.i.i71.i.i

if.end8.i.i.i.i67.i.i.if.then11.i.i.i.i84.i.i_crit_edge: ; preds = %if.end8.i.i.i.i67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i84.i.i

land.lhs.true.i.i.i.i71.i.i:                      ; preds = %if.end8.i.i.i.i67.i.i
  %66 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %65, i32 4, i32 -1226833920) #12, !srcloc !40
  %asmresult.i.i.i.i69.i.i = extractvalue { i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i69.i.i)
  %cmp.i6.i.i.i70.i.i = icmp eq i32 %asmresult.i.i.i.i69.i.i, 0
  br i1 %cmp.i6.i.i.i70.i.i, label %if.end.i.i.i.i81.i.i, label %land.lhs.true.i.i.i.i71.i.i.if.then11.i.i.i.i84.i.i_crit_edge, !prof !41

land.lhs.true.i.i.i.i71.i.i.if.then11.i.i.i.i84.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i71.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i84.i.i

if.end.i.i.i.i81.i.i:                             ; preds = %land.lhs.true.i.i.i.i71.i.i
  %call.i.i.i.i.i72.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %timestamping.i.i, i32 noundef 4) #9
  %67 = call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i.i.i.i.i.i73.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i.i.i.i73.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i74.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 4
  %69 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i74.i.i) #3, !srcloc !42
  %and.i.i.i.i.i.i75.i.i = and i32 %69, -13
  %or.i.i.i.i.i.i76.i.i = or i32 %and.i.i.i.i.i.i75.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i76.i.i) #9, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  %call1.i.i.i.i.i77.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %timestamping.i.i, ptr noundef %65, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #9, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i77.i.i)
  %tobool4.not.i.i.i.i80.i.i = icmp eq i32 %call1.i.i.i.i.i77.i.i, 0
  br i1 %tobool4.not.i.i.i.i80.i.i, label %if.end.i.i.i.i81.i.i.if.end10.i.i_crit_edge, label %if.end.i.i.i.i81.i.i.if.then11.i.i.i.i84.i.i_crit_edge, !prof !41

if.end.i.i.i.i81.i.i.if.then11.i.i.i.i84.i.i_crit_edge: ; preds = %if.end.i.i.i.i81.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i84.i.i

if.end.i.i.i.i81.i.i.if.end10.i.i_crit_edge:      ; preds = %if.end.i.i.i.i81.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i.i

if.then11.i.i.i.i84.i.i:                          ; preds = %if.end.i.i.i.i81.i.i.if.then11.i.i.i.i84.i.i_crit_edge, %land.lhs.true.i.i.i.i71.i.i.if.then11.i.i.i.i84.i.i_crit_edge, %if.end8.i.i.i.i67.i.i.if.then11.i.i.i.i84.i.i_crit_edge
  %res.0.i.i.i.i7996.i.i = phi i32 [ %call1.i.i.i.i.i77.i.i, %if.end.i.i.i.i81.i.i.if.then11.i.i.i.i84.i.i_crit_edge ], [ 4, %if.end8.i.i.i.i67.i.i.if.then11.i.i.i.i84.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i71.i.i.if.then11.i.i.i.i84.i.i_crit_edge ]
  %sub.i.i.i.i82.i.i = sub i32 4, %res.0.i.i.i.i7996.i.i
  %add.ptr.i.i.i.i83.i.i = getelementptr i8, ptr %timestamping.i.i, i32 %sub.i.i.i.i82.i.i
  %70 = call ptr @memset(ptr %add.ptr.i.i.i.i83.i.i, i32 0, i32 %res.0.i.i.i.i7996.i.i)
  br label %mptcp_setsockopt_sol_socket_timestamping.exit.i

if.end.i.i85.i.i:                                 ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %65 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %65, align 1
  %73 = ptrtoint ptr %timestamping.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %timestamping.i.i, align 8
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.end.i.i85.i.i, %if.end.i.i.i.i81.i.i.if.end10.i.i_crit_edge, %if.end.i.i.i.i, %if.end.i.i.i.i.i.i.if.end10.i.i_crit_edge
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %74 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sk_socket.i.i, align 8
  %76 = ptrtoint ptr %timestamping.i.i to i32
  %.fca.0.insert.i.i = insertvalue [2 x i32] poison, i32 %76, 0
  %.fca.1.insert.i.i = insertvalue [2 x i32] %.fca.0.insert.i.i, i32 -16777216, 1
  %call11.i.i = call i32 @sock_setsockopt(ptr noundef %75, i32 noundef 1, i32 noundef %optname, [2 x i32] %.fca.1.insert.i.i, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %if.end10.i.i.mptcp_setsockopt_sol_socket_timestamping.exit.i_crit_edge

if.end10.i.i.mptcp_setsockopt_sol_socket_timestamping.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_setsockopt_sol_socket_timestamping.exit.i

if.end14.i.i:                                     ; preds = %if.end10.i.i
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  %conn_list.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 34
  %77 = ptrtoint ptr %conn_list.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %subflow.099.i.i = load ptr, ptr %conn_list.i.i, align 8
  %cmp16.not100.i.i = icmp eq ptr %subflow.099.i.i, %conn_list.i.i
  br i1 %cmp16.not100.i.i, label %if.end14.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end14.i.i.for.end.i.i_crit_edge:               ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end14.i.i
  %78 = call ptr @llvm.returnaddress(i32 0) #9
  %79 = ptrtoint ptr %78 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %unlock_sock_fast.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %subflow.0101.i.i = phi ptr [ %subflow.099.i.i, %for.body.lr.ph.i.i ], [ %subflow.0.i.i, %unlock_sock_fast.exit.i.i.for.body.i.i_crit_edge ]
  %tcp_sock.i.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.0101.i.i, i32 0, i32 5
  %80 = ptrtoint ptr %tcp_sock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tcp_sock.i.i.i, align 8
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %81, i32 0, i32 4, i32 3
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %79) #9
  %call.i.i115.i = call zeroext i1 @__lock_sock_fast(ptr noundef %81) #9
  %82 = ptrtoint ptr %timestamping.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.fca.0.load32.i.i = load i32, ptr %timestamping.i.i, align 8
  %.fca.0.insert33.i.i = insertvalue [2 x i32] poison, i32 %.fca.0.load32.i.i, 0
  %83 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %83)
  %.fca.1.load35.i.i = load i32, ptr %52, align 4
  %.fca.1.insert36.i.i = insertvalue [2 x i32] %.fca.0.insert33.i.i, i32 %.fca.1.load35.i.i, 1
  %call19.i.i = call i32 @sock_set_timestamping(ptr noundef %sk, i32 noundef %optname, [2 x i32] %.fca.1.insert36.i.i) #9
  br i1 %call.i.i115.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @release_sock(ptr noundef %81) #9
  br label %unlock_sock_fast.exit.i.i

if.else.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sk_lock.i.i.i = getelementptr inbounds %struct.sock, ptr %81, i32 0, i32 4
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %79) #9
  call void @_raw_spin_unlock_bh(ptr noundef %sk_lock.i.i.i) #9
  br label %unlock_sock_fast.exit.i.i

unlock_sock_fast.exit.i.i:                        ; preds = %if.else.i.i.i, %if.then.i.i.i
  %84 = ptrtoint ptr %subflow.0101.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %subflow.0.i.i = load ptr, ptr %subflow.0101.i.i, align 8
  %cmp16.not.i.i = icmp eq ptr %subflow.0.i.i, %conn_list.i.i
  br i1 %cmp16.not.i.i, label %unlock_sock_fast.exit.i.i.for.end.i.i_crit_edge, label %unlock_sock_fast.exit.i.i.for.body.i.i_crit_edge

unlock_sock_fast.exit.i.i.for.body.i.i_crit_edge: ; preds = %unlock_sock_fast.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

unlock_sock_fast.exit.i.i.for.end.i.i_crit_edge:  ; preds = %unlock_sock_fast.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %unlock_sock_fast.exit.i.i.for.end.i.i_crit_edge, %if.end14.i.i.for.end.i.i_crit_edge
  call void @release_sock(ptr noundef %sk) #9
  br label %mptcp_setsockopt_sol_socket_timestamping.exit.i

mptcp_setsockopt_sol_socket_timestamping.exit.i:  ; preds = %for.end.i.i, %if.end10.i.i.mptcp_setsockopt_sol_socket_timestamping.exit.i_crit_edge, %if.then11.i.i.i.i84.i.i, %if.then11.i.i.i.i.i.i, %sw.bb45.i.mptcp_setsockopt_sol_socket_timestamping.exit.i_crit_edge
  %retval.0.i116.i = phi i32 [ 0, %for.end.i.i ], [ -22, %sw.bb45.i.mptcp_setsockopt_sol_socket_timestamping.exit.i_crit_edge ], [ %call11.i.i, %if.end10.i.i.mptcp_setsockopt_sol_socket_timestamping.exit.i_crit_edge ], [ -14, %if.then11.i.i.i.i.i.i ], [ -14, %if.then11.i.i.i.i84.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %timestamping.i.i) #9
  br label %cleanup

sw.bb47.i:                                        ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ling.i.i) #9
  %85 = ptrtoint ptr %ling.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %ling.i.i, align 8, !annotation !39
  %86 = getelementptr inbounds %struct.linger, ptr %ling.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %86, align 4, !annotation !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %optlen)
  %cmp.i.i = icmp ult i32 %optlen, 8
  br i1 %cmp.i.i, label %sw.bb47.i.mptcp_setsockopt_sol_socket_linger.exit.i_crit_edge, label %if.end.i120.i

sw.bb47.i.mptcp_setsockopt_sol_socket_linger.exit.i_crit_edge: ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_setsockopt_sol_socket_linger.exit.i

if.end.i120.i:                                    ; preds = %sw.bb47.i
  %src.coerce.fca.0.extract.i.i.i117.i = extractvalue [2 x i32] %optval.coerce, 0
  %88 = inttoptr i32 %src.coerce.fca.0.extract.i.i.i117.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i118.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i118.i)
  %bf.cast.i.i.i.i119.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i118.i, 0
  br i1 %bf.cast.i.i.i.i119.i, label %if.end.i.i.i137.i, label %if.end8.i.i.i.i.i122.i

if.end8.i.i.i.i.i122.i:                           ; preds = %if.end.i120.i
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #9
  %call.i.i.i.i.i121.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i.i121.i, label %if.end8.i.i.i.i.i122.i.if.then11.i.i.i.i.i136.i_crit_edge, label %land.lhs.true.i.i.i.i.i125.i

if.end8.i.i.i.i.i122.i.if.then11.i.i.i.i.i136.i_crit_edge: ; preds = %if.end8.i.i.i.i.i122.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i.i136.i

land.lhs.true.i.i.i.i.i125.i:                     ; preds = %if.end8.i.i.i.i.i122.i
  %89 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %88, i32 8, i32 -1226833920) #12, !srcloc !40
  %asmresult.i.i.i.i.i123.i = extractvalue { i32, i32 } %89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i123.i)
  %cmp.i6.i.i.i.i124.i = icmp eq i32 %asmresult.i.i.i.i.i123.i, 0
  br i1 %cmp.i6.i.i.i.i124.i, label %if.end.i.i.i.i.i133.i, label %land.lhs.true.i.i.i.i.i125.i.if.then11.i.i.i.i.i136.i_crit_edge, !prof !41

land.lhs.true.i.i.i.i.i125.i.if.then11.i.i.i.i.i136.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i.i136.i

if.end.i.i.i.i.i133.i:                            ; preds = %land.lhs.true.i.i.i.i.i125.i
  %call.i.i.i.i.i.i126.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ling.i.i, i32 noundef 8) #9
  %90 = call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i.i.i.i.i.i.i127.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i127.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i128.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 4
  %92 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i128.i) #3, !srcloc !42
  %and.i.i.i.i.i.i.i129.i = and i32 %92, -13
  %or.i.i.i.i.i.i.i130.i = or i32 %and.i.i.i.i.i.i.i129.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i130.i) #9, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  %call1.i.i.i.i.i.i131.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ling.i.i, ptr noundef %88, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %92) #9, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i131.i)
  %tobool4.not.i.i.i.i.i132.i = icmp eq i32 %call1.i.i.i.i.i.i131.i, 0
  br i1 %tobool4.not.i.i.i.i.i132.i, label %if.end.i.i.i.i.i133.i.if.end2.i.i_crit_edge, label %if.end.i.i.i.i.i133.i.if.then11.i.i.i.i.i136.i_crit_edge, !prof !41

if.end.i.i.i.i.i133.i.if.then11.i.i.i.i.i136.i_crit_edge: ; preds = %if.end.i.i.i.i.i133.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i.i136.i

if.end.i.i.i.i.i133.i.if.end2.i.i_crit_edge:      ; preds = %if.end.i.i.i.i.i133.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2.i.i

if.then11.i.i.i.i.i136.i:                         ; preds = %if.end.i.i.i.i.i133.i.if.then11.i.i.i.i.i136.i_crit_edge, %land.lhs.true.i.i.i.i.i125.i.if.then11.i.i.i.i.i136.i_crit_edge, %if.end8.i.i.i.i.i122.i.if.then11.i.i.i.i.i136.i_crit_edge
  %res.0.i.i.i.i51.i.i = phi i32 [ %call1.i.i.i.i.i.i131.i, %if.end.i.i.i.i.i133.i.if.then11.i.i.i.i.i136.i_crit_edge ], [ 8, %if.end8.i.i.i.i.i122.i.if.then11.i.i.i.i.i136.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.i.i125.i.if.then11.i.i.i.i.i136.i_crit_edge ]
  %sub.i.i.i.i.i134.i = sub i32 8, %res.0.i.i.i.i51.i.i
  %add.ptr.i.i.i.i.i135.i = getelementptr i8, ptr %ling.i.i, i32 %sub.i.i.i.i.i134.i
  %93 = call ptr @memset(ptr %add.ptr.i.i.i.i.i135.i, i32 0, i32 %res.0.i.i.i.i51.i.i)
  br label %mptcp_setsockopt_sol_socket_linger.exit.i

if.end.i.i.i137.i:                                ; preds = %if.end.i120.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %88 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 8)
  %95 = load i64, ptr %88, align 1
  %96 = ptrtoint ptr %ling.i.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %ling.i.i, align 8
  br label %if.end2.i.i

if.end2.i.i:                                      ; preds = %if.end.i.i.i137.i, %if.end.i.i.i.i.i133.i.if.end2.i.i_crit_edge
  %97 = ptrtoint ptr %ling.i.i to i32
  %sk_socket.i138.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %98 = ptrtoint ptr %sk_socket.i138.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sk_socket.i138.i, align 8
  %.fca.0.insert.i139.i = insertvalue [2 x i32] poison, i32 %97, 0
  %.fca.1.insert.i140.i = insertvalue [2 x i32] %.fca.0.insert.i139.i, i32 -2147483648, 1
  %call3.i.i = call i32 @sock_setsockopt(ptr noundef %99, i32 noundef 1, i32 noundef 13, [2 x i32] %.fca.1.insert.i140.i, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end2.i.i.mptcp_setsockopt_sol_socket_linger.exit.i_crit_edge

if.end2.i.i.mptcp_setsockopt_sol_socket_linger.exit.i_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_setsockopt_sol_socket_linger.exit.i

if.end6.i.i:                                      ; preds = %if.end2.i.i
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  %setsockopt_seq.i.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 42
  %100 = ptrtoint ptr %setsockopt_seq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %setsockopt_seq.i.i.i, align 8
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i.i.i46.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i46.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i46.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %lockdep_sock_is_held.exit.i.i.i.i.i, label %if.end6.i.i.sockopt_seq_inc.exit.i.i_crit_edge

if.end6.i.i.sockopt_seq_inc.exit.i.i_crit_edge:   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i.i

lockdep_sock_is_held.exit.i.i.i.i.i:              ; preds = %if.end6.i.i
  %dep_map2.i.i.i.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i.i.i)
  %tobool4.i.not.i.i.i.i.i = icmp eq i32 %call.i6.i.i.i.i.i.i, 0
  br i1 %tobool4.i.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %lockdep_sock_is_held.exit.i.i.i.i.i.sockopt_seq_inc.exit.i.i_crit_edge

lockdep_sock_is_held.exit.i.i.i.i.i.sockopt_seq_inc.exit.i.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i.i

land.rhs.i.i.i.i.i:                               ; preds = %lockdep_sock_is_held.exit.i.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %102 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i.i.i.i.i = icmp eq i32 %102, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i.sockopt_seq_inc.exit.i.i_crit_edge, label %land.rhs3.i.i.i.i.i

land.rhs.i.i.i.i.i.sockopt_seq_inc.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i.i

land.rhs3.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i.i
  %.b40.i.i.i.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i.i.i.i, label %land.rhs3.i.i.i.i.i.sockopt_seq_inc.exit.i.i_crit_edge, label %if.then.i.i.i.i.i, !prof !41

land.rhs3.i.i.i.i.i.sockopt_seq_inc.exit.i.i_crit_edge: ; preds = %land.rhs3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %land.rhs3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1750, i32 noundef 9, ptr noundef null) #9
  br label %sockopt_seq_inc.exit.i.i

sockopt_seq_inc.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %land.rhs3.i.i.i.i.i.sockopt_seq_inc.exit.i.i_crit_edge, %land.rhs.i.i.i.i.i.sockopt_seq_inc.exit.i.i_crit_edge, %lockdep_sock_is_held.exit.i.i.i.i.i.sockopt_seq_inc.exit.i.i_crit_edge, %if.end6.i.i.sockopt_seq_inc.exit.i.i_crit_edge
  %add.i.i.i = add i32 %101, 1
  %and.i.i.i = and i32 %add.i.i.i, 16777215
  %skc_state.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %103 = ptrtoint ptr %skc_state.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load volatile i8, ptr %skc_state.i.i.i.i, align 2
  %conv.i.i.i.i = zext i8 %104 to i32
  %shl.i.i.i.i = shl nuw i32 %conv.i.i.i.i, 24
  %add1.i.i.i = or i32 %shl.i.i.i.i, %and.i.i.i
  %105 = ptrtoint ptr %setsockopt_seq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %add1.i.i.i, ptr %setsockopt_seq.i.i.i, align 8
  %conn_list.i141.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 34
  %106 = ptrtoint ptr %conn_list.i141.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %subflow.054.i.i = load ptr, ptr %conn_list.i141.i, align 8
  %cmp9.not55.i.i = icmp eq ptr %subflow.054.i.i, %conn_list.i141.i
  br i1 %cmp9.not55.i.i, label %sockopt_seq_inc.exit.i.i.for.end.i153.i_crit_edge, label %for.body.lr.ph.i142.i

sockopt_seq_inc.exit.i.i.for.end.i153.i_crit_edge: ; preds = %sockopt_seq_inc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i153.i

for.body.lr.ph.i142.i:                            ; preds = %sockopt_seq_inc.exit.i.i
  %107 = call ptr @llvm.returnaddress(i32 0) #9
  %108 = ptrtoint ptr %107 to i32
  %sk_lingertime.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 48
  br label %for.body.i147.i

for.body.i147.i:                                  ; preds = %unlock_sock_fast.exit.i152.i.for.body.i147.i_crit_edge, %for.body.lr.ph.i142.i
  %subflow.056.i.i = phi ptr [ %subflow.054.i.i, %for.body.lr.ph.i142.i ], [ %subflow.0.i151.i, %unlock_sock_fast.exit.i152.i.for.body.i147.i_crit_edge ]
  %tcp_sock.i.i143.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.056.i.i, i32 0, i32 5
  %109 = ptrtoint ptr %tcp_sock.i.i143.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %tcp_sock.i.i143.i, align 8
  %dep_map.i.i144.i = getelementptr inbounds %struct.sock, ptr %110, i32 0, i32 4, i32 3
  call void @lock_acquire(ptr noundef %dep_map.i.i144.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %108) #9
  %call.i.i145.i = call zeroext i1 @__lock_sock_fast(ptr noundef %110) #9
  %111 = ptrtoint ptr %ling.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ling.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool12.not.i146.i = icmp eq i32 %112, 0
  br i1 %tobool12.not.i146.i, label %if.then13.i.i, label %if.else.i.i

if.then13.i.i:                                    ; preds = %for.body.i147.i
  call void @__sanitizer_cov_trace_pc() #11
  %113 = getelementptr inbounds %struct.sock_common, ptr %110, i32 0, i32 13
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 4
  %and.i.i.i.i = and i32 %115, -17
  store i32 %and.i.i.i.i, ptr %113, align 4
  br label %if.end15.i.i

if.else.i.i:                                      ; preds = %for.body.i147.i
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %sk_lingertime.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %sk_lingertime.i.i, align 8
  %sk_lingertime14.i.i = getelementptr inbounds %struct.sock, ptr %110, i32 0, i32 48
  %118 = ptrtoint ptr %sk_lingertime14.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %sk_lingertime14.i.i, align 8
  %119 = getelementptr inbounds %struct.sock_common, ptr %110, i32 0, i32 13
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 4
  %or.i.i.i.i = or i32 %121, 16
  store i32 %or.i.i.i.i, ptr %119, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.else.i.i, %if.then13.i.i
  %122 = ptrtoint ptr %setsockopt_seq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %setsockopt_seq.i.i.i, align 8
  %setsockopt_seq16.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.056.i.i, i32 0, i32 3
  %124 = ptrtoint ptr %setsockopt_seq16.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %setsockopt_seq16.i.i, align 8
  br i1 %call.i.i145.i, label %if.then.i.i148.i, label %if.else.i.i150.i

if.then.i.i148.i:                                 ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @release_sock(ptr noundef %110) #9
  br label %unlock_sock_fast.exit.i152.i

if.else.i.i150.i:                                 ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sk_lock.i.i149.i = getelementptr inbounds %struct.sock, ptr %110, i32 0, i32 4
  call void @lock_release(ptr noundef %dep_map.i.i144.i, i32 noundef %108) #9
  call void @_raw_spin_unlock_bh(ptr noundef %sk_lock.i.i149.i) #9
  br label %unlock_sock_fast.exit.i152.i

unlock_sock_fast.exit.i152.i:                     ; preds = %if.else.i.i150.i, %if.then.i.i148.i
  %125 = ptrtoint ptr %subflow.056.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %subflow.0.i151.i = load ptr, ptr %subflow.056.i.i, align 8
  %cmp9.not.i.i = icmp eq ptr %subflow.0.i151.i, %conn_list.i141.i
  br i1 %cmp9.not.i.i, label %unlock_sock_fast.exit.i152.i.for.end.i153.i_crit_edge, label %unlock_sock_fast.exit.i152.i.for.body.i147.i_crit_edge

unlock_sock_fast.exit.i152.i.for.body.i147.i_crit_edge: ; preds = %unlock_sock_fast.exit.i152.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i147.i

unlock_sock_fast.exit.i152.i.for.end.i153.i_crit_edge: ; preds = %unlock_sock_fast.exit.i152.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i153.i

for.end.i153.i:                                   ; preds = %unlock_sock_fast.exit.i152.i.for.end.i153.i_crit_edge, %sockopt_seq_inc.exit.i.i.for.end.i153.i_crit_edge
  call void @release_sock(ptr noundef %sk) #9
  br label %mptcp_setsockopt_sol_socket_linger.exit.i

mptcp_setsockopt_sol_socket_linger.exit.i:        ; preds = %for.end.i153.i, %if.end2.i.i.mptcp_setsockopt_sol_socket_linger.exit.i_crit_edge, %if.then11.i.i.i.i.i136.i, %sw.bb47.i.mptcp_setsockopt_sol_socket_linger.exit.i_crit_edge
  %retval.0.i154.i = phi i32 [ 0, %for.end.i153.i ], [ -22, %sw.bb47.i.mptcp_setsockopt_sol_socket_linger.exit.i_crit_edge ], [ %call3.i.i, %if.end2.i.i.mptcp_setsockopt_sol_socket_linger.exit.i_crit_edge ], [ -14, %if.then11.i.i.i.i.i136.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ling.i.i) #9
  br label %cleanup

sw.bb49.i:                                        ; preds = %if.then4.sw.bb49.i_crit_edge, %if.then4.sw.bb49.i_crit_edge220, %if.then4.sw.bb49.i_crit_edge221, %if.then4.sw.bb49.i_crit_edge222, %if.then4.sw.bb49.i_crit_edge223, %if.then4.sw.bb49.i_crit_edge224
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %126 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %sk_socket.i, align 8
  %call50.i = tail call i32 @sock_setsockopt(ptr noundef %127, i32 noundef 1, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #9
  br label %cleanup

sw.epilog.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i83:                                      ; preds = %do.end
  %128 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %optname, label %if.then.i83.cleanup_crit_edge [
    i32 15, label %if.then.i83.if.end9_crit_edge
    i32 19, label %if.then.i83.if.end9_crit_edge243
    i32 8, label %if.then.i83.if.end9_crit_edge244
    i32 12, label %if.then.i83.if.end9_crit_edge245
    i32 13, label %if.then.i83.if.end9_crit_edge246
    i32 6, label %if.then.i83.if.end9_crit_edge247
    i32 7, label %if.then.i83.if.end9_crit_edge248
    i32 18, label %if.then.i83.if.end9_crit_edge249
    i32 20, label %if.then.i83.if.end9_crit_edge250
    i32 23, label %if.then.i83.if.end9_crit_edge251
    i32 25, label %if.then.i83.if.end9_crit_edge252
    i32 1, label %if.then.i83.if.end9_crit_edge253
    i32 2, label %if.then.i83.if.end9_crit_edge254
    i32 24, label %if.then.i83.if.end9_crit_edge255
    i32 10, label %if.then.i83.if.end9_crit_edge256
    i32 11, label %if.then.i83.if.end9_crit_edge257
    i32 21, label %if.then.i83.if.end9_crit_edge258
    i32 26, label %if.then.i83.if.end9_crit_edge259
  ]

if.then.i83.if.end9_crit_edge259:                 ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i83.if.end9_crit_edge258:                 ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i83.if.end9_crit_edge257:                 ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i83.if.end9_crit_edge256:                 ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i83.if.end9_crit_edge255:                 ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i83.if.end9_crit_edge254:                 ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i83.if.end9_crit_edge253:                 ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i83.if.end9_crit_edge252:                 ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i83.if.end9_crit_edge251:                 ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i83.if.end9_crit_edge250:                 ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i83.if.end9_crit_edge249:                 ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i83.if.end9_crit_edge248:                 ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i83.if.end9_crit_edge247:                 ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i83.if.end9_crit_edge246:                 ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i83.if.end9_crit_edge245:                 ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i83.if.end9_crit_edge244:                 ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i83.if.end9_crit_edge243:                 ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i83.if.end9_crit_edge:                    ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i83.cleanup_crit_edge:                    ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2.i85:                                     ; preds = %do.end
  %129 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %optname, label %if.then2.i85.cleanup_crit_edge [
    i32 26, label %if.then2.i85.if.end9_crit_edge
    i32 49, label %if.then2.i85.if.end9_crit_edge260
    i32 2, label %if.then2.i85.if.end9_crit_edge261
    i32 51, label %if.then2.i85.if.end9_crit_edge262
    i32 8, label %if.then2.i85.if.end9_crit_edge263
    i32 56, label %if.then2.i85.if.end9_crit_edge264
    i32 5, label %if.then2.i85.if.end9_crit_edge265
    i32 53, label %if.then2.i85.if.end9_crit_edge266
    i32 3, label %if.then2.i85.if.end9_crit_edge267
    i32 58, label %if.then2.i85.if.end9_crit_edge268
    i32 4, label %if.then2.i85.if.end9_crit_edge269
    i32 66, label %if.then2.i85.if.end9_crit_edge270
    i32 11, label %if.then2.i85.if.end9_crit_edge271
    i32 60, label %if.then2.i85.if.end9_crit_edge272
    i32 74, label %if.then2.i85.if.end9_crit_edge273
    i32 77, label %if.then2.i85.if.end9_crit_edge274
    i32 67, label %if.then2.i85.if.end9_crit_edge275
    i32 75, label %if.then2.i85.if.end9_crit_edge276
    i32 78, label %if.then2.i85.if.end9_crit_edge277
    i32 50, label %if.then2.i85.if.end9_crit_edge278
    i32 6, label %if.then2.i85.if.end9_crit_edge279
    i32 16, label %if.then2.i85.if.end9_crit_edge280
    i32 23, label %if.then2.i85.if.end9_crit_edge281
    i32 24, label %if.then2.i85.if.end9_crit_edge282
    i32 25, label %if.then2.i85.if.end9_crit_edge283
    i32 33, label %if.then2.i85.if.end9_crit_edge284
    i32 32, label %if.then2.i85.if.end9_crit_edge285
    i32 73, label %if.then2.i85.if.end9_crit_edge286
    i32 62, label %if.then2.i85.if.end9_crit_edge287
    i32 70, label %if.then2.i85.if.end9_crit_edge288
    i32 31, label %if.then2.i85.if.end9_crit_edge289
  ]

if.then2.i85.if.end9_crit_edge289:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge288:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge287:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge286:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge285:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge284:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge283:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge282:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge281:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge280:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge279:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge278:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge277:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge276:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge275:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge274:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge273:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge272:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge271:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge270:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge269:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge268:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge267:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge266:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge265:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge264:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge263:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge262:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge261:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge260:                ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.if.end9_crit_edge:                   ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.i85.cleanup_crit_edge:                   ; preds = %if.then2.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7.i:                                       ; preds = %do.end
  %130 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %optname, label %if.then7.i.cleanup_crit_edge [
    i32 17, label %if.then7.i.if.end9_crit_edge
    i32 9, label %if.then7.i.if.end9_crit_edge290
    i32 2, label %if.then7.i.if.end9_crit_edge291
    i32 1, label %if.then7.i.if.end9_crit_edge292
    i32 16, label %if.then7.i.if.end9_crit_edge293
    i32 13, label %if.then7.i.if.end9_crit_edge294
    i32 3, label %if.then7.i.if.end9_crit_edge295
    i32 4, label %if.then7.i.if.end9_crit_edge296
    i32 5, label %if.then7.i.if.end9_crit_edge297
    i32 6, label %if.then7.i.if.end9_crit_edge298
    i32 7, label %if.then7.i.if.end9_crit_edge299
    i32 27, label %if.then7.i.if.end9_crit_edge300
    i32 8, label %if.then7.i.if.end9_crit_edge301
    i32 10, label %if.then7.i.if.end9_crit_edge302
    i32 12, label %if.then7.i.if.end9_crit_edge303
    i32 18, label %if.then7.i.if.end9_crit_edge304
    i32 24, label %if.then7.i.if.end9_crit_edge305
    i32 25, label %if.then7.i.if.end9_crit_edge306
    i32 37, label %if.then7.i.if.end9_crit_edge307
    i32 36, label %if.then7.i.if.end9_crit_edge308
  ]

if.then7.i.if.end9_crit_edge308:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7.i.if.end9_crit_edge307:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7.i.if.end9_crit_edge306:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7.i.if.end9_crit_edge305:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7.i.if.end9_crit_edge304:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7.i.if.end9_crit_edge303:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7.i.if.end9_crit_edge302:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7.i.if.end9_crit_edge301:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7.i.if.end9_crit_edge300:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7.i.if.end9_crit_edge299:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7.i.if.end9_crit_edge298:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7.i.if.end9_crit_edge297:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7.i.if.end9_crit_edge296:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7.i.if.end9_crit_edge295:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7.i.if.end9_crit_edge294:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7.i.if.end9_crit_edge293:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7.i.if.end9_crit_edge292:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7.i.if.end9_crit_edge291:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7.i.if.end9_crit_edge290:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7.i.if.end9_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7.i.cleanup_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.then7.i.if.end9_crit_edge, %if.then7.i.if.end9_crit_edge290, %if.then7.i.if.end9_crit_edge291, %if.then7.i.if.end9_crit_edge292, %if.then7.i.if.end9_crit_edge293, %if.then7.i.if.end9_crit_edge294, %if.then7.i.if.end9_crit_edge295, %if.then7.i.if.end9_crit_edge296, %if.then7.i.if.end9_crit_edge297, %if.then7.i.if.end9_crit_edge298, %if.then7.i.if.end9_crit_edge299, %if.then7.i.if.end9_crit_edge300, %if.then7.i.if.end9_crit_edge301, %if.then7.i.if.end9_crit_edge302, %if.then7.i.if.end9_crit_edge303, %if.then7.i.if.end9_crit_edge304, %if.then7.i.if.end9_crit_edge305, %if.then7.i.if.end9_crit_edge306, %if.then7.i.if.end9_crit_edge307, %if.then7.i.if.end9_crit_edge308, %if.then2.i85.if.end9_crit_edge, %if.then2.i85.if.end9_crit_edge260, %if.then2.i85.if.end9_crit_edge261, %if.then2.i85.if.end9_crit_edge262, %if.then2.i85.if.end9_crit_edge263, %if.then2.i85.if.end9_crit_edge264, %if.then2.i85.if.end9_crit_edge265, %if.then2.i85.if.end9_crit_edge266, %if.then2.i85.if.end9_crit_edge267, %if.then2.i85.if.end9_crit_edge268, %if.then2.i85.if.end9_crit_edge269, %if.then2.i85.if.end9_crit_edge270, %if.then2.i85.if.end9_crit_edge271, %if.then2.i85.if.end9_crit_edge272, %if.then2.i85.if.end9_crit_edge273, %if.then2.i85.if.end9_crit_edge274, %if.then2.i85.if.end9_crit_edge275, %if.then2.i85.if.end9_crit_edge276, %if.then2.i85.if.end9_crit_edge277, %if.then2.i85.if.end9_crit_edge278, %if.then2.i85.if.end9_crit_edge279, %if.then2.i85.if.end9_crit_edge280, %if.then2.i85.if.end9_crit_edge281, %if.then2.i85.if.end9_crit_edge282, %if.then2.i85.if.end9_crit_edge283, %if.then2.i85.if.end9_crit_edge284, %if.then2.i85.if.end9_crit_edge285, %if.then2.i85.if.end9_crit_edge286, %if.then2.i85.if.end9_crit_edge287, %if.then2.i85.if.end9_crit_edge288, %if.then2.i85.if.end9_crit_edge289, %if.then.i83.if.end9_crit_edge, %if.then.i83.if.end9_crit_edge243, %if.then.i83.if.end9_crit_edge244, %if.then.i83.if.end9_crit_edge245, %if.then.i83.if.end9_crit_edge246, %if.then.i83.if.end9_crit_edge247, %if.then.i83.if.end9_crit_edge248, %if.then.i83.if.end9_crit_edge249, %if.then.i83.if.end9_crit_edge250, %if.then.i83.if.end9_crit_edge251, %if.then.i83.if.end9_crit_edge252, %if.then.i83.if.end9_crit_edge253, %if.then.i83.if.end9_crit_edge254, %if.then.i83.if.end9_crit_edge255, %if.then.i83.if.end9_crit_edge256, %if.then.i83.if.end9_crit_edge257, %if.then.i83.if.end9_crit_edge258, %if.then.i83.if.end9_crit_edge259
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  %dep_map.i.i.i87 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i.i88 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i87, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i88)
  %tobool.not.i.i.i89 = icmp eq i32 %call.i.i.i.i88, 0
  br i1 %tobool.not.i.i.i89, label %lockdep_sock_is_held.exit.i.i, label %if.end9.sock_owned_by_me.exit.i_crit_edge

if.end9.sock_owned_by_me.exit.i_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_me.exit.i

lockdep_sock_is_held.exit.i.i:                    ; preds = %if.end9
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_me.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_me.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_me.exit.i

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %131 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not.i.i90 = icmp eq i32 %131, 0
  br i1 %tobool.not.i.i90, label %land.rhs.i.i.sock_owned_by_me.exit.i_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_me.exit.i_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_me.exit.i

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_me.exit.i_crit_edge, label %if.then.i.i91, !prof !41

land.rhs3.i.i.sock_owned_by_me.exit.i_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_me.exit.i

if.then.i.i91:                                    ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1750, i32 noundef 9, ptr noundef null) #9
  br label %sock_owned_by_me.exit.i

sock_owned_by_me.exit.i:                          ; preds = %if.then.i.i91, %land.rhs3.i.i.sock_owned_by_me.exit.i_crit_edge, %land.rhs.i.i.sock_owned_by_me.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_me.exit.i_crit_edge, %if.end9.sock_owned_by_me.exit.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 18
  %132 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %flags.i.i, align 4
  %134 = and i32 %133, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.i.not.i = icmp eq i32 %134, 0
  br i1 %tobool.i.not.i, label %__mptcp_tcp_fallback.exit.thread, label %__mptcp_tcp_fallback.exit, !prof !41

__mptcp_tcp_fallback.exit.thread:                 ; preds = %sock_owned_by_me.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @release_sock(ptr noundef %sk) #9
  br label %if.end14

__mptcp_tcp_fallback.exit:                        ; preds = %sock_owned_by_me.exit.i
  %first.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 39
  %135 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %first.i, align 8
  tail call void @release_sock(ptr noundef %sk) #9
  %tobool11.not = icmp eq ptr %136, null
  br i1 %tobool11.not, label %__mptcp_tcp_fallback.exit.if.end14_crit_edge, label %if.then12

__mptcp_tcp_fallback.exit.if.end14_crit_edge:     ; preds = %__mptcp_tcp_fallback.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %__mptcp_tcp_fallback.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 @tcp_setsockopt(ptr noundef nonnull %136, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #9
  br label %cleanup

if.end14:                                         ; preds = %__mptcp_tcp_fallback.exit.if.end14_crit_edge, %__mptcp_tcp_fallback.exit.thread
  %137 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %level, label %if.end14.cleanup_crit_edge [
    i32 0, label %if.then16
    i32 41, label %if.then20
    i32 6, label %if.then24
  ]

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  %138 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %optname, label %if.then16.cleanup_crit_edge [
    i32 15, label %if.then16.sw.bb.i95_crit_edge
    i32 19, label %if.then16.sw.bb.i95_crit_edge309
    i32 1, label %sw.bb1.i
  ]

if.then16.sw.bb.i95_crit_edge309:                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i95

if.then16.sw.bb.i95_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i95

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i95:                                        ; preds = %if.then16.sw.bb.i95_crit_edge, %if.then16.sw.bb.i95_crit_edge309
  %call.i.i94 = tail call i32 @ip_setsockopt(ptr noundef %sk, i32 noundef 0, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i94)
  %cmp.not.i.i = icmp eq i32 %call.i.i94, 0
  br i1 %cmp.not.i.i, label %if.end.i.i97, label %sw.bb.i95.cleanup_crit_edge

sw.bb.i95.cleanup_crit_edge:                      ; preds = %sw.bb.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i97:                                     ; preds = %sw.bb.i95
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  %call1.i.i = tail call ptr @__mptcp_nmpc_socket(ptr noundef %sk) #9
  %tobool.not.i.i96 = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i96, label %if.then2.i.i, label %if.end3.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i97
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @release_sock(ptr noundef %sk) #9
  br label %cleanup

if.end3.i.i:                                      ; preds = %if.end.i.i97
  %sk4.i.i = getelementptr inbounds %struct.socket, ptr %call1.i.i, i32 0, i32 4
  %139 = ptrtoint ptr %sk4.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %sk4.i.i, align 16
  %141 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %optname, label %sw.default.i.i [
    i32 15, label %if.end3.i.i.sw.epilog.i.i_crit_edge
    i32 19, label %sw.bb10.i.i
  ]

if.end3.i.i.sw.epilog.i.i_crit_edge:              ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.bb10.i.i:                                      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.end3.i.i
  tail call void @release_sock(ptr noundef %sk) #9
  %.b75.i.i = load i1, ptr @mptcp_setsockopt_sol_ip_set_transparent.__already_done, align 1
  br i1 %.b75.i.i, label %sw.default.i.i.cleanup_crit_edge, label %if.then28.i.i, !prof !41

sw.default.i.i.cleanup_crit_edge:                 ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then28.i.i:                                    ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mptcp_setsockopt_sol_ip_set_transparent.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 709, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

sw.epilog.i.i:                                    ; preds = %sw.bb10.i.i, %if.end3.i.i.sw.epilog.i.i_crit_edge
  %.sink78.i.i = phi i16 [ 1024, %sw.bb10.i.i ], [ 8192, %if.end3.i.i.sw.epilog.i.i_crit_edge ]
  %.sink76.i.i = phi i16 [ -1025, %sw.bb10.i.i ], [ -8193, %if.end3.i.i.sw.epilog.i.i_crit_edge ]
  %transparent.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %142 = ptrtoint ptr %transparent.i.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %bf.load12.i.i = load i16, ptr %transparent.i.i, align 8
  %transparent16.i.i = getelementptr inbounds %struct.inet_sock, ptr %140, i32 0, i32 12
  %143 = and i16 %bf.load12.i.i, %.sink78.i.i
  %144 = ptrtoint ptr %transparent16.i.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %bf.load17.i.i = load i16, ptr %transparent16.i.i, align 8
  %bf.clear20.i.i = and i16 %bf.load17.i.i, %.sink76.i.i
  %bf.set21.i.i = or i16 %bf.clear20.i.i, %143
  store i16 %bf.set21.i.i, ptr %transparent16.i.i, align 8
  %setsockopt_seq.i.i.i98 = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 42
  %145 = ptrtoint ptr %setsockopt_seq.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %setsockopt_seq.i.i.i98, align 8
  %call.i.i.i.i.i.i.i100 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i87, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i.i100)
  %tobool.not.i.i.i.i.i.i101 = icmp eq i32 %call.i.i.i.i.i.i.i100, 0
  br i1 %tobool.not.i.i.i.i.i.i101, label %lockdep_sock_is_held.exit.i.i.i.i.i105, label %sw.epilog.i.i.sockopt_seq_inc.exit.i.i117_crit_edge

sw.epilog.i.i.sockopt_seq_inc.exit.i.i117_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i.i117

lockdep_sock_is_held.exit.i.i.i.i.i105:           ; preds = %sw.epilog.i.i
  %dep_map2.i.i.i.i.i.i102 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i.i.i.i103 = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i.i.i102, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i.i.i103)
  %tobool4.i.not.i.i.i.i.i104 = icmp eq i32 %call.i6.i.i.i.i.i.i103, 0
  br i1 %tobool4.i.not.i.i.i.i.i104, label %land.rhs.i.i.i.i.i107, label %lockdep_sock_is_held.exit.i.i.i.i.i105.sockopt_seq_inc.exit.i.i117_crit_edge

lockdep_sock_is_held.exit.i.i.i.i.i105.sockopt_seq_inc.exit.i.i117_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i.i.i105
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i.i117

land.rhs.i.i.i.i.i107:                            ; preds = %lockdep_sock_is_held.exit.i.i.i.i.i105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %147 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool.not.i.i.i.i.i106 = icmp eq i32 %147, 0
  br i1 %tobool.not.i.i.i.i.i106, label %land.rhs.i.i.i.i.i107.sockopt_seq_inc.exit.i.i117_crit_edge, label %land.rhs3.i.i.i.i.i109

land.rhs.i.i.i.i.i107.sockopt_seq_inc.exit.i.i117_crit_edge: ; preds = %land.rhs.i.i.i.i.i107
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i.i117

land.rhs3.i.i.i.i.i109:                           ; preds = %land.rhs.i.i.i.i.i107
  %.b40.i.i.i.i.i108 = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i.i.i.i108, label %land.rhs3.i.i.i.i.i109.sockopt_seq_inc.exit.i.i117_crit_edge, label %if.then.i.i.i.i.i110, !prof !41

land.rhs3.i.i.i.i.i109.sockopt_seq_inc.exit.i.i117_crit_edge: ; preds = %land.rhs3.i.i.i.i.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i.i117

if.then.i.i.i.i.i110:                             ; preds = %land.rhs3.i.i.i.i.i109
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1750, i32 noundef 9, ptr noundef null) #9
  br label %sockopt_seq_inc.exit.i.i117

sockopt_seq_inc.exit.i.i117:                      ; preds = %if.then.i.i.i.i.i110, %land.rhs3.i.i.i.i.i109.sockopt_seq_inc.exit.i.i117_crit_edge, %land.rhs.i.i.i.i.i107.sockopt_seq_inc.exit.i.i117_crit_edge, %lockdep_sock_is_held.exit.i.i.i.i.i105.sockopt_seq_inc.exit.i.i117_crit_edge, %sw.epilog.i.i.sockopt_seq_inc.exit.i.i117_crit_edge
  %add.i.i.i111 = add i32 %146, 1
  %and.i.i.i112 = and i32 %add.i.i.i111, 16777215
  %skc_state.i.i.i.i113 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %148 = ptrtoint ptr %skc_state.i.i.i.i113 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load volatile i8, ptr %skc_state.i.i.i.i113, align 2
  %conv.i.i.i.i114 = zext i8 %149 to i32
  %shl.i.i.i.i115 = shl nuw i32 %conv.i.i.i.i114, 24
  %add1.i.i.i116 = or i32 %shl.i.i.i.i115, %and.i.i.i112
  %150 = ptrtoint ptr %setsockopt_seq.i.i.i98 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %add1.i.i.i116, ptr %setsockopt_seq.i.i.i98, align 8
  tail call void @release_sock(ptr noundef %sk) #9
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.then16
  %call.i15.i = tail call i32 @ip_setsockopt(ptr noundef %sk, i32 noundef 0, i32 noundef 1, [2 x i32] %optval.coerce, i32 noundef %optlen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %cmp.not.i16.i = icmp eq i32 %call.i15.i, 0
  br i1 %cmp.not.i16.i, label %if.end.i21.i, label %sw.bb1.i.cleanup_crit_edge

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i21.i:                                     ; preds = %sw.bb1.i
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  %setsockopt_seq.i.i17.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 42
  %151 = ptrtoint ptr %setsockopt_seq.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %setsockopt_seq.i.i17.i, align 8
  %call.i.i.i.i.i.i19.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i87, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i19.i)
  %tobool.not.i.i.i.i.i20.i = icmp eq i32 %call.i.i.i.i.i.i19.i, 0
  br i1 %tobool.not.i.i.i.i.i20.i, label %lockdep_sock_is_held.exit.i.i.i.i25.i, label %if.end.i21.i.sockopt_seq_inc.exit.i37.i_crit_edge

if.end.i21.i.sockopt_seq_inc.exit.i37.i_crit_edge: ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i37.i

lockdep_sock_is_held.exit.i.i.i.i25.i:            ; preds = %if.end.i21.i
  %dep_map2.i.i.i.i.i22.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i.i.i23.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i.i22.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i.i23.i)
  %tobool4.i.not.i.i.i.i24.i = icmp eq i32 %call.i6.i.i.i.i.i23.i, 0
  br i1 %tobool4.i.not.i.i.i.i24.i, label %land.rhs.i.i.i.i27.i, label %lockdep_sock_is_held.exit.i.i.i.i25.i.sockopt_seq_inc.exit.i37.i_crit_edge

lockdep_sock_is_held.exit.i.i.i.i25.i.sockopt_seq_inc.exit.i37.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i.i25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i37.i

land.rhs.i.i.i.i27.i:                             ; preds = %lockdep_sock_is_held.exit.i.i.i.i25.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %153 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool.not.i.i.i.i26.i = icmp eq i32 %153, 0
  br i1 %tobool.not.i.i.i.i26.i, label %land.rhs.i.i.i.i27.i.sockopt_seq_inc.exit.i37.i_crit_edge, label %land.rhs3.i.i.i.i29.i

land.rhs.i.i.i.i27.i.sockopt_seq_inc.exit.i37.i_crit_edge: ; preds = %land.rhs.i.i.i.i27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i37.i

land.rhs3.i.i.i.i29.i:                            ; preds = %land.rhs.i.i.i.i27.i
  %.b40.i.i.i.i28.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i.i.i28.i, label %land.rhs3.i.i.i.i29.i.sockopt_seq_inc.exit.i37.i_crit_edge, label %if.then.i.i.i.i30.i, !prof !41

land.rhs3.i.i.i.i29.i.sockopt_seq_inc.exit.i37.i_crit_edge: ; preds = %land.rhs3.i.i.i.i29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i37.i

if.then.i.i.i.i30.i:                              ; preds = %land.rhs3.i.i.i.i29.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1750, i32 noundef 9, ptr noundef null) #9
  br label %sockopt_seq_inc.exit.i37.i

sockopt_seq_inc.exit.i37.i:                       ; preds = %if.then.i.i.i.i30.i, %land.rhs3.i.i.i.i29.i.sockopt_seq_inc.exit.i37.i_crit_edge, %land.rhs.i.i.i.i27.i.sockopt_seq_inc.exit.i37.i_crit_edge, %lockdep_sock_is_held.exit.i.i.i.i25.i.sockopt_seq_inc.exit.i37.i_crit_edge, %if.end.i21.i.sockopt_seq_inc.exit.i37.i_crit_edge
  %add.i.i31.i = add i32 %152, 1
  %and.i.i32.i = and i32 %add.i.i31.i, 16777215
  %skc_state.i.i.i33.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %154 = ptrtoint ptr %skc_state.i.i.i33.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load volatile i8, ptr %skc_state.i.i.i33.i, align 2
  %conv.i.i.i34.i = zext i8 %155 to i32
  %shl.i.i.i35.i = shl nuw i32 %conv.i.i.i34.i, 24
  %add1.i.i36.i = or i32 %shl.i.i.i35.i, %and.i.i32.i
  %156 = ptrtoint ptr %setsockopt_seq.i.i17.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %add1.i.i36.i, ptr %setsockopt_seq.i.i17.i, align 8
  %tos.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 8
  %157 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %tos.i.i, align 4
  %conv.i.i = zext i8 %158 to i32
  %conn_list.i.i118 = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 34
  %159 = ptrtoint ptr %conn_list.i.i118 to i32
  call void @__asan_load4_noabort(i32 %159)
  %subflow.01.i.i = load ptr, ptr %conn_list.i.i118, align 8
  %cmp3.not2.i.i = icmp eq ptr %subflow.01.i.i, %conn_list.i.i118
  br i1 %cmp3.not2.i.i, label %sockopt_seq_inc.exit.i37.i.for.end.i.i122_crit_edge, label %sockopt_seq_inc.exit.i37.i.for.body.i.i121_crit_edge

sockopt_seq_inc.exit.i37.i.for.body.i.i121_crit_edge: ; preds = %sockopt_seq_inc.exit.i37.i
  br label %for.body.i.i121

sockopt_seq_inc.exit.i37.i.for.end.i.i122_crit_edge: ; preds = %sockopt_seq_inc.exit.i37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i122

for.body.i.i121:                                  ; preds = %for.body.i.i121.for.body.i.i121_crit_edge, %sockopt_seq_inc.exit.i37.i.for.body.i.i121_crit_edge
  %subflow.03.i.i = phi ptr [ %subflow.0.i.i120, %for.body.i.i121.for.body.i.i121_crit_edge ], [ %subflow.01.i.i, %sockopt_seq_inc.exit.i37.i.for.body.i.i121_crit_edge ]
  %tcp_sock.i.i.i119 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.03.i.i, i32 0, i32 5
  %160 = ptrtoint ptr %tcp_sock.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %tcp_sock.i.i.i119, align 8
  tail call void @__ip_sock_set_tos(ptr noundef %161, i32 noundef %conv.i.i) #9
  %162 = ptrtoint ptr %subflow.03.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %subflow.0.i.i120 = load ptr, ptr %subflow.03.i.i, align 8
  %cmp3.not.i.i = icmp eq ptr %subflow.0.i.i120, %conn_list.i.i118
  br i1 %cmp3.not.i.i, label %for.body.i.i121.for.end.i.i122_crit_edge, label %for.body.i.i121.for.body.i.i121_crit_edge

for.body.i.i121.for.body.i.i121_crit_edge:        ; preds = %for.body.i.i121
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i121

for.body.i.i121.for.end.i.i122_crit_edge:         ; preds = %for.body.i.i121
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i122

for.end.i.i122:                                   ; preds = %for.body.i.i121.for.end.i.i122_crit_edge, %sockopt_seq_inc.exit.i37.i.for.end.i.i122_crit_edge
  tail call void @release_sock(ptr noundef %sk) #9
  br label %cleanup

if.then20:                                        ; preds = %if.end14
  %163 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %optname, label %if.then20.cleanup_crit_edge [
    i32 26, label %if.then20.sw.bb.i126_crit_edge
    i32 75, label %if.then20.sw.bb.i126_crit_edge310
    i32 78, label %if.then20.sw.bb.i126_crit_edge311
  ]

if.then20.sw.bb.i126_crit_edge311:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i126

if.then20.sw.bb.i126_crit_edge310:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i126

if.then20.sw.bb.i126_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i126

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i126:                                       ; preds = %if.then20.sw.bb.i126_crit_edge, %if.then20.sw.bb.i126_crit_edge310, %if.then20.sw.bb.i126_crit_edge311
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  %call.i124 = tail call ptr @__mptcp_nmpc_socket(ptr noundef %sk) #9
  %tobool.not.i125 = icmp eq ptr %call.i124, null
  br i1 %tobool.not.i125, label %sw.bb.i126.cleanup.sink.split.i_crit_edge, label %if.end.i127

sw.bb.i126.cleanup.sink.split.i_crit_edge:        ; preds = %sw.bb.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end.i127:                                      ; preds = %sw.bb.i126
  %sk1.i = getelementptr inbounds %struct.socket, ptr %call.i124, i32 0, i32 4
  %164 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %sk1.i, align 16
  %call2.i = tail call i32 @tcp_setsockopt(ptr noundef %165, i32 noundef 41, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.not.i, label %if.end4.i, label %if.end.i127.cleanup.sink.split.i_crit_edge

if.end.i127.cleanup.sink.split.i_crit_edge:       ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end4.i:                                        ; preds = %if.end.i127
  %setsockopt_seq.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 42
  %166 = ptrtoint ptr %setsockopt_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %setsockopt_seq.i.i, align 8
  %call.i.i.i.i.i.i128 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i87, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i128)
  %tobool.not.i.i.i.i.i129 = icmp eq i32 %call.i.i.i.i.i.i128, 0
  br i1 %tobool.not.i.i.i.i.i129, label %lockdep_sock_is_held.exit.i.i.i.i, label %if.end4.i.sockopt_seq_inc.exit.i_crit_edge

if.end4.i.sockopt_seq_inc.exit.i_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i

lockdep_sock_is_held.exit.i.i.i.i:                ; preds = %if.end4.i
  %dep_map2.i.i.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i.i)
  %tobool4.i.not.i.i.i.i = icmp eq i32 %call.i6.i.i.i.i.i, 0
  br i1 %tobool4.i.not.i.i.i.i, label %land.rhs.i.i.i.i, label %lockdep_sock_is_held.exit.i.i.i.i.sockopt_seq_inc.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.i.i.sockopt_seq_inc.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i

land.rhs.i.i.i.i:                                 ; preds = %lockdep_sock_is_held.exit.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %168 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool.not.i.i.i.i = icmp eq i32 %168, 0
  br i1 %tobool.not.i.i.i.i, label %land.rhs.i.i.i.i.sockopt_seq_inc.exit.i_crit_edge, label %land.rhs3.i.i.i.i

land.rhs.i.i.i.i.sockopt_seq_inc.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i

land.rhs3.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i
  %.b40.i.i.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i.i.i, label %land.rhs3.i.i.i.i.sockopt_seq_inc.exit.i_crit_edge, label %if.then.i.i.i.i130, !prof !41

land.rhs3.i.i.i.i.sockopt_seq_inc.exit.i_crit_edge: ; preds = %land.rhs3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i

if.then.i.i.i.i130:                               ; preds = %land.rhs3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1750, i32 noundef 9, ptr noundef null) #9
  br label %sockopt_seq_inc.exit.i

sockopt_seq_inc.exit.i:                           ; preds = %if.then.i.i.i.i130, %land.rhs3.i.i.i.i.sockopt_seq_inc.exit.i_crit_edge, %land.rhs.i.i.i.i.sockopt_seq_inc.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.i.i.sockopt_seq_inc.exit.i_crit_edge, %if.end4.i.sockopt_seq_inc.exit.i_crit_edge
  %add.i.i = add i32 %167, 1
  %and.i.i = and i32 %add.i.i, 16777215
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %169 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %170 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %add1.i.i = or i32 %shl.i.i.i, %and.i.i
  %171 = ptrtoint ptr %setsockopt_seq.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %add1.i.i, ptr %setsockopt_seq.i.i, align 8
  %172 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %optname, label %sockopt_seq_inc.exit.i.cleanup.sink.split.i_crit_edge [
    i32 26, label %sw.bb5.i
    i32 75, label %sw.bb11.i
    i32 78, label %sw.bb24.i
  ]

sockopt_seq_inc.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %sockopt_seq_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

sw.bb5.i:                                         ; preds = %sockopt_seq_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %173 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %sk1.i, align 16
  %skc_ipv6only.i = getelementptr inbounds %struct.sock_common, ptr %174, i32 0, i32 5
  %175 = ptrtoint ptr %skc_ipv6only.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %bf.load.i131 = load i8, ptr %skc_ipv6only.i, align 1
  %bf.clear.i132 = and i8 %bf.load.i131, 4
  %skc_ipv6only8.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %176 = ptrtoint ptr %skc_ipv6only8.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %bf.load9.i = load i8, ptr %skc_ipv6only8.i, align 1
  %bf.clear10.i = and i8 %bf.load9.i, -5
  %bf.set.i133 = or i8 %bf.clear10.i, %bf.clear.i132
  store i8 %bf.set.i133, ptr %skc_ipv6only8.i, align 1
  br label %cleanup.sink.split.i

sw.bb11.i:                                        ; preds = %sockopt_seq_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %177 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %sk1.i, align 16
  %transparent.i = getelementptr inbounds %struct.inet_sock, ptr %178, i32 0, i32 12
  %179 = ptrtoint ptr %transparent.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %bf.load14.i134 = load i16, ptr %transparent.i, align 8
  %transparent18.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %180 = and i16 %bf.load14.i134, 1024
  %181 = ptrtoint ptr %transparent18.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %bf.load19.i = load i16, ptr %transparent18.i, align 8
  %bf.clear22.i = and i16 %bf.load19.i, -1025
  %bf.set23.i = or i16 %bf.clear22.i, %180
  store i16 %bf.set23.i, ptr %transparent18.i, align 8
  br label %cleanup.sink.split.i

sw.bb24.i:                                        ; preds = %sockopt_seq_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %182 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %sk1.i, align 16
  %freebind.i = getelementptr inbounds %struct.inet_sock, ptr %183, i32 0, i32 12
  %184 = ptrtoint ptr %freebind.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %bf.load27.i = load i16, ptr %freebind.i, align 8
  %freebind32.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %185 = and i16 %bf.load27.i, 8192
  %186 = ptrtoint ptr %freebind32.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %bf.load33.i = load i16, ptr %freebind32.i, align 8
  %bf.clear36.i = and i16 %bf.load33.i, -8193
  %bf.set37.i = or i16 %bf.clear36.i, %185
  store i16 %bf.set37.i, ptr %freebind32.i, align 8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb24.i, %sw.bb11.i, %sw.bb5.i, %sockopt_seq_inc.exit.i.cleanup.sink.split.i_crit_edge, %if.end.i127.cleanup.sink.split.i_crit_edge, %sw.bb.i126.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ -22, %sw.bb.i126.cleanup.sink.split.i_crit_edge ], [ %call2.i, %if.end.i127.cleanup.sink.split.i_crit_edge ], [ 0, %sockopt_seq_inc.exit.i.cleanup.sink.split.i_crit_edge ], [ 0, %sw.bb24.i ], [ 0, %sw.bb11.i ], [ 0, %sw.bb5.i ]
  tail call void @release_sock(ptr noundef %sk) #9
  br label %cleanup

if.then24:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %187 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 -1, ptr %val.i, align 4, !annotation !39
  %188 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %188, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %optname, label %if.then24.mptcp_setsockopt_sol_tcp.exit_crit_edge [
    i32 36, label %sw.bb.i139
    i32 1, label %sw.bb11.i198
    i32 13, label %sw.bb7.i
    i32 3, label %sw.bb9.i
  ]

if.then24.mptcp_setsockopt_sol_tcp.exit_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_setsockopt_sol_tcp.exit

sw.bb.i139:                                       ; preds = %if.then24
  %call.i137 = call fastcc i32 @mptcp_get_int_option([2 x i32] %optval.coerce, i32 noundef %optlen, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool.not.i138 = icmp eq i32 %call.i137, 0
  br i1 %tobool.not.i138, label %if.end.i140, label %sw.bb.i139.mptcp_setsockopt_sol_tcp.exit_crit_edge

sw.bb.i139.mptcp_setsockopt_sol_tcp.exit_crit_edge: ; preds = %sw.bb.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_setsockopt_sol_tcp.exit

if.end.i140:                                      ; preds = %sw.bb.i139
  %189 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %190)
  %191 = icmp ugt i32 %190, 1
  br i1 %191, label %if.end.i140.mptcp_setsockopt_sol_tcp.exit_crit_edge, label %if.end3.i

if.end.i140.mptcp_setsockopt_sol_tcp.exit_crit_edge: ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_setsockopt_sol_tcp.exit

if.end3.i:                                        ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #11
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  %192 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool4.not.i = icmp eq i32 %193, 0
  %recvmsg_inq.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 29
  %194 = ptrtoint ptr %recvmsg_inq.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %bf.load.i141 = load i8, ptr %recvmsg_inq.i, align 8
  %bf.shl.i = select i1 %tobool4.not.i, i8 0, i8 -128
  %bf.clear.i142 = and i8 %bf.load.i141, 127
  %bf.set.i143 = or i8 %bf.clear.i142, %bf.shl.i
  store i8 %bf.set.i143, ptr %recvmsg_inq.i, align 8
  call void @release_sock(ptr noundef %sk) #9
  br label %mptcp_setsockopt_sol_tcp.exit

sw.bb7.i:                                         ; preds = %if.then24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %optlen)
  %cmp.i.i144 = icmp eq i32 %optlen, 0
  %195 = call ptr @memset(ptr %name.i.i, i32 255, i32 16)
  br i1 %cmp.i.i144, label %sw.bb7.i.mptcp_setsockopt_sol_tcp_congestion.exit.i_crit_edge, label %if.end.i.i145

sw.bb7.i.mptcp_setsockopt_sol_tcp_congestion.exit.i_crit_edge: ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_setsockopt_sol_tcp_congestion.exit.i

if.end.i.i145:                                    ; preds = %sw.bb7.i
  %196 = tail call i32 @llvm.smin.i32(i32 %optlen, i32 15) #9
  %src.coerce.fca.0.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %197 = inttoptr i32 %src.coerce.fca.0.extract.i.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i)
  %bf.cast.i.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i, 0
  br i1 %bf.cast.i.i.i.i, label %if.then.i.i.i147, label %if.end.i.i.i148

if.then.i.i.i147:                                 ; preds = %if.end.i.i145
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %196, -1
  %call1.i.i.i = tail call i32 @strnlen(ptr noundef %197, i32 noundef %sub.i.i.i) #13
  %add.i.i.i146 = add i32 %call1.i.i.i, 1
  %198 = tail call i32 @llvm.umin.i32(i32 %add.i.i.i146, i32 %196) #9
  %199 = call ptr @memcpy(ptr %name.i.i, ptr %197, i32 %198)
  br label %strncpy_from_sockptr.exit.i.i

if.end.i.i.i148:                                  ; preds = %if.end.i.i145
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i.i.i = call i32 @strncpy_from_user(ptr noundef nonnull %name.i.i, ptr noundef %197, i32 noundef %196) #9
  br label %strncpy_from_sockptr.exit.i.i

strncpy_from_sockptr.exit.i.i:                    ; preds = %if.end.i.i.i148, %if.then.i.i.i147
  %retval.0.i.i.i149 = phi i32 [ %198, %if.then.i.i.i147 ], [ %call2.i.i.i, %if.end.i.i.i148 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i149)
  %cmp2.i.i = icmp slt i32 %retval.0.i.i.i149, 0
  br i1 %cmp2.i.i, label %strncpy_from_sockptr.exit.i.i.mptcp_setsockopt_sol_tcp_congestion.exit.i_crit_edge, label %if.end4.i.i

strncpy_from_sockptr.exit.i.i.mptcp_setsockopt_sol_tcp_congestion.exit.i_crit_edge: ; preds = %strncpy_from_sockptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_setsockopt_sol_tcp_congestion.exit.i

if.end4.i.i:                                      ; preds = %strncpy_from_sockptr.exit.i.i
  %arrayidx.i.i = getelementptr [16 x i8], ptr %name.i.i, i32 0, i32 %retval.0.i.i.i149
  %200 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %arrayidx.i.i, align 1
  %skc_net.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %201 = ptrtoint ptr %skc_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %skc_net.i.i.i, align 4
  %user_ns.i.i = getelementptr inbounds %struct.net, ptr %202, i32 0, i32 11
  %203 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %user_ns.i.i, align 4
  %call6.i.i = call zeroext i1 @ns_capable(ptr noundef %204, i32 noundef 12) #9
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  %setsockopt_seq.i.i.i150 = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 42
  %205 = ptrtoint ptr %setsockopt_seq.i.i.i150 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %setsockopt_seq.i.i.i150, align 8
  %call.i.i.i.i.i.i.i152 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i87, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i.i152)
  %tobool.not.i.i.i.i.i.i153 = icmp eq i32 %call.i.i.i.i.i.i.i152, 0
  br i1 %tobool.not.i.i.i.i.i.i153, label %lockdep_sock_is_held.exit.i.i.i.i.i157, label %if.end4.i.i.sockopt_seq_inc.exit.i.i171_crit_edge

if.end4.i.i.sockopt_seq_inc.exit.i.i171_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i.i171

lockdep_sock_is_held.exit.i.i.i.i.i157:           ; preds = %if.end4.i.i
  %dep_map2.i.i.i.i.i.i154 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i.i.i.i155 = call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i.i.i154, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i.i.i155)
  %tobool4.i.not.i.i.i.i.i156 = icmp eq i32 %call.i6.i.i.i.i.i.i155, 0
  br i1 %tobool4.i.not.i.i.i.i.i156, label %land.rhs.i.i.i.i.i159, label %lockdep_sock_is_held.exit.i.i.i.i.i157.sockopt_seq_inc.exit.i.i171_crit_edge

lockdep_sock_is_held.exit.i.i.i.i.i157.sockopt_seq_inc.exit.i.i171_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i.i.i157
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i.i171

land.rhs.i.i.i.i.i159:                            ; preds = %lockdep_sock_is_held.exit.i.i.i.i.i157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %207 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool.not.i.i.i.i.i158 = icmp eq i32 %207, 0
  br i1 %tobool.not.i.i.i.i.i158, label %land.rhs.i.i.i.i.i159.sockopt_seq_inc.exit.i.i171_crit_edge, label %land.rhs3.i.i.i.i.i161

land.rhs.i.i.i.i.i159.sockopt_seq_inc.exit.i.i171_crit_edge: ; preds = %land.rhs.i.i.i.i.i159
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i.i171

land.rhs3.i.i.i.i.i161:                           ; preds = %land.rhs.i.i.i.i.i159
  %.b40.i.i.i.i.i160 = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i.i.i.i160, label %land.rhs3.i.i.i.i.i161.sockopt_seq_inc.exit.i.i171_crit_edge, label %if.then.i.i.i.i.i162, !prof !41

land.rhs3.i.i.i.i.i161.sockopt_seq_inc.exit.i.i171_crit_edge: ; preds = %land.rhs3.i.i.i.i.i161
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i.i171

if.then.i.i.i.i.i162:                             ; preds = %land.rhs3.i.i.i.i.i161
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1750, i32 noundef 9, ptr noundef null) #9
  br label %sockopt_seq_inc.exit.i.i171

sockopt_seq_inc.exit.i.i171:                      ; preds = %if.then.i.i.i.i.i162, %land.rhs3.i.i.i.i.i161.sockopt_seq_inc.exit.i.i171_crit_edge, %land.rhs.i.i.i.i.i159.sockopt_seq_inc.exit.i.i171_crit_edge, %lockdep_sock_is_held.exit.i.i.i.i.i157.sockopt_seq_inc.exit.i.i171_crit_edge, %if.end4.i.i.sockopt_seq_inc.exit.i.i171_crit_edge
  %add.i53.i.i = add i32 %206, 1
  %and.i.i.i163 = and i32 %add.i53.i.i, 16777215
  %skc_state.i.i.i.i164 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %208 = ptrtoint ptr %skc_state.i.i.i.i164 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load volatile i8, ptr %skc_state.i.i.i.i164, align 2
  %conv.i.i.i.i165 = zext i8 %209 to i32
  %shl.i.i.i.i166 = shl nuw i32 %conv.i.i.i.i165, 24
  %add1.i.i.i167 = or i32 %shl.i.i.i.i166, %and.i.i.i163
  %210 = ptrtoint ptr %setsockopt_seq.i.i.i150 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %add1.i.i.i167, ptr %setsockopt_seq.i.i.i150, align 8
  %conn_list.i.i168 = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 34
  %211 = ptrtoint ptr %conn_list.i.i168 to i32
  call void @__asan_load4_noabort(i32 %211)
  %subflow.054.i.i169 = load ptr, ptr %conn_list.i.i168, align 8
  %cmp9.not55.i.i170 = icmp eq ptr %subflow.054.i.i169, %conn_list.i.i168
  br i1 %cmp9.not55.i.i170, label %sockopt_seq_inc.exit.i.i171.if.then24.i.i_crit_edge, label %sockopt_seq_inc.exit.i.i171.for.body.i.i175_crit_edge

sockopt_seq_inc.exit.i.i171.for.body.i.i175_crit_edge: ; preds = %sockopt_seq_inc.exit.i.i171
  br label %for.body.i.i175

sockopt_seq_inc.exit.i.i171.if.then24.i.i_crit_edge: ; preds = %sockopt_seq_inc.exit.i.i171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24.i.i

for.body.i.i175:                                  ; preds = %for.body.i.i175.for.body.i.i175_crit_edge, %sockopt_seq_inc.exit.i.i171.for.body.i.i175_crit_edge
  %subflow.057.i.i = phi ptr [ %subflow.0.i.i173, %for.body.i.i175.for.body.i.i175_crit_edge ], [ %subflow.054.i.i169, %sockopt_seq_inc.exit.i.i171.for.body.i.i175_crit_edge ]
  %ret.056.i.i = phi i32 [ %ret.1.i.i, %for.body.i.i175.for.body.i.i175_crit_edge ], [ 0, %sockopt_seq_inc.exit.i.i171.for.body.i.i175_crit_edge ]
  %tcp_sock.i.i.i172 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.057.i.i, i32 0, i32 5
  %212 = ptrtoint ptr %tcp_sock.i.i.i172 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %tcp_sock.i.i.i172, align 8
  call void @lock_sock_nested(ptr noundef %213, i32 noundef 0) #9
  %call12.i.i = call i32 @tcp_set_congestion_control(ptr noundef %213, ptr noundef nonnull %name.i.i, i1 noundef zeroext true, i1 noundef zeroext %call6.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.056.i.i)
  %cmp14.i.i = icmp eq i32 %ret.056.i.i, 0
  %or.cond.i.i = select i1 %cmp13.i.i, i1 %cmp14.i.i, i1 false
  %ret.1.i.i = select i1 %or.cond.i.i, i32 %call12.i.i, i32 %ret.056.i.i
  %214 = ptrtoint ptr %setsockopt_seq.i.i.i150 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %setsockopt_seq.i.i.i150, align 8
  %setsockopt_seq17.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.057.i.i, i32 0, i32 3
  %216 = ptrtoint ptr %setsockopt_seq17.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %setsockopt_seq17.i.i, align 8
  call void @release_sock(ptr noundef %213) #9
  %217 = ptrtoint ptr %subflow.057.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %subflow.0.i.i173 = load ptr, ptr %subflow.057.i.i, align 8
  %cmp9.not.i.i174 = icmp eq ptr %subflow.0.i.i173, %conn_list.i.i168
  br i1 %cmp9.not.i.i174, label %for.end.i.i176, label %for.body.i.i175.for.body.i.i175_crit_edge

for.body.i.i175.for.body.i.i175_crit_edge:        ; preds = %for.body.i.i175
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i175

for.end.i.i176:                                   ; preds = %for.body.i.i175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i)
  %cmp23.i.i = icmp eq i32 %ret.1.i.i, 0
  br i1 %cmp23.i.i, label %for.end.i.i176.if.then24.i.i_crit_edge, label %for.end.i.i176.if.end28.i.i_crit_edge

for.end.i.i176.if.end28.i.i_crit_edge:            ; preds = %for.end.i.i176
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i.i

for.end.i.i176.if.then24.i.i_crit_edge:           ; preds = %for.end.i.i176
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24.i.i

if.then24.i.i:                                    ; preds = %for.end.i.i176.if.then24.i.i_crit_edge, %sockopt_seq_inc.exit.i.i171.if.then24.i.i_crit_edge
  %ca_name.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 43
  %call27.i.i = call ptr @strcpy(ptr noundef %ca_name.i.i, ptr noundef nonnull %name.i.i) #13
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then24.i.i, %for.end.i.i176.if.end28.i.i_crit_edge
  %ret.0.lcssa60.i.i = phi i32 [ 0, %if.then24.i.i ], [ %ret.1.i.i, %for.end.i.i176.if.end28.i.i_crit_edge ]
  call void @release_sock(ptr noundef %sk) #9
  br label %mptcp_setsockopt_sol_tcp_congestion.exit.i

mptcp_setsockopt_sol_tcp_congestion.exit.i:       ; preds = %if.end28.i.i, %strncpy_from_sockptr.exit.i.i.mptcp_setsockopt_sol_tcp_congestion.exit.i_crit_edge, %sw.bb7.i.mptcp_setsockopt_sol_tcp_congestion.exit.i_crit_edge
  %retval.0.i.i177 = phi i32 [ %ret.0.lcssa60.i.i, %if.end28.i.i ], [ -22, %sw.bb7.i.mptcp_setsockopt_sol_tcp_congestion.exit.i_crit_edge ], [ -14, %strncpy_from_sockptr.exit.i.i.mptcp_setsockopt_sol_tcp_congestion.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i.i) #9
  br label %mptcp_setsockopt_sol_tcp.exit

sw.bb9.i:                                         ; preds = %if.then24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i136) #9
  %218 = ptrtoint ptr %val.i.i136 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 -1, ptr %val.i.i136, align 4, !annotation !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp.i49.i = icmp ult i32 %optlen, 4
  br i1 %cmp.i49.i, label %sw.bb9.i.mptcp_setsockopt_sol_tcp_cork.exit.i_crit_edge, label %if.end.i50.i

sw.bb9.i.mptcp_setsockopt_sol_tcp_cork.exit.i_crit_edge: ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_setsockopt_sol_tcp_cork.exit.i

if.end.i50.i:                                     ; preds = %sw.bb9.i
  %src.coerce.fca.0.extract.i.i.i.i178 = extractvalue [2 x i32] %optval.coerce, 0
  %219 = inttoptr i32 %src.coerce.fca.0.extract.i.i.i.i178 to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i.i179 = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i.i179)
  %bf.cast.i.i.i.i.i180 = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i.i179, 0
  br i1 %bf.cast.i.i.i.i.i180, label %if.end.i.i.i.i196, label %if.end8.i.i.i.i.i.i182

if.end8.i.i.i.i.i.i182:                           ; preds = %if.end.i50.i
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #9
  %call.i.i.i.i.i.i181 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i.i.i181, label %if.end8.i.i.i.i.i.i182.if.then11.i.i.i.i.i.i195_crit_edge, label %land.lhs.true.i.i.i.i.i.i185

if.end8.i.i.i.i.i.i182.if.then11.i.i.i.i.i.i195_crit_edge: ; preds = %if.end8.i.i.i.i.i.i182
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i.i.i195

land.lhs.true.i.i.i.i.i.i185:                     ; preds = %if.end8.i.i.i.i.i.i182
  %220 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %219, i32 4, i32 -1226833920) #12, !srcloc !40
  %asmresult.i.i.i.i.i.i183 = extractvalue { i32, i32 } %220, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i183)
  %cmp.i6.i.i.i.i.i184 = icmp eq i32 %asmresult.i.i.i.i.i.i183, 0
  br i1 %cmp.i6.i.i.i.i.i184, label %if.end.i.i.i.i.i.i192, label %land.lhs.true.i.i.i.i.i.i185.if.then11.i.i.i.i.i.i195_crit_edge, !prof !41

land.lhs.true.i.i.i.i.i.i185.if.then11.i.i.i.i.i.i195_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i185
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i.i.i195

if.end.i.i.i.i.i.i192:                            ; preds = %land.lhs.true.i.i.i.i.i.i185
  %call.i.i.i.i.i.i51.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val.i.i136, i32 noundef 4) #9
  %221 = call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i.i.i.i.i.i.i.i186 = and i32 %221, -16384
  %222 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i.i186 to ptr
  %cpu_domain.i.i.i.i.i.i.i.i.i187 = getelementptr inbounds %struct.thread_info, ptr %222, i32 0, i32 4
  %223 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i.i187) #3, !srcloc !42
  %and.i.i.i.i.i.i.i.i188 = and i32 %223, -13
  %or.i.i.i.i.i.i.i.i189 = or i32 %and.i.i.i.i.i.i.i.i188, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i.i189) #9, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  %call1.i.i.i.i.i.i.i190 = call i32 @arm_copy_from_user(ptr noundef nonnull %val.i.i136, ptr noundef %219, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %223) #9, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i.i190)
  %tobool4.not.i.i.i.i.i.i191 = icmp eq i32 %call1.i.i.i.i.i.i.i190, 0
  br i1 %tobool4.not.i.i.i.i.i.i191, label %if.end.i.i.i.i.i.i192.if.end2.i.i197_crit_edge, label %if.end.i.i.i.i.i.i192.if.then11.i.i.i.i.i.i195_crit_edge, !prof !41

if.end.i.i.i.i.i.i192.if.then11.i.i.i.i.i.i195_crit_edge: ; preds = %if.end.i.i.i.i.i.i192
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i.i.i195

if.end.i.i.i.i.i.i192.if.end2.i.i197_crit_edge:   ; preds = %if.end.i.i.i.i.i.i192
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2.i.i197

if.then11.i.i.i.i.i.i195:                         ; preds = %if.end.i.i.i.i.i.i192.if.then11.i.i.i.i.i.i195_crit_edge, %land.lhs.true.i.i.i.i.i.i185.if.then11.i.i.i.i.i.i195_crit_edge, %if.end8.i.i.i.i.i.i182.if.then11.i.i.i.i.i.i195_crit_edge
  %res.0.i.i.i.i39.i.i = phi i32 [ %call1.i.i.i.i.i.i.i190, %if.end.i.i.i.i.i.i192.if.then11.i.i.i.i.i.i195_crit_edge ], [ 4, %if.end8.i.i.i.i.i.i182.if.then11.i.i.i.i.i.i195_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.i.i185.if.then11.i.i.i.i.i.i195_crit_edge ]
  %sub.i.i.i.i.i.i193 = sub i32 4, %res.0.i.i.i.i39.i.i
  %add.ptr.i.i.i.i.i.i194 = getelementptr i8, ptr %val.i.i136, i32 %sub.i.i.i.i.i.i193
  %224 = call ptr @memset(ptr %add.ptr.i.i.i.i.i.i194, i32 0, i32 %res.0.i.i.i.i39.i.i)
  br label %mptcp_setsockopt_sol_tcp_cork.exit.i

if.end.i.i.i.i196:                                ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #11
  %225 = ptrtoint ptr %219 to i32
  call void @__asan_loadN_noabort(i32 %225, i32 4)
  %226 = load i32, ptr %219, align 1
  %227 = ptrtoint ptr %val.i.i136 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %val.i.i136, align 4
  br label %if.end2.i.i197

if.end2.i.i197:                                   ; preds = %if.end.i.i.i.i196, %if.end.i.i.i.i.i.i192.if.end2.i.i197_crit_edge
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  %setsockopt_seq.i.i52.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 42
  %228 = ptrtoint ptr %setsockopt_seq.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %setsockopt_seq.i.i52.i, align 8
  %call.i.i.i.i.i36.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i87, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i36.i.i)
  %tobool.not.i.i.i.i.i54.i = icmp eq i32 %call.i.i.i.i.i36.i.i, 0
  br i1 %tobool.not.i.i.i.i.i54.i, label %lockdep_sock_is_held.exit.i.i.i.i58.i, label %if.end2.i.i197.sockopt_seq_inc.exit.i71.i_crit_edge

if.end2.i.i197.sockopt_seq_inc.exit.i71.i_crit_edge: ; preds = %if.end2.i.i197
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i71.i

lockdep_sock_is_held.exit.i.i.i.i58.i:            ; preds = %if.end2.i.i197
  %dep_map2.i.i.i.i.i55.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i.i.i56.i = call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i.i55.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i.i56.i)
  %tobool4.i.not.i.i.i.i57.i = icmp eq i32 %call.i6.i.i.i.i.i56.i, 0
  br i1 %tobool4.i.not.i.i.i.i57.i, label %land.rhs.i.i.i.i60.i, label %lockdep_sock_is_held.exit.i.i.i.i58.i.sockopt_seq_inc.exit.i71.i_crit_edge

lockdep_sock_is_held.exit.i.i.i.i58.i.sockopt_seq_inc.exit.i71.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i.i58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i71.i

land.rhs.i.i.i.i60.i:                             ; preds = %lockdep_sock_is_held.exit.i.i.i.i58.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %230 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool.not.i.i.i.i59.i = icmp eq i32 %230, 0
  br i1 %tobool.not.i.i.i.i59.i, label %land.rhs.i.i.i.i60.i.sockopt_seq_inc.exit.i71.i_crit_edge, label %land.rhs3.i.i.i.i62.i

land.rhs.i.i.i.i60.i.sockopt_seq_inc.exit.i71.i_crit_edge: ; preds = %land.rhs.i.i.i.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i71.i

land.rhs3.i.i.i.i62.i:                            ; preds = %land.rhs.i.i.i.i60.i
  %.b40.i.i.i.i61.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i.i.i61.i, label %land.rhs3.i.i.i.i62.i.sockopt_seq_inc.exit.i71.i_crit_edge, label %if.then.i.i.i.i63.i, !prof !41

land.rhs3.i.i.i.i62.i.sockopt_seq_inc.exit.i71.i_crit_edge: ; preds = %land.rhs3.i.i.i.i62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i71.i

if.then.i.i.i.i63.i:                              ; preds = %land.rhs3.i.i.i.i62.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1750, i32 noundef 9, ptr noundef null) #9
  br label %sockopt_seq_inc.exit.i71.i

sockopt_seq_inc.exit.i71.i:                       ; preds = %if.then.i.i.i.i63.i, %land.rhs3.i.i.i.i62.i.sockopt_seq_inc.exit.i71.i_crit_edge, %land.rhs.i.i.i.i60.i.sockopt_seq_inc.exit.i71.i_crit_edge, %lockdep_sock_is_held.exit.i.i.i.i58.i.sockopt_seq_inc.exit.i71.i_crit_edge, %if.end2.i.i197.sockopt_seq_inc.exit.i71.i_crit_edge
  %add.i.i64.i = add i32 %229, 1
  %and.i.i65.i = and i32 %add.i.i64.i, 16777215
  %skc_state.i.i.i66.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %231 = ptrtoint ptr %skc_state.i.i.i66.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load volatile i8, ptr %skc_state.i.i.i66.i, align 2
  %conv.i.i.i67.i = zext i8 %232 to i32
  %shl.i.i.i68.i = shl nuw i32 %conv.i.i.i67.i, 24
  %add1.i.i69.i = or i32 %shl.i.i.i68.i, %and.i.i65.i
  %233 = ptrtoint ptr %setsockopt_seq.i.i52.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %add1.i.i69.i, ptr %setsockopt_seq.i.i52.i, align 8
  %234 = ptrtoint ptr %val.i.i136 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %val.i.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %tobool3.not.i.i = icmp eq i32 %235, 0
  %cork.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 29
  %236 = ptrtoint ptr %cork.i.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %bf.load.i.i = load i8, ptr %cork.i.i, align 8
  %bf.shl.i.i = select i1 %tobool3.not.i.i, i8 0, i8 64
  %bf.clear.i.i = and i8 %bf.load.i.i, -65
  %bf.set.i.i = or i8 %bf.clear.i.i, %bf.shl.i.i
  store i8 %bf.set.i.i, ptr %cork.i.i, align 8
  %conn_list.i70.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 34
  %237 = ptrtoint ptr %conn_list.i70.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %subflow.042.i.i = load ptr, ptr %conn_list.i70.i, align 8
  %cmp6.not43.i.i = icmp eq ptr %subflow.042.i.i, %conn_list.i70.i
  br i1 %cmp6.not43.i.i, label %sockopt_seq_inc.exit.i71.i.for.end.i75.i_crit_edge, label %sockopt_seq_inc.exit.i71.i.for.body.i74.i_crit_edge

sockopt_seq_inc.exit.i71.i.for.body.i74.i_crit_edge: ; preds = %sockopt_seq_inc.exit.i71.i
  br label %for.body.i74.i

sockopt_seq_inc.exit.i71.i.for.end.i75.i_crit_edge: ; preds = %sockopt_seq_inc.exit.i71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i75.i

for.body.i74.i:                                   ; preds = %for.body.i74.i.for.body.i74.i_crit_edge, %sockopt_seq_inc.exit.i71.i.for.body.i74.i_crit_edge
  %subflow.044.i.i = phi ptr [ %subflow.0.i73.i, %for.body.i74.i.for.body.i74.i_crit_edge ], [ %subflow.042.i.i, %sockopt_seq_inc.exit.i71.i.for.body.i74.i_crit_edge ]
  %tcp_sock.i.i72.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.044.i.i, i32 0, i32 5
  %238 = ptrtoint ptr %tcp_sock.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %tcp_sock.i.i72.i, align 8
  call void @lock_sock_nested(ptr noundef %239, i32 noundef 0) #9
  %240 = ptrtoint ptr %val.i.i136 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %val.i.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool11.i.i = icmp ne i32 %241, 0
  call void @__tcp_sock_set_cork(ptr noundef %239, i1 noundef zeroext %tobool11.i.i) #9
  call void @release_sock(ptr noundef %239) #9
  %242 = ptrtoint ptr %subflow.044.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %subflow.0.i73.i = load ptr, ptr %subflow.044.i.i, align 8
  %cmp6.not.i.i = icmp eq ptr %subflow.0.i73.i, %conn_list.i70.i
  br i1 %cmp6.not.i.i, label %for.body.i74.i.for.end.i75.i_crit_edge, label %for.body.i74.i.for.body.i74.i_crit_edge

for.body.i74.i.for.body.i74.i_crit_edge:          ; preds = %for.body.i74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i74.i

for.body.i74.i.for.end.i75.i_crit_edge:           ; preds = %for.body.i74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i75.i

for.end.i75.i:                                    ; preds = %for.body.i74.i.for.end.i75.i_crit_edge, %sockopt_seq_inc.exit.i71.i.for.end.i75.i_crit_edge
  %243 = ptrtoint ptr %val.i.i136 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %val.i.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %tobool21.not.i.i = icmp eq i32 %244, 0
  br i1 %tobool21.not.i.i, label %if.then22.i.i, label %for.end.i75.i.if.end23.i.i_crit_edge

for.end.i75.i.if.end23.i.i_crit_edge:             ; preds = %for.end.i75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i.i

if.then22.i.i:                                    ; preds = %for.end.i75.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mptcp_check_and_set_pending(ptr noundef %sk) #9
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then22.i.i, %for.end.i75.i.if.end23.i.i_crit_edge
  call void @release_sock(ptr noundef %sk) #9
  br label %mptcp_setsockopt_sol_tcp_cork.exit.i

mptcp_setsockopt_sol_tcp_cork.exit.i:             ; preds = %if.end23.i.i, %if.then11.i.i.i.i.i.i195, %sw.bb9.i.mptcp_setsockopt_sol_tcp_cork.exit.i_crit_edge
  %retval.0.i76.i = phi i32 [ 0, %if.end23.i.i ], [ -22, %sw.bb9.i.mptcp_setsockopt_sol_tcp_cork.exit.i_crit_edge ], [ -14, %if.then11.i.i.i.i.i.i195 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i136) #9
  br label %mptcp_setsockopt_sol_tcp.exit

sw.bb11.i198:                                     ; preds = %if.then24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i77.i) #9
  %245 = ptrtoint ptr %val.i77.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 -1, ptr %val.i77.i, align 4, !annotation !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp.i78.i = icmp ult i32 %optlen, 4
  br i1 %cmp.i78.i, label %sw.bb11.i198.mptcp_setsockopt_sol_tcp_nodelay.exit.i_crit_edge, label %if.end.i82.i

sw.bb11.i198.mptcp_setsockopt_sol_tcp_nodelay.exit.i_crit_edge: ; preds = %sw.bb11.i198
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_setsockopt_sol_tcp_nodelay.exit.i

if.end.i82.i:                                     ; preds = %sw.bb11.i198
  %src.coerce.fca.0.extract.i.i.i79.i = extractvalue [2 x i32] %optval.coerce, 0
  %246 = inttoptr i32 %src.coerce.fca.0.extract.i.i.i79.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i80.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i80.i)
  %bf.cast.i.i.i.i81.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i80.i, 0
  br i1 %bf.cast.i.i.i.i81.i, label %if.end.i.i.i100.i, label %if.end8.i.i.i.i.i84.i

if.end8.i.i.i.i.i84.i:                            ; preds = %if.end.i82.i
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #9
  %call.i.i.i.i.i83.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i.i83.i, label %if.end8.i.i.i.i.i84.i.if.then11.i.i.i.i.i99.i_crit_edge, label %land.lhs.true.i.i.i.i.i87.i

if.end8.i.i.i.i.i84.i.if.then11.i.i.i.i.i99.i_crit_edge: ; preds = %if.end8.i.i.i.i.i84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i.i99.i

land.lhs.true.i.i.i.i.i87.i:                      ; preds = %if.end8.i.i.i.i.i84.i
  %247 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %246, i32 4, i32 -1226833920) #12, !srcloc !40
  %asmresult.i.i.i.i.i85.i = extractvalue { i32, i32 } %247, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i85.i)
  %cmp.i6.i.i.i.i86.i = icmp eq i32 %asmresult.i.i.i.i.i85.i, 0
  br i1 %cmp.i6.i.i.i.i86.i, label %if.end.i.i.i.i.i95.i, label %land.lhs.true.i.i.i.i.i87.i.if.then11.i.i.i.i.i99.i_crit_edge, !prof !41

land.lhs.true.i.i.i.i.i87.i.if.then11.i.i.i.i.i99.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i.i99.i

if.end.i.i.i.i.i95.i:                             ; preds = %land.lhs.true.i.i.i.i.i87.i
  %call.i.i.i.i.i.i88.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val.i77.i, i32 noundef 4) #9
  %248 = call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i.i.i.i.i.i.i89.i = and i32 %248, -16384
  %249 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i89.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i90.i = getelementptr inbounds %struct.thread_info, ptr %249, i32 0, i32 4
  %250 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i90.i) #3, !srcloc !42
  %and.i.i.i.i.i.i.i91.i = and i32 %250, -13
  %or.i.i.i.i.i.i.i92.i = or i32 %and.i.i.i.i.i.i.i91.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i92.i) #9, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  %call1.i.i.i.i.i.i93.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val.i77.i, ptr noundef %246, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %250) #9, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i93.i)
  %tobool4.not.i.i.i.i.i94.i = icmp eq i32 %call1.i.i.i.i.i.i93.i, 0
  br i1 %tobool4.not.i.i.i.i.i94.i, label %if.end.i.i.i.i.i95.i.if.end2.i105.i_crit_edge, label %if.end.i.i.i.i.i95.i.if.then11.i.i.i.i.i99.i_crit_edge, !prof !41

if.end.i.i.i.i.i95.i.if.then11.i.i.i.i.i99.i_crit_edge: ; preds = %if.end.i.i.i.i.i95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i.i99.i

if.end.i.i.i.i.i95.i.if.end2.i105.i_crit_edge:    ; preds = %if.end.i.i.i.i.i95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2.i105.i

if.then11.i.i.i.i.i99.i:                          ; preds = %if.end.i.i.i.i.i95.i.if.then11.i.i.i.i.i99.i_crit_edge, %land.lhs.true.i.i.i.i.i87.i.if.then11.i.i.i.i.i99.i_crit_edge, %if.end8.i.i.i.i.i84.i.if.then11.i.i.i.i.i99.i_crit_edge
  %res.0.i.i.i.i39.i96.i = phi i32 [ %call1.i.i.i.i.i.i93.i, %if.end.i.i.i.i.i95.i.if.then11.i.i.i.i.i99.i_crit_edge ], [ 4, %if.end8.i.i.i.i.i84.i.if.then11.i.i.i.i.i99.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.i87.i.if.then11.i.i.i.i.i99.i_crit_edge ]
  %sub.i.i.i.i.i97.i = sub i32 4, %res.0.i.i.i.i39.i96.i
  %add.ptr.i.i.i.i.i98.i = getelementptr i8, ptr %val.i77.i, i32 %sub.i.i.i.i.i97.i
  %251 = call ptr @memset(ptr %add.ptr.i.i.i.i.i98.i, i32 0, i32 %res.0.i.i.i.i39.i96.i)
  br label %mptcp_setsockopt_sol_tcp_nodelay.exit.i

if.end.i.i.i100.i:                                ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_pc() #11
  %252 = ptrtoint ptr %246 to i32
  call void @__asan_loadN_noabort(i32 %252, i32 4)
  %253 = load i32, ptr %246, align 1
  %254 = ptrtoint ptr %val.i77.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %253, ptr %val.i77.i, align 4
  br label %if.end2.i105.i

if.end2.i105.i:                                   ; preds = %if.end.i.i.i100.i, %if.end.i.i.i.i.i95.i.if.end2.i105.i_crit_edge
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  %setsockopt_seq.i.i101.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 42
  %255 = ptrtoint ptr %setsockopt_seq.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %setsockopt_seq.i.i101.i, align 8
  %call.i.i.i.i.i36.i103.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i87, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i36.i103.i)
  %tobool.not.i.i.i.i.i104.i = icmp eq i32 %call.i.i.i.i.i36.i103.i, 0
  br i1 %tobool.not.i.i.i.i.i104.i, label %lockdep_sock_is_held.exit.i.i.i.i109.i, label %if.end2.i105.i.sockopt_seq_inc.exit.i129.i_crit_edge

if.end2.i105.i.sockopt_seq_inc.exit.i129.i_crit_edge: ; preds = %if.end2.i105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i129.i

lockdep_sock_is_held.exit.i.i.i.i109.i:           ; preds = %if.end2.i105.i
  %dep_map2.i.i.i.i.i106.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i.i.i107.i = call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i.i106.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i.i107.i)
  %tobool4.i.not.i.i.i.i108.i = icmp eq i32 %call.i6.i.i.i.i.i107.i, 0
  br i1 %tobool4.i.not.i.i.i.i108.i, label %land.rhs.i.i.i.i111.i, label %lockdep_sock_is_held.exit.i.i.i.i109.i.sockopt_seq_inc.exit.i129.i_crit_edge

lockdep_sock_is_held.exit.i.i.i.i109.i.sockopt_seq_inc.exit.i129.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i.i109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i129.i

land.rhs.i.i.i.i111.i:                            ; preds = %lockdep_sock_is_held.exit.i.i.i.i109.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %257 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool.not.i.i.i.i110.i = icmp eq i32 %257, 0
  br i1 %tobool.not.i.i.i.i110.i, label %land.rhs.i.i.i.i111.i.sockopt_seq_inc.exit.i129.i_crit_edge, label %land.rhs3.i.i.i.i113.i

land.rhs.i.i.i.i111.i.sockopt_seq_inc.exit.i129.i_crit_edge: ; preds = %land.rhs.i.i.i.i111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i129.i

land.rhs3.i.i.i.i113.i:                           ; preds = %land.rhs.i.i.i.i111.i
  %.b40.i.i.i.i112.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i.i.i112.i, label %land.rhs3.i.i.i.i113.i.sockopt_seq_inc.exit.i129.i_crit_edge, label %if.then.i.i.i.i114.i, !prof !41

land.rhs3.i.i.i.i113.i.sockopt_seq_inc.exit.i129.i_crit_edge: ; preds = %land.rhs3.i.i.i.i113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit.i129.i

if.then.i.i.i.i114.i:                             ; preds = %land.rhs3.i.i.i.i113.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1750, i32 noundef 9, ptr noundef null) #9
  br label %sockopt_seq_inc.exit.i129.i

sockopt_seq_inc.exit.i129.i:                      ; preds = %if.then.i.i.i.i114.i, %land.rhs3.i.i.i.i113.i.sockopt_seq_inc.exit.i129.i_crit_edge, %land.rhs.i.i.i.i111.i.sockopt_seq_inc.exit.i129.i_crit_edge, %lockdep_sock_is_held.exit.i.i.i.i109.i.sockopt_seq_inc.exit.i129.i_crit_edge, %if.end2.i105.i.sockopt_seq_inc.exit.i129.i_crit_edge
  %add.i.i115.i = add i32 %256, 1
  %and.i.i116.i = and i32 %add.i.i115.i, 16777215
  %skc_state.i.i.i117.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %258 = ptrtoint ptr %skc_state.i.i.i117.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load volatile i8, ptr %skc_state.i.i.i117.i, align 2
  %conv.i.i.i118.i = zext i8 %259 to i32
  %shl.i.i.i119.i = shl nuw i32 %conv.i.i.i118.i, 24
  %add1.i.i120.i = or i32 %shl.i.i.i119.i, %and.i.i116.i
  %260 = ptrtoint ptr %setsockopt_seq.i.i101.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %add1.i.i120.i, ptr %setsockopt_seq.i.i101.i, align 8
  %261 = ptrtoint ptr %val.i77.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %val.i77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %tobool3.not.i121.i = icmp eq i32 %262, 0
  %nodelay.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 29
  %263 = ptrtoint ptr %nodelay.i.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %bf.load.i122.i = load i8, ptr %nodelay.i.i, align 8
  %bf.shl.i123.i = select i1 %tobool3.not.i121.i, i8 0, i8 32
  %bf.clear.i124.i = and i8 %bf.load.i122.i, -33
  %bf.set.i125.i = or i8 %bf.clear.i124.i, %bf.shl.i123.i
  store i8 %bf.set.i125.i, ptr %nodelay.i.i, align 8
  %conn_list.i126.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 34
  %264 = ptrtoint ptr %conn_list.i126.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %subflow.042.i127.i = load ptr, ptr %conn_list.i126.i, align 8
  %cmp6.not43.i128.i = icmp eq ptr %subflow.042.i127.i, %conn_list.i126.i
  br i1 %cmp6.not43.i128.i, label %sockopt_seq_inc.exit.i129.i.for.end.i137.i_crit_edge, label %sockopt_seq_inc.exit.i129.i.for.body.i135.i_crit_edge

sockopt_seq_inc.exit.i129.i.for.body.i135.i_crit_edge: ; preds = %sockopt_seq_inc.exit.i129.i
  br label %for.body.i135.i

sockopt_seq_inc.exit.i129.i.for.end.i137.i_crit_edge: ; preds = %sockopt_seq_inc.exit.i129.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i137.i

for.body.i135.i:                                  ; preds = %for.body.i135.i.for.body.i135.i_crit_edge, %sockopt_seq_inc.exit.i129.i.for.body.i135.i_crit_edge
  %subflow.044.i130.i = phi ptr [ %subflow.0.i133.i, %for.body.i135.i.for.body.i135.i_crit_edge ], [ %subflow.042.i127.i, %sockopt_seq_inc.exit.i129.i.for.body.i135.i_crit_edge ]
  %tcp_sock.i.i131.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.044.i130.i, i32 0, i32 5
  %265 = ptrtoint ptr %tcp_sock.i.i131.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %tcp_sock.i.i131.i, align 8
  call void @lock_sock_nested(ptr noundef %266, i32 noundef 0) #9
  %267 = ptrtoint ptr %val.i77.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %val.i77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %tobool11.i132.i = icmp ne i32 %268, 0
  call void @__tcp_sock_set_nodelay(ptr noundef %266, i1 noundef zeroext %tobool11.i132.i) #9
  call void @release_sock(ptr noundef %266) #9
  %269 = ptrtoint ptr %subflow.044.i130.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %subflow.0.i133.i = load ptr, ptr %subflow.044.i130.i, align 8
  %cmp6.not.i134.i = icmp eq ptr %subflow.0.i133.i, %conn_list.i126.i
  br i1 %cmp6.not.i134.i, label %for.body.i135.i.for.end.i137.i_crit_edge, label %for.body.i135.i.for.body.i135.i_crit_edge

for.body.i135.i.for.body.i135.i_crit_edge:        ; preds = %for.body.i135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i135.i

for.body.i135.i.for.end.i137.i_crit_edge:         ; preds = %for.body.i135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i137.i

for.end.i137.i:                                   ; preds = %for.body.i135.i.for.end.i137.i_crit_edge, %sockopt_seq_inc.exit.i129.i.for.end.i137.i_crit_edge
  %270 = ptrtoint ptr %val.i77.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %val.i77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %tobool21.not.i136.i = icmp eq i32 %271, 0
  br i1 %tobool21.not.i136.i, label %for.end.i137.i.if.end23.i139.i_crit_edge, label %if.then22.i138.i

for.end.i137.i.if.end23.i139.i_crit_edge:         ; preds = %for.end.i137.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i139.i

if.then22.i138.i:                                 ; preds = %for.end.i137.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mptcp_check_and_set_pending(ptr noundef %sk) #9
  br label %if.end23.i139.i

if.end23.i139.i:                                  ; preds = %if.then22.i138.i, %for.end.i137.i.if.end23.i139.i_crit_edge
  call void @release_sock(ptr noundef %sk) #9
  br label %mptcp_setsockopt_sol_tcp_nodelay.exit.i

mptcp_setsockopt_sol_tcp_nodelay.exit.i:          ; preds = %if.end23.i139.i, %if.then11.i.i.i.i.i99.i, %sw.bb11.i198.mptcp_setsockopt_sol_tcp_nodelay.exit.i_crit_edge
  %retval.0.i140.i = phi i32 [ 0, %if.end23.i139.i ], [ -22, %sw.bb11.i198.mptcp_setsockopt_sol_tcp_nodelay.exit.i_crit_edge ], [ -14, %if.then11.i.i.i.i.i99.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i77.i) #9
  br label %mptcp_setsockopt_sol_tcp.exit

mptcp_setsockopt_sol_tcp.exit:                    ; preds = %mptcp_setsockopt_sol_tcp_nodelay.exit.i, %mptcp_setsockopt_sol_tcp_cork.exit.i, %mptcp_setsockopt_sol_tcp_congestion.exit.i, %if.end3.i, %if.end.i140.mptcp_setsockopt_sol_tcp.exit_crit_edge, %sw.bb.i139.mptcp_setsockopt_sol_tcp.exit_crit_edge, %if.then24.mptcp_setsockopt_sol_tcp.exit_crit_edge
  %retval.0.i199 = phi i32 [ %retval.0.i140.i, %mptcp_setsockopt_sol_tcp_nodelay.exit.i ], [ %retval.0.i76.i, %mptcp_setsockopt_sol_tcp_cork.exit.i ], [ %retval.0.i.i177, %mptcp_setsockopt_sol_tcp_congestion.exit.i ], [ 0, %if.end3.i ], [ %call.i137, %sw.bb.i139.mptcp_setsockopt_sol_tcp.exit_crit_edge ], [ -22, %if.end.i140.mptcp_setsockopt_sol_tcp.exit_crit_edge ], [ -95, %if.then24.mptcp_setsockopt_sol_tcp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mptcp_setsockopt_sol_tcp.exit, %cleanup.sink.split.i, %if.then20.cleanup_crit_edge, %for.end.i.i122, %sw.bb1.i.cleanup_crit_edge, %sockopt_seq_inc.exit.i.i117, %if.then28.i.i, %sw.default.i.i.cleanup_crit_edge, %if.then2.i.i, %sw.bb.i95.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then12, %if.then7.i.cleanup_crit_edge, %if.then2.i85.cleanup_crit_edge, %if.then.i83.cleanup_crit_edge, %sw.epilog.i, %sw.bb49.i, %mptcp_setsockopt_sol_socket_linger.exit.i, %mptcp_setsockopt_sol_socket_timestamping.exit.i, %mptcp_setsockopt_sol_socket_int.exit.i, %if.end42.i, %if.then.i, %if.then4.cleanup_crit_edge, %if.then4.cleanup_crit_edge225, %if.then4.cleanup_crit_edge226, %if.then4.cleanup_crit_edge227, %if.then4.cleanup_crit_edge228, %if.then4.cleanup_crit_edge229, %if.then4.cleanup_crit_edge230, %if.then4.cleanup_crit_edge231, %if.then4.cleanup_crit_edge232, %if.then4.cleanup_crit_edge233, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then12 ], [ %retval.0.i199, %mptcp_setsockopt_sol_tcp.exit ], [ -95, %if.end14.cleanup_crit_edge ], [ -95, %sw.epilog.i ], [ %call50.i, %sw.bb49.i ], [ %retval.0.i154.i, %mptcp_setsockopt_sol_socket_linger.exit.i ], [ %retval.0.i116.i, %mptcp_setsockopt_sol_socket_timestamping.exit.i ], [ %retval.0.i.i, %mptcp_setsockopt_sol_socket_int.exit.i ], [ %call1.i, %if.end42.i ], [ -22, %if.then.i ], [ 0, %if.then4.cleanup_crit_edge ], [ 0, %if.then4.cleanup_crit_edge225 ], [ 0, %if.then4.cleanup_crit_edge226 ], [ 0, %if.then4.cleanup_crit_edge227 ], [ 0, %if.then4.cleanup_crit_edge228 ], [ 0, %if.then4.cleanup_crit_edge229 ], [ 0, %if.then4.cleanup_crit_edge230 ], [ 0, %if.then4.cleanup_crit_edge231 ], [ 0, %if.then4.cleanup_crit_edge232 ], [ 0, %if.then4.cleanup_crit_edge233 ], [ -95, %if.then16.cleanup_crit_edge ], [ 0, %sockopt_seq_inc.exit.i.i117 ], [ -22, %if.then2.i.i ], [ %call.i.i94, %sw.bb.i95.cleanup_crit_edge ], [ -95, %if.then28.i.i ], [ -95, %sw.default.i.i.cleanup_crit_edge ], [ %call.i15.i, %sw.bb1.i.cleanup_crit_edge ], [ 0, %for.end.i.i122 ], [ -95, %if.then20.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -92, %if.then.i83.cleanup_crit_edge ], [ -92, %if.then2.i85.cleanup_crit_edge ], [ -92, %if.then7.i.cleanup_crit_edge ], [ -92, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_diag_fill_info(ptr noundef %msk, ptr nocapture noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %info, i32 0, i32 48)
  %dep_map.i = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 4, i32 3
  %1 = tail call ptr @llvm.returnaddress(i32 0) #9
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %2) #9
  %call.i = tail call zeroext i1 @__lock_sock_fast(ptr noundef %msk) #9
  %subflows = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 13
  %3 = ptrtoint ptr %subflows to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %subflows, align 1
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %info, align 8
  %add_addr_signaled = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 10
  %6 = ptrtoint ptr %add_addr_signaled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %add_addr_signaled, align 2
  %mptcpi_add_addr_signal = getelementptr inbounds %struct.mptcp_info, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %mptcpi_add_addr_signal to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %mptcpi_add_addr_signal, align 1
  %add_addr_accepted = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 11
  %9 = ptrtoint ptr %add_addr_accepted to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %add_addr_accepted, align 1
  %mptcpi_add_addr_accepted = getelementptr inbounds %struct.mptcp_info, ptr %info, i32 0, i32 2
  %11 = ptrtoint ptr %mptcpi_add_addr_accepted to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %mptcpi_add_addr_accepted, align 2
  %local_addr_used = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 40, i32 12
  %12 = ptrtoint ptr %local_addr_used to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %local_addr_used, align 4
  %mptcpi_local_addr_used = getelementptr inbounds %struct.mptcp_info, ptr %info, i32 0, i32 11
  %14 = ptrtoint ptr %mptcpi_local_addr_used to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %mptcpi_local_addr_used, align 8
  %call18 = tail call i32 @mptcp_pm_get_subflows_max(ptr noundef %msk) #9
  %conv = trunc i32 %call18 to i8
  %mptcpi_subflows_max = getelementptr inbounds %struct.mptcp_info, ptr %info, i32 0, i32 3
  %15 = ptrtoint ptr %mptcpi_subflows_max to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %mptcpi_subflows_max, align 1
  %call19 = tail call i32 @mptcp_pm_get_add_addr_signal_max(ptr noundef %msk) #9
  %conv20 = trunc i32 %call19 to i8
  %mptcpi_add_addr_signal_max = getelementptr inbounds %struct.mptcp_info, ptr %info, i32 0, i32 4
  %16 = ptrtoint ptr %mptcpi_add_addr_signal_max to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv20, ptr %mptcpi_add_addr_signal_max, align 4
  %call21 = tail call i32 @mptcp_pm_get_add_addr_accept_max(ptr noundef %msk) #9
  %conv22 = trunc i32 %call21 to i8
  %mptcpi_add_addr_accepted_max = getelementptr inbounds %struct.mptcp_info, ptr %info, i32 0, i32 5
  %17 = ptrtoint ptr %mptcpi_add_addr_accepted_max to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv22, ptr %mptcpi_add_addr_accepted_max, align 1
  %call23 = tail call i32 @mptcp_pm_get_local_addr_max(ptr noundef %msk) #9
  %conv24 = trunc i32 %call23 to i8
  %mptcpi_local_addr_max = getelementptr inbounds %struct.mptcp_info, ptr %info, i32 0, i32 12
  %18 = ptrtoint ptr %mptcpi_local_addr_max to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv24, ptr %mptcpi_local_addr_max, align 1
  %flags25 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 18
  %19 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags25, align 4
  %21 = lshr i32 %20, 4
  %.lobit = and i32 %21, 1
  %can_ack = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 22
  %22 = ptrtoint ptr %can_ack to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load volatile i8, ptr %can_ack, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool31.not = icmp eq i8 %23, 0
  %or35 = or i32 %.lobit, 2
  %flags.1 = select i1 %tobool31.not, i32 %.lobit, i32 %or35
  %mptcpi_flags = getelementptr inbounds %struct.mptcp_info, ptr %info, i32 0, i32 6
  %24 = ptrtoint ptr %mptcpi_flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %flags.1, ptr %mptcpi_flags, align 8
  %token = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 16
  %25 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %token, align 4
  %mptcpi_token = getelementptr inbounds %struct.mptcp_info, ptr %info, i32 0, i32 7
  %27 = ptrtoint ptr %mptcpi_token to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %mptcpi_token, align 4
  %write_seq = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 3
  %28 = ptrtoint ptr %write_seq to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load volatile i64, ptr %write_seq, align 8
  %mptcpi_write_seq = getelementptr inbounds %struct.mptcp_info, ptr %info, i32 0, i32 8
  %30 = ptrtoint ptr %mptcpi_write_seq to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %mptcpi_write_seq, align 8
  %snd_una = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 13
  %31 = ptrtoint ptr %snd_una to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load volatile i64, ptr %snd_una, align 8
  %mptcpi_snd_una = getelementptr inbounds %struct.mptcp_info, ptr %info, i32 0, i32 9
  %33 = ptrtoint ptr %mptcpi_snd_una to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %mptcpi_snd_una, align 8
  %ack_seq = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 5
  %34 = ptrtoint ptr %ack_seq to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load volatile i64, ptr %ack_seq, align 8
  %mptcpi_rcv_nxt = getelementptr inbounds %struct.mptcp_info, ptr %info, i32 0, i32 10
  %36 = ptrtoint ptr %mptcpi_rcv_nxt to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %mptcpi_rcv_nxt, align 8
  %csum_enabled = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 28
  %37 = ptrtoint ptr %csum_enabled to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load volatile i8, ptr %csum_enabled, align 1, !range !45
  %mptcpi_csum_enabled = getelementptr inbounds %struct.mptcp_info, ptr %info, i32 0, i32 13
  %39 = ptrtoint ptr %mptcpi_csum_enabled to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %mptcpi_csum_enabled, align 2
  br i1 %call.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @release_sock(ptr noundef %msk) #9
  br label %unlock_sock_fast.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 4
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %2) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %sk_lock.i) #9
  br label %unlock_sock_fast.exit

unlock_sock_fast.exit:                            ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_pm_get_subflows_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_pm_get_add_addr_signal_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_pm_get_add_addr_accept_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_pm_get_local_addr_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mptcp_getsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %option) local_unnamed_addr #0 align 64 {
entry:
  %sfd.i24.i = alloca %struct.mptcp_subflow_data, align 8
  %a.i.i = alloca %struct.mptcp_subflow_addrs, align 4
  %sfd.i.i = alloca %struct.mptcp_subflow_data, align 8
  %info.i.i = alloca %struct.tcp_info, align 8
  %m_info.i.i = alloca %struct.mptcp_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_getsockopt.__UNIQUE_ID_ddebug645, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_getsockopt, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !38

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_getsockopt.__UNIQUE_ID_ddebug645, ptr noundef nonnull @.str.4, ptr noundef %sk) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %do.end.sock_owned_by_me.exit.i_crit_edge

do.end.sock_owned_by_me.exit.i_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_me.exit.i

lockdep_sock_is_held.exit.i.i:                    ; preds = %do.end
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_me.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_me.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_me.exit.i

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_me.exit.i_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_me.exit.i_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_me.exit.i

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_me.exit.i_crit_edge, label %if.then.i.i, !prof !41

land.rhs3.i.i.sock_owned_by_me.exit.i_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_me.exit.i

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1750, i32 noundef 9, ptr noundef null) #9
  br label %sock_owned_by_me.exit.i

sock_owned_by_me.exit.i:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_me.exit.i_crit_edge, %land.rhs.i.i.sock_owned_by_me.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_me.exit.i_crit_edge, %do.end.sock_owned_by_me.exit.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 18
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i.i, align 4
  %3 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %__mptcp_tcp_fallback.exit.thread, label %__mptcp_tcp_fallback.exit, !prof !41

__mptcp_tcp_fallback.exit.thread:                 ; preds = %sock_owned_by_me.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @release_sock(ptr noundef %sk) #9
  br label %if.end8

__mptcp_tcp_fallback.exit:                        ; preds = %sock_owned_by_me.exit.i
  %first.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 39
  %4 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %first.i, align 8
  tail call void @release_sock(ptr noundef %sk) #9
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %__mptcp_tcp_fallback.exit.if.end8_crit_edge, label %if.then6

__mptcp_tcp_fallback.exit.if.end8_crit_edge:      ; preds = %__mptcp_tcp_fallback.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %__mptcp_tcp_fallback.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 @tcp_getsockopt(ptr noundef nonnull %5, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %option) #9
  br label %cleanup

if.end8:                                          ; preds = %__mptcp_tcp_fallback.exit.if.end8_crit_edge, %__mptcp_tcp_fallback.exit.thread
  %6 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %level, label %if.end8.cleanup_crit_edge [
    i32 0, label %if.then9
    i32 6, label %if.then13
    i32 284, label %if.then17
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %optname)
  %cond.i = icmp eq i32 %optname, 1
  br i1 %cond.i, label %sw.bb.i, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %tos.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 8
  %7 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tos.i, align 4
  %conv.i = zext i8 %8 to i32
  %call1.i = tail call fastcc i32 @mptcp_put_int_option(ptr noundef %optval, ptr noundef %option, i32 noundef %conv.i) #9
  br label %cleanup

if.then13:                                        ; preds = %if.end8
  %9 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %optname, label %if.then13.cleanup_crit_edge [
    i32 31, label %if.then13.sw.bb.i43_crit_edge
    i32 13, label %if.then13.sw.bb.i43_crit_edge101
    i32 11, label %if.then13.sw.bb.i43_crit_edge102
    i32 26, label %if.then13.sw.bb.i43_crit_edge103
    i32 36, label %sw.bb1.i
    i32 3, label %sw.bb3.i
    i32 1, label %sw.bb8.i
  ]

if.then13.sw.bb.i43_crit_edge103:                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i43

if.then13.sw.bb.i43_crit_edge102:                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i43

if.then13.sw.bb.i43_crit_edge101:                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i43

if.then13.sw.bb.i43_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i43

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i43:                                        ; preds = %if.then13.sw.bb.i43_crit_edge, %if.then13.sw.bb.i43_crit_edge101, %if.then13.sw.bb.i43_crit_edge102, %if.then13.sw.bb.i43_crit_edge103
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  %first.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 39
  %10 = ptrtoint ptr %first.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %first.i.i, align 8
  %tobool.not.i.i42 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i42, label %if.end.i.i, label %if.then.i.i44

if.then.i.i44:                                    ; preds = %sw.bb.i43
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 @tcp_getsockopt(ptr noundef nonnull %11, i32 noundef 6, i32 noundef %optname, ptr noundef %optval, ptr noundef %option) #9
  br label %mptcp_getsockopt_first_sf_only.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i43
  %call1.i.i = tail call ptr @__mptcp_nmpc_socket(ptr noundef %sk) #9
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.mptcp_getsockopt_first_sf_only.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i.mptcp_getsockopt_first_sf_only.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_getsockopt_first_sf_only.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sk5.i.i = getelementptr inbounds %struct.socket, ptr %call1.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %sk5.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk5.i.i, align 16
  %call6.i.i = tail call i32 @tcp_getsockopt(ptr noundef %13, i32 noundef 6, i32 noundef %optname, ptr noundef %optval, ptr noundef %option) #9
  br label %mptcp_getsockopt_first_sf_only.exit.i

mptcp_getsockopt_first_sf_only.exit.i:            ; preds = %if.end4.i.i, %if.end.i.i.mptcp_getsockopt_first_sf_only.exit.i_crit_edge, %if.then.i.i44
  %ret.0.i.i = phi i32 [ %call.i.i, %if.then.i.i44 ], [ %call6.i.i, %if.end4.i.i ], [ -22, %if.end.i.i.mptcp_getsockopt_first_sf_only.exit.i_crit_edge ]
  tail call void @release_sock(ptr noundef %sk) #9
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %recvmsg_inq.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 29
  %14 = ptrtoint ptr %recvmsg_inq.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %recvmsg_inq.i, align 8
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %conv.i45 = zext i8 %bf.lshr.i to i32
  %call2.i = tail call fastcc i32 @mptcp_put_int_option(ptr noundef %optval, ptr noundef %option, i32 noundef %conv.i45) #9
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %cork.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 29
  %15 = ptrtoint ptr %cork.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load4.i = load i8, ptr %cork.i, align 8
  %bf.lshr5.i = lshr i8 %bf.load4.i, 6
  %bf.clear.i = and i8 %bf.lshr5.i, 1
  %conv6.i = zext i8 %bf.clear.i to i32
  %call7.i = tail call fastcc i32 @mptcp_put_int_option(ptr noundef %optval, ptr noundef %option, i32 noundef %conv6.i) #9
  br label %cleanup

sw.bb8.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %nodelay.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 29
  %16 = ptrtoint ptr %nodelay.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load9.i = load i8, ptr %nodelay.i, align 8
  %bf.lshr10.i = lshr i8 %bf.load9.i, 5
  %bf.clear11.i = and i8 %bf.lshr10.i, 1
  %conv12.i = zext i8 %bf.clear11.i to i32
  %call13.i = tail call fastcc i32 @mptcp_put_int_option(ptr noundef %optval, ptr noundef %option, i32 noundef %conv12.i) #9
  br label %cleanup

if.then17:                                        ; preds = %if.end8
  %17 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %optname, label %if.then17.cleanup_crit_edge [
    i32 1, label %sw.bb.i48
    i32 2, label %sw.bb1.i52
    i32 3, label %sw.bb3.i53
  ]

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i48:                                        ; preds = %if.then17
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %m_info.i.i) #9
  %18 = call ptr @memset(ptr %m_info.i.i, i32 255, i32 48)
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 893) #9
  %19 = tail call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #3, !srcloc !42
  %and.i.i.i = and i32 %21, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #9, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  %22 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %option, i32 -1226833921) #9, !srcloc !46
  %asmresult.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #9, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not.i.i47 = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i47, label %if.end.i.i49, label %sw.bb.i48.mptcp_getsockopt_info.exit.i_crit_edge

sw.bb.i48.mptcp_getsockopt_info.exit.i_crit_edge: ; preds = %sw.bb.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_getsockopt_info.exit.i

if.end.i.i49:                                     ; preds = %sw.bb.i48
  %asmresult1.i.i = extractvalue { i32, i32 } %22, 1
  %23 = tail call i32 @llvm.umin.i32(i32 %asmresult1.i.i, i32 48) #9
  call void @mptcp_diag_fill_info(ptr noundef %sk, ptr noundef nonnull %m_info.i.i) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 900) #9
  %24 = tail call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i26.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i26.i.i to ptr
  %cpu_domain.i.i27.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i27.i.i) #3, !srcloc !42
  %and.i28.i.i = and i32 %26, -13
  %or.i29.i.i = or i32 %and.i28.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i29.i.i) #9, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  %27 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %option, i32 %23, i32 -1226833921) #9, !srcloc !47
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #9, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool13.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool13.not.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i49.mptcp_getsockopt_info.exit.i_crit_edge

if.end.i.i49.mptcp_getsockopt_info.exit.i_crit_edge: ; preds = %if.end.i.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_getsockopt_info.exit.i

if.then.i.i.i.i.i:                                ; preds = %if.end.i.i49
  call void @__check_object_size(ptr noundef nonnull %m_info.i.i, i32 noundef %23, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #9
  %call.i.i.i.i50 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i50, label %if.then.i.i.i.i.i.copy_to_user.exit.i.i_crit_edge, label %if.end.i.i.i.i

if.then.i.i.i.i.i.copy_to_user.exit.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i.i
  %28 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %23, i32 -1226833920) #12, !srcloc !48
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.then2.i.i.i.i, label %if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge

if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge:   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.i.i

if.then2.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %m_info.i.i, i32 noundef %23) #9
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %m_info.i.i, i32 noundef %23) #9
  br label %copy_to_user.exit.i.i

copy_to_user.exit.i.i:                            ; preds = %if.then2.i.i.i.i, %if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge, %if.then.i.i.i.i.i.copy_to_user.exit.i.i_crit_edge
  %n.addr.0.i.i.i = phi i32 [ %23, %if.then.i.i.i.i.i.copy_to_user.exit.i.i_crit_edge ], [ %call.i12.i.i.i.i, %if.then2.i.i.i.i ], [ %23, %if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i.i)
  %tobool17.not.i.i = icmp eq i32 %n.addr.0.i.i.i, 0
  %..i.i = select i1 %tobool17.not.i.i, i32 0, i32 -14
  br label %mptcp_getsockopt_info.exit.i

mptcp_getsockopt_info.exit.i:                     ; preds = %copy_to_user.exit.i.i, %if.end.i.i49.mptcp_getsockopt_info.exit.i_crit_edge, %sw.bb.i48.mptcp_getsockopt_info.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -14, %sw.bb.i48.mptcp_getsockopt_info.exit.i_crit_edge ], [ -14, %if.end.i.i49.mptcp_getsockopt_info.exit.i_crit_edge ], [ %..i.i, %copy_to_user.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %m_info.i.i) #9
  br label %cleanup

sw.bb1.i52:                                       ; preds = %if.then17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sfd.i.i) #9
  %29 = getelementptr inbounds %struct.mptcp_subflow_data, ptr %sfd.i.i, i32 0, i32 1
  %30 = getelementptr inbounds %struct.mptcp_subflow_data, ptr %sfd.i.i, i32 0, i32 3
  %31 = call ptr @memset(ptr %sfd.i.i, i32 255, i32 16)
  %call.i.i51 = call fastcc i32 @mptcp_get_subflow_data(ptr noundef nonnull %sfd.i.i, ptr noundef %optval, ptr noundef %option) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51)
  %cmp.i.i = icmp slt i32 %call.i.i51, 0
  br i1 %cmp.i.i, label %sw.bb1.i52.mptcp_getsockopt_tcpinfo.exit.i_crit_edge, label %if.end.i11.i

sw.bb1.i52.mptcp_getsockopt_tcpinfo.exit.i_crit_edge: ; preds = %sw.bb1.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_getsockopt_tcpinfo.exit.i

if.end.i11.i:                                     ; preds = %sw.bb1.i52
  %32 = getelementptr inbounds %struct.mptcp_subflow_data, ptr %sfd.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 232, ptr %32, align 8
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %30, align 4
  %36 = call i32 @llvm.umin.i32(i32 %35, i32 232) #9
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %30, align 4
  %38 = ptrtoint ptr %sfd.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sfd.i.i, align 8
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  %conn_list.i.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 34
  %40 = ptrtoint ptr %conn_list.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %subflow.083.i.i = load ptr, ptr %conn_list.i.i, align 8
  %cmp8.not84.i.i = icmp eq ptr %subflow.083.i.i, %conn_list.i.i
  br i1 %cmp8.not84.i.i, label %if.end.i11.i.for.end.i.i_crit_edge, label %for.body.preheader.i.i

if.end.i11.i.for.end.i.i_crit_edge:               ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %if.end.i11.i
  %add.ptr.i.i = getelementptr i8, ptr %optval, i32 %39
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup23.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %subflow.090.i.i = phi ptr [ %subflow.0.i.i, %cleanup23.i.i.for.body.i.i_crit_edge ], [ %subflow.083.i.i, %for.body.preheader.i.i ]
  %sfcount.089.i.i = phi i32 [ %inc.i.i, %cleanup23.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %copied.088.i.i = phi i32 [ %copied.3.i.i, %cleanup23.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %len.087.i.i = phi i32 [ %len.3.i.i, %cleanup23.i.i.for.body.i.i_crit_edge ], [ %call.i.i51, %for.body.preheader.i.i ]
  %infoptr.085.i.i = phi ptr [ %infoptr.3.i.i, %cleanup23.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %for.body.preheader.i.i ]
  %tcp_sock.i.i.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.090.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %tcp_sock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tcp_sock.i.i.i, align 8
  %inc.i.i = add i32 %sfcount.089.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.087.i.i)
  %tobool.not.i12.i = icmp eq i32 %len.087.i.i, 0
  br i1 %tobool.not.i12.i, label %for.body.i.i.cleanup23.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.cleanup23.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup23.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %43 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.087.i.i, i32 %44)
  %cmp11.not.i.i = icmp ult i32 %len.087.i.i, %44
  br i1 %cmp11.not.i.i, label %land.lhs.true.i.i.cleanup23.i.i_crit_edge, label %if.then12.i.i

land.lhs.true.i.i.cleanup23.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup23.i.i

if.then12.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %info.i.i) #9
  %45 = call ptr @memset(ptr %info.i.i, i32 255, i32 232)
  call void @tcp_get_info(ptr noundef %42, ptr noundef nonnull %info.i.i) #9
  %46 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 232, i32 %47)
  %cmp1.i.i.i.i = icmp ugt i32 %47, 232
  br i1 %cmp1.i.i.i.i, label %if.then3.i.i.i.i, label %if.then.i.i.i.i13.i, !prof !49

if.then3.i.i.i.i:                                 ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef 232, i32 noundef %47) #9
  call void @release_sock(ptr noundef %sk) #9
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %info.i.i) #9
  br label %mptcp_getsockopt_tcpinfo.exit.i

if.then.i.i.i.i13.i:                              ; preds = %if.then12.i.i
  call void @__check_object_size(ptr noundef nonnull %info.i.i, i32 noundef %47, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #9
  %call.i.i.i14.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i14.i, label %if.then.i.i.i.i13.i.copy_to_user.exit.i23.i_crit_edge, label %if.end.i.i.i18.i

if.then.i.i.i.i13.i.copy_to_user.exit.i23.i_crit_edge: ; preds = %if.then.i.i.i.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.i23.i

if.end.i.i.i18.i:                                 ; preds = %if.then.i.i.i.i13.i
  %48 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %infoptr.085.i.i, i32 %47, i32 -1226833920) #12, !srcloc !48
  %asmresult.i.i.i16.i = extractvalue { i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i16.i)
  %cmp.i6.i.i17.i = icmp eq i32 %asmresult.i.i.i16.i, 0
  br i1 %cmp.i6.i.i17.i, label %if.then2.i.i.i21.i, label %if.end.i.i.i18.i.copy_to_user.exit.i23.i_crit_edge

if.end.i.i.i18.i.copy_to_user.exit.i23.i_crit_edge: ; preds = %if.end.i.i.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.i23.i

if.then2.i.i.i21.i:                               ; preds = %if.end.i.i.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i19.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i.i, i32 noundef %47) #9
  %call.i12.i.i.i20.i = call i32 @arm_copy_to_user(ptr noundef %infoptr.085.i.i, ptr noundef nonnull %info.i.i, i32 noundef %47) #9
  br label %copy_to_user.exit.i23.i

copy_to_user.exit.i23.i:                          ; preds = %if.then2.i.i.i21.i, %if.end.i.i.i18.i.copy_to_user.exit.i23.i_crit_edge, %if.then.i.i.i.i13.i.copy_to_user.exit.i23.i_crit_edge
  %n.addr.0.i.i22.i = phi i32 [ %47, %if.then.i.i.i.i13.i.copy_to_user.exit.i23.i_crit_edge ], [ %call.i12.i.i.i20.i, %if.then2.i.i.i21.i ], [ %47, %if.end.i.i.i18.i.copy_to_user.exit.i23.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i22.i)
  %tobool15.not.i.i = icmp eq i32 %n.addr.0.i.i22.i, 0
  br i1 %tobool15.not.i.i, label %cleanup.thread.i.i, label %cleanup.thread72.i.i

cleanup.thread72.i.i:                             ; preds = %copy_to_user.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @release_sock(ptr noundef %sk) #9
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %info.i.i) #9
  br label %mptcp_getsockopt_tcpinfo.exit.i

cleanup.thread.i.i:                               ; preds = %copy_to_user.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %30, align 4
  %add.ptr19.i.i = getelementptr i8, ptr %infoptr.085.i.i, i32 %50
  %add.i.i = add i32 %50, %copied.088.i.i
  %sub.i.i = sub i32 %len.087.i.i, %50
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %info.i.i) #9
  br label %cleanup23.i.i

cleanup23.i.i:                                    ; preds = %cleanup.thread.i.i, %land.lhs.true.i.i.cleanup23.i.i_crit_edge, %for.body.i.i.cleanup23.i.i_crit_edge
  %infoptr.3.i.i = phi ptr [ %infoptr.085.i.i, %land.lhs.true.i.i.cleanup23.i.i_crit_edge ], [ %infoptr.085.i.i, %for.body.i.i.cleanup23.i.i_crit_edge ], [ %add.ptr19.i.i, %cleanup.thread.i.i ]
  %len.3.i.i = phi i32 [ %len.087.i.i, %land.lhs.true.i.i.cleanup23.i.i_crit_edge ], [ 0, %for.body.i.i.cleanup23.i.i_crit_edge ], [ %sub.i.i, %cleanup.thread.i.i ]
  %copied.3.i.i = phi i32 [ %copied.088.i.i, %land.lhs.true.i.i.cleanup23.i.i_crit_edge ], [ %copied.088.i.i, %for.body.i.i.cleanup23.i.i_crit_edge ], [ %add.i.i, %cleanup.thread.i.i ]
  %51 = ptrtoint ptr %subflow.090.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %subflow.0.i.i = load ptr, ptr %subflow.090.i.i, align 8
  %cmp8.not.i.i = icmp eq ptr %subflow.0.i.i, %conn_list.i.i
  br i1 %cmp8.not.i.i, label %cleanup23.i.i.for.end.i.i_crit_edge, label %cleanup23.i.i.for.body.i.i_crit_edge

cleanup23.i.i.for.body.i.i_crit_edge:             ; preds = %cleanup23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

cleanup23.i.i.for.end.i.i_crit_edge:              ; preds = %cleanup23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cleanup23.i.i.for.end.i.i_crit_edge, %if.end.i11.i.for.end.i.i_crit_edge
  %copied.0.lcssa.i.i = phi i32 [ 0, %if.end.i11.i.for.end.i.i_crit_edge ], [ %copied.3.i.i, %cleanup23.i.i.for.end.i.i_crit_edge ]
  %sfcount.0.lcssa.i.i = phi i32 [ 0, %if.end.i11.i.for.end.i.i_crit_edge ], [ %inc.i.i, %cleanup23.i.i.for.end.i.i_crit_edge ]
  call void @release_sock(ptr noundef %sk) #9
  %52 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sfcount.0.lcssa.i.i, ptr %29, align 4
  %call31.i.i = call fastcc i32 @mptcp_put_subflow_data(ptr noundef nonnull %sfd.i.i, ptr noundef %optval, i32 noundef %copied.0.lcssa.i.i, ptr noundef %option) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  %.63.i.i = select i1 %tobool32.not.i.i, i32 0, i32 -14
  br label %mptcp_getsockopt_tcpinfo.exit.i

mptcp_getsockopt_tcpinfo.exit.i:                  ; preds = %for.end.i.i, %cleanup.thread72.i.i, %if.then3.i.i.i.i, %sw.bb1.i52.mptcp_getsockopt_tcpinfo.exit.i_crit_edge
  %retval.4.i.i = phi i32 [ %call.i.i51, %sw.bb1.i52.mptcp_getsockopt_tcpinfo.exit.i_crit_edge ], [ %.63.i.i, %for.end.i.i ], [ -14, %if.then3.i.i.i.i ], [ -14, %cleanup.thread72.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sfd.i.i) #9
  br label %cleanup

sw.bb3.i53:                                       ; preds = %if.then17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sfd.i24.i) #9
  %53 = getelementptr inbounds %struct.mptcp_subflow_data, ptr %sfd.i24.i, i32 0, i32 1
  %54 = getelementptr inbounds %struct.mptcp_subflow_data, ptr %sfd.i24.i, i32 0, i32 3
  %55 = call ptr @memset(ptr %sfd.i24.i, i32 255, i32 16)
  %call.i25.i = call fastcc i32 @mptcp_get_subflow_data(ptr noundef nonnull %sfd.i24.i, ptr noundef %optval, ptr noundef %option) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %cmp.i26.i = icmp slt i32 %call.i25.i, 0
  br i1 %cmp.i26.i, label %sw.bb3.i53.mptcp_getsockopt_subflow_addrs.exit.i_crit_edge, label %if.end.i28.i

sw.bb3.i53.mptcp_getsockopt_subflow_addrs.exit.i_crit_edge: ; preds = %sw.bb3.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_getsockopt_subflow_addrs.exit.i

if.end.i28.i:                                     ; preds = %sw.bb3.i53
  %56 = getelementptr inbounds %struct.mptcp_subflow_data, ptr %sfd.i24.i, i32 0, i32 2
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 256, ptr %56, align 8
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %54, align 4
  %60 = call i32 @llvm.umin.i32(i32 %59, i32 256) #9
  %61 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %54, align 4
  %62 = ptrtoint ptr %sfd.i24.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sfd.i24.i, align 8
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  %conn_list.i27.i = getelementptr inbounds %struct.mptcp_sock, ptr %sk, i32 0, i32 34
  %64 = ptrtoint ptr %conn_list.i27.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %subflow.085.i.i = load ptr, ptr %conn_list.i27.i, align 8
  %cmp8.not86.i.i = icmp eq ptr %subflow.085.i.i, %conn_list.i27.i
  br i1 %cmp8.not86.i.i, label %if.end.i28.i.for.end.i70.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i28.i.for.end.i70.i_crit_edge:             ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i70.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i28.i
  %add.ptr.i29.i = getelementptr i8, ptr %optval, i32 %63
  %sin6_port.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %a.i.i, i32 0, i32 1
  %sin6_addr.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %a.i.i, i32 0, i32 3
  %65 = getelementptr inbounds %struct.mptcp_subflow_addrs, ptr %a.i.i, i32 0, i32 1
  %sin6_port80.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %65, i32 0, i32 1
  %sin6_addr81.i.i.i = getelementptr inbounds %struct.mptcp_subflow_addrs, ptr %a.i.i, i32 0, i32 1, i32 0, i32 0, i32 1, i32 4
  %sin_addr.i.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %a.i.i, i32 0, i32 2
  %sin_addr15.i.i.i = getelementptr inbounds %struct.mptcp_subflow_addrs, ptr %a.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  br label %for.body.i33.i

for.body.i33.i:                                   ; preds = %cleanup23.i64.i.for.body.i33.i_crit_edge, %for.body.lr.ph.i.i
  %subflow.092.i.i = phi ptr [ %subflow.085.i.i, %for.body.lr.ph.i.i ], [ %subflow.0.i62.i, %cleanup23.i64.i.for.body.i33.i_crit_edge ]
  %sfcount.091.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i31.i, %cleanup23.i64.i.for.body.i33.i_crit_edge ]
  %copied.090.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %copied.3.i61.i, %cleanup23.i64.i.for.body.i33.i_crit_edge ]
  %len.089.i.i = phi i32 [ %call.i25.i, %for.body.lr.ph.i.i ], [ %len.3.i60.i, %cleanup23.i64.i.for.body.i33.i_crit_edge ]
  %addrptr.087.i.i = phi ptr [ %add.ptr.i29.i, %for.body.lr.ph.i.i ], [ %addrptr.3.i.i, %cleanup23.i64.i.for.body.i33.i_crit_edge ]
  %tcp_sock.i.i30.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.092.i.i, i32 0, i32 5
  %66 = ptrtoint ptr %tcp_sock.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tcp_sock.i.i30.i, align 8
  %inc.i31.i = add i32 %sfcount.091.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.089.i.i)
  %tobool.not.i32.i = icmp eq i32 %len.089.i.i, 0
  br i1 %tobool.not.i32.i, label %for.body.i33.i.cleanup23.i64.i_crit_edge, label %land.lhs.true.i35.i

for.body.i33.i.cleanup23.i64.i_crit_edge:         ; preds = %for.body.i33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup23.i64.i

land.lhs.true.i35.i:                              ; preds = %for.body.i33.i
  %68 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.089.i.i, i32 %69)
  %cmp11.not.i34.i = icmp ult i32 %len.089.i.i, %69
  br i1 %cmp11.not.i34.i, label %land.lhs.true.i35.i.cleanup23.i64.i_crit_edge, label %if.then12.i36.i

land.lhs.true.i35.i.cleanup23.i64.i_crit_edge:    ; preds = %land.lhs.true.i35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup23.i64.i

if.then12.i36.i:                                  ; preds = %land.lhs.true.i35.i
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %a.i.i) #9
  %70 = call ptr @memset(ptr %a.i.i, i32 0, i32 256)
  %skc_family.i.i.i = getelementptr inbounds %struct.sock_common, ptr %67, i32 0, i32 3
  %71 = ptrtoint ptr %skc_family.i.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %skc_family.i.i.i, align 8
  %73 = zext i16 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %72, label %if.then12.i36.i.mptcp_get_sub_addrs.exit.i.i_crit_edge [
    i16 2, label %if.then.i64.i.i
    i16 10, label %if.then22.i.i.i
  ]

if.then12.i36.i.mptcp_get_sub_addrs.exit.i.i_crit_edge: ; preds = %if.then12.i36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_get_sub_addrs.exit.i.i

if.then.i64.i.i:                                  ; preds = %if.then12.i36.i
  %74 = ptrtoint ptr %a.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 2, ptr %a.i.i, align 4
  %inet_sport.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %67, i32 0, i32 6
  %75 = ptrtoint ptr %inet_sport.i.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %inet_sport.i.i.i, align 8
  %77 = ptrtoint ptr %sin6_port.i.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %sin6_port.i.i.i, align 2
  %skc_rcv_saddr.i.i.i = getelementptr inbounds %struct.anon, ptr %67, i32 0, i32 1
  %78 = ptrtoint ptr %skc_rcv_saddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %skc_rcv_saddr.i.i.i, align 4
  %80 = ptrtoint ptr %sin_addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %sin_addr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i.i.i54 = icmp eq i32 %79, 0
  br i1 %tobool.not.i.i.i54, label %if.then6.i.i.i, label %if.then.i64.i.i.if.end.i.i.i_crit_edge

if.then.i64.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i64.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then6.i.i.i:                                   ; preds = %if.then.i64.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inet_saddr.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %67, i32 0, i32 2
  %81 = ptrtoint ptr %inet_saddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %inet_saddr.i.i.i, align 4
  %83 = ptrtoint ptr %sin_addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %sin_addr.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then6.i.i.i, %if.then.i64.i.i.if.end.i.i.i_crit_edge
  %84 = ptrtoint ptr %65 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 2, ptr %65, align 4
  %85 = getelementptr inbounds %struct.sock_common, ptr %67, i32 0, i32 2
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %85, align 4
  %88 = ptrtoint ptr %sin6_port80.i.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %sin6_port80.i.i.i, align 2
  %89 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %67, align 8
  %91 = ptrtoint ptr %sin_addr15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %sin_addr15.i.i.i, align 4
  br label %mptcp_get_sub_addrs.exit.i.i

if.then22.i.i.i:                                  ; preds = %if.then12.i36.i
  %skc_state.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %67, i32 0, i32 4
  %92 = ptrtoint ptr %skc_state.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load volatile i8, ptr %skc_state.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i8 %93 to i32
  %shl.i.i.i.i.i = shl nuw i32 1, %conv.i.i.i.i.i
  %and.i.i.i.i37.i = and i32 %shl.i.i.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i37.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i37.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %if.then22.i.i.i.land.rhs.i.i.i_crit_edge, label %inet6_sk.exit.i.i.i

if.then22.i.i.i.land.rhs.i.i.i_crit_edge:         ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i.i

inet6_sk.exit.i.i.i:                              ; preds = %if.then22.i.i.i
  %pinet6.i.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %67, i32 0, i32 1
  %94 = ptrtoint ptr %pinet6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pinet6.i.i.i.i, align 8
  %tobool24.not.i.i.i = icmp eq ptr %95, null
  br i1 %tobool24.not.i.i.i, label %inet6_sk.exit.i.i.i.land.rhs.i.i.i_crit_edge, label %if.end66.i.i.i

inet6_sk.exit.i.i.i.land.rhs.i.i.i_crit_edge:     ; preds = %inet6_sk.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %inet6_sk.exit.i.i.i.land.rhs.i.i.i_crit_edge, %if.then22.i.i.i.land.rhs.i.i.i_crit_edge
  %.b118.i.i.i = load i1, ptr @mptcp_get_sub_addrs.__already_done, align 1
  br i1 %.b118.i.i.i, label %land.rhs.i.i.i.mptcp_get_sub_addrs.exit.i.i_crit_edge, label %if.then34.i.i.i, !prof !41

land.rhs.i.i.i.mptcp_get_sub_addrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mptcp_get_sub_addrs.exit.i.i

if.then34.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mptcp_get_sub_addrs.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1041, i32 noundef 9, ptr noundef null) #9
  br label %mptcp_get_sub_addrs.exit.i.i

if.end66.i.i.i:                                   ; preds = %inet6_sk.exit.i.i.i
  %96 = ptrtoint ptr %a.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 10, ptr %a.i.i, align 4
  %inet_sport67.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %67, i32 0, i32 6
  %97 = ptrtoint ptr %inet_sport67.i.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %inet_sport67.i.i.i, align 8
  %99 = ptrtoint ptr %sin6_port.i.i.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %sin6_port.i.i.i, align 2
  %skc_v6_rcv_saddr.i.i.i = getelementptr inbounds %struct.sock_common, ptr %67, i32 0, i32 11
  %100 = ptrtoint ptr %skc_v6_rcv_saddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %skc_v6_rcv_saddr.i.i.i, align 4
  %arrayidx2.i.i.i.i = getelementptr %struct.sock_common, ptr %67, i32 0, i32 11, i32 0, i32 0, i32 1
  %102 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx2.i.i.i.i, align 4
  %or.i.i.i.i = or i32 %103, %101
  %arrayidx4.i.i.i.i = getelementptr %struct.sock_common, ptr %67, i32 0, i32 11, i32 0, i32 0, i32 2
  %104 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx4.i.i.i.i, align 4
  %or5.i.i.i.i = or i32 %or.i.i.i.i, %105
  %arrayidx7.i.i.i.i = getelementptr %struct.sock_common, ptr %67, i32 0, i32 11, i32 0, i32 0, i32 3
  %106 = ptrtoint ptr %arrayidx7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx7.i.i.i.i, align 4
  %or8.i.i.i.i = or i32 %or5.i.i.i.i, %107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i.i.i)
  %cmp.i.i65.i.i = icmp eq i32 %or8.i.i.i.i, 0
  br i1 %cmp.i.i65.i.i, label %if.then70.i.i.i, label %if.else71.i.i.i

if.then70.i.i.i:                                  ; preds = %if.end66.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %108 = call ptr @memcpy(ptr %sin6_addr.i.i.i, ptr %95, i32 16)
  br label %if.end75.i.i.i

if.else71.i.i.i:                                  ; preds = %if.end66.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %109 = call ptr @memcpy(ptr %sin6_addr.i.i.i, ptr %skc_v6_rcv_saddr.i.i.i, i32 16)
  br label %if.end75.i.i.i

if.end75.i.i.i:                                   ; preds = %if.else71.i.i.i, %if.then70.i.i.i
  %110 = ptrtoint ptr %65 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 10, ptr %65, align 4
  %111 = getelementptr inbounds %struct.sock_common, ptr %67, i32 0, i32 2
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %111, align 4
  %114 = ptrtoint ptr %sin6_port80.i.i.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %sin6_port80.i.i.i, align 2
  %skc_v6_daddr.i.i.i = getelementptr inbounds %struct.sock_common, ptr %67, i32 0, i32 10
  %115 = call ptr @memcpy(ptr %sin6_addr81.i.i.i, ptr %skc_v6_daddr.i.i.i, i32 16)
  br label %mptcp_get_sub_addrs.exit.i.i

mptcp_get_sub_addrs.exit.i.i:                     ; preds = %if.end75.i.i.i, %if.then34.i.i.i, %land.rhs.i.i.i.mptcp_get_sub_addrs.exit.i.i_crit_edge, %if.end.i.i.i, %if.then12.i36.i.mptcp_get_sub_addrs.exit.i.i_crit_edge
  %116 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %117)
  %cmp1.i.i.i38.i = icmp ugt i32 %117, 256
  br i1 %cmp1.i.i.i38.i, label %if.then3.i.i.i40.i, label %if.then.i.i.i.i43.i, !prof !49

if.then3.i.i.i40.i:                               ; preds = %mptcp_get_sub_addrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef 256, i32 noundef %117) #9
  call void @release_sock(ptr noundef %sk) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %a.i.i) #9
  br label %mptcp_getsockopt_subflow_addrs.exit.i

if.then.i.i.i.i43.i:                              ; preds = %mptcp_get_sub_addrs.exit.i.i
  call void @__check_object_size(ptr noundef nonnull %a.i.i, i32 noundef %117, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #9
  %call.i.i.i44.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i44.i, label %if.then.i.i.i.i43.i.copy_to_user.exit.i54.i_crit_edge, label %if.end.i.i.i48.i

if.then.i.i.i.i43.i.copy_to_user.exit.i54.i_crit_edge: ; preds = %if.then.i.i.i.i43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.i54.i

if.end.i.i.i48.i:                                 ; preds = %if.then.i.i.i.i43.i
  %118 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %addrptr.087.i.i, i32 %117, i32 -1226833920) #12, !srcloc !48
  %asmresult.i.i.i46.i = extractvalue { i32, i32 } %118, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i46.i)
  %cmp.i6.i.i47.i = icmp eq i32 %asmresult.i.i.i46.i, 0
  br i1 %cmp.i6.i.i47.i, label %if.then2.i.i.i51.i, label %if.end.i.i.i48.i.copy_to_user.exit.i54.i_crit_edge

if.end.i.i.i48.i.copy_to_user.exit.i54.i_crit_edge: ; preds = %if.end.i.i.i48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.i54.i

if.then2.i.i.i51.i:                               ; preds = %if.end.i.i.i48.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i49.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %a.i.i, i32 noundef %117) #9
  %call.i12.i.i.i50.i = call i32 @arm_copy_to_user(ptr noundef %addrptr.087.i.i, ptr noundef nonnull %a.i.i, i32 noundef %117) #9
  br label %copy_to_user.exit.i54.i

copy_to_user.exit.i54.i:                          ; preds = %if.then2.i.i.i51.i, %if.end.i.i.i48.i.copy_to_user.exit.i54.i_crit_edge, %if.then.i.i.i.i43.i.copy_to_user.exit.i54.i_crit_edge
  %n.addr.0.i.i52.i = phi i32 [ %117, %if.then.i.i.i.i43.i.copy_to_user.exit.i54.i_crit_edge ], [ %call.i12.i.i.i50.i, %if.then2.i.i.i51.i ], [ %117, %if.end.i.i.i48.i.copy_to_user.exit.i54.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i52.i)
  %tobool15.not.i53.i = icmp eq i32 %n.addr.0.i.i52.i, 0
  br i1 %tobool15.not.i53.i, label %cleanup.thread.i58.i, label %cleanup.thread74.i.i

cleanup.thread74.i.i:                             ; preds = %copy_to_user.exit.i54.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @release_sock(ptr noundef %sk) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %a.i.i) #9
  br label %mptcp_getsockopt_subflow_addrs.exit.i

cleanup.thread.i58.i:                             ; preds = %copy_to_user.exit.i54.i
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %54, align 4
  %add.ptr19.i55.i = getelementptr i8, ptr %addrptr.087.i.i, i32 %120
  %add.i56.i = add i32 %120, %copied.090.i.i
  %sub.i57.i = sub i32 %len.089.i.i, %120
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %a.i.i) #9
  br label %cleanup23.i64.i

cleanup23.i64.i:                                  ; preds = %cleanup.thread.i58.i, %land.lhs.true.i35.i.cleanup23.i64.i_crit_edge, %for.body.i33.i.cleanup23.i64.i_crit_edge
  %addrptr.3.i.i = phi ptr [ %addrptr.087.i.i, %land.lhs.true.i35.i.cleanup23.i64.i_crit_edge ], [ %addrptr.087.i.i, %for.body.i33.i.cleanup23.i64.i_crit_edge ], [ %add.ptr19.i55.i, %cleanup.thread.i58.i ]
  %len.3.i60.i = phi i32 [ %len.089.i.i, %land.lhs.true.i35.i.cleanup23.i64.i_crit_edge ], [ 0, %for.body.i33.i.cleanup23.i64.i_crit_edge ], [ %sub.i57.i, %cleanup.thread.i58.i ]
  %copied.3.i61.i = phi i32 [ %copied.090.i.i, %land.lhs.true.i35.i.cleanup23.i64.i_crit_edge ], [ %copied.090.i.i, %for.body.i33.i.cleanup23.i64.i_crit_edge ], [ %add.i56.i, %cleanup.thread.i58.i ]
  %121 = ptrtoint ptr %subflow.092.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %subflow.0.i62.i = load ptr, ptr %subflow.092.i.i, align 8
  %cmp8.not.i63.i = icmp eq ptr %subflow.0.i62.i, %conn_list.i27.i
  br i1 %cmp8.not.i63.i, label %cleanup23.i64.i.for.end.i70.i_crit_edge, label %cleanup23.i64.i.for.body.i33.i_crit_edge

cleanup23.i64.i.for.body.i33.i_crit_edge:         ; preds = %cleanup23.i64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i33.i

cleanup23.i64.i.for.end.i70.i_crit_edge:          ; preds = %cleanup23.i64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i70.i

for.end.i70.i:                                    ; preds = %cleanup23.i64.i.for.end.i70.i_crit_edge, %if.end.i28.i.for.end.i70.i_crit_edge
  %copied.0.lcssa.i65.i = phi i32 [ 0, %if.end.i28.i.for.end.i70.i_crit_edge ], [ %copied.3.i61.i, %cleanup23.i64.i.for.end.i70.i_crit_edge ]
  %sfcount.0.lcssa.i66.i = phi i32 [ 0, %if.end.i28.i.for.end.i70.i_crit_edge ], [ %inc.i31.i, %cleanup23.i64.i.for.end.i70.i_crit_edge ]
  call void @release_sock(ptr noundef %sk) #9
  %122 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %sfcount.0.lcssa.i66.i, ptr %53, align 4
  %call31.i67.i = call fastcc i32 @mptcp_put_subflow_data(ptr noundef nonnull %sfd.i24.i, ptr noundef %optval, i32 noundef %copied.0.lcssa.i65.i, ptr noundef %option) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i67.i)
  %tobool32.not.i68.i = icmp eq i32 %call31.i67.i, 0
  %.63.i69.i = select i1 %tobool32.not.i68.i, i32 0, i32 -14
  br label %mptcp_getsockopt_subflow_addrs.exit.i

mptcp_getsockopt_subflow_addrs.exit.i:            ; preds = %for.end.i70.i, %cleanup.thread74.i.i, %if.then3.i.i.i40.i, %sw.bb3.i53.mptcp_getsockopt_subflow_addrs.exit.i_crit_edge
  %retval.4.i71.i = phi i32 [ %call.i25.i, %sw.bb3.i53.mptcp_getsockopt_subflow_addrs.exit.i_crit_edge ], [ %.63.i69.i, %for.end.i70.i ], [ -14, %if.then3.i.i.i40.i ], [ -14, %cleanup.thread74.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sfd.i24.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mptcp_getsockopt_subflow_addrs.exit.i, %mptcp_getsockopt_tcpinfo.exit.i, %mptcp_getsockopt_info.exit.i, %if.then17.cleanup_crit_edge, %sw.bb8.i, %sw.bb3.i, %sw.bb1.i, %mptcp_getsockopt_first_sf_only.exit.i, %if.then13.cleanup_crit_edge, %sw.bb.i, %if.then9.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then6
  %retval.0 = phi i32 [ %call7, %if.then6 ], [ -95, %if.end8.cleanup_crit_edge ], [ %call1.i, %sw.bb.i ], [ -95, %if.then9.cleanup_crit_edge ], [ %call13.i, %sw.bb8.i ], [ %call7.i, %sw.bb3.i ], [ %call2.i, %sw.bb1.i ], [ %ret.0.i.i, %mptcp_getsockopt_first_sf_only.exit.i ], [ -95, %if.then13.cleanup_crit_edge ], [ %retval.4.i71.i, %mptcp_getsockopt_subflow_addrs.exit.i ], [ %retval.4.i.i, %mptcp_getsockopt_tcpinfo.exit.i ], [ %retval.0.i.i, %mptcp_getsockopt_info.exit.i ], [ -95, %if.then17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_sockopt_sync(ptr noundef %msk, ptr noundef %ssk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.msk_owned_by_me.exit_crit_edge

entry.msk_owned_by_me.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %msk_owned_by_me.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.msk_owned_by_me.exit_crit_edge

lockdep_sock_is_held.exit.i.i.msk_owned_by_me.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msk_owned_by_me.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.msk_owned_by_me.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.msk_owned_by_me.exit_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msk_owned_by_me.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.msk_owned_by_me.exit_crit_edge, label %if.then.i.i, !prof !41

land.rhs3.i.i.msk_owned_by_me.exit_crit_edge:     ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msk_owned_by_me.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1750, i32 noundef 9, ptr noundef null) #9
  br label %msk_owned_by_me.exit

msk_owned_by_me.exit:                             ; preds = %if.then.i.i, %land.rhs3.i.i.msk_owned_by_me.exit_crit_edge, %land.rhs.i.i.msk_owned_by_me.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.msk_owned_by_me.exit_crit_edge, %entry.msk_owned_by_me.exit_crit_edge
  %setsockopt_seq = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %setsockopt_seq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %setsockopt_seq, align 8
  %setsockopt_seq1 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 42
  %5 = ptrtoint ptr %setsockopt_seq1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %setsockopt_seq1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp eq i32 %4, %6
  br i1 %cmp.not, label %msk_owned_by_me.exit.if.end_crit_edge, label %if.then

msk_owned_by_me.exit.if.end_crit_edge:            ; preds = %msk_owned_by_me.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %msk_owned_by_me.exit
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 4, i32 3
  %7 = tail call ptr @llvm.returnaddress(i32 0) #9
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %8) #9
  %call.i.i = tail call zeroext i1 @__lock_sock_fast(ptr noundef %ssk) #9
  tail call fastcc void @sync_socket_options(ptr noundef %msk, ptr noundef %ssk) #9
  br i1 %call.i.i, label %if.then.i.i9, label %if.else.i.i

if.then.i.i9:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @release_sock(ptr noundef %ssk) #9
  br label %__mptcp_sockopt_sync.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sk_lock.i.i = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 4
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %8) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %sk_lock.i.i) #9
  br label %__mptcp_sockopt_sync.exit

__mptcp_sockopt_sync.exit:                        ; preds = %if.else.i.i, %if.then.i.i9
  %9 = ptrtoint ptr %setsockopt_seq1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %setsockopt_seq1, align 8
  %11 = ptrtoint ptr %setsockopt_seq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %setsockopt_seq, align 8
  br label %if.end

if.end:                                           ; preds = %__mptcp_sockopt_sync.exit, %msk_owned_by_me.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_sockopt_sync_locked(ptr noundef %msk, ptr noundef %ssk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.msk_owned_by_me.exit_crit_edge

entry.msk_owned_by_me.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %msk_owned_by_me.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.msk_owned_by_me.exit_crit_edge

lockdep_sock_is_held.exit.i.i.msk_owned_by_me.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msk_owned_by_me.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.msk_owned_by_me.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.msk_owned_by_me.exit_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msk_owned_by_me.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.msk_owned_by_me.exit_crit_edge, label %if.then.i.i, !prof !41

land.rhs3.i.i.msk_owned_by_me.exit_crit_edge:     ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msk_owned_by_me.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1750, i32 noundef 9, ptr noundef null) #9
  br label %msk_owned_by_me.exit

msk_owned_by_me.exit:                             ; preds = %if.then.i.i, %land.rhs3.i.i.msk_owned_by_me.exit_crit_edge, %land.rhs.i.i.msk_owned_by_me.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.msk_owned_by_me.exit_crit_edge, %entry.msk_owned_by_me.exit_crit_edge
  %setsockopt_seq = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %setsockopt_seq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %setsockopt_seq, align 8
  %setsockopt_seq1 = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 42
  %5 = ptrtoint ptr %setsockopt_seq1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %setsockopt_seq1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp eq i32 %4, %6
  br i1 %cmp.not, label %msk_owned_by_me.exit.if.end_crit_edge, label %if.then

msk_owned_by_me.exit.if.end_crit_edge:            ; preds = %msk_owned_by_me.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %msk_owned_by_me.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sync_socket_options(ptr noundef %msk, ptr noundef %ssk)
  %7 = ptrtoint ptr %setsockopt_seq1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %setsockopt_seq1, align 8
  %9 = ptrtoint ptr %setsockopt_seq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %setsockopt_seq, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %msk_owned_by_me.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sync_socket_options(ptr noundef %msk, ptr noundef %ssk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 8
  %0 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_prot, align 8
  %keepalive = getelementptr inbounds %struct.proto, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %keepalive to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %keepalive, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %7 = lshr i32 %6, 3
  %.lobit = and i32 %7, 1
  tail call void %3(ptr noundef %ssk, i32 noundef %.lobit) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then, %entry.if.end8_crit_edge
  %sk_priority = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 33
  %8 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sk_priority, align 4
  %sk_priority9 = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 33
  %10 = ptrtoint ptr %sk_priority9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sk_priority9, align 4
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 6
  %11 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %skc_bound_dev_if, align 4
  %skc_bound_dev_if12 = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 6
  %13 = ptrtoint ptr %skc_bound_dev_if12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %skc_bound_dev_if12, align 4
  %14 = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 18
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %17 = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 18
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %17, align 8
  %tos = getelementptr inbounds %struct.inet_sock, ptr %msk, i32 0, i32 8
  %19 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tos, align 4
  %conv = zext i8 %20 to i32
  tail call void @__ip_sock_set_tos(ptr noundef %ssk, i32 noundef %conv) #9
  %sk_userlocks = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 43
  %21 = ptrtoint ptr %sk_userlocks to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %sk_userlocks, align 8
  %22 = and i8 %bf.load, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool17.not = icmp eq i8 %22, 0
  br i1 %tobool17.not, label %if.end8.if.end64_crit_edge, label %if.then18

if.end8.if.end64_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then18:                                        ; preds = %if.end8
  %sk_userlocks24 = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 43
  %23 = ptrtoint ptr %sk_userlocks24 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load25 = load i8, ptr %sk_userlocks24, align 8
  %bf.clear26 = and i8 %bf.load25, 15
  %or164 = or i8 %bf.clear26, %22
  %bf.clear30 = and i8 %bf.load25, -16
  %bf.set = or i8 %or164, %bf.clear30
  store i8 %bf.set, ptr %sk_userlocks24, align 8
  %24 = ptrtoint ptr %sk_userlocks to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load32 = load i8, ptr %sk_userlocks, align 8
  %25 = and i8 %bf.load32, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool36.not = icmp eq i8 %25, 0
  br i1 %tobool36.not, label %if.then18.if.end45_crit_edge, label %do.body39

if.then18.if.end45_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

do.body39:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 21
  %26 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sk_sndbuf, align 4
  %sk_sndbuf40 = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 21
  %28 = ptrtoint ptr %sk_sndbuf40 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 %27, ptr %sk_sndbuf40, align 4
  br label %if.end45

if.end45:                                         ; preds = %do.body39, %if.then18.if.end45_crit_edge
  %29 = ptrtoint ptr %sk_userlocks to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load47 = load i8, ptr %sk_userlocks, align 8
  %30 = and i8 %bf.load47, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool51.not = icmp eq i8 %30, 0
  br i1 %tobool51.not, label %if.end45.if.end64_crit_edge, label %do.body57

if.end45.if.end64_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

do.body57:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 15
  %31 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sk_rcvbuf, align 8
  %sk_rcvbuf58 = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 15
  %33 = ptrtoint ptr %sk_rcvbuf58 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 %32, ptr %sk_rcvbuf58, align 8
  br label %if.end64

if.end64:                                         ; preds = %do.body57, %if.end45.if.end64_crit_edge, %if.end8.if.end64_crit_edge
  %34 = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 13
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %37 = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i165.not = icmp eq i32 %37, 0
  br i1 %tobool.i165.not, label %if.else68, label %if.then66

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %sk_lingertime = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 48
  %38 = ptrtoint ptr %sk_lingertime to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sk_lingertime, align 8
  %sk_lingertime67 = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 48
  %40 = ptrtoint ptr %sk_lingertime67 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %sk_lingertime67, align 8
  %41 = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 13
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %or.i.i = or i32 %43, 16
  store i32 %or.i.i, ptr %41, align 4
  br label %if.end69

if.else68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %44 = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 13
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %and.i.i = and i32 %46, -17
  store i32 %and.i.i, ptr %44, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %if.then66
  %sk_mark = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 34
  %47 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sk_mark, align 8
  %sk_mark70 = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 34
  %49 = ptrtoint ptr %sk_mark70 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sk_mark70, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp.not = icmp eq i32 %48, %50
  br i1 %cmp.not, label %if.end69.if.end75_crit_edge, label %if.then72

if.end69.if.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %sk_mark70 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %48, ptr %sk_mark70, align 8
  %skc_tx_queue_mapping.i.i.i = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 16
  %52 = ptrtoint ptr %skc_tx_queue_mapping.i.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 -1, ptr %skc_tx_queue_mapping.i.i.i, align 4
  %sk_dst_pending_confirm.i.i = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 29
  %53 = ptrtoint ptr %sk_dst_pending_confirm.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %sk_dst_pending_confirm.i.i, align 8
  %sk_dst_cache.i.i = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_dst_cache.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @llvm.prefetch.p0(ptr %sk_dst_cache.i.i, i32 1, i32 3, i32 1) #9
  %54 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_dst_cache.i.i) #9, !srcloc !51
  %asmresult.i.i.i = extractvalue { i32, i32 } %54, 0
  %55 = inttoptr i32 %asmresult.i.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @dst_release(ptr noundef %55) #9
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end69.if.end75_crit_edge
  %56 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %34, align 4
  %58 = and i32 %57, 1024
  %59 = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 13
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %and.i.i.i = and i32 %61, -1025
  %and.i.i.sink.i = or i32 %and.i.i.i, %58
  store i32 %and.i.i.sink.i, ptr %59, align 4
  %icsk_ca_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %msk, i32 0, i32 10
  %62 = ptrtoint ptr %icsk_ca_ops to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %icsk_ca_ops, align 4
  %icsk_ca_ops80 = getelementptr inbounds %struct.inet_connection_sock, ptr %ssk, i32 0, i32 10
  %64 = ptrtoint ptr %icsk_ca_ops80 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %icsk_ca_ops80, align 4
  %cmp81.not = icmp eq ptr %63, %65
  br i1 %cmp81.not, label %if.end75.if.end85_crit_edge, label %if.then83

if.end75.if.end85_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then83:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %ca_name = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 43
  %call84 = tail call i32 @tcp_set_congestion_control(ptr noundef %ssk, ptr noundef %ca_name, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end75.if.end85_crit_edge
  %cork = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 29
  %66 = ptrtoint ptr %cork to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load86 = load i8, ptr %cork, align 8
  %67 = and i8 %bf.load86, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool88 = icmp ne i8 %67, 0
  tail call void @__tcp_sock_set_cork(ptr noundef %ssk, i1 noundef zeroext %tobool88) #9
  %68 = ptrtoint ptr %cork to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load90 = load i8, ptr %cork, align 8
  %69 = and i8 %bf.load90, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool93 = icmp ne i8 %69, 0
  tail call void @__tcp_sock_set_nodelay(ptr noundef %ssk, i1 noundef zeroext %tobool93) #9
  %transparent = getelementptr inbounds %struct.inet_sock, ptr %msk, i32 0, i32 12
  %70 = ptrtoint ptr %transparent to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load97 = load i16, ptr %transparent, align 8
  %transparent101 = getelementptr inbounds %struct.inet_sock, ptr %ssk, i32 0, i32 12
  %71 = and i16 %bf.load97, 1024
  %72 = ptrtoint ptr %transparent101 to i32
  call void @__asan_load2_noabort(i32 %72)
  %bf.load102 = load i16, ptr %transparent101, align 8
  %bf.clear104 = and i16 %bf.load102, -1025
  %bf.set105 = or i16 %bf.clear104, %71
  store i16 %bf.set105, ptr %transparent101, align 8
  %bf.load107 = load i16, ptr %transparent, align 8
  %73 = and i16 %bf.load107, 8192
  %bf.clear116 = and i16 %bf.set105, -8193
  %bf.set117 = or i16 %bf.clear116, %73
  store i16 %bf.set117, ptr %transparent101, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__mptcp_nmpc_socket(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mptcp_get_int_option([2 x i32] %optval.coerce, i32 noundef %optlen, ptr noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp = icmp ult i32 %optlen, 4
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %0 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #9
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i, label %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge:      ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i.i.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4, i32 -1226833920) #12, !srcloc !40
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !41

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %val, i32 noundef 4) #9
  %2 = tail call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #3, !srcloc !42
  %and.i.i.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #9, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  %call1.i.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %val, ptr noundef %0, i32 noundef 4) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #9, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.return_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !41

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.return_crit_edge:                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i3 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.0.i.i.i.i3
  %add.ptr.i.i.i.i = getelementptr i8, ptr %val, i32 %sub.i.i.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i3)
  br label %return

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %0, align 1
  %8 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %val, align 1
  br label %return

return:                                           ; preds = %if.end.i.i, %if.then11.i.i.i.i, %if.end.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ 0, %if.end.i.i ], [ 0, %if.end.i.i.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mptcp_sol_socket_sync_intval(ptr noundef %msk, i32 noundef %optname, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lock_sock_nested(ptr noundef %msk, i32 noundef 0) #9
  %setsockopt_seq.i = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 42
  %0 = ptrtoint ptr %setsockopt_seq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %setsockopt_seq.i, align 8
  %dep_map.i.i.i.i = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 4, i32 3
  %call.i.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lockdep_sock_is_held.exit.i.i.i, label %entry.sockopt_seq_inc.exit_crit_edge

entry.sockopt_seq_inc.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit

lockdep_sock_is_held.exit.i.i.i:                  ; preds = %entry
  %dep_map2.i.i.i.i = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i)
  %tobool4.i.not.i.i.i = icmp eq i32 %call.i6.i.i.i.i, 0
  br i1 %tobool4.i.not.i.i.i, label %land.rhs.i.i.i, label %lockdep_sock_is_held.exit.i.i.i.sockopt_seq_inc.exit_crit_edge

lockdep_sock_is_held.exit.i.i.i.sockopt_seq_inc.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit

land.rhs.i.i.i:                                   ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i.sockopt_seq_inc.exit_crit_edge, label %land.rhs3.i.i.i

land.rhs.i.i.i.sockopt_seq_inc.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit

land.rhs3.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %.b40.i.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i.i, label %land.rhs3.i.i.i.sockopt_seq_inc.exit_crit_edge, label %if.then.i.i.i, !prof !41

land.rhs3.i.i.i.sockopt_seq_inc.exit_crit_edge:   ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sockopt_seq_inc.exit

if.then.i.i.i:                                    ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1750, i32 noundef 9, ptr noundef null) #9
  br label %sockopt_seq_inc.exit

sockopt_seq_inc.exit:                             ; preds = %if.then.i.i.i, %land.rhs3.i.i.i.sockopt_seq_inc.exit_crit_edge, %land.rhs.i.i.i.sockopt_seq_inc.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.i.sockopt_seq_inc.exit_crit_edge, %entry.sockopt_seq_inc.exit_crit_edge
  %add.i = add i32 %1, 1
  %and.i = and i32 %add.i, 16777215
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %4 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %add1.i = or i32 %shl.i.i, %and.i
  %5 = ptrtoint ptr %setsockopt_seq.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add1.i, ptr %setsockopt_seq.i, align 8
  %conn_list = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 34
  %6 = ptrtoint ptr %conn_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %subflow.0125 = load ptr, ptr %conn_list, align 8
  %cmp.not126 = icmp eq ptr %subflow.0125, %conn_list
  br i1 %cmp.not126, label %sockopt_seq_inc.exit.for.end_crit_edge, label %for.body.lr.ph

sockopt_seq_inc.exit.for.end_crit_edge:           ; preds = %sockopt_seq_inc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %sockopt_seq_inc.exit
  %7 = tail call ptr @llvm.returnaddress(i32 0) #9
  %8 = ptrtoint ptr %7 to i32
  %sk_mark58 = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 34
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 15
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %msk, i32 0, i32 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool10 = icmp ne i32 %val, 0
  %lnot.ext14 = zext i1 %tobool10 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool15.not = icmp eq i32 %val, 0
  %masksel = select i1 %tobool15.not, i32 0, i32 8
  %masksel128 = select i1 %tobool15.not, i32 0, i32 1024
  br label %for.body

for.body:                                         ; preds = %unlock_sock_fast.exit.for.body_crit_edge, %for.body.lr.ph
  %subflow.0127 = phi ptr [ %subflow.0125, %for.body.lr.ph ], [ %subflow.0, %unlock_sock_fast.exit.for.body_crit_edge ]
  %tcp_sock.i = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.0127, i32 0, i32 5
  %9 = ptrtoint ptr %tcp_sock.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tcp_sock.i, align 8
  %dep_map.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 4, i32 3
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %8) #9
  %call.i = tail call zeroext i1 @__lock_sock_fast(ptr noundef %10) #9
  %11 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %optname, label %for.body.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 9, label %sw.bb5
    i32 12, label %sw.bb20
    i32 7, label %for.body.sw.bb21_crit_edge
    i32 32, label %for.body.sw.bb21_crit_edge129
    i32 8, label %for.body.sw.bb32_crit_edge
    i32 33, label %for.body.sw.bb32_crit_edge130
    i32 36, label %do.end56
    i32 49, label %do.body70
  ]

for.body.sw.bb32_crit_edge130:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

for.body.sw.bb32_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

for.body.sw.bb21_crit_edge129:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb21

for.body.sw.bb21_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb21

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %12 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 13
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and.i.i.i = and i32 %14, -1025
  %and.i.i.sink.i = or i32 %and.i.i.i, %masksel128
  store i32 %and.i.i.sink.i, ptr %12, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %for.body
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 8
  %15 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skc_prot, align 8
  %keepalive = getelementptr inbounds %struct.proto, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %keepalive to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %keepalive, align 4
  %tobool6.not = icmp eq ptr %18, null
  br i1 %tobool6.not, label %sw.bb5.if.end_crit_edge, label %if.then

sw.bb5.if.end_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %18(ptr noundef %10, i32 noundef %lnot.ext14) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb5.if.end_crit_edge
  %19 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 13
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %and.i.i.i118 = and i32 %21, -9
  %and.i.i.sink.i120 = or i32 %and.i.i.i118, %masksel
  store i32 %and.i.i.sink.i120, ptr %19, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sk_priority = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 33
  %22 = ptrtoint ptr %sk_priority to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %val, ptr %sk_priority, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %for.body.sw.bb21_crit_edge, %for.body.sw.bb21_crit_edge129
  %sk_userlocks = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 43
  %23 = ptrtoint ptr %sk_userlocks to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %sk_userlocks, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, ptr %sk_userlocks, align 8
  %24 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sk_sndbuf, align 4
  %sk_sndbuf27 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 21
  %26 = ptrtoint ptr %sk_sndbuf27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %25, ptr %sk_sndbuf27, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %for.body.sw.bb32_crit_edge, %for.body.sw.bb32_crit_edge130
  %sk_userlocks33 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 43
  %27 = ptrtoint ptr %sk_userlocks33 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load34 = load i8, ptr %sk_userlocks33, align 8
  %bf.set42 = or i8 %bf.load34, 2
  store i8 %bf.set42, ptr %sk_userlocks33, align 8
  %28 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sk_rcvbuf, align 8
  %sk_rcvbuf48 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 15
  %30 = ptrtoint ptr %sk_rcvbuf48 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %29, ptr %sk_rcvbuf48, align 8
  br label %sw.epilog

do.end56:                                         ; preds = %for.body
  %sk_mark = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 34
  %31 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %sk_mark, align 8
  %33 = ptrtoint ptr %sk_mark58 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sk_mark58, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp59.not = icmp eq i32 %32, %34
  br i1 %cmp59.not, label %do.end56.sw.epilog_crit_edge, label %if.then61

do.end56.sw.epilog_crit_edge:                     ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then61:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %sk_mark to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %sk_mark, align 8
  %skc_tx_queue_mapping.i.i.i = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 16
  %36 = ptrtoint ptr %skc_tx_queue_mapping.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %skc_tx_queue_mapping.i.i.i, align 4
  %sk_dst_pending_confirm.i.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 29
  %37 = ptrtoint ptr %sk_dst_pending_confirm.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %sk_dst_pending_confirm.i.i, align 8
  %sk_dst_cache.i.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_dst_cache.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @llvm.prefetch.p0(ptr %sk_dst_cache.i.i, i32 1, i32 3, i32 1) #9
  %38 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_dst_cache.i.i) #9, !srcloc !51
  %asmresult.i.i.i = extractvalue { i32, i32 } %38, 0
  %39 = inttoptr i32 %asmresult.i.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @dst_release(ptr noundef %39) #9
  br label %sw.epilog

do.body70:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %40 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 18
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 %val, ptr %40, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body70, %if.then61, %do.end56.sw.epilog_crit_edge, %sw.bb32, %sw.bb21, %sw.bb20, %if.end, %sw.bb, %for.body.sw.epilog_crit_edge
  %42 = ptrtoint ptr %setsockopt_seq.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %setsockopt_seq.i, align 8
  %setsockopt_seq76 = getelementptr inbounds %struct.mptcp_subflow_context, ptr %subflow.0127, i32 0, i32 3
  %44 = ptrtoint ptr %setsockopt_seq76 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %setsockopt_seq76, align 8
  br i1 %call.i, label %if.then.i122, label %if.else.i124

if.then.i122:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @release_sock(ptr noundef %10) #9
  br label %unlock_sock_fast.exit

if.else.i124:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 4
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %8) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %sk_lock.i) #9
  br label %unlock_sock_fast.exit

unlock_sock_fast.exit:                            ; preds = %if.else.i124, %if.then.i122
  %45 = ptrtoint ptr %subflow.0127 to i32
  call void @__asan_load4_noabort(i32 %45)
  %subflow.0 = load ptr, ptr %subflow.0127, align 8
  %cmp.not = icmp eq ptr %subflow.0, %conn_list
  br i1 %cmp.not, label %unlock_sock_fast.exit.for.end_crit_edge, label %unlock_sock_fast.exit.for.body_crit_edge

unlock_sock_fast.exit.for.body_crit_edge:         ; preds = %unlock_sock_fast.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

unlock_sock_fast.exit.for.end_crit_edge:          ; preds = %unlock_sock_fast.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %unlock_sock_fast.exit.for.end_crit_edge, %sockopt_seq_inc.exit.for.end_crit_edge
  tail call void @release_sock(ptr noundef %msk) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_set_timestamp(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_set_timestamping(ptr noundef, i32 noundef, [2 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ip_sock_set_tos(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_set_congestion_control(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tcp_sock_set_cork(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_check_and_set_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tcp_sock_set_nodelay(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__lock_sock_fast(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mptcp_put_int_option(ptr noundef %optval, ptr noundef %optlen, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %val.addr = alloca i32, align 4
  %ucval = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %val.addr, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1117) #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !42
  %and.i = and i32 %3, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  %4 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #9, !srcloc !53
  %asmresult = extractvalue { i32, i32 } %4, 0
  %asmresult1 = extractvalue { i32, i32 } %4, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #9, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup54_crit_edge

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup54

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1)
  %cmp = icmp slt i32 %asmresult1, 0
  br i1 %cmp, label %if.end.cleanup54_crit_edge, label %if.end4

if.end.cleanup54_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup54

if.end4:                                          ; preds = %if.end
  %5 = add nsw i32 %asmresult1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %land.lhs.true7, label %if.end4.if.else_crit_edge

if.end4.if.else_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true7:                                   ; preds = %if.end4
  %7 = ptrtoint ptr %val.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %8)
  %9 = icmp ult i32 %8, 256
  br i1 %9, label %if.then11, label %land.lhs.true7.if.else_crit_edge

land.lhs.true7.if.else_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then11:                                        ; preds = %land.lhs.true7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ucval) #9
  %conv = trunc i32 %8 to i8
  %10 = ptrtoint ptr %ucval to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %ucval, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1126) #9
  %11 = tail call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i2 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i2 to ptr
  %cpu_domain.i.i3 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i3) #3, !srcloc !42
  %and.i4 = and i32 %13, -13
  %or.i5 = or i32 %and.i4, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i5) #9, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  %14 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 1, i32 -1226833921) #9, !srcloc !54
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #9, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool21.not = icmp eq i32 %14, 0
  br i1 %tobool21.not, label %if.end8.i.i, label %cleanup54.critedge

if.end8.i.i:                                      ; preds = %if.then11
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end8.i.i.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

if.end8.i.i.copy_to_user.exit.thread_crit_edge:   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %if.end8.i.i
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 1, i32 -1226833920) #12, !srcloc !48
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %if.end.i.i.copy_to_user.exit.thread_crit_edge, %if.end8.i.i.copy_to_user.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ucval) #9
  br label %cleanup54

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ucval, i32 noundef 1) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %ucval, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool25.not = icmp eq i32 %call.i12.i.i, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ucval) #9
  br i1 %tobool25.not, label %copy_to_user.exit.if.end53_crit_edge, label %copy_to_user.exit.cleanup54_crit_edge

copy_to_user.exit.cleanup54_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup54

copy_to_user.exit.if.end53_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.else:                                          ; preds = %land.lhs.true7.if.else_crit_edge, %if.end4.if.else_crit_edge
  %16 = tail call i32 @llvm.umin.i32(i32 %asmresult1, i32 4)
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1132) #9
  %17 = tail call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i6 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i6 to ptr
  %cpu_domain.i.i7 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i7) #3, !srcloc !42
  %and.i8 = and i32 %19, -13
  %or.i9 = or i32 %and.i8, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i9) #9, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  %20 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %16, i32 -1226833921) #9, !srcloc !55
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #9, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool46.not = icmp eq i32 %20, 0
  br i1 %tobool46.not, label %if.then.i.i.i, label %if.else.cleanup54_crit_edge

if.else.cleanup54_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup54

if.then.i.i.i:                                    ; preds = %if.else
  call void @__check_object_size(ptr noundef nonnull %val.addr, i32 noundef %16, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #9
  %call.i.i14 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i14, label %if.then.i.i.i.copy_to_user.exit22_crit_edge, label %if.end.i.i17

if.then.i.i.i.copy_to_user.exit22_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit22

if.end.i.i17:                                     ; preds = %if.then.i.i.i
  %21 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %16, i32 -1226833920) #12, !srcloc !48
  %asmresult.i.i15 = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i15)
  %cmp.i6.i16 = icmp eq i32 %asmresult.i.i15, 0
  br i1 %cmp.i6.i16, label %if.then2.i.i20, label %if.end.i.i17.copy_to_user.exit22_crit_edge

if.end.i.i17.copy_to_user.exit22_crit_edge:       ; preds = %if.end.i.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit22

if.then2.i.i20:                                   ; preds = %if.end.i.i17
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i18 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val.addr, i32 noundef %16) #9
  %call.i12.i.i19 = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %val.addr, i32 noundef %16) #9
  br label %copy_to_user.exit22

copy_to_user.exit22:                              ; preds = %if.then2.i.i20, %if.end.i.i17.copy_to_user.exit22_crit_edge, %if.then.i.i.i.copy_to_user.exit22_crit_edge
  %n.addr.0.i21 = phi i32 [ %16, %if.then.i.i.i.copy_to_user.exit22_crit_edge ], [ %call.i12.i.i19, %if.then2.i.i20 ], [ %16, %if.end.i.i17.copy_to_user.exit22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i21)
  %tobool50.not = icmp eq i32 %n.addr.0.i21, 0
  br i1 %tobool50.not, label %copy_to_user.exit22.if.end53_crit_edge, label %copy_to_user.exit22.cleanup54_crit_edge

copy_to_user.exit22.cleanup54_crit_edge:          ; preds = %copy_to_user.exit22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup54

copy_to_user.exit22.if.end53_crit_edge:           ; preds = %copy_to_user.exit22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.end53:                                         ; preds = %copy_to_user.exit22.if.end53_crit_edge, %copy_to_user.exit.if.end53_crit_edge
  br label %cleanup54

cleanup54.critedge:                               ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ucval) #9
  br label %cleanup54

cleanup54:                                        ; preds = %cleanup54.critedge, %if.end53, %copy_to_user.exit22.cleanup54_crit_edge, %if.else.cleanup54_crit_edge, %copy_to_user.exit.cleanup54_crit_edge, %copy_to_user.exit.thread, %if.end.cleanup54_crit_edge, %entry.cleanup54_crit_edge
  %retval.1 = phi i32 [ 0, %if.end53 ], [ -14, %copy_to_user.exit.cleanup54_crit_edge ], [ -14, %entry.cleanup54_crit_edge ], [ -22, %if.end.cleanup54_crit_edge ], [ -14, %cleanup54.critedge ], [ -14, %if.else.cleanup54_crit_edge ], [ -14, %copy_to_user.exit22.cleanup54_crit_edge ], [ -14, %copy_to_user.exit.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mptcp_get_subflow_data(ptr noundef %sfd, ptr noundef %optval, ptr noundef %optlen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 935) #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !42
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #9, !srcloc !56
  %asmresult = extractvalue { i32, i32 } %3, 0
  %asmresult1 = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #9, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %asmresult1)
  %cmp = icmp slt i32 %asmresult1, 16
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %4 = call ptr @memset(ptr %sfd, i32 0, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end4.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end4.if.then11.i.i_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end4
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 16, i32 -1226833920) #12, !srcloc !40
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !41

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sfd, i32 noundef 16) #9
  %6 = tail call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !42
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %sfd, ptr noundef %optval, i32 noundef 16) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #9, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end10, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !41

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end4.if.then11.i.i_crit_edge
  %res.0.i.i44 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %if.end4.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i44
  %add.ptr.i.i = getelementptr i8, ptr %sfd, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i44)
  br label %cleanup

if.end10:                                         ; preds = %if.end.i.i
  %10 = ptrtoint ptr %sfd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sfd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp11 = icmp slt i32 %11, 0
  br i1 %cmp11, label %if.end10.cleanup_crit_edge, label %lor.lhs.false

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end10
  %size_user = getelementptr inbounds %struct.mptcp_subflow_data, ptr %sfd, i32 0, i32 3
  %12 = ptrtoint ptr %size_user to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size_user, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp12 = icmp slt i32 %13, 0
  br i1 %cmp12, label %lor.lhs.false.cleanup_crit_edge, label %if.end14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp16 = icmp ult i32 %11, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult1, i32 %11)
  %cmp19 = icmp ult i32 %asmresult1, %11
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp19
  br i1 %or.cond, label %if.end14.cleanup_crit_edge, label %if.end21

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %num_subflows = getelementptr inbounds %struct.mptcp_subflow_data, ptr %sfd, i32 0, i32 1
  %14 = ptrtoint ptr %num_subflows to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_subflows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool22.not = icmp eq i32 %15, 0
  br i1 %tobool22.not, label %lor.lhs.false23, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false23:                                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %size_kernel = getelementptr inbounds %struct.mptcp_subflow_data, ptr %sfd, i32 0, i32 2
  %16 = ptrtoint ptr %size_kernel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size_kernel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool24.not = icmp eq i32 %17, 0
  %sub = sub nsw i32 %asmresult1, %11
  %spec.select = select i1 %tobool24.not, i32 %sub, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false23, %if.end21.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then11.i.i, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false23 ], [ -14, %if.then11.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_get_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mptcp_put_subflow_data(ptr noundef %sfd, ptr noundef %optval, i32 noundef %copied, ptr noundef %optlen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sfd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sfd, align 8
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied)
  %tobool.not = icmp eq i32 %copied, 0
  %add = add i32 %1, %copied
  %spec.select = select i1 %tobool.not, i32 %2, i32 %add
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 921) #9
  %3 = tail call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !42
  %and.i = and i32 %5, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  %6 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %spec.select, i32 -1226833921) #9, !srcloc !57
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #9, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.then.i.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  tail call void @__check_object_size(ptr noundef %sfd, i32 noundef %2, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %2, i32 -1226833920) #12, !srcloc !48
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sfd, i32 noundef %2) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef %sfd, i32 noundef %2) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %2, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %2, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool8.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select21 = select i1 %tobool8.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ %spec.select21, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !11, !12, !14, !15, !17, !19, !21, !22, !24, !26}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mptcp/sockopt.c", i32 794, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mptcp_setsockopt.__UNIQUE_ID_ddebug621, !1, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab_mptcp_diag_fill_info, !8, !"__ksymtab_mptcp_diag_fill_info", i1 false, i1 false}
!8 = !{!"../net/mptcp/sockopt.c", i32 886, i32 1}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/mptcp/sockopt.c", i32 1195, i32 2}
!11 = !{ptr @mptcp_getsockopt.__UNIQUE_ID_ddebug645, !10, !"__UNIQUE_ID_ddebug645", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/net/sock.h", i32 1750, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../net/mptcp/sockopt.c", i32 709, i32 3}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../net/mptcp/sockopt.c", i32 1041, i32 7}
!26 = distinct !{null, !27, !"tx_rx_locks", i1 false, i1 false}
!27 = !{!"../net/mptcp/sockopt.c", i32 1220, i32 28}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2148721696, i64 2148721701, i64 2148721714, i64 2148721758, i64 2148721792, i64 2148721813}
!39 = !{!"auto-init"}
!40 = !{i64 2153766773, i64 2153766798}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 6262328}
!43 = !{i64 6262525}
!44 = !{i64 2153747758}
!45 = !{i8 0, i8 2}
!46 = !{i64 2158949218, i64 2158949498, i64 2158949832, i64 2158950166}
!47 = !{i64 2158960748, i64 2158961028, i64 2158961362, i64 2158961696}
!48 = !{i64 2153767454, i64 2153767479}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i64 2156756112}
!51 = !{i64 746649, i64 746666, i64 746690, i64 746716, i64 746734}
!52 = !{i64 2156756457}
!53 = !{i64 2159015732, i64 2159016012, i64 2159016346, i64 2159016680}
!54 = !{i64 2159025204, i64 2159025484, i64 2159025818, i64 2159026152}
!55 = !{i64 2159035873, i64 2159036153, i64 2159036487, i64 2159036821}
!56 = !{i64 2158982933, i64 2158983213, i64 2158983547, i64 2158983881}
!57 = !{i64 2158971448, i64 2158971728, i64 2158972062, i64 2158972396}
