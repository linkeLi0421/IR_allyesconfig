; ModuleID = '/llk/IR_all_yes/net/llc/llc_proc.c_pt.bc'
source_filename = "../net/llc/llc_proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.139, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.139 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
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
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.llc_sock = type { %struct.sock, %struct.sockaddr_llc, i8, ptr, %struct.llc_addr, %struct.llc_addr, ptr, ptr, i32, i8, i8, i8, i8, %struct.llc_timer, %struct.llc_timer, %struct.llc_timer, %struct.llc_timer, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, %struct.sk_buff_head, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, %struct.hlist_node }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.131, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.132, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.133, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.127, [0 x i32], %union.anon.128, i16, i16, %union.anon.129, %struct.refcount_struct, [0 x i32], %union.anon.130 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.127 = type { i32 }
%union.anon.128 = type { %struct.hlist_node }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.131 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.132 = type { ptr }
%union.anon.133 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr_llc = type { i16, i16, i8, i8, i8, i8, [6 x i8], [2 x i8] }
%struct.llc_addr = type { i8, [6 x i8] }
%struct.llc_timer = type { %struct.timer_list, i32 }
%struct.llc_sap = type { i8, i8, i8, %struct.refcount_struct, ptr, %struct.llc_addr, %struct.list_head, %struct.spinlock, i32, [64 x %struct.hlist_nulls_head], [64 x %struct.hlist_head], %struct.callback_head }
%struct.hlist_nulls_head = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.108 = type { ptr }
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
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.23, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.23 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.36 = type { %struct.callback_head }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"llc\00", [28 x i8] zeroinitializer }, align 32
@init_net = external dso_local local_unnamed_addr global %struct.net, align 128
@llc_proc_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"socket\00", [25 x i8] zeroinitializer }, align 32
@llc_seq_socket_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @llc_seq_start, ptr @llc_seq_stop, ptr @llc_seq_next, ptr @llc_seq_socket_show }, [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@llc_seq_core_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @llc_seq_start, ptr @llc_seq_stop, ptr @llc_seq_next, ptr @llc_seq_core_show }, [16 x i8] zeroinitializer }, align 32
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@llc_get_sk_idx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/llc/llc_proc.c\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@llc_sap_list = external dso_local global %struct.list_head, align 4
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"SKt Mc local_mac_sap        remote_mac_sap       tx_queue rx_queue st uid link\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%2X  %2X \00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"@%02X \00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"@%02X %8d %8d %2d %3u %4d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pM\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"Connection list:\0Adsap state      retr txw rxw pf ff sf df rs cs tack tpfc trs tbs blog busr\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c" %02X  %-10s %3d  %3d %3d %2d %2d %2d %2d %2d %2d %4d %4d %3d %3d %4d %4d\0A\00", [53 x i8] zeroinitializer }, align 32
@llc_conn_state_names = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr null, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adm\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"setup\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"busy\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rej\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"await\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"await_busy\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"await_rej\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"d_conn\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"temp\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 224, i32 28 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"llc_proc_dir\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 217, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 228, i32 6 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"llc_seq_socket_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 203, i32 36 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 232, i32 6 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"llc_seq_core_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 210, i32 36 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 749, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 40, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 760, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 132, i32 17 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 140, i32 18 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 148, i32 18 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 150, i32 18 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 31, i32 18 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 181, i32 17 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 189, i32 18 }
@___asan_gen_.81 = private unnamed_addr constant [21 x i8] c"llc_conn_state_names\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 160, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 161, i32 32 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 162, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 163, i32 32 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 164, i32 32 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 165, i32 32 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 166, i32 32 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 167, i32 32 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 168, i32 32 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 169, i32 32 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 170, i32 32 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 171, i32 32 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [22 x i8] c"../net/llc/llc_proc.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 172, i32 32 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @.str, ptr @llc_proc_dir, ptr @.str.1, ptr @llc_seq_socket_ops, ptr @.str.2, ptr @llc_seq_core_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @llc_conn_state_names, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_proc_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_seq_socket_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_seq_core_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_conn_state_names to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_proc_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call = tail call ptr @proc_mkdir(ptr noundef nonnull @.str, ptr noundef %0) #6
  store ptr %call, ptr @llc_proc_dir, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef nonnull %call, ptr noundef nonnull @llc_seq_socket_ops, i32 noundef 0, ptr noundef null) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.out_socket_crit_edge, label %if.end4

