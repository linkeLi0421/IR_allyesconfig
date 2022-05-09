; ModuleID = '/llk/IR_all_yes/net/decnet/dn_nsp_out.c_pt.bc'
source_filename = "../net/decnet/dn_nsp_out.c"
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
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.109, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.110, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.111, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
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
%struct.dn_scp = type { i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i32, %struct.optdata_dn, %struct.optdata_dn, %struct.optdata_dn, %struct.optdata_dn, %struct.accessdata_dn, %struct.sockaddr_dn, %struct.sockaddr_dn, i32, i32, i32, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, i32, i32, i32, ptr, i32, ptr }
%struct.optdata_dn = type { i16, i16, [16 x i8] }
%struct.accessdata_dn = type { i8, [40 x i8], i8, [40 x i8], i8, [40 x i8] }
%struct.sockaddr_dn = type { i16, i8, i8, i16, [16 x i8], %struct.dn_naddr }
%struct.dn_naddr = type { i16, [2 x i8] }
%struct.flowidn = type { %struct.flowi_common, i16, i16, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.anon.22 = type { i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.123, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.123 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.nsp_conn_ack_msg = type <{ i8, i16 }>
%struct.nsp_conn_init_msg = type <{ i8, i16, i16, i8, i8, i16 }>

@nsp_backoff = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64], [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/decnet/dn_nsp_out.c\00", [40 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@dn_nsp_do_disc.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str, ptr @.str.8, i8 0, i8 -123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"decnet\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dn_nsp_do_disc\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"DECnet: dn_nsp_do_disc: BUG! Please report this to SteveW@ACM.org rem=%u dst=%p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@__sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"nsp_backoff\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 64, i32 12 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 411, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 2077, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 695, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 723, i32 2 }
@___asan_gen_.39 = private constant [27 x i8] c"../net/decnet/dn_nsp_out.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 534, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 231, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 1011, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @nsp_backoff, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_backoff to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dn_alloc_skb(ptr noundef %sk, i32 noundef %size, i32 noundef %pri) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size, 64
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef %pri, i32 noundef 0, i32 noundef -1) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 24579, ptr %protocol, align 8
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load, 8191
  %bf.set = or i16 %bf.clear, -32768
  store i16 %bf.set, ptr %pkt_type, align 8
  %tobool.not = icmp eq ptr %sk, null
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i, ptr noundef nonnull %sk) #8
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %5, i32 64
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dn_nsp_persist(ptr nocapture noundef %sk) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nsp_srtt = getelementptr %struct.sock, ptr %sk, i32 1, i32 7, i32 2, i32 0, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %nsp_srtt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nsp_srtt, align 4
  %nsp_rttvar = getelementptr %struct.sock, ptr %sk, i32 1, i32 8
  %2 = ptrtoint ptr %nsp_rttvar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nsp_rttvar, align 4
  %nsp_rxtshift = getelementptr %struct.sock, ptr %sk, i32 1, i32 8, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %nsp_rxtshift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nsp_rxtshift, align 4
  %arrayidx = getelementptr [13 x i32], ptr @nsp_backoff, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp6 = icmp ult i32 %5, 12
  br i1 %cmp6, label %if.then7, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add nuw nsw i32 %5, 1
  %8 = ptrtoint ptr %nsp_rxtshift to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc, ptr %nsp_rxtshift, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %entry.if.end9_crit_edge
  %shr = lshr i32 %1, 2
  %add = add i32 %shr, %3
  %shr1 = lshr i32 %add, 1
  %mul = mul i32 %shr1, %7
  %9 = tail call i32 @llvm.umax.i32(i32 %mul, i32 100)
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 60000)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_nsp_output(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.sock, ptr %sk, i32 1
  %other_xmit_queue = getelementptr %struct.sock, ptr %sk, i32 1, i32 9, i32 2
  %0 = ptrtoint ptr %other_xmit_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %other_xmit_queue, align 4
  %cmp.i = icmp eq ptr %1, %other_xmit_queue
  %cmp.not47 = icmp eq ptr %1, null
  %cmp.not = or i1 %cmp.i, %cmp.not47
  br i1 %cmp.not, label %entry.lor.lhs.false_crit_edge, label %if.then

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @skb_clone(ptr noundef nonnull %1, i32 noundef 2592) #8
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %if.then.lor.lhs.false_crit_edge, label %if.end

if.then.lor.lhs.false_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end:                                           ; preds = %if.then
  %xmit_count.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 18
  %2 = ptrtoint ptr %xmit_count.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %xmit_count.i, align 2
  %inc.i = add i16 %3, 1
  store i16 %inc.i, ptr %xmit_count.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %stamp.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 20
  %5 = ptrtoint ptr %stamp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %stamp.i, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %9, align 4
  tail call fastcc void @dn_nsp_send(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end.lor.lhs.false_crit_edge, label %if.end.if.then14_crit_edge

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.lor.lhs.false_crit_edge, %if.then.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %flowrem_sw = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 11
  %11 = ptrtoint ptr %flowrem_sw to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flowrem_sw, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp3.not = icmp eq i8 %12, 2
  br i1 %cmp3.not, label %if.end6, label %lor.lhs.false.if.end21_crit_edge

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end6:                                          ; preds = %lor.lhs.false
  %data_xmit_queue = getelementptr %struct.sock, ptr %sk, i32 1, i32 8, i32 1
  %13 = ptrtoint ptr %data_xmit_queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data_xmit_queue, align 4
  %cmp.i29 = icmp eq ptr %14, %data_xmit_queue
  %cmp8.not48 = icmp eq ptr %14, null
  %cmp8.not = or i1 %cmp.i29, %cmp8.not48
  br i1 %cmp8.not, label %if.end6.if.end21_crit_edge, label %if.then10

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then10:                                        ; preds = %if.end6
  %call.i31 = tail call ptr @skb_clone(ptr noundef nonnull %14, i32 noundef 2592) #8
  %cmp.not.i32 = icmp eq ptr %call.i31, null
  br i1 %cmp.not.i32, label %if.then10.if.end21_crit_edge, label %recalc_window

if.then10.if.end21_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

recalc_window:                                    ; preds = %if.then10
  %xmit_count.i33 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 3, i32 18
  %15 = ptrtoint ptr %xmit_count.i33 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %xmit_count.i33, align 2
  %inc.i35 = add i16 %16, 1
  store i16 %inc.i35, ptr %xmit_count.i33, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %stamp.i36 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 3, i32 20
  %18 = ptrtoint ptr %stamp.i36 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %stamp.i36, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %call.i31, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %22, align 4
  tail call fastcc void @dn_nsp_send(ptr noundef nonnull %call.i31) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool13.not = icmp eq i16 %16, 0
  br i1 %tobool13.not, label %recalc_window.if.end21_crit_edge, label %recalc_window.if.then14_crit_edge

recalc_window.if.then14_crit_edge:                ; preds = %recalc_window
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

recalc_window.if.end21_crit_edge:                 ; preds = %recalc_window
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then14:                                        ; preds = %recalc_window.if.then14_crit_edge, %if.end.if.then14_crit_edge
  %snd_window = getelementptr %struct.sock, ptr %sk, i32 1, i32 7, i32 2, i32 0, i32 0, i32 4, i32 6
  %24 = ptrtoint ptr %snd_window to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %snd_window, align 4
  %shr = lshr i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp16.inv = icmp ugt i32 %25, 1
  %spec.store.select = select i1 %cmp16.inv, i32 %shr, i32 1
  %26 = ptrtoint ptr %snd_window to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.store.select, ptr %snd_window, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %recalc_window.if.end21_crit_edge, %if.then10.if.end21_crit_edge, %if.end6.if.end21_crit_edge, %lor.lhs.false.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dn_nsp_xmit_timeout(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dn_nsp_output(ptr noundef %sk)
  %data_xmit_queue = getelementptr %struct.sock, ptr %sk, i32 1, i32 8, i32 1
  %0 = ptrtoint ptr %data_xmit_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data_xmit_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %data_xmit_queue
  br i1 %cmp.i.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %other_xmit_queue = getelementptr %struct.sock, ptr %sk, i32 1, i32 9, i32 2
  %2 = ptrtoint ptr %other_xmit_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %other_xmit_queue, align 4
  %cmp.i9.not = icmp eq ptr %3, %other_xmit_queue
  br i1 %cmp.i9.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %nsp_srtt.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 7, i32 2, i32 0, i32 0, i32 4, i32 7
  %4 = ptrtoint ptr %nsp_srtt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nsp_srtt.i, align 4
  %nsp_rttvar.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 8
  %6 = ptrtoint ptr %nsp_rttvar.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nsp_rttvar.i, align 4
  %nsp_rxtshift.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 8, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %nsp_rxtshift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nsp_rxtshift.i, align 4
  %arrayidx.i = getelementptr [13 x i32], ptr @nsp_backoff, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %9)
  %cmp6.i = icmp ult i32 %9, 12
  br i1 %cmp6.i, label %if.then7.i, label %if.then.dn_nsp_persist.exit_crit_edge

if.then.dn_nsp_persist.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_nsp_persist.exit

if.then7.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add nuw nsw i32 %9, 1
  %12 = ptrtoint ptr %nsp_rxtshift.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc.i, ptr %nsp_rxtshift.i, align 4
  br label %dn_nsp_persist.exit

dn_nsp_persist.exit:                              ; preds = %if.then7.i, %if.then.dn_nsp_persist.exit_crit_edge
  %shr.i = lshr i32 %5, 2
  %add.i = add i32 %shr.i, %7
  %shr1.i = lshr i32 %add.i, 1
  %mul.i = mul i32 %shr1.i, %11
  %13 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 100) #8
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 60000) #8
  %persist = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %persist to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %persist, align 4
  br label %if.end

