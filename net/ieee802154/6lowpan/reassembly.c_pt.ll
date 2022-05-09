; ModuleID = '/llk/IR_all_yes/net/ieee802154/6lowpan/reassembly.c_pt.bc'
source_filename = "../net/ieee802154/6lowpan/reassembly.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inet_frags = type { i32, ptr, ptr, ptr, ptr, ptr, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.97, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.97 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.9 }
%union.anon.9 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.frag_lowpan_compare_key = type { i16, i16, %struct.ieee802154_addr, %struct.ieee802154_addr }
%struct.ieee802154_addr = type { i8, i16, %union.anon.124 }
%union.anon.124 = type { i64 }
%struct.ieee802154_hdr = type { %struct.ieee802154_hdr_fc, i8, %struct.ieee802154_addr, %struct.ieee802154_addr, %struct.ieee802154_sechdr }
%struct.ieee802154_hdr_fc = type { i16 }
%struct.ieee802154_sechdr = type { i8, i8, i32, %union.anon.147 }
%union.anon.147 = type { i64 }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.125, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.125 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.126, %union.anon.127, [48 x i8], %union.anon.128, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.130, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%union.anon.126 = type { ptr }
%union.anon.127 = type { i64 }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i32, ptr }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.132, i32, i32, i32, i16, i16, %union.anon.134, i32, %union.anon.135, %union.anon.136, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.132 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i16 }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.94, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, ptr, ptr, i64, i32, i32, i8, i16, ptr, %struct.callback_head }
%struct.rhash_head = type { ptr }
%union.anon.94 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.fqdir = type { i32, i32, i32, i32, ptr, ptr, i8, [103 x i8], %struct.rhashtable, [28 x i8], %struct.atomic_t, %struct.work_struct, %struct.llist_node, [76 x i8] }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_compare_arg = type { ptr, ptr }

