; ModuleID = '/llk/IR_all_yes/net/rose/rose_route.c_pt.bc'
source_filename = "../net/rose/rose_route.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ax25_address = type { [7 x i8] }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.53 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.rose_neigh = type { ptr, %struct.ax25_address, ptr, ptr, ptr, i16, i16, i32, i8, i8, i8, %struct.sk_buff_head, %struct.timer_list, %struct.timer_list }
%struct.rose_node = type { ptr, %struct.rose_address, i16, i8, i8, [3 x ptr] }
%struct.rose_address = type { [5 x i8] }
%struct.ax25_cb = type { %struct.hlist_node, %struct.ax25_address, %struct.ax25_address, ptr, ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, i32, i16, i16, i16, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, i8, %struct.timer_list, %struct.timer_list, ptr, %struct.refcount_struct }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rose_route = type { ptr, i32, i32, %struct.rose_address, %struct.rose_address, %struct.ax25_address, %struct.ax25_address, ptr, ptr, i32 }
%struct.rose_route_struct = type { %struct.rose_address, i16, %struct.ax25_address, [16 x i8], i8, [8 x %struct.ax25_address] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ax25_digi = type { [8 x %struct.ax25_address], [8 x i8], i8, i8 }
%struct.rose_facilities_struct = type { %struct.rose_address, %struct.rose_address, %struct.ax25_address, %struct.ax25_address, i8, i8, [6 x %struct.ax25_address], [6 x %struct.ax25_address], i32, %struct.rose_address, %struct.ax25_address }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.ax25_dev = type { ptr, ptr, ptr, ptr, ptr, [14 x i32], %struct.ax25_dama_info, %struct.refcount_struct }
%struct.ax25_dama_info = type { i8, %struct.timer_list, i16 }
%struct.rose_sock = type { %struct.sock, %struct.rose_address, %struct.rose_address, %struct.ax25_address, %struct.ax25_address, i8, i8, [6 x %struct.ax25_address], [6 x %struct.ax25_address], ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i32, i32, i32, %struct.sk_buff_head, %struct.rose_facilities_struct, %struct.timer_list, %struct.timer_list }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.104, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.105, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.106, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.104 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }

@rose_loopback_neigh = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@null_ax25_address = external dso_local local_unnamed_addr constant %struct.ax25_address, align 1
@rose_neigh_no = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@rose_add_loopback_neigh.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&sn->ftimer)\00", [18 x i8] zeroinitializer }, align 32
@rose_add_loopback_neigh.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&sn->t0timer)\00", [17 x i8] zeroinitializer }, align 32
@rose_neigh_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.12 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@rose_neigh_list = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rose_node_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.12 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@rose_node_list = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rose_dev_first.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/rose/rose_route.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@rose_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rose_route_list = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rose_route_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.12 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@rose_route_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rose_route : unknown neighbour or device %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rose_route_frame\00", [47 x i8] zeroinitializer }, align 32
@rose_route_frame._entry_ptr = internal global ptr @rose_route_frame._entry, section ".printk_index", align 4
@sysctl_rose_routing_control = external dso_local local_unnamed_addr global i32, align 4
@rose_node_seqops = dso_local constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @rose_node_start, ptr @rose_node_stop, ptr @rose_node_next, ptr @rose_node_show }, [16 x i8] zeroinitializer }, align 32
@rose_neigh_seqops = dso_local constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @rose_neigh_start, ptr @rose_neigh_stop, ptr @rose_neigh_next, ptr @rose_neigh_show }, [16 x i8] zeroinitializer }, align 32
@rose_route_seqops = dso_local global { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @rose_route_start, ptr @rose_route_stop, ptr @rose_route_next, ptr @rose_route_show }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rose_neigh_list_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rose_node_list_lock\00", [44 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@rose_dev_exists.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rose_add_node.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&rose_neigh->ftimer)\00", [42 x i8] zeroinitializer }, align 32
@rose_add_node.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&rose_neigh->t0timer)\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rose_route_list_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"address    mask n neigh neigh neigh\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%-10s %04d %d\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %05d\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"addr  callsign  dev  count use mode restart  t0  tf digipeaters\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%05d %-9s %-4s   %3d %3d  %3s     %3s %3lu %3lu\00", [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RSLOOP-0\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DCE\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DTE\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"lci  address     callsign   neigh  <-> lci  address     callsign   neigh\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%3.3X  %-10s  %-9s  %05d      \00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"000  *           *          00000      \00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%3.3X  %-10s  %-9s  %05d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"000  *           *          00000\0A\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 35083, i64 35084, i64 35300]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"rose_loopback_neigh\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 45, i32 20 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"rose_neigh_no\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 36, i32 21 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 392, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 393, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"rose_neigh_list_lock\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"rose_neigh_list\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 40, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"rose_node_list_lock\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"rose_node_list\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 38, i32 27 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 613, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"rose_route_list\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 42, i32 27 }
@___asan_gen_.79 = private unnamed_addr constant [21 x i8] c"rose_route_list_lock\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 897, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"rose_node_seqops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1151, i32 29 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"rose_neigh_seqops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1222, i32 29 }
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"rose_route_seqops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1294, i32 23 }
@___asan_gen_.104 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1984, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 41, i32 8 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 39, i32 8 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 695, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 723, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 156, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 104, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 105, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 43, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1128, i32 17 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1136, i32 20 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1142, i32 21 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1145, i32 18 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1195, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1200, i32 19 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1202, i32 32 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1203, i32 49 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1206, i32 32 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1206, i32 40 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1207, i32 33 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1207, i32 41 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1213, i32 21 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1265, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1271, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1278, i32 6 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1282, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [25 x i8] c"../net/rose/rose_route.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1289, i32 7 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @rose_route_frame._entry, ptr @rose_route_frame._entry_ptr, ptr @rose_rt_free, ptr @rose_loopback_neigh, ptr @rose_neigh_no, ptr @rose_add_loopback_neigh.__key, ptr @.str, ptr @rose_add_loopback_neigh.__key.1, ptr @.str.2, ptr @rose_neigh_list_lock, ptr @rose_neigh_list, ptr @rose_node_list_lock, ptr @rose_node_list, ptr @.str.3, ptr @.str.4, ptr @rose_route_list, ptr @rose_route_list_lock, ptr @.str.5, ptr @.str.6, ptr @rose_node_seqops, ptr @rose_neigh_seqops, ptr @rose_route_seqops, ptr @skb_queue_head_init.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @rose_add_node.__key, ptr @.str.16, ptr @rose_add_node.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_loopback_neigh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_neigh_no to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_add_loopback_neigh.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_add_loopback_neigh.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_neigh_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_neigh_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_node_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_node_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_route_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_route_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_route_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_node_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_neigh_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_route_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_add_node.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_add_node.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_add_loopback_neigh() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 188) #15
  store ptr %call7.i, ptr @rose_loopback_neigh, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %callsign = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %callsign, ptr @null_ax25_address, i32 7)
  %digipeat = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 2
  %dce_mode = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 9
  %2 = call ptr @memset(ptr %digipeat, i32 0, i32 16)
  %3 = ptrtoint ptr %dce_mode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %dce_mode, align 1
  %loopback = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 10
  %4 = ptrtoint ptr %loopback to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %loopback, align 2
  %5 = load i32, ptr @rose_neigh_no, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr @rose_neigh_no, align 4
  %number = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 7
  %6 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %number, align 4
  %restarted = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 8
  %7 = ptrtoint ptr %restarted to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %restarted, align 8
  %queue = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 11
  %lock.i = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 11, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #12
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %queue, ptr %queue, align 4
  %prev.i.i = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 11, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %queue, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i.i, align 4
  %ftimer = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 13
  tail call void @init_timer_key(ptr noundef %ftimer, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @rose_add_loopback_neigh.__key) #12
  %t0timer = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 12
  tail call void @init_timer_key(ptr noundef %t0timer, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @rose_add_loopback_neigh.__key.1) #12
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_neigh_list_lock) #12
  %11 = load ptr, ptr @rose_neigh_list, align 4
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %call7.i, align 8
  store ptr %call7.i, ptr @rose_neigh_list, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_neigh_list_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rose_add_loopback_node(ptr noundef %address) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_node_list_lock) #12
  %rose_node.035 = load ptr, ptr @rose_node_list, align 4
  %cmp.not36 = icmp eq ptr %rose_node.035, null
  br i1 %cmp.not36, label %entry.if.end11.critedge_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.if.end11.critedge_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.critedge

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %rose_node.037 = phi ptr [ %rose_node.0, %if.end.while.body_crit_edge ], [ %rose_node.035, %entry.while.body_crit_edge ]
  %mask = getelementptr inbounds %struct.rose_node, ptr %rose_node.037, i32 0, i32 2
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mask, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %1)
  %cmp1 = icmp eq i16 %1, 10
  br i1 %cmp1, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %address3 = getelementptr inbounds %struct.rose_node, ptr %rose_node.037, i32 0, i32 1
  %call = tail call i32 @rosecmpm(ptr noundef %address, ptr noundef %address3, i16 noundef zeroext 10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %loopback = getelementptr inbounds %struct.rose_node, ptr %rose_node.037, i32 0, i32 4
  %2 = ptrtoint ptr %loopback to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %loopback, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true6.if.end_crit_edge, label %land.lhs.true6.out_crit_edge

land.lhs.true6.out_crit_edge:                     ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true6.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %4 = ptrtoint ptr %rose_node.037 to i32
  call void @__asan_load4_noabort(i32 %4)
  %rose_node.0 = load ptr, ptr %rose_node.037, align 4
  %cmp.not = icmp eq ptr %rose_node.0, null
  br i1 %cmp.not, label %if.end.if.end11.critedge_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end.if.end11.critedge_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.critedge

if.end11.critedge:                                ; preds = %if.end.if.end11.critedge_crit_edge, %entry.if.end11.critedge_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2592, i32 noundef 28) #15
  %cmp13 = icmp eq ptr %call7.i, null
  br i1 %cmp13, label %if.end11.critedge.out_crit_edge, label %if.end16

if.end11.critedge.out_crit_edge:                  ; preds = %if.end11.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end16:                                         ; preds = %if.end11.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %address17 = getelementptr inbounds %struct.rose_node, ptr %call7.i, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %address17, ptr %address, i32 5)
  %mask18 = getelementptr inbounds %struct.rose_node, ptr %call7.i, i32 0, i32 2
  %7 = ptrtoint ptr %mask18 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 10, ptr %mask18, align 2
  %count = getelementptr inbounds %struct.rose_node, ptr %call7.i, i32 0, i32 3
  %8 = ptrtoint ptr %count to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %count, align 4
  %loopback19 = getelementptr inbounds %struct.rose_node, ptr %call7.i, i32 0, i32 4
  %9 = ptrtoint ptr %loopback19 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %loopback19, align 1
  %10 = load ptr, ptr @rose_loopback_neigh, align 4
  %neighbour = getelementptr inbounds %struct.rose_node, ptr %call7.i, i32 0, i32 5
  %11 = ptrtoint ptr %neighbour to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %neighbour, align 8
  %12 = load ptr, ptr @rose_node_list, align 4
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %call7.i, align 8
  store ptr %call7.i, ptr @rose_node_list, align 4
  %count21 = getelementptr inbounds %struct.rose_neigh, ptr %10, i32 0, i32 5
  %14 = ptrtoint ptr %count21 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %count21, align 4
  %inc = add i16 %15, 1
  store i16 %inc, ptr %count21, align 4
  br label %out

out:                                              ; preds = %if.end16, %if.end11.critedge.out_crit_edge, %land.lhs.true6.out_crit_edge
  %err.0 = phi i32 [ 0, %if.end16 ], [ -12, %if.end11.critedge.out_crit_edge ], [ 0, %land.lhs.true6.out_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_node_list_lock) #12
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rosecmpm(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_del_loopback_node(ptr noundef %address) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_node_list_lock) #12
  %rose_node.020 = load ptr, ptr @rose_node_list, align 4
  %cond21 = icmp eq ptr %rose_node.020, null
  br i1 %cond21, label %entry.out_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %rose_node.022 = phi ptr [ %rose_node.0, %if.end.while.body_crit_edge ], [ %rose_node.020, %entry.while.body_crit_edge ]
  %mask = getelementptr inbounds %struct.rose_node, ptr %rose_node.022, i32 0, i32 2
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mask, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %1)
  %cmp1 = icmp eq i16 %1, 10
  br i1 %cmp1, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %address3 = getelementptr inbounds %struct.rose_node, ptr %rose_node.022, i32 0, i32 1
  %call = tail call i32 @rosecmpm(ptr noundef %address, ptr noundef %address3, i16 noundef zeroext 10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %loopback = getelementptr inbounds %struct.rose_node, ptr %rose_node.022, i32 0, i32 4
  %2 = ptrtoint ptr %loopback to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %loopback, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true6.if.end_crit_edge, label %if.end11

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true6.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %4 = ptrtoint ptr %rose_node.022 to i32
  call void @__asan_load4_noabort(i32 %4)
  %rose_node.0 = load ptr, ptr %rose_node.022, align 4
  %cond = icmp eq ptr %rose_node.0, null
  br i1 %cond, label %if.end.out_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end11:                                         ; preds = %land.lhs.true6
  %5 = load ptr, ptr @rose_node_list, align 4
  %cmp.i = icmp eq ptr %5, %rose_node.022
  br i1 %cmp.i, label %if.end11.cleanup.sink.split.i_crit_edge, label %if.end11.while.cond.i_crit_edge

if.end11.while.cond.i_crit_edge:                  ; preds = %if.end11
  br label %while.cond.i

if.end11.cleanup.sink.split.i_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end11.while.cond.i_crit_edge
  %s.0.i = phi ptr [ %7, %while.body.i.while.cond.i_crit_edge ], [ %5, %if.end11.while.cond.i_crit_edge ]
  %cmp1.not.i = icmp eq ptr %s.0.i, null
  br i1 %cmp1.not.i, label %while.cond.i.rose_remove_node.exit_crit_edge, label %land.rhs.i

while.cond.i.rose_remove_node.exit_crit_edge:     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rose_remove_node.exit

land.rhs.i:                                       ; preds = %while.cond.i
  %6 = ptrtoint ptr %s.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s.0.i, align 4
  %cmp3.not.i = icmp eq ptr %7, null
  br i1 %cmp3.not.i, label %land.rhs.i.rose_remove_node.exit_crit_edge, label %while.body.i

land.rhs.i.rose_remove_node.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rose_remove_node.exit

while.body.i:                                     ; preds = %land.rhs.i
  %cmp5.i = icmp eq ptr %7, %rose_node.022
  br i1 %cmp5.i, label %while.body.i.cleanup.sink.split.i_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.body.i.cleanup.sink.split.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %while.body.i.cleanup.sink.split.i_crit_edge, %if.end11.cleanup.sink.split.i_crit_edge
  %s.0.lcssa23.sink.i = phi ptr [ @rose_node_list, %if.end11.cleanup.sink.split.i_crit_edge ], [ %s.0.i, %while.body.i.cleanup.sink.split.i_crit_edge ]
  %8 = ptrtoint ptr %rose_node.022 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rose_node.022, align 4
  %10 = ptrtoint ptr %s.0.lcssa23.sink.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %s.0.lcssa23.sink.i, align 4
  tail call void @kfree(ptr noundef nonnull %rose_node.022) #12
  br label %rose_remove_node.exit

rose_remove_node.exit:                            ; preds = %cleanup.sink.split.i, %land.rhs.i.rose_remove_node.exit_crit_edge, %while.cond.i.rose_remove_node.exit_crit_edge
  %11 = load ptr, ptr @rose_loopback_neigh, align 4
  %count = getelementptr inbounds %struct.rose_neigh, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %count, align 4
  %dec = add i16 %13, -1
  store i16 %dec, ptr %count, align 4
  br label %out

out:                                              ; preds = %rose_remove_node.exit, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_node_list_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rose_remove_node(ptr noundef %rose_node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rose_node_list, align 4
  %cmp = icmp eq ptr %0, %rose_node
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry.while.cond_crit_edge
  %s.0 = phi ptr [ %2, %while.body.while.cond_crit_edge ], [ %0, %entry.while.cond_crit_edge ]
  %cmp1.not = icmp eq ptr %s.0, null
  br i1 %cmp1.not, label %while.cond.cleanup_crit_edge, label %land.rhs

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.rhs:                                         ; preds = %while.cond
  %1 = ptrtoint ptr %s.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s.0, align 4
  %cmp3.not = icmp eq ptr %2, null
  br i1 %cmp3.not, label %land.rhs.cleanup_crit_edge, label %while.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %cmp5 = icmp eq ptr %2, %rose_node
  br i1 %cmp5, label %while.body.cleanup.sink.split_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.body.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %s.0.lcssa23.sink = phi ptr [ @rose_node_list, %entry.cleanup.sink.split_crit_edge ], [ %s.0, %while.body.cleanup.sink.split_crit_edge ]
  %3 = ptrtoint ptr %rose_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rose_node, align 4
  %5 = ptrtoint ptr %s.0.lcssa23.sink to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %s.0.lcssa23.sink, align 4
  tail call void @kfree(ptr noundef %rose_node) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.rhs.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_rt_device_down(ptr noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_node_list_lock) #12
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_neigh_list_lock) #12
  %0 = load ptr, ptr @rose_neigh_list, align 4
  %cmp.not53 = icmp eq ptr %0, null
  br i1 %cmp.not53, label %entry.while.end29_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end29_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end29

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %rose_neigh.054 = phi ptr [ %2, %while.cond.backedge.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %1 = ptrtoint ptr %rose_neigh.054 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rose_neigh.054, align 4
  %dev1 = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh.054, i32 0, i32 4
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  %cmp2.not = icmp eq ptr %4, %dev
  br i1 %cmp2.not, label %if.end, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %5 = load ptr, ptr @rose_node_list, align 4
  %cmp4.not51 = icmp eq ptr %5, null
  br i1 %cmp4.not51, label %if.end.while.end_crit_edge, label %if.end.while.body5_crit_edge

if.end.while.body5_crit_edge:                     ; preds = %if.end
  br label %while.body5

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body5:                                      ; preds = %if.end28.while.body5_crit_edge, %if.end.while.body5_crit_edge
  %rose_node.052 = phi ptr [ %7, %if.end28.while.body5_crit_edge ], [ %5, %if.end.while.body5_crit_edge ]
  %6 = ptrtoint ptr %rose_node.052 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rose_node.052, align 4
  %count = getelementptr inbounds %struct.rose_node, ptr %rose_node.052, i32 0, i32 3
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp749.not = icmp eq i8 %9, 0
  br i1 %cmp749.not, label %while.body5.if.then27_crit_edge, label %for.body.lr.ph

while.body5.if.then27_crit_edge:                  ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27

for.body.lr.ph:                                   ; preds = %while.body5
  %neighbour = getelementptr inbounds %struct.rose_node, ptr %rose_node.052, i32 0, i32 5
  %arrayidx15 = getelementptr %struct.rose_node, ptr %rose_node.052, i32 0, i32 5, i32 1
  %arrayidx20 = getelementptr %struct.rose_node, ptr %rose_node.052, i32 0, i32 5, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %10 = phi i8 [ %9, %for.body.lr.ph ], [ %22, %for.inc.for.body_crit_edge ]
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rose_node, ptr %rose_node.052, i32 0, i32 5, i32 %i.050
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %cmp9.not = icmp eq ptr %12, %rose_neigh.054
  br i1 %cmp9.not, label %if.end12, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %dec = add i8 %10, -1
  %13 = ptrtoint ptr %count to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %dec, ptr %count, align 4
  %14 = zext i32 %i.050 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.050, label %if.end12.for.inc_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end12.sw.bb18_crit_edge
  ]

if.end12.sw.bb18_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

sw.bb:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx15, align 4
  %17 = ptrtoint ptr %neighbour to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %neighbour, align 4
  br label %sw.bb18

sw.bb18:                                          ; preds = %sw.bb, %if.end12.sw.bb18_crit_edge
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx20, align 4
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.bb18, %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.050, 1
  %21 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %count, align 4
  %conv = zext i8 %22 to i32
  %cmp7 = icmp ult i32 %inc, %conv
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp25 = icmp eq i8 %22, 0
  br i1 %cmp25, label %for.end.if.then27_crit_edge, label %for.end.if.end28_crit_edge

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

for.end.if.then27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27

if.then27:                                        ; preds = %for.end.if.then27_crit_edge, %while.body5.if.then27_crit_edge
  %23 = load ptr, ptr @rose_node_list, align 4
  %cmp.i = icmp eq ptr %23, %rose_node.052
  br i1 %cmp.i, label %if.then27.cleanup.sink.split.i_crit_edge, label %if.then27.while.cond.i_crit_edge

if.then27.while.cond.i_crit_edge:                 ; preds = %if.then27
  br label %while.cond.i

if.then27.cleanup.sink.split.i_crit_edge:         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then27.while.cond.i_crit_edge
  %s.0.i = phi ptr [ %25, %while.body.i.while.cond.i_crit_edge ], [ %23, %if.then27.while.cond.i_crit_edge ]
  %cmp1.not.i = icmp eq ptr %s.0.i, null
  br i1 %cmp1.not.i, label %while.cond.i.if.end28_crit_edge, label %land.rhs.i

while.cond.i.if.end28_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

land.rhs.i:                                       ; preds = %while.cond.i
  %24 = ptrtoint ptr %s.0.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s.0.i, align 4
  %cmp3.not.i = icmp eq ptr %25, null
  br i1 %cmp3.not.i, label %land.rhs.i.if.end28_crit_edge, label %while.body.i

land.rhs.i.if.end28_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

while.body.i:                                     ; preds = %land.rhs.i
  %cmp5.i = icmp eq ptr %25, %rose_node.052
  br i1 %cmp5.i, label %while.body.i.cleanup.sink.split.i_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.body.i.cleanup.sink.split.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %while.body.i.cleanup.sink.split.i_crit_edge, %if.then27.cleanup.sink.split.i_crit_edge
  %s.0.lcssa23.sink.i = phi ptr [ @rose_node_list, %if.then27.cleanup.sink.split.i_crit_edge ], [ %s.0.i, %while.body.i.cleanup.sink.split.i_crit_edge ]
  %26 = ptrtoint ptr %rose_node.052 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rose_node.052, align 4
  %28 = ptrtoint ptr %s.0.lcssa23.sink.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %s.0.lcssa23.sink.i, align 4
  tail call void @kfree(ptr noundef nonnull %rose_node.052) #12
  br label %if.end28

if.end28:                                         ; preds = %cleanup.sink.split.i, %land.rhs.i.if.end28_crit_edge, %while.cond.i.if.end28_crit_edge, %for.end.if.end28_crit_edge
  %cmp4.not = icmp eq ptr %7, null
  br i1 %cmp4.not, label %if.end28.while.end_crit_edge, label %if.end28.while.body5_crit_edge

if.end28.while.body5_crit_edge:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body5

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end28.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call fastcc void @rose_remove_neigh(ptr noundef nonnull %rose_neigh.054)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.end, %while.body.while.cond.backedge_crit_edge
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %while.cond.backedge.while.end29_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.backedge.while.end29_crit_edge:        ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end29

while.end29:                                      ; preds = %while.cond.backedge.while.end29_crit_edge, %entry.while.end29_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_neigh_list_lock) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_node_list_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rose_remove_neigh(ptr noundef %rose_neigh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rose_stop_ftimer(ptr noundef %rose_neigh) #12
  tail call void @rose_stop_t0timer(ptr noundef %rose_neigh) #12
  %queue = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh, i32 0, i32 11
  tail call void @skb_queue_purge(ptr noundef %queue) #12
  %0 = load ptr, ptr @rose_neigh_list, align 4
  %cmp = icmp eq ptr %0, %rose_neigh
  br i1 %cmp, label %if.then, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %rose_neigh to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rose_neigh, align 4
  store ptr %2, ptr @rose_neigh_list, align 4
  %ax25 = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh, i32 0, i32 3
  %3 = ptrtoint ptr %ax25 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ax25, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then.cleanup.sink.split_crit_edge, label %if.then1

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then1:                                         ; preds = %if.then
  %refcount.i = getelementptr inbounds %struct.ax25_cb, ptr %4, i32 0, i32 36
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !114
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup.sink.split_crit_edge, label %if.then10.i.i.i.i, !prof !115

if.end5.i.i.i.i.cleanup.sink.split_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #12
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !116
  %digipeat.i = getelementptr inbounds %struct.ax25_cb, ptr %4, i32 0, i32 3
  %6 = ptrtoint ptr %digipeat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %digipeat.i, align 4
  tail call void @kfree(ptr noundef %7) #12
  tail call void @kfree(ptr noundef nonnull %4) #12
  br label %cleanup.sink.split

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry.while.cond_crit_edge
  %s.0 = phi ptr [ %9, %while.body.while.cond_crit_edge ], [ %0, %entry.while.cond_crit_edge ]
  %cmp4.not = icmp eq ptr %s.0, null
  br i1 %cmp4.not, label %while.cond.cleanup_crit_edge, label %land.rhs

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.rhs:                                         ; preds = %while.cond
  %8 = ptrtoint ptr %s.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s.0, align 4
  %cmp6.not = icmp eq ptr %9, null
  br i1 %cmp6.not, label %land.rhs.cleanup_crit_edge, label %while.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %cmp8 = icmp eq ptr %9, %rose_neigh
  br i1 %cmp8, label %if.then9, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.then9:                                         ; preds = %while.body
  %10 = ptrtoint ptr %rose_neigh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rose_neigh, align 4
  %12 = ptrtoint ptr %s.0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %s.0, align 4
  %ax2512 = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh, i32 0, i32 3
  %13 = ptrtoint ptr %ax2512 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ax2512, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %if.then9.cleanup.sink.split_crit_edge, label %if.then14

if.then9.cleanup.sink.split_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then14:                                        ; preds = %if.then9
  %refcount.i41 = getelementptr inbounds %struct.ax25_cb, ptr %14, i32 0, i32 36
  %call.i.i.i.i.i.i42 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i41, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr %refcount.i41, i32 1, i32 3, i32 1) #12
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i41, ptr %refcount.i41, i32 1, ptr elementtype(i32) %refcount.i41) #12, !srcloc !114
  %asmresult.i.i.i.i.i.i.i43 = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i43)
  %cmp.i.i.i.i44 = icmp eq i32 %asmresult.i.i.i.i.i.i.i43, 1
  br i1 %cmp.i.i.i.i44, label %if.then.i49, label %if.end5.i.i.i.i46