if.end:                                           ; preds = %dn_nsp_persist.exit, %lor.lhs.false.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_nsp_queue_xmit(ptr noundef %sk, ptr noundef %skb, i32 noundef %gfp, i32 noundef %oth) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.sock, ptr %sk, i32 1
  %nsp_srtt = getelementptr %struct.sock, ptr %sk, i32 1, i32 7, i32 2, i32 0, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %nsp_srtt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nsp_srtt, align 4
  %shr = lshr i32 %1, 2
  %nsp_rttvar = getelementptr %struct.sock, ptr %sk, i32 1, i32 8
  %2 = ptrtoint ptr %nsp_rttvar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nsp_rttvar, align 4
  %add = add i32 %shr, %3
  %shr2 = lshr i32 %add, 1
  %xmit_count = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %4 = ptrtoint ptr %xmit_count to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %xmit_count, align 2
  %nsp_flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %5 = ptrtoint ptr %nsp_flags.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nsp_flags.i, align 1
  %numoth_rcv.i.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 5
  %7 = ptrtoint ptr %numoth_rcv.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %numoth_rcv.i.i, align 2
  %9 = and i16 %8, 4095
  %numdat_rcv.i.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %numdat_rcv.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %numdat_rcv.i.i, align 4
  %12 = and i16 %11, 4095
  %ackxmt_dat.i.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 7
  %13 = ptrtoint ptr %ackxmt_dat.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %ackxmt_dat.i.i, align 2
  %ackxmt_oth.i.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %ackxmt_oth.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %9, ptr %ackxmt_oth.i.i, align 4
  %15 = or i16 %12, -32768
  %16 = or i16 %9, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oth)
  %tobool18.not.i.i = icmp eq i32 %oth, 0
  %acknum.0.i.i = select i1 %tobool18.not.i.i, i16 %15, i16 %16
  %ackcrs.0.i.i = select i1 %tobool18.not.i.i, i16 %16, i16 %15
  %17 = or i16 %ackcrs.0.i.i, 8192
  %call.i.i.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 11) #8
  %incdec.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 1
  %18 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %6, ptr %call.i.i.i, align 1
  %addrrem.i.i.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 2
  %19 = ptrtoint ptr %addrrem.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addrrem.i.i.i, align 4
  %21 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %incdec.ptr.i.i.i, align 2
  %add.ptr.i43.i.i = getelementptr i8, ptr %call.i.i.i, i32 3
  %addrloc.i.i.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 1
  %22 = ptrtoint ptr %addrloc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addrloc.i.i.i, align 2
  %24 = ptrtoint ptr %add.ptr.i43.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %add.ptr.i43.i.i, align 2
  %add.ptr8.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 5
  %25 = tail call i16 @llvm.bswap.i16(i16 %acknum.0.i.i) #8
  %incdec.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 7
  %26 = ptrtoint ptr %add.ptr8.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %add.ptr8.i.i.i, align 2
  %27 = tail call i16 @llvm.bswap.i16(i16 %17) #8
  %28 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %incdec.ptr.i.i, align 2
  br i1 %tobool18.not.i.i, label %if.else.i, label %if.then.i, !prof !36

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %numoth.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 1
  br label %dn_nsp_mk_data_header.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %numdat.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 3
  br label %dn_nsp_mk_data_header.exit

dn_nsp_mk_data_header.exit:                       ; preds = %if.else.i, %if.then.i
  %numdat.sink2.i = phi ptr [ %numdat.i, %if.else.i ], [ %numoth.i, %if.then.i ]
  %29 = ptrtoint ptr %numdat.sink2.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %.sink.i = load i16, ptr %numdat.sink2.i, align 2
  %segnum6.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %30 = ptrtoint ptr %segnum6.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %.sink.i, ptr %segnum6.i, align 4
  %31 = load i16, ptr %numdat.sink2.i, align 2
  %add.i1.i = add i16 %31, 1
  %32 = and i16 %add.i1.i, 4095
  store i16 %32, ptr %numdat.sink2.i, align 2
  %incdec.ptr28.i.i = getelementptr i8, ptr %call.i.i.i, i32 9
  %33 = load i16, ptr %segnum6.i, align 4
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #8
  %35 = ptrtoint ptr %incdec.ptr28.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %incdec.ptr28.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %stamp = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 2
  %37 = ptrtoint ptr %stamp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stamp, align 4
  %sub = sub i32 %36, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %shr2)
  %cmp = icmp ugt i32 %sub, %shr2
  br i1 %cmp, label %if.then, label %dn_nsp_mk_data_header.exit.if.end_crit_edge

