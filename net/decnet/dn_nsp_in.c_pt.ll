; ModuleID = '/llk/IR_all_yes/net/decnet/dn_nsp_in.c_pt.bc'
source_filename = "../net/decnet/dn_nsp_in.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.static_key = type { %struct.atomic_t, %union.anon.92 }
%union.anon.92 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.186 = type { i16, ptr }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.sockaddr_dn = type { i16, i8, i8, i16, [16 x i8], %struct.dn_naddr }
%struct.dn_naddr = type { i16, [2 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.165, %union.anon.166, [48 x i8], %union.anon.167, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.169, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%union.anon.165 = type { ptr }
%union.anon.166 = type { i64 }
%union.anon.167 = type { %struct.anon.168 }
%struct.anon.168 = type { i32, ptr }
%union.anon.169 = type { %struct.anon.170 }
%struct.anon.170 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.171, i32, i32, i32, i16, i16, %union.anon.173, i32, %union.anon.174, %union.anon.175, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.171 = type { i32 }
%union.anon.173 = type { i32 }
%union.anon.174 = type { i32 }
%union.anon.175 = type { i16 }
%struct.nsp_conn_init_msg = type <{ i8, i16, i16, i8, i8, i16 }>
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.146, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.147, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.148, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.134, %union.anon.136, %union.anon.137, i16, i8, i8, i32, %union.anon.139, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.142, [0 x i32], %union.anon.143, i16, i16, %union.anon.144, %struct.refcount_struct, [0 x i32], %union.anon.145 }
%union.anon.134 = type { i64 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i32 }
%union.anon.139 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { %struct.hlist_node }
%union.anon.144 = type { i32 }
%union.anon.145 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.146 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.147 = type { ptr }
%union.anon.148 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.dn_scp = type { i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i32, %struct.optdata_dn, %struct.optdata_dn, %struct.optdata_dn, %struct.optdata_dn, %struct.accessdata_dn, %struct.sockaddr_dn, %struct.sockaddr_dn, i32, i32, i32, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, i32, i32, i32, ptr, i32, ptr }
%struct.optdata_dn = type { i16, i16, [16 x i8] }
%struct.accessdata_dn = type { i8, [40 x i8], i8, [40 x i8], i8, [40 x i8] }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.141, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.141 = type { ptr }

@init_net = external dso_local global %struct.net, align 128
@nf_hooks_needed = external dso_local global [13 x [7 x %struct.static_key]], align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nf_hook.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@decnet_debug_level = external dso_local local_unnamed_addr global i32, align 4
@dn_nsp_rx_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017dn_nsp_rx: Message type 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dn_nsp_rx_packet\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/decnet/dn_nsp_in.c\00", [41 x i8] zeroinitializer }, align 32
@dn_nsp_rx_packet._entry_ptr = internal global ptr @dn_nsp_rx_packet._entry, section ".printk_index", align 4
@ci_err_table = internal constant { [8 x %struct.anon.186], [32 x i8] } { [8 x %struct.anon.186] [%struct.anon.186 { i16 0, ptr @.str.16 }, %struct.anon.186 { i16 4, ptr @.str.17 }, %struct.anon.186 { i16 4, ptr @.str.18 }, %struct.anon.186 { i16 7, ptr @.str.19 }, %struct.anon.186 { i16 0, ptr @.str.20 }, %struct.anon.186 { i16 0, ptr @.str.21 }, %struct.anon.186 { i16 43, ptr @.str.22 }, %struct.anon.186 { i16 43, ptr @.str.23 }], [32 x i8] zeroinitializer }, align 32
@decnet_log_martians = external dso_local local_unnamed_addr global i32, align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@dn_log_martian._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.12, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\016DECnet: Martian packet (%s) dev=%s src=0x%04hx dst=0x%04hx srcport=0x%04hx dstport=0x%04hx\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dn_log_martian\00", [17 x i8] zeroinitializer }, align 32
@dn_log_martian._entry_ptr = internal global ptr @dn_log_martian._entry, section ".printk_index", align 4
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CI: Truncated message\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CI: Destination username error\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CI: Destination username type\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CI: Source username error\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CI: Truncated at menuver\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CI: Truncated before access or user data\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CI: Access data format error\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CI: User data format error\00", [37 x i8] zeroinitializer }, align 32
@decnet_no_fc_max_cwnd = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 32, i64 96]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 24, i64 104]
@__sancov_gen_cov_switch_values.26 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 9]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 8, i64 6, i64 9, i64 11, i64 12]
@__sancov_gen_cov_switch_values.29 = internal global [7 x i64] [i64 5, i64 8, i64 3, i64 5, i64 6, i64 11, i64 12]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 16, i64 10496, i64 10752]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 48]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.39 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 229, i32 15 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 695, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 723, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 726, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"ci_err_table\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 200, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 77, i32 47 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 79, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 201, i32 19 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 202, i32 19 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 203, i32 19 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 204, i32 19 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 205, i32 19 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 206, i32 19 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 207, i32 19 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [26 x i8] c"../net/decnet/dn_nsp_in.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 208, i32 19 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @dn_log_martian._entry, ptr @dn_log_martian._entry_ptr, ptr @dn_nsp_rx_packet._entry, ptr @dn_nsp_rx_packet._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ci_err_table, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_nsp_rx_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_err_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_log_martian._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dn_nsp_rx(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %call.i = tail call fastcc i32 @nf_hook(ptr noundef %skb, ptr noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %entry.NF_HOOK.exit_crit_edge

entry.NF_HOOK.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %NF_HOOK.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 @dn_nsp_rx_packet(ptr noundef nonnull @init_net, ptr noundef null, ptr noundef %skb) #8
  br label %NF_HOOK.exit

NF_HOOK.exit:                                     ; preds = %if.then.i, %entry.NF_HOOK.exit_crit_edge
  %ret.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call.i, %entry.NF_HOOK.exit_crit_edge ]
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_nsp_rx_packet(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk2, ptr noundef %skb) #0 align 64 {
entry:
  %dstaddr.i = alloca %struct.sockaddr_dn, align 2
  %srcaddr.i = alloca %struct.sockaddr_dn, align 2
  %type.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !64

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp3.i = icmp ult i32 %3, 2
  br i1 %cmp3.i, label %if.end.i.free_out_crit_edge, label %pskb_may_pull.exit, !prof !64

if.end.i.free_out_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_out

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 2, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #8
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.free_out_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

pskb_may_pull.exit.free_out_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_out

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %10 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %incdec.ptr = getelementptr i8, ptr %1, i32 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 1
  %nsp_flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %13 = ptrtoint ptr %nsp_flags to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %nsp_flags, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @decnet_debug_level to i32))
  %14 = load i32, ptr @decnet_debug_level, align 4
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %12 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv) #11
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  %15 = ptrtoint ptr %nsp_flags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nsp_flags, align 1
  %conv7 = zext i8 %16 to i32
  %and8 = and i32 %conv7, 131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.free_out_crit_edge

if.end5.free_out_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_out

if.end11:                                         ; preds = %if.end5
  %and14 = and i32 %conv7, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and14)
  %cmp = icmp eq i32 %and14, 8
  br i1 %cmp, label %if.then16, label %if.end11.if.end29_crit_edge

if.end11.if.end29_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then16:                                        ; preds = %if.end11
  %and19 = lshr i32 %conv7, 4
  %17 = and i32 %and19, 7
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %if.then16.if.end29_crit_edge [
    i32 0, label %if.then16.free_out_crit_edge
    i32 7, label %if.then16.free_out_crit_edge178
    i32 5, label %if.then16.free_out_crit_edge179
    i32 1, label %if.then16.sw.bb20_crit_edge
    i32 6, label %if.then16.sw.bb20_crit_edge180
  ]

if.then16.sw.bb20_crit_edge180:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20

if.then16.sw.bb20_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20

if.then16.free_out_crit_edge179:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_out

if.then16.free_out_crit_edge178:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_out

if.then16.free_out_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_out

if.then16.if.end29_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

sw.bb20:                                          ; preds = %if.then16.sw.bb20_crit_edge, %if.then16.sw.bb20_crit_edge180
  %rt_flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %19 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rt_flags, align 4
  %21 = and i8 %20, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool23.not = icmp eq i8 %21, 0
  br i1 %tobool23.not, label %if.end27, label %sw.bb20.free_out_crit_edge, !prof !65

sw.bb20.free_out_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_out

if.end27:                                         ; preds = %sw.bb20
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %dstaddr.i) #8
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %srcaddr.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type.i) #8
  %24 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %type.i, align 1
  %25 = call ptr @memset(ptr %dstaddr.i, i32 0, i32 26)
  %26 = call ptr @memset(ptr %srcaddr.i, i32 0, i32 26)
  %srcaddr2.i = getelementptr inbounds %struct.nsp_conn_init_msg, ptr %23, i32 0, i32 2
  %27 = ptrtoint ptr %srcaddr2.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %srcaddr2.i, align 1
  %src_port.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %src_port.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %src_port.i, align 4
  %dstaddr3.i = getelementptr inbounds %struct.nsp_conn_init_msg, ptr %23, i32 0, i32 1
  %30 = ptrtoint ptr %dstaddr3.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %dstaddr3.i, align 1
  %dst_port.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %32 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %dst_port.i, align 2
  %services.i = getelementptr inbounds %struct.nsp_conn_init_msg, ptr %23, i32 0, i32 3
  %33 = ptrtoint ptr %services.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %services.i, align 1
  %services4.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 10
  %35 = ptrtoint ptr %services4.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %services4.i, align 2
  %info.i = getelementptr inbounds %struct.nsp_conn_init_msg, ptr %23, i32 0, i32 4
  %36 = ptrtoint ptr %info.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %info.i, align 1
  %info5.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 11
  %38 = ptrtoint ptr %info5.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %info5.i, align 1
  %segsize.i = getelementptr inbounds %struct.nsp_conn_init_msg, ptr %23, i32 0, i32 5
  %39 = ptrtoint ptr %segsize.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %segsize.i, align 1
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #8
  %segsize6.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %42 = ptrtoint ptr %segsize6.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %segsize6.i, align 2
  %43 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i.i, align 4
  %45 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i.i = sub i32 %44, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i.i, 9
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end27.if.end.i130_crit_edge, !prof !64

if.end27.if.end.i130_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i130

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %44)
  %cmp3.i.i = icmp ult i32 %44, 9
  br i1 %cmp3.i.i, label %if.end.i.i.err_out.i_crit_edge, label %pskb_may_pull.exit.i, !prof !64