@lowpan_frag_rcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\0146LoWPAN: lowpan_frag_rcv: datagram size exceeds MTU\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lowpan_frag_rcv\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"net/ieee802154/6lowpan/reassembly.c\00", [60 x i8] zeroinitializer }, align 32
@lowpan_frag_rcv._entry_ptr = internal global ptr @lowpan_frag_rcv._entry, section ".printk_index", align 4
@lowpan_frags = internal global { %struct.inet_frags, [48 x i8] } zeroinitializer, align 32
@lowpan_frags_cache_name = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lowpan-frags\00", [19 x i8] zeroinitializer }, align 32
@lowpan_rhash_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 0, i16 0, i16 0, i32 0, i16 0, i8 1, ptr @lowpan_key_hashfn, ptr @lowpan_obj_hashfn, ptr @lowpan_obj_cmpfn }, [36 x i8] zeroinitializer }, align 32
@lowpan_frags_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @lowpan_frags_init_net, ptr @lowpan_frags_pre_exit_net, ptr @lowpan_frags_exit_net, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@lowpan_frag_rx_handlers_result._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\0146LoWPAN: %s: received unknown dispatch\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lowpan_frag_rx_handlers_result\00", [33 x i8] zeroinitializer }, align 32
@lowpan_frag_rx_handlers_result._entry_ptr = internal global ptr @lowpan_frag_rx_handlers_result._entry, section ".printk_index", align 4
@lowpan_frag_reasm.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ieee802154_6lowpan\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lowpan_frag_reasm\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"lowpan_frag_reasm: no memory for reassembly\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"6LoWPAN: lowpan_frag_reasm: no memory for reassembly\0A\00", [42 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/ieee802154/6lowpan\00", [41 x i8] zeroinitializer }, align 32
@lowpan_frags_ctl_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.10, ptr @lowpan_frags_secret_interval_unused, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@lowpan_ctl_header = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"6lowpanfrag_secret_interval\00", [36 x i8] zeroinitializer }, align 32
@lowpan_frags_secret_interval_unused = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lowpan_frags_ns_ctl_table = internal global { [4 x %struct.ctl_table], [48 x i8] } { [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.11, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.12, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.13, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"6lowpanfrag_high_thresh\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"6lowpanfrag_low_thresh\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"6lowpanfrag_time\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 298, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"lowpan_frags\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 31, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant [24 x i8] c"lowpan_frags_cache_name\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 29, i32 19 }
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"lowpan_rhash_params\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 507, i32 39 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"lowpan_frags_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 479, i32 33 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 195, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 183, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 412, i32 7 }
@___asan_gen_.62 = private unnamed_addr constant [23 x i8] c"lowpan_frags_ctl_table\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 345, i32 25 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"lowpan_ctl_header\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 407, i32 33 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 347, i32 15 }
@___asan_gen_.71 = private unnamed_addr constant [36 x i8] c"lowpan_frags_secret_interval_unused\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 344, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant [26 x i8] c"lowpan_frags_ns_ctl_table\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 321, i32 25 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 323, i32 15 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 329, i32 15 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [39 x i8] c"../net/ieee802154/6lowpan/reassembly.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 335, i32 15 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @lowpan_frag_rcv._entry, ptr @lowpan_frag_rcv._entry_ptr, ptr @lowpan_frag_rx_handlers_result._entry, ptr @lowpan_frag_rx_handlers_result._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @lowpan_frags, ptr @lowpan_frags_cache_name, ptr @lowpan_rhash_params, ptr @lowpan_frags_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @lowpan_frags_ctl_table, ptr @lowpan_ctl_header, ptr @.str.10, ptr @lowpan_frags_secret_interval_unused, ptr @lowpan_frags_ns_ctl_table, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_frag_rcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_frags to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_frags_cache_name to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_rhash_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_frags_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_frag_rx_handlers_result._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_frags_ctl_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_ctl_header to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_frags_secret_interval_unused to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_frags_ns_ctl_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lowpan_frag_rcv(ptr noundef %skb, i8 noundef zeroext %frag_type) local_unnamed_addr #0 align 64 {
entry:
  %key.i = alloca %struct.frag_lowpan_compare_key, align 8
  %hdr = alloca %struct.ieee802154_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %hdr) #13
  %5 = call ptr @memset(ptr %hdr, i32 0, i32 56)
  %call2 = call i32 @ieee802154_hdr_peek_addrs(ptr noundef %skb, ptr noundef nonnull %hdr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.err36_crit_edge, label %if.end

entry.err36_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %err36

if.end:                                           ; preds = %entry
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.not.i.i.i = icmp eq i32 %9, %7
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end.if.end.i.i_crit_edge, !prof !52

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.i.i.i = icmp eq i32 %7, 0
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.lowpan_fetch_skb.exit.i_crit_edge, label %pskb_may_pull.exit.i.i, !prof !52

if.end.i.i.i.lowpan_fetch_skb.exit.i_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lowpan_fetch_skb.exit.i

pskb_may_pull.exit.i.i:                           ; preds = %if.end.i.i.i
  %call13.i.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #13
  %cmp14.i.not.i.i = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.not.i.i, label %pskb_may_pull.exit.i.i.lowpan_fetch_skb.exit.i_crit_edge, label %pskb_may_pull.exit.i.i.if.end.i.i_crit_edge, !prof !52

pskb_may_pull.exit.i.i.if.end.i.i_crit_edge:      ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

pskb_may_pull.exit.i.i.lowpan_fetch_skb.exit.i_crit_edge: ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lowpan_fetch_skb.exit.i

if.end.i.i:                                       ; preds = %pskb_may_pull.exit.i.i.if.end.i.i_crit_edge, %if.end.if.end.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %high.0.copyload.i = load i8, ptr %11, align 1
  %call3.i.i = call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #13
  %phi.bo.i = and i8 %high.0.copyload.i, 7
  %phi.cast.i = zext i8 %phi.bo.i to i32
  %phi.bo115.i = shl nuw nsw i32 %phi.cast.i, 8
  br label %lowpan_fetch_skb.exit.i

lowpan_fetch_skb.exit.i:                          ; preds = %if.end.i.i, %pskb_may_pull.exit.i.i.lowpan_fetch_skb.exit.i_crit_edge, %if.end.i.i.i.lowpan_fetch_skb.exit.i_crit_edge
  %high.0.i = phi i32 [ 0, %if.end.i.i.i.lowpan_fetch_skb.exit.i_crit_edge ], [ 0, %pskb_may_pull.exit.i.i.lowpan_fetch_skb.exit.i_crit_edge ], [ %phi.bo115.i, %if.end.i.i ]
  %retval.0.i9.i.i = phi i1 [ true, %if.end.i.i.i.lowpan_fetch_skb.exit.i_crit_edge ], [ true, %pskb_may_pull.exit.i.i.lowpan_fetch_skb.exit.i_crit_edge ], [ false, %if.end.i.i ]
  %13 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i.i.i.i, align 4
  %15 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp.not.i.i73.i = icmp eq i32 %16, %14
  br i1 %cmp.not.i.i73.i, label %if.end.i.i75.i, label %lowpan_fetch_skb.exit.i.if.end.i82.i_crit_edge, !prof !52

lowpan_fetch_skb.exit.i.if.end.i82.i_crit_edge:   ; preds = %lowpan_fetch_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i82.i

if.end.i.i75.i:                                   ; preds = %lowpan_fetch_skb.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp3.i.i74.i = icmp eq i32 %14, 0
  br i1 %cmp3.i.i74.i, label %if.end.i.i75.i.lowpan_fetch_skb.exit84.i_crit_edge, label %pskb_may_pull.exit.i79.i, !prof !52

if.end.i.i75.i.lowpan_fetch_skb.exit84.i_crit_edge: ; preds = %if.end.i.i75.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lowpan_fetch_skb.exit84.i

pskb_may_pull.exit.i79.i:                         ; preds = %if.end.i.i75.i
  %call13.i.i77.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #13
  %cmp14.i.not.i78.i = icmp eq ptr %call13.i.i77.i, null
  br i1 %cmp14.i.not.i78.i, label %pskb_may_pull.exit.i79.i.lowpan_fetch_skb.exit84.ithread-pre-split_crit_edge, label %pskb_may_pull.exit.i79.i.if.end.i82.i_crit_edge, !prof !52

pskb_may_pull.exit.i79.i.if.end.i82.i_crit_edge:  ; preds = %pskb_may_pull.exit.i79.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i82.i

pskb_may_pull.exit.i79.i.lowpan_fetch_skb.exit84.ithread-pre-split_crit_edge: ; preds = %pskb_may_pull.exit.i79.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lowpan_fetch_skb.exit84.ithread-pre-split

if.end.i82.i:                                     ; preds = %pskb_may_pull.exit.i79.i.if.end.i82.i_crit_edge, %lowpan_fetch_skb.exit.i.if.end.i82.i_crit_edge
  %data.i.i80.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i80.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %low.0.copyload.i = load i8, ptr %18, align 1
  %call3.i81.i = call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #13
  %phi.cast116.i = zext i8 %low.0.copyload.i to i32
  br label %lowpan_fetch_skb.exit84.ithread-pre-split

lowpan_fetch_skb.exit84.ithread-pre-split:        ; preds = %if.end.i82.i, %pskb_may_pull.exit.i79.i.lowpan_fetch_skb.exit84.ithread-pre-split_crit_edge
  %low.0.i.ph = phi i32 [ %phi.cast116.i, %if.end.i82.i ], [ 0, %pskb_may_pull.exit.i79.i.lowpan_fetch_skb.exit84.ithread-pre-split_crit_edge ]
  %retval.0.i9.i83.i.ph = phi i1 [ false, %if.end.i82.i ], [ true, %pskb_may_pull.exit.i79.i.lowpan_fetch_skb.exit84.ithread-pre-split_crit_edge ]
  %20 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %len.i.i.i.i, align 4
  br label %lowpan_fetch_skb.exit84.i

lowpan_fetch_skb.exit84.i:                        ; preds = %lowpan_fetch_skb.exit84.ithread-pre-split, %if.end.i.i75.i.lowpan_fetch_skb.exit84.i_crit_edge
  %21 = phi i32 [ %.pr, %lowpan_fetch_skb.exit84.ithread-pre-split ], [ 0, %if.end.i.i75.i.lowpan_fetch_skb.exit84.i_crit_edge ]
  %low.0.i = phi i32 [ %low.0.i.ph, %lowpan_fetch_skb.exit84.ithread-pre-split ], [ 0, %if.end.i.i75.i.lowpan_fetch_skb.exit84.i_crit_edge ]
  %retval.0.i9.i83.i = phi i1 [ %retval.0.i9.i83.i.ph, %lowpan_fetch_skb.exit84.ithread-pre-split ], [ true, %if.end.i.i75.i.lowpan_fetch_skb.exit84.i_crit_edge ]
  %or65.i = or i1 %retval.0.i9.i.i, %retval.0.i9.i83.i
  %or7.i = or i32 %low.0.i, %high.0.i
  %d_size.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %d_size.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or7.i, ptr %d_size.i, align 4
  %23 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i87.i = sub i32 %21, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i.i87.i)
  %cmp.not.i.i88.i = icmp ult i32 %sub.i.i.i87.i, 2
  br i1 %cmp.not.i.i88.i, label %if.end.i.i90.i, label %lowpan_fetch_skb.exit84.i.if.end.i97.i_crit_edge, !prof !52

lowpan_fetch_skb.exit84.i.if.end.i97.i_crit_edge: ; preds = %lowpan_fetch_skb.exit84.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i97.i