if.end.out_socket_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_socket

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr @llc_proc_dir, align 4
  %call5 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @llc_seq_core_ops, i32 noundef 0, ptr noundef null) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %out_core, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %out_socket, %if.end4.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -12, %out_socket ], [ -12, %entry.out_crit_edge ], [ 0, %if.end4.out_crit_edge ]
  ret i32 %rc.0

out_core:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %2 = load ptr, ptr @llc_proc_dir, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef %2) #6
  br label %out_socket

out_socket:                                       ; preds = %out_core, %if.end.out_socket_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %3) #6
  br label %out
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_proc_exit() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @llc_proc_dir, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef %0) #6
  %1 = load ptr, ptr @llc_proc_dir, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.2, ptr noundef %1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @llc_seq_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  tail call fastcc void @local_bh_disable() #6
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 750, ptr noundef nonnull @.str.4) #6
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %rcu_read_lock_bh.exit.cond.end_crit_edge, label %cond.true

rcu_read_lock_bh.exit.cond.end_crit_edge:         ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add i64 %1, -1
  %call = tail call fastcc ptr @llc_get_sk_idx(i64 noundef %dec)
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %rcu_read_lock_bh.exit.cond.end_crit_edge
  %cond = phi ptr [ %call, %cond.true ], [ inttoptr (i32 1 to ptr), %rcu_read_lock_bh.exit.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @llc_seq_stop(ptr nocapture noundef readnone %seq, ptr noundef %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch = icmp ult ptr %v, inttoptr (i32 2 to ptr)
  br i1 %switch, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sap1 = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 3
  %0 = ptrtoint ptr %sap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sap1, align 4
  %sk_lock = getelementptr inbounds %struct.llc_sap, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sk_lock) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.end.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_unlock_bh.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 761, ptr noundef nonnull @.str.7) #6
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock_bh.exit_crit_edge, %if.end.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #6
  tail call fastcc void @local_bh_enable() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @llc_seq_next(ptr nocapture noundef readnone %seq, ptr noundef readonly %v, ptr nocapture noundef %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc ptr @llc_get_sk_idx(i64 noundef 0)
  br label %out

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 15
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %4 to i32
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp ne i32 %and.i.i, 0
  %add.ptr.i = getelementptr i8, ptr %4, i32 -84
  %tobool.not64 = icmp eq ptr %add.ptr.i, null
  %tobool.not = select i1 %tobool.not.i, i1 true, i1 %tobool.not64
  br i1 %tobool.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end3:                                          ; preds = %if.end
  %sap5 = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 3
  %6 = ptrtoint ptr %sap5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sap5, align 4
  %mac.i = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 4, i32 1
  %arrayidx58.i.i = getelementptr %struct.llc_sock, ptr %v, i32 0, i32 4, i32 1, i32 5
  %8 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx58.i.i, align 1
  %conv59.i.i = zext i8 %9 to i32
  %shl60.i.i = shl nuw nsw i32 %conv59.i.i, 8
  %add61.i.i = add nuw nsw i32 %shl60.i.i, -559038731
  %arrayidx63.i.i = getelementptr %struct.llc_sock, ptr %v, i32 0, i32 4, i32 1, i32 4
  %10 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx63.i.i, align 1
  %conv64.i.i = zext i8 %11 to i32
  %add65.i.i = add nuw nsw i32 %add61.i.i, %conv64.i.i
  %arrayidx67.i.i = getelementptr %struct.llc_sock, ptr %v, i32 0, i32 4, i32 1, i32 3
  %12 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx67.i.i, align 1
  %conv68.i.i = zext i8 %13 to i32
  %shl69.i.i = shl nuw i32 %conv68.i.i, 24
  %add70.i.i = add i32 %shl69.i.i, -559038731
  %arrayidx72.i.i = getelementptr %struct.llc_sock, ptr %v, i32 0, i32 4, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx72.i.i, align 1
  %conv73.i.i = zext i8 %15 to i32
  %shl74.i.i = shl nuw nsw i32 %conv73.i.i, 16
  %add75.i.i = add i32 %add70.i.i, %shl74.i.i
  %arrayidx77.i.i = getelementptr %struct.llc_sock, ptr %v, i32 0, i32 4, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx77.i.i, align 1
  %conv78.i.i = zext i8 %17 to i32
  %shl79.i.i = shl nuw nsw i32 %conv78.i.i, 8
  %add80.i.i = add i32 %add75.i.i, %shl79.i.i
  %18 = ptrtoint ptr %mac.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mac.i, align 1
  %conv83.i.i = zext i8 %19 to i32
  %add84.i.i = add i32 %add80.i.i, %conv83.i.i
  %xor85.i.i = xor i32 %add65.i.i, -559038731
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add65.i.i, i32 %add65.i.i, i32 14) #6
  %sub87.i.i = sub i32 %xor85.i.i, %or.i.i.i
  %xor88.i.i = xor i32 %add84.i.i, %sub87.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i, i32 %sub87.i.i, i32 11) #6
  %sub90.i.i = sub i32 %xor88.i.i, %or.i1.i.i
  %xor91.i.i = xor i32 %sub90.i.i, %add65.i.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i, i32 %sub90.i.i, i32 25) #6
  %sub93.i.i = sub i32 %xor91.i.i, %or.i2.i.i
  %xor94.i.i = xor i32 %sub93.i.i, %sub87.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i, i32 %sub93.i.i, i32 16) #6
  %sub96.i.i = sub i32 %xor94.i.i, %or.i3.i.i
  %xor97.i.i = xor i32 %sub96.i.i, %sub90.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i, i32 %sub96.i.i, i32 4) #6
  %sub99.i.i = sub i32 %xor97.i.i, %or.i4.i.i
  %xor100.i.i = xor i32 %sub99.i.i, %sub93.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i, i32 %sub99.i.i, i32 14) #6
  %sub102.i.i = sub i32 %xor100.i.i, %or.i5.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i, i32 %sub102.i.i, i32 24) #6
  %xor103.i.i = xor i32 %sub102.i.i, %sub96.i.i
  %sub105.i.i = sub i32 %xor103.i.i, %or.i6.i.i
  %mul.i.i.i = mul i32 %sub105.i.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 26
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end3
  %bucket.addr.0.i = phi i32 [ %shr.i.i, %if.end3 ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %bucket.addr.0.i)
  %exitcond.not = icmp eq i32 %bucket.addr.0.i, 63
  br i1 %exitcond.not, label %while.cond.i.if.end10_crit_edge, label %while.body.i