if.end5.i.i.i.i46:                                ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i43)
  %.not.i.i.i.i45 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i43, 0
  br i1 %.not.i.i.i.i45, label %if.end5.i.i.i.i46.cleanup.sink.split_crit_edge, label %if.then10.i.i.i.i47, !prof !115

if.end5.i.i.i.i46.cleanup.sink.split_crit_edge:   ; preds = %if.end5.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then10.i.i.i.i47:                              ; preds = %if.end5.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i41, i32 noundef 3) #12
  br label %cleanup.sink.split

if.then.i49:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !116
  %digipeat.i48 = getelementptr inbounds %struct.ax25_cb, ptr %14, i32 0, i32 3
  %16 = ptrtoint ptr %digipeat.i48 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %digipeat.i48, align 4
  tail call void @kfree(ptr noundef %17) #12
  tail call void @kfree(ptr noundef nonnull %14) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then.i49, %if.then10.i.i.i.i47, %if.end5.i.i.i.i46.cleanup.sink.split_crit_edge, %if.then9.cleanup.sink.split_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %digipeat17 = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh, i32 0, i32 2
  %18 = ptrtoint ptr %digipeat17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %digipeat17, align 4
  tail call void @kfree(ptr noundef %19) #12
  tail call void @kfree(ptr noundef %rose_neigh) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.rhs.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rose_dev_first() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b39 = load i1, ptr @rose_dev_first.__warned, align 1
  br i1 %.b39, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rose_dev_first.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 613, ptr noundef nonnull @.str.4) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn49 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp.not51 = icmp eq ptr %.pn49, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not51, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn53 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn49, %do.end.for.body_crit_edge ]
  %first.052 = phi ptr [ %first.1, %for.inc.for.body_crit_edge ], [ null, %do.end.for.body_crit_edge ]
  %dev.054 = getelementptr i8, ptr %.pn53, i32 -40
  %flags = getelementptr i8, ptr %.pn53, i32 64
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %land.lhs.true10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true10:                                  ; preds = %for.body
  %type = getelementptr i8, ptr %.pn53, i32 168
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 270, i16 %7)
  %cmp11 = icmp eq i16 %7, 270
  br i1 %cmp11, label %if.then13, label %land.lhs.true10.for.inc_crit_edge

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then13:                                        ; preds = %land.lhs.true10
  %cmp14 = icmp eq ptr %first.052, null
  br i1 %cmp14, label %if.then13.if.then21_crit_edge, label %lor.lhs.false

if.then13.if.then21_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.then13
  %call18 = tail call i32 @strncmp(ptr noundef %dev.054, ptr noundef nonnull %first.052, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %lor.lhs.false.if.then21_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %if.then13.if.then21_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %first.1 = phi ptr [ %dev.054, %if.then21 ], [ %first.052, %lor.lhs.false.for.inc_crit_edge ], [ %first.052, %land.lhs.true10.for.inc_crit_edge ], [ %first.052, %for.body.for.inc_crit_edge ]
  %8 = ptrtoint ptr %.pn53 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load volatile ptr, ptr %.pn53, align 4
  %cmp.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %first.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %first.1, %for.inc.for.end_crit_edge ]
  %call.i40 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i40, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i43

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i43:                                ; preds = %for.end
  %call1.i41 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i45

land.lhs.true.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i45:                               ; preds = %land.lhs.true.i43
  %.b4.i44 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44, label %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, label %if.then.i46

land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i46:                                      ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i46, %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !118
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #12
  %and.i.i.i.i.i47 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i47 to ptr
  %preempt_count.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i48, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i48, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %first.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rose_dev_get(ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b33 = load i1, ptr @rose_dev_get.__warned, align 1
  br i1 %.b33, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rose_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 631, ptr noundef nonnull @.str.4) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn46 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp.not47 = icmp eq ptr %.pn46, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not47, label %do.end.out_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn48 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn46, %do.end.for.body_crit_edge ]
  %flags = getelementptr i8, ptr %.pn48, i32 64
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %land.lhs.true10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true10:                                  ; preds = %for.body
  %type = getelementptr i8, ptr %.pn48, i32 168
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 270, i16 %7)
  %cmp11 = icmp eq i16 %7, 270
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true10.for.inc_crit_edge

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %dev_addr = getelementptr i8, ptr %.pn48, i32 536
  %8 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr, align 64
  %call14 = tail call i32 @rosecmp(ptr noundef %addr, ptr noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %land.lhs.true13.for.inc_crit_edge

land.lhs.true13.for.inc_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then17:                                        ; preds = %land.lhs.true13
  %dev.0.le = getelementptr i8, ptr %.pn48, i32 -40
  %tobool.not.i34 = icmp eq ptr %dev.0.le, null
  br i1 %tobool.not.i34, label %if.then17.out_crit_edge, label %do.body1.i

if.then17.out_crit_edge:                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body1.i:                                       ; preds = %if.then17
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !119
  %pcpu_refcnt.i = getelementptr i8, ptr %.pn48, i32 940
  %11 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcpu_refcnt.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !103) #12
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add13.i = add i32 %22, 1
  store i32 %add13.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !120
  %and.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !121

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #12, !srcloc !122
  br label %out

for.inc:                                          ; preds = %land.lhs.true13.for.inc_crit_edge, %land.lhs.true10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %24 = ptrtoint ptr %.pn48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load volatile ptr, ptr %.pn48, align 4
  %cmp.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %do.end30.i, %if.then17.out_crit_edge, %do.end.out_crit_edge
  %dev.1 = phi ptr [ null, %if.then17.out_crit_edge ], [ %dev.0.le, %do.end30.i ], [ null, %do.end.out_crit_edge ], [ null, %for.inc.out_crit_edge ]
  %call.i35 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i35, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i38

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i38:                                ; preds = %out
  %call1.i36 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !118
  %25 = tail call i32 @llvm.read_register.i32(metadata !103) #12
  %and.i.i.i.i.i42 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i43, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %dev.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rosecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rose_route_free_lci(i32 noundef %lci, ptr noundef readnone %neigh) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rose_route.014 = load ptr, ptr @rose_route_list, align 4
  %cmp.not15 = icmp eq ptr %rose_route.014, null
  br i1 %cmp.not15, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %rose_route.016 = phi ptr [ %rose_route.0, %for.inc.for.body_crit_edge ], [ %rose_route.014, %entry.for.body_crit_edge ]
  %neigh1 = getelementptr inbounds %struct.rose_route, ptr %rose_route.016, i32 0, i32 7
  %0 = ptrtoint ptr %neigh1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %neigh1, align 4
  %cmp1 = icmp eq ptr %1, %neigh
  br i1 %cmp1, label %land.lhs.true, label %for.body.lor.lhs.false_crit_edge

for.body.lor.lhs.false_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %lci1 = getelementptr inbounds %struct.rose_route, ptr %rose_route.016, i32 0, i32 1
  %2 = ptrtoint ptr %lci1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lci1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %lci)
  %cmp2 = icmp eq i32 %3, %lci
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %for.body.lor.lhs.false_crit_edge
  %neigh2 = getelementptr inbounds %struct.rose_route, ptr %rose_route.016, i32 0, i32 8
  %4 = ptrtoint ptr %neigh2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %neigh2, align 4
  %cmp3 = icmp eq ptr %5, %neigh
  br i1 %cmp3, label %land.lhs.true4, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %lci2 = getelementptr inbounds %struct.rose_route, ptr %rose_route.016, i32 0, i32 2
  %6 = ptrtoint ptr %lci2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lci2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %lci)
  %cmp5 = icmp eq i32 %7, %lci
  br i1 %cmp5, label %land.lhs.true4.cleanup_crit_edge, label %land.lhs.true4.for.inc_crit_edge

land.lhs.true4.for.inc_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true4.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %8 = ptrtoint ptr %rose_route.016 to i32
  call void @__asan_load4_noabort(i32 %8)
  %rose_route.0 = load ptr, ptr %rose_route.016, align 4
  %cmp.not = icmp eq ptr %rose_route.0, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %rose_route.0.lcssa = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %rose_route.016, %land.lhs.true.cleanup_crit_edge ], [ %rose_route.016, %land.lhs.true4.cleanup_crit_edge ]
  ret ptr %rose_route.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rose_get_neigh(ptr noundef %addr, ptr nocapture noundef writeonly %cause, ptr nocapture noundef writeonly %diagnostic, i32 noundef %route_frame) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %route_frame)
  %tobool.not = icmp eq i32 %route_frame, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_node_list_lock) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %node.086 = load ptr, ptr @rose_node_list, align 4
  %cmp.not87 = icmp eq ptr %node.086, null
  br i1 %cmp.not87, label %if.end.for.end14_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end14