if.end.i.i90.i:                                   ; preds = %lowpan_fetch_skb.exit84.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp3.i.i89.i = icmp ult i32 %21, 2
  br i1 %cmp3.i.i89.i, label %if.end.i.i90.i.lowpan_fetch_skb.exit99.i_crit_edge, label %pskb_may_pull.exit.i94.i, !prof !52

if.end.i.i90.i.lowpan_fetch_skb.exit99.i_crit_edge: ; preds = %if.end.i.i90.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lowpan_fetch_skb.exit99.i

pskb_may_pull.exit.i94.i:                         ; preds = %if.end.i.i90.i
  %sub.i.i91.i = sub nuw nsw i32 2, %sub.i.i.i87.i
  %call13.i.i92.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i91.i) #13
  %cmp14.i.not.i93.i = icmp eq ptr %call13.i.i92.i, null
  br i1 %cmp14.i.not.i93.i, label %pskb_may_pull.exit.i94.i.lowpan_fetch_skb.exit99.i_crit_edge, label %pskb_may_pull.exit.i94.i.if.end.i97.i_crit_edge, !prof !52

pskb_may_pull.exit.i94.i.if.end.i97.i_crit_edge:  ; preds = %pskb_may_pull.exit.i94.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i97.i

pskb_may_pull.exit.i94.i.lowpan_fetch_skb.exit99.i_crit_edge: ; preds = %pskb_may_pull.exit.i94.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lowpan_fetch_skb.exit99.i

if.end.i97.i:                                     ; preds = %pskb_may_pull.exit.i94.i.if.end.i97.i_crit_edge, %lowpan_fetch_skb.exit84.i.if.end.i97.i_crit_edge
  %data.i.i95.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i95.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %d_tag.0.copyload.i = load i16, ptr %26, align 1
  %call3.i96.i = call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #13
  br label %lowpan_fetch_skb.exit99.i

lowpan_fetch_skb.exit99.i:                        ; preds = %if.end.i97.i, %pskb_may_pull.exit.i94.i.lowpan_fetch_skb.exit99.i_crit_edge, %if.end.i.i90.i.lowpan_fetch_skb.exit99.i_crit_edge
  %d_tag.0.i = phi i16 [ 0, %if.end.i.i90.i.lowpan_fetch_skb.exit99.i_crit_edge ], [ 0, %pskb_may_pull.exit.i94.i.lowpan_fetch_skb.exit99.i_crit_edge ], [ %d_tag.0.copyload.i, %if.end.i97.i ]
  %retval.0.i9.i98.i = phi i1 [ true, %if.end.i.i90.i.lowpan_fetch_skb.exit99.i_crit_edge ], [ true, %pskb_may_pull.exit.i94.i.lowpan_fetch_skb.exit99.i_crit_edge ], [ false, %if.end.i97.i ]
  %or1266.i = or i1 %or65.i, %retval.0.i9.i98.i
  %28 = ptrtoint ptr %cb.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %d_tag.0.i, ptr %cb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %frag_type)
  %cmp.i = icmp eq i8 %frag_type, -32
  br i1 %cmp.i, label %if.then.i, label %lowpan_get_cb.exit

if.then.i:                                        ; preds = %lowpan_fetch_skb.exit99.i
  %d_offset.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i.i.i.i, align 4
  %31 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp.not.i.i103.i = icmp eq i32 %32, %30
  br i1 %cmp.not.i.i103.i, label %if.end.i.i105.i, label %if.then.i.lowpan_fetch_skb.exit114.i_crit_edge, !prof !52

if.then.i.lowpan_fetch_skb.exit114.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lowpan_fetch_skb.exit114.i

if.end.i.i105.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp3.i.i104.i = icmp eq i32 %30, 0
  br i1 %cmp3.i.i104.i, label %if.end.i.i105.i.err36_crit_edge, label %pskb_may_pull.exit.i109.i, !prof !52

if.end.i.i105.i.err36_crit_edge:                  ; preds = %if.end.i.i105.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err36

pskb_may_pull.exit.i109.i:                        ; preds = %if.end.i.i105.i
  %call13.i.i107.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #13
  %cmp14.i.not.i108.i = icmp eq ptr %call13.i.i107.i, null
  br i1 %cmp14.i.not.i108.i, label %pskb_may_pull.exit.i109.i.err36_crit_edge, label %pskb_may_pull.exit.i109.i.lowpan_fetch_skb.exit114.i_crit_edge, !prof !52

pskb_may_pull.exit.i109.i.lowpan_fetch_skb.exit114.i_crit_edge: ; preds = %pskb_may_pull.exit.i109.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lowpan_fetch_skb.exit114.i

pskb_may_pull.exit.i109.i.err36_crit_edge:        ; preds = %pskb_may_pull.exit.i109.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err36

lowpan_fetch_skb.exit114.i:                       ; preds = %pskb_may_pull.exit.i109.i.lowpan_fetch_skb.exit114.i_crit_edge, %if.then.i.lowpan_fetch_skb.exit114.i_crit_edge
  %data.i.i110.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %33 = ptrtoint ptr %data.i.i110.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i110.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  %37 = ptrtoint ptr %d_offset.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %d_offset.i, align 1
  %call3.i111.i = call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #13
  br i1 %or1266.i, label %lowpan_fetch_skb.exit114.i.err36_crit_edge, label %lowpan_fetch_skb.exit114.i.if.end15_crit_edge

lowpan_fetch_skb.exit114.i.if.end15_crit_edge:    ; preds = %lowpan_fetch_skb.exit114.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

lowpan_fetch_skb.exit114.i.err36_crit_edge:       ; preds = %lowpan_fetch_skb.exit114.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err36

lowpan_get_cb.exit:                               ; preds = %lowpan_fetch_skb.exit99.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %38 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %40 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %42 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %d_offset25.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %43 = ptrtoint ptr %d_offset25.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %d_offset25.i, align 4
  %44 = ptrtoint ptr %d_size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %d_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %45)
  %cmp27.i = icmp ult i32 %45, 40
  %or3167.i = or i1 %or1266.i, %cmp27.i
  %46 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool34.not.i = icmp eq i32 %47, 0
  %or3768.i = or i1 %or3167.i, %tobool34.not.i
  br i1 %or3768.i, label %lowpan_get_cb.exit.err36_crit_edge, label %if.end6

lowpan_get_cb.exit.err36_crit_edge:               ; preds = %lowpan_get_cb.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err36

if.end6:                                          ; preds = %lowpan_get_cb.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %frag_type)
  %cmp7 = icmp eq i8 %frag_type, -64
  br i1 %cmp7, label %if.then9, label %if.end6.if.end15_crit_edge

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then9:                                         ; preds = %if.end6
  %48 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i.i, align 8
  %50 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %51 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %49, i32 %conv.i.i.i
  %52 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr.i.i.i, align 1
  %54 = and i8 %53, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %54)
  %cmp.i.i.i = icmp eq i8 %54, 96
  br i1 %cmp.i.i.i, label %lowpan_frag_rx_h_iphc.exit.i, label %rxh_next.i