if.end.i.i.err_out.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out.i

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i129 = sub nuw nsw i32 9, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i129) #8
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.err_out.i_crit_edge, label %pskb_may_pull.exit.i.if.end.i130_crit_edge

pskb_may_pull.exit.i.if.end.i130_crit_edge:       ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i130

pskb_may_pull.exit.i.err_out.i_crit_edge:         ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out.i

if.end.i130:                                      ; preds = %pskb_may_pull.exit.i.if.end.i130_crit_edge, %if.end27.if.end.i130_crit_edge
  %call7.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 9) #8
  %47 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len.i.i, align 4
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %call10.i = call i32 @dn_username2sockaddr(ptr noundef %50, i32 noundef %48, ptr noundef nonnull %dstaddr.i, ptr noundef nonnull %type.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i = icmp slt i32 %call10.i, 0
  br i1 %cmp.i, label %if.end.i130.err_out.i_crit_edge, label %if.end12.i

if.end.i130.err_out.i_crit_edge:                  ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out.i

if.end12.i:                                       ; preds = %if.end.i130
  %51 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp14.i131 = icmp ugt i8 %52, 1
  br i1 %cmp14.i131, label %if.end12.i.err_out.i_crit_edge, label %if.end17.i

if.end12.i.err_out.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out.i

if.end17.i:                                       ; preds = %if.end12.i
  %sub.i132 = sub i32 %48, %call10.i
  %add.ptr.i = getelementptr i8, ptr %50, i32 %call10.i
  %call18.i = call i32 @dn_username2sockaddr(ptr noundef %add.ptr.i, i32 noundef %sub.i132, ptr noundef nonnull %srcaddr.i, ptr noundef nonnull %type.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp20.i = icmp slt i32 %call18.i, 0
  br i1 %cmp20.i, label %if.end17.i.err_out.i_crit_edge, label %if.end23.i

if.end17.i.err_out.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out.i

if.end23.i:                                       ; preds = %if.end17.i
  %sub24.i = sub i32 %sub.i132, %call18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub24.i)
  %cmp27.i = icmp slt i32 %sub24.i, 1
  br i1 %cmp27.i, label %if.end23.i.err_out.i_crit_edge, label %if.end30.i

if.end23.i.err_out.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out.i

if.end30.i:                                       ; preds = %if.end23.i
  %add.ptr25.i = getelementptr i8, ptr %add.ptr.i, i32 %call18.i
  %53 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr25.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr25.i, i32 1
  %dec.i = add nsw i32 %sub24.i, -1
  %conv32.i = zext i8 %54 to i32
  %and.i = and i32 %conv32.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp33.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp33.i, i1 false
  br i1 %or.cond.i, label %if.end30.i.err_out.i_crit_edge, label %if.end36.i

if.end30.i.err_out.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out.i

if.end36.i:                                       ; preds = %if.end30.i
  %and39.i = and i32 %conv32.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end36.i.if.end58.i_crit_edge, label %if.then41.i

if.end36.i.if.end58.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.then41.i:                                      ; preds = %if.end36.i
  %55 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %incdec.ptr.i, align 1
  %dec.i.i = add nsw i32 %sub24.i, -2
  %conv.i.i = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 39, i8 %56)
  %cmp.i.i = icmp ugt i8 %56, 39
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i.i, i32 %conv.i.i)
  %cmp5.i.i = icmp sle i32 %dec.i.i, %conv.i.i
  %or.cond178.i = select i1 %cmp.i.i, i1 true, i1 %cmp5.i.i
  br i1 %or.cond178.i, label %if.then41.i.err_out.i_crit_edge, label %if.end45.i

if.then41.i.err_out.i_crit_edge:                  ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out.i

if.end45.i:                                       ; preds = %if.then41.i
  %incdec.ptr.i.i = getelementptr i8, ptr %incdec.ptr.i, i32 1
  %add.ptr.i.i = getelementptr i8, ptr %incdec.ptr.i.i, i32 %conv.i.i
  %57 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %add.ptr.i.i, align 1
  %59 = xor i32 %conv.i.i, -1
  %dec.i115.i = add i32 %dec.i.i, %59
  %conv.i116.i = zext i8 %58 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 39, i8 %58)
  %cmp.i117.i = icmp ugt i8 %58, 39
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i115.i, i32 %conv.i116.i)
  %cmp5.i119.i = icmp sle i32 %dec.i115.i, %conv.i116.i
  %or.cond179.i = select i1 %cmp.i117.i, i1 true, i1 %cmp5.i119.i
  br i1 %or.cond179.i, label %if.end45.i.err_out.i_crit_edge, label %if.end49.i

if.end45.i.err_out.i_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out.i

if.end49.i:                                       ; preds = %if.end45.i
  %incdec.ptr.i114.i = getelementptr i8, ptr %add.ptr.i.i, i32 1
  %add.ptr.i122.i = getelementptr i8, ptr %incdec.ptr.i114.i, i32 %conv.i116.i
  %incdec.ptr.i126.i = getelementptr i8, ptr %add.ptr.i122.i, i32 1
  %60 = ptrtoint ptr %add.ptr.i122.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr.i122.i, align 1
  %62 = xor i32 %conv.i116.i, -1
  %dec.i127.i = add i32 %dec.i115.i, %62
  %conv.i128.i = zext i8 %61 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 39, i8 %61)
  %cmp.i129.i = icmp ugt i8 %61, 39
  br i1 %cmp.i129.i, label %if.end49.i.err_out.i_crit_edge, label %if.end.i132.i

if.end49.i.err_out.i_crit_edge:                   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out.i

if.end.i132.i:                                    ; preds = %if.end49.i
  %and51.i = lshr i8 %54, 1
  %and51.lobit.i = and i8 %and51.i, 1
  %conv4.i.i = zext i8 %and51.lobit.i to i32
  %add.i130.i = add nuw nsw i32 %conv.i128.i, %conv4.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i130.i, i32 %dec.i127.i)
  %cmp5.i131.i = icmp sgt i32 %add.i130.i, %dec.i127.i
  br i1 %cmp5.i131.i, label %if.end.i132.i.err_out.i_crit_edge, label %dn_check_idf.exit137.i

if.end.i132.i.err_out.i_crit_edge:                ; preds = %if.end.i132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out.i

dn_check_idf.exit137.i:                           ; preds = %if.end.i132.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i133.i = sub nsw i32 %dec.i127.i, %conv.i128.i
  %add.ptr.i134.i = getelementptr i8, ptr %incdec.ptr.i126.i, i32 %conv.i128.i
  br label %if.end58.i

if.end58.i:                                       ; preds = %dn_check_idf.exit137.i, %if.end36.i.if.end58.i_crit_edge
  %ptr.3.i = phi ptr [ %incdec.ptr.i, %if.end36.i.if.end58.i_crit_edge ], [ %add.ptr.i134.i, %dn_check_idf.exit137.i ]
  %len.3.i = phi i32 [ %dec.i, %if.end36.i.if.end58.i_crit_edge ], [ %sub.i133.i, %dn_check_idf.exit137.i ]
  %and61.i = and i32 %conv32.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %if.end58.i.if.end68.i_crit_edge, label %if.then63.i

if.end58.i.if.end68.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

if.then63.i:                                      ; preds = %if.end58.i
  %63 = ptrtoint ptr %ptr.3.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ptr.3.i, align 1
  %conv.i140.i = zext i8 %64 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %64)
  %cmp.i141.i = icmp ugt i8 %64, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %len.3.i, i32 %conv.i140.i)
  %cmp5.i142.i = icmp sle i32 %len.3.i, %conv.i140.i
  %or.cond180.i = select i1 %cmp.i141.i, i1 true, i1 %cmp5.i142.i
  br i1 %or.cond180.i, label %if.then63.i.err_out.i_crit_edge, label %if.then63.i.if.end68.i_crit_edge

if.then63.i.if.end68.i_crit_edge:                 ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

if.then63.i.err_out.i_crit_edge:                  ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out.i

if.end68.i:                                       ; preds = %if.then63.i.if.end68.i_crit_edge, %if.end58.i.if.end68.i_crit_edge
  %call69.i = call ptr @dn_sklist_find_listener(ptr noundef nonnull %dstaddr.i) #8
  br label %dn_find_listener.exit

err_out.i:                                        ; preds = %if.then63.i.err_out.i_crit_edge, %if.end.i132.i.err_out.i_crit_edge, %if.end49.i.err_out.i_crit_edge, %if.end45.i.err_out.i_crit_edge, %if.then41.i.err_out.i_crit_edge, %if.end30.i.err_out.i_crit_edge, %if.end23.i.err_out.i_crit_edge, %if.end17.i.err_out.i_crit_edge, %if.end12.i.err_out.i_crit_edge, %if.end.i130.err_out.i_crit_edge, %pskb_may_pull.exit.i.err_out.i_crit_edge, %if.end.i.i.err_out.i_crit_edge
  %err.0.i = phi i32 [ 1, %if.end.i130.err_out.i_crit_edge ], [ 2, %if.end12.i.err_out.i_crit_edge ], [ 3, %if.end17.i.err_out.i_crit_edge ], [ 4, %if.end23.i.err_out.i_crit_edge ], [ 0, %pskb_may_pull.exit.i.err_out.i_crit_edge ], [ 5, %if.end30.i.err_out.i_crit_edge ], [ 0, %if.end.i.i.err_out.i_crit_edge ], [ 6, %if.then41.i.err_out.i_crit_edge ], [ 6, %if.end45.i.err_out.i_crit_edge ], [ 6, %if.end49.i.err_out.i_crit_edge ], [ 6, %if.end.i132.i.err_out.i_crit_edge ], [ 7, %if.then63.i.err_out.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x %struct.anon.186], ptr @ci_err_table, i32 0, i32 %err.0.i
  %text.i = getelementptr [8 x %struct.anon.186], ptr @ci_err_table, i32 0, i32 %err.0.i, i32 1
  %65 = ptrtoint ptr %text.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %text.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @decnet_log_martians to i32))
  %67 = load i32, ptr @decnet_log_martians, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i.i, label %err_out.i.dn_log_martian.exit.i_crit_edge, label %if.then.i.i

err_out.i.dn_log_martian.exit.i_crit_edge:        ; preds = %err_out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_log_martian.exit.i

if.then.i.i:                                      ; preds = %err_out.i
  %68 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %call.i.i = call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then.i.i.dn_log_martian.exit.i_crit_edge, label %do.end.i.i