for.body:                                         ; preds = %for.inc13.for.body_crit_edge, %if.end.for.body_crit_edge
  %node.088 = phi ptr [ %node.0, %for.inc13.for.body_crit_edge ], [ %node.086, %if.end.for.body_crit_edge ]
  %address = getelementptr inbounds %struct.rose_node, ptr %node.088, i32 0, i32 1
  %mask = getelementptr inbounds %struct.rose_node, ptr %node.088, i32 0, i32 2
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mask, align 2
  %call = tail call i32 @rosecmpm(ptr noundef %addr, ptr noundef %address, i16 noundef zeroext %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %for.cond3.preheader, label %for.body.for.inc13_crit_edge

for.body.for.inc13_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc13

for.cond3.preheader:                              ; preds = %for.body
  %count = getelementptr inbounds %struct.rose_node, ptr %node.088, i32 0, i32 3
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %count, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp484.not = icmp eq i8 %3, 0
  br i1 %cmp484.not, label %for.cond3.preheader.for.inc13_crit_edge, label %for.cond3.preheader.for.body6_crit_edge

for.cond3.preheader.for.body6_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body6

for.cond3.preheader.for.inc13_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc13

for.cond3:                                        ; preds = %for.body6
  %inc = add nuw nsw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond3.for.inc13_crit_edge, label %for.cond3.for.body6_crit_edge

for.cond3.for.body6_crit_edge:                    ; preds = %for.cond3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body6

for.cond3.for.inc13_crit_edge:                    ; preds = %for.cond3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc13

for.body6:                                        ; preds = %for.cond3.for.body6_crit_edge, %for.cond3.preheader.for.body6_crit_edge
  %i.085 = phi i32 [ %inc, %for.cond3.for.body6_crit_edge ], [ 0, %for.cond3.preheader.for.body6_crit_edge ]
  %arrayidx = getelementptr %struct.rose_node, ptr %node.088, i32 0, i32 5, i32 %i.085
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %restarted = getelementptr inbounds %struct.rose_neigh, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %restarted to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %restarted, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %for.cond3, label %for.body6.out_crit_edge

for.body6.out_crit_edge:                          ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.inc13:                                        ; preds = %for.cond3.for.inc13_crit_edge, %for.cond3.preheader.for.inc13_crit_edge, %for.body.for.inc13_crit_edge
  %8 = ptrtoint ptr %node.088 to i32
  call void @__asan_load4_noabort(i32 %8)
  %node.0 = load ptr, ptr %node.088, align 4
  %cmp.not = icmp eq ptr %node.0, null
  br i1 %cmp.not, label %for.inc13.for.end14_crit_edge, label %for.inc13.for.body_crit_edge

for.inc13.for.body_crit_edge:                     ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc13.for.end14_crit_edge:                    ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end14

for.end14:                                        ; preds = %for.inc13.for.end14_crit_edge, %if.end.for.end14_crit_edge
  br i1 %tobool.not, label %for.cond17.preheader, label %for.end14.if.else_crit_edge

for.end14.if.else_crit_edge:                      ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

for.cond17.preheader:                             ; preds = %for.end14
  %node.192 = load ptr, ptr @rose_node_list, align 4
  %cmp18.not93 = icmp eq ptr %node.192, null
  br i1 %cmp18.not93, label %for.cond17.preheader.if.else_crit_edge, label %for.cond17.preheader.for.body20_crit_edge

for.cond17.preheader.for.body20_crit_edge:        ; preds = %for.cond17.preheader
  br label %for.body20

for.cond17.preheader.if.else_crit_edge:           ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

for.body20:                                       ; preds = %for.inc45.for.body20_crit_edge, %for.cond17.preheader.for.body20_crit_edge
  %node.195 = phi ptr [ %node.1, %for.inc45.for.body20_crit_edge ], [ %node.192, %for.cond17.preheader.for.body20_crit_edge ]
  %failed.094 = phi i32 [ %failed.2, %for.inc45.for.body20_crit_edge ], [ 0, %for.cond17.preheader.for.body20_crit_edge ]
  %address21 = getelementptr inbounds %struct.rose_node, ptr %node.195, i32 0, i32 1
  %mask22 = getelementptr inbounds %struct.rose_node, ptr %node.195, i32 0, i32 2
  %9 = ptrtoint ptr %mask22 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mask22, align 2
  %call23 = tail call i32 @rosecmpm(ptr noundef %addr, ptr noundef %address21, i16 noundef zeroext %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %for.cond27.preheader, label %for.body20.for.inc45_crit_edge

for.body20.for.inc45_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc45

for.cond27.preheader:                             ; preds = %for.body20
  %count28 = getelementptr inbounds %struct.rose_node, ptr %node.195, i32 0, i32 3
  %11 = ptrtoint ptr %count28 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %count28, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp3090.not = icmp eq i8 %12, 0
  br i1 %cmp3090.not, label %for.cond27.preheader.for.inc45_crit_edge, label %for.cond27.preheader.for.body32_crit_edge

for.cond27.preheader.for.body32_crit_edge:        ; preds = %for.cond27.preheader
  br label %for.body32

for.cond27.preheader.for.inc45_crit_edge:         ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc45

for.cond27:                                       ; preds = %for.body32
  %inc42 = add nuw nsw i32 %i.191, 1
  %13 = ptrtoint ptr %count28 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %count28, align 4
  %conv29 = zext i8 %14 to i32
  %cmp30 = icmp ult i32 %inc42, %conv29
  br i1 %cmp30, label %for.cond27.for.body32_crit_edge, label %for.cond27.for.inc45_crit_edge

for.cond27.for.inc45_crit_edge:                   ; preds = %for.cond27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc45

for.cond27.for.body32_crit_edge:                  ; preds = %for.cond27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32

for.body32:                                       ; preds = %for.cond27.for.body32_crit_edge, %for.cond27.preheader.for.body32_crit_edge
  %i.191 = phi i32 [ %inc42, %for.cond27.for.body32_crit_edge ], [ 0, %for.cond27.preheader.for.body32_crit_edge ]
  %arrayidx34 = getelementptr %struct.rose_node, ptr %node.195, i32 0, i32 5, i32 %i.191
  %15 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx34, align 4
  %call35 = tail call i32 @rose_ftimer_running(ptr noundef %16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %for.cond27

if.then37:                                        ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx34, align 4
  br label %out

for.inc45:                                        ; preds = %for.cond27.for.inc45_crit_edge, %for.cond27.preheader.for.inc45_crit_edge, %for.body20.for.inc45_crit_edge
  %failed.2 = phi i32 [ %failed.094, %for.body20.for.inc45_crit_edge ], [ %failed.094, %for.cond27.preheader.for.inc45_crit_edge ], [ 1, %for.cond27.for.inc45_crit_edge ]
  %19 = ptrtoint ptr %node.195 to i32
  call void @__asan_load4_noabort(i32 %19)
  %node.1 = load ptr, ptr %node.195, align 4
  %cmp18.not = icmp eq ptr %node.1, null
  br i1 %cmp18.not, label %if.end48, label %for.inc45.for.body20_crit_edge

for.inc45.for.body20_crit_edge:                   ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body20

if.end48:                                         ; preds = %for.inc45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %failed.2)
  %tobool49.not = icmp eq i32 %failed.2, 0
  br i1 %tobool49.not, label %if.end48.if.else_crit_edge, label %if.then50

if.end48.if.else_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %cause to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 9, ptr %cause, align 1
  %21 = ptrtoint ptr %diagnostic to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %diagnostic, align 1
  br label %out

if.else:                                          ; preds = %if.end48.if.else_crit_edge, %for.cond17.preheader.if.else_crit_edge, %for.end14.if.else_crit_edge
  %22 = ptrtoint ptr %cause to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 13, ptr %cause, align 1
  %23 = ptrtoint ptr %diagnostic to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %diagnostic, align 1
  br label %out

out:                                              ; preds = %if.else, %if.then50, %if.then37, %for.body6.out_crit_edge
  %res.0 = phi ptr [ null, %if.then50 ], [ null, %if.else ], [ %18, %if.then37 ], [ %5, %for.body6.out_crit_edge ]
  br i1 %tobool.not, label %if.then53, label %out.if.end54_crit_edge

out.if.end54_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then53:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_node_list_lock) #12
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %out.if.end54_crit_edge
  ret ptr %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rose_ftimer_running(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rose_rt_ioctl(i32 noundef %cmd, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %rose_route = alloca %struct.rose_route_struct, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %rose_route) #12
  %0 = call ptr @memset(ptr %rose_route, i32 255, i32 88)
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35083, label %if.then.i
    i32 35084, label %if.then.i41
    i32 35300, label %sw.bb31
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 88, i32 -1226833920) #16, !srcloc !123
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !115

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rose_route, i32 noundef 88) #12
  %3 = call i32 @llvm.read_register.i32(metadata !103) #12
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !124
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !126
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %rose_route, ptr noundef %arg, i32 noundef 88) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #12, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !115

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 88, %if.then.i.if.then11.i.i_crit_edge ], [ 88, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 88, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %rose_route, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %device = getelementptr inbounds %struct.rose_route_struct, ptr %rose_route, i32 0, i32 3
  %call.i = call ptr @__dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef %device) #12
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 14
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %land.lhs.true.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %type.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 32
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %10)
  %cmp1.i = icmp eq i16 %10, 3
  br i1 %cmp1.i, label %if.end3, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %land.lhs.true.i
  %11 = call i32 @llvm.read_register.i32(metadata !103) #12
  %and.i.i.i.i.i.i59 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i59 to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !117
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i60 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i60, label %if.end3.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i61

if.end3.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i61:                              ; preds = %if.end3
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i61.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i61.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i61
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i61.rcu_read_lock.exit.i_crit_edge, %if.end3.rcu_read_lock.exit.i_crit_edge
  %call.i62 = call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i63 = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i63, label %land.lhs.true.i64, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i64:                                ; preds = %rcu_read_lock.exit.i
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i64.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i64.do.end.i_crit_edge:             ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i64
  %.b34.i = load i1, ptr @rose_dev_exists.__warned, align 1
  br i1 %.b34.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i65

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i65:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rose_dev_exists.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 649, ptr noundef nonnull @.str.4) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i65, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i64.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn46.i = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp.not47.i = icmp eq ptr %.pn46.i, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not47.i, label %do.end.i.out.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.out.i_crit_edge:                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn48.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn46.i, %do.end.i.for.body.i_crit_edge ]
  %flags.i66 = getelementptr i8, ptr %.pn48.i, i32 64
  %15 = ptrtoint ptr %flags.i66 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i66, align 8
  %and.i67 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67)
  %tobool9.not.i = icmp eq i32 %and.i67, 0
  br i1 %tobool9.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true10.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true10.i:                                ; preds = %for.body.i
  %type.i68 = getelementptr i8, ptr %.pn48.i, i32 168
  %17 = ptrtoint ptr %type.i68 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %type.i68, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 270, i16 %18)
  %cmp11.i = icmp eq i16 %18, 270
  br i1 %cmp11.i, label %land.lhs.true13.i, label %land.lhs.true10.i.for.inc.i_crit_edge

land.lhs.true10.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true13.i:                                ; preds = %land.lhs.true10.i
  %dev_addr.i = getelementptr i8, ptr %.pn48.i, i32 536
  %19 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr.i, align 64
  %call14.i = call i32 @rosecmp(ptr noundef nonnull %rose_route, ptr noundef %20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp eq i32 %call14.i, 0
  br i1 %cmp15.i, label %out.split.loop.exit44.i, label %land.lhs.true13.i.for.inc.i_crit_edge

land.lhs.true13.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true13.i.for.inc.i_crit_edge, %land.lhs.true10.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %21 = ptrtoint ptr %.pn48.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i = load volatile ptr, ptr %.pn48.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not.i, label %for.inc.i.out.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.out.i_crit_edge:                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

out.split.loop.exit44.i:                          ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.0.le.i = getelementptr i8, ptr %.pn48.i, i32 -40
  br label %out.i

out.i:                                            ; preds = %out.split.loop.exit44.i, %for.inc.i.out.i_crit_edge, %do.end.i.out.i_crit_edge
  %dev.1.i = phi ptr [ %dev.0.le.i, %out.split.loop.exit44.i ], [ null, %do.end.i.out.i_crit_edge ], [ null, %for.inc.i.out.i_crit_edge ]
  %call.i35.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i35.i, label %out.i.rose_dev_exists.exit_crit_edge, label %land.lhs.true.i38.i

out.i.rose_dev_exists.exit_crit_edge:             ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rose_dev_exists.exit

land.lhs.true.i38.i:                              ; preds = %out.i
  %call1.i36.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36.i)
  %tobool.not.i37.i = icmp eq i32 %call1.i36.i, 0
  br i1 %tobool.not.i37.i, label %land.lhs.true.i38.i.rose_dev_exists.exit_crit_edge, label %land.lhs.true2.i40.i

land.lhs.true.i38.i.rose_dev_exists.exit_crit_edge: ; preds = %land.lhs.true.i38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rose_dev_exists.exit

land.lhs.true2.i40.i:                             ; preds = %land.lhs.true.i38.i
  %.b4.i39.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39.i, label %land.lhs.true2.i40.i.rose_dev_exists.exit_crit_edge, label %if.then.i41.i

land.lhs.true2.i40.i.rose_dev_exists.exit_crit_edge: ; preds = %land.lhs.true2.i40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rose_dev_exists.exit

if.then.i41.i:                                    ; preds = %land.lhs.true2.i40.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #12
  br label %rose_dev_exists.exit

rose_dev_exists.exit:                             ; preds = %if.then.i41.i, %land.lhs.true2.i40.i.rose_dev_exists.exit_crit_edge, %land.lhs.true.i38.i.rose_dev_exists.exit_crit_edge, %out.i.rose_dev_exists.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !118
  %22 = call i32 @llvm.read_register.i32(metadata !103) #12
  %and.i.i.i.i.i42.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i42.i to ptr
  %preempt_count.i.i.i.i43.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i43.i, align 4
  %sub.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i43.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %cmp27.i.not = icmp eq ptr %dev.1.i, null
  br i1 %cmp27.i.not, label %if.end7, label %rose_dev_exists.exit.cleanup_crit_edge

rose_dev_exists.exit.cleanup_crit_edge:           ; preds = %rose_dev_exists.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %rose_dev_exists.exit
  %mask = getelementptr inbounds %struct.rose_route_struct, ptr %rose_route, i32 0, i32 1
  %26 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mask, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %27)
  %cmp8 = icmp ugt i16 %27, 10
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %ndigis = getelementptr inbounds %struct.rose_route_struct, ptr %rose_route, i32 0, i32 4
  %28 = ptrtoint ptr %ndigis to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ndigis, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %29)
  %cmp13 = icmp ugt i8 %29, 8
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = call fastcc i32 @rose_add_node(ptr noundef nonnull %rose_route, ptr noundef nonnull %call.i)
  br label %cleanup

if.then.i41:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #12
  %call.i.i40 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i40, label %if.then.i41.if.then11.i.i56_crit_edge, label %land.lhs.true.i.i44

if.then.i41.if.then11.i.i56_crit_edge:            ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i56

land.lhs.true.i.i44:                              ; preds = %if.then.i41
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 88, i32 -1226833920) #16, !srcloc !123
  %asmresult.i.i42 = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i42)
  %cmp.i.i43 = icmp eq i32 %asmresult.i.i42, 0
  br i1 %cmp.i.i43, label %if.end.i.i52, label %land.lhs.true.i.i44.if.then11.i.i56_crit_edge, !prof !115

land.lhs.true.i.i44.if.then11.i.i56_crit_edge:    ; preds = %land.lhs.true.i.i44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i56

if.end.i.i52:                                     ; preds = %land.lhs.true.i.i44
  %call.i.i.i45 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rose_route, i32 noundef 88) #12
  %31 = call i32 @llvm.read_register.i32(metadata !103) #12
  %and.i.i.i.i.i.i46 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i46 to ptr
  %cpu_domain.i.i.i.i.i47 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i47) #10, !srcloc !124
  %and.i.i.i.i48 = and i32 %33, -13
  %or.i.i.i.i49 = or i32 %and.i.i.i.i48, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i49) #12, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !126
  %call1.i.i.i50 = call i32 @arm_copy_from_user(ptr noundef nonnull %rose_route, ptr noundef %arg, i32 noundef 88) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #12, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i50)
  %tobool4.not.i.i51 = icmp eq i32 %call1.i.i.i50, 0
  br i1 %tobool4.not.i.i51, label %if.end22, label %if.end.i.i52.if.then11.i.i56_crit_edge, !prof !115

if.end.i.i52.if.then11.i.i56_crit_edge:           ; preds = %if.end.i.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i56

if.then11.i.i56:                                  ; preds = %if.end.i.i52.if.then11.i.i56_crit_edge, %land.lhs.true.i.i44.if.then11.i.i56_crit_edge, %if.then.i41.if.then11.i.i56_crit_edge
  %res.03.i.i53 = phi i32 [ %call1.i.i.i50, %if.end.i.i52.if.then11.i.i56_crit_edge ], [ 88, %if.then.i41.if.then11.i.i56_crit_edge ], [ 88, %land.lhs.true.i.i44.if.then11.i.i56_crit_edge ]
  %sub.i.i54 = sub i32 88, %res.03.i.i53
  %add.ptr.i.i55 = getelementptr i8, ptr %rose_route, i32 %sub.i.i54
  %34 = call ptr @memset(ptr %add.ptr.i.i55, i32 0, i32 %res.03.i.i53)
  br label %cleanup

if.end22:                                         ; preds = %if.end.i.i52
  %device23 = getelementptr inbounds %struct.rose_route_struct, ptr %rose_route, i32 0, i32 3
  %call.i69 = call ptr @__dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef %device23) #12
  %cmp.i70 = icmp eq ptr %call.i69, null
  br i1 %cmp.i70, label %if.end22.cleanup_crit_edge, label %if.end.i74

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i74:                                       ; preds = %if.end22
  %flags.i71 = getelementptr inbounds %struct.net_device, ptr %call.i69, i32 0, i32 14
  %35 = ptrtoint ptr %flags.i71 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i71, align 8
  %and.i72 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72)
  %tobool.not.i73 = icmp eq i32 %and.i72, 0
  br i1 %tobool.not.i73, label %if.end.i74.cleanup_crit_edge, label %land.lhs.true.i77

if.end.i74.cleanup_crit_edge:                     ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i77:                                ; preds = %if.end.i74
  %type.i75 = getelementptr inbounds %struct.net_device, ptr %call.i69, i32 0, i32 32
  %37 = ptrtoint ptr %type.i75 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %type.i75, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %38)
  %cmp1.i76 = icmp eq i16 %38, 3
  br i1 %cmp1.i76, label %if.end29, label %land.lhs.true.i77.cleanup_crit_edge

land.lhs.true.i77.cleanup_crit_edge:              ; preds = %land.lhs.true.i77
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true.i77
  call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_node_list_lock) #12
  call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_neigh_list_lock) #12
  %rose_node.0107.i = load ptr, ptr @rose_node_list, align 4
  %cond108.i = icmp eq ptr %rose_node.0107.i, null
  br i1 %cond108.i, label %if.end29.rose_del_node.exit_crit_edge, label %while.body.lr.ph.i

if.end29.rose_del_node.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %rose_del_node.exit

while.body.lr.ph.i:                               ; preds = %if.end29
  %mask1.i = getelementptr inbounds %struct.rose_route_struct, ptr %rose_route, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i83.while.body.i_crit_edge, %while.body.lr.ph.i
  %rose_node.0109.i = phi ptr [ %rose_node.0107.i, %while.body.lr.ph.i ], [ %rose_node.0.i, %if.end.i83.while.body.i_crit_edge ]
  %mask.i = getelementptr inbounds %struct.rose_node, ptr %rose_node.0109.i, i32 0, i32 2
  %39 = ptrtoint ptr %mask.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %mask.i, align 2
  %41 = ptrtoint ptr %mask1.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %mask1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %42)
  %cmp3.i = icmp eq i16 %40, %42
  br i1 %cmp3.i, label %land.lhs.true.i82, label %while.body.i.if.end.i83_crit_edge

while.body.i.if.end.i83_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i83