lowpan_frag_rx_h_iphc.exit.i:                     ; preds = %if.then9
  %call2.i.i = call i32 @lowpan_iphc_decompress(ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %lowpan_frag_rx_h_iphc.exit.i.err36_crit_edge, label %lowpan_frag_rx_h_iphc.exit.i.if.end15_crit_edge

lowpan_frag_rx_h_iphc.exit.i.if.end15_crit_edge:  ; preds = %lowpan_frag_rx_h_iphc.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

lowpan_frag_rx_h_iphc.exit.i.err36_crit_edge:     ; preds = %lowpan_frag_rx_h_iphc.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err36

rxh_next.i:                                       ; preds = %if.then9
  %call2.i = call i32 @lowpan_rx_h_ipv6(ptr noundef %skb) #13
  %55 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2.i, label %rxh_next.i.err36_crit_edge [
    i32 3, label %rxh_next.i.if.end15_crit_edge
    i32 0, label %do.body.i.i
  ]

rxh_next.i.if.end15_crit_edge:                    ; preds = %rxh_next.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

rxh_next.i.err36_crit_edge:                       ; preds = %rxh_next.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err36

do.body.i.i:                                      ; preds = %rxh_next.i
  %call.i.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.err36_crit_edge, label %do.end.i.i

do.body.i.i.err36_crit_edge:                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err36

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i.i56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #16
  br label %err36

if.end15:                                         ; preds = %rxh_next.i.if.end15_crit_edge, %lowpan_frag_rx_h_iphc.exit.i.if.end15_crit_edge, %if.end6.if.end15_crit_edge, %lowpan_fetch_skb.exit114.i.if.end15_crit_edge
  %56 = ptrtoint ptr %d_size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %d_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %57)
  %cmp16 = icmp ugt i32 %57, 1280
  br i1 %cmp16, label %do.body, label %if.end26

do.body:                                          ; preds = %if.end15
  %call19 = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %do.body.err36_crit_edge, label %do.end

do.body.err36_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %err36

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #16
  br label %err36

if.end26:                                         ; preds = %if.end15
  %source = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2
  %dest = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %key.i) #13
  %58 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 0, ptr %key.i, align 8
  %59 = ptrtoint ptr %cb.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %cb.i, align 4
  store i16 %60, ptr %key.i, align 8
  %conv.i = trunc i32 %57 to i16
  %d_size1.i = getelementptr inbounds %struct.frag_lowpan_compare_key, ptr %key.i, i32 0, i32 1
  %61 = ptrtoint ptr %d_size1.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i, ptr %d_size1.i, align 2
  %src2.i = getelementptr inbounds %struct.frag_lowpan_compare_key, ptr %key.i, i32 0, i32 2
  %62 = call ptr @memcpy(ptr %src2.i, ptr %source, i32 16)
  %dst3.i = getelementptr inbounds %struct.frag_lowpan_compare_key, ptr %key.i, i32 0, i32 3
  %63 = call ptr @memcpy(ptr %dst3.i, ptr %dest, i32 16)
  %fqdir.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 37, i32 1
  %64 = ptrtoint ptr %fqdir.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fqdir.i, align 4
  %call4.i = call ptr @inet_frag_find(ptr noundef %65, ptr noundef nonnull %key.i) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %key.i) #13
  %cmp28.not = icmp eq ptr %call4.i, null
  br i1 %cmp28.not, label %if.end26.err36_crit_edge, label %if.then30

if.end26.err36_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %err36

if.then30:                                        ; preds = %if.end26
  %lock = getelementptr inbounds %struct.inet_frag_queue, ptr %call4.i, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %lock) #13
  %call31 = call fastcc i32 @lowpan_frag_queue(ptr noundef nonnull %call4.i, ptr noundef %skb, i8 noundef zeroext %frag_type)
  call void @_raw_spin_unlock(ptr noundef %lock) #13
  %refcnt.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call4.i, i32 0, i32 4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !53
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %66 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !54
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i58, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !55

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #13
  br label %cleanup

if.then.i58:                                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !56
  call void @inet_frag_destroy(ptr noundef nonnull %call4.i) #13
  br label %cleanup

err36:                                            ; preds = %if.end26.err36_crit_edge, %do.end, %do.body.err36_crit_edge, %do.end.i.i, %do.body.i.i.err36_crit_edge, %rxh_next.i.err36_crit_edge, %lowpan_frag_rx_h_iphc.exit.i.err36_crit_edge, %lowpan_get_cb.exit.err36_crit_edge, %lowpan_fetch_skb.exit114.i.err36_crit_edge, %pskb_may_pull.exit.i109.i.err36_crit_edge, %if.end.i.i105.i.err36_crit_edge, %entry.err36_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %err36, %if.then.i58, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %err36 ], [ %call31, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call31, %if.then10.i.i.i.i ], [ %call31, %if.then.i58 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %hdr) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_hdr_peek_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lowpan_frag_queue(ptr noundef %fq, ptr noundef %skb, i8 noundef zeroext %frag_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 8
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.err86_crit_edge

entry.err86_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %err86

if.end:                                           ; preds = %entry
  %d_offset = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %d_offset to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %d_offset, align 4
  %conv4 = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %conv4, 3
  %d_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %5 = ptrtoint ptr %d_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %d_size, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %add = add i32 %shl, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %6)
  %cmp = icmp eq i32 %add, %6
  %len9 = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 9
  %9 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len9, align 8
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %10)
  %cmp10 = icmp slt i32 %6, %10
  br i1 %cmp10, label %if.then7.err86_crit_edge, label %lor.lhs.false

if.then7.err86_crit_edge:                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %err86

lor.lhs.false:                                    ; preds = %if.then7
  %11 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool16.not = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %10)
  %cmp19.not = icmp eq i32 %6, %10
  %or.cond = select i1 %tobool16.not, i1 true, i1 %cmp19.not
  br i1 %or.cond, label %if.end22, label %lor.lhs.false.err86_crit_edge

lor.lhs.false.err86_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %err86

if.end22:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %12 = or i8 %1, 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %flags, align 8
  br label %if.end44.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %10)
  %cmp31 = icmp sgt i32 %6, %10
  br i1 %cmp31, label %if.then33, label %if.else.if.end44_crit_edge

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then33:                                        ; preds = %if.else
  %14 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool38.not = icmp eq i8 %14, 0
  br i1 %tobool38.not, label %if.then33.if.end44.sink.split_crit_edge, label %if.then33.err86_crit_edge

if.then33.err86_crit_edge:                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %err86

if.then33.if.end44.sink.split_crit_edge:          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44.sink.split