dn_nsp_mk_data_header.exit.if.end_crit_edge:      ; preds = %dn_nsp_mk_data_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %dn_nsp_mk_data_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  %snd_window = getelementptr %struct.sock, ptr %sk, i32 1, i32 7, i32 2, i32 0, i32 0, i32 4, i32 6
  %39 = ptrtoint ptr %snd_window to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %snd_window, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %dn_nsp_mk_data_header.exit.if.end_crit_edge
  %data_xmit_queue = getelementptr %struct.sock, ptr %sk, i32 1, i32 8, i32 1
  %other_xmit_queue = getelementptr %struct.sock, ptr %sk, i32 1, i32 9, i32 2
  %data_xmit_queue.sink = select i1 %tobool18.not.i.i, ptr %data_xmit_queue, ptr %other_xmit_queue
  tail call void @skb_queue_tail(ptr noundef %data_xmit_queue.sink, ptr noundef %skb) #8
  %flowrem_sw = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 11
  %40 = ptrtoint ptr %flowrem_sw to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %flowrem_sw, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp6.not = icmp eq i8 %41, 2
  br i1 %cmp6.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef %gfp) #8
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %if.end9.cleanup_crit_edge, label %if.then.i25

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i25:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %xmit_count to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %xmit_count, align 2
  %inc.i = add i16 %43, 1
  store i16 %inc.i, ptr %xmit_count, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %stamp.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %45 = ptrtoint ptr %stamp.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %stamp.i, align 4
  %46 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %49 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %49, align 4
  tail call fastcc void @dn_nsp_send(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i25, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dn_nsp_check_xmit_queue(ptr noundef %sk, ptr nocapture noundef readonly %skb, ptr noundef %q, i16 noundef zeroext %acknum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stamp = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %0 = ptrtoint ptr %stamp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stamp, align 4
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q, align 4
  %cmp.not92 = icmp eq ptr %3, %q
  br i1 %cmp.not92, label %entry.if.end58_crit_edge, label %for.body.lr.ph

entry.if.end58_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

for.body.lr.ph:                                   ; preds = %entry
  %conv6.i.i = zext i16 %acknum to i32
  %nsp_srtt.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 7, i32 2, i32 0, i32 0, i32 4, i32 7
  %nsp_rttvar.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 8
  %snd_window = getelementptr %struct.sock, ptr %sk, i32 1, i32 7, i32 2, i32 0, i32 0, i32 4, i32 6
  %max_window = getelementptr %struct.sock, ptr %sk, i32 1, i32 7, i32 2, i32 0, i32 0, i32 4, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %try_retrans.095 = phi i32 [ 0, %for.body.lr.ph ], [ %try_retrans.2, %cleanup.for.body_crit_edge ]
  %wakeup.094 = phi i32 [ 0, %for.body.lr.ph ], [ %wakeup.1, %cleanup.for.body_crit_edge ]
  %skb2.093 = phi ptr [ %3, %for.body.lr.ph ], [ %n.096, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %skb2.093 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.096 = load ptr, ptr %skb2.093, align 8
  %segnum5 = getelementptr inbounds %struct.sk_buff, ptr %skb2.093, i32 0, i32 3, i32 16
  %5 = ptrtoint ptr %segnum5 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %segnum5, align 4
  %conv5.i.i = zext i16 %6 to i32
  %sub.i.i = sub nsw i32 %conv5.i.i, %conv6.i.i
  %and7.i.i = and i32 %sub.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and7.i.i)
  %cmp.i.i = icmp ugt i32 %and7.i.i, 2048
  %xor3.i.i = xor i16 %6, %acknum
  %7 = and i16 %xor3.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.i5.i = icmp eq i16 %7, 0
  %narrow.i = or i1 %cmp.i5.i, %cmp.i.i
  %cmp790 = icmp ne ptr %skb2.093, null
  %8 = and i1 %cmp790, %narrow.i
  br i1 %8, label %if.end9, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %stamp10 = getelementptr inbounds %struct.sk_buff, ptr %skb2.093, i32 0, i32 3, i32 20
  %9 = ptrtoint ptr %stamp10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stamp10, align 4
  %xmit_count11 = getelementptr inbounds %struct.sk_buff, ptr %skb2.093, i32 0, i32 3, i32 18
  %11 = ptrtoint ptr %xmit_count11 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %xmit_count11, align 2
  tail call void @skb_unlink(ptr noundef nonnull %skb2.093, ptr noundef %q) #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb2.093, i32 noundef 0) #8
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i16 %12, label %if.end9.if.end49_crit_edge [
    i16 0, label %do.end
    i16 1, label %if.then39
  ], !prof !37

if.end9.if.end49_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 411, i32 noundef 9, ptr noundef null) #8
  br label %if.end49

if.then39:                                        ; preds = %if.end9
  br i1 %cmp.i5.i, label %if.then42, label %if.then39.if.end43_crit_edge

if.then39.if.end43_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %10, %1
  %14 = ptrtoint ptr %nsp_srtt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nsp_srtt.i, align 4
  %16 = ptrtoint ptr %nsp_rttvar.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nsp_rttvar.i, align 4
  %18 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false) #8
  %shl.i = shl i32 %18, 3
  %sub1.i = sub i32 %shl.i, %15
  %shr.i = ashr i32 %sub1.i, 3
  %add.i = add i32 %shr.i, %15
  %19 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #8
  %20 = ptrtoint ptr %nsp_srtt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %nsp_srtt.i, align 4
  %shr7.i = ashr i32 %sub1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub1.i)
  %cmp8.i = icmp sgt i32 %sub1.i, 1
  %sub9.i = sub nsw i32 0, %shr7.i
  %cond.i = select i1 %cmp8.i, i32 %shr7.i, i32 %sub9.i
  %sub10.i = sub i32 %cond.i, %17
  %shr11.i = ashr i32 %sub10.i, 2
  %add12.i = add i32 %shr11.i, %17
  %21 = tail call i32 @llvm.smax.i32(i32 %add12.i, i32 1) #8
  %22 = ptrtoint ptr %nsp_rttvar.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %nsp_rttvar.i, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.then39.if.end43_crit_edge
  %23 = ptrtoint ptr %snd_window to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %snd_window, align 4
  %25 = ptrtoint ptr %max_window to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_window, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp44 = icmp ult i32 %24, %26
  br i1 %cmp44, label %if.then46, label %if.end43.if.end49_crit_edge

if.end43.if.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add nuw i32 %24, 1
  %27 = ptrtoint ptr %snd_window to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %inc, ptr %snd_window, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end43.if.end49_crit_edge, %do.end, %if.end9.if.end49_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp51 = icmp ugt i16 %12, 1
  %spec.select89 = zext i1 %cmp51 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %for.body.cleanup_crit_edge
  %wakeup.1 = phi i32 [ 1, %if.end49 ], [ %wakeup.094, %for.body.cleanup_crit_edge ]
  %try_retrans.2 = phi i32 [ %spec.select89, %if.end49 ], [ %try_retrans.095, %for.body.cleanup_crit_edge ]
  %cmp.not = icmp eq ptr %n.096, %q
  br i1 %cmp.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %try_retrans.2)
  %tobool56.not = icmp eq i32 %try_retrans.2, 0
  br i1 %tobool56.not, label %for.end.if.end58_crit_edge, label %if.then57

for.end.if.end58_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then57:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dn_nsp_output(ptr noundef %sk)
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %for.end.if.end58_crit_edge, %entry.if.end58_crit_edge
  %wakeup.0.lcssa101 = phi i32 [ %wakeup.1, %if.then57 ], [ %wakeup.1, %for.end.if.end58_crit_edge ], [ 0, %entry.if.end58_crit_edge ]
  ret i32 %wakeup.0.lcssa101
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_nsp_send_data_ack(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 73, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 24579, ptr %protocol.i, align 8
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %1 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  %bf.set.i = or i16 %bf.clear.i, -32768
  store i16 %bf.set.i, ptr %pkt_type.i, align 8
  %tobool.not.i = icmp eq ptr %sk, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.then1.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i.i, ptr noundef nonnull %sk) #8
  br label %if.end