while.cond.i.if.end10_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

while.body.i:                                     ; preds = %while.cond.i
  %inc.i = add nuw nsw i32 %bucket.addr.0.i, 1
  %arrayidx.i = getelementptr %struct.llc_sap, ptr %7, i32 0, i32 9, i32 %inc.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %and.i.i45 = and i32 %22, 1
  %tobool.not.i46 = icmp eq i32 %and.i.i45, 0
  br i1 %tobool.not.i46, label %laddr_hash_next.exit, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

laddr_hash_next.exit:                             ; preds = %while.body.i
  %add.ptr.i47 = getelementptr i8, ptr %21, i32 -84
  %tobool8.not = icmp eq ptr %add.ptr.i47, null
  br i1 %tobool8.not, label %laddr_hash_next.exit.if.end10_crit_edge, label %laddr_hash_next.exit.out_crit_edge

laddr_hash_next.exit.out_crit_edge:               ; preds = %laddr_hash_next.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

laddr_hash_next.exit.if.end10_crit_edge:          ; preds = %laddr_hash_next.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %laddr_hash_next.exit.if.end10_crit_edge, %while.cond.i.if.end10_crit_edge
  %sk_lock = getelementptr inbounds %struct.llc_sap, ptr %7, i32 0, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sk_lock) #6
  %node = getelementptr inbounds %struct.llc_sap, ptr %7, i32 0, i32 6
  %23 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn66 = load volatile ptr, ptr %node, align 4
  %cmp14.not67 = icmp eq ptr %.pn66, @llc_sap_list
  br i1 %cmp14.not67, label %if.end10.out_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %if.end10.for.body_crit_edge
  %.pn68 = phi ptr [ %.pn, %if.end19.for.body_crit_edge ], [ %.pn66, %if.end10.for.body_crit_edge ]
  %sap.0 = getelementptr i8, ptr %.pn68, i32 -20
  %sk_lock15 = getelementptr i8, ptr %.pn68, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %sk_lock15) #6
  br label %while.cond.i51