if.end44.sink.split:                              ; preds = %if.then33.if.end44.sink.split_crit_edge, %if.end22
  %15 = ptrtoint ptr %len9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %6, ptr %len9, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %if.else.if.end44_crit_edge
  %16 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %tobool45.not = icmp eq ptr %18, null
  br i1 %tobool45.not, label %if.end44.if.end47_crit_edge, label %if.then46

if.end44.if.end47_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %16, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end44.if.end47_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !57
  %fragments_tail = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 6
  %20 = ptrtoint ptr %fragments_tail to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fragments_tail, align 4
  %call50 = tail call i32 @inet_frag_queue_insert(ptr noundef %fq, ptr noundef %skb, i32 noundef %shl, i32 noundef %6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end47.err86_crit_edge

if.end47.err86_crit_edge:                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %err86

if.end53:                                         ; preds = %if.end47
  %22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %22, align 8
  %stamp = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 8
  %25 = ptrtoint ptr %stamp to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %stamp, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %frag_type)
  %cmp56 = icmp eq i8 %frag_type, -64
  br i1 %cmp56, label %if.then58, label %if.end53.if.end64_crit_edge

if.end53.if.end64_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags, align 8
  %28 = or i8 %27, 1
  store i8 %28, ptr %flags, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then58, %if.end53.if.end64_crit_edge
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %meat = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 10
  %31 = ptrtoint ptr %meat to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %meat, align 4
  %add67 = add i32 %32, %30
  store i32 %add67, ptr %meat, align 4
  %fqdir = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 13
  %33 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fqdir, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %35 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %truesize, align 8
  %mem.i = getelementptr inbounds %struct.fqdir, ptr %34, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mem.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %mem.i, i32 1, i32 3, i32 1) #13
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mem.i, ptr %mem.i, i32 %36, ptr elementtype(i32) %mem.i) #13, !srcloc !58
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %39)
  %cmp72 = icmp eq i8 %39, 3
  br i1 %cmp72, label %land.lhs.true74, label %if.end64.if.end85_crit_edge

if.end64.if.end85_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

land.lhs.true74:                                  ; preds = %if.end64
  %40 = ptrtoint ptr %meat to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %meat, align 4
  %len78 = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 9
  %42 = ptrtoint ptr %len78 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len78, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp79 = icmp eq i32 %41, %43
  br i1 %cmp79, label %if.then81, label %land.lhs.true74.if.end85_crit_edge

land.lhs.true74.if.end85_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then81:                                        ; preds = %land.lhs.true74
  %44 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  store i32 0, ptr %44, align 8
  tail call void @inet_frag_kill(ptr noundef %fq) #13
  %call.i = tail call ptr @inet_frag_reasm_prepare(ptr noundef %fq, ptr noundef %skb, ptr noundef %21) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end.i

if.end.i:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @inet_frag_reasm_finish(ptr noundef %fq, ptr noundef %skb, ptr noundef nonnull %call.i, i1 noundef zeroext false) #13
  %47 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %18, ptr %16, align 8
  %48 = ptrtoint ptr %stamp to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %stamp, align 8
  %50 = ptrtoint ptr %22 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %22, align 8
  %rb_fragments.i = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 5
  %51 = ptrtoint ptr %rb_fragments.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %rb_fragments.i, align 8
  %52 = ptrtoint ptr %fragments_tail to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %fragments_tail, align 4
  %last_run_head.i = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 7
  %53 = ptrtoint ptr %last_run_head.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %last_run_head.i, align 8
  br label %lowpan_frag_reasm.exit

do.body.i:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_frag_reasm.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_frag_queue, %land.lhs.true.i)) #13
          to label %lowpan_frag_reasm.exit [label %land.lhs.true.i], !srcloc !59

land.lhs.true.i:                                  ; preds = %do.body.i
  %call11.i = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.lowpan_frag_reasm.exit_crit_edge, label %if.then13.i

land.lhs.true.i.lowpan_frag_reasm.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lowpan_frag_reasm.exit

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_frag_reasm.descriptor, ptr noundef nonnull @.str.8) #13
  br label %lowpan_frag_reasm.exit

lowpan_frag_reasm.exit:                           ; preds = %if.then13.i, %land.lhs.true.i.lowpan_frag_reasm.exit_crit_edge, %do.body.i, %if.end.i
  %retval.0.i = phi i32 [ 1, %if.end.i ], [ -1, %if.then13.i ], [ -1, %land.lhs.true.i.lowpan_frag_reasm.exit_crit_edge ], [ -1, %do.body.i ]
  %54 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %46, ptr %44, align 8
  br label %cleanup

if.end85:                                         ; preds = %land.lhs.true74.if.end85_crit_edge, %if.end64.if.end85_crit_edge
  %55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i133 = icmp eq i32 %57, 0
  br i1 %tobool.not.i133, label %if.end85.cleanup_crit_edge, label %if.then.i

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end85
  %and.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.refdst_drop.exit.i_crit_edge

if.then.i.refdst_drop.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %and1.i.i = and i32 %57, -2
  %58 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %58) #13
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i.refdst_drop.exit.i_crit_edge
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %55, align 8
  br label %cleanup

err86:                                            ; preds = %if.end47.err86_crit_edge, %if.then33.err86_crit_edge, %lor.lhs.false.err86_crit_edge, %if.then7.err86_crit_edge, %entry.err86_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %err86, %refdst_drop.exit.i, %if.end85.cleanup_crit_edge, %lowpan_frag_reasm.exit
  %retval.0 = phi i32 [ -1, %err86 ], [ %retval.0.i, %lowpan_frag_reasm.exit ], [ -1, %if.end85.cleanup_crit_edge ], [ -1, %refdst_drop.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lowpan_net_frag_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr @lowpan_frag_init, ptr getelementptr inbounds (%struct.inet_frags, ptr @lowpan_frags, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.inet_frags, ptr @lowpan_frags, i32 0, i32 2), align 4
  store i32 200, ptr @lowpan_frags, align 4
  store ptr @lowpan_frag_expire, ptr getelementptr inbounds (%struct.inet_frags, ptr @lowpan_frags, i32 0, i32 3), align 4
  store ptr @lowpan_frags_cache_name, ptr getelementptr inbounds (%struct.inet_frags, ptr @lowpan_frags, i32 0, i32 5), align 4
  %0 = call ptr @memcpy(ptr getelementptr inbounds (%struct.inet_frags, ptr @lowpan_frags, i32 0, i32 6), ptr @lowpan_rhash_params, i32 28)
  %call = tail call i32 @inet_frags_init(ptr noundef nonnull @lowpan_frags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.9, ptr noundef nonnull @lowpan_frags_ctl_table) #13
  store ptr %call.i, ptr @lowpan_ctl_header, align 4
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %if.end.err_sysctl_crit_edge, label %if.end4

if.end.err_sysctl_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_sysctl

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @lowpan_frags_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %err_pernet

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_pernet:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %1 = load ptr, ptr @lowpan_ctl_header, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %1) #13
  br label %err_sysctl