if.then.i.i.dn_log_martian.exit.i_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_log_martian.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %tobool1.not.i.i = icmp eq ptr %70, null
  %spec.select.i.i = select i1 %tobool1.not.i.i, ptr @.str.13, ptr %70
  %src.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %71 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %src.i.i, align 2
  %73 = call i16 @llvm.bswap.i16(i16 %72) #8
  %conv.i149.i = zext i16 %73 to i32
  %74 = ptrtoint ptr %cb1 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %cb1, align 4
  %76 = call i16 @llvm.bswap.i16(i16 %75) #8
  %conv7.i.i = zext i16 %76 to i32
  %77 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %src_port.i, align 4
  %79 = call i16 @llvm.bswap.i16(i16 %78) #8
  %conv8.i.i = zext i16 %79 to i32
  %80 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %dst_port.i, align 2
  %82 = call i16 @llvm.bswap.i16(i16 %81) #8
  %conv9.i.i = zext i16 %82 to i32
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %66, ptr noundef nonnull %spec.select.i.i, i32 noundef %conv.i149.i, i32 noundef %conv7.i.i, i32 noundef %conv8.i.i, i32 noundef %conv9.i.i) #11
  br label %dn_log_martian.exit.i

dn_log_martian.exit.i:                            ; preds = %do.end.i.i, %if.then.i.i.dn_log_martian.exit.i_crit_edge, %err_out.i.dn_log_martian.exit.i_crit_edge
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx.i, align 4
  br label %dn_find_listener.exit

dn_find_listener.exit:                            ; preds = %dn_log_martian.exit.i, %if.end68.i
  %reason.0 = phi i16 [ %84, %dn_log_martian.exit.i ], [ 41, %if.end68.i ]
  %retval.0.i133 = phi ptr [ null, %dn_log_martian.exit.i ], [ %call69.i, %if.end68.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.i) #8
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %srcaddr.i) #8
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %dstaddr.i) #8
  br label %got_it

if.end29:                                         ; preds = %if.then16.if.end29_crit_edge, %if.end11.if.end29_crit_edge
  %85 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len.i.i, align 4
  %87 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i136 = sub i32 %86, %88
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i136)
  %cmp.not.i137 = icmp ult i32 %sub.i.i136, 3
  br i1 %cmp.not.i137, label %if.end.i139, label %if.end29.if.end32_crit_edge, !prof !64

if.end29.if.end32_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end.i139:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %86)
  %cmp3.i138 = icmp ult i32 %86, 3
  br i1 %cmp3.i138, label %if.end.i139.free_out_crit_edge, label %pskb_may_pull.exit145, !prof !64

if.end.i139.free_out_crit_edge:                   ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_out

pskb_may_pull.exit145:                            ; preds = %if.end.i139
  %sub.i140 = sub nuw nsw i32 3, %sub.i.i136
  %call13.i141 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i140) #8
  %cmp14.i142.not = icmp eq ptr %call13.i141, null
  br i1 %cmp14.i142.not, label %pskb_may_pull.exit145.free_out_crit_edge, label %if.end32thread-pre-split

pskb_may_pull.exit145.free_out_crit_edge:         ; preds = %pskb_may_pull.exit145
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_out

if.end32thread-pre-split:                         ; preds = %pskb_may_pull.exit145
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pr = load i32, ptr %len.i.i, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end32thread-pre-split, %if.end29.if.end32_crit_edge
  %90 = phi i32 [ %.pr, %if.end32thread-pre-split ], [ %86, %if.end29.if.end32_crit_edge ]
  %91 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %incdec.ptr, align 2
  %dst_port = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %93 = ptrtoint ptr %dst_port to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %dst_port, align 2
  %src_port = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %94 = ptrtoint ptr %src_port to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %src_port, align 4
  %95 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i148 = sub i32 %90, %96
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.i.i148)
  %cmp.not.i149 = icmp ult i32 %sub.i.i148, 5
  br i1 %cmp.not.i149, label %if.end.i151, label %if.end32.if.then34_crit_edge, !prof !64

if.end32.if.then34_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.end.i151:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %90)
  %cmp3.i150 = icmp ult i32 %90, 5
  br i1 %cmp3.i150, label %if.end.i151.if.end38_crit_edge, label %pskb_may_pull.exit157, !prof !64

if.end.i151.if.end38_crit_edge:                   ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

pskb_may_pull.exit157:                            ; preds = %if.end.i151
  %sub.i152 = sub nuw nsw i32 5, %sub.i.i148
  %call13.i153 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i152) #8
  %cmp14.i154.not = icmp eq ptr %call13.i153, null
  br i1 %cmp14.i154.not, label %pskb_may_pull.exit157.if.end38_crit_edge, label %pskb_may_pull.exit157.if.then34_crit_edge

pskb_may_pull.exit157.if.then34_crit_edge:        ; preds = %pskb_may_pull.exit157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

pskb_may_pull.exit157.if.end38_crit_edge:         ; preds = %pskb_may_pull.exit157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then34:                                        ; preds = %pskb_may_pull.exit157.if.then34_crit_edge, %if.end32.if.then34_crit_edge
  %add.ptr = getelementptr i8, ptr %1, i32 3
  %97 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %add.ptr, align 2
  %99 = ptrtoint ptr %src_port to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %src_port, align 4
  %call37 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 5) #8
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %pskb_may_pull.exit157.if.end38_crit_edge, %if.end.i151.if.end38_crit_edge
  %rt_flags39 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %100 = ptrtoint ptr %rt_flags39 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %rt_flags39, align 4
  %102 = and i8 %101, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool42.not = icmp eq i8 %102, 0
  br i1 %tobool42.not, label %if.end38.if.end63_crit_edge, label %do.body50, !prof !65

if.end38.if.end63_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

do.body50:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %dst_port to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %dst_port, align 2
  %105 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %src_port, align 4
  store i16 %106, ptr %dst_port, align 2
  store i16 %104, ptr %src_port, align 4
  %107 = ptrtoint ptr %cb1 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %cb1, align 4
  %src = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %109 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %src, align 2
  store i16 %110, ptr %cb1, align 4
  store i16 %108, ptr %src, align 2
  br label %if.end63

if.end63:                                         ; preds = %do.body50, %if.end38.if.end63_crit_edge
  %call64 = tail call ptr @dn_find_by_skb(ptr noundef %skb) #8
  br label %got_it

got_it:                                           ; preds = %if.end63, %dn_find_listener.exit
  %reason.1 = phi i16 [ 41, %if.end63 ], [ %reason.0, %dn_find_listener.exit ]
  %sk.0 = phi ptr [ %call64, %if.end63 ], [ %retval.0.i133, %dn_find_listener.exit ]
  %cmp65.not = icmp eq ptr %sk.0, null
  br i1 %cmp65.not, label %if.end86, label %if.then67

if.then67:                                        ; preds = %got_it
  %nsp_rxtshift = getelementptr %struct.sock, ptr %sk.0, i32 1, i32 8, i32 0, i32 0, i32 1
  %111 = ptrtoint ptr %nsp_rxtshift to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %nsp_rxtshift, align 4
  %112 = ptrtoint ptr %nsp_flags to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %nsp_flags, align 1
  %114 = and i8 %113, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool72.not = icmp eq i8 %114, 0
  br i1 %tobool72.not, label %if.then67.cleanup_crit_edge, label %if.then73

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then73:                                        ; preds = %if.then67
  %115 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.i.not.i = icmp eq i32 %116, 0
  br i1 %tobool.i.not.i, label %if.then73.cleanup_crit_edge, label %cond.true.i

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.true.i:                                      ; preds = %if.then73
  %call.i.i160 = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %116) #8
  %tobool.not.i.i161 = icmp eq ptr %call.i.i160, null
  br i1 %tobool.not.i.i161, label %cond.true.i.free_out_crit_edge, label %cond.true.i.cleanup_crit_edge

cond.true.i.cleanup_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.true.i.free_out_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_out

cleanup:                                          ; preds = %cond.true.i.cleanup_crit_edge, %if.then73.cleanup_crit_edge, %if.then67.cleanup_crit_edge
  %call.i = call i32 @__sk_receive_skb(ptr noundef nonnull %sk.0, ptr noundef %skb, i32 noundef 0, i32 noundef 1, i1 noundef zeroext true) #8
  br label %cleanup88

if.end86:                                         ; preds = %got_it
  %rt_flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %117 = ptrtoint ptr %rt_flags.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %rt_flags.i, align 4
  %119 = and i8 %118, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i162 = icmp ne i8 %119, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %reason.1)
  %cmp.not.i163 = icmp eq i16 %reason.1, 0
  %or.cond.i164 = or i1 %cmp.not.i163, %tobool.not.i162
  br i1 %or.cond.i164, label %if.end86.dn_nsp_no_socket.exit_crit_edge, label %land.lhs.true.i

if.end86.dn_nsp_no_socket.exit_crit_edge:         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_nsp_no_socket.exit

land.lhs.true.i:                                  ; preds = %if.end86
  %120 = ptrtoint ptr %nsp_flags to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %nsp_flags, align 1
  %conv4.i = zext i8 %121 to i32
  %and5.i = and i32 %conv4.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 8
  br i1 %cmp6.i, label %if.then8.i, label %land.lhs.true.i.dn_nsp_no_socket.exit_crit_edge

land.lhs.true.i.dn_nsp_no_socket.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_nsp_no_socket.exit

if.then8.i:                                       ; preds = %land.lhs.true.i
  %and11.i = and i32 %conv4.i, 112
  %122 = zext i32 %and11.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %and11.i, label %if.then8.i.dn_nsp_no_socket.exit_crit_edge [
    i32 16, label %if.then8.i.out.sink.split.i_crit_edge
    i32 96, label %if.then8.i.out.sink.split.i_crit_edge181
    i32 32, label %sw.bb12.i
  ]

if.then8.i.out.sink.split.i_crit_edge181:         ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split.i

if.then8.i.out.sink.split.i_crit_edge:            ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split.i

if.then8.i.dn_nsp_no_socket.exit_crit_edge:       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_nsp_no_socket.exit

sw.bb12.i:                                        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %sw.bb12.i, %if.then8.i.out.sink.split.i_crit_edge, %if.then8.i.out.sink.split.i_crit_edge181
  %.sink.i = phi i8 [ 72, %sw.bb12.i ], [ 56, %if.then8.i.out.sink.split.i_crit_edge ], [ 56, %if.then8.i.out.sink.split.i_crit_edge181 ]
  call void @dn_nsp_return_disc(ptr noundef %skb, i8 noundef zeroext %.sink.i, i16 noundef zeroext %reason.1) #8
  br label %dn_nsp_no_socket.exit