if.end:                                           ; preds = %if.then1.i, %if.end.i.if.end_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 73
  store ptr %add.ptr.i, ptr %data.i.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %5, i32 73
  store ptr %add.ptr1.i, ptr %tail.i.i, align 8
  %add.ptr.i.i5 = getelementptr %struct.sock, ptr %sk, i32 1
  %numoth_rcv.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i5, i32 0, i32 5
  %6 = ptrtoint ptr %numoth_rcv.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %numoth_rcv.i, align 2
  %8 = and i16 %7, 4095
  %numdat_rcv.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %numdat_rcv.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %numdat_rcv.i, align 4
  %11 = and i16 %10, 4095
  %ackxmt_dat.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i5, i32 0, i32 7
  %12 = ptrtoint ptr %ackxmt_dat.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %ackxmt_dat.i, align 2
  %ackxmt_oth.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %ackxmt_oth.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %8, ptr %ackxmt_oth.i, align 4
  %14 = or i16 %11, -32768
  %15 = or i16 %8, -24576
  %call.i.i6 = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 9) #8
  %incdec.ptr.i.i = getelementptr i8, ptr %call.i.i6, i32 1
  %16 = ptrtoint ptr %call.i.i6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %call.i.i6, align 1
  %addrrem.i.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i5, i32 0, i32 2
  %17 = ptrtoint ptr %addrrem.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addrrem.i.i, align 4
  %19 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %incdec.ptr.i.i, align 2
  %add.ptr.i43.i = getelementptr i8, ptr %call.i.i6, i32 3
  %addrloc.i.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i5, i32 0, i32 1
  %20 = ptrtoint ptr %addrloc.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addrloc.i.i, align 2
  %22 = ptrtoint ptr %add.ptr.i43.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %add.ptr.i43.i, align 2
  %add.ptr8.i.i = getelementptr i8, ptr %call.i.i6, i32 5
  %23 = tail call i16 @llvm.bswap.i16(i16 %14) #8
  %incdec.ptr.i = getelementptr i8, ptr %call.i.i6, i32 7
  %24 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %add.ptr8.i.i, align 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %15) #8
  %26 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %incdec.ptr.i, align 2
  tail call fastcc void @dn_nsp_send(ptr noundef nonnull %call.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dn_nsp_send(ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %fld = alloca %struct.flowidn, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fld) #8
  %3 = call ptr @memset(ptr %fld, i32 255, i32 48)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %8 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %transport_header.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %stamp = getelementptr %struct.sock, ptr %2, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %stamp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %stamp, align 4
  %call1 = tail call ptr @sk_dst_check(ptr noundef %2, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end, label %entry.try_again_crit_edge

entry.try_again_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %try_again

try_again:                                        ; preds = %sk_dst_get.exit, %entry.try_again_crit_edge
  %dst.0 = phi ptr [ %call1, %entry.try_again_crit_edge ], [ %dst.0.i, %sk_dst_get.exit ]
  %tobool.not.i = icmp eq ptr %dst.0, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %11 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %12 = ptrtoint ptr %dst.0 to i32
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %13, align 8
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %try_again.dst_output.exit_crit_edge, label %land.lhs.true.i.i

try_again.dst_output.exit_crit_edge:              ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #10
  br label %dst_output.exit

land.lhs.true.i.i:                                ; preds = %try_again
  %call.i.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_output.exit_crit_edge

land.lhs.true.i.i.dst_output.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dst_output.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_output.exit_crit_edge, !prof !38

land.rhs.i.i.dst_output.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dst_output.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %dst_output.exit

dst_output.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.dst_output.exit_crit_edge, %land.lhs.true.i.i.dst_output.exit_crit_edge, %try_again.dst_output.exit_crit_edge
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %13, align 8
  %and25.i.i = and i32 %18, -2
  %19 = inttoptr i32 %and25.i.i to ptr
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %output.i, align 4
  %call1.i = call i32 %21(ptr noundef nonnull @init_net, ptr noundef %16, ptr noundef %skb) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr %struct.sock, ptr %2, i32 1
  %22 = call ptr @memset(ptr %fld, i32 0, i32 40)
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 6
  %23 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %skc_bound_dev_if, align 4
  %25 = ptrtoint ptr %fld to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %fld, align 8
  %a_addr.i = getelementptr %struct.sock, ptr %2, i32 1, i32 7, i32 2, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %a_addr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %a_addr.i, align 2
  %saddr = getelementptr inbounds %struct.flowidn, ptr %fld, i32 0, i32 2
  %28 = ptrtoint ptr %saddr to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %saddr, align 2
  %peer = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 33
  %a_addr.i35 = getelementptr inbounds %struct.sockaddr_dn, ptr %peer, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %a_addr.i35 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %a_addr.i35, align 2
  %daddr = getelementptr inbounds %struct.flowidn, ptr %fld, i32 0, i32 1
  %31 = ptrtoint ptr %daddr to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %daddr, align 8
  %addrloc.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 1
  %32 = ptrtoint ptr %addrloc.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %addrloc.i, align 2
  %uli.i = getelementptr inbounds %struct.flowidn, ptr %fld, i32 0, i32 3
  %sport.i = getelementptr inbounds %struct.anon.22, ptr %uli.i, i32 0, i32 1
  %34 = ptrtoint ptr %sport.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %sport.i, align 2
  %addrrem.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 2
  %35 = ptrtoint ptr %addrrem.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %addrrem.i, align 4
  %37 = ptrtoint ptr %uli.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %uli.i, align 4
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fld, i32 0, i32 5
  %38 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %flowic_proto, align 2
  %sk_dst_cache = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 19
  %call6 = call i32 @dn_route_output_sock(ptr noundef %sk_dst_cache, ptr noundef nonnull %fld, ptr noundef %2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp eq i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %39 = call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %42, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !39
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i36 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i36, label %if.then7.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i38

if.then7.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i38:                              ; preds = %if.then7
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i37 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i37, label %land.lhs.true.i.i38.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i38.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i38
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i38.rcu_read_lock.exit.i_crit_edge, %if.then7.rcu_read_lock.exit.i_crit_edge
  %43 = ptrtoint ptr %sk_dst_cache to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %sk_dst_cache, align 4
  %call.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i39 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i39, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b16.i = load i1, ptr @sk_dst_get.__warned, align 1
  br i1 %.b16.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @sk_dst_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2077, ptr noundef nonnull @.str.2) #8
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %44, null
  br i1 %tobool9.not.i, label %do.end7.i.if.end13.i_crit_edge, label %land.lhs.true10.i

do.end7.i.if.end13.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

land.lhs.true10.i:                                ; preds = %do.end7.i
  %__refcnt.i = getelementptr inbounds %struct.dst_entry, ptr %44, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  call void @llvm.prefetch.p0(ptr %__refcnt.i, i32 1, i32 3, i32 1) #8
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i, ptr %__refcnt.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i) #8, !srcloc !41
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %land.lhs.true10.i.if.end13.i_crit_edge, label %do.end11.i.i.i.i.i

land.lhs.true10.i.if.end13.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

do.end11.i.i.i.i.i:                               ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end11.i.i.i.i.i, %land.lhs.true10.i.if.end13.i_crit_edge, %do.end7.i.if.end13.i_crit_edge
  %dst.0.i = phi ptr [ null, %do.end7.i.if.end13.i_crit_edge ], [ null, %land.lhs.true10.i.if.end13.i_crit_edge ], [ %44, %do.end11.i.i.i.i.i ]
  %call.i17.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i17.i, label %if.end13.i.sk_dst_get.exit_crit_edge, label %land.lhs.true.i20.i

if.end13.i.sk_dst_get.exit_crit_edge:             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sk_dst_get.exit

land.lhs.true.i20.i:                              ; preds = %if.end13.i
  %call1.i18.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call1.i18.i, 0
  br i1 %tobool.not.i19.i, label %land.lhs.true.i20.i.sk_dst_get.exit_crit_edge, label %land.lhs.true2.i22.i

land.lhs.true.i20.i.sk_dst_get.exit_crit_edge:    ; preds = %land.lhs.true.i20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sk_dst_get.exit

land.lhs.true2.i22.i:                             ; preds = %land.lhs.true.i20.i
  %.b4.i21.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21.i, label %land.lhs.true2.i22.i.sk_dst_get.exit_crit_edge, label %if.then.i23.i

land.lhs.true2.i22.i.sk_dst_get.exit_crit_edge:   ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sk_dst_get.exit

if.then.i23.i:                                    ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %sk_dst_get.exit

sk_dst_get.exit:                                  ; preds = %if.then.i23.i, %land.lhs.true2.i22.i.sk_dst_get.exit_crit_edge, %land.lhs.true.i20.i.sk_dst_get.exit_crit_edge, %if.end13.i.sk_dst_get.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !43
  %46 = call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i.i.i24.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i24.i to ptr
  %preempt_count.i.i.i.i25.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i25.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i25.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %50 = ptrtoint ptr %dst.0.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dst.0.i, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 23
  %52 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %features, align 16
  %sk_route_caps = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 38
  %54 = ptrtoint ptr %sk_route_caps to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %sk_route_caps, align 8
  br label %try_again

if.end9:                                          ; preds = %if.end
  %sk_err = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 51
  %55 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 113, ptr %sk_err, align 4
  %56 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %56, align 4
  %and1.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then11, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 76
  %59 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sk_state_change, align 4
  call void %60(ptr noundef %2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end9.cleanup_crit_edge, %dst_output.exit
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fld) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_nsp_send_oth_ack(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 73, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 24579, ptr %protocol.i, align 8
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %1 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  %bf.set.i = or i16 %bf.clear.i, -32768
  store i16 %bf.set.i, ptr %pkt_type.i, align 8
  %tobool.not.i = icmp eq ptr %sk, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.then1.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i.i, ptr noundef nonnull %sk) #8
  br label %if.end

if.end:                                           ; preds = %if.then1.i, %if.end.i.if.end_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 73
  store ptr %add.ptr.i, ptr %data.i.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %5, i32 73
  store ptr %add.ptr1.i, ptr %tail.i.i, align 8
  %add.ptr.i.i5 = getelementptr %struct.sock, ptr %sk, i32 1
  %numoth_rcv.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i5, i32 0, i32 5
  %6 = ptrtoint ptr %numoth_rcv.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %numoth_rcv.i, align 2
  %8 = and i16 %7, 4095
  %numdat_rcv.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %numdat_rcv.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %numdat_rcv.i, align 4
  %11 = and i16 %10, 4095
  %ackxmt_dat.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i5, i32 0, i32 7
  %12 = ptrtoint ptr %ackxmt_dat.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %ackxmt_dat.i, align 2
  %ackxmt_oth.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %ackxmt_oth.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %8, ptr %ackxmt_oth.i, align 4
  %14 = or i16 %8, -32768
  %15 = or i16 %11, -24576
  %call.i.i6 = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 9) #8
  %incdec.ptr.i.i = getelementptr i8, ptr %call.i.i6, i32 1
  %16 = ptrtoint ptr %call.i.i6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 20, ptr %call.i.i6, align 1
  %addrrem.i.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i5, i32 0, i32 2
  %17 = ptrtoint ptr %addrrem.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addrrem.i.i, align 4
  %19 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %incdec.ptr.i.i, align 2
  %add.ptr.i43.i = getelementptr i8, ptr %call.i.i6, i32 3
  %addrloc.i.i = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i.i5, i32 0, i32 1
  %20 = ptrtoint ptr %addrloc.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addrloc.i.i, align 2
  %22 = ptrtoint ptr %add.ptr.i43.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %add.ptr.i43.i, align 2
  %add.ptr8.i.i = getelementptr i8, ptr %call.i.i6, i32 5
  %23 = tail call i16 @llvm.bswap.i16(i16 %14) #8
  %incdec.ptr.i = getelementptr i8, ptr %call.i.i6, i32 7
  %24 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %add.ptr8.i.i, align 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %15) #8
  %26 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %incdec.ptr.i, align 2
  tail call fastcc void @dn_nsp_send(ptr noundef nonnull %call.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_send_conn_ack(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.sock, ptr %sk, i32 1
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %0 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_allocation, align 8
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 67, i32 noundef %1, i32 noundef 0, i32 noundef -1) #8
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 24579, ptr %protocol.i, align 8
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %3 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  %bf.set.i = or i16 %bf.clear.i, -32768
  store i16 %bf.set.i, ptr %pkt_type.i, align 8
  %tobool.not.i = icmp eq ptr %sk, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.then1.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i.i, ptr noundef nonnull %sk) #8
  br label %if.end