err_sysctl:                                       ; preds = %err_pernet, %if.end.err_sysctl_crit_edge
  %ret.1 = phi i32 [ -12, %if.end.err_sysctl_crit_edge ], [ %call5, %err_pernet ]
  tail call void @inet_frags_fini(ptr noundef nonnull @lowpan_frags) #13
  br label %cleanup

cleanup:                                          ; preds = %err_sysctl, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_sysctl ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @lowpan_frag_init(ptr nocapture noundef writeonly %q, ptr nocapture noundef readonly %a) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %key1 = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %key1, ptr %a, i32 40)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lowpan_frag_expire(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -48
  %lock = getelementptr i8, ptr %t, i32 48
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %flags = getelementptr i8, ptr %t, i32 128
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 8
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @inet_frag_kill(ptr noundef %add.ptr) #13
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  %refcnt.i = getelementptr i8, ptr %t, i32 92
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !53
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !54
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.inet_frag_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !55

if.end5.i.i.i.i.inet_frag_put.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %inet_frag_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #13
  br label %inet_frag_put.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !56
  tail call void @inet_frag_destroy(ptr noundef %add.ptr) #13
  br label %inet_frag_put.exit

inet_frag_put.exit:                               ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.inet_frag_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_frags_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frags_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lowpan_net_frag_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @lowpan_ctl_header, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %0) #13
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @lowpan_frags_ops) #13
  tail call void @inet_frags_fini(ptr noundef nonnull @lowpan_frags) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lowpan_rx_h_ipv6(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lowpan_iphc_decompress(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_frag_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_frag_queue_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frag_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_frag_reasm_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frag_reasm_finish(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frag_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @lowpan_key_hashfn(ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %seed) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @jhash2(ptr noundef %data, i32 noundef %seed)
  ret i32 %call
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @lowpan_obj_hashfn(ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %seed) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.inet_frag_queue, ptr %data, i32 0, i32 1
  %call = tail call fastcc i32 @jhash2(ptr noundef %key, i32 noundef %seed)
  ret i32 %call
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lowpan_obj_cmpfn(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %ptr) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %key1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key1, align 4
  %key2 = getelementptr inbounds %struct.inet_frag_queue, ptr %ptr, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(40) %key2, ptr noundef dereferenceable(40) %1, i32 40) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool = icmp ne i32 %bcmp, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jhash2(ptr nocapture noundef readonly %k, i32 noundef %initval) unnamed_addr #9 align 64 {
sw.epilog:
  call void @__sanitizer_cov_trace_pc() #15
  %add1 = add i32 %initval, -559038697
  %0 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %k, align 4
  %add2 = add i32 %1, %add1
  %arrayidx3 = getelementptr i32, ptr %k, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  %add4 = add i32 %3, %add1
  %arrayidx5 = getelementptr i32, ptr %k, i32 2
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 4
  %add6 = add i32 %5, %add1
  %sub = sub i32 %add2, %add6
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add6, i32 %add6, i32 4) #13
  %xor = xor i32 %sub, %or.i
  %add7 = add i32 %add6, %add4
  %sub8 = sub i32 %add4, %xor
  %or.i1 = tail call i32 @llvm.fshl.i32(i32 %xor, i32 %xor, i32 6) #13
  %xor10 = xor i32 %sub8, %or.i1
  %add11 = add i32 %xor, %add7
  %sub12 = sub i32 %add7, %xor10
  %or.i2 = tail call i32 @llvm.fshl.i32(i32 %xor10, i32 %xor10, i32 8) #13
  %xor14 = xor i32 %sub12, %or.i2
  %add15 = add i32 %xor10, %add11
  %sub16 = sub i32 %add11, %xor14
  %or.i3 = tail call i32 @llvm.fshl.i32(i32 %xor14, i32 %xor14, i32 16) #13
  %xor18 = xor i32 %sub16, %or.i3
  %add19 = add i32 %xor14, %add15
  %sub20 = sub i32 %add15, %xor18
  %or.i4 = tail call i32 @llvm.fshl.i32(i32 %xor18, i32 %xor18, i32 19) #13
  %xor22 = xor i32 %sub20, %or.i4
  %add23 = add i32 %xor18, %add19
  %sub24 = sub i32 %add19, %xor22
  %or.i5 = tail call i32 @llvm.fshl.i32(i32 %xor22, i32 %xor22, i32 4) #13
  %xor26 = xor i32 %sub24, %or.i5
  %add27 = add i32 %xor22, %add23
  %add.ptr = getelementptr i32, ptr %k, i32 3
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %add2.1 = add i32 %7, %add23
  %arrayidx3.1 = getelementptr i32, ptr %k, i32 4
  %8 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.1, align 4
  %add4.1 = add i32 %9, %add27
  %arrayidx5.1 = getelementptr i32, ptr %k, i32 5
  %10 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5.1, align 4
  %add6.1 = add i32 %11, %xor26
  %sub.1 = sub i32 %add2.1, %add6.1
  %or.i.1 = tail call i32 @llvm.fshl.i32(i32 %add6.1, i32 %add6.1, i32 4) #13
  %xor.1 = xor i32 %sub.1, %or.i.1
  %add7.1 = add i32 %add6.1, %add4.1
  %sub8.1 = sub i32 %add4.1, %xor.1
  %or.i1.1 = tail call i32 @llvm.fshl.i32(i32 %xor.1, i32 %xor.1, i32 6) #13
  %xor10.1 = xor i32 %sub8.1, %or.i1.1
  %add11.1 = add i32 %xor.1, %add7.1
  %sub12.1 = sub i32 %add7.1, %xor10.1
  %or.i2.1 = tail call i32 @llvm.fshl.i32(i32 %xor10.1, i32 %xor10.1, i32 8) #13
  %xor14.1 = xor i32 %sub12.1, %or.i2.1
  %add15.1 = add i32 %xor10.1, %add11.1
  %sub16.1 = sub i32 %add11.1, %xor14.1
  %or.i3.1 = tail call i32 @llvm.fshl.i32(i32 %xor14.1, i32 %xor14.1, i32 16) #13
  %xor18.1 = xor i32 %sub16.1, %or.i3.1
  %add19.1 = add i32 %xor14.1, %add15.1
  %sub20.1 = sub i32 %add15.1, %xor18.1
  %or.i4.1 = tail call i32 @llvm.fshl.i32(i32 %xor18.1, i32 %xor18.1, i32 19) #13
  %xor22.1 = xor i32 %sub20.1, %or.i4.1
  %add23.1 = add i32 %xor18.1, %add19.1
  %sub24.1 = sub i32 %add19.1, %xor22.1
  %or.i5.1 = tail call i32 @llvm.fshl.i32(i32 %xor22.1, i32 %xor22.1, i32 4) #13
  %xor26.1 = xor i32 %sub24.1, %or.i5.1
  %add27.1 = add i32 %xor22.1, %add23.1
  %add.ptr.1 = getelementptr i32, ptr %k, i32 6
  %12 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.1, align 4
  %add2.2 = add i32 %13, %add23.1
  %arrayidx3.2 = getelementptr i32, ptr %k, i32 7
  %14 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx3.2, align 4
  %add4.2 = add i32 %15, %add27.1
  %arrayidx5.2 = getelementptr i32, ptr %k, i32 8
  %16 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx5.2, align 4
  %add6.2 = add i32 %17, %xor26.1
  %sub.2 = sub i32 %add2.2, %add6.2
  %or.i.2 = tail call i32 @llvm.fshl.i32(i32 %add6.2, i32 %add6.2, i32 4) #13
  %xor.2 = xor i32 %sub.2, %or.i.2
  %add7.2 = add i32 %add6.2, %add4.2
  %sub8.2 = sub i32 %add4.2, %xor.2
  %or.i1.2 = tail call i32 @llvm.fshl.i32(i32 %xor.2, i32 %xor.2, i32 6) #13
  %xor10.2 = xor i32 %sub8.2, %or.i1.2
  %add11.2 = add i32 %xor.2, %add7.2
  %sub12.2 = sub i32 %add7.2, %xor10.2
  %or.i2.2 = tail call i32 @llvm.fshl.i32(i32 %xor10.2, i32 %xor10.2, i32 8) #13
  %xor14.2 = xor i32 %sub12.2, %or.i2.2
  %add15.2 = add i32 %xor10.2, %add11.2
  %sub16.2 = sub i32 %add11.2, %xor14.2
  %or.i3.2 = tail call i32 @llvm.fshl.i32(i32 %xor14.2, i32 %xor14.2, i32 16) #13
  %xor18.2 = xor i32 %sub16.2, %or.i3.2
  %add19.2 = add i32 %xor14.2, %add15.2
  %sub20.2 = sub i32 %add15.2, %xor18.2
  %or.i4.2 = tail call i32 @llvm.fshl.i32(i32 %xor18.2, i32 %xor18.2, i32 19) #13
  %xor22.2 = xor i32 %sub20.2, %or.i4.2
  %add23.2 = add i32 %xor18.2, %add19.2
  %sub24.2 = sub i32 %add19.2, %xor22.2
  %or.i5.2 = tail call i32 @llvm.fshl.i32(i32 %xor22.2, i32 %xor22.2, i32 4) #13
  %xor26.2 = xor i32 %sub24.2, %or.i5.2
  %add27.2 = add i32 %xor22.2, %add23.2
  %uglygep18 = getelementptr i8, ptr %k, i32 36
  %18 = ptrtoint ptr %uglygep18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %uglygep18, align 4
  %add36 = add i32 %19, %add23.2
  %xor37 = xor i32 %xor26.2, %add27.2
  %or.i6 = tail call i32 @llvm.fshl.i32(i32 %add27.2, i32 %add27.2, i32 14) #13
  %sub39 = sub i32 %xor37, %or.i6
  %xor40 = xor i32 %add36, %sub39
  %or.i7 = tail call i32 @llvm.fshl.i32(i32 %sub39, i32 %sub39, i32 11) #13
  %sub42 = sub i32 %xor40, %or.i7
  %xor43 = xor i32 %sub42, %add27.2
  %or.i8 = tail call i32 @llvm.fshl.i32(i32 %sub42, i32 %sub42, i32 25) #13
  %sub45 = sub i32 %xor43, %or.i8
  %xor46 = xor i32 %sub45, %sub39
  %or.i9 = tail call i32 @llvm.fshl.i32(i32 %sub45, i32 %sub45, i32 16) #13
  %sub48 = sub i32 %xor46, %or.i9
  %xor49 = xor i32 %sub48, %sub42
  %or.i10 = tail call i32 @llvm.fshl.i32(i32 %sub48, i32 %sub48, i32 4) #13
  %sub51 = sub i32 %xor49, %or.i10
  %xor52 = xor i32 %sub51, %sub45
  %or.i11 = tail call i32 @llvm.fshl.i32(i32 %sub51, i32 %sub51, i32 14) #13
  %sub54 = sub i32 %xor52, %or.i11
  %xor55 = xor i32 %sub54, %sub48
  %or.i12 = tail call i32 @llvm.fshl.i32(i32 %sub54, i32 %sub54, i32 24) #13
  %sub57 = sub i32 %xor55, %or.i12
  ret i32 %sub57
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lowpan_frags_init_net(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee802154_lowpan.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 37
  %fqdir = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 37, i32 1
  %call1 = tail call i32 @fqdir_init(ptr noundef %fqdir, ptr noundef nonnull @lowpan_frags, ptr noundef %net) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fqdir, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4194304, ptr %1, align 128
  %3 = load ptr, ptr %fqdir, align 4
  %low_thresh = getelementptr inbounds %struct.fqdir, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %low_thresh to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3145728, ptr %low_thresh, align 4
  %5 = load ptr, ptr %fqdir, align 4
  %timeout = getelementptr inbounds %struct.fqdir, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6000, ptr %timeout, align 8
  %cmp.i.not.i = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not.i, label %if.end.if.end7.i_crit_edge, label %if.then.i

if.end.if.end7.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end
  %call2.i = tail call ptr @kmemdup(ptr noundef nonnull @lowpan_frags_ns_ctl_table, i32 noundef 144, i32 noundef 3264) #13
  %cmp.i = icmp eq ptr %call2.i, null
  br i1 %cmp.i, label %if.then.i.if.then7_crit_edge, label %if.end.i

if.then.i.if.then7_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

if.end.i:                                         ; preds = %if.then.i
  %user_ns.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %7 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user_ns.i, align 4
  %cmp4.not.i = icmp eq ptr %8, @init_user_ns
  br i1 %cmp4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %call2.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge, %if.end.if.end7.i_crit_edge
  %table.0.i = phi ptr [ @lowpan_frags_ns_ctl_table, %if.end.if.end7.i_crit_edge ], [ %call2.i, %if.then5.i ], [ %call2.i, %if.end.i.if.end7.i_crit_edge ]
  %10 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fqdir, align 4
  %data.i = getelementptr inbounds %struct.ctl_table, ptr %table.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %data.i, align 4
  %13 = load ptr, ptr %fqdir, align 4
  %low_thresh.i = getelementptr inbounds %struct.fqdir, ptr %13, i32 0, i32 1
  %extra1.i = getelementptr inbounds %struct.ctl_table, ptr %table.0.i, i32 0, i32 7
  %14 = ptrtoint ptr %extra1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %low_thresh.i, ptr %extra1.i, align 4
  %15 = load ptr, ptr %fqdir, align 4
  %low_thresh12.i = getelementptr inbounds %struct.fqdir, ptr %15, i32 0, i32 1
  %data14.i = getelementptr %struct.ctl_table, ptr %table.0.i, i32 1, i32 1
  %16 = ptrtoint ptr %data14.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %low_thresh12.i, ptr %data14.i, align 4
  %17 = load ptr, ptr %fqdir, align 4
  %extra2.i = getelementptr %struct.ctl_table, ptr %table.0.i, i32 1, i32 8
  %18 = ptrtoint ptr %extra2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %extra2.i, align 4
  %19 = load ptr, ptr %fqdir, align 4
  %timeout.i = getelementptr inbounds %struct.fqdir, ptr %19, i32 0, i32 2
  %data20.i = getelementptr %struct.ctl_table, ptr %table.0.i, i32 2, i32 1
  %20 = ptrtoint ptr %data20.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %timeout.i, ptr %data20.i, align 4
  %call21.i = tail call ptr @register_net_sysctl(ptr noundef %net, ptr noundef nonnull @.str.9, ptr noundef nonnull %table.0.i) #13
  %cmp22.i = icmp eq ptr %call21.i, null
  br i1 %cmp22.i, label %err_reg.i, label %lowpan_frags_ns_sysctl_register.exit

err_reg.i:                                        ; preds = %if.end7.i
  br i1 %cmp.i.not.i, label %err_reg.i.if.then7_crit_edge, label %if.then27.i

err_reg.i.if.then7_crit_edge:                     ; preds = %err_reg.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

if.then27.i:                                      ; preds = %err_reg.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %table.0.i) #13
  br label %if.then7

lowpan_frags_ns_sysctl_register.exit:             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %ieee802154_lowpan.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call21.i, ptr %ieee802154_lowpan.i, align 4
  br label %cleanup

if.then7:                                         ; preds = %if.then27.i, %err_reg.i.if.then7_crit_edge, %if.then.i.if.then7_crit_edge
  %22 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fqdir, align 4
  tail call void @fqdir_exit(ptr noundef %23) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %lowpan_frags_ns_sysctl_register.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -12, %if.then7 ], [ 0, %lowpan_frags_ns_sysctl_register.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lowpan_frags_pre_exit_net(ptr nocapture noundef readonly %net) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fqdir = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 37, i32 1
  %0 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fqdir, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %1, align 128
  %dead.i = getelementptr inbounds %struct.fqdir, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %dead.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store volatile i8 1, ptr %dead.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lowpan_frags_exit_net(ptr noundef readonly %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee802154_lowpan.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 37
  %0 = ptrtoint ptr %ieee802154_lowpan.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee802154_lowpan.i, align 4
  %ctl_table_arg.i = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctl_table_arg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_table_arg.i, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %1) #13
  %cmp.i.not.i = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not.i, label %entry.lowpan_frags_ns_sysctl_unregister.exit_crit_edge, label %if.then.i

entry.lowpan_frags_ns_sysctl_unregister.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lowpan_frags_ns_sysctl_unregister.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %3) #13
  br label %lowpan_frags_ns_sysctl_unregister.exit