land.lhs.true.i82:                                ; preds = %while.body.i
  %address5.i = getelementptr inbounds %struct.rose_node, ptr %rose_node.0109.i, i32 0, i32 1
  %call.i81 = call i32 @rosecmpm(ptr noundef nonnull %rose_route, ptr noundef %address5.i, i16 noundef zeroext %40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %cmp7.i = icmp eq i32 %call.i81, 0
  br i1 %cmp7.i, label %lor.lhs.false.i, label %land.lhs.true.i82.if.end.i83_crit_edge

land.lhs.true.i82.if.end.i83_crit_edge:           ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i83

if.end.i83:                                       ; preds = %land.lhs.true.i82.if.end.i83_crit_edge, %while.body.i.if.end.i83_crit_edge
  %43 = ptrtoint ptr %rose_node.0109.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %rose_node.0.i = load ptr, ptr %rose_node.0109.i, align 4
  %cond.i = icmp eq ptr %rose_node.0.i, null
  br i1 %cond.i, label %if.end.i83.rose_del_node.exit_crit_edge, label %if.end.i83.while.body.i_crit_edge

if.end.i83.while.body.i_crit_edge:                ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end.i83.rose_del_node.exit_crit_edge:          ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #14
  br label %rose_del_node.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i82
  %loopback.i = getelementptr inbounds %struct.rose_node, ptr %rose_node.0109.i, i32 0, i32 4
  %44 = ptrtoint ptr %loopback.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %loopback.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i84 = icmp eq i8 %45, 0
  br i1 %tobool.not.i84, label %while.cond14.preheader.i, label %lor.lhs.false.i.rose_del_node.exit_crit_edge

lor.lhs.false.i.rose_del_node.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rose_del_node.exit

while.cond14.preheader.i:                         ; preds = %lor.lhs.false.i
  %rose_neigh.0110.i = load ptr, ptr @rose_neigh_list, align 4
  %cond99111.i = icmp eq ptr %rose_neigh.0110.i, null
  br i1 %cond99111.i, label %while.cond14.preheader.i.rose_del_node.exit_crit_edge, label %while.body17.lr.ph.i

while.cond14.preheader.i.rose_del_node.exit_crit_edge: ; preds = %while.cond14.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rose_del_node.exit

while.body17.lr.ph.i:                             ; preds = %while.cond14.preheader.i
  %neighbour.i = getelementptr inbounds %struct.rose_route_struct, ptr %rose_route, i32 0, i32 2
  br label %while.body17.i

while.body17.i:                                   ; preds = %if.end26.i.while.body17.i_crit_edge, %while.body17.lr.ph.i
  %rose_neigh.0112.i = phi ptr [ %rose_neigh.0110.i, %while.body17.lr.ph.i ], [ %rose_neigh.0.i, %if.end26.i.while.body17.i_crit_edge ]
  %callsign.i = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh.0112.i, i32 0, i32 1
  %call18.i = call i32 @ax25cmp(ptr noundef %neighbour.i, ptr noundef %callsign.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp eq i32 %call18.i, 0
  br i1 %cmp19.i, label %land.lhs.true21.i, label %while.body17.i.if.end26.i_crit_edge

while.body17.i.if.end26.i_crit_edge:              ; preds = %while.body17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

land.lhs.true21.i:                                ; preds = %while.body17.i
  %dev22.i = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh.0112.i, i32 0, i32 4
  %46 = ptrtoint ptr %dev22.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev22.i, align 4
  %cmp23.i = icmp eq ptr %47, %call.i69
  br i1 %cmp23.i, label %for.cond.preheader.i, label %land.lhs.true21.i.if.end26.i_crit_edge

land.lhs.true21.i.if.end26.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

for.cond.preheader.i:                             ; preds = %land.lhs.true21.i
  %count.i = getelementptr inbounds %struct.rose_node, ptr %rose_node.0109.i, i32 0, i32 3
  %48 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %count.i, align 4
  %conv33.i = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp34114.not.i = icmp eq i8 %49, 0
  br i1 %cmp34114.not.i, label %for.cond.preheader.i.rose_del_node.exit_crit_edge, label %for.cond.preheader.i.for.body.i85_crit_edge

for.cond.preheader.i.for.body.i85_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i85

for.cond.preheader.i.rose_del_node.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rose_del_node.exit

if.end26.i:                                       ; preds = %land.lhs.true21.i.if.end26.i_crit_edge, %while.body17.i.if.end26.i_crit_edge
  %50 = ptrtoint ptr %rose_neigh.0112.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %rose_neigh.0.i = load ptr, ptr %rose_neigh.0112.i, align 4
  %cond99.i = icmp eq ptr %rose_neigh.0.i, null
  br i1 %cond99.i, label %if.end26.i.rose_del_node.exit_crit_edge, label %if.end26.i.while.body17.i_crit_edge

if.end26.i.while.body17.i_crit_edge:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body17.i

if.end26.i.rose_del_node.exit_crit_edge:          ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rose_del_node.exit

for.body.i85:                                     ; preds = %for.inc.i86.for.body.i85_crit_edge, %for.cond.preheader.i.for.body.i85_crit_edge
  %i.0115.i = phi i32 [ %inc.i, %for.inc.i86.for.body.i85_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i85_crit_edge ]
  %arrayidx.i = getelementptr %struct.rose_node, ptr %rose_node.0109.i, i32 0, i32 5, i32 %i.0115.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i, align 4
  %cmp37.i = icmp eq ptr %52, %rose_neigh.0112.i
  br i1 %cmp37.i, label %if.then39.i, label %for.inc.i86

if.then39.i:                                      ; preds = %for.body.i85
  %neighbour36.le.i = getelementptr inbounds %struct.rose_node, ptr %rose_node.0109.i, i32 0, i32 5
  %count40.i = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh.0112.i, i32 0, i32 5
  %53 = ptrtoint ptr %count40.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %count40.i, align 4
  %dec.i = add i16 %54, -1
  store i16 %dec.i, ptr %count40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.i)
  %cmp43.i = icmp eq i16 %dec.i, 0
  br i1 %cmp43.i, label %land.lhs.true45.i, label %if.then39.i.if.end50.i_crit_edge

if.then39.i.if.end50.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

land.lhs.true45.i:                                ; preds = %if.then39.i
  %use.i = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh.0112.i, i32 0, i32 6
  %55 = ptrtoint ptr %use.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %use.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp47.i = icmp eq i16 %56, 0
  br i1 %cmp47.i, label %if.then49.i, label %land.lhs.true45.i.if.end50.i_crit_edge

land.lhs.true45.i.if.end50.i_crit_edge:           ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

if.then49.i:                                      ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @rose_remove_neigh(ptr noundef nonnull %rose_neigh.0112.i) #12
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then49.i, %land.lhs.true45.i.if.end50.i_crit_edge, %if.then39.i.if.end50.i_crit_edge
  %57 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %count.i, align 4
  %dec52.i = add i8 %58, -1
  store i8 %dec52.i, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec52.i)
  %cmp55.i = icmp eq i8 %dec52.i, 0
  br i1 %cmp55.i, label %if.then57.i, label %if.else.i

if.then57.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @rose_remove_node(ptr noundef nonnull %rose_node.0109.i) #12
  br label %rose_del_node.exit

if.else.i:                                        ; preds = %if.end50.i
  %59 = zext i32 %i.0115.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %i.0115.i, label %if.else.i.rose_del_node.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %if.else.i.sw.bb62.i_crit_edge
  ]

if.else.i.sw.bb62.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb62.i

if.else.i.rose_del_node.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rose_del_node.exit

sw.bb.i:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx59.i = getelementptr %struct.rose_node, ptr %rose_node.0109.i, i32 0, i32 5, i32 1
  %60 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx59.i, align 4
  %62 = ptrtoint ptr %neighbour36.le.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %neighbour36.le.i, align 4
  br label %sw.bb62.i

sw.bb62.i:                                        ; preds = %sw.bb.i, %if.else.i.sw.bb62.i_crit_edge
  %arrayidx64.i = getelementptr %struct.rose_node, ptr %rose_node.0109.i, i32 0, i32 5, i32 2
  %63 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx64.i, align 4
  %arrayidx66.i = getelementptr %struct.rose_node, ptr %rose_node.0109.i, i32 0, i32 5, i32 1
  %65 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %arrayidx66.i, align 4
  br label %rose_del_node.exit

for.inc.i86:                                      ; preds = %for.body.i85
  %inc.i = add nuw nsw i32 %i.0115.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv33.i
  br i1 %exitcond.not.i, label %for.inc.i86.rose_del_node.exit_crit_edge, label %for.inc.i86.for.body.i85_crit_edge

for.inc.i86.for.body.i85_crit_edge:               ; preds = %for.inc.i86
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i85

for.inc.i86.rose_del_node.exit_crit_edge:         ; preds = %for.inc.i86
  call void @__sanitizer_cov_trace_pc() #14
  br label %rose_del_node.exit

rose_del_node.exit:                               ; preds = %for.inc.i86.rose_del_node.exit_crit_edge, %sw.bb62.i, %if.else.i.rose_del_node.exit_crit_edge, %if.then57.i, %if.end26.i.rose_del_node.exit_crit_edge, %for.cond.preheader.i.rose_del_node.exit_crit_edge, %while.cond14.preheader.i.rose_del_node.exit_crit_edge, %lor.lhs.false.i.rose_del_node.exit_crit_edge, %if.end.i83.rose_del_node.exit_crit_edge, %if.end29.rose_del_node.exit_crit_edge
  %err.0.i = phi i32 [ 0, %if.then57.i ], [ 0, %if.else.i.rose_del_node.exit_crit_edge ], [ 0, %sw.bb62.i ], [ -22, %lor.lhs.false.i.rose_del_node.exit_crit_edge ], [ -22, %for.cond.preheader.i.rose_del_node.exit_crit_edge ], [ -22, %while.cond14.preheader.i.rose_del_node.exit_crit_edge ], [ -22, %if.end29.rose_del_node.exit_crit_edge ], [ -22, %for.inc.i86.rose_del_node.exit_crit_edge ], [ -22, %if.end26.i.rose_del_node.exit_crit_edge ], [ -22, %if.end.i83.rose_del_node.exit_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_neigh_list_lock) #12
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_node_list_lock) #12
  br label %cleanup

sw.bb31:                                          ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_node_list_lock) #12
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_neigh_list_lock) #12
  %66 = load ptr, ptr @rose_neigh_list, align 4
  %67 = load ptr, ptr @rose_node_list, align 4
  %cmp.not2.i = icmp eq ptr %67, null
  br i1 %cmp.not2.i, label %sw.bb31.while.cond1.preheader.i_crit_edge, label %sw.bb31.while.body.i90_crit_edge

sw.bb31.while.body.i90_crit_edge:                 ; preds = %sw.bb31
  br label %while.body.i90

sw.bb31.while.cond1.preheader.i_crit_edge:        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond1.preheader.i

while.cond1.preheader.i:                          ; preds = %if.end.i94.while.cond1.preheader.i_crit_edge, %sw.bb31.while.cond1.preheader.i_crit_edge
  %cmp2.not4.i = icmp eq ptr %66, null
  br i1 %cmp2.not4.i, label %while.cond1.preheader.i.rose_clear_routes.exit_crit_edge, label %while.cond1.preheader.i.while.body3.i_crit_edge

while.cond1.preheader.i.while.body3.i_crit_edge:  ; preds = %while.cond1.preheader.i
  br label %while.body3.i

while.cond1.preheader.i.rose_clear_routes.exit_crit_edge: ; preds = %while.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rose_clear_routes.exit

while.body.i90:                                   ; preds = %if.end.i94.while.body.i90_crit_edge, %sw.bb31.while.body.i90_crit_edge
  %rose_node.03.i = phi ptr [ %69, %if.end.i94.while.body.i90_crit_edge ], [ %67, %sw.bb31.while.body.i90_crit_edge ]
  %68 = ptrtoint ptr %rose_node.03.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rose_node.03.i, align 4
  %loopback.i88 = getelementptr inbounds %struct.rose_node, ptr %rose_node.03.i, i32 0, i32 4
  %70 = ptrtoint ptr %loopback.i88 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %loopback.i88, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i89 = icmp eq i8 %71, 0
  br i1 %tobool.not.i89, label %if.then.i92, label %while.body.i90.if.end.i94_crit_edge

while.body.i90.if.end.i94_crit_edge:              ; preds = %while.body.i90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i94

if.then.i92:                                      ; preds = %while.body.i90
  %72 = load ptr, ptr @rose_node_list, align 4
  %cmp.i.i91 = icmp eq ptr %72, %rose_node.03.i
  br i1 %cmp.i.i91, label %if.then.i92.cleanup.sink.split.i.i_crit_edge, label %if.then.i92.while.cond.i.i_crit_edge

if.then.i92.while.cond.i.i_crit_edge:             ; preds = %if.then.i92
  br label %while.cond.i.i

if.then.i92.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then.i92.while.cond.i.i_crit_edge
  %s.0.i.i = phi ptr [ %74, %while.body.i.i.while.cond.i.i_crit_edge ], [ %72, %if.then.i92.while.cond.i.i_crit_edge ]
  %cmp1.not.i.i = icmp eq ptr %s.0.i.i, null
  br i1 %cmp1.not.i.i, label %while.cond.i.i.if.end.i94_crit_edge, label %land.rhs.i.i

while.cond.i.i.if.end.i94_crit_edge:              ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i94

land.rhs.i.i:                                     ; preds = %while.cond.i.i
  %73 = ptrtoint ptr %s.0.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s.0.i.i, align 4
  %cmp3.not.i.i = icmp eq ptr %74, null
  br i1 %cmp3.not.i.i, label %land.rhs.i.i.if.end.i94_crit_edge, label %while.body.i.i

land.rhs.i.i.if.end.i94_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i94

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %cmp5.i.i = icmp eq ptr %74, %rose_node.03.i
  br i1 %cmp5.i.i, label %while.body.i.i.cleanup.sink.split.i.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

while.body.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %while.body.i.i.cleanup.sink.split.i.i_crit_edge, %if.then.i92.cleanup.sink.split.i.i_crit_edge
  %s.0.lcssa23.sink.i.i = phi ptr [ @rose_node_list, %if.then.i92.cleanup.sink.split.i.i_crit_edge ], [ %s.0.i.i, %while.body.i.i.cleanup.sink.split.i.i_crit_edge ]
  %75 = ptrtoint ptr %s.0.lcssa23.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %69, ptr %s.0.lcssa23.sink.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %rose_node.03.i) #12
  br label %if.end.i94

if.end.i94:                                       ; preds = %cleanup.sink.split.i.i, %land.rhs.i.i.if.end.i94_crit_edge, %while.cond.i.i.if.end.i94_crit_edge, %while.body.i90.if.end.i94_crit_edge
  %cmp.not.i93 = icmp eq ptr %69, null
  br i1 %cmp.not.i93, label %if.end.i94.while.cond1.preheader.i_crit_edge, label %if.end.i94.while.body.i90_crit_edge

if.end.i94.while.body.i90_crit_edge:              ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i90

if.end.i94.while.cond1.preheader.i_crit_edge:     ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond1.preheader.i

while.body3.i:                                    ; preds = %if.end10.i.while.body3.i_crit_edge, %while.cond1.preheader.i.while.body3.i_crit_edge
  %rose_neigh.05.i = phi ptr [ %77, %if.end10.i.while.body3.i_crit_edge ], [ %66, %while.cond1.preheader.i.while.body3.i_crit_edge ]
  %76 = ptrtoint ptr %rose_neigh.05.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rose_neigh.05.i, align 4
  %use.i95 = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh.05.i, i32 0, i32 6
  %78 = ptrtoint ptr %use.i95 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %use.i95, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %cmp5.i = icmp eq i16 %79, 0
  br i1 %cmp5.i, label %land.lhs.true.i96, label %while.body3.i.if.end10.i_crit_edge

while.body3.i.if.end10.i_crit_edge:               ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

land.lhs.true.i96:                                ; preds = %while.body3.i
  %loopback7.i = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh.05.i, i32 0, i32 10
  %80 = ptrtoint ptr %loopback7.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %loopback7.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool8.not.i = icmp eq i8 %81, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %land.lhs.true.i96.if.end10.i_crit_edge

land.lhs.true.i96.if.end10.i_crit_edge:           ; preds = %land.lhs.true.i96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.then9.i:                                       ; preds = %land.lhs.true.i96
  call void @__sanitizer_cov_trace_pc() #14
  %count.i97 = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh.05.i, i32 0, i32 5
  %82 = ptrtoint ptr %count.i97 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %count.i97, align 4
  tail call fastcc void @rose_remove_neigh(ptr noundef nonnull %rose_neigh.05.i) #12
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %land.lhs.true.i96.if.end10.i_crit_edge, %while.body3.i.if.end10.i_crit_edge
  %cmp2.not.i = icmp eq ptr %77, null
  br i1 %cmp2.not.i, label %if.end10.i.rose_clear_routes.exit_crit_edge, label %if.end10.i.while.body3.i_crit_edge

if.end10.i.while.body3.i_crit_edge:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body3.i

if.end10.i.rose_clear_routes.exit_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rose_clear_routes.exit

rose_clear_routes.exit:                           ; preds = %if.end10.i.rose_clear_routes.exit_crit_edge, %while.cond1.preheader.i.rose_clear_routes.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_neigh_list_lock) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_node_list_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %rose_clear_routes.exit, %rose_del_node.exit, %land.lhs.true.i77.cleanup_crit_edge, %if.end.i74.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then11.i.i56, %if.end16, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %rose_dev_exists.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rose_clear_routes.exit ], [ %err.0.i, %rose_del_node.exit ], [ %call17, %if.end16 ], [ -22, %rose_dev_exists.exit.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -14, %if.then11.i.i56 ], [ -22, %if.end22.cleanup_crit_edge ], [ -22, %land.lhs.true.i77.cleanup_crit_edge ], [ -22, %if.end.i74.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %rose_route) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rose_add_node(ptr noundef %rose_route, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_node_list_lock) #12
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_neigh_list_lock) #12
  %rose_node.0224 = load ptr, ptr @rose_node_list, align 4
  %cmp.not225 = icmp eq ptr %rose_node.0224, null
  br i1 %cmp.not225, label %entry.if.end14_crit_edge, label %while.body.lr.ph

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

while.body.lr.ph:                                 ; preds = %entry
  %mask1 = getelementptr inbounds %struct.rose_route_struct, ptr %rose_route, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %rose_node.0226 = phi ptr [ %rose_node.0224, %while.body.lr.ph ], [ %rose_node.0, %if.end.while.body_crit_edge ]
  %mask = getelementptr inbounds %struct.rose_node, ptr %rose_node.0226, i32 0, i32 2
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mask, align 2
  %2 = ptrtoint ptr %mask1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mask1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp3 = icmp eq i16 %1, %3
  br i1 %cmp3, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %address5 = getelementptr inbounds %struct.rose_node, ptr %rose_node.0226, i32 0, i32 1
  %call = tail call i32 @rosecmpm(ptr noundef %rose_route, ptr noundef %address5, i16 noundef zeroext %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %land.lhs.true11.critedge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %4 = ptrtoint ptr %rose_node.0226 to i32
  call void @__asan_load4_noabort(i32 %4)
  %rose_node.0 = load ptr, ptr %rose_node.0226, align 4
  %cmp.not = icmp eq ptr %rose_node.0, null
  br i1 %cmp.not, label %if.end.if.end14_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.lhs.true11.critedge:                         ; preds = %land.lhs.true
  %loopback = getelementptr inbounds %struct.rose_node, ptr %rose_node.0226, i32 0, i32 4
  %5 = ptrtoint ptr %loopback to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %loopback, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true11.critedge.if.end14_crit_edge, label %land.lhs.true11.critedge.out_crit_edge

land.lhs.true11.critedge.out_crit_edge:           ; preds = %land.lhs.true11.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true11.critedge.if.end14_crit_edge:      ; preds = %land.lhs.true11.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true11.critedge.if.end14_crit_edge, %if.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  %rose_node.0223 = phi ptr [ %rose_node.0226, %land.lhs.true11.critedge.if.end14_crit_edge ], [ null, %entry.if.end14_crit_edge ], [ null, %if.end.if.end14_crit_edge ]
  %cmp.not221 = phi i1 [ false, %land.lhs.true11.critedge.if.end14_crit_edge ], [ true, %entry.if.end14_crit_edge ], [ true, %if.end.if.end14_crit_edge ]
  %rose_neigh.0229 = load ptr, ptr @rose_neigh_list, align 4
  %cond230 = icmp eq ptr %rose_neigh.0229, null
  br i1 %cond230, label %if.end14.if.then32_crit_edge, label %while.body18.lr.ph

if.end14.if.then32_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

while.body18.lr.ph:                               ; preds = %if.end14
  %neighbour = getelementptr inbounds %struct.rose_route_struct, ptr %rose_route, i32 0, i32 2
  br label %while.body18

while.body18:                                     ; preds = %if.end27.while.body18_crit_edge, %while.body18.lr.ph
  %rose_neigh.0231 = phi ptr [ %rose_neigh.0229, %while.body18.lr.ph ], [ %rose_neigh.0, %if.end27.while.body18_crit_edge ]
  %callsign = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh.0231, i32 0, i32 1
  %call19 = tail call i32 @ax25cmp(ptr noundef %neighbour, ptr noundef %callsign) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %land.lhs.true22, label %while.body18.if.end27_crit_edge

while.body18.if.end27_crit_edge:                  ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

land.lhs.true22:                                  ; preds = %while.body18
  %dev23 = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh.0231, i32 0, i32 4
  %7 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev23, align 4
  %cmp24 = icmp eq ptr %8, %dev
  br i1 %cmp24, label %land.lhs.true22.if.end70_crit_edge, label %land.lhs.true22.if.end27_crit_edge

land.lhs.true22.if.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

land.lhs.true22.if.end70_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.end27:                                         ; preds = %land.lhs.true22.if.end27_crit_edge, %while.body18.if.end27_crit_edge
  %9 = ptrtoint ptr %rose_neigh.0231 to i32
  call void @__asan_load4_noabort(i32 %9)
  %rose_neigh.0 = load ptr, ptr %rose_neigh.0231, align 4
  %cond = icmp eq ptr %rose_neigh.0, null
  br i1 %cond, label %if.end27.if.then32_crit_edge, label %if.end27.while.body18_crit_edge

if.end27.while.body18_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body18

if.end27.if.then32_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

if.then32:                                        ; preds = %if.end27.if.then32_crit_edge, %if.end14.if.then32_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2592, i32 noundef 188) #15
  %cmp34 = icmp eq ptr %call7.i, null
  br i1 %cmp34, label %if.then32.out_crit_edge, label %if.end37