if.end:                                           ; preds = %if.then1.i, %if.end.i.if.end_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 64
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %7, i32 64
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 3) #8
  %8 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 36, ptr %call2, align 1
  %addrrem = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 2
  %9 = ptrtoint ptr %addrrem to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addrrem, align 4
  %dstaddr = getelementptr inbounds %struct.nsp_conn_ack_msg, ptr %call2, i32 0, i32 1
  %11 = ptrtoint ptr %dstaddr to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %dstaddr, align 1
  tail call fastcc void @dn_nsp_send(ptr noundef nonnull %call.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_send_conn_conf(ptr noundef %sk, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.sock, ptr %sk, i32 1
  %opt_optl = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 28, i32 1
  %0 = ptrtoint ptr %opt_optl to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %opt_optl, align 2
  %2 = lshr i16 %1, 8
  %conv1 = zext i16 %2 to i32
  %add.i = add nuw nsw i32 %conv1, 114
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef %gfp, i32 noundef 0, i32 noundef -1) #8
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %3 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 24579, ptr %protocol.i, align 8
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %4 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  %bf.set.i = or i16 %bf.clear.i, -32768
  store i16 %bf.set.i, ptr %pkt_type.i, align 8
  %tobool.not.i = icmp eq ptr %sk, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.then1.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i.i, ptr noundef nonnull %sk) #8
  br label %if.end

if.end:                                           ; preds = %if.then1.i, %if.end.i.if.end_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 64
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %8, i32 64
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %conv = trunc i16 %2 to i8
  %call4 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 9) #8
  %9 = ptrtoint ptr %call4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 40, ptr %call4, align 1
  %addrrem = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 2
  %10 = ptrtoint ptr %addrrem to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addrrem, align 4
  %dstaddr = getelementptr inbounds %struct.nsp_conn_init_msg, ptr %call4, i32 0, i32 1
  %12 = ptrtoint ptr %dstaddr to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %dstaddr, align 1
  %addrloc = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 1
  %13 = ptrtoint ptr %addrloc to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addrloc, align 2
  %srcaddr = getelementptr inbounds %struct.nsp_conn_init_msg, ptr %call4, i32 0, i32 2
  %15 = ptrtoint ptr %srcaddr to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %srcaddr, align 1
  %services_loc = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 18
  %16 = ptrtoint ptr %services_loc to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %services_loc, align 1
  %services = getelementptr inbounds %struct.nsp_conn_init_msg, ptr %call4, i32 0, i32 3
  %18 = ptrtoint ptr %services to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %services, align 1
  %info_loc = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 20
  %19 = ptrtoint ptr %info_loc to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %info_loc, align 1
  %info = getelementptr inbounds %struct.nsp_conn_init_msg, ptr %call4, i32 0, i32 4
  %21 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %info, align 1
  %segsize_loc = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 22
  %22 = ptrtoint ptr %segsize_loc to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %segsize_loc, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %segsize = getelementptr inbounds %struct.nsp_conn_init_msg, ptr %call4, i32 0, i32 5
  %25 = ptrtoint ptr %segsize to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %segsize, align 1
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %call.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %1)
  %cmp6.not = icmp ult i16 %1, 256
  br i1 %cmp6.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %opt_data = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 12
  %call.i38 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv1) #8
  %27 = call ptr @memcpy(ptr %call.i38, ptr %opt_data, i32 %conv1)
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  tail call fastcc void @dn_nsp_send(ptr noundef nonnull %call.i.i)
  %nsp_srtt.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 7, i32 2, i32 0, i32 0, i32 4, i32 7
  %28 = ptrtoint ptr %nsp_srtt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nsp_srtt.i, align 4
  %nsp_rttvar.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 8
  %30 = ptrtoint ptr %nsp_rttvar.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nsp_rttvar.i, align 4
  %nsp_rxtshift.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 8, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %nsp_rxtshift.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nsp_rxtshift.i, align 4
  %arrayidx.i = getelementptr [13 x i32], ptr @nsp_backoff, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %33)
  %cmp6.i = icmp ult i32 %33, 12
  br i1 %cmp6.i, label %if.then7.i, label %if.end12.dn_nsp_persist.exit_crit_edge