dn_nsp_no_socket.exit:                            ; preds = %out.sink.split.i, %if.then8.i.dn_nsp_no_socket.exit_crit_edge, %land.lhs.true.i.dn_nsp_no_socket.exit_crit_edge, %if.end86.dn_nsp_no_socket.exit_crit_edge
  %ret.0.i = phi i32 [ 1, %if.end86.dn_nsp_no_socket.exit_crit_edge ], [ 1, %if.then8.i.dn_nsp_no_socket.exit_crit_edge ], [ 1, %land.lhs.true.i.dn_nsp_no_socket.exit_crit_edge ], [ 0, %out.sink.split.i ]
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup88

free_out:                                         ; preds = %cond.true.i.free_out_crit_edge, %pskb_may_pull.exit145.free_out_crit_edge, %if.end.i139.free_out_crit_edge, %sw.bb20.free_out_crit_edge, %if.then16.free_out_crit_edge, %if.then16.free_out_crit_edge178, %if.then16.free_out_crit_edge179, %if.end5.free_out_crit_edge, %pskb_may_pull.exit.free_out_crit_edge, %if.end.i.free_out_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup88

cleanup88:                                        ; preds = %free_out, %dn_nsp_no_socket.exit, %cleanup
  %retval.1 = phi i32 [ 1, %free_out ], [ %call.i, %cleanup ], [ %ret.0.i, %dn_nsp_no_socket.exit ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dn_nsp_backlog_rcv(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.sock, ptr %sk, i32 1
  %rt_flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %0 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rt_flags, align 4
  %2 = and i8 %1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %nsp_flags10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %3 = ptrtoint ptr %nsp_flags10 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nsp_flags10, align 1
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %4, label %if.else [
    i8 24, label %if.then.if.then8_crit_edge
    i8 104, label %if.then.if.then8_crit_edge161
  ]

if.then.if.then8_crit_edge161:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then.if.then8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then8:                                         ; preds = %if.then.if.then8_crit_edge, %if.then.if.then8_crit_edge161
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp.i = icmp eq i8 %7, 6
  br i1 %cmp.i, label %if.then.i, label %if.then8.dn_returned_conn_init.exit_crit_edge

if.then8.dn_returned_conn_init.exit_crit_edge:    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_returned_conn_init.exit

if.then.i:                                        ; preds = %if.then8
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %add.ptr.i, align 4
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %9 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store volatile i8 7, ptr %skc_state.i, align 2
  %10 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and1.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then4.i, label %if.then.i.dn_returned_conn_init.exit_crit_edge

if.then.i.dn_returned_conn_init.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_returned_conn_init.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %13 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk_state_change.i, align 4
  tail call void %14(ptr noundef %sk) #8
  br label %dn_returned_conn_init.exit

dn_returned_conn_init.exit:                       ; preds = %if.then4.i, %if.then.i.dn_returned_conn_init.exit_crit_edge, %if.then8.dn_returned_conn_init.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

if.end9:                                          ; preds = %entry
  %conv11 = zext i8 %4 to i32
  %and12 = and i32 %conv11, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 8
  br i1 %cmp13, label %if.then15, label %if.else22

if.then15:                                        ; preds = %if.end9
  %and18 = and i32 %conv11, 112
  %15 = add nsw i32 %and18, -16
  %16 = lshr exact i32 %15, 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %16, label %if.then15.cleanup_crit_edge [
    i32 0, label %if.then15.sw.bb_crit_edge
    i32 5, label %if.then15.sw.bb_crit_edge162
    i32 1, label %sw.bb19
    i32 2, label %sw.bb20
    i32 3, label %sw.bb21
  ]

if.then15.sw.bb_crit_edge162:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.then15.sw.bb_crit_edge:                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.then15.sw.bb_crit_edge, %if.then15.sw.bb_crit_edge162
  %sk_ack_backlog.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 53
  %18 = ptrtoint ptr %sk_ack_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %sk_ack_backlog.i.i, align 4
  %sk_max_ack_backlog.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 54
  %20 = ptrtoint ptr %sk_max_ack_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %sk_max_ack_backlog.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.i.i = icmp ugt i32 %19, %21
  br i1 %cmp.i.i, label %if.then.i109, label %if.end.i

if.then.i109:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add i32 %19, 1
  %22 = ptrtoint ptr %sk_ack_backlog.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %add.i.i, ptr %sk_ack_backlog.i.i, align 4
  %sk_receive_queue.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue.i, ptr noundef %skb) #8
  %sk_state_change.i110 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %23 = ptrtoint ptr %sk_state_change.i110 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sk_state_change.i110, align 4
  tail call void %24(ptr noundef %sk) #8
  br label %cleanup

sw.bb19:                                          ; preds = %if.then15
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp.i112 = icmp ult i32 %26, 4
  br i1 %cmp.i112, label %sw.bb19.dn_nsp_conn_conf.exit_crit_edge, label %if.end.i113

sw.bb19.dn_nsp_conn_conf.exit_crit_edge:          ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_nsp_conn_conf.exit

if.end.i113:                                      ; preds = %sw.bb19
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %incdec.ptr.i = getelementptr i8, ptr %28, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %services.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 10
  %31 = ptrtoint ptr %services.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %services.i, align 2
  %incdec.ptr2.i = getelementptr i8, ptr %28, i32 2
  %32 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr.i, align 1
  %info.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 11
  %34 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %info.i, align 1
  %35 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %incdec.ptr2.i, align 2
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #8
  %segsize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %38 = ptrtoint ptr %segsize.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %segsize.i, align 2
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr.i, align 4
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %40, label %if.end.i113.dn_nsp_conn_conf.exit_crit_edge [
    i8 6, label %if.end.i113.if.then9.i_crit_edge
    i8 9, label %if.end.i113.if.then9.i_crit_edge163
  ]

if.end.i113.if.then9.i_crit_edge163:              ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

if.end.i113.if.then9.i_crit_edge:                 ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

if.end.i113.dn_nsp_conn_conf.exit_crit_edge:      ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_nsp_conn_conf.exit

if.then9.i:                                       ; preds = %if.end.i113.if.then9.i_crit_edge, %if.end.i113.if.then9.i_crit_edge163
  %persist.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 3
  %42 = ptrtoint ptr %persist.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %persist.i, align 4
  %src_port.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %43 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %src_port.i, align 4
  %addrrem.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 2
  %45 = ptrtoint ptr %addrrem.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %addrrem.i, align 4
  %skc_state.i114 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %46 = ptrtoint ptr %skc_state.i114 to i32
  call void @__asan_store1_noabort(i32 %46)
  store volatile i8 1, ptr %skc_state.i114, align 2
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 11, ptr %add.ptr.i, align 4
  %48 = ptrtoint ptr %services.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %services.i, align 2
  %services_rem.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 8
  %50 = ptrtoint ptr %services_rem.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %services_rem.i, align 4
  %51 = ptrtoint ptr %info.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %info.i, align 1
  %info_rem.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 19
  %53 = ptrtoint ptr %info_rem.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %info_rem.i, align 2
  %54 = ptrtoint ptr %segsize.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %segsize.i, align 2
  %segsize_rem.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 9
  %56 = ptrtoint ptr %segsize_rem.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %segsize_rem.i, align 4
  %57 = and i8 %49, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp16.i = icmp eq i8 %57, 0
  br i1 %cmp16.i, label %if.then18.i, label %if.then9.i.if.end19.i_crit_edge

if.then9.i.if.end19.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @decnet_no_fc_max_cwnd to i32))
  %58 = load i32, ptr @decnet_no_fc_max_cwnd, align 4
  %max_window.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 7, i32 2, i32 0, i32 0, i32 4, i32 3
  %59 = ptrtoint ptr %max_window.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %max_window.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.then9.i.if.end19.i_crit_edge
  %60 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp21.not.i = icmp eq i32 %61, 0
  br i1 %cmp21.not.i, label %if.end19.i.if.end38.i_crit_edge, label %if.then23.i

if.end19.i.if.end38.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then23.i:                                      ; preds = %if.end19.i
  %62 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 1
  %conv26.i = zext i8 %65 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %65)
  %cmp27.i = icmp ugt i8 %65, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %conv26.i)
  %cmp31.not.i = icmp ult i32 %61, %conv26.i
  %or.cond.i = select i1 %cmp27.i, i1 true, i1 %cmp31.not.i
  br i1 %or.cond.i, label %if.then23.i.if.end38.i_crit_edge, label %if.then33.i

if.then23.i.if.end38.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then33.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv25.i = zext i8 %65 to i16
  %66 = shl nuw nsw i16 %conv25.i, 8
  %opt_optl.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 27, i32 1
  %67 = ptrtoint ptr %opt_optl.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %opt_optl.i, align 2
  %opt_data.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 10, i32 0, i32 0, i32 3
  %68 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data.i, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %69, i32 1
  %70 = call ptr @memcpy(ptr %opt_data.i, ptr %add.ptr.i77.i, i32 %conv26.i)
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then33.i, %if.then23.i.if.end38.i_crit_edge, %if.end19.i.if.end38.i_crit_edge
  tail call void @dn_nsp_send_link(ptr noundef %sk, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %71 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %71, align 4
  %and1.i.i.i115 = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i115)
  %tobool.i.not.i116 = icmp eq i32 %and1.i.i.i115, 0
  br i1 %tobool.i.not.i116, label %if.then40.i, label %if.end38.i.dn_nsp_conn_conf.exit_crit_edge

if.end38.i.dn_nsp_conn_conf.exit_crit_edge:       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_nsp_conn_conf.exit

if.then40.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %sk_state_change.i117 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %74 = ptrtoint ptr %sk_state_change.i117 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sk_state_change.i117, align 4
  tail call void %75(ptr noundef %sk) #8
  br label %dn_nsp_conn_conf.exit

dn_nsp_conn_conf.exit:                            ; preds = %if.then40.i, %if.end38.i.dn_nsp_conn_conf.exit_crit_edge, %if.end.i113.dn_nsp_conn_conf.exit_crit_edge, %sw.bb19.dn_nsp_conn_conf.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

sw.bb20:                                          ; preds = %if.then15
  %len.i119 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %76 = ptrtoint ptr %len.i119 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %77)
  %cmp.i120 = icmp ult i32 %77, 2
  br i1 %cmp.i120, label %sw.bb20.dn_nsp_disc_init.exit_crit_edge, label %if.end.i124

sw.bb20.dn_nsp_disc_init.exit_crit_edge:          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_nsp_disc_init.exit

if.end.i124:                                      ; preds = %sw.bb20
  %data.i121 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %78 = ptrtoint ptr %data.i121 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i121, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %79, align 2
  %call2.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #8
  %discdata_in.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 15, i32 0, i32 1
  %82 = ptrtoint ptr %discdata_in.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %discdata_in.i, align 4
  %opt_optl.i122 = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 29, i32 1
  %opt_data.i123 = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 16
  %83 = call ptr @memset(ptr %opt_optl.i122, i32 0, i32 18)
  %84 = ptrtoint ptr %len.i119 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp7.not.i = icmp eq i32 %85, 0
  br i1 %cmp7.not.i, label %if.end.i124.if.end25.i_crit_edge, label %if.then8.i