if.then32.out_crit_edge:                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end37:                                         ; preds = %if.then32
  %callsign38 = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 1
  %neighbour39 = getelementptr inbounds %struct.rose_route_struct, ptr %rose_route, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %callsign38, ptr %neighbour39, i32 7)
  %digipeat = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 2
  %12 = ptrtoint ptr %digipeat to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %digipeat, align 4
  %ax25 = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 3
  %13 = ptrtoint ptr %ax25 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %ax25, align 8
  %dev40 = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 4
  %14 = ptrtoint ptr %dev40 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %dev40, align 4
  %count = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 5
  %15 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %count, align 8
  %use = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 6
  %16 = ptrtoint ptr %use to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %use, align 2
  %dce_mode = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 9
  %17 = ptrtoint ptr %dce_mode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %dce_mode, align 1
  %loopback41 = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 10
  %18 = ptrtoint ptr %loopback41 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %loopback41, align 2
  %19 = load i32, ptr @rose_neigh_no, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr @rose_neigh_no, align 4
  %number = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 7
  %20 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %number, align 4
  %restarted = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 8
  %21 = ptrtoint ptr %restarted to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %restarted, align 8
  %queue = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 11
  %lock.i = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 11, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #12
  %22 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %queue, ptr %queue, align 4
  %prev.i.i = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 11, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %queue, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 11, i32 1
  %24 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %qlen.i.i, align 4
  %ftimer = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 13
  tail call void @init_timer_key(ptr noundef %ftimer, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @rose_add_node.__key) #12
  %t0timer = getelementptr inbounds %struct.rose_neigh, ptr %call7.i, i32 0, i32 12
  tail call void @init_timer_key(ptr noundef %t0timer, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull @rose_add_node.__key.17) #12
  %ndigis = getelementptr inbounds %struct.rose_route_struct, ptr %rose_route, i32 0, i32 4
  %25 = ptrtoint ptr %ndigis to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ndigis, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp46.not = icmp eq i8 %26, 0
  br i1 %cmp46.not, label %if.end37.if.end68_crit_edge, label %if.then48

if.end37.if.end68_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.then48:                                        ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i217 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 2592, i32 noundef 66) #15
  %28 = ptrtoint ptr %digipeat to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i217, ptr %digipeat, align 4
  %cmp52 = icmp eq ptr %call7.i217, null
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %out

if.end55:                                         ; preds = %if.then48
  %29 = ptrtoint ptr %ndigis to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ndigis, align 1
  %ndigi = getelementptr inbounds %struct.ax25_digi, ptr %call7.i217, i32 0, i32 2
  %31 = ptrtoint ptr %ndigi to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %ndigi, align 8
  %lastrepeat = getelementptr inbounds %struct.ax25_digi, ptr %call7.i217, i32 0, i32 3
  %32 = ptrtoint ptr %lastrepeat to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %lastrepeat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp61233.not = icmp eq i8 %30, 0
  br i1 %cmp61233.not, label %if.end55.if.end68_crit_edge, label %if.end55.for.body_crit_edge

if.end55.for.body_crit_edge:                      ; preds = %if.end55
  br label %for.body

if.end55.if.end68_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end55.for.body_crit_edge
  %i.0234 = phi i32 [ %inc67, %for.body.for.body_crit_edge ], [ 0, %if.end55.for.body_crit_edge ]
  %33 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %digipeat, align 4
  %arrayidx = getelementptr [8 x %struct.ax25_address], ptr %34, i32 0, i32 %i.0234
  %arrayidx64 = getelementptr %struct.rose_route_struct, ptr %rose_route, i32 0, i32 5, i32 %i.0234
  %35 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx64, i32 7)
  %36 = load ptr, ptr %digipeat, align 4
  %arrayidx66 = getelementptr %struct.ax25_digi, ptr %36, i32 0, i32 1, i32 %i.0234
  %37 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx66, align 1
  %inc67 = add nuw nsw i32 %i.0234, 1
  %38 = ptrtoint ptr %ndigis to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ndigis, align 1
  %conv60 = zext i8 %39 to i32
  %cmp61 = icmp ult i32 %inc67, %conv60
  br i1 %cmp61, label %for.body.for.body_crit_edge, label %for.body.if.end68_crit_edge

for.body.if.end68_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end68:                                         ; preds = %for.body.if.end68_crit_edge, %if.end55.if.end68_crit_edge, %if.end37.if.end68_crit_edge
  %40 = load ptr, ptr @rose_neigh_list, align 4
  %41 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %call7.i, align 8
  store ptr %call7.i, ptr @rose_neigh_list, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.end68, %land.lhs.true22.if.end70_crit_edge
  %rose_neigh.1 = phi ptr [ %call7.i, %if.end68 ], [ %rose_neigh.0231, %land.lhs.true22.if.end70_crit_edge ]
  br i1 %cmp.not221, label %while.cond74.preheader, label %if.end124

while.cond74.preheader:                           ; preds = %if.end70
  %rose_tmpn.0235 = load ptr, ptr @rose_node_list, align 4
  %cmp75.not236 = icmp eq ptr %rose_tmpn.0235, null
  br i1 %cmp75.not236, label %while.cond74.preheader.while.end87_crit_edge, label %while.body77.lr.ph

while.cond74.preheader.while.end87_crit_edge:     ; preds = %while.cond74.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end87

while.body77.lr.ph:                               ; preds = %while.cond74.preheader
  %mask80 = getelementptr inbounds %struct.rose_route_struct, ptr %rose_route, i32 0, i32 1
  %42 = ptrtoint ptr %mask80 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mask80, align 2
  %mask78253 = getelementptr inbounds %struct.rose_node, ptr %rose_tmpn.0235, i32 0, i32 2
  %44 = ptrtoint ptr %mask78253 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %mask78253, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %43)
  %cmp82254 = icmp ugt i16 %45, %43
  br i1 %cmp82254, label %while.body77.lr.ph.while.cond74_crit_edge, label %while.body77.lr.ph.while.end87_crit_edge

while.body77.lr.ph.while.end87_crit_edge:         ; preds = %while.body77.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end87

while.body77.lr.ph.while.cond74_crit_edge:        ; preds = %while.body77.lr.ph
  br label %while.cond74

while.cond74:                                     ; preds = %while.body77.while.cond74_crit_edge, %while.body77.lr.ph.while.cond74_crit_edge
  %rose_tmpn.0238255 = phi ptr [ %rose_tmpn.0, %while.body77.while.cond74_crit_edge ], [ %rose_tmpn.0235, %while.body77.lr.ph.while.cond74_crit_edge ]
  %46 = ptrtoint ptr %rose_tmpn.0238255 to i32
  call void @__asan_load4_noabort(i32 %46)
  %rose_tmpn.0 = load ptr, ptr %rose_tmpn.0238255, align 4
  %cmp75.not = icmp eq ptr %rose_tmpn.0, null
  br i1 %cmp75.not, label %while.cond74.while.end87_crit_edge, label %while.body77

while.cond74.while.end87_crit_edge:               ; preds = %while.cond74
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end87

while.body77:                                     ; preds = %while.cond74
  %mask78 = getelementptr inbounds %struct.rose_node, ptr %rose_tmpn.0, i32 0, i32 2
  %47 = ptrtoint ptr %mask78 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %mask78, align 2
  %cmp82 = icmp ugt i16 %48, %43
  br i1 %cmp82, label %while.body77.while.cond74_crit_edge, label %while.body77.while.end87_crit_edge

while.body77.while.end87_crit_edge:               ; preds = %while.body77
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end87

while.body77.while.cond74_crit_edge:              ; preds = %while.body77
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond74

while.end87:                                      ; preds = %while.body77.while.end87_crit_edge, %while.cond74.while.end87_crit_edge, %while.body77.lr.ph.while.end87_crit_edge, %while.cond74.preheader.while.end87_crit_edge
  %rose_tmpp.0.lcssa = phi ptr [ null, %while.cond74.preheader.while.end87_crit_edge ], [ null, %while.body77.lr.ph.while.end87_crit_edge ], [ %rose_tmpn.0238255, %while.cond74.while.end87_crit_edge ], [ %rose_tmpn.0238255, %while.body77.while.end87_crit_edge ]
  %rose_tmpn.0.lcssa = phi ptr [ null, %while.cond74.preheader.while.end87_crit_edge ], [ %rose_tmpn.0235, %while.body77.lr.ph.while.end87_crit_edge ], [ null, %while.cond74.while.end87_crit_edge ], [ %rose_tmpn.0, %while.body77.while.end87_crit_edge ]
  %cmp75.not.lcssa = phi i1 [ true, %while.cond74.preheader.while.end87_crit_edge ], [ false, %while.body77.lr.ph.while.end87_crit_edge ], [ %cmp75.not, %while.cond74.while.end87_crit_edge ], [ %cmp75.not, %while.body77.while.end87_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i218 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 2592, i32 noundef 28) #15
  %cmp89 = icmp eq ptr %call7.i218, null
  br i1 %cmp89, label %while.end87.out_crit_edge, label %if.end92

while.end87.out_crit_edge:                        ; preds = %while.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end92:                                         ; preds = %while.end87
  %address93 = getelementptr inbounds %struct.rose_node, ptr %call7.i218, i32 0, i32 1
  %50 = call ptr @memcpy(ptr %address93, ptr %rose_route, i32 5)
  %mask95 = getelementptr inbounds %struct.rose_route_struct, ptr %rose_route, i32 0, i32 1
  %51 = ptrtoint ptr %mask95 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %mask95, align 2
  %mask96 = getelementptr inbounds %struct.rose_node, ptr %call7.i218, i32 0, i32 2
  %53 = ptrtoint ptr %mask96 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %mask96, align 2
  %count97 = getelementptr inbounds %struct.rose_node, ptr %call7.i218, i32 0, i32 3
  %54 = ptrtoint ptr %count97 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %count97, align 4
  %loopback98 = getelementptr inbounds %struct.rose_node, ptr %call7.i218, i32 0, i32 4
  %55 = ptrtoint ptr %loopback98 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %loopback98, align 1
  %neighbour99 = getelementptr inbounds %struct.rose_node, ptr %call7.i218, i32 0, i32 5
  %56 = ptrtoint ptr %neighbour99 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %rose_neigh.1, ptr %neighbour99, align 8
  %cmp104 = icmp eq ptr %rose_tmpp.0.lcssa, null
  br i1 %cmp75.not.lcssa, label %if.then103, label %if.else112

if.then103:                                       ; preds = %if.end92
  br i1 %cmp104, label %if.then106, label %if.else108

if.then106:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %call7.i218, ptr @rose_node_list, align 4
  %57 = ptrtoint ptr %call7.i218 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %call7.i218, align 8
  br label %if.end121

if.else108:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %rose_tmpp.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call7.i218, ptr %rose_tmpp.0.lcssa, align 4
  %59 = ptrtoint ptr %call7.i218 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %call7.i218, align 8
  br label %if.end121

if.else112:                                       ; preds = %if.end92
  br i1 %cmp104, label %if.then115, label %if.else117

if.then115:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #14
  %60 = load ptr, ptr @rose_node_list, align 4
  %61 = ptrtoint ptr %call7.i218 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %call7.i218, align 8
  store ptr %call7.i218, ptr @rose_node_list, align 4
  br label %if.end121

if.else117:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %rose_tmpp.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i218, ptr %rose_tmpp.0.lcssa, align 4
  %63 = ptrtoint ptr %call7.i218 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %rose_tmpn.0.lcssa, ptr %call7.i218, align 8
  br label %if.end121

if.end121:                                        ; preds = %if.else117, %if.then115, %if.else108, %if.then106
  %count122 = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh.1, i32 0, i32 5
  %64 = ptrtoint ptr %count122 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %count122, align 4
  %inc123 = add i16 %65, 1
  store i16 %inc123, ptr %count122, align 4
  br label %out

if.end124:                                        ; preds = %if.end70
  %count125 = getelementptr inbounds %struct.rose_node, ptr %rose_node.0223, i32 0, i32 3
  %66 = ptrtoint ptr %count125 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %count125, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %67)
  %cmp127 = icmp ult i8 %67, 3
  br i1 %cmp127, label %if.then129, label %if.end124.out_crit_edge

if.end124.out_crit_edge:                          ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then129:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  %conv126 = zext i8 %67 to i32
  %arrayidx132 = getelementptr %struct.rose_node, ptr %rose_node.0223, i32 0, i32 5, i32 %conv126
  %68 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %rose_neigh.1, ptr %arrayidx132, align 4
  %inc134 = add nuw nsw i8 %67, 1
  %69 = ptrtoint ptr %count125 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %inc134, ptr %count125, align 4
  %count135 = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh.1, i32 0, i32 5
  %70 = ptrtoint ptr %count135 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %count135, align 4
  %inc136 = add i16 %71, 1
  store i16 %inc136, ptr %count135, align 4
  br label %out

out:                                              ; preds = %if.then129, %if.end124.out_crit_edge, %if.end121, %while.end87.out_crit_edge, %if.then54, %if.then32.out_crit_edge, %land.lhs.true11.critedge.out_crit_edge
  %res.0 = phi i32 [ -12, %if.then54 ], [ 0, %if.end121 ], [ 0, %if.then129 ], [ 0, %if.end124.out_crit_edge ], [ -22, %land.lhs.true11.critedge.out_crit_edge ], [ -12, %if.then32.out_crit_edge ], [ -12, %while.end87.out_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_neigh_list_lock) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_node_list_lock) #12
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_link_failed(ptr noundef %ax25, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_neigh_list_lock) #12
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %rose_neigh.0.in = phi ptr [ @rose_neigh_list, %entry ], [ %rose_neigh.0, %while.body.while.cond_crit_edge ]
  %0 = ptrtoint ptr %rose_neigh.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %rose_neigh.0 = load ptr, ptr %rose_neigh.0.in, align 4
  %cmp.not = icmp eq ptr %rose_neigh.0, null
  br i1 %cmp.not, label %while.cond.if.end6_crit_edge, label %while.body

while.cond.if.end6_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

while.body:                                       ; preds = %while.cond
  %ax251 = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh.0, i32 0, i32 3
  %1 = ptrtoint ptr %ax251 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ax251, align 4
  %cmp2 = icmp eq ptr %2, %ax25
  br i1 %cmp2, label %if.then4.critedge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.then4.critedge:                                ; preds = %while.body
  %ax251.le = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh.0, i32 0, i32 3
  %3 = ptrtoint ptr %ax251.le to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %ax251.le, align 4
  %refcount.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 36
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !114
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then4.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.ax25_cb_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !115

if.end5.i.i.i.i.ax25_cb_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ax25_cb_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #12
  br label %ax25_cb_put.exit

if.then.i:                                        ; preds = %if.then4.critedge
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !116
  %digipeat.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 3
  %5 = ptrtoint ptr %digipeat.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %digipeat.i, align 4
  tail call void @kfree(ptr noundef %6) #12
  tail call void @kfree(ptr noundef %ax25) #12
  br label %ax25_cb_put.exit

ax25_cb_put.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.ax25_cb_put.exit_crit_edge
  tail call fastcc void @rose_del_route_by_neigh(ptr noundef nonnull %rose_neigh.0)
  tail call void @rose_kill_by_neigh(ptr noundef nonnull %rose_neigh.0) #12
  br label %if.end6

if.end6:                                          ; preds = %ax25_cb_put.exit, %while.cond.if.end6_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_neigh_list_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rose_del_route_by_neigh(ptr noundef %rose_neigh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %restarted = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh, i32 0, i32 8
  %0 = ptrtoint ptr %restarted to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %restarted, align 4
  tail call void @rose_stop_t0timer(ptr noundef %rose_neigh) #12
  tail call void @rose_start_ftimer(ptr noundef %rose_neigh) #12
  %queue = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh, i32 0, i32 11
  tail call void @skb_queue_purge(ptr noundef %queue) #12
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_route_list_lock) #12
  %1 = load ptr, ptr @rose_route_list, align 4
  %cmp.not62 = icmp eq ptr %1, null
  br i1 %cmp.not62, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %use = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh, i32 0, i32 6
  %use25 = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh, i32 0, i32 6
  %cmp.not.i = icmp eq ptr %rose_neigh, null
  %use.i = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.preheader
  %rose_route.063 = phi ptr [ %rose_route.0.be, %while.cond.backedge.while.body_crit_edge ], [ %1, %while.body.preheader ]
  %neigh1 = getelementptr inbounds %struct.rose_route, ptr %rose_route.063, i32 0, i32 7
  %2 = ptrtoint ptr %neigh1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %neigh1, align 4
  %cmp1 = icmp eq ptr %3, %rose_neigh
  %neigh2 = getelementptr inbounds %struct.rose_route, ptr %rose_route.063, i32 0, i32 8
  %4 = ptrtoint ptr %neigh2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %neigh2, align 4
  %cmp2 = icmp eq ptr %5, %rose_neigh
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false8.thread

land.lhs.true:                                    ; preds = %while.body
  br i1 %cmp2, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true5

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.lhs.true5:                                   ; preds = %land.lhs.true
  %6 = ptrtoint ptr %neigh2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %neigh2, align 4
  %cmp7 = icmp eq ptr %7, null
  br i1 %cmp7, label %land.lhs.true5.if.then_crit_edge, label %lor.lhs.false8

land.lhs.true5.if.then_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false8:                                   ; preds = %land.lhs.true5
  %neigh29 = getelementptr inbounds %struct.rose_route, ptr %rose_route.063, i32 0, i32 8
  %8 = ptrtoint ptr %neigh29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %neigh29, align 4
  %cmp10 = icmp eq ptr %9, %rose_neigh
  %cmp13 = icmp eq ptr %3, null
  %or.cond = select i1 %cmp10, i1 %cmp13, i1 false
  br i1 %or.cond, label %lor.lhs.false8.if.then.thread_crit_edge, label %if.then16.critedge

lor.lhs.false8.if.then.thread_crit_edge:          ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.thread

lor.lhs.false8.thread:                            ; preds = %while.body
  %cmp1371 = icmp eq ptr %3, null
  %or.cond72 = select i1 %cmp2, i1 %cmp1371, i1 false
  br i1 %or.cond72, label %lor.lhs.false8.thread.if.then.thread_crit_edge, label %lor.lhs.false8.thread.if.end20_crit_edge

lor.lhs.false8.thread.if.end20_crit_edge:         ; preds = %lor.lhs.false8.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

lor.lhs.false8.thread.if.then.thread_crit_edge:   ; preds = %lor.lhs.false8.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.thread

if.then.thread:                                   ; preds = %lor.lhs.false8.thread.if.then.thread_crit_edge, %lor.lhs.false8.if.then.thread_crit_edge
  %10 = ptrtoint ptr %rose_route.063 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rose_route.063, align 4
  br label %if.end.i