if.end12.dn_nsp_persist.exit_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_nsp_persist.exit

if.then7.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add nuw nsw i32 %33, 1
  %36 = ptrtoint ptr %nsp_rxtshift.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %inc.i, ptr %nsp_rxtshift.i, align 4
  br label %dn_nsp_persist.exit

dn_nsp_persist.exit:                              ; preds = %if.then7.i, %if.end12.dn_nsp_persist.exit_crit_edge
  %shr.i = lshr i32 %29, 2
  %add.i39 = add i32 %shr.i, %31
  %shr1.i = lshr i32 %add.i39, 1
  %mul.i = mul i32 %shr1.i, %35
  %37 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 100) #8
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 60000) #8
  %persist = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 3
  %39 = ptrtoint ptr %persist to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %persist, align 4
  %persist_fxn = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 6
  %40 = ptrtoint ptr %persist_fxn to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @dn_nsp_retrans_conn_conf, ptr %persist_fxn, align 4
  br label %cleanup

cleanup:                                          ; preds = %dn_nsp_persist.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_nsp_retrans_conn_conf(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.sock, ptr %sk, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp = icmp eq i8 %1, 5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dn_send_conn_conf(ptr noundef %sk, i32 noundef 2592)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_nsp_send_disc(ptr noundef %sk, i8 noundef zeroext %msgflg, i16 noundef zeroext %reason, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.sock, ptr %sk, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %msgflg)
  %cmp = icmp eq i8 %msgflg, 56
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %opt_optl = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 30, i32 1
  %0 = ptrtoint ptr %opt_optl to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %opt_optl, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv2 = zext i16 %2 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ddl.0 = phi i32 [ %conv2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %reason)
  %cmp4 = icmp eq i16 %reason, 0
  br i1 %cmp4, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %discdata_out7 = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 30
  %3 = ptrtoint ptr %discdata_out7 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %discdata_out7, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %reason.addr.0 = phi i16 [ %5, %if.then6 ], [ %reason, %if.end.if.end8_crit_edge ]
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %6 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %sk_dst_cache.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %if.end8.__sk_dst_get.exit_crit_edge

if.end8.__sk_dst_get.exit_crit_edge:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit

lockdep_sock_is_held.exit.i:                      ; preds = %if.end8
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %lor.lhs.false.i, label %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge

lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit

lor.lhs.false.i:                                  ; preds = %lockdep_sock_is_held.exit.i
  %call2.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__sk_dst_get.exit_crit_edge

lor.lhs.false.i.__sk_dst_get.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__sk_dst_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__sk_dst_get.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b11.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__sk_dst_get.exit_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2068, ptr noundef nonnull @.str.2) #8
  br label %__sk_dst_get.exit

__sk_dst_get.exit:                                ; preds = %if.then.i, %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, %land.lhs.true.i.__sk_dst_get.exit_crit_edge, %lor.lhs.false.i.__sk_dst_get.exit_crit_edge, %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge, %if.end8.__sk_dst_get.exit_crit_edge
  %opt_data = getelementptr %struct.sock, ptr %sk, i32 1, i32 1
  %addrrem = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 2
  %8 = ptrtoint ptr %addrrem to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addrrem, align 4
  %addrloc = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 1
  %10 = ptrtoint ptr %addrloc to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addrloc, align 2
  tail call fastcc void @dn_nsp_do_disc(ptr noundef %sk, i8 noundef zeroext %msgflg, i16 noundef zeroext %reason.addr.0, i32 noundef %gfp, ptr noundef %7, i32 noundef %ddl.0, ptr noundef %opt_data, i16 noundef zeroext %9, i16 noundef zeroext %11)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dn_nsp_do_disc(ptr noundef %sk, i8 noundef zeroext %msgflg, i16 noundef zeroext %reason, i32 noundef %gfp, ptr noundef %dst, i32 noundef %ddl, ptr nocapture noundef readonly %dd, i16 noundef zeroext %rem, i16 noundef zeroext %loc) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %msgflg)
  %cmp = icmp eq i8 %msgflg, 56
  %add = select i1 %cmp, i32 8, i32 7
  %add2 = add i32 %add, %ddl
  %cmp3 = icmp eq ptr %dst, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem)
  %cmp6 = icmp eq i16 %rem, 0
  %or.cond = or i1 %cmp3, %cmp6
  br i1 %or.cond, label %do.body, label %if.end14

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dn_nsp_do_disc.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dn_nsp_do_disc, %land.lhs.true)) #8
          to label %cleanup [label %land.lhs.true], !srcloc !44

land.lhs.true:                                    ; preds = %do.body
  %call10 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.cleanup_crit_edge, label %if.then12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i16 @llvm.bswap.i16(i16 %rem)
  %conv13 = zext i16 %0 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dn_nsp_do_disc.descriptor, ptr noundef nonnull @.str.8, i32 noundef %conv13, ptr noundef %dst) #8
  br label %cleanup

if.end14:                                         ; preds = %entry
  %add.i = add i32 %add2, 64
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef %gfp, i32 noundef 0, i32 noundef -1) #8
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %if.end14.cleanup_crit_edge, label %if.end.i

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end14
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %1 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 24579, ptr %protocol.i, align 8
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %2 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  %bf.set.i = or i16 %bf.clear.i, -32768
  store i16 %bf.set.i, ptr %pkt_type.i, align 8
  %tobool.not.i = icmp eq ptr %sk, null
  br i1 %tobool.not.i, label %if.end.i.if.end19_crit_edge, label %if.then1.i

if.end.i.if.end19_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i.i, ptr noundef nonnull %sk) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then1.i, %if.end.i.if.end19_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 64
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %6, i32 64
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call20 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add2) #8
  %incdec.ptr = getelementptr i8, ptr %call20, i32 1
  %7 = ptrtoint ptr %call20 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %msgflg, ptr %call20, align 1
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %rem, ptr %incdec.ptr, align 2
  %add.ptr = getelementptr i8, ptr %call20, i32 3
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %loc, ptr %add.ptr, align 2
  %add.ptr21 = getelementptr i8, ptr %call20, i32 5
  %10 = tail call i16 @llvm.bswap.i16(i16 %reason)
  %11 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %add.ptr21, align 2
  %add.ptr22 = getelementptr i8, ptr %call20, i32 7
  br i1 %cmp, label %if.then26, label %if.end19.if.end29_crit_edge

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then26:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %conv27 = trunc i32 %ddl to i8
  %incdec.ptr28 = getelementptr i8, ptr %call20, i32 8
  %12 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv27, ptr %add.ptr22, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end19.if.end29_crit_edge
  %msg.0 = phi ptr [ %incdec.ptr28, %if.then26 ], [ %add.ptr22, %if.end19.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ddl)
  %tobool30.not = icmp eq i32 %ddl, 0
  br i1 %tobool30.not, label %if.end29.if.then.i_crit_edge, label %if.then31

if.end29.if.then.i_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %13 = call ptr @memcpy(ptr %msg.0, ptr %dd, i32 %ddl)
  br label %if.then.i

if.then.i:                                        ; preds = %if.then31, %if.end29.if.then.i_crit_edge
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end10.i.i, label %atomic_inc_not_zero.exit.thread.i.i

atomic_inc_not_zero.exit.thread.i.i:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  br label %dst_clone.exit