while.cond.i51:                                   ; preds = %while.body.i55.while.cond.i51_crit_edge, %for.body
  %bucket.addr.0.i48 = phi i32 [ -1, %for.body ], [ %inc.i49, %while.body.i55.while.cond.i51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %bucket.addr.0.i48)
  %exitcond71.not = icmp eq i32 %bucket.addr.0.i48, 63
  br i1 %exitcond71.not, label %while.cond.i51.if.end19_crit_edge, label %while.body.i55

while.cond.i51.if.end19_crit_edge:                ; preds = %while.cond.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

while.body.i55:                                   ; preds = %while.cond.i51
  %inc.i49 = add nsw i32 %bucket.addr.0.i48, 1
  %arrayidx.i52 = getelementptr %struct.llc_sap, ptr %sap.0, i32 0, i32 9, i32 %inc.i49
  %24 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i52, align 4
  %26 = ptrtoint ptr %25 to i32
  %and.i.i53 = and i32 %26, 1
  %tobool.not.i54 = icmp eq i32 %and.i.i53, 0
  br i1 %tobool.not.i54, label %laddr_hash_next.exit59, label %while.body.i55.while.cond.i51_crit_edge

while.body.i55.while.cond.i51_crit_edge:          ; preds = %while.body.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i51

laddr_hash_next.exit59:                           ; preds = %while.body.i55
  %add.ptr.i56 = getelementptr i8, ptr %25, i32 -84
  %tobool17.not = icmp eq ptr %add.ptr.i56, null
  br i1 %tobool17.not, label %laddr_hash_next.exit59.if.end19_crit_edge, label %laddr_hash_next.exit59.out_crit_edge

laddr_hash_next.exit59.out_crit_edge:             ; preds = %laddr_hash_next.exit59
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

laddr_hash_next.exit59.if.end19_crit_edge:        ; preds = %laddr_hash_next.exit59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end19:                                         ; preds = %laddr_hash_next.exit59.if.end19_crit_edge, %while.cond.i51.if.end19_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sk_lock15) #6
  %27 = ptrtoint ptr %.pn68 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load volatile ptr, ptr %.pn68, align 4
  %cmp14.not = icmp eq ptr %.pn, @llc_sap_list
  br i1 %cmp14.not, label %if.end19.out_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %if.end19.out_crit_edge, %laddr_hash_next.exit59.out_crit_edge, %if.end10.out_crit_edge, %laddr_hash_next.exit.out_crit_edge, %if.end.out_crit_edge, %if.then
  %sk.1 = phi ptr [ %call, %if.then ], [ %add.ptr.i47, %laddr_hash_next.exit.out_crit_edge ], [ %add.ptr.i, %if.end.out_crit_edge ], [ null, %if.end10.out_crit_edge ], [ %add.ptr.i56, %laddr_hash_next.exit59.out_crit_edge ], [ null, %if.end19.out_crit_edge ]
  ret ptr %sk.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llc_seq_socket_show(ptr noundef %seq, ptr noundef %v) #3 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.8) #6
  br label %out