lowpan_frags_ns_sysctl_unregister.exit:           ; preds = %if.then.i, %entry.lowpan_frags_ns_sysctl_unregister.exit_crit_edge
  %fqdir = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 37, i32 1
  %4 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fqdir, align 4
  tail call void @fqdir_exit(ptr noundef %5) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fqdir_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fqdir_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ieee802154/6lowpan/reassembly.c", i32 298, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @lowpan_frag_rcv._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @lowpan_frag_rcv._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @lowpan_frags, !7, !"lowpan_frags", i1 false, i1 false}
!7 = !{!"../net/ieee802154/6lowpan/reassembly.c", i32 31, i32 26}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ieee802154/6lowpan/reassembly.c", i32 195, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @lowpan_frag_rx_handlers_result._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @lowpan_frag_rx_handlers_result._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/ieee802154/6lowpan/reassembly.c", i32 183, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @lowpan_frag_reasm.descriptor, !14, !"descriptor", i1 false, i1 false}
!18 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @lowpan_frags_cache_name, !20, !"lowpan_frags_cache_name", i1 false, i1 false}
!20 = !{!"../net/ieee802154/6lowpan/reassembly.c", i32 29, i32 19}
!21 = !{ptr @lowpan_rhash_params, !22, !"lowpan_rhash_params", i1 false, i1 false}
!22 = !{!"../net/ieee802154/6lowpan/reassembly.c", i32 507, i32 39}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/ieee802154/6lowpan/reassembly.c", i32 412, i32 7}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/ieee802154/6lowpan/reassembly.c", i32 347, i32 15}
!27 = !{ptr @lowpan_frags_ctl_table, !28, !"lowpan_frags_ctl_table", i1 false, i1 false}
!28 = !{!"../net/ieee802154/6lowpan/reassembly.c", i32 345, i32 25}
!29 = !{ptr @lowpan_frags_secret_interval_unused, !30, !"lowpan_frags_secret_interval_unused", i1 false, i1 false}
!30 = !{!"../net/ieee802154/6lowpan/reassembly.c", i32 344, i32 12}
!31 = !{ptr @lowpan_ctl_header, !32, !"lowpan_ctl_header", i1 false, i1 false}
!32 = !{!"../net/ieee802154/6lowpan/reassembly.c", i32 407, i32 33}
!33 = !{ptr @lowpan_frags_ops, !34, !"lowpan_frags_ops", i1 false, i1 false}
!34 = !{!"../net/ieee802154/6lowpan/reassembly.c", i32 479, i32 33}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/ieee802154/6lowpan/reassembly.c", i32 323, i32 15}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/ieee802154/6lowpan/reassembly.c", i32 329, i32 15}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/ieee802154/6lowpan/reassembly.c", i32 335, i32 15}
!41 = !{ptr @lowpan_frags_ns_ctl_table, !42, !"lowpan_frags_ns_ctl_table", i1 false, i1 false}
!42 = !{!"../net/ieee802154/6lowpan/reassembly.c", i32 321, i32 25}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2148443934}
!54 = !{i64 2148358398, i64 2148358430, i64 2148358459, i64 2148358493, i64 2148358524, i64 2148358547}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i64 2150438722}
!57 = !{i64 2157400191}
!58 = !{i64 2148354403, i64 2148354429, i64 2148354458, i64 2148354492, i64 2148354523, i64 2148354546}
!59 = !{i64 2148174026, i64 2148174031, i64 2148174044, i64 2148174088, i64 2148174122, i64 2148174143}