do.end10.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 231, i32 noundef 9, ptr noundef null) #8
  br label %dst_clone.exit

dst_clone.exit:                                   ; preds = %do.end10.i.i, %atomic_inc_not_zero.exit.thread.i.i
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 3
  %15 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %bf.load.i61 = load i32, ptr %slow_gro.i, align 2
  %bf.set.i62 = or i32 %bf.load.i61, 4096
  store i32 %bf.set.i62, ptr %slow_gro.i, align 2
  %16 = ptrtoint ptr %dst to i32
  %17 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %17, align 8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %dst_clone.exit.dst_output.exit_crit_edge, label %land.lhs.true.i.i

dst_clone.exit.dst_output.exit_crit_edge:         ; preds = %dst_clone.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dst_output.exit

land.lhs.true.i.i:                                ; preds = %dst_clone.exit
  %call.i.i63 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i63)
  %tobool1.not.i.i = icmp eq i32 %call.i.i63, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_output.exit_crit_edge

land.lhs.true.i.i.dst_output.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dst_output.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_output.exit_crit_edge, !prof !38

land.rhs.i.i.dst_output.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dst_output.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %dst_output.exit

dst_output.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.dst_output.exit_crit_edge, %land.lhs.true.i.i.dst_output.exit_crit_edge, %dst_clone.exit.dst_output.exit_crit_edge
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %17, align 8
  %and25.i.i = and i32 %23, -2
  %24 = inttoptr i32 %and25.i.i to ptr
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %output.i, align 4
  %call1.i = tail call i32 %26(ptr noundef nonnull @init_net, ptr noundef %21, ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %dst_output.exit, %if.end14.cleanup_crit_edge, %if.then12, %land.lhs.true.cleanup_crit_edge, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_nsp_return_disc(ptr nocapture noundef readonly %skb, i8 noundef zeroext %msgflg, i16 noundef zeroext %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !38

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %src_port = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %src_port, align 4
  %dst_port = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %8 = ptrtoint ptr %dst_port to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dst_port, align 2
  tail call fastcc void @dn_nsp_do_disc(ptr noundef null, i8 noundef zeroext %msgflg, i16 noundef zeroext %reason, i32 noundef 2592, ptr noundef %5, i32 noundef 0, ptr noundef null, i16 noundef zeroext %7, i16 noundef zeroext %9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_nsp_send_link(ptr noundef %sk, i8 noundef zeroext %lsflags, i8 noundef zeroext %fcval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 77, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 24579, ptr %protocol.i, align 8
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %1 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  %bf.set.i = or i16 %bf.clear.i, -32768
  store i16 %bf.set.i, ptr %pkt_type.i, align 8
  %tobool.not.i = icmp eq ptr %sk, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.then1.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i.i, ptr noundef nonnull %sk) #8
  br label %if.end

if.end:                                           ; preds = %if.then1.i, %if.end.i.if.end_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i16 = getelementptr i8, ptr %3, i32 75
  store ptr %add.ptr.i16, ptr %data.i.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %5, i32 75
  store ptr %add.ptr1.i, ptr %tail.i.i, align 8
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2) #8
  %nsp_flags = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 13
  %6 = ptrtoint ptr %nsp_flags to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %nsp_flags, align 1
  %incdec.ptr = getelementptr i8, ptr %call2, i32 1
  %7 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %lsflags, ptr %call2, align 1
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %fcval, ptr %incdec.ptr, align 1
  tail call void @dn_nsp_queue_xmit(ptr noundef %sk, ptr noundef nonnull %call.i.i, i32 noundef 2592, i32 noundef 1)
  %nsp_srtt.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 7, i32 2, i32 0, i32 0, i32 4, i32 7
  %9 = ptrtoint ptr %nsp_srtt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nsp_srtt.i, align 4
  %nsp_rttvar.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 8
  %11 = ptrtoint ptr %nsp_rttvar.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nsp_rttvar.i, align 4
  %nsp_rxtshift.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 8, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %nsp_rxtshift.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nsp_rxtshift.i, align 4
  %arrayidx.i = getelementptr [13 x i32], ptr @nsp_backoff, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %14)
  %cmp6.i = icmp ult i32 %14, 12
  br i1 %cmp6.i, label %if.then7.i, label %if.end.dn_nsp_persist.exit_crit_edge

if.end.dn_nsp_persist.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_nsp_persist.exit

if.then7.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add nuw nsw i32 %14, 1
  %17 = ptrtoint ptr %nsp_rxtshift.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %inc.i, ptr %nsp_rxtshift.i, align 4
  br label %dn_nsp_persist.exit

dn_nsp_persist.exit:                              ; preds = %if.then7.i, %if.end.dn_nsp_persist.exit_crit_edge
  %shr.i = lshr i32 %10, 2
  %add.i = add i32 %shr.i, %12
  %shr1.i = lshr i32 %add.i, 1
  %mul.i = mul i32 %shr1.i, %16
  %18 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 100) #8
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 60000) #8
  %persist = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 3
  %20 = ptrtoint ptr %persist to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %persist, align 4
  %persist_fxn = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 6
  %21 = ptrtoint ptr %persist_fxn to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @dn_nsp_xmit_timeout, ptr %persist_fxn, align 4
  br label %cleanup

cleanup:                                          ; preds = %dn_nsp_persist.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_nsp_send_conninit(ptr noundef %sk, i8 noundef zeroext %msgflg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.sock, ptr %sk, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %msgflg)
  %cmp = icmp eq i8 %msgflg, 24
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %0 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_allocation, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ 2592, %entry.cond.end_crit_edge ]
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 264, i32 noundef %cond, i32 noundef 0, i32 noundef -1) #8
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %cond.end.cleanup_crit_edge, label %if.end.i

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %cond.end
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 24579, ptr %protocol.i, align 8
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %3 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  %bf.set.i = or i16 %bf.clear.i, -32768
  store i16 %bf.set.i, ptr %pkt_type.i, align 8
  %tobool.not.i = icmp eq ptr %sk, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.then1.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i.i, ptr noundef nonnull %sk) #8
  br label %if.end