if.end:                                           ; preds = %entry
  %sk_type = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 45
  %0 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sk_type, align 2
  %conv = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, i32 noundef %conv, i32 noundef 0) #6
  %dev = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.12, ptr noundef %5) #6
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #6
  %6 = call ptr @memset(ptr %addr, i32 0, i32 6)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.12, ptr noundef nonnull %addr) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #6
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  %sap = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 3
  %7 = ptrtoint ptr %sap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sap, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %laddr, align 4
  %conv4 = zext i8 %10 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv4) #6
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 5
  %mac = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 5, i32 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.12, ptr noundef %mac) #6
  %11 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %daddr, align 1
  %conv8 = zext i8 %12 to i32
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 23
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #6
  %13 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i = add i32 %14, -1
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #6
  %15 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %sk_backlog.i, align 4
  %copied_seq = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 8
  %17 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %copied_seq, align 8
  %sub = sub i32 %16, %18
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 4
  %19 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load volatile i8, ptr %skc_state, align 2
  %conv11 = zext i8 %20 to i32
  %file.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %21 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 25
  %25 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %user_ns.i, align 4
  %call13 = call i32 @sock_i_uid(ptr noundef %v) #6
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call13, 0
  %call15 = call i32 @from_kuid_munged(ptr noundef %26, [1 x i32] %.fca.0.insert) #6
  %link = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 30
  %27 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %link, align 4
  %conv16 = zext i16 %28 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %conv8, i32 noundef %sub.i, i32 noundef %sub, i32 noundef %conv11, i32 noundef %call15, i32 noundef %conv16) #6
  br label %out

out:                                              ; preds = %if.end3, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @llc_get_sk_idx(i64 noundef %pos) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b52 = load i1, ptr @llc_get_sk_idx.__warned, align 1
  br i1 %.b52, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @llc_get_sk_idx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 40, ptr noundef nonnull @.str.6) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @llc_sap_list to i32))
  %.pn73 = load volatile ptr, ptr @llc_sap_list, align 4
  %cmp.not74 = icmp eq ptr %.pn73, @llc_sap_list
  br i1 %cmp.not74, label %do.end.cleanup40_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup40_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

for.body:                                         ; preds = %for.end27.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn77 = phi ptr [ %.pn, %for.end27.for.body_crit_edge ], [ %.pn73, %do.end.for.body_crit_edge ]
  %pos.addr.076 = phi i64 [ %pos.addr.2.lcssa, %for.end27.for.body_crit_edge ], [ %pos, %do.end.for.body_crit_edge ]
  %sk_lock = getelementptr i8, ptr %.pn77, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %sk_lock) #6
  %sk_laddr_hash = getelementptr i8, ptr %.pn77, i32 56
  br label %for.body11

for.body11:                                       ; preds = %for.inc26.for.body11_crit_edge, %for.body
  %pos.addr.172 = phi i64 [ %pos.addr.076, %for.body ], [ %pos.addr.2.lcssa, %for.inc26.for.body11_crit_edge ]
  %i.070 = phi i32 [ 0, %for.body ], [ %inc, %for.inc26.for.body11_crit_edge ]
  %arrayidx = getelementptr [64 x %struct.hlist_nulls_head], ptr %sk_laddr_hash, i32 0, i32 %i.070
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %node12.062 = load ptr, ptr %arrayidx, align 4
  %1 = ptrtoint ptr %node12.062 to i32
  %and.i63 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63)
  %tobool15.not64 = icmp eq i32 %and.i63, 0
  br i1 %tobool15.not64, label %for.body11.land.rhs_crit_edge, label %for.body11.for.inc26_crit_edge

for.body11.for.inc26_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc26

for.body11.land.rhs_crit_edge:                    ; preds = %for.body11
  br label %land.rhs