if.then:                                          ; preds = %land.lhs.true5.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %12 = ptrtoint ptr %rose_route.063 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rose_route.063, align 4
  br i1 %cmp.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %use.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %use.i, align 2
  %dec.i = add i16 %15, -1
  store i16 %dec.i, ptr %use.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge, %if.then.thread
  %16 = phi ptr [ %11, %if.then.thread ], [ %13, %if.then.i ], [ %13, %if.then.if.end.i_crit_edge ]
  %neigh2.i = getelementptr inbounds %struct.rose_route, ptr %rose_route.063, i32 0, i32 8
  %17 = ptrtoint ptr %neigh2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %neigh2.i, align 4
  %cmp2.not.i = icmp eq ptr %18, null
  br i1 %cmp2.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then3.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %use5.i = getelementptr inbounds %struct.rose_neigh, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %use5.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %use5.i, align 2
  %dec6.i = add i16 %20, -1
  store i16 %dec6.i, ptr %use5.i, align 2
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then3.i, %if.end.i.if.end7.i_crit_edge
  %21 = load ptr, ptr @rose_route_list, align 4
  %cmp8.i = icmp eq ptr %21, %rose_route.063
  br i1 %cmp8.i, label %if.end7.i.cleanup.sink.split.i_crit_edge, label %if.end7.i.while.cond.i_crit_edge

if.end7.i.while.cond.i_crit_edge:                 ; preds = %if.end7.i
  br label %while.cond.i

if.end7.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end7.i.while.cond.i_crit_edge
  %s.0.i = phi ptr [ %23, %while.body.i.while.cond.i_crit_edge ], [ %21, %if.end7.i.while.cond.i_crit_edge ]
  %cmp11.not.i = icmp eq ptr %s.0.i, null
  br i1 %cmp11.not.i, label %while.cond.i.while.cond.backedge_crit_edge, label %land.rhs.i

while.cond.i.while.cond.backedge_crit_edge:       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

land.rhs.i:                                       ; preds = %while.cond.i
  %22 = ptrtoint ptr %s.0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s.0.i, align 4
  %cmp13.not.i = icmp eq ptr %23, null
  br i1 %cmp13.not.i, label %land.rhs.i.while.cond.backedge_crit_edge, label %while.body.i

land.rhs.i.while.cond.backedge_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

while.body.i:                                     ; preds = %land.rhs.i
  %cmp15.i = icmp eq ptr %23, %rose_route.063
  br i1 %cmp15.i, label %while.body.i.cleanup.sink.split.i_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.body.i.cleanup.sink.split.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %while.body.i.cleanup.sink.split.i_crit_edge, %if.end7.i.cleanup.sink.split.i_crit_edge
  %s.0.lcssa39.sink.i = phi ptr [ @rose_route_list, %if.end7.i.cleanup.sink.split.i_crit_edge ], [ %s.0.i, %while.body.i.cleanup.sink.split.i_crit_edge ]
  %24 = ptrtoint ptr %rose_route.063 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rose_route.063, align 4
  %26 = ptrtoint ptr %s.0.lcssa39.sink.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %s.0.lcssa39.sink.i, align 4
  tail call void @kfree(ptr noundef nonnull %rose_route.063) #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end29, %cleanup.sink.split.i, %land.rhs.i.while.cond.backedge_crit_edge, %while.cond.i.while.cond.backedge_crit_edge
  %rose_route.0.be = phi ptr [ %44, %if.end29 ], [ %16, %cleanup.sink.split.i ], [ %16, %while.cond.i.while.cond.backedge_crit_edge ], [ %16, %land.rhs.i.while.cond.backedge_crit_edge ]
  %cmp.not = icmp eq ptr %rose_route.0.be, null
  br i1 %cmp.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.then16.critedge:                               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %use to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %use, align 2
  %dec = add i16 %28, -1
  store i16 %dec, ptr %use, align 2
  %29 = ptrtoint ptr %neigh1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %neigh1, align 4
  %30 = ptrtoint ptr %neigh29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %neigh29, align 4
  %lci2 = getelementptr inbounds %struct.rose_route, ptr %rose_route.063, i32 0, i32 2
  %32 = ptrtoint ptr %lci2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lci2, align 4
  tail call void @rose_transmit_clear_request(ptr noundef %31, i32 noundef %33, i8 noundef zeroext 9, i8 noundef zeroext 0) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then16.critedge, %lor.lhs.false8.thread.if.end20_crit_edge
  %neigh2974 = phi ptr [ %neigh29, %if.then16.critedge ], [ %neigh2, %lor.lhs.false8.thread.if.end20_crit_edge ]
  %34 = ptrtoint ptr %neigh2974 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %neigh2974, align 4
  %cmp22 = icmp eq ptr %35, %rose_neigh
  br i1 %cmp22, label %if.then23, label %if.end20.if.end29_crit_edge

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %use25 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %use25, align 2
  %dec26 = add i16 %37, -1
  store i16 %dec26, ptr %use25, align 2
  %38 = ptrtoint ptr %neigh2974 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %neigh2974, align 4
  %39 = ptrtoint ptr %neigh1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %neigh1, align 4
  %lci1 = getelementptr inbounds %struct.rose_route, ptr %rose_route.063, i32 0, i32 1
  %41 = ptrtoint ptr %lci1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lci1, align 4
  tail call void @rose_transmit_clear_request(ptr noundef %40, i32 noundef %42, i8 noundef zeroext 9, i8 noundef zeroext 0) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %if.end20.if.end29_crit_edge
  %43 = ptrtoint ptr %rose_route.063 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rose_route.063, align 4
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_route_list_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_kill_by_neigh(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_link_device_down(ptr noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rose_neigh.07 = load ptr, ptr @rose_neigh_list, align 4
  %cmp.not8 = icmp eq ptr %rose_neigh.07, null
  br i1 %cmp.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %rose_neigh.09 = phi ptr [ %rose_neigh.0, %for.inc.for.body_crit_edge ], [ %rose_neigh.07, %entry.for.body_crit_edge ]
  %dev1 = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh.09, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %cmp2 = icmp eq ptr %1, %dev
  br i1 %cmp2, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rose_del_route_by_neigh(ptr noundef nonnull %rose_neigh.09)
  tail call void @rose_kill_by_neigh(ptr noundef nonnull %rose_neigh.09) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %2 = ptrtoint ptr %rose_neigh.09 to i32
  call void @__asan_load4_noabort(i32 %2)
  %rose_neigh.0 = load ptr, ptr %rose_neigh.09, align 4
  %cmp.not = icmp eq ptr %rose_neigh.0, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rose_route_frame(ptr noundef %skb, ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  %facilities = alloca %struct.rose_facilities_struct, align 4
  %cause = alloca i8, align 1
  %diagnostic = alloca i8, align 1
  %buf = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %facilities) #12
  %0 = call ptr @memset(ptr %facilities, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cause) #12
  %1 = ptrtoint ptr %cause to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %cause, align 1, !annotation !127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %diagnostic) #12
  %2 = ptrtoint ptr %diagnostic to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %diagnostic, align 1, !annotation !127
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf) #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = call ptr @memset(ptr %buf, i32 255, i32 11)
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ult i32 %5, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %ax25, null
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @rose_loopback_queue(ptr noundef %skb, ptr noundef null) #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i16
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %7, align 1
  %conv5 = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv5, 8
  %and = and i32 %shl, 3840
  %arrayidx7 = getelementptr i8, ptr %7, i32 1
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %13 to i32
  %add = or i32 %and, %conv8
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %9)
  %cmp12 = icmp eq i8 %9, 11
  br i1 %cmp12, label %land.lhs.true, label %if.end2.if.end23_crit_edge

if.end2.if.end23_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %5)
  %cmp15 = icmp ult i32 %5, 15
  br i1 %cmp15, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %arrayidx18 = getelementptr i8, ptr %7, i32 3
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %15)
  %cmp20.not = icmp eq i8 %15, -86
  br i1 %cmp20.not, label %lor.lhs.false.if.end23_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end23:                                         ; preds = %lor.lhs.false.if.end23_crit_edge, %if.end2.if.end23_crit_edge
  %add.ptr = getelementptr i8, ptr %7, i32 9
  %add.ptr26 = getelementptr i8, ptr %7, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_neigh_list_lock) #12
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_route_list_lock) #12
  %rose_neigh.0422 = load ptr, ptr @rose_neigh_list, align 4
  %cond423 = icmp eq ptr %rose_neigh.0422, null
  br i1 %cond423, label %if.end23.do.end_crit_edge, label %while.body.lr.ph

if.end23.do.end_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

while.body.lr.ph:                                 ; preds = %if.end23
  %dest_addr29 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 2
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end39.while.body_crit_edge, %while.body.lr.ph
  %rose_neigh.0424 = phi ptr [ %rose_neigh.0422, %while.body.lr.ph ], [ %rose_neigh.0, %if.end39.while.body_crit_edge ]
  %callsign = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh.0424, i32 0, i32 1
  %call30 = tail call i32 @ax25cmp(ptr noundef %dest_addr29, ptr noundef %callsign) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %land.lhs.true33, label %while.body.if.end39_crit_edge

while.body.if.end39_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

land.lhs.true33:                                  ; preds = %while.body
  %16 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ax25_dev, align 4
  %dev34 = getelementptr inbounds %struct.ax25_dev, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev34, align 4
  %dev35 = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh.0424, i32 0, i32 4
  %20 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev35, align 4
  %cmp36 = icmp eq ptr %19, %21
  br i1 %cmp36, label %if.end46, label %land.lhs.true33.if.end39_crit_edge

land.lhs.true33.if.end39_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true33.if.end39_crit_edge, %while.body.if.end39_crit_edge
  %22 = ptrtoint ptr %rose_neigh.0424 to i32
  call void @__asan_load4_noabort(i32 %22)
  %rose_neigh.0 = load ptr, ptr %rose_neigh.0424, align 4
  %cond = icmp eq ptr %rose_neigh.0, null
  br i1 %cond, label %if.end39.do.end_crit_edge, label %if.end39.while.body_crit_edge

if.end39.while.body_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end39.do.end_crit_edge:                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %if.end39.do.end_crit_edge, %if.end23.do.end_crit_edge
  %dest_addr43 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 2
  %call44 = call ptr @ax2asc(ptr noundef nonnull %buf, ptr noundef %dest_addr43) #12
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %call44) #17
  br label %out

if.end46:                                         ; preds = %land.lhs.true33
  tail call void @rose_stop_ftimer(ptr noundef nonnull %rose_neigh.0424) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp47 = icmp eq i32 %add, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rose_link_rx_restart(ptr noundef %skb, ptr noundef nonnull %rose_neigh.0424, i16 noundef zeroext %conv) #12
  br label %out

if.end50:                                         ; preds = %if.end46
  %call51 = tail call ptr @rose_find_socket(i32 noundef %add, ptr noundef nonnull %rose_neigh.0424) #12
  %cmp52.not = icmp eq ptr %call51, null
  br i1 %cmp52.not, label %if.end70, label %if.then54

if.then54:                                        ; preds = %if.end50
  br i1 %cmp12, label %if.then58, label %if.else

if.then58:                                        ; preds = %if.then54
  tail call void @rose_clear_queues(ptr noundef nonnull %call51) #12
  %cause59 = getelementptr inbounds %struct.rose_sock, ptr %call51, i32 0, i32 17
  %23 = ptrtoint ptr %cause59 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 5, ptr %cause59, align 4
  %diagnostic60 = getelementptr inbounds %struct.rose_sock, ptr %call51, i32 0, i32 18
  %24 = ptrtoint ptr %diagnostic60 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %diagnostic60, align 1
  %neighbour = getelementptr inbounds %struct.rose_sock, ptr %call51, i32 0, i32 9
  %25 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %neighbour, align 8
  %use = getelementptr inbounds %struct.rose_neigh, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %use to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %use, align 2
  %dec = add i16 %28, -1
  store i16 %dec, ptr %use, align 2
  store ptr null, ptr %neighbour, align 8
  %lci62 = getelementptr inbounds %struct.rose_sock, ptr %call51, i32 0, i32 11
  %29 = ptrtoint ptr %lci62 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %lci62, align 8
  %state = getelementptr inbounds %struct.rose_sock, ptr %call51, i32 0, i32 13
  %30 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %state, align 8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call51, i32 0, i32 4
  %31 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %31)
  store volatile i8 7, ptr %skc_state, align 2
  %sk_err = getelementptr inbounds %struct.sock, ptr %call51, i32 0, i32 51
  %32 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %sk_err, align 4
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %call51, i32 0, i32 66
  %33 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sk_shutdown, align 2
  %35 = or i8 %34, 2
  store i8 %35, ptr %sk_shutdown, align 2
  %36 = getelementptr inbounds %struct.sock_common, ptr %call51, i32 0, i32 13
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %and1.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then66, label %if.then58.if.then74_crit_edge

if.then58.if.then74_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then74

if.then66:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %call51, i32 0, i32 76
  %39 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sk_state_change, align 4
  tail call void %40(ptr noundef nonnull %call51) #12
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %36, align 4
  %or.i.i = or i32 %42, 1
  store i32 %or.i.i, ptr %36, align 4
  br label %if.then74

if.else:                                          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %45 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %47 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %call68 = tail call i32 @rose_process_rx_frame(ptr noundef nonnull %call51, ptr noundef %skb) #12
  br label %out

if.end70:                                         ; preds = %if.end50
  br i1 %cmp12, label %if.end70.if.then74_crit_edge, label %if.end70.if.end81_crit_edge

if.end70.if.end81_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.end70.if.then74_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then74

if.then74:                                        ; preds = %if.end70.if.then74_crit_edge, %if.then66, %if.then58.if.then74_crit_edge
  %call75 = tail call ptr @rose_dev_get(ptr noundef %add.ptr26)
  %cmp76.not = icmp eq ptr %call75, null
  br i1 %cmp76.not, label %if.then74.if.end81_crit_edge, label %do.body1.i

if.then74.if.end81_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

do.body1.i:                                       ; preds = %if.then74
  %call79 = tail call i32 @rose_rx_call_request(ptr noundef %skb, ptr noundef nonnull %call75, ptr noundef nonnull %rose_neigh.0424, i32 noundef %add) #12
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !119
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call75, i32 0, i32 118
  %49 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pcpu_refcnt.i, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = tail call i32 @llvm.read_register.i32(metadata !103) #12
  %and.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %57, %51
  %58 = inttoptr i32 %add.i to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %add13.i = add i32 %60, -1
  store i32 %add13.i, ptr %58, align 4
  %61 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !120
  %and.i.i.i = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !121

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %48) #12, !srcloc !122
  br label %out

if.end81:                                         ; preds = %if.then74.if.end81_crit_edge, %if.end70.if.end81_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_rose_routing_control to i32))
  %62 = load i32, ptr @sysctl_rose_routing_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool82.not = icmp eq i32 %62, 0
  br i1 %tobool82.not, label %if.then83, label %while.cond85.preheader

while.cond85.preheader:                           ; preds = %if.end81
  %rose_route.0425 = load ptr, ptr @rose_route_list, align 4
  %cmp86.not426 = icmp eq ptr %rose_route.0425, null
  br i1 %cmp86.not426, label %while.cond85.preheader.while.end183_crit_edge, label %while.cond85.preheader.while.body88_crit_edge

while.cond85.preheader.while.body88_crit_edge:    ; preds = %while.cond85.preheader
  br label %while.body88

while.cond85.preheader.while.end183_crit_edge:    ; preds = %while.cond85.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end183

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rose_transmit_clear_request(ptr noundef nonnull %rose_neigh.0424, i32 noundef %add, i8 noundef zeroext 13, i8 noundef zeroext 0) #12
  br label %out

while.body88:                                     ; preds = %if.end181.while.body88_crit_edge, %while.cond85.preheader.while.body88_crit_edge
  %rose_route.0427 = phi ptr [ %rose_route.0, %if.end181.while.body88_crit_edge ], [ %rose_route.0425, %while.cond85.preheader.while.body88_crit_edge ]
  %lci1 = getelementptr inbounds %struct.rose_route, ptr %rose_route.0427, i32 0, i32 1
  %63 = ptrtoint ptr %lci1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %lci1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %add)
  %cmp89 = icmp eq i32 %64, %add
  br i1 %cmp89, label %land.lhs.true91, label %while.body88.if.end132_crit_edge

while.body88.if.end132_crit_edge:                 ; preds = %while.body88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

land.lhs.true91:                                  ; preds = %while.body88
  %neigh1 = getelementptr inbounds %struct.rose_route, ptr %rose_route.0427, i32 0, i32 7
  %65 = ptrtoint ptr %neigh1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %neigh1, align 4
  %cmp92 = icmp eq ptr %66, %rose_neigh.0424
  br i1 %cmp92, label %if.then94, label %land.lhs.true91.if.end132_crit_edge

land.lhs.true91.if.end132_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

if.then94:                                        ; preds = %land.lhs.true91
  br i1 %cmp12, label %if.then94.if.end188.sink.split_crit_edge, label %if.else99

if.then94.if.end188.sink.split_crit_edge:         ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188.sink.split

if.else99:                                        ; preds = %if.then94
  %neigh2 = getelementptr inbounds %struct.rose_route, ptr %rose_route.0427, i32 0, i32 8
  %67 = ptrtoint ptr %neigh2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %neigh2, align 4
  %cmp100.not = icmp eq ptr %68, null
  br i1 %cmp100.not, label %if.else126, label %if.then102

if.then102:                                       ; preds = %if.else99
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 1
  %73 = and i8 %72, -16
  store i8 %73, ptr %70, align 1
  %lci2 = getelementptr inbounds %struct.rose_route, ptr %rose_route.0427, i32 0, i32 2
  %74 = ptrtoint ptr %lci2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %lci2, align 4
  %shr = lshr i32 %75, 8
  %76 = load ptr, ptr %data, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %76, align 1
  %79 = trunc i32 %shr to i8
  %80 = and i8 %79, 15
  %conv113 = or i8 %80, %78
  store i8 %conv113, ptr %76, align 1
  %81 = load i32, ptr %lci2, align 4
  %conv117 = trunc i32 %81 to i8
  %82 = load ptr, ptr %data, align 4
  %arrayidx119 = getelementptr i8, ptr %82, i32 1
  %83 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv117, ptr %arrayidx119, align 1
  %84 = ptrtoint ptr %neigh2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %neigh2, align 4
  tail call void @rose_transmit_link(ptr noundef %skb, ptr noundef %85) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %9)
  %cmp122 = icmp eq i8 %9, 23
  br i1 %cmp122, label %if.then124, label %if.then102.out_crit_edge

if.then102.out_crit_edge:                         ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then124:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rose_remove_route(ptr noundef nonnull %rose_route.0427)
  br label %out

if.else126:                                       ; preds = %if.else99
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %9)
  %cmp128 = icmp eq i8 %9, 23
  br i1 %cmp128, label %if.then130, label %if.else126.out_crit_edge

if.else126.out_crit_edge:                         ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then130:                                       ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rose_remove_route(ptr noundef nonnull %rose_route.0427)
  br label %out

if.end132:                                        ; preds = %land.lhs.true91.if.end132_crit_edge, %while.body88.if.end132_crit_edge
  %lci2133 = getelementptr inbounds %struct.rose_route, ptr %rose_route.0427, i32 0, i32 2
  %86 = ptrtoint ptr %lci2133 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %lci2133, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %add)
  %cmp134 = icmp eq i32 %87, %add
  br i1 %cmp134, label %land.lhs.true136, label %if.end132.if.end181_crit_edge