if.end.i124.if.end25.i_crit_edge:                 ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.then8.i:                                       ; preds = %if.end.i124
  %86 = ptrtoint ptr %data.i121 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %data.i121, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %87, align 1
  %conv10.i = zext i8 %89 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %89)
  %cmp11.i = icmp ugt i8 %89, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %conv10.i)
  %cmp15.not.i = icmp ult i32 %85, %conv10.i
  %or.cond.i125 = select i1 %cmp11.i, i1 true, i1 %cmp15.not.i
  br i1 %or.cond.i125, label %if.then8.i.if.end25.i_crit_edge, label %if.then17.i

if.then8.i.if.end25.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.then17.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %89 to i16
  %90 = shl nuw nsw i16 %conv.i, 8
  %91 = ptrtoint ptr %opt_optl.i122 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %opt_optl.i122, align 2
  %92 = ptrtoint ptr %data.i121 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i121, align 4
  %add.ptr.i81.i = getelementptr i8, ptr %93, i32 1
  %94 = call ptr @memcpy(ptr %opt_data.i123, ptr %add.ptr.i81.i, i32 %conv10.i)
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then17.i, %if.then8.i.if.end25.i_crit_edge, %if.end.i124.if.end25.i_crit_edge
  %src_port.i126 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %95 = ptrtoint ptr %src_port.i126 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %src_port.i126, align 4
  %addrrem.i127 = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 2
  %97 = ptrtoint ptr %addrrem.i127 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %addrrem.i127, align 4
  %skc_state.i128 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %98 = ptrtoint ptr %skc_state.i128 to i32
  call void @__asan_store1_noabort(i32 %98)
  store volatile i8 7, ptr %skc_state.i128, align 2
  %99 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %add.ptr.i, align 4
  %101 = zext i8 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %100, label %if.end25.i.sw.epilog.i_crit_edge [
    i8 6, label %if.end25.i.sw.bb.i_crit_edge
    i8 9, label %if.end25.i.sw.bb.i_crit_edge164
    i8 11, label %sw.bb28.i
    i8 12, label %sw.bb32.i
  ]

if.end25.i.sw.bb.i_crit_edge164:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end25.i.sw.bb.i_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end25.i.sw.epilog.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end25.i.sw.bb.i_crit_edge, %if.end25.i.sw.bb.i_crit_edge164
  %102 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 10, ptr %add.ptr.i, align 4
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %103 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 111, ptr %sk_err.i, align 4
  br label %sw.epilog.i

sw.bb28.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %sk_shutdown.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %104 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %sk_shutdown.i, align 2
  %106 = or i8 %105, 3
  store i8 %106, ptr %sk_shutdown.i, align 2
  %107 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 14, ptr %add.ptr.i, align 4
  br label %sw.epilog.i

sw.bb32.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 13, ptr %add.ptr.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb32.i, %sw.bb28.i, %sw.bb.i, %if.end25.i.sw.epilog.i_crit_edge
  %109 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %109, align 4
  %and1.i.i.i129 = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i129)
  %tobool.i.not.i130 = icmp eq i32 %and1.i.i.i129, 0
  br i1 %tobool.i.not.i130, label %if.then35.i, label %sw.epilog.i.if.end43.i_crit_edge

sw.epilog.i.if.end43.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then35.i:                                      ; preds = %sw.epilog.i
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %112 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sk_socket.i, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %115)
  %cmp37.not.i = icmp eq i32 %115, 1
  br i1 %cmp37.not.i, label %if.then35.i.if.end42.i_crit_edge, label %if.then39.i

if.then35.i.if.end42.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

if.then39.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 4, ptr %113, align 128
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then39.i, %if.then35.i.if.end42.i_crit_edge
  %sk_state_change.i131 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %117 = ptrtoint ptr %sk_state_change.i131 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %sk_state_change.i131, align 4
  tail call void %118(ptr noundef %sk) #8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end42.i, %sw.epilog.i.if.end43.i_crit_edge
  %119 = ptrtoint ptr %addrrem.i127 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %addrrem.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool.not.i = icmp eq i16 %120, 0
  br i1 %tobool.not.i, label %if.end43.i.if.end46.i_crit_edge, label %if.then45.i

if.end43.i.if.end46.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

if.then45.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dn_nsp_send_disc(ptr noundef %sk, i8 noundef zeroext 72, i16 noundef zeroext 42, i32 noundef 2592) #8
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then45.i, %if.end43.i.if.end46.i_crit_edge
  %persist_fxn.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 6
  %121 = ptrtoint ptr %persist_fxn.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @dn_destroy_timer, ptr %persist_fxn.i, align 4
  %call47.i = tail call i32 @dn_nsp_persist(ptr noundef %sk) #8
  %persist.i132 = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 3
  %122 = ptrtoint ptr %persist.i132 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %call47.i, ptr %persist.i132, align 4
  br label %dn_nsp_disc_init.exit

dn_nsp_disc_init.exit:                            ; preds = %if.end46.i, %sw.bb20.dn_nsp_disc_init.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

sw.bb21:                                          ; preds = %if.then15
  %len.i134 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %123 = ptrtoint ptr %len.i134 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %len.i134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %124)
  %cmp.not.i = icmp eq i32 %124, 2
  br i1 %cmp.not.i, label %if.end.i137, label %sw.bb21.dn_nsp_disc_conf.exit_crit_edge

sw.bb21.dn_nsp_disc_conf.exit_crit_edge:          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_nsp_disc_conf.exit

if.end.i137:                                      ; preds = %sw.bb21
  %data.i135 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %125 = ptrtoint ptr %data.i135 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data.i135, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %126, align 2
  %skc_state.i136 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %129 = ptrtoint ptr %skc_state.i136 to i32
  call void @__asan_store1_noabort(i32 %129)
  store volatile i8 7, ptr %skc_state.i136, align 2
  %130 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %add.ptr.i, align 4
  %132 = zext i8 %131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %131, label %if.end.i137.sw.epilog.i141_crit_edge [
    i8 6, label %if.end.i137.sw.epilog.sink.split.i_crit_edge
    i8 3, label %sw.bb2.i
    i8 12, label %sw.bb15.i
    i8 11, label %sw.bb17.i
    i8 5, label %if.end.i137.sw.bb20.i_crit_edge
  ]

if.end.i137.sw.bb20.i_crit_edge:                  ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20.i

if.end.i137.sw.epilog.sink.split.i_crit_edge:     ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

if.end.i137.sw.epilog.i141_crit_edge:             ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i141

sw.bb2.i:                                         ; preds = %if.end.i137
  %133 = zext i16 %128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %128, label %sw.bb2.i.sw.epilog.i141_crit_edge [
    i16 10752, label %sw.bb2.i.sw.epilog.sink.split.i_crit_edge
    i16 10496, label %if.then12.i
  ]

sw.bb2.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.bb2.i.sw.epilog.i141_crit_edge:                ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i141

if.then12.i:                                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.bb15.i:                                        ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.bb17.i:                                        ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #10
  %sk_shutdown.i138 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %134 = ptrtoint ptr %sk_shutdown.i138 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %sk_shutdown.i138, align 2
  %136 = or i8 %135, 3
  store i8 %136, ptr %sk_shutdown.i138, align 2
  br label %sw.bb20.i

sw.bb20.i:                                        ; preds = %sw.bb17.i, %if.end.i137.sw.bb20.i_crit_edge
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb20.i, %sw.bb15.i, %if.then12.i, %sw.bb2.i.sw.epilog.sink.split.i_crit_edge, %if.end.i137.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 16, %if.then12.i ], [ 16, %sw.bb20.i ], [ 13, %sw.bb15.i ], [ 7, %if.end.i137.sw.epilog.sink.split.i_crit_edge ], [ 4, %sw.bb2.i.sw.epilog.sink.split.i_crit_edge ]
  %137 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %.sink.i, ptr %add.ptr.i, align 4
  br label %sw.epilog.i141

sw.epilog.i141:                                   ; preds = %sw.epilog.sink.split.i, %sw.bb2.i.sw.epilog.i141_crit_edge, %if.end.i137.sw.epilog.i141_crit_edge
  %138 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %138, align 4
  %and1.i.i.i139 = and i32 %140, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i139)
  %tobool.i.not.i140 = icmp eq i32 %and1.i.i.i139, 0
  br i1 %tobool.i.not.i140, label %if.then23.i143, label %sw.epilog.i141.if.end31.i_crit_edge

sw.epilog.i141.if.end31.i_crit_edge:              ; preds = %sw.epilog.i141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.then23.i143:                                   ; preds = %sw.epilog.i141
  %sk_socket.i142 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %141 = ptrtoint ptr %sk_socket.i142 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %sk_socket.i142, align 8
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %142, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %144)
  %cmp25.not.i = icmp eq i32 %144, 1
  br i1 %cmp25.not.i, label %if.then23.i143.if.end30.i_crit_edge, label %if.then27.i

if.then23.i143.if.end30.i_crit_edge:              ; preds = %if.then23.i143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.then27.i:                                      ; preds = %if.then23.i143
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 4, ptr %142, align 128
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %if.then23.i143.if.end30.i_crit_edge
  %sk_state_change.i144 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %146 = ptrtoint ptr %sk_state_change.i144 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sk_state_change.i144, align 4
  tail call void %147(ptr noundef %sk) #8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end30.i, %sw.epilog.i141.if.end31.i_crit_edge
  %persist_fxn.i145 = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 6
  %148 = ptrtoint ptr %persist_fxn.i145 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @dn_destroy_timer, ptr %persist_fxn.i145, align 4
  %call32.i = tail call i32 @dn_nsp_persist(ptr noundef %sk) #8
  %persist.i146 = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 3
  %149 = ptrtoint ptr %persist.i146 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %call32.i, ptr %persist.i146, align 4
  br label %dn_nsp_disc_conf.exit

dn_nsp_disc_conf.exit:                            ; preds = %if.end31.i, %sw.bb21.dn_nsp_disc_conf.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

if.else22:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %4)
  %cmp25 = icmp eq i8 %4, 36
  %150 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %add.ptr.i, align 4
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %151)
  %cmp.i148 = icmp eq i8 %151, 6
  br i1 %cmp.i148, label %if.then.i150, label %if.then27.dn_nsp_conn_ack.exit_crit_edge