land.rhs:                                         ; preds = %if.end24.land.rhs_crit_edge, %for.body11.land.rhs_crit_edge
  %node12.066 = phi ptr [ %node12.0, %if.end24.land.rhs_crit_edge ], [ %node12.062, %for.body11.land.rhs_crit_edge ]
  %pos.addr.265 = phi i64 [ %dec, %if.end24.land.rhs_crit_edge ], [ %pos.addr.172, %for.body11.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos.addr.265)
  %tobool22.not = icmp eq i64 %pos.addr.265, 0
  br i1 %tobool22.not, label %cleanup40.loopexit, label %if.end24

if.end24:                                         ; preds = %land.rhs
  %dec = add i64 %pos.addr.265, -1
  %2 = ptrtoint ptr %node12.066 to i32
  call void @__asan_load4_noabort(i32 %2)
  %node12.0 = load ptr, ptr %node12.066, align 4
  %3 = ptrtoint ptr %node12.0 to i32
  %and.i = and i32 %3, 1
  %tobool15.not = icmp eq i32 %and.i, 0
  br i1 %tobool15.not, label %if.end24.land.rhs_crit_edge, label %if.end24.for.inc26_crit_edge

if.end24.for.inc26_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc26

if.end24.land.rhs_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

for.inc26:                                        ; preds = %if.end24.for.inc26_crit_edge, %for.body11.for.inc26_crit_edge
  %pos.addr.2.lcssa = phi i64 [ %pos.addr.172, %for.body11.for.inc26_crit_edge ], [ %dec, %if.end24.for.inc26_crit_edge ]
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end27, label %for.inc26.for.body11_crit_edge

for.inc26.for.body11_crit_edge:                   ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body11

for.end27:                                        ; preds = %for.inc26
  tail call void @_raw_spin_unlock_bh(ptr noundef %sk_lock) #6
  %4 = ptrtoint ptr %.pn77 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load volatile ptr, ptr %.pn77, align 4
  %cmp.not = icmp eq ptr %.pn, @llc_sap_list
  br i1 %cmp.not, label %for.end27.cleanup40_crit_edge, label %for.end27.for.body_crit_edge

for.end27.for.body_crit_edge:                     ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end27.cleanup40_crit_edge:                    ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

cleanup40.loopexit:                               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr18.le68 = getelementptr i8, ptr %node12.066, i32 -84
  br label %cleanup40