if.end:                                           ; preds = %if.then1.i, %if.end.i.if.end_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 64
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %7, i32 64
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call4 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 9) #8
  %8 = ptrtoint ptr %call4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %msgflg, ptr %call4, align 1
  %dstaddr = getelementptr inbounds %struct.nsp_conn_init_msg, ptr %call4, i32 0, i32 1
  %9 = ptrtoint ptr %dstaddr to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 0, ptr %dstaddr, align 1
  %addrloc = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 1
  %10 = ptrtoint ptr %addrloc to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addrloc, align 2
  %srcaddr = getelementptr inbounds %struct.nsp_conn_init_msg, ptr %call4, i32 0, i32 2
  %12 = ptrtoint ptr %srcaddr to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %srcaddr, align 1
  %services_loc = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 18
  %13 = ptrtoint ptr %services_loc to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %services_loc, align 1
  %services = getelementptr inbounds %struct.nsp_conn_init_msg, ptr %call4, i32 0, i32 3
  %15 = ptrtoint ptr %services to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %services, align 1
  %info_loc = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 20
  %16 = ptrtoint ptr %info_loc to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %info_loc, align 1
  %info = getelementptr inbounds %struct.nsp_conn_init_msg, ptr %call4, i32 0, i32 4
  %18 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %info, align 1
  %segsize_loc = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 22
  %19 = ptrtoint ptr %segsize_loc to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %segsize_loc, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %segsize = getelementptr inbounds %struct.nsp_conn_init_msg, ptr %call4, i32 0, i32 5
  %22 = ptrtoint ptr %segsize to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %21, ptr %segsize, align 1
  %peer = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 33
  %sdn_objnum = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 33, i32 2
  %23 = ptrtoint ptr %sdn_objnum to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sdn_objnum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool6.not = icmp eq i8 %24, 0
  %spec.select = zext i1 %tobool6.not to i8
  %25 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i, align 8
  %call11 = tail call i32 @dn_sockaddr2username(ptr noundef %peer, ptr noundef %26, i8 noundef zeroext %spec.select) #8
  %call12 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %call11) #8
  %addr = getelementptr %struct.sock, ptr %sk, i32 1, i32 5
  %27 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i, align 8
  %call14 = tail call i32 @dn_sockaddr2username(ptr noundef %addr, ptr noundef %28, i8 noundef zeroext 2) #8
  %call15 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %call14) #8
  %sdn_flags = getelementptr %struct.sock, ptr %sk, i32 1, i32 7, i32 2, i32 0, i32 0, i32 2
  %29 = ptrtoint ptr %sdn_flags to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sdn_flags, align 2
  %31 = and i8 %30, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool18.not = icmp eq i8 %31, 0
  %menuver.0 = select i1 %tobool18.not, i8 3, i8 7
  %32 = shl i8 %30, 1
  %33 = and i8 %32, 8
  %34 = or i8 %menuver.0, %33
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %call.i, align 1
  %accessdata = getelementptr %struct.sock, ptr %sk, i32 1, i32 4, i32 0, i32 0, i32 0, i32 1
  %acc_userl = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 31, i32 4
  %36 = ptrtoint ptr %acc_userl to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %acc_userl, align 2
  %call.i137 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  %38 = ptrtoint ptr %call.i137 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %call.i137, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp34.not = icmp eq i8 %37, 0
  br i1 %cmp34.not, label %if.end.if.end41_crit_edge, label %if.then36

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv33 = zext i8 %37 to i32
  %acc_user = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 31, i32 5
  %call.i138 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv33) #8
  %39 = call ptr @memcpy(ptr %call.i138, ptr %acc_user, i32 %conv33)
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.end.if.end41_crit_edge
  %acc_passl = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 31, i32 2
  %40 = ptrtoint ptr %acc_passl to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %acc_passl, align 1
  %call.i139 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  %42 = ptrtoint ptr %call.i139 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %call.i139, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp44.not = icmp eq i8 %41, 0
  br i1 %cmp44.not, label %if.end41.if.end51_crit_edge, label %if.then46

if.end41.if.end51_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %conv43 = zext i8 %41 to i32
  %acc_pass = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 31, i32 3
  %call.i140 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv43) #8
  %43 = call ptr @memcpy(ptr %call.i140, ptr %acc_pass, i32 %conv43)
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.end41.if.end51_crit_edge
  %44 = ptrtoint ptr %accessdata to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %accessdata, align 4
  %call.i141 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  %46 = ptrtoint ptr %call.i141 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %call.i141, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp54.not = icmp eq i8 %45, 0
  br i1 %cmp54.not, label %if.end51.if.end61_crit_edge, label %if.then56

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %conv53 = zext i8 %45 to i32
  %acc_acc = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 31, i32 1
  %call.i142 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv53) #8
  %47 = call ptr @memcpy(ptr %call.i142, ptr %acc_acc, i32 %conv53)
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %if.end51.if.end61_crit_edge
  %opt_optl = getelementptr inbounds %struct.dn_scp, ptr %add.ptr.i, i32 0, i32 28, i32 1
  %48 = ptrtoint ptr %opt_optl to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %opt_optl, align 2
  %50 = lshr i16 %49, 8
  %conv62 = trunc i16 %50 to i8
  %call.i143 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  %51 = ptrtoint ptr %call.i143 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv62, ptr %call.i143, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %49)
  %cmp64.not = icmp ult i16 %49, 256
  br i1 %cmp64.not, label %if.end61.if.end71_crit_edge, label %if.then66

if.end61.if.end71_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %conv63 = zext i16 %50 to i32
  %opt_data = getelementptr %struct.sock, ptr %sk, i32 1, i32 0, i32 12
  %call.i144 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv63) #8
  %52 = call ptr @memcpy(ptr %call.i144, ptr %opt_data, i32 %conv63)
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.end61.if.end71_crit_edge
  %nsp_srtt.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 7, i32 2, i32 0, i32 0, i32 4, i32 7
  %53 = ptrtoint ptr %nsp_srtt.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nsp_srtt.i, align 4
  %nsp_rttvar.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 8
  %55 = ptrtoint ptr %nsp_rttvar.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nsp_rttvar.i, align 4
  %nsp_rxtshift.i = getelementptr %struct.sock, ptr %sk, i32 1, i32 8, i32 0, i32 0, i32 1
  %57 = ptrtoint ptr %nsp_rxtshift.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nsp_rxtshift.i, align 4
  %arrayidx.i = getelementptr [13 x i32], ptr @nsp_backoff, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %58)
  %cmp6.i = icmp ult i32 %58, 12
  br i1 %cmp6.i, label %if.then7.i, label %if.end71.dn_nsp_persist.exit_crit_edge

if.end71.dn_nsp_persist.exit_crit_edge:           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %dn_nsp_persist.exit

if.then7.i:                                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add nuw nsw i32 %58, 1
  %61 = ptrtoint ptr %nsp_rxtshift.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %inc.i, ptr %nsp_rxtshift.i, align 4
  br label %dn_nsp_persist.exit

dn_nsp_persist.exit:                              ; preds = %if.then7.i, %if.end71.dn_nsp_persist.exit_crit_edge
  %shr.i = lshr i32 %54, 2
  %add.i = add i32 %shr.i, %56
  %shr1.i = lshr i32 %add.i, 1
  %mul.i = mul i32 %shr1.i, %60
  %62 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 100) #8
  %63 = tail call i32 @llvm.umin.i32(i32 %62, i32 60000) #8
  %persist = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 3
  %64 = ptrtoint ptr %persist to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %persist, align 4
  %persist_fxn = getelementptr %struct.sock, ptr %sk, i32 1, i32 26, i32 2, i32 0, i32 0, i32 4, i32 6
  %65 = ptrtoint ptr %persist_fxn to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @dn_nsp_retrans_conninit, ptr %persist_fxn, align 4
  %rt_flags = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %66 = ptrtoint ptr %rt_flags to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 8, ptr %rt_flags, align 4
  tail call fastcc void @dn_nsp_send(ptr noundef nonnull %call.i.i)
  br label %cleanup

cleanup:                                          ; preds = %dn_nsp_persist.exit, %cond.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_sockaddr2username(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_nsp_retrans_conninit(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.sock, ptr %sk, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1)
  %cmp = icmp eq i8 %1, 6
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dn_nsp_send_conninit(ptr noundef %sk, i8 noundef zeroext 104)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_dst_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_route_output_sock(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !19, !20, !22, !24}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/decnet/dn_nsp_out.c", i32 411, i32 3}
!2 = !{ptr @nsp_backoff, !3, !"nsp_backoff", i1 false, i1 false}
!3 = !{!"../net/decnet/dn_nsp_out.c", i32 64, i32 12}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/net/sock.h", i32 2077, i32 8}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/decnet/dn_nsp_out.c", i32 534, i32 3}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @dn_nsp_do_disc.descriptor, !16, !"descriptor", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/net/dst.h", i32 231, i32 2}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/net/sock.h", i32 2067, i32 9}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 2149338409}
!40 = !{i64 2148261527}
!41 = !{i64 746350, i64 746375, i64 746397, i64 746413, i64 746425, i64 746445, i64 746469, i64 746485, i64 746497}
!42 = !{i64 2148261715}
!43 = !{i64 2149338675}
!44 = !{i64 2148743923, i64 2148743928, i64 2148743941, i64 2148743985, i64 2148744019, i64 2148744040}