if.then27.dn_nsp_conn_ack.exit_crit_edge:         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_nsp_conn_ack.exit

if.then.i150:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %152 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 9, ptr %add.ptr.i, align 4
  %persist.i149 = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 3
  %153 = ptrtoint ptr %persist.i149 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %persist.i149, align 4
  br label %dn_nsp_conn_ack.exit

dn_nsp_conn_ack.exit:                             ; preds = %if.then.i150, %if.then27.dn_nsp_conn_ack.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

if.else28:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %151)
  %cmp30 = icmp eq i8 %151, 5
  br i1 %cmp30, label %land.lhs.true, label %if.else28.if.end35_crit_edge

if.else28.if.end35_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true:                                    ; preds = %if.else28
  %154 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %154, align 4
  %and1.i.i = and i32 %156, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then33, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 11, ptr %add.ptr.i, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %158 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %158)
  store volatile i8 1, ptr %skc_state, align 2
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %159 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %sk_state_change, align 4
  tail call void %160(ptr noundef %sk) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %land.lhs.true.if.end35_crit_edge, %if.else28.if.end35_crit_edge
  %161 = ptrtoint ptr %nsp_flags10 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %nsp_flags10, align 1
  %163 = and i8 %162, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %cmp39 = icmp ne i8 %163, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %162)
  %cmp45 = icmp ne i8 %162, 4
  %narrow = and i1 %cmp45, %cmp39
  %data.i152 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %164 = ptrtoint ptr %data.i152 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %data.i152, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %166 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %167)
  %cmp.i153 = icmp ult i32 %167, 2
  br i1 %cmp.i153, label %if.end35.dn_process_ack.exit_crit_edge, label %if.end.i156

if.end35.dn_process_ack.exit_crit_edge:           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_process_ack.exit

if.end.i156:                                      ; preds = %if.end35
  %168 = ptrtoint ptr %165 to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %165, align 2
  %170 = tail call i16 @llvm.bswap.i16(i16 %169) #8
  %conv.i154 = zext i16 %170 to i32
  %and.i = and i32 %conv.i154, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i155 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i155, label %if.end.i156.if.end14.i_crit_edge, label %if.then2.i

if.end.i156.if.end14.i_crit_edge:                 ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then2.i:                                       ; preds = %if.end.i156
  %call.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #8
  %incdec.ptr.i157 = getelementptr i16, ptr %165, i32 1
  %and4.i = and i32 %conv.i154, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %cmp5.i = icmp eq i32 %and4.i, 0
  br i1 %cmp5.i, label %if.then7.i, label %if.then2.i.if.end14.i_crit_edge

if.then2.i.if.end14.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then7.i:                                       ; preds = %if.then2.i
  %xor.i = xor i16 %170, 8192
  %spec.select.i = select i1 %narrow, i16 %xor.i, i16 %170
  %171 = lshr i16 %spec.select.i, 12
  %and.i.i = and i16 %171, 3
  %conv2.i.i = zext i16 %and.i.i to i32
  %172 = zext i32 %conv2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %conv2.i.i, label %if.then7.i.if.end14.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 2, label %sw.bb9.i.i
  ]

if.then7.i.if.end14.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

sw.bb.i.i:                                        ; preds = %if.then7.i
  %ackrcv_dat.i.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 4
  %173 = ptrtoint ptr %ackrcv_dat.i.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %ackrcv_dat.i.i, align 2
  %conv5.i.i.i = zext i16 %174 to i32
  %conv6.i.i.i = zext i16 %spec.select.i to i32
  %sub.i.i.i = sub nsw i32 %conv5.i.i.i, %conv6.i.i.i
  %and7.i.i.i = and i32 %sub.i.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %and7.i.i.i)
  %cmp.i.i.i = icmp ult i32 %and7.i.i.i, 2049
  br i1 %cmp.i.i.i, label %sw.bb.i.i.if.end14.i_crit_edge, label %if.then.i.i

sw.bb.i.i.if.end14.i_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %175 = and i16 %spec.select.i, 4095
  %176 = ptrtoint ptr %ackrcv_dat.i.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %175, ptr %ackrcv_dat.i.i, align 2
  %data_xmit_queue.i.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 8, i32 1
  br label %sw.epilog.i.i

sw.bb9.i.i:                                       ; preds = %if.then7.i
  %ackrcv_oth.i.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 6
  %177 = ptrtoint ptr %ackrcv_oth.i.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %ackrcv_oth.i.i, align 4
  %conv5.i43.i.i = zext i16 %178 to i32
  %conv6.i44.i.i = zext i16 %spec.select.i to i32
  %sub.i45.i.i = sub nsw i32 %conv5.i43.i.i, %conv6.i44.i.i
  %and7.i46.i.i = and i32 %sub.i45.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %and7.i46.i.i)
  %cmp.i47.i.i = icmp ult i32 %and7.i46.i.i, 2049
  br i1 %cmp.i47.i.i, label %sw.bb9.i.i.if.end14.i_crit_edge, label %if.then12.i.i

sw.bb9.i.i.if.end14.i_crit_edge:                  ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then12.i.i:                                    ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and14.i.i = and i16 %spec.select.i, 4095
  %179 = ptrtoint ptr %ackrcv_oth.i.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %and14.i.i, ptr %ackrcv_oth.i.i, align 4
  %other_xmit_queue.i.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 9, i32 2
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.then12.i.i, %if.then.i.i
  %other_xmit_queue.sink.i.i = phi ptr [ %other_xmit_queue.i.i, %if.then12.i.i ], [ %data_xmit_queue.i.i, %if.then.i.i ]
  %call17.i.i = tail call i32 @dn_nsp_check_xmit_queue(ptr noundef %sk, ptr noundef %skb, ptr noundef %other_xmit_queue.sink.i.i, i16 noundef zeroext %spec.select.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool20.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool20.not.i.i, label %sw.epilog.i.i.if.end14.i_crit_edge, label %land.lhs.true.i.i

sw.epilog.i.i.if.end14.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

land.lhs.true.i.i:                                ; preds = %sw.epilog.i.i
  %180 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile i32, ptr %180, align 4
  %and1.i.i.i.i = and i32 %182, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then22.i.i, label %land.lhs.true.i.i.if.end14.i_crit_edge

land.lhs.true.i.i.if.end14.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then22.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sk_state_change.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %183 = ptrtoint ptr %sk_state_change.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %sk_state_change.i.i, align 4
  tail call void %184(ptr noundef %sk) #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then22.i.i, %land.lhs.true.i.i.if.end14.i_crit_edge, %sw.epilog.i.i.if.end14.i_crit_edge, %sw.bb9.i.i.if.end14.i_crit_edge, %sw.bb.i.i.if.end14.i_crit_edge, %if.then7.i.if.end14.i_crit_edge, %if.then2.i.if.end14.i_crit_edge, %if.end.i156.if.end14.i_crit_edge
  %ptr.0.i = phi ptr [ %incdec.ptr.i157, %if.then2.i.if.end14.i_crit_edge ], [ %165, %if.end.i156.if.end14.i_crit_edge ], [ %incdec.ptr.i157, %if.then7.i.if.end14.i_crit_edge ], [ %incdec.ptr.i157, %sw.bb.i.i.if.end14.i_crit_edge ], [ %incdec.ptr.i157, %sw.bb9.i.i.if.end14.i_crit_edge ], [ %incdec.ptr.i157, %sw.epilog.i.i.if.end14.i_crit_edge ], [ %incdec.ptr.i157, %land.lhs.true.i.i.if.end14.i_crit_edge ], [ %incdec.ptr.i157, %if.then22.i.i ]
  %185 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %186)
  %cmp16.i158 = icmp ult i32 %186, 2
  br i1 %cmp16.i158, label %if.end14.i.dn_process_ack.exit_crit_edge, label %if.end19.i159

if.end14.i.dn_process_ack.exit_crit_edge:         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_process_ack.exit

if.end19.i159:                                    ; preds = %if.end14.i
  %187 = ptrtoint ptr %ptr.0.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %ptr.0.i, align 2
  %189 = tail call i16 @llvm.bswap.i16(i16 %188) #8
  %conv20.i = zext i16 %189 to i32
  %and21.i = and i32 %conv20.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end19.i159.dn_process_ack.exit_crit_edge, label %if.then23.i160

if.end19.i159.dn_process_ack.exit_crit_edge:      ; preds = %if.end19.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_process_ack.exit

if.then23.i160:                                   ; preds = %if.end19.i159
  %call24.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #8
  %and27.i = and i32 %conv20.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %cmp28.i = icmp eq i32 %and27.i, 0
  br i1 %cmp28.i, label %if.then30.i, label %if.then23.i160.dn_process_ack.exit_crit_edge

if.then23.i160.dn_process_ack.exit_crit_edge:     ; preds = %if.then23.i160
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_process_ack.exit

if.then30.i:                                      ; preds = %if.then23.i160
  %xor34.i = xor i16 %189, 8192
  %spec.select1.i = select i1 %narrow, i16 %xor34.i, i16 %189
  %190 = lshr i16 %spec.select1.i, 12
  %and.i2.i = and i16 %190, 3
  %conv2.i3.i = zext i16 %and.i2.i to i32
  %191 = zext i32 %conv2.i3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %conv2.i3.i, label %if.then30.i.dn_process_ack.exit_crit_edge [
    i32 0, label %sw.bb.i10.i
    i32 2, label %sw.bb9.i19.i
  ]

if.then30.i.dn_process_ack.exit_crit_edge:        ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_process_ack.exit

sw.bb.i10.i:                                      ; preds = %if.then30.i
  %ackrcv_dat.i4.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 4
  %192 = ptrtoint ptr %ackrcv_dat.i4.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %ackrcv_dat.i4.i, align 2
  %conv5.i.i5.i = zext i16 %193 to i32
  %conv6.i.i6.i = zext i16 %spec.select1.i to i32
  %sub.i.i7.i = sub nsw i32 %conv5.i.i5.i, %conv6.i.i6.i
  %and7.i.i8.i = and i32 %sub.i.i7.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %and7.i.i8.i)
  %cmp.i.i9.i = icmp ult i32 %and7.i.i8.i, 2049
  br i1 %cmp.i.i9.i, label %sw.bb.i10.i.dn_process_ack.exit_crit_edge, label %if.then.i12.i

sw.bb.i10.i.dn_process_ack.exit_crit_edge:        ; preds = %sw.bb.i10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_process_ack.exit