cleanup40:                                        ; preds = %cleanup40.loopexit, %for.end27.cleanup40_crit_edge, %do.end.cleanup40_crit_edge
  %retval.0 = phi ptr [ %add.ptr18.le68, %cleanup40.loopexit ], [ null, %do.end.cleanup40_crit_edge ], [ null, %for.end27.cleanup40_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llc_seq_core_show(ptr noundef %seq, ptr noundef %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.13) #6
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 5
  %0 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %daddr, align 1
  %conv = zext i8 %1 to i32
  %state = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 8
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [13 x ptr], ptr @llc_conn_state_names, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %retry_count = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 9
  %6 = ptrtoint ptr %retry_count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %retry_count, align 4
  %conv1 = zext i8 %7 to i32
  %k = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 21
  %8 = ptrtoint ptr %k to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %k, align 4
  %conv2 = zext i8 %9 to i32
  %rw = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 22
  %10 = ptrtoint ptr %rw to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rw, align 1
  %conv3 = zext i8 %11 to i32
  %p_flag = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 23
  %12 = ptrtoint ptr %p_flag to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %p_flag, align 2
  %conv4 = zext i8 %13 to i32
  %f_flag = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 24
  %14 = ptrtoint ptr %f_flag to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %f_flag, align 1
  %conv5 = zext i8 %15 to i32
  %s_flag = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 25
  %16 = ptrtoint ptr %s_flag to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %s_flag, align 8
  %conv6 = zext i8 %17 to i32
  %data_flag = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 26
  %18 = ptrtoint ptr %data_flag to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data_flag, align 1
  %conv7 = zext i8 %19 to i32
  %remote_busy_flag = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 27
  %20 = ptrtoint ptr %remote_busy_flag to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %remote_busy_flag, align 2
  %conv8 = zext i8 %21 to i32
  %cause_flag = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 28
  %22 = ptrtoint ptr %cause_flag to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cause_flag, align 1
  %conv9 = zext i8 %23 to i32
  %pprev.i.i = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 13, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp ne ptr %25, null
  %lnot.ext.i = zext i1 %tobool.not.i.i to i32
  %pprev.i.i38 = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 14, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %pprev.i.i38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %pprev.i.i38, align 4
  %tobool.not.i.i39 = icmp ne ptr %27, null
  %lnot.ext.i40 = zext i1 %tobool.not.i.i39 to i32
  %pprev.i.i41 = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 15, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %pprev.i.i41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %pprev.i.i41, align 4
  %tobool.not.i.i42 = icmp ne ptr %29, null
  %lnot.ext.i43 = zext i1 %tobool.not.i.i42 to i32
  %pprev.i.i44 = getelementptr inbounds %struct.llc_sock, ptr %v, i32 0, i32 16, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %pprev.i.i44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %pprev.i.i44, align 4
  %tobool.not.i.i45 = icmp ne ptr %31, null
  %lnot.ext.i46 = zext i1 %tobool.not.i.i45 to i32
  %tail = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 9, i32 3
  %32 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail, align 4
  %tobool = icmp ne ptr %33, null
  %lnot.ext = zext i1 %tobool to i32
  %owned.i = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i = icmp ne i32 %35, 0
  %conv19 = zext i1 %tobool.i to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.14, i32 noundef %conv, ptr noundef %5, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %lnot.ext.i, i32 noundef %lnot.ext.i40, i32 noundef %lnot.ext.i43, i32 noundef %lnot.ext.i46, i32 noundef %lnot.ext, i32 noundef %conv19) #6
  br label %out

out:                                              ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/llc/llc_proc.c", i32 224, i32 28}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/llc/llc_proc.c", i32 228, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/llc/llc_proc.c", i32 232, i32 6}
!6 = !{ptr @llc_proc_dir, !7, !"llc_proc_dir", i1 false, i1 false}
!7 = !{!"../net/llc/llc_proc.c", i32 217, i32 31}
!8 = !{ptr @llc_seq_socket_ops, !9, !"llc_seq_socket_ops", i1 false, i1 false}
!9 = !{!"../net/llc/llc_proc.c", i32 203, i32 36}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../net/llc/llc_proc.c", i32 40, i32 2}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/llc/llc_proc.c", i32 132, i32 17}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/llc/llc_proc.c", i32 140, i32 18}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/llc/llc_proc.c", i32 148, i32 18}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/llc/llc_proc.c", i32 150, i32 18}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/llc/llc_proc.c", i32 31, i32 18}
!31 = !{ptr @llc_seq_core_ops, !32, !"llc_seq_core_ops", i1 false, i1 false}
!32 = !{!"../net/llc/llc_proc.c", i32 210, i32 36}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/llc/llc_proc.c", i32 181, i32 17}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/llc/llc_proc.c", i32 189, i32 18}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/llc/llc_proc.c", i32 161, i32 32}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/llc/llc_proc.c", i32 162, i32 32}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/llc/llc_proc.c", i32 163, i32 32}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/llc/llc_proc.c", i32 164, i32 32}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/llc/llc_proc.c", i32 165, i32 32}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/llc/llc_proc.c", i32 166, i32 32}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/llc/llc_proc.c", i32 167, i32 32}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/llc/llc_proc.c", i32 168, i32 32}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/llc/llc_proc.c", i32 169, i32 32}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/llc/llc_proc.c", i32 170, i32 32}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/llc/llc_proc.c", i32 171, i32 32}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/llc/llc_proc.c", i32 172, i32 32}
!61 = !{ptr @llc_conn_state_names, !62, !"llc_conn_state_names", i1 false, i1 false}
!62 = !{!"../net/llc/llc_proc.c", i32 160, i32 26}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