if.end132.if.end181_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end181

land.lhs.true136:                                 ; preds = %if.end132
  %neigh2137 = getelementptr inbounds %struct.rose_route, ptr %rose_route.0427, i32 0, i32 8
  %88 = ptrtoint ptr %neigh2137 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %neigh2137, align 4
  %cmp138 = icmp eq ptr %89, %rose_neigh.0424
  br i1 %cmp138, label %if.then140, label %land.lhs.true136.if.end181_crit_edge

land.lhs.true136.if.end181_crit_edge:             ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end181

if.then140:                                       ; preds = %land.lhs.true136
  %lci1.le = getelementptr inbounds %struct.rose_route, ptr %rose_route.0427, i32 0, i32 1
  br i1 %cmp12, label %if.then140.if.end188.sink.split_crit_edge, label %if.else145

if.then140.if.end188.sink.split_crit_edge:        ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188.sink.split

if.else145:                                       ; preds = %if.then140
  %neigh1146 = getelementptr inbounds %struct.rose_route, ptr %rose_route.0427, i32 0, i32 7
  %90 = ptrtoint ptr %neigh1146 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %neigh1146, align 4
  %cmp147.not = icmp eq ptr %91, null
  br i1 %cmp147.not, label %if.else175, label %if.then149

if.then149:                                       ; preds = %if.else145
  %92 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %93, align 1
  %96 = and i8 %95, -16
  store i8 %96, ptr %93, align 1
  %97 = ptrtoint ptr %lci1.le to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %lci1.le, align 4
  %shr156 = lshr i32 %98, 8
  %99 = load ptr, ptr %data, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %99, align 1
  %102 = trunc i32 %shr156 to i8
  %103 = and i8 %102, 15
  %conv162 = or i8 %103, %101
  store i8 %conv162, ptr %99, align 1
  %104 = load i32, ptr %lci1.le, align 4
  %conv166 = trunc i32 %104 to i8
  %105 = load ptr, ptr %data, align 4
  %arrayidx168 = getelementptr i8, ptr %105, i32 1
  %106 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv166, ptr %arrayidx168, align 1
  %107 = ptrtoint ptr %neigh1146 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %neigh1146, align 4
  tail call void @rose_transmit_link(ptr noundef %skb, ptr noundef %108) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %9)
  %cmp171 = icmp eq i8 %9, 23
  br i1 %cmp171, label %if.then173, label %if.then149.out_crit_edge

if.then149.out_crit_edge:                         ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then173:                                       ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rose_remove_route(ptr noundef nonnull %rose_route.0427)
  br label %out

if.else175:                                       ; preds = %if.else145
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %9)
  %cmp177 = icmp eq i8 %9, 23
  br i1 %cmp177, label %if.then179, label %if.else175.out_crit_edge

if.else175.out_crit_edge:                         ; preds = %if.else175
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then179:                                       ; preds = %if.else175
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rose_remove_route(ptr noundef nonnull %rose_route.0427)
  br label %out

if.end181:                                        ; preds = %land.lhs.true136.if.end181_crit_edge, %if.end132.if.end181_crit_edge
  %109 = ptrtoint ptr %rose_route.0427 to i32
  call void @__asan_load4_noabort(i32 %109)
  %rose_route.0 = load ptr, ptr %rose_route.0427, align 4
  %cmp86.not = icmp eq ptr %rose_route.0, null
  br i1 %cmp86.not, label %if.end181.while.end183_crit_edge, label %if.end181.while.body88_crit_edge

if.end181.while.body88_crit_edge:                 ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body88

if.end181.while.end183_crit_edge:                 ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end183

while.end183:                                     ; preds = %if.end181.while.end183_crit_edge, %while.cond85.preheader.while.end183_crit_edge
  br i1 %cmp12, label %while.end183.if.end188_crit_edge, label %while.end183.out_crit_edge

while.end183.out_crit_edge:                       ; preds = %while.end183
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

while.end183.if.end188_crit_edge:                 ; preds = %while.end183
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

if.end188.sink.split:                             ; preds = %if.then140.if.end188.sink.split_crit_edge, %if.then94.if.end188.sink.split_crit_edge
  tail call fastcc void @rose_remove_route(ptr noundef nonnull %rose_route.0427)
  br label %if.end188

if.end188:                                        ; preds = %if.end188.sink.split, %while.end183.if.end188_crit_edge
  %110 = call ptr @memset(ptr %facilities, i32 0, i32 128)
  %111 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data, align 4
  %add.ptr190 = getelementptr i8, ptr %112, i32 14
  %113 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %len, align 4
  %sub = add i32 %114, -14
  %call192 = call i32 @rose_parse_facilities(ptr noundef %add.ptr190, i32 noundef %sub, ptr noundef nonnull %facilities) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.then194, label %while.cond196.preheader

while.cond196.preheader:                          ; preds = %if.end188
  %rose_route.1429 = load ptr, ptr @rose_route_list, align 4
  %cmp197.not430 = icmp eq ptr %rose_route.1429, null
  br i1 %cmp197.not430, label %while.cond196.preheader.while.end220_crit_edge, label %while.body199.lr.ph

while.cond196.preheader.while.end220_crit_edge:   ; preds = %while.cond196.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end220

while.body199.lr.ph:                              ; preds = %while.cond196.preheader
  %rand200 = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 8
  %dest_call = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 3
  %source_call = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 2
  br label %while.body199

if.then194:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  call void @rose_transmit_clear_request(ptr noundef nonnull %rose_neigh.0424, i32 noundef %add, i8 noundef zeroext 3, i8 noundef zeroext 76) #12
  br label %out

while.body199:                                    ; preds = %if.end218.while.body199_crit_edge, %while.body199.lr.ph
  %rose_route.1431 = phi ptr [ %rose_route.1429, %while.body199.lr.ph ], [ %rose_route.1, %if.end218.while.body199_crit_edge ]
  %rand = getelementptr inbounds %struct.rose_route, ptr %rose_route.1431, i32 0, i32 9
  %115 = ptrtoint ptr %rand to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rand, align 4
  %117 = ptrtoint ptr %rand200 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rand200, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %118)
  %cmp201 = icmp eq i32 %116, %118
  br i1 %cmp201, label %land.lhs.true203, label %while.body199.if.end218_crit_edge

while.body199.if.end218_crit_edge:                ; preds = %while.body199
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end218

land.lhs.true203:                                 ; preds = %while.body199
  %src_addr204 = getelementptr inbounds %struct.rose_route, ptr %rose_route.1431, i32 0, i32 3
  %call205 = call i32 @rosecmp(ptr noundef %add.ptr, ptr noundef %src_addr204) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %cmp206 = icmp eq i32 %call205, 0
  br i1 %cmp206, label %land.lhs.true208, label %land.lhs.true203.if.end218_crit_edge

land.lhs.true203.if.end218_crit_edge:             ; preds = %land.lhs.true203
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end218

land.lhs.true208:                                 ; preds = %land.lhs.true203
  %src_call = getelementptr inbounds %struct.rose_route, ptr %rose_route.1431, i32 0, i32 5
  %call209 = call i32 @ax25cmp(ptr noundef %dest_call, ptr noundef %src_call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %cmp210 = icmp eq i32 %call209, 0
  br i1 %cmp210, label %land.lhs.true212, label %land.lhs.true208.if.end218_crit_edge

land.lhs.true208.if.end218_crit_edge:             ; preds = %land.lhs.true208
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end218

land.lhs.true212:                                 ; preds = %land.lhs.true208
  %dest_call213 = getelementptr inbounds %struct.rose_route, ptr %rose_route.1431, i32 0, i32 6
  %call214 = call i32 @ax25cmp(ptr noundef %source_call, ptr noundef %dest_call213) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %cmp215 = icmp eq i32 %call214, 0
  br i1 %cmp215, label %if.then217, label %land.lhs.true212.if.end218_crit_edge

land.lhs.true212.if.end218_crit_edge:             ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end218

if.then217:                                       ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #14
  call void @rose_transmit_clear_request(ptr noundef nonnull %rose_neigh.0424, i32 noundef %add, i8 noundef zeroext 13, i8 noundef zeroext 120) #12
  br label %out

if.end218:                                        ; preds = %land.lhs.true212.if.end218_crit_edge, %land.lhs.true208.if.end218_crit_edge, %land.lhs.true203.if.end218_crit_edge, %while.body199.if.end218_crit_edge
  %119 = ptrtoint ptr %rose_route.1431 to i32
  call void @__asan_load4_noabort(i32 %119)
  %rose_route.1 = load ptr, ptr %rose_route.1431, align 4
  %cmp197.not = icmp eq ptr %rose_route.1, null
  br i1 %cmp197.not, label %if.end218.while.end220_crit_edge, label %if.end218.while.body199_crit_edge

if.end218.while.body199_crit_edge:                ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body199

if.end218.while.end220_crit_edge:                 ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end220

while.end220:                                     ; preds = %if.end218.while.end220_crit_edge, %while.cond196.preheader.while.end220_crit_edge
  %call221 = call ptr @rose_get_neigh(ptr noundef %add.ptr26, ptr noundef nonnull %cause, ptr noundef nonnull %diagnostic, i32 noundef 1)
  %cmp222 = icmp eq ptr %call221, null
  br i1 %cmp222, label %if.then224, label %if.end225

if.then224:                                       ; preds = %while.end220
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %cause to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %cause, align 1
  %122 = ptrtoint ptr %diagnostic to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %diagnostic, align 1
  call void @rose_transmit_clear_request(ptr noundef nonnull %rose_neigh.0424, i32 noundef %add, i8 noundef zeroext %121, i8 noundef zeroext %123) #12
  br label %out

if.end225:                                        ; preds = %while.end220
  %call226 = call i32 @rose_new_lci(ptr noundef nonnull %call221) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %cmp227 = icmp eq i32 %call226, 0
  br i1 %cmp227, label %if.then229, label %if.end230

if.then229:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #14
  call void @rose_transmit_clear_request(ptr noundef nonnull %rose_neigh.0424, i32 noundef %add, i8 noundef zeroext 5, i8 noundef zeroext 71) #12
  br label %out

if.end230:                                        ; preds = %if.end225
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %124 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %124, i32 noundef 2592, i32 noundef 48) #15
  %cmp232 = icmp eq ptr %call7.i, null
  br i1 %cmp232, label %if.then234, label %if.end235

if.then234:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #14
  call void @rose_transmit_clear_request(ptr noundef nonnull %rose_neigh.0424, i32 noundef %add, i8 noundef zeroext 5, i8 noundef zeroext 120) #12
  br label %out

if.end235:                                        ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #14
  %lci1236 = getelementptr inbounds %struct.rose_route, ptr %call7.i, i32 0, i32 1
  %125 = ptrtoint ptr %lci1236 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %add, ptr %lci1236, align 4
  %src_addr237 = getelementptr inbounds %struct.rose_route, ptr %call7.i, i32 0, i32 3
  %126 = call ptr @memcpy(ptr %src_addr237, ptr %add.ptr, i32 5)
  %dest_addr238 = getelementptr inbounds %struct.rose_route, ptr %call7.i, i32 0, i32 4
  %127 = call ptr @memcpy(ptr %dest_addr238, ptr %add.ptr26, i32 5)
  %src_call239 = getelementptr inbounds %struct.rose_route, ptr %call7.i, i32 0, i32 5
  %dest_call240 = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 3
  %128 = call ptr @memcpy(ptr %src_call239, ptr %dest_call240, i32 7)
  %dest_call241 = getelementptr inbounds %struct.rose_route, ptr %call7.i, i32 0, i32 6
  %source_call242 = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 2
  %129 = call ptr @memcpy(ptr %dest_call241, ptr %source_call242, i32 7)
  %rand243 = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 8
  %130 = ptrtoint ptr %rand243 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rand243, align 4
  %rand244 = getelementptr inbounds %struct.rose_route, ptr %call7.i, i32 0, i32 9
  %132 = ptrtoint ptr %rand244 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %rand244, align 4
  %neigh1245 = getelementptr inbounds %struct.rose_route, ptr %call7.i, i32 0, i32 7
  %133 = ptrtoint ptr %neigh1245 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %rose_neigh.0424, ptr %neigh1245, align 4
  %lci2246 = getelementptr inbounds %struct.rose_route, ptr %call7.i, i32 0, i32 2
  %134 = ptrtoint ptr %lci2246 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %call226, ptr %lci2246, align 8
  %neigh2247 = getelementptr inbounds %struct.rose_route, ptr %call7.i, i32 0, i32 8
  %135 = ptrtoint ptr %neigh2247 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call221, ptr %neigh2247, align 8
  %use249 = getelementptr inbounds %struct.rose_neigh, ptr %rose_neigh.0424, i32 0, i32 6
  %136 = ptrtoint ptr %use249 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %use249, align 2
  %inc = add i16 %137, 1
  store i16 %inc, ptr %use249, align 2
  %138 = load ptr, ptr %neigh2247, align 8
  %use251 = getelementptr inbounds %struct.rose_neigh, ptr %138, i32 0, i32 6
  %139 = ptrtoint ptr %use251 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %use251, align 2
  %inc252 = add i16 %140, 1
  store i16 %inc252, ptr %use251, align 2
  %141 = load ptr, ptr @rose_route_list, align 4
  %142 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %141, ptr %call7.i, align 8
  store ptr %call7.i, ptr @rose_route_list, align 4
  %143 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %data, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %144, align 1
  %147 = and i8 %146, -16
  store i8 %147, ptr %144, align 1
  %148 = load i32, ptr %lci2246, align 8
  %shr260 = lshr i32 %148, 8
  %149 = load ptr, ptr %data, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %149, align 1
  %152 = trunc i32 %shr260 to i8
  %153 = and i8 %152, 15
  %conv266 = or i8 %153, %151
  store i8 %conv266, ptr %149, align 1
  %154 = load i32, ptr %lci2246, align 8
  %conv270 = trunc i32 %154 to i8
  %155 = load ptr, ptr %data, align 4
  %arrayidx272 = getelementptr i8, ptr %155, i32 1
  %156 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv270, ptr %arrayidx272, align 1
  %157 = load ptr, ptr %neigh2247, align 8
  call void @rose_transmit_link(ptr noundef %skb, ptr noundef %157) #12
  br label %out

out:                                              ; preds = %if.end235, %if.then234, %if.then229, %if.then224, %if.then217, %if.then194, %while.end183.out_crit_edge, %if.then179, %if.else175.out_crit_edge, %if.then173, %if.then149.out_crit_edge, %if.then130, %if.else126.out_crit_edge, %if.then124, %if.then102.out_crit_edge, %if.then83, %dev_put.exit, %if.else, %if.then49, %do.end
  %res.0 = phi i32 [ 0, %do.end ], [ 0, %if.then49 ], [ %call79, %dev_put.exit ], [ 0, %if.then217 ], [ 0, %if.then224 ], [ 0, %if.then229 ], [ 0, %if.then234 ], [ 1, %if.end235 ], [ 0, %if.then194 ], [ 0, %if.then130 ], [ 0, %if.else126.out_crit_edge ], [ 0, %if.then179 ], [ 0, %if.else175.out_crit_edge ], [ 0, %if.then83 ], [ %call68, %if.else ], [ 1, %if.then124 ], [ 1, %if.then102.out_crit_edge ], [ 1, %if.then173 ], [ 1, %if.then149.out_crit_edge ], [ 0, %while.end183.out_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_route_list_lock) #12
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_neigh_list_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %out ], [ %call, %if.then1 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %diagnostic) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cause) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %facilities) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rose_loopback_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax2asc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_stop_ftimer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_link_rx_restart(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rose_find_socket(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_clear_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rose_process_rx_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rose_rx_call_request(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_transmit_clear_request(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rose_remove_route(ptr noundef %rose_route) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %neigh1 = getelementptr inbounds %struct.rose_route, ptr %rose_route, i32 0, i32 7
  %0 = ptrtoint ptr %neigh1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %neigh1, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %use = getelementptr inbounds %struct.rose_neigh, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %use to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %use, align 2
  %dec = add i16 %3, -1
  store i16 %dec, ptr %use, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %neigh2 = getelementptr inbounds %struct.rose_route, ptr %rose_route, i32 0, i32 8
  %4 = ptrtoint ptr %neigh2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %neigh2, align 4
  %cmp2.not = icmp eq ptr %5, null
  br i1 %cmp2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %use5 = getelementptr inbounds %struct.rose_neigh, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %use5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %use5, align 2
  %dec6 = add i16 %7, -1
  store i16 %dec6, ptr %use5, align 2
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %8 = load ptr, ptr @rose_route_list, align 4
  %cmp8 = icmp eq ptr %8, %rose_route
  br i1 %cmp8, label %if.end7.cleanup.sink.split_crit_edge, label %if.end7.while.cond_crit_edge

if.end7.while.cond_crit_edge:                     ; preds = %if.end7
  br label %while.cond

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end7.while.cond_crit_edge
  %s.0 = phi ptr [ %10, %while.body.while.cond_crit_edge ], [ %8, %if.end7.while.cond_crit_edge ]
  %cmp11.not = icmp eq ptr %s.0, null
  br i1 %cmp11.not, label %while.cond.cleanup_crit_edge, label %land.rhs

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.rhs:                                         ; preds = %while.cond
  %9 = ptrtoint ptr %s.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s.0, align 4
  %cmp13.not = icmp eq ptr %10, null
  br i1 %cmp13.not, label %land.rhs.cleanup_crit_edge, label %while.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %cmp15 = icmp eq ptr %10, %rose_route
  br i1 %cmp15, label %while.body.cleanup.sink.split_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.body.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge
  %s.0.lcssa39.sink = phi ptr [ @rose_route_list, %if.end7.cleanup.sink.split_crit_edge ], [ %s.0, %while.body.cleanup.sink.split_crit_edge ]
  %11 = ptrtoint ptr %rose_route to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rose_route, align 4
  %13 = ptrtoint ptr %s.0.lcssa39.sink to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %s.0.lcssa39.sink, align 4
  tail call void @kfree(ptr noundef %rose_route) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.rhs.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_transmit_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rose_parse_facilities(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rose_new_lci(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rose_node_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_node_list_lock) #12
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry.for.cond_crit_edge
  %rose_node.0.in = phi ptr [ %rose_node.0, %for.cond.for.cond_crit_edge ], [ @rose_node_list, %entry.for.cond_crit_edge ]
  %i.0 = phi i32 [ %inc, %for.cond.for.cond_crit_edge ], [ 1, %entry.for.cond_crit_edge ]
  %2 = ptrtoint ptr %rose_node.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %rose_node.0 = load ptr, ptr %rose_node.0.in, align 4
  %tobool.not = icmp ne ptr %rose_node.0, null
  %conv = sext i32 %i.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv)
  %cmp1 = icmp sgt i64 %1, %conv
  %or.cond = select i1 %tobool.not, i1 %cmp1, i1 false
  %inc = add i32 %i.0, 1
  br i1 %or.cond, label %for.cond.for.cond_crit_edge, label %for.end

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv)
  %cmp4 = icmp eq i64 %1, %conv
  %spec.select = select i1 %cmp4, ptr %rose_node.0, ptr null
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %for.end ], [ inttoptr (i32 1 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rose_node_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_node_list_lock) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @rose_node_next(ptr nocapture noundef readnone %seq, ptr noundef readonly %v, ptr nocapture noundef %pos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %rose_node_list.v = select i1 %cmp, ptr @rose_node_list, ptr %v
  %2 = ptrtoint ptr %rose_node_list.v to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %rose_node_list.v, align 4
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rose_node_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  %rsbuf = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %rsbuf) #12
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %0 = call ptr @memset(ptr %rsbuf, i32 255, i32 11)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.20) #12
  br label %if.end

if.else:                                          ; preds = %entry
  %address = getelementptr inbounds %struct.rose_node, ptr %v, i32 0, i32 1
  %call = call ptr @rose2asc(ptr noundef nonnull %rsbuf, ptr noundef %address) #12
  %mask = getelementptr inbounds %struct.rose_node, ptr %v, i32 0, i32 2
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %mask, align 2
  %conv = zext i16 %2 to i32
  %count = getelementptr inbounds %struct.rose_node, ptr %v, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %count, align 4
  %conv1 = zext i8 %4 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.21, ptr noundef %call, i32 noundef %conv, i32 noundef %conv1) #12
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp417.not = icmp eq i8 %6, 0
  br i1 %cmp417.not, label %if.else.for.end_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rose_node, ptr %v, i32 0, i32 5, i32 %i.018
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %number = getelementptr inbounds %struct.rose_neigh, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %number, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.22, i32 noundef %10) #12
  %inc = add nuw nsw i32 %i.018, 1
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %count, align 4
  %conv3 = zext i8 %12 to i32
  %cmp4 = icmp ult i32 %inc, %conv3
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.else.for.end_crit_edge
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.23) #12
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %rsbuf) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rose_neigh_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_neigh_list_lock) #12
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry.for.cond_crit_edge
  %rose_neigh.0.in = phi ptr [ %rose_neigh.0, %for.cond.for.cond_crit_edge ], [ @rose_neigh_list, %entry.for.cond_crit_edge ]
  %i.0 = phi i32 [ %inc, %for.cond.for.cond_crit_edge ], [ 1, %entry.for.cond_crit_edge ]
  %2 = ptrtoint ptr %rose_neigh.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %rose_neigh.0 = load ptr, ptr %rose_neigh.0.in, align 4
  %tobool.not = icmp ne ptr %rose_neigh.0, null
  %conv = sext i32 %i.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv)
  %cmp1 = icmp sgt i64 %1, %conv
  %or.cond = select i1 %tobool.not, i1 %cmp1, i1 false
  %inc = add i32 %i.0, 1
  br i1 %or.cond, label %for.cond.for.cond_crit_edge, label %for.end

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv)
  %cmp4 = icmp eq i64 %1, %conv
  %spec.select = select i1 %cmp4, ptr %rose_neigh.0, ptr null
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %for.end ], [ inttoptr (i32 1 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rose_neigh_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_neigh_list_lock) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @rose_neigh_next(ptr nocapture noundef readnone %seq, ptr noundef readonly %v, ptr nocapture noundef %pos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %rose_neigh_list.v = select i1 %cmp, ptr @rose_neigh_list, ptr %v
  %2 = ptrtoint ptr %rose_neigh_list.v to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %rose_neigh_list.v, align 4
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rose_neigh_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  %buf = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf) #12
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %0 = call ptr @memset(ptr %buf, i32 255, i32 11)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.24) #12
  br label %if.end29