if.then.i12.i:                                    ; preds = %sw.bb.i10.i
  call void @__sanitizer_cov_trace_pc() #10
  %194 = and i16 %spec.select1.i, 4095
  %195 = ptrtoint ptr %ackrcv_dat.i4.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %194, ptr %ackrcv_dat.i4.i, align 2
  %data_xmit_queue.i11.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 8, i32 1
  br label %sw.epilog.i26.i

sw.bb9.i19.i:                                     ; preds = %if.then30.i
  %ackrcv_oth.i13.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 6
  %196 = ptrtoint ptr %ackrcv_oth.i13.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %ackrcv_oth.i13.i, align 4
  %conv5.i43.i14.i = zext i16 %197 to i32
  %conv6.i44.i15.i = zext i16 %spec.select1.i to i32
  %sub.i45.i16.i = sub nsw i32 %conv5.i43.i14.i, %conv6.i44.i15.i
  %and7.i46.i17.i = and i32 %sub.i45.i16.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %and7.i46.i17.i)
  %cmp.i47.i18.i = icmp ult i32 %and7.i46.i17.i, 2049
  br i1 %cmp.i47.i18.i, label %sw.bb9.i19.i.dn_process_ack.exit_crit_edge, label %if.then12.i22.i

sw.bb9.i19.i.dn_process_ack.exit_crit_edge:       ; preds = %sw.bb9.i19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_process_ack.exit

if.then12.i22.i:                                  ; preds = %sw.bb9.i19.i
  call void @__sanitizer_cov_trace_pc() #10
  %and14.i20.i = and i16 %spec.select1.i, 4095
  %198 = ptrtoint ptr %ackrcv_oth.i13.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %and14.i20.i, ptr %ackrcv_oth.i13.i, align 4
  %other_xmit_queue.i21.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 9, i32 2
  br label %sw.epilog.i26.i

sw.epilog.i26.i:                                  ; preds = %if.then12.i22.i, %if.then.i12.i
  %other_xmit_queue.sink.i23.i = phi ptr [ %other_xmit_queue.i21.i, %if.then12.i22.i ], [ %data_xmit_queue.i11.i, %if.then.i12.i ]
  %call17.i24.i = tail call i32 @dn_nsp_check_xmit_queue(ptr noundef %sk, ptr noundef %skb, ptr noundef %other_xmit_queue.sink.i23.i, i16 noundef zeroext %spec.select1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i24.i)
  %tobool20.not.i25.i = icmp eq i32 %call17.i24.i, 0
  br i1 %tobool20.not.i25.i, label %sw.epilog.i26.i.dn_process_ack.exit_crit_edge, label %land.lhs.true.i29.i

sw.epilog.i26.i.dn_process_ack.exit_crit_edge:    ; preds = %sw.epilog.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_process_ack.exit

land.lhs.true.i29.i:                              ; preds = %sw.epilog.i26.i
  %199 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile i32, ptr %199, align 4
  %and1.i.i.i27.i = and i32 %201, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i27.i)
  %tobool.i.not.i28.i = icmp eq i32 %and1.i.i.i27.i, 0
  br i1 %tobool.i.not.i28.i, label %if.then22.i31.i, label %land.lhs.true.i29.i.dn_process_ack.exit_crit_edge

land.lhs.true.i29.i.dn_process_ack.exit_crit_edge: ; preds = %land.lhs.true.i29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_process_ack.exit

if.then22.i31.i:                                  ; preds = %land.lhs.true.i29.i
  call void @__sanitizer_cov_trace_pc() #10
  %sk_state_change.i30.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %202 = ptrtoint ptr %sk_state_change.i30.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %sk_state_change.i30.i, align 4
  tail call void %203(ptr noundef %sk) #8
  br label %dn_process_ack.exit

dn_process_ack.exit:                              ; preds = %if.then22.i31.i, %land.lhs.true.i29.i.dn_process_ack.exit_crit_edge, %sw.epilog.i26.i.dn_process_ack.exit_crit_edge, %sw.bb9.i19.i.dn_process_ack.exit_crit_edge, %sw.bb.i10.i.dn_process_ack.exit_crit_edge, %if.then30.i.dn_process_ack.exit_crit_edge, %if.then23.i160.dn_process_ack.exit_crit_edge, %if.end19.i159.dn_process_ack.exit_crit_edge, %if.end14.i.dn_process_ack.exit_crit_edge, %if.end35.dn_process_ack.exit_crit_edge
  %204 = ptrtoint ptr %nsp_flags10 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %nsp_flags10, align 1
  %206 = and i8 %205, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %cmp53 = icmp eq i8 %206, 0
  br i1 %cmp53, label %if.then55, label %dn_process_ack.exit.free_out_crit_edge

dn_process_ack.exit.free_out_crit_edge:           ; preds = %dn_process_ack.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_out

if.then55:                                        ; preds = %dn_process_ack.exit
  %207 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %208)
  %cmp58.not = icmp eq i8 %208, 11
  br i1 %cmp58.not, label %if.end61, label %if.then55.free_out_crit_edge

if.then55.free_out_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_out

if.end61:                                         ; preds = %if.then55
  %209 = zext i8 %205 to i64
  call void @__sanitizer_cov_trace_switch(i64 %209, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %205, label %sw.default [
    i8 16, label %sw.bb64
    i8 48, label %sw.bb65
  ]

sw.bb64:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @dn_nsp_linkservice(ptr noundef %sk, ptr noundef %skb)
  br label %cleanup

sw.bb65:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @dn_nsp_otherdata(ptr noundef %sk, ptr noundef %skb)
  br label %cleanup

sw.default:                                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @dn_nsp_data(ptr noundef %sk, ptr noundef %skb)
  br label %cleanup

free_out:                                         ; preds = %if.then55.free_out_crit_edge, %dn_process_ack.exit.free_out_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %free_out, %sw.default, %sw.bb65, %sw.bb64, %dn_nsp_conn_ack.exit, %dn_nsp_disc_conf.exit, %dn_nsp_disc_init.exit, %dn_nsp_conn_conf.exit, %if.end.i, %if.then.i109, %if.then15.cleanup_crit_edge, %if.else, %dn_returned_conn_init.exit
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dn_nsp_linkservice(ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.sock, ptr %sk, i32 1
  %services_rem = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 8
  %0 = ptrtoint ptr %services_rem to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %services_rem, align 4
  %2 = and i8 %1, 12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp.not = icmp eq i32 %4, 4
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 2
  %incdec.ptr = getelementptr i8, ptr %6, i32 3
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr, align 1
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr, align 1
  %conv3 = zext i8 %8 to i32
  %and4 = and i32 %conv3, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end6:                                          ; preds = %if.end
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %6, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %numoth_rcv = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 5
  %14 = ptrtoint ptr %numoth_rcv to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %numoth_rcv, align 2
  %add.i = add i16 %15, 1
  %xor3.i.i = xor i16 %add.i, %13
  %16 = and i16 %xor3.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.i.i.not = icmp eq i16 %16, 0
  br i1 %cmp.i.i.not, label %if.then9, label %if.end6.if.end65_crit_edge

if.end6.if.end65_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then9:                                         ; preds = %if.end6
  %17 = and i16 %add.i, 4095
  %18 = ptrtoint ptr %numoth_rcv to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %numoth_rcv, align 2
  %and12 = and i32 %conv3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %switch = icmp eq i32 %and12, 0
  br i1 %switch, label %sw.bb, label %sw.bb49

sw.bb:                                            ; preds = %if.then9
  %and14 = and i32 %conv3, 3
  %19 = zext i32 %and14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %and14, label %sw.bb.if.end65_crit_edge [
    i32 0, label %sw.bb15
    i32 1, label %sw.bb46
    i32 2, label %sw.bb47
  ]

sw.bb.if.end65_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

sw.bb15:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp17 = icmp slt i8 %10, 0
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %sw.bb15
  %sub = sub i8 0, %10
  %flowrem_dat = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 7
  %20 = ptrtoint ptr %flowrem_dat to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flowrem_dat, align 4
  %22 = zext i8 %sub to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %22)
  %cmp24 = icmp ugt i16 %21, %22
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %2)
  %cmp27 = icmp eq i8 %2, 8
  %or.cond = select i1 %cmp24, i1 %cmp27, i1 false
  br i1 %or.cond, label %if.then29, label %if.then19.if.end65_crit_edge

if.then19.if.end65_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then29:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %conv34 = sub i16 %21, %22
  %23 = ptrtoint ptr %flowrem_dat to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv34, ptr %flowrem_dat, align 4
  br label %if.end65

if.else:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp37.not = icmp eq i8 %10, 0
  br i1 %cmp37.not, label %if.else.if.end65_crit_edge, label %if.then39

if.else.if.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %flowrem_dat41 = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 7
  %24 = ptrtoint ptr %flowrem_dat41 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flowrem_dat41, align 4
  %26 = zext i8 %10 to i16
  %conv43 = add i16 %25, %26
  store i16 %conv43, ptr %flowrem_dat41, align 4
  br label %land.lhs.true61

sw.bb46:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %flowrem_sw = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 11
  %27 = ptrtoint ptr %flowrem_sw to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %flowrem_sw, align 2
  br label %if.end65

sw.bb47:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %flowrem_sw48 = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 11
  %28 = ptrtoint ptr %flowrem_sw48 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 2, ptr %flowrem_sw48, align 2
  tail call void @dn_nsp_output(ptr noundef %sk) #8
  br label %land.lhs.true61

sw.bb49:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp51 = icmp sgt i8 %10, 0
  br i1 %cmp51, label %if.then53, label %sw.bb49.if.end65_crit_edge

sw.bb49.if.end65_crit_edge:                       ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then53:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #10
  %conv5099 = zext i8 %10 to i16
  %flowrem_oth = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 14
  %29 = ptrtoint ptr %flowrem_oth to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flowrem_oth, align 2
  %add56 = add i16 %30, %conv5099
  store i16 %add56, ptr %flowrem_oth, align 2
  br label %land.lhs.true61

land.lhs.true61:                                  ; preds = %if.then53, %sw.bb47, %if.then39
  %31 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and1.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then63, label %land.lhs.true61.if.end65_crit_edge

land.lhs.true61.if.end65_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then63:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #10
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %34 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sk_state_change, align 4
  tail call void %35(ptr noundef %sk) #8
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %land.lhs.true61.if.end65_crit_edge, %sw.bb49.if.end65_crit_edge, %sw.bb46, %if.else.if.end65_crit_edge, %if.then29, %if.then19.if.end65_crit_edge, %sw.bb.if.end65_crit_edge, %if.end6.if.end65_crit_edge
  tail call void @dn_nsp_send_oth_ack(ptr noundef %sk) #8
  br label %out