if.else:                                          ; preds = %entry
  %number = getelementptr inbounds %struct.rose_neigh, ptr %v, i32 0, i32 7
  %1 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %number, align 4
  %loopback = getelementptr inbounds %struct.rose_neigh, ptr %v, i32 0, i32 10
  %3 = ptrtoint ptr %loopback to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %loopback, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %cond.false, label %if.else.cond.end_crit_edge

if.else.cond.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %callsign = getelementptr inbounds %struct.rose_neigh, ptr %v, i32 0, i32 1
  %call = call ptr @ax2asc(ptr noundef nonnull %buf, ptr noundef %callsign) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.else.cond.end_crit_edge
  %cond = phi ptr [ %call, %cond.false ], [ @.str.26, %if.else.cond.end_crit_edge ]
  %dev = getelementptr inbounds %struct.rose_neigh, ptr %v, i32 0, i32 4
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %tobool1.not = icmp eq ptr %6, null
  %spec.select = select i1 %tobool1.not, ptr @.str.27, ptr %6
  %count = getelementptr inbounds %struct.rose_neigh, ptr %v, i32 0, i32 5
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %count, align 4
  %conv8 = zext i16 %8 to i32
  %use = getelementptr inbounds %struct.rose_neigh, ptr %v, i32 0, i32 6
  %9 = ptrtoint ptr %use to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %use, align 2
  %conv9 = zext i16 %10 to i32
  %dce_mode = getelementptr inbounds %struct.rose_neigh, ptr %v, i32 0, i32 9
  %11 = ptrtoint ptr %dce_mode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dce_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not = icmp eq i8 %12, 0
  %cond12 = select i1 %tobool11.not, ptr @.str.29, ptr @.str.28
  %restarted = getelementptr inbounds %struct.rose_neigh, ptr %v, i32 0, i32 8
  %13 = ptrtoint ptr %restarted to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %restarted, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool14.not = icmp eq i8 %14, 0
  %cond15 = select i1 %tobool14.not, ptr @.str.31, ptr @.str.30
  %t0timer = getelementptr inbounds %struct.rose_neigh, ptr %v, i32 0, i32 12
  %call16 = call i32 @ax25_display_timer(ptr noundef %t0timer) #12
  %div = udiv i32 %call16, 100
  %ftimer = getelementptr inbounds %struct.rose_neigh, ptr %v, i32 0, i32 13
  %call17 = call i32 @ax25_display_timer(ptr noundef %ftimer) #12
  %div18 = udiv i32 %call17, 100
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.25, i32 noundef %2, ptr noundef %cond, ptr noundef nonnull %spec.select, i32 noundef %conv8, i32 noundef %conv9, ptr noundef nonnull %cond12, ptr noundef nonnull %cond15, i32 noundef %div, i32 noundef %div18) #12
  %digipeat = getelementptr inbounds %struct.rose_neigh, ptr %v, i32 0, i32 2
  %15 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %digipeat, align 4
  %cmp19.not = icmp eq ptr %16, null
  br i1 %cmp19.not, label %cond.end.if.end_crit_edge, label %for.cond.preheader

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.preheader:                               ; preds = %cond.end
  %17 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %digipeat, align 4
  %ndigi49 = getelementptr inbounds %struct.ax25_digi, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %ndigi49 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ndigi49, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp2451.not = icmp eq i8 %20, 0
  br i1 %cmp2451.not, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %21 = phi ptr [ %23, %for.body.for.body_crit_edge ], [ %18, %for.cond.preheader.for.body_crit_edge ]
  %i.052 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.ax25_address], ptr %21, i32 0, i32 %i.052
  %call28 = call ptr @ax2asc(ptr noundef nonnull %buf, ptr noundef %arrayidx) #12
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.32, ptr noundef %call28) #12
  %inc = add nuw nsw i32 %i.052, 1
  %22 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %digipeat, align 4
  %ndigi = getelementptr inbounds %struct.ax25_digi, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %ndigi to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ndigi, align 1
  %conv23 = zext i8 %25 to i32
  %cmp24 = icmp ult i32 %inc, %conv23
  br i1 %cmp24, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %cond.end.if.end_crit_edge
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.23) #12
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rose_route_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rose_route_list_lock) #12
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry.for.cond_crit_edge
  %rose_route.0.in = phi ptr [ %rose_route.0, %for.cond.for.cond_crit_edge ], [ @rose_route_list, %entry.for.cond_crit_edge ]
  %i.0 = phi i32 [ %inc, %for.cond.for.cond_crit_edge ], [ 1, %entry.for.cond_crit_edge ]
  %2 = ptrtoint ptr %rose_route.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %rose_route.0 = load ptr, ptr %rose_route.0.in, align 4
  %tobool.not = icmp ne ptr %rose_route.0, null
  %conv = sext i32 %i.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv)
  %cmp1 = icmp sgt i64 %1, %conv
  %or.cond = select i1 %tobool.not, i1 %cmp1, i1 false
  %inc = add i32 %i.0, 1
  br i1 %or.cond, label %for.cond.for.cond_crit_edge, label %for.end

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv)
  %cmp4 = icmp eq i64 %1, %conv
  %spec.select = select i1 %cmp4, ptr %rose_route.0, ptr null
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %for.end ], [ inttoptr (i32 1 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rose_route_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rose_route_list_lock) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @rose_route_next(ptr nocapture noundef readnone %seq, ptr noundef readonly %v, ptr nocapture noundef %pos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %rose_route_list.v = select i1 %cmp, ptr @rose_route_list, ptr %v
  %2 = ptrtoint ptr %rose_route_list.v to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %rose_route_list.v, align 4
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rose_route_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  %buf = alloca [11 x i8], align 1
  %rsbuf = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf) #12
  %0 = call ptr @memset(ptr %buf, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %rsbuf) #12
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %1 = call ptr @memset(ptr %rsbuf, i32 255, i32 11)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.33) #12
  br label %if.end16

if.else:                                          ; preds = %entry
  %neigh1 = getelementptr inbounds %struct.rose_route, ptr %v, i32 0, i32 7
  %2 = ptrtoint ptr %neigh1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %neigh1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else5, label %if.then1

if.then1:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %lci1 = getelementptr inbounds %struct.rose_route, ptr %v, i32 0, i32 1
  %4 = ptrtoint ptr %lci1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lci1, align 4
  %src_addr = getelementptr inbounds %struct.rose_route, ptr %v, i32 0, i32 3
  %call = call ptr @rose2asc(ptr noundef nonnull %rsbuf, ptr noundef %src_addr) #12
  %src_call = getelementptr inbounds %struct.rose_route, ptr %v, i32 0, i32 5
  %call3 = call ptr @ax2asc(ptr noundef nonnull %buf, ptr noundef %src_call) #12
  %6 = ptrtoint ptr %neigh1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %neigh1, align 4
  %number = getelementptr inbounds %struct.rose_neigh, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.34, i32 noundef %5, ptr noundef %call, ptr noundef %call3, i32 noundef %9) #12
  br label %if.end

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.35) #12
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then1
  %neigh2 = getelementptr inbounds %struct.rose_route, ptr %v, i32 0, i32 8
  %10 = ptrtoint ptr %neigh2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %neigh2, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.else14, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %lci2 = getelementptr inbounds %struct.rose_route, ptr %v, i32 0, i32 2
  %12 = ptrtoint ptr %lci2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lci2, align 4
  %dest_addr = getelementptr inbounds %struct.rose_route, ptr %v, i32 0, i32 4
  %call9 = call ptr @rose2asc(ptr noundef nonnull %rsbuf, ptr noundef %dest_addr) #12
  %dest_call = getelementptr inbounds %struct.rose_route, ptr %v, i32 0, i32 6
  %call11 = call ptr @ax2asc(ptr noundef nonnull %buf, ptr noundef %dest_call) #12
  %14 = ptrtoint ptr %neigh2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %neigh2, align 4
  %number13 = getelementptr inbounds %struct.rose_neigh, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %number13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %number13, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.36, i32 noundef %13, ptr noundef %call9, ptr noundef %call11, i32 noundef %17) #12
  br label %if.end16

if.else14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.37) #12
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %rsbuf) #12
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #12
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_rt_free() #7 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load ptr, ptr @rose_neigh_list, align 4
  %1 = load ptr, ptr @rose_node_list, align 4
  %2 = load ptr, ptr @rose_route_list, align 4
  %cmp.not17 = icmp eq ptr %0, null
  br i1 %cmp.not17, label %entry.while.cond1.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond1.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %while.body.while.cond1.preheader_crit_edge, %entry.while.cond1.preheader_crit_edge
  %cmp2.not19 = icmp eq ptr %1, null
  br i1 %cmp2.not19, label %while.cond1.preheader.while.cond6.preheader_crit_edge, label %while.cond1.preheader.while.body3_crit_edge

while.cond1.preheader.while.body3_crit_edge:      ; preds = %while.cond1.preheader
  br label %while.body3

while.cond1.preheader.while.cond6.preheader_crit_edge: ; preds = %while.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond6.preheader

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %rose_neigh.018 = phi ptr [ %4, %while.body.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %3 = ptrtoint ptr %rose_neigh.018 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rose_neigh.018, align 4
  tail call fastcc void @rose_remove_neigh(ptr noundef nonnull %rose_neigh.018)
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %while.body.while.cond1.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.cond1.preheader_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond1.preheader

while.cond6.preheader:                            ; preds = %while.body3.while.cond6.preheader_crit_edge, %while.cond1.preheader.while.cond6.preheader_crit_edge
  %cmp7.not21 = icmp eq ptr %2, null
  br i1 %cmp7.not21, label %while.cond6.preheader.while.end10_crit_edge, label %while.cond6.preheader.while.body8_crit_edge

while.cond6.preheader.while.body8_crit_edge:      ; preds = %while.cond6.preheader
  br label %while.body8

while.cond6.preheader.while.end10_crit_edge:      ; preds = %while.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end10

while.body3:                                      ; preds = %while.body3.while.body3_crit_edge, %while.cond1.preheader.while.body3_crit_edge
  %rose_node.020 = phi ptr [ %6, %while.body3.while.body3_crit_edge ], [ %1, %while.cond1.preheader.while.body3_crit_edge ]
  %5 = ptrtoint ptr %rose_node.020 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rose_node.020, align 4
  tail call fastcc void @rose_remove_node(ptr noundef nonnull %rose_node.020)
  %cmp2.not = icmp eq ptr %6, null
  br i1 %cmp2.not, label %while.body3.while.cond6.preheader_crit_edge, label %while.body3.while.body3_crit_edge

while.body3.while.body3_crit_edge:                ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body3

while.body3.while.cond6.preheader_crit_edge:      ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond6.preheader

while.body8:                                      ; preds = %while.body8.while.body8_crit_edge, %while.cond6.preheader.while.body8_crit_edge
  %rose_route.022 = phi ptr [ %8, %while.body8.while.body8_crit_edge ], [ %2, %while.cond6.preheader.while.body8_crit_edge ]
  %7 = ptrtoint ptr %rose_route.022 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rose_route.022, align 4
  tail call fastcc void @rose_remove_route(ptr noundef nonnull %rose_route.022)
  %cmp7.not = icmp eq ptr %8, null
  br i1 %cmp7.not, label %while.body8.while.end10_crit_edge, label %while.body8.while.body8_crit_edge

while.body8.while.body8_crit_edge:                ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body8

while.body8.while.end10_crit_edge:                ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end10

while.end10:                                      ; preds = %while.body8.while.end10_crit_edge, %while.cond6.preheader.while.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_stop_t0timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_start_ftimer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rose2asc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_display_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !39, !41, !42, !44, !45, !46, !48, !49, !51, !52, !54, !56, !58, !60, !61, !63, !64, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101}
!llvm.named.register.sp = !{!103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @rose_add_loopback_neigh.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/rose/rose_route.c", i32 392, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @rose_add_loopback_neigh.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../net/rose/rose_route.c", i32 393, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/rose/rose_route.c", i32 613, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/rose/rose_route.c", i32 631, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/rose/rose_route.c", i32 897, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rose_route_frame._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @rose_route_frame._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @rose_node_seqops, !18, !"rose_node_seqops", i1 false, i1 false}
!18 = !{!"../net/rose/rose_route.c", i32 1151, i32 29}
!19 = !{ptr @rose_neigh_seqops, !20, !"rose_neigh_seqops", i1 false, i1 false}
!20 = !{!"../net/rose/rose_route.c", i32 1222, i32 29}
!21 = !{ptr @rose_route_seqops, !22, !"rose_route_seqops", i1 false, i1 false}
!22 = !{!"../net/rose/rose_route.c", i32 1294, i32 23}
!23 = !{ptr @rose_node_list, !24, !"rose_node_list", i1 false, i1 false}
!24 = !{!"../net/rose/rose_route.c", i32 38, i32 27}
!25 = !{ptr @rose_neigh_list, !26, !"rose_neigh_list", i1 false, i1 false}
!26 = !{!"../net/rose/rose_route.c", i32 40, i32 27}
!27 = !{ptr @rose_route_list, !28, !"rose_route_list", i1 false, i1 false}
!28 = !{!"../net/rose/rose_route.c", i32 42, i32 27}
!29 = !{ptr @rose_loopback_neigh, !30, !"rose_loopback_neigh", i1 false, i1 false}
!30 = !{!"../net/rose/rose_route.c", i32 45, i32 20}
!31 = !{ptr @rose_neigh_no, !32, !"rose_neigh_no", i1 false, i1 false}
!32 = !{!"../net/rose/rose_route.c", i32 36, i32 21}
!33 = !{ptr @skb_queue_head_init.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/rose/rose_route.c", i32 41, i32 8}
!38 = !{ptr @rose_neigh_list_lock, !37, !"rose_neigh_list_lock", i1 false, i1 false}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/rose/rose_route.c", i32 39, i32 8}
!41 = !{ptr @rose_node_list_lock, !40, !"rose_node_list_lock", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!44 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!48 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!51 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../net/rose/rose_route.c", i32 649, i32 2}
!58 = !{ptr @rose_add_node.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../net/rose/rose_route.c", i32 104, i32 3}
!60 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rose_add_node.__key.17, !62, !"__key", i1 false, i1 false}
!62 = !{!"../net/rose/rose_route.c", i32 105, i32 3}
!63 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/rose/rose_route.c", i32 43, i32 8}
!66 = !{ptr @rose_route_list_lock, !65, !"rose_route_list_lock", i1 false, i1 false}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/rose/rose_route.c", i32 1128, i32 17}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/rose/rose_route.c", i32 1136, i32 20}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/rose/rose_route.c", i32 1142, i32 21}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/rose/rose_route.c", i32 1145, i32 18}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/rose/rose_route.c", i32 1195, i32 5}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/rose/rose_route.c", i32 1200, i32 19}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/rose/rose_route.c", i32 1202, i32 32}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/rose/rose_route.c", i32 1203, i32 49}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/rose/rose_route.c", i32 1206, i32 32}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/rose/rose_route.c", i32 1206, i32 40}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/rose/rose_route.c", i32 1207, i32 33}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/rose/rose_route.c", i32 1207, i32 41}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/rose/rose_route.c", i32 1213, i32 21}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/rose/rose_route.c", i32 1265, i32 5}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/rose/rose_route.c", i32 1271, i32 8}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/rose/rose_route.c", i32 1278, i32 6}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/rose/rose_route.c", i32 1282, i32 8}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/rose/rose_route.c", i32 1289, i32 7}
!103 = !{!"sp"}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{i64 2148365671}
!114 = !{i64 2148280135, i64 2148280167, i64 2148280196, i64 2148280230, i64 2148280261, i64 2148280284}
!115 = !{!"branch_weights", i32 2000, i32 1}
!116 = !{i64 2149301951}
!117 = !{i64 2149352441}
!118 = !{i64 2149352707}
!119 = !{i64 668621, i64 668682}
!120 = !{i64 671353}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{i64 671638}
!123 = !{i64 2152309692, i64 2152309717}
!124 = !{i64 4805247}
!125 = !{i64 4805444}
!126 = !{i64 2152290677}
!127 = !{!"auto-init"}