out:                                              ; preds = %if.end65, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dn_nsp_otherdata(ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.if.then13_crit_edge, label %if.end

entry.if.then13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr %struct.sock, ptr %sk, i32 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %segnum2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %7 = ptrtoint ptr %segnum2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %segnum2, align 4
  %call3 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #8
  %numoth_rcv = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 5
  %8 = ptrtoint ptr %numoth_rcv to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %numoth_rcv, align 2
  %add.i = add i16 %9, 1
  %xor3.i.i = xor i16 %add.i, %6
  %10 = and i16 %xor3.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.i.i.not = icmp eq i16 %10, 0
  br i1 %cmp.i.i.not, label %if.then5, label %if.end.out.thread28_crit_edge

if.end.out.thread28_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread28

if.then5:                                         ; preds = %if.end
  %other_receive_queue = getelementptr %struct.sock, ptr %sk, i32 1, i32 21
  %call6 = tail call fastcc i32 @dn_queue_skb(ptr noundef %sk, ptr noundef %skb, ptr noundef %other_receive_queue)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %out, label %if.then5.out.thread28_crit_edge

if.then5.out.thread28_crit_edge:                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread28

out.thread28:                                     ; preds = %if.then5.out.thread28_crit_edge, %if.end.out.thread28_crit_edge
  tail call void @dn_nsp_send_oth_ack(ptr noundef %sk) #8
  br label %if.then13

out:                                              ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %numoth_rcv to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %numoth_rcv, align 2
  %add.i25 = add i16 %12, 1
  %13 = and i16 %add.i25, 4095
  store i16 %13, ptr %numoth_rcv, align 2
  %other_report = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 1, i32 1
  %14 = ptrtoint ptr %other_report to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %other_report, align 4
  tail call void @dn_nsp_send_oth_ack(ptr noundef %sk) #8
  br label %if.end14

if.then13:                                        ; preds = %out.thread28, %entry.if.then13_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %out
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dn_nsp_data(ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.sock, ptr %sk, i32 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.if.then20_crit_edge, label %if.end

entry.if.then20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %segnum2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %7 = ptrtoint ptr %segnum2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %segnum2, align 4
  %call3 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #8
  %numdat_rcv = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %numdat_rcv to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %numdat_rcv, align 4
  %add.i = add i16 %9, 1
  %xor3.i.i = xor i16 %add.i, %6
  %10 = and i16 %xor3.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.i.i.not = icmp eq i16 %10, 0
  br i1 %cmp.i.i.not, label %if.then5, label %out.thread38

out.thread38:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dn_nsp_send_data_ack(ptr noundef %sk) #8
  br label %if.then20

if.then5:                                         ; preds = %if.end
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %call6 = tail call fastcc i32 @dn_queue_skb(ptr noundef %sk, ptr noundef %skb, ptr noundef %sk_receive_queue)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %numdat_rcv to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %numdat_rcv, align 2
  %add.i35 = add i16 %12, 1
  %13 = and i16 %add.i35, 4095
  store i16 %13, ptr %numdat_rcv, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then5.if.end10_crit_edge
  %flowloc_sw = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 12
  %14 = ptrtoint ptr %flowloc_sw to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flowloc_sw, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp11 = icmp eq i8 %15, 2
  br i1 %cmp11, label %land.lhs.true, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true:                                    ; preds = %if.end10
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #8
  %16 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %sk_backlog.i, align 4
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %18 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sk_rcvbuf.i, align 8
  %shr.i = ashr i32 %19, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %shr.i)
  %cmp.i.not = icmp sgt i32 %17, %shr.i
  br i1 %cmp.i.not, label %if.then15, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %flowloc_sw to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %flowloc_sw, align 1
  tail call void @dn_nsp_send_link(ptr noundef %sk, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  br label %out

out:                                              ; preds = %if.then15, %land.lhs.true.out_crit_edge, %if.end10.out_crit_edge
  tail call void @dn_nsp_send_data_ack(ptr noundef %sk) #8
  br i1 %cmp7, label %out.if.end21_crit_edge, label %out.if.then20_crit_edge

out.if.then20_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

out.if.end21_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %out.if.then20_crit_edge, %out.thread38, %entry.if.then20_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %out.if.end21_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(ptr noundef %skb, ptr noundef %indev) unnamed_addr #2 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([13 x [7 x %struct.static_key]], ptr @nf_hooks_needed, i32 0, i32 12, i32 1), ptr blockaddress(@nf_hook, %if.end)) #8
          to label %cleanup [label %if.end], !srcloc !66

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !54) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 39, i32 7, i32 1) to i32))
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 39, i32 7, i32 1), align 16
  %call130 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %land.lhs.true132, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true132:                                 ; preds = %rcu_read_lock.exit
  %call133 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %land.lhs.true132.sw.epilog_crit_edge, label %land.lhs.true135

land.lhs.true132.sw.epilog_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true135:                                 ; preds = %land.lhs.true132
  %.b1 = load i1, ptr @nf_hook.__warned.5, align 1
  br i1 %.b1, label %land.lhs.true135.sw.epilog_crit_edge, label %if.then137

land.lhs.true135.sw.epilog_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then137:                                       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @nf_hook.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 248, ptr noundef nonnull @.str.1) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then137, %land.lhs.true135.sw.epilog_crit_edge, %land.lhs.true132.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
  %tobool191.not = icmp eq ptr %4, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #8
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %state, align 4
  store i8 1, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %6 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 12, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %7 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %indev, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %8 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %out.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %9 = ptrtoint ptr %sk3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %sk3.i, align 4
  %net4.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %10 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @init_net, ptr %net4.i, align 4
  %okfn5.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %11 = ptrtoint ptr %okfn5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dn_nsp_rx_packet, ptr %okfn5.i, align 4
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %4, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #8
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i2, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end194
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  %12 = call i32 @llvm.read_register.i32(metadata !54) #8
  %and.i.i.i.i.i9 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dn_find_by_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_username2sockaddr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dn_sklist_find_listener(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_receive_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_nsp_return_disc(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_nsp_send_link(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_nsp_send_disc(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_destroy_timer(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_nsp_persist(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_nsp_check_xmit_queue(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_nsp_output(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_nsp_send_oth_ack(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dn_queue_skb(ptr noundef %sk, ptr noundef %skb, ptr noundef %queue) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog, i32 noundef 4) #8
  %0 = ptrtoint ptr %sk_backlog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sk_backlog, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %2 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %truesize, align 8
  %add = add i32 %3, %1
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %4 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_rcvbuf, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp.not = icmp ult i32 %add, %5
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @sk_filter_trim_cap(ptr noundef %sk, ptr noundef %skb, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end3:                                          ; preds = %if.end
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %destructor.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %7(ptr noundef %skb) #8
  br label %skb_orphan.exit.i

do.body.i.i:                                      ; preds = %if.end3
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool3.not.i.i = icmp eq ptr %10, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.skb_orphan.exit.i_crit_edge, label %do.body7.i.i, !prof !65

do.body.i.i.skb_orphan.exit.i_crit_edge:          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_orphan.exit.i

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #8, !srcloc !69
  unreachable

skb_orphan.exit.i:                                ; preds = %do.body.i.i.skb_orphan.exit.i_crit_edge, %if.then.i.i
  %11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %sk, ptr %11, align 4
  %13 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @sock_rfree, ptr %destructor.i.i, align 4
  %14 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %truesize, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %sk_backlog, i32 1, i32 3, i32 1) #8
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog, ptr %sk_backlog, i32 %15, ptr elementtype(i32) %sk_backlog) #8, !srcloc !70
  %skc_prot.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %17 = ptrtoint ptr %skc_prot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skc_prot.i.i.i, align 8
  %memory_allocated.i.i.i = getelementptr inbounds %struct.proto, ptr %18, i32 0, i32 32
  %19 = ptrtoint ptr %memory_allocated.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %memory_allocated.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.i.not.i.i, label %skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge, label %if.end.i.i

skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge: ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_set_owner_r.exit

if.end.i.i:                                       ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %truesize, align 8
  %sk_forward_alloc.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %23 = ptrtoint ptr %sk_forward_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sk_forward_alloc.i.i, align 8
  %sub.i.i = sub i32 %24, %22
  store i32 %sub.i.i, ptr %sk_forward_alloc.i.i, align 8
  br label %skb_set_owner_r.exit

skb_set_owner_r.exit:                             ; preds = %if.end.i.i, %skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge
  tail call void @skb_queue_tail(ptr noundef %queue, ptr noundef %skb) #8
  %25 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and1.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then5, label %skb_set_owner_r.exit.out_crit_edge

skb_set_owner_r.exit.out_crit_edge:               ; preds = %skb_set_owner_r.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then5:                                         ; preds = %skb_set_owner_r.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %28 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk_data_ready, align 8
  tail call void %29(ptr noundef %sk) #8
  br label %out

out:                                              ; preds = %if.then5, %skb_set_owner_r.exit.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ 0, %skb_set_owner_r.exit.out_crit_edge ], [ 0, %if.then5 ], [ -12, %entry.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_filter_trim_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_nsp_send_data_ack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !22, !23, !25, !26, !27, !28, !29, !31, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/decnet/dn_nsp_in.c", i32 726, i32 3}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dn_nsp_rx_packet._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @dn_nsp_rx_packet._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/decnet/dn_nsp_in.c", i32 77, i32 47}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/decnet/dn_nsp_in.c", i32 79, i32 3}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @dn_log_martian._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @dn_log_martian._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/decnet/dn_nsp_in.c", i32 201, i32 19}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/decnet/dn_nsp_in.c", i32 202, i32 19}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/decnet/dn_nsp_in.c", i32 203, i32 19}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/decnet/dn_nsp_in.c", i32 204, i32 19}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/decnet/dn_nsp_in.c", i32 205, i32 19}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/decnet/dn_nsp_in.c", i32 206, i32 19}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/decnet/dn_nsp_in.c", i32 207, i32 19}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/decnet/dn_nsp_in.c", i32 208, i32 19}
!52 = !{ptr @ci_err_table, !53, !"ci_err_table", i1 false, i1 false}
!53 = !{!"../net/decnet/dn_nsp_in.c", i32 200, i32 3}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 2149309660, i64 2149309665, i64 2149309678, i64 2149309722, i64 2149309756, i64 2149309777}
!67 = !{i64 2149738117}
!68 = !{i64 2149738383}
!69 = !{i64 2155250496, i64 2155250984, i64 2155250533, i64 2155250589, i64 2155250623, i64 2155250647, i64 2155250688, i64 2155250709, i64 2155250737, i64 2155250771}
!70 = !{i64 2148189795, i64 2148189821, i64 2148189850, i64 2148189884, i64 2148189915, i64 2148189938}
