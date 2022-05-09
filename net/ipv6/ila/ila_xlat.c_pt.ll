; ModuleID = '/llk/IR_all_yes/net/ipv6/ila/ila_xlat.c_pt.bc'
source_filename = "../net/ipv6/ila/ila_xlat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.nf_hook_ops = type { ptr, ptr, ptr, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ila_xlat_params = type { %struct.ila_params, i32 }
%struct.ila_params = type { %struct.ila_locator, %struct.ila_locator, i32, i8, i8 }
%struct.ila_locator = type { %union.anon.148 }
%union.anon.148 = type { i64 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.149 = type { %struct.rhashtable, ptr, i32, i8 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.anon.8 = type { [16 x i8], %struct.lockdep_map }
%struct.ila_map = type { %struct.ila_xlat_params, %struct.rhash_head, ptr, %struct.callback_head }
%struct.rhash_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.rhashtable_iter = type { ptr, ptr, ptr, %struct.rhashtable_walker, i32, i32, i8 }
%struct.rhashtable_walker = type { %struct.list_head, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.97, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.127, %union.anon.128, [48 x i8], %union.anon.129, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.131, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.127 = type { ptr }
%union.anon.128 = type { i64 }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { i32, ptr }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.133, i32, i32, i32, i16, i16, %union.anon.135, i32, %union.anon.136, %union.anon.137, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.133 = type { i32 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i16 }
%struct.sock_common = type { %union.anon.100, %union.anon.102, %union.anon.103, i16, i8, i8, i32, %union.anon.105, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.108, [0 x i32], %union.anon.109, i16, i16, %union.anon.110, %struct.refcount_struct, [0 x i32], %union.anon.111 }
%union.anon.100 = type { i64 }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%union.anon.105 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { %struct.hlist_node }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i32 }
%struct.ila_dump_iter = type { %struct.rhashtable_iter, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.116 }
%union.anon.116 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.126 = type { ptr }
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
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }

@ila_net_id = external dso_local local_unnamed_addr global i32, align 4
@rht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 1024, i16 8, i16 8, i16 32, i32 1048576, i16 256, i8 1, ptr null, ptr null, ptr @ila_cmpfn }, [36 x i8] zeroinitializer }, align 32
@ila_nf_hook_ops = internal constant { [1 x %struct.nf_hook_ops], [40 x i8] } { [1 x %struct.nf_hook_ops] [%struct.nf_hook_ops { ptr @ila_nf_input, ptr null, ptr null, i8 10, i8 0, i32 0, i32 -1 }], [40 x i8] zeroinitializer }, align 32
@ila_add_mapping.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/ipv6/ila/ila_xlat.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@hashrnd = internal global i32 0, section ".data..read_mostly", align 4
@__ila_hash_secret_init.___done = internal global i8 0, section ".data.once", align 1
@__ila_hash_secret_init.___once_key = internal global { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, align 4
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rhashtable_replace_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rhashtable_replace_fast.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_replace_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ila_del_mapping.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ila_del_mapping.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@ila_nl_family = external dso_local global %struct.genl_family, align 4
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@alloc_ila_locks.key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ilan->xlat.locks\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [11 x i8] c"rht_params\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 85, i32 39 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"ila_nf_hook_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 195, i32 33 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 255, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 594, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 45, i32 7 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 695, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 991, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 723, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [27 x i8] c"../net/ipv6/ila/ila_xlat.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 30, i32 9 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @rht_params, ptr @ila_nf_hook_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.9, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @alloc_ila_locks.key, ptr @.str.19], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ila_nf_hook_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ila_locks.key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ila_xlat_nl_cmd_add_mapping(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i1.i = alloca i64, align 8
  %tmp.i.i = alloca i64, align 8
  %p = alloca %struct.ila_xlat_params, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %p) #10
  %2 = call ptr @memset(ptr %p, i32 0, i32 32)
  %attrs.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %3 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attrs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %4, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #10
  %7 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %tmp.i.i, align 8, !annotation !78
  %call.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i.i, ptr noundef nonnull %6, i32 noundef 8) #10
  %8 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tmp.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #10
  %10 = ptrtoint ptr %p to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %p, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %11 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attrs.i, align 4
  %arrayidx4.i = getelementptr ptr, ptr %12, i32 3
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %14, null
  br i1 %tobool5.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then6.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i1.i) #10
  %15 = ptrtoint ptr %tmp.i1.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %tmp.i1.i, align 8, !annotation !78
  %call.i2.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i1.i, ptr noundef nonnull %14, i32 noundef 8) #10
  %16 = ptrtoint ptr %tmp.i1.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tmp.i1.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i1.i) #10
  %locator_match.i = getelementptr inbounds %struct.ila_params, ptr %p, i32 0, i32 1
  %18 = ptrtoint ptr %locator_match.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %locator_match.i, align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i, %if.end.i.if.end11.i_crit_edge
  %19 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %attrs.i, align 4
  %arrayidx13.i = getelementptr ptr, ptr %20, i32 7
  %21 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx13.i, align 4
  %tobool14.not.i = icmp eq ptr %22, null
  br i1 %tobool14.not.i, label %if.end11.i.if.end22.i_crit_edge, label %if.then15.i

if.end11.i.if.end22.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr.i.i.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then15.i, %if.end11.i.if.end22.i_crit_edge
  %.sink.i = phi i8 [ %24, %if.then15.i ], [ 2, %if.end11.i.if.end22.i_crit_edge ]
  %25 = getelementptr inbounds %struct.ila_params, ptr %p, i32 0, i32 3
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink.i, ptr %25, align 4
  %arrayidx24.i = getelementptr ptr, ptr %20, i32 8
  %27 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx24.i, align 4
  %tobool25.not.i = icmp eq ptr %28, null
  br i1 %tobool25.not.i, label %if.end22.i.if.end34.i_crit_edge, label %if.then26.i

if.end22.i.if.end34.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i3.i = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i3.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr.i.i3.i, align 1
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then26.i, %if.end22.i.if.end34.i_crit_edge
  %.sink5.i = phi i8 [ %30, %if.then26.i ], [ 32, %if.end22.i.if.end34.i_crit_edge ]
  %31 = getelementptr inbounds %struct.ila_params, ptr %p, i32 0, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink5.i, ptr %31, align 1
  %arrayidx36.i = getelementptr ptr, ptr %20, i32 4
  %33 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx36.i, align 4
  %tobool37.not.i = icmp eq ptr %34, null
  br i1 %tobool37.not.i, label %if.end34.i.parse_nl_config.exit_crit_edge, label %if.then38.i

if.end34.i.parse_nl_config.exit_crit_edge:        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %parse_nl_config.exit

if.then38.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i4.i = getelementptr i8, ptr %34, i32 4
  %35 = ptrtoint ptr %add.ptr.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i4.i, align 4
  %ifindex.i = getelementptr inbounds %struct.ila_xlat_params, ptr %p, i32 0, i32 1
  %37 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ifindex.i, align 8
  br label %parse_nl_config.exit

parse_nl_config.exit:                             ; preds = %if.then38.i, %if.end34.i.parse_nl_config.exit_crit_edge
  %call2 = call fastcc i32 @ila_add_mapping(ptr noundef %1, ptr noundef nonnull %p)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p) #10
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ila_add_mapping(ptr noundef %net, ptr noundef %xp) unnamed_addr #0 align 64 {
entry:
  %___flags.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ila_net_id to i32))
  %0 = load i32, ptr @ila_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %locator_match = getelementptr inbounds %struct.ila_params, ptr %xp, i32 0, i32 1
  %1 = ptrtoint ptr %locator_match to i32
  call void @__asan_load8_noabort(i32 %1)
  %.unpack = load i64, ptr %locator_match, align 8
  %locks.i = getelementptr inbounds %struct.anon.149, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %locks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %locks.i, align 4
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @__ila_hash_secret_init.___once_key, ptr blockaddress(@ila_add_mapping, %if.then.i.i.i)) #10
          to label %ila_get_lock.exit [label %if.then.i.i.i], !srcloc !79

if.then.i.i.i:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags.i.i.i) #10
  %4 = ptrtoint ptr %___flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %___flags.i.i.i, align 4, !annotation !78
  %call3.i.i.i = call zeroext i1 @__do_once_start(ptr noundef nonnull @__ila_hash_secret_init.___done, ptr noundef nonnull %___flags.i.i.i) #10
  br i1 %call3.i.i.i, label %if.then12.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !80

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then12.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @get_random_bytes(ptr noundef nonnull @hashrnd, i32 noundef 4) #10
  call void @__do_once_done(ptr noundef nonnull @__ila_hash_secret_init.___done, ptr noundef nonnull @__ila_hash_secret_init.___once_key, ptr noundef nonnull %___flags.i.i.i, ptr noundef null) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then12.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags.i.i.i) #10
  br label %ila_get_lock.exit

ila_get_lock.exit:                                ; preds = %if.end.i.i.i, %entry
  %loc.sroa.2.0.extract.trunc.i.i = trunc i64 %.unpack to i32
  %loc.sroa.0.0.extract.shift.i.i = lshr i64 %.unpack, 32
  %loc.sroa.0.0.extract.trunc.i.i = trunc i64 %loc.sroa.0.0.extract.shift.i.i to i32
  %5 = load i32, ptr @hashrnd, align 4
  %add1.i.i.i = add i32 %5, -559038729
  %add.i.i.i.i = add i32 %add1.i.i.i, %loc.sroa.0.0.extract.trunc.i.i
  %add1.i.i.i.i = add i32 %add1.i.i.i, %loc.sroa.2.0.extract.trunc.i.i
  %xor.i.i.i.i = xor i32 %add1.i.i.i.i, %add1.i.i.i
  %or.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i, i32 %add1.i.i.i.i, i32 14) #10
  %sub.i.i.i.i = sub i32 %xor.i.i.i.i, %or.i.i.i.i.i
  %xor3.i.i.i.i = xor i32 %sub.i.i.i.i, %add.i.i.i.i
  %or.i1.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i, i32 %sub.i.i.i.i, i32 11) #10
  %sub5.i.i.i.i = sub i32 %xor3.i.i.i.i, %or.i1.i.i.i.i
  %xor6.i.i.i.i = xor i32 %sub5.i.i.i.i, %add1.i.i.i.i
  %or.i2.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i, i32 %sub5.i.i.i.i, i32 25) #10
  %sub8.i.i.i.i = sub i32 %xor6.i.i.i.i, %or.i2.i.i.i.i
  %xor9.i.i.i.i = xor i32 %sub8.i.i.i.i, %sub.i.i.i.i
  %or.i3.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i, i32 %sub8.i.i.i.i, i32 16) #10
  %sub11.i.i.i.i = sub i32 %xor9.i.i.i.i, %or.i3.i.i.i.i
  %xor12.i.i.i.i = xor i32 %sub11.i.i.i.i, %sub5.i.i.i.i
  %or.i4.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i, i32 %sub11.i.i.i.i, i32 4) #10
  %sub14.i.i.i.i = sub i32 %xor12.i.i.i.i, %or.i4.i.i.i.i
  %xor15.i.i.i.i = xor i32 %sub14.i.i.i.i, %sub8.i.i.i.i
  %or.i5.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i, i32 %sub14.i.i.i.i, i32 14) #10
  %sub17.i.i.i.i = sub i32 %xor15.i.i.i.i, %or.i5.i.i.i.i
  %xor18.i.i.i.i = xor i32 %sub17.i.i.i.i, %sub11.i.i.i.i
  %or.i6.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i, i32 %sub17.i.i.i.i, i32 24) #10
  %sub20.i.i.i.i = sub i32 %xor18.i.i.i.i, %or.i6.i.i.i.i
  %locks_mask.i = getelementptr inbounds %struct.anon.149, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %locks_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %locks_mask.i, align 4
  %and.i = and i32 %sub20.i.i.i.i, %7
  %arrayidx.i = getelementptr %struct.spinlock, ptr %3, i32 %and.i
  %hooks_registered = getelementptr inbounds %struct.anon.149, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %hooks_registered to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hooks_registered, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then, label %ila_get_lock.exit.if.end8_crit_edge

ila_get_lock.exit.if.end8_crit_edge:              ; preds = %ila_get_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %ila_get_lock.exit
  %call3 = call i32 @nf_register_net_hooks(ptr noundef %net, ptr noundef nonnull @ila_nf_hook_ops, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup127_crit_edge

if.then.cleanup127_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup127

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %hooks_registered to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %hooks_registered, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %ila_get_lock.exit.if.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 48) #13
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.cleanup127_crit_edge, label %if.end12

if.end8.cleanup127_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup127

if.end12:                                         ; preds = %if.end8
  call void @ila_init_saved_csum(ptr noundef %xp) #10
  %12 = call ptr @memcpy(ptr %call7.i.i, ptr %xp, i32 32)
  %ifindex.i = getelementptr inbounds %struct.ila_xlat_params, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %arrayidx.i) #10
  %call19 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %call, ptr noundef %locator_match, [7 x i32] [i32 67108872, i32 524320, i32 1048576, i32 16777472, i32 0, i32 0, i32 ptrtoint (ptr @ila_cmpfn to i32)])
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then21, label %do.body.preheader

do.body.preheader:                                ; preds = %if.end12
  %ifindex2.i = getelementptr inbounds %struct.ila_xlat_params, ptr %xp, i32 0, i32 1
  %dep_map = getelementptr inbounds %struct.anon.8, ptr %arrayidx.i, i32 0, i32 1
  br label %do.body

if.then21:                                        ; preds = %if.end12
  %node = getelementptr inbounds %struct.ila_map, ptr %call7.i.i, i32 0, i32 1
  %head_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %call, i32 0, i32 3, i32 3
  %obj_hashfn.i = getelementptr inbounds %struct.rhashtable, ptr %call, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %obj_hashfn.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %obj_hashfn.i, align 4
  %tobool.not.i188 = icmp eq ptr %16, null
  br i1 %tobool.not.i188, label %do.end8.i, label %do.body3.i, !prof !82

do.body3.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 903, 0\0A.popsection", ""() #10, !srcloc !83
  unreachable

do.end8.i:                                        ; preds = %if.then21
  %17 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %head_offset.i.i, align 2
  %conv.i.i = zext i16 %18 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %node, i32 %idx.neg.i.i
  %key_offset.i = getelementptr inbounds %struct.rhashtable, ptr %call, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %key_offset.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %key_offset.i, align 4
  %conv.i = zext i16 %20 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv.i
  %21 = call i32 @llvm.read_register.i32(metadata !68) #10
  %and.i.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i, label %do.end8.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

do.end8.i.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.end8.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i189

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i189:                                 ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i189, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %do.end8.i.rcu_read_lock.exit.i.i_crit_edge
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %call, align 4
  %call.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call5.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i190 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i190)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i190, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 715, ptr noundef nonnull @.str.3) #10
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge
  %27 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %head_offset.i.i, align 2
  %conv.i.i.i.i = zext i16 %28 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %node, i32 %idx.neg.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 8
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %26, i32 0, i32 2
  %29 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add1.i.i.i.i.i.i = add i32 %30, -559038729
  %arrayidx32.i.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i, i32 1
  %31 = ptrtoint ptr %arrayidx32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx32.i.i.i.i.i.i, align 4
  %add33.i.i.i.i.i.i = add i32 %32, %add1.i.i.i.i.i.i
  %33 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i.i, align 4
  %add36.i.i.i.i.i.i = add i32 %34, %add1.i.i.i.i.i.i
  %xor37.i.i.i.i.i.i = xor i32 %add33.i.i.i.i.i.i, %add1.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i, i32 %add33.i.i.i.i.i.i, i32 14) #10
  %sub39.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i = xor i32 %sub39.i.i.i.i.i.i, %add36.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i, i32 11) #10
  %sub42.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i, %add33.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i, i32 25) #10
  %sub45.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i, i32 16) #10
  %sub48.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i, %sub42.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i, i32 4) #10
  %sub51.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i, %sub45.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i, i32 14) #10
  %sub54.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i, %sub48.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i, i32 24) #10
  %sub57.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i
  %35 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %26, align 128
  %sub.i.i.i.i.i = add i32 %36, -1
  %and.i3.i.i.i.i = and i32 %sub57.i.i.i.i.i.i, %sub.i.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %26, i32 0, i32 1
  %37 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i5.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i5.i.i, label %cond.false.i8.i.i, label %cond.true.i7.i.i, !prof !82

cond.true.i7.i.i:                                 ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i6.i.i = call ptr @rht_bucket_nested_insert(ptr noundef %call, ptr noundef %26, i32 noundef %and.i3.i.i.i.i) #10
  br label %rht_bucket_insert.exit.i.i

cond.false.i8.i.i:                                ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %26, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_insert.exit.i.i

rht_bucket_insert.exit.i.i:                       ; preds = %cond.false.i8.i.i, %cond.true.i7.i.i
  %cond.i9.i.i = phi ptr [ %call.i6.i.i, %cond.true.i7.i.i ], [ %arrayidx.i.i.i, %cond.false.i8.i.i ]
  %tobool17.not.i.i = icmp eq ptr %cond.i9.i.i, null
  br i1 %tobool17.not.i.i, label %rht_bucket_insert.exit.i.i.out.i.i_crit_edge, label %if.end19.i.i

rht_bucket_insert.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_bucket_insert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.end19.i.i:                                     ; preds = %rht_bucket_insert.exit.i.i
  call fastcc void @rht_lock(ptr noundef %26, ptr noundef nonnull %cond.i9.i.i) #10
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %26, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %40, null
  br i1 %tobool25.not.i.i, label %if.end30.i.i, label %if.end19.i.i.slow_path.i.i_crit_edge, !prof !82

if.end19.i.i.slow_path.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %slow_path.i.i

slow_path.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, %for.end.i.i.slow_path.i.i_crit_edge, %if.end19.i.i.slow_path.i.i_crit_edge
  call fastcc void @rht_unlock(ptr noundef %26, ptr noundef nonnull %cond.i9.i.i) #10
  %call.i11.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i11.i.i, label %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i14.i.i

slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %slow_path.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i14.i.i:                            ; preds = %slow_path.i.i
  %call1.i12.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i.i)
  %tobool.not.i13.i.i = icmp eq i32 %call1.i12.i.i, 0
  br i1 %tobool.not.i13.i.i, label %land.lhs.true.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i16.i.i

land.lhs.true.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i16.i.i:                           ; preds = %land.lhs.true.i14.i.i
  %.b4.i15.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i.i, label %land.lhs.true2.i16.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i17.i.i

land.lhs.true2.i16.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i

if.then.i17.i.i:                                  ; preds = %land.lhs.true2.i16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.18) #10
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i17.i.i, %land.lhs.true2.i16.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge, %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  %41 = call i32 @llvm.read_register.i32(metadata !68) #10
  %and.i.i.i.i.i18.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i18.i.i to ptr
  %preempt_count.i.i.i.i19.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i19.i.i, align 4
  %sub.i.i.i20.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i20.i.i, ptr %preempt_count.i.i.i.i19.i.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %call29.i.i = call ptr @rhashtable_insert_slow(ptr noundef %call, ptr noundef %add.ptr.i, ptr noundef %node) #10
  br label %out

if.end30.i.i:                                     ; preds = %if.end19.i.i
  %call.i21.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %26, i32 noundef %and.i3.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i.i)
  %tobool.not.i22.i.i = icmp eq i32 %call.i21.i.i, 0
  br i1 %tobool.not.i22.i.i, label %land.lhs.true.i24.i.i, label %if.end30.i.i.rht_ptr.exit.i.i_crit_edge

if.end30.i.i.rht_ptr.exit.i.i_crit_edge:          ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i

land.lhs.true.i24.i.i:                            ; preds = %if.end30.i.i
  %call1.i23.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i23.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i24.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i24.i.i.rht_ptr.exit.i.i_crit_edge: ; preds = %land.lhs.true.i24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i24.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i25.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i

if.then.i25.i.i:                                  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 377, ptr noundef nonnull @.str.1) #10
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i25.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i24.i.i.rht_ptr.exit.i.i_crit_edge, %if.end30.i.i.rht_ptr.exit.i.i_crit_edge
  %45 = ptrtoint ptr %cond.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cond.i9.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  %and.i.i.i.i = and i32 %47, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %48 = ptrtoint ptr %cond.i9.i.i to i32
  %or.i.i.i.i = or i32 %48, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i84.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84.i.i)
  %tobool.i.not85.i.i = icmp eq i32 %and.i84.i.i, 0
  br i1 %tobool.i.not85.i.i, label %for.body.lr.ph.i.i, label %rht_ptr.exit.i.i.if.end152.i.i_crit_edge

rht_ptr.exit.i.i.if.end152.i.i_crit_edge:         ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i.i

for.body.lr.ph.i.i:                               ; preds = %rht_ptr.exit.i.i
  %49 = inttoptr i32 %cond.i.i.i.i to ptr
  %tobool35.not.i.i = icmp eq ptr %add.ptr.i, null
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.end147.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %head.087.i.i = phi ptr [ %49, %for.body.lr.ph.i.i ], [ %57, %do.end147.i.i.for.body.i.i_crit_edge ]
  %elasticity.086.i.i = phi i32 [ 16, %for.body.lr.ph.i.i ], [ %dec.i.i, %do.end147.i.i.for.body.i.i_crit_edge ]
  %dec.i.i = add i32 %elasticity.086.i.i, -1
  br i1 %tobool35.not.i.i, label %for.body.i.i.do.body136.i.i_crit_edge, label %lor.lhs.false36.i.i

for.body.i.i.do.body136.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body136.i.i

lor.lhs.false36.i.i:                              ; preds = %for.body.i.i
  %50 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %head_offset.i.i, align 2
  %conv.i29.i.i = zext i16 %51 to i32
  %idx.neg.i30.i.i = sub nsw i32 0, %conv.i29.i.i
  %add.ptr.i31.i.i = getelementptr i8, ptr %head.087.i.i, i32 %idx.neg.i30.i.i
  %locator_match.i = getelementptr inbounds %struct.ila_params, ptr %add.ptr.i31.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %locator_match.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %locator_match.i, align 8
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %53, i64 %55)
  %cmp.i197.not = icmp eq i64 %53, %55
  br i1 %cmp.i197.not, label %lor.lhs.false36.i.i.out_unlock.i.i_crit_edge, label %lor.lhs.false36.i.i.do.body136.i.i_crit_edge

lor.lhs.false36.i.i.do.body136.i.i_crit_edge:     ; preds = %lor.lhs.false36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body136.i.i

lor.lhs.false36.i.i.out_unlock.i.i_crit_edge:     ; preds = %lor.lhs.false36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.i.i

do.body136.i.i:                                   ; preds = %lor.lhs.false36.i.i.do.body136.i.i_crit_edge, %for.body.i.i.do.body136.i.i_crit_edge
  %call137.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %26, i32 noundef %and.i3.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i)
  %tobool138.not.i.i = icmp eq i32 %call137.i.i, 0
  br i1 %tobool138.not.i.i, label %land.lhs.true139.i.i, label %do.body136.i.i.do.end147.i.i_crit_edge

do.body136.i.i.do.end147.i.i_crit_edge:           ; preds = %do.body136.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end147.i.i

land.lhs.true139.i.i:                             ; preds = %do.body136.i.i
  %call140.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i)
  %tobool141.not.i.i = icmp eq i32 %call140.i.i, 0
  br i1 %tobool141.not.i.i, label %land.lhs.true139.i.i.do.end147.i.i_crit_edge, label %land.lhs.true142.i.i

land.lhs.true139.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true139.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end147.i.i

land.lhs.true142.i.i:                             ; preds = %land.lhs.true139.i.i
  %.b2811.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.6, align 1
  br i1 %.b2811.i.i, label %land.lhs.true142.i.i.do.end147.i.i_crit_edge, label %if.then144.i.i

land.lhs.true142.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end147.i.i

if.then144.i.i:                                   ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_insert_fast.__warned.6, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 732, ptr noundef nonnull @.str.1) #10
  br label %do.end147.i.i

do.end147.i.i:                                    ; preds = %if.then144.i.i, %land.lhs.true142.i.i.do.end147.i.i_crit_edge, %land.lhs.true139.i.i.do.end147.i.i_crit_edge, %do.body136.i.i.do.end147.i.i_crit_edge
  %56 = ptrtoint ptr %head.087.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.087.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  %and.i.i.i = and i32 %58, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.end147.i.i.for.body.i.i_crit_edge, label %for.end.i.i

do.end147.i.i.for.body.i.i_crit_edge:             ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %phi.cmp.i.i = icmp slt i32 %dec.i.i, 1
  br i1 %phi.cmp.i.i, label %for.end.i.i.slow_path.i.i_crit_edge, label %for.end.i.i.if.end152.i.i_crit_edge

for.end.i.i.if.end152.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i.i

for.end.i.i.slow_path.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %slow_path.i.i

if.end152.i.i:                                    ; preds = %for.end.i.i.if.end152.i.i_crit_edge, %rht_ptr.exit.i.i.if.end152.i.i_crit_edge
  %nelems.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %call, i32 0, i32 8
  %call.i.i.i39.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #10
  %59 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %nelems.i.i.i, align 4
  %max_elems.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %call, i32 0, i32 2
  %61 = ptrtoint ptr %max_elems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_elems.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp.i.not.i.i = icmp ult i32 %60, %62
  br i1 %cmp.i.not.i.i, label %if.end162.i.i, label %if.end152.i.i.out_unlock.i.i_crit_edge, !prof !82

if.end152.i.i.out_unlock.i.i_crit_edge:           ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.i.i

if.end162.i.i:                                    ; preds = %if.end152.i.i
  %call.i.i.i41.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #10
  %63 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %nelems.i.i.i, align 4
  %65 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %26, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp.i42.i.i = icmp ugt i32 %64, %66
  br i1 %cmp.i42.i.i, label %rht_grow_above_100.exit.i.i, label %if.end162.i.i.if.end171.i.i_crit_edge

if.end162.i.i.if.end171.i.i_crit_edge:            ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i:                      ; preds = %if.end162.i.i
  %max_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %call, i32 0, i32 3, i32 4
  %67 = ptrtoint ptr %max_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %max_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i43.i.i = icmp eq i32 %68, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp4.i.i.i = icmp ult i32 %66, %68
  %spec.select.i.i.i = select i1 %tobool.not.i43.i.i, i1 true, i1 %cmp4.i.i.i
  br i1 %spec.select.i.i.i, label %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, !prof !80

rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %slow_path.i.i

if.end171.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, %if.end162.i.i.if.end171.i.i_crit_edge
  %call.i44.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %26, i32 noundef %and.i3.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i.i)
  %tobool.not.i45.i.i = icmp eq i32 %call.i44.i.i, 0
  br i1 %tobool.not.i45.i.i, label %land.lhs.true.i48.i.i, label %if.end171.i.i.rht_ptr.exit56.i.i_crit_edge

if.end171.i.i.rht_ptr.exit56.i.i_crit_edge:       ; preds = %if.end171.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit56.i.i

land.lhs.true.i48.i.i:                            ; preds = %if.end171.i.i
  %call1.i46.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46.i.i)
  %tobool2.not.i47.i.i = icmp eq i32 %call1.i46.i.i, 0
  br i1 %tobool2.not.i47.i.i, label %land.lhs.true.i48.i.i.rht_ptr.exit56.i.i_crit_edge, label %land.lhs.true3.i50.i.i

land.lhs.true.i48.i.i.rht_ptr.exit56.i.i_crit_edge: ; preds = %land.lhs.true.i48.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit56.i.i

land.lhs.true3.i50.i.i:                           ; preds = %land.lhs.true.i48.i.i
  %.b7.i49.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i49.i.i, label %land.lhs.true3.i50.i.i.rht_ptr.exit56.i.i_crit_edge, label %if.then.i51.i.i

land.lhs.true3.i50.i.i.rht_ptr.exit56.i.i_crit_edge: ; preds = %land.lhs.true3.i50.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit56.i.i

if.then.i51.i.i:                                  ; preds = %land.lhs.true3.i50.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 377, ptr noundef nonnull @.str.1) #10
  br label %rht_ptr.exit56.i.i

rht_ptr.exit56.i.i:                               ; preds = %if.then.i51.i.i, %land.lhs.true3.i50.i.i.rht_ptr.exit56.i.i_crit_edge, %land.lhs.true.i48.i.i.rht_ptr.exit56.i.i_crit_edge, %if.end171.i.i.rht_ptr.exit56.i.i_crit_edge
  %69 = ptrtoint ptr %cond.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cond.i9.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  %and.i.i52.i.i = and i32 %71, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52.i.i)
  %tobool.not.i.i53.i.i = icmp eq i32 %and.i.i52.i.i, 0
  %cond.i.i55.i.i = select i1 %tobool.not.i.i53.i.i, i32 %or.i.i.i.i, i32 %and.i.i52.i.i
  %72 = inttoptr i32 %cond.i.i55.i.i to ptr
  %73 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %72, ptr %node, align 8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #10
  %74 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #10, !srcloc !86
  call fastcc void @rht_assign_unlock(ptr noundef %26, ptr noundef nonnull %cond.i9.i.i, ptr noundef %node) #10
  %call.i.i.i58.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #10
  %75 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %nelems.i.i.i, align 4
  %77 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %26, align 128
  %div8.i.i.i = lshr i32 %78, 2
  %mul.i.i.i = mul nuw i32 %div8.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %mul.i.i.i)
  %cmp.i59.i.i = icmp ugt i32 %76, %mul.i.i.i
  br i1 %cmp.i59.i.i, label %rht_grow_above_75.exit.i.i, label %rht_ptr.exit56.i.i.out.i.i_crit_edge

rht_ptr.exit56.i.i.out.i.i_crit_edge:             ; preds = %rht_ptr.exit56.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

rht_grow_above_75.exit.i.i:                       ; preds = %rht_ptr.exit56.i.i
  %max_size.i60.i.i = getelementptr inbounds %struct.rhashtable, ptr %call, i32 0, i32 3, i32 4
  %79 = ptrtoint ptr %max_size.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_size.i60.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i61.i.i = icmp eq i32 %80, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp4.i62.i.i = icmp ult i32 %78, %80
  %spec.select.i63.i.i = select i1 %tobool.not.i61.i.i, i1 true, i1 %cmp4.i62.i.i
  br i1 %spec.select.i63.i.i, label %if.then207.i.i, label %rht_grow_above_75.exit.i.i.out.i.i_crit_edge

rht_grow_above_75.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.then207.i.i:                                   ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %call, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %81 = load ptr, ptr @system_wq, align 4
  %call.i.i65.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %81, ptr noundef %run_work.i.i) #10
  br label %out.i.i

out.i.i:                                          ; preds = %out_unlock.i.i, %if.then207.i.i, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge, %rht_ptr.exit56.i.i.out.i.i_crit_edge, %rht_bucket_insert.exit.i.i.out.i.i_crit_edge
  %data.2.i.i = phi ptr [ %data.3.i.i, %out_unlock.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.out.i.i_crit_edge ], [ null, %if.then207.i.i ], [ null, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge ], [ null, %rht_ptr.exit56.i.i.out.i.i_crit_edge ]
  %call.i66.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i66.i.i, label %out.i.i.rcu_read_unlock.exit76.i.i_crit_edge, label %land.lhs.true.i69.i.i

out.i.i.rcu_read_unlock.exit76.i.i_crit_edge:     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit76.i.i

land.lhs.true.i69.i.i:                            ; preds = %out.i.i
  %call1.i67.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67.i.i)
  %tobool.not.i68.i.i = icmp eq i32 %call1.i67.i.i, 0
  br i1 %tobool.not.i68.i.i, label %land.lhs.true.i69.i.i.rcu_read_unlock.exit76.i.i_crit_edge, label %land.lhs.true2.i71.i.i

land.lhs.true.i69.i.i.rcu_read_unlock.exit76.i.i_crit_edge: ; preds = %land.lhs.true.i69.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit76.i.i

land.lhs.true2.i71.i.i:                           ; preds = %land.lhs.true.i69.i.i
  %.b4.i70.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70.i.i, label %land.lhs.true2.i71.i.i.rcu_read_unlock.exit76.i.i_crit_edge, label %if.then.i72.i.i

land.lhs.true2.i71.i.i.rcu_read_unlock.exit76.i.i_crit_edge: ; preds = %land.lhs.true2.i71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit76.i.i

if.then.i72.i.i:                                  ; preds = %land.lhs.true2.i71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.18) #10
  br label %rcu_read_unlock.exit76.i.i

rcu_read_unlock.exit76.i.i:                       ; preds = %if.then.i72.i.i, %land.lhs.true2.i71.i.i.rcu_read_unlock.exit76.i.i_crit_edge, %land.lhs.true.i69.i.i.rcu_read_unlock.exit76.i.i_crit_edge, %out.i.i.rcu_read_unlock.exit76.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  %82 = call i32 @llvm.read_register.i32(metadata !68) #10
  %and.i.i.i.i.i73.i.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i73.i.i to ptr
  %preempt_count.i.i.i.i74.i.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i74.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i74.i.i, align 4
  %sub.i.i.i75.i.i = add i32 %85, -1
  store volatile i32 %sub.i.i.i75.i.i, ptr %preempt_count.i.i.i.i74.i.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %out

out_unlock.i.i:                                   ; preds = %if.end152.i.i.out_unlock.i.i_crit_edge, %lor.lhs.false36.i.i.out_unlock.i.i_crit_edge
  %data.3.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %if.end152.i.i.out_unlock.i.i_crit_edge ], [ %add.ptr.i31.i.i, %lor.lhs.false36.i.i.out_unlock.i.i_crit_edge ]
  call fastcc void @rht_unlock(ptr noundef %26, ptr noundef nonnull %cond.i9.i.i) #10
  br label %out.i.i

do.body:                                          ; preds = %do.end.do.body_crit_edge, %do.body.preheader
  %tila.0 = phi ptr [ %91, %do.end.do.body_crit_edge ], [ %call19, %do.body.preheader ]
  %prev.0 = phi ptr [ %tila.0, %do.end.do.body_crit_edge ], [ null, %do.body.preheader ]
  %ifindex.i191 = getelementptr inbounds %struct.ila_xlat_params, ptr %tila.0, i32 0, i32 1
  %86 = ptrtoint ptr %ifindex.i191 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ifindex.i191, align 8
  %88 = ptrtoint ptr %ifindex2.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ifindex2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp.i192.not = icmp eq i32 %87, %89
  br i1 %cmp.i192.not, label %do.body.out.thread_crit_edge, label %if.end28

do.body.out.thread_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end28:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i195 = icmp eq i32 %87, 0
  %spec.select.i196 = select i1 %tobool.not.i195, i32 0, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %spec.select.i196)
  %cmp = icmp ugt i32 %spec.select.i, %spec.select.i196
  br i1 %cmp, label %do.end43, label %if.end31

if.end31:                                         ; preds = %if.end28
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool34.not = icmp eq i32 %call.i, 0
  br i1 %tobool34.not, label %land.lhs.true, label %if.end31.do.end_crit_edge

if.end31.do.end_crit_edge:                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %if.end31
  %call35 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true37

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true37:                                  ; preds = %land.lhs.true
  %.b187 = load i1, ptr @ila_add_mapping.__warned, align 1
  br i1 %.b187, label %land.lhs.true37.do.end_crit_edge, label %if.then39

land.lhs.true37.do.end_crit_edge:                 ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then39:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ila_add_mapping.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 256, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then39, %land.lhs.true37.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end31.do.end_crit_edge
  %next = getelementptr inbounds %struct.ila_map, ptr %tila.0, i32 0, i32 2
  %90 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %next, align 4
  %tobool42.not = icmp eq ptr %91, null
  br i1 %tobool42.not, label %do.end.do.body51_crit_edge, label %do.end.do.body_crit_edge

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end.do.body51_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body51

do.end43:                                         ; preds = %if.end28
  %tobool44.not = icmp eq ptr %prev.0, null
  br i1 %tobool44.not, label %do.body105, label %do.end43.do.body51_crit_edge

do.end43.do.body51_crit_edge:                     ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body51

do.body51:                                        ; preds = %do.end43.do.body51_crit_edge, %do.end.do.body51_crit_edge
  %prev.1203 = phi ptr [ %prev.0, %do.end43.do.body51_crit_edge ], [ %tila.0, %do.end.do.body51_crit_edge ]
  %tila.1202 = phi ptr [ %tila.0, %do.end43.do.body51_crit_edge ], [ null, %do.end.do.body51_crit_edge ]
  %next52 = getelementptr inbounds %struct.ila_map, ptr %call7.i.i, i32 0, i32 2
  %92 = ptrtoint ptr %next52 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %tila.1202, ptr %next52, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  %next87 = getelementptr inbounds %struct.ila_map, ptr %prev.1203, i32 0, i32 2
  %93 = ptrtoint ptr %next87 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %call7.i.i, ptr %next87, align 4
  br label %out.thread207

do.body105:                                       ; preds = %do.end43
  %next106 = getelementptr inbounds %struct.ila_map, ptr %call7.i.i, i32 0, i32 2
  %94 = ptrtoint ptr %next106 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %call19, ptr %next106, align 4
  %node115 = getelementptr inbounds %struct.ila_map, ptr %call19, i32 0, i32 1
  %node116 = getelementptr inbounds %struct.ila_map, ptr %call7.i.i, i32 0, i32 1
  %call117 = call fastcc i32 @rhashtable_replace_fast(ptr noundef %call, ptr noundef %node115, ptr noundef %node116, [7 x i32] [i32 67108872, i32 524320, i32 1048576, i32 16777472, i32 0, i32 0, i32 ptrtoint (ptr @ila_cmpfn to i32)])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %do.body105.out.thread207_crit_edge, label %do.body105.out.thread_crit_edge

do.body105.out.thread_crit_edge:                  ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

do.body105.out.thread207_crit_edge:               ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread207

out.thread207:                                    ; preds = %do.body105.out.thread207_crit_edge, %do.body51
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #10
  br label %cleanup127

out.thread:                                       ; preds = %do.body105.out.thread_crit_edge, %do.body.out.thread_crit_edge
  %err.3.ph = phi i32 [ %call117, %do.body105.out.thread_crit_edge ], [ -17, %do.body.out.thread_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #10
  br label %if.then125

out:                                              ; preds = %rcu_read_unlock.exit76.i.i, %rcu_read_unlock.exit.i.i
  %retval.0.i.i = phi ptr [ %call29.i.i, %rcu_read_unlock.exit.i.i ], [ %data.2.i.i, %rcu_read_unlock.exit76.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  %95 = ptrtoint ptr %retval.0.i.i to i32
  %cmp.i = icmp eq ptr %retval.0.i.i, null
  %cond.i = select i1 %cmp.i, i32 0, i32 -17
  %retval.0.i = select i1 %cmp.i.i, i32 %95, i32 %cond.i
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool124.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool124.not, label %out.cleanup127_crit_edge, label %out.if.then125_crit_edge

out.if.then125_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then125

out.cleanup127_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup127

if.then125:                                       ; preds = %out.if.then125_crit_edge, %out.thread
  %err.3206 = phi i32 [ %err.3.ph, %out.thread ], [ %retval.0.i, %out.if.then125_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup127

cleanup127:                                       ; preds = %if.then125, %out.cleanup127_crit_edge, %out.thread207, %if.end8.cleanup127_crit_edge, %if.then.cleanup127_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then.cleanup127_crit_edge ], [ -12, %if.end8.cleanup127_crit_edge ], [ %err.3206, %if.then125 ], [ 0, %out.cleanup127_crit_edge ], [ 0, %out.thread207 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ila_xlat_nl_cmd_del_mapping(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i1.i = alloca i64, align 8
  %tmp.i.i = alloca i64, align 8
  %xp = alloca %struct.ila_xlat_params, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %xp) #10
  %2 = call ptr @memset(ptr %xp, i32 0, i32 32)
  %attrs.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %3 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attrs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %4, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #10
  %7 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %tmp.i.i, align 8, !annotation !78
  %call.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i.i, ptr noundef nonnull %6, i32 noundef 8) #10
  %8 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tmp.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #10
  %10 = ptrtoint ptr %xp to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %xp, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %11 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attrs.i, align 4
  %arrayidx4.i = getelementptr ptr, ptr %12, i32 3
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %14, null
  br i1 %tobool5.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then6.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i1.i) #10
  %15 = ptrtoint ptr %tmp.i1.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %tmp.i1.i, align 8, !annotation !78
  %call.i2.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i1.i, ptr noundef nonnull %14, i32 noundef 8) #10
  %16 = ptrtoint ptr %tmp.i1.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tmp.i1.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i1.i) #10
  %locator_match.i = getelementptr inbounds %struct.ila_params, ptr %xp, i32 0, i32 1
  %18 = ptrtoint ptr %locator_match.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %locator_match.i, align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i, %if.end.i.if.end11.i_crit_edge
  %19 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %attrs.i, align 4
  %arrayidx13.i = getelementptr ptr, ptr %20, i32 7
  %21 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx13.i, align 4
  %tobool14.not.i = icmp eq ptr %22, null
  br i1 %tobool14.not.i, label %if.end11.i.if.end22.i_crit_edge, label %if.then15.i

if.end11.i.if.end22.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr.i.i.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then15.i, %if.end11.i.if.end22.i_crit_edge
  %.sink.i = phi i8 [ %24, %if.then15.i ], [ 2, %if.end11.i.if.end22.i_crit_edge ]
  %25 = getelementptr inbounds %struct.ila_params, ptr %xp, i32 0, i32 3
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink.i, ptr %25, align 4
  %arrayidx24.i = getelementptr ptr, ptr %20, i32 8
  %27 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx24.i, align 4
  %tobool25.not.i = icmp eq ptr %28, null
  br i1 %tobool25.not.i, label %if.end22.i.if.end34.i_crit_edge, label %if.then26.i

if.end22.i.if.end34.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i3.i = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i3.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr.i.i3.i, align 1
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then26.i, %if.end22.i.if.end34.i_crit_edge
  %.sink5.i = phi i8 [ %30, %if.then26.i ], [ 32, %if.end22.i.if.end34.i_crit_edge ]
  %31 = getelementptr inbounds %struct.ila_params, ptr %xp, i32 0, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink5.i, ptr %31, align 1
  %arrayidx36.i = getelementptr ptr, ptr %20, i32 4
  %33 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx36.i, align 4
  %tobool37.not.i = icmp eq ptr %34, null
  br i1 %tobool37.not.i, label %if.end34.i.parse_nl_config.exit_crit_edge, label %if.then38.i

if.end34.i.parse_nl_config.exit_crit_edge:        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %parse_nl_config.exit

if.then38.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i4.i = getelementptr i8, ptr %34, i32 4
  %35 = ptrtoint ptr %add.ptr.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i4.i, align 4
  %ifindex.i = getelementptr inbounds %struct.ila_xlat_params, ptr %xp, i32 0, i32 1
  %37 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ifindex.i, align 8
  br label %parse_nl_config.exit

parse_nl_config.exit:                             ; preds = %if.then38.i, %if.end34.i.parse_nl_config.exit_crit_edge
  call fastcc void @ila_del_mapping(ptr noundef %1, ptr noundef nonnull %xp)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %xp) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ila_del_mapping(ptr noundef %net, ptr noundef %xp) unnamed_addr #0 align 64 {
entry:
  %___flags.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ila_net_id to i32))
  %0 = load i32, ptr @ila_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %locator_match = getelementptr inbounds %struct.ila_params, ptr %xp, i32 0, i32 1
  %1 = ptrtoint ptr %locator_match to i32
  call void @__asan_load8_noabort(i32 %1)
  %.unpack = load i64, ptr %locator_match, align 8
  %locks.i = getelementptr inbounds %struct.anon.149, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %locks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %locks.i, align 4
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @__ila_hash_secret_init.___once_key, ptr blockaddress(@ila_del_mapping, %if.then.i.i.i)) #10
          to label %ila_get_lock.exit [label %if.then.i.i.i], !srcloc !79

if.then.i.i.i:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags.i.i.i) #10
  %4 = ptrtoint ptr %___flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %___flags.i.i.i, align 4, !annotation !78
  %call3.i.i.i = call zeroext i1 @__do_once_start(ptr noundef nonnull @__ila_hash_secret_init.___done, ptr noundef nonnull %___flags.i.i.i) #10
  br i1 %call3.i.i.i, label %if.then12.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !80

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then12.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @get_random_bytes(ptr noundef nonnull @hashrnd, i32 noundef 4) #10
  call void @__do_once_done(ptr noundef nonnull @__ila_hash_secret_init.___done, ptr noundef nonnull @__ila_hash_secret_init.___once_key, ptr noundef nonnull %___flags.i.i.i, ptr noundef null) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then12.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags.i.i.i) #10
  br label %ila_get_lock.exit

ila_get_lock.exit:                                ; preds = %if.end.i.i.i, %entry
  %loc.sroa.2.0.extract.trunc.i.i = trunc i64 %.unpack to i32
  %loc.sroa.0.0.extract.shift.i.i = lshr i64 %.unpack, 32
  %loc.sroa.0.0.extract.trunc.i.i = trunc i64 %loc.sroa.0.0.extract.shift.i.i to i32
  %5 = load i32, ptr @hashrnd, align 4
  %add1.i.i.i = add i32 %5, -559038729
  %add.i.i.i.i = add i32 %add1.i.i.i, %loc.sroa.0.0.extract.trunc.i.i
  %add1.i.i.i.i = add i32 %add1.i.i.i, %loc.sroa.2.0.extract.trunc.i.i
  %xor.i.i.i.i = xor i32 %add1.i.i.i.i, %add1.i.i.i
  %or.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i, i32 %add1.i.i.i.i, i32 14) #10
  %sub.i.i.i.i = sub i32 %xor.i.i.i.i, %or.i.i.i.i.i
  %xor3.i.i.i.i = xor i32 %sub.i.i.i.i, %add.i.i.i.i
  %or.i1.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i, i32 %sub.i.i.i.i, i32 11) #10
  %sub5.i.i.i.i = sub i32 %xor3.i.i.i.i, %or.i1.i.i.i.i
  %xor6.i.i.i.i = xor i32 %sub5.i.i.i.i, %add1.i.i.i.i
  %or.i2.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i, i32 %sub5.i.i.i.i, i32 25) #10
  %sub8.i.i.i.i = sub i32 %xor6.i.i.i.i, %or.i2.i.i.i.i
  %xor9.i.i.i.i = xor i32 %sub8.i.i.i.i, %sub.i.i.i.i
  %or.i3.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i, i32 %sub8.i.i.i.i, i32 16) #10
  %sub11.i.i.i.i = sub i32 %xor9.i.i.i.i, %or.i3.i.i.i.i
  %xor12.i.i.i.i = xor i32 %sub11.i.i.i.i, %sub5.i.i.i.i
  %or.i4.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i, i32 %sub11.i.i.i.i, i32 4) #10
  %sub14.i.i.i.i = sub i32 %xor12.i.i.i.i, %or.i4.i.i.i.i
  %xor15.i.i.i.i = xor i32 %sub14.i.i.i.i, %sub8.i.i.i.i
  %or.i5.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i, i32 %sub14.i.i.i.i, i32 14) #10
  %sub17.i.i.i.i = sub i32 %xor15.i.i.i.i, %or.i5.i.i.i.i
  %xor18.i.i.i.i = xor i32 %sub17.i.i.i.i, %sub11.i.i.i.i
  %or.i6.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i, i32 %sub17.i.i.i.i, i32 24) #10
  %sub20.i.i.i.i = sub i32 %xor18.i.i.i.i, %or.i6.i.i.i.i
  %locks_mask.i = getelementptr inbounds %struct.anon.149, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %locks_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %locks_mask.i, align 4
  %and.i = and i32 %sub20.i.i.i.i, %7
  %arrayidx.i = getelementptr %struct.spinlock, ptr %3, i32 %and.i
  call void @_raw_spin_lock(ptr noundef %arrayidx.i) #10
  %call5 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %call, ptr noundef %locator_match, [7 x i32] [i32 67108872, i32 524320, i32 1048576, i32 16777472, i32 0, i32 0, i32 ptrtoint (ptr @ila_cmpfn to i32)])
  %tobool.not27 = icmp eq ptr %call5, null
  br i1 %tobool.not27, label %ila_get_lock.exit.out_crit_edge, label %while.body.lr.ph

ila_get_lock.exit.out_crit_edge:                  ; preds = %ila_get_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body.lr.ph:                                 ; preds = %ila_get_lock.exit
  %ifindex2.i = getelementptr inbounds %struct.ila_xlat_params, ptr %xp, i32 0, i32 1
  %dep_map = getelementptr inbounds %struct.anon.8, ptr %arrayidx.i, i32 0, i32 1
  %ifindex.i36 = getelementptr inbounds %struct.ila_xlat_params, ptr %call5, i32 0, i32 1
  %8 = ptrtoint ptr %ifindex.i36 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ifindex.i36, align 8
  %10 = ptrtoint ptr %ifindex2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifindex2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i.not37 = icmp eq i32 %9, %11
  br i1 %cmp.i.not37, label %while.body.lr.ph.if.end15_crit_edge, label %while.body.lr.ph.if.then_crit_edge

while.body.lr.ph.if.then_crit_edge:               ; preds = %while.body.lr.ph
  br label %if.then

while.body.lr.ph.if.end15_crit_edge:              ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

while.body:                                       ; preds = %do.end
  %ifindex.i = getelementptr inbounds %struct.ila_xlat_params, ptr %17, i32 0, i32 1
  %12 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifindex.i, align 8
  %14 = ptrtoint ptr %ifindex2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ifindex2.i, align 8
  %cmp.i.not = icmp eq i32 %13, %15
  br i1 %cmp.i.not, label %while.body.if.end15_crit_edge, label %while.body.if.then_crit_edge

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

while.body.if.end15_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then:                                          ; preds = %while.body.if.then_crit_edge, %while.body.lr.ph.if.then_crit_edge
  %ila.02938 = phi ptr [ %17, %while.body.if.then_crit_edge ], [ %call5, %while.body.lr.ph.if.then_crit_edge ]
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %if.then
  %call10 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true12

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b23 = load i1, ptr @ila_del_mapping.__warned, align 1
  br i1 %.b23, label %land.lhs.true12.do.end_crit_edge, label %if.then14

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ila_del_mapping.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 302, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then14, %land.lhs.true12.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.then.do.end_crit_edge
  %next = getelementptr inbounds %struct.ila_map, ptr %ila.02938, i32 0, i32 2
  %16 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %do.end.out_crit_edge, label %while.body

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end15:                                         ; preds = %while.body.if.end15_crit_edge, %while.body.lr.ph.if.end15_crit_edge
  %ila.029.lcssa = phi ptr [ %call5, %while.body.lr.ph.if.end15_crit_edge ], [ %17, %while.body.if.end15_crit_edge ]
  %prev.028.lcssa = phi ptr [ null, %while.body.lr.ph.if.end15_crit_edge ], [ %ila.02938, %while.body.if.end15_crit_edge ]
  %tobool16.not = icmp eq ptr %prev.028.lcssa, null
  br i1 %tobool16.not, label %do.body58, label %do.body18

do.body18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %next19 = getelementptr inbounds %struct.ila_map, ptr %ila.029.lcssa, i32 0, i32 2
  %18 = ptrtoint ptr %next19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %next19, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !88
  %next45 = getelementptr inbounds %struct.ila_map, ptr %prev.028.lcssa, i32 0, i32 2
  %20 = ptrtoint ptr %next45 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %19, ptr %next45, align 4
  br label %ila_release.exit

do.body58:                                        ; preds = %if.end15
  %call.i24 = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool61.not = icmp eq i32 %call.i24, 0
  br i1 %tobool61.not, label %land.lhs.true62, label %do.body58.do.end70_crit_edge

do.body58.do.end70_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end70

land.lhs.true62:                                  ; preds = %do.body58
  %call63 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true62.do.end70_crit_edge, label %land.lhs.true65

land.lhs.true62.do.end70_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end70

land.lhs.true65:                                  ; preds = %land.lhs.true62
  %.b10922 = load i1, ptr @ila_del_mapping.__warned.8, align 1
  br i1 %.b10922, label %land.lhs.true65.do.end70_crit_edge, label %if.then67

land.lhs.true65.do.end70_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end70

if.then67:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ila_del_mapping.__warned.8, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 316, ptr noundef nonnull @.str.1) #10
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %land.lhs.true65.do.end70_crit_edge, %land.lhs.true62.do.end70_crit_edge, %do.body58.do.end70_crit_edge
  %next72 = getelementptr inbounds %struct.ila_map, ptr %ila.029.lcssa, i32 0, i32 2
  %21 = ptrtoint ptr %next72 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %next72, align 4
  %tobool73.not = icmp eq ptr %22, null
  %node85 = getelementptr inbounds %struct.ila_map, ptr %ila.029.lcssa, i32 0, i32 1
  br i1 %tobool73.not, label %if.else82, label %if.then74

if.then74:                                        ; preds = %do.end70
  %node77 = getelementptr inbounds %struct.ila_map, ptr %22, i32 0, i32 1
  %call78 = call fastcc i32 @rhashtable_replace_fast(ptr noundef %call, ptr noundef %node85, ptr noundef %node77, [7 x i32] [i32 67108872, i32 524320, i32 1048576, i32 16777472, i32 0, i32 0, i32 ptrtoint (ptr @ila_cmpfn to i32)])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then74.ila_release.exit_crit_edge, label %if.then74.out_crit_edge

if.then74.out_crit_edge:                          ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then74.ila_release.exit_crit_edge:             ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %ila_release.exit

if.else82:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #12
  %call86 = call fastcc i32 @rhashtable_remove_fast(ptr noundef %call, ptr noundef %node85, [7 x i32] [i32 67108872, i32 524320, i32 1048576, i32 16777472, i32 0, i32 0, i32 ptrtoint (ptr @ila_cmpfn to i32)])
  br label %ila_release.exit

ila_release.exit:                                 ; preds = %if.else82, %if.then74.ila_release.exit_crit_edge, %do.body18
  %rcu.i = getelementptr inbounds %struct.ila_map, ptr %ila.029.lcssa, i32 0, i32 3
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 40 to ptr)) #10
  br label %out

out:                                              ; preds = %ila_release.exit, %if.then74.out_crit_edge, %do.end.out_crit_edge, %ila_get_lock.exit.out_crit_edge
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ila_xlat_nl_cmd_flush(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %___flags.i.i.i.i = alloca i32, align 4
  %iter = alloca %struct.rhashtable_iter, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ila_net_id to i32))
  %2 = load i32, ptr @ila_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %iter) #10
  %3 = call ptr @memset(ptr %iter, i32 255, i32 36)
  call void @rhashtable_walk_enter(ptr noundef %call1, ptr noundef nonnull %iter) #10
  %call.i = call i32 @rhashtable_walk_start_check(ptr noundef nonnull %iter) #10
  %locks.i.i = getelementptr inbounds %struct.anon.149, ptr %call1, i32 0, i32 1
  %locks_mask.i.i = getelementptr inbounds %struct.anon.149, ptr %call1, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %call2 = call ptr @rhashtable_walk_next(ptr noundef nonnull %iter) #10
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %cmp = icmp eq ptr %call2, inttoptr (i32 -11 to ptr)
  br i1 %cmp, label %if.then.for.cond.backedge_crit_edge, label %done.loopexit.split.loop.exit37

if.then.for.cond.backedge_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %ila_free_node.exit, %if.then.for.cond.backedge_crit_edge
  br label %for.cond

if.else:                                          ; preds = %for.cond
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.else.done_crit_edge, label %if.end9

if.else.done_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end9:                                          ; preds = %if.else
  %locator_match.i = getelementptr inbounds %struct.ila_params, ptr %call2, i32 0, i32 1
  %4 = ptrtoint ptr %locator_match.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %.unpack.i = load i64, ptr %locator_match.i, align 8
  %5 = ptrtoint ptr %locks.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %locks.i.i, align 4
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @__ila_hash_secret_init.___once_key, ptr blockaddress(@ila_xlat_nl_cmd_flush, %if.then.i.i.i.i)) #10
          to label %lock_from_ila_map.exit [label %if.then.i.i.i.i], !srcloc !79

if.then.i.i.i.i:                                  ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags.i.i.i.i) #10
  %7 = ptrtoint ptr %___flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %___flags.i.i.i.i, align 4, !annotation !78
  %call3.i.i.i.i = call zeroext i1 @__do_once_start(ptr noundef nonnull @__ila_hash_secret_init.___done, ptr noundef nonnull %___flags.i.i.i.i) #10
  br i1 %call3.i.i.i.i, label %if.then12.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !80

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i

if.then12.i.i.i.i:                                ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @get_random_bytes(ptr noundef nonnull @hashrnd, i32 noundef 4) #10
  call void @__do_once_done(ptr noundef nonnull @__ila_hash_secret_init.___done, ptr noundef nonnull @__ila_hash_secret_init.___once_key, ptr noundef nonnull %___flags.i.i.i.i, ptr noundef null) #10
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then12.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags.i.i.i.i) #10
  br label %lock_from_ila_map.exit

lock_from_ila_map.exit:                           ; preds = %if.end.i.i.i.i, %if.end9
  %loc.sroa.2.0.extract.trunc.i.i.i = trunc i64 %.unpack.i to i32
  %loc.sroa.0.0.extract.shift.i.i.i = lshr i64 %.unpack.i, 32
  %loc.sroa.0.0.extract.trunc.i.i.i = trunc i64 %loc.sroa.0.0.extract.shift.i.i.i to i32
  %8 = load i32, ptr @hashrnd, align 4
  %add1.i.i.i.i = add i32 %8, -559038729
  %add.i.i.i.i.i = add i32 %add1.i.i.i.i, %loc.sroa.0.0.extract.trunc.i.i.i
  %add1.i.i.i.i.i = add i32 %add1.i.i.i.i, %loc.sroa.2.0.extract.trunc.i.i.i
  %xor.i.i.i.i.i = xor i32 %add1.i.i.i.i.i, %add1.i.i.i.i
  %or.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i.i, i32 %add1.i.i.i.i.i, i32 14) #10
  %sub.i.i.i.i.i = sub i32 %xor.i.i.i.i.i, %or.i.i.i.i.i.i
  %xor3.i.i.i.i.i = xor i32 %sub.i.i.i.i.i, %add.i.i.i.i.i
  %or.i1.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i.i, i32 %sub.i.i.i.i.i, i32 11) #10
  %sub5.i.i.i.i.i = sub i32 %xor3.i.i.i.i.i, %or.i1.i.i.i.i.i
  %xor6.i.i.i.i.i = xor i32 %sub5.i.i.i.i.i, %add1.i.i.i.i.i
  %or.i2.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i.i, i32 %sub5.i.i.i.i.i, i32 25) #10
  %sub8.i.i.i.i.i = sub i32 %xor6.i.i.i.i.i, %or.i2.i.i.i.i.i
  %xor9.i.i.i.i.i = xor i32 %sub8.i.i.i.i.i, %sub.i.i.i.i.i
  %or.i3.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i.i, i32 %sub8.i.i.i.i.i, i32 16) #10
  %sub11.i.i.i.i.i = sub i32 %xor9.i.i.i.i.i, %or.i3.i.i.i.i.i
  %xor12.i.i.i.i.i = xor i32 %sub11.i.i.i.i.i, %sub5.i.i.i.i.i
  %or.i4.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i.i, i32 %sub11.i.i.i.i.i, i32 4) #10
  %sub14.i.i.i.i.i = sub i32 %xor12.i.i.i.i.i, %or.i4.i.i.i.i.i
  %xor15.i.i.i.i.i = xor i32 %sub14.i.i.i.i.i, %sub8.i.i.i.i.i
  %or.i5.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i.i, i32 %sub14.i.i.i.i.i, i32 14) #10
  %sub17.i.i.i.i.i = sub i32 %xor15.i.i.i.i.i, %or.i5.i.i.i.i.i
  %xor18.i.i.i.i.i = xor i32 %sub17.i.i.i.i.i, %sub11.i.i.i.i.i
  %or.i6.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i.i, i32 %sub17.i.i.i.i.i, i32 24) #10
  %sub20.i.i.i.i.i = sub i32 %xor18.i.i.i.i.i, %or.i6.i.i.i.i.i
  %9 = ptrtoint ptr %locks_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %locks_mask.i.i, align 4
  %and.i.i = and i32 %sub20.i.i.i.i.i, %10
  %arrayidx.i.i = getelementptr %struct.spinlock, ptr %6, i32 %and.i.i
  call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #10
  %node = getelementptr inbounds %struct.ila_map, ptr %call2, i32 0, i32 1
  %call13 = call fastcc i32 @rhashtable_remove_fast(ptr noundef %call1, ptr noundef %node, [7 x i32] [i32 67108872, i32 524320, i32 1048576, i32 16777472, i32 0, i32 0, i32 ptrtoint (ptr @ila_cmpfn to i32)])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %lock_from_ila_map.exit.ila_release.exit.i_crit_edge, label %done.critedge

lock_from_ila_map.exit.ila_release.exit.i_crit_edge: ; preds = %lock_from_ila_map.exit
  br label %ila_release.exit.i

ila_release.exit.i:                               ; preds = %ila_release.exit.i.ila_release.exit.i_crit_edge, %lock_from_ila_map.exit.ila_release.exit.i_crit_edge
  %ila.addr.06.i = phi ptr [ %12, %ila_release.exit.i.ila_release.exit.i_crit_edge ], [ %call2, %lock_from_ila_map.exit.ila_release.exit.i_crit_edge ]
  %next1.i = getelementptr inbounds %struct.ila_map, ptr %ila.addr.06.i, i32 0, i32 2
  %11 = ptrtoint ptr %next1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %next1.i, align 4
  %rcu.i.i = getelementptr inbounds %struct.ila_map, ptr %ila.addr.06.i, i32 0, i32 3
  call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 40 to ptr)) #10
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %ila_free_node.exit, label %ila_release.exit.i.ila_release.exit.i_crit_edge

ila_release.exit.i.ila_release.exit.i_crit_edge:  ; preds = %ila_release.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ila_release.exit.i

ila_free_node.exit:                               ; preds = %ila_release.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i) #10
  br label %for.cond.backedge

done.critedge:                                    ; preds = %lock_from_ila_map.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i) #10
  br label %done

done.loopexit.split.loop.exit37:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call2 to i32
  br label %done

done:                                             ; preds = %done.loopexit.split.loop.exit37, %done.critedge, %if.else.done_crit_edge
  %ret.1 = phi i32 [ %call13, %done.critedge ], [ %13, %done.loopexit.split.loop.exit37 ], [ 0, %if.else.done_crit_edge ]
  call void @rhashtable_walk_stop(ptr noundef nonnull %iter) #10
  call void @rhashtable_walk_exit(ptr noundef nonnull %iter) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %iter) #10
  ret i32 %ret.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 45, ptr noundef nonnull @.str.3) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.18) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  %8 = tail call i32 @llvm.read_register.i32(metadata !68) #10
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_enter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_walk_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #10
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1076, ptr noundef nonnull @.str.3) #10
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %params.coerce.fca.0.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %key_len6.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %5, %do.end10.i ], [ %45, %do.end33.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !80

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %10 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #10
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #10
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i3.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !82

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #10
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #10
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 377, ptr noundef nonnull @.str.1) #10
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i6.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i6.i.i to i32
  %or.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i20.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %tobool.i.not21.i.i = icmp eq i32 %and.i20.i.i, 0
  br i1 %tobool.i.not21.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.unlocked.i.i_crit_edge

rht_ptr.exit.i.i.unlocked.i.i_crit_edge:          ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i21.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i21.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i22.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.12, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1032, ptr noundef nonnull @.str.1) #10
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !89
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #10
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #10
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i22.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.14, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1004, ptr noundef nonnull @.str.1) #10
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %31 = ptrtoint ptr %he.022.i22.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %he.022.i22.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i, label %do.end156.i.i.unlocked.i.i_crit_edge

do.end156.i.i.unlocked.i.i_crit_edge:             ; preds = %do.end156.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #10
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #10
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #10, !srcloc !90
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #10
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %39 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %40, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %38, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !80

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #10
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.10, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1085, ptr noundef nonnull @.str.3) #10
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %retval.0.i15.i = phi i32 [ 0, %if.then160.i.i.while.end.i_crit_edge ], [ 0, %if.then168.i.i ], [ 0, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge ], [ 0, %land.rhs162.i.i.while.end.i_crit_edge ], [ -2, %do.end33.i.while.end.i_crit_edge ]
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.18) #10
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  %46 = tail call i32 @llvm.read_register.i32(metadata !68) #10
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i32 %retval.0.i15.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ila_xlat_nl_cmd_get_mapping(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i1.i = alloca i64, align 8
  %tmp.i.i = alloca i64, align 8
  %xp = alloca %struct.ila_xlat_params, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ila_net_id to i32))
  %2 = load i32, ptr @ila_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %xp) #10
  %3 = call ptr @memset(ptr %xp, i32 0, i32 32)
  %attrs.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %4 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attrs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i32 = icmp eq ptr %7, null
  br i1 %tobool.not.i32, label %entry.if.end.i_crit_edge, label %if.then.i33

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i33:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #10
  %8 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %tmp.i.i, align 8, !annotation !78
  %call.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i.i, ptr noundef nonnull %7, i32 noundef 8) #10
  %9 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tmp.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #10
  %11 = ptrtoint ptr %xp to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %xp, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i33, %entry.if.end.i_crit_edge
  %12 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %attrs.i, align 4
  %arrayidx4.i = getelementptr ptr, ptr %13, i32 3
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %15, null
  br i1 %tobool5.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then6.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i1.i) #10
  %16 = ptrtoint ptr %tmp.i1.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %tmp.i1.i, align 8, !annotation !78
  %call.i2.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i1.i, ptr noundef nonnull %15, i32 noundef 8) #10
  %17 = ptrtoint ptr %tmp.i1.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %tmp.i1.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i1.i) #10
  %locator_match.i = getelementptr inbounds %struct.ila_params, ptr %xp, i32 0, i32 1
  %19 = ptrtoint ptr %locator_match.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %locator_match.i, align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i, %if.end.i.if.end11.i_crit_edge
  %20 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %attrs.i, align 4
  %arrayidx13.i = getelementptr ptr, ptr %21, i32 7
  %22 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx13.i, align 4
  %tobool14.not.i = icmp eq ptr %23, null
  br i1 %tobool14.not.i, label %if.end11.i.if.end22.i_crit_edge, label %if.then15.i

if.end11.i.if.end22.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr.i.i.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then15.i, %if.end11.i.if.end22.i_crit_edge
  %.sink.i = phi i8 [ %25, %if.then15.i ], [ 2, %if.end11.i.if.end22.i_crit_edge ]
  %26 = getelementptr inbounds %struct.ila_params, ptr %xp, i32 0, i32 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.sink.i, ptr %26, align 4
  %arrayidx24.i = getelementptr ptr, ptr %21, i32 8
  %28 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx24.i, align 4
  %tobool25.not.i = icmp eq ptr %29, null
  br i1 %tobool25.not.i, label %if.end22.i.if.end34.i_crit_edge, label %if.then26.i

if.end22.i.if.end34.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i3.i = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i3.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr.i.i3.i, align 1
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then26.i, %if.end22.i.if.end34.i_crit_edge
  %.sink5.i = phi i8 [ %31, %if.then26.i ], [ 32, %if.end22.i.if.end34.i_crit_edge ]
  %32 = getelementptr inbounds %struct.ila_params, ptr %xp, i32 0, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %.sink5.i, ptr %32, align 1
  %arrayidx36.i = getelementptr ptr, ptr %21, i32 4
  %34 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx36.i, align 4
  %tobool37.not.i = icmp eq ptr %35, null
  br i1 %tobool37.not.i, label %if.end34.i.parse_nl_config.exit_crit_edge, label %if.then38.i

if.end34.i.parse_nl_config.exit_crit_edge:        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %parse_nl_config.exit

if.then38.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i4.i = getelementptr i8, ptr %35, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i.i4.i, align 4
  %ifindex.i = getelementptr inbounds %struct.ila_xlat_params, ptr %xp, i32 0, i32 1
  %38 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ifindex.i, align 8
  br label %parse_nl_config.exit

parse_nl_config.exit:                             ; preds = %if.then38.i, %if.end34.i.parse_nl_config.exit_crit_edge
  %call.i.i34 = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool4.not = icmp eq ptr %call.i.i34, null
  br i1 %tobool4.not, label %parse_nl_config.exit.cleanup_crit_edge, label %if.end6

parse_nl_config.exit.cleanup_crit_edge:           ; preds = %parse_nl_config.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %parse_nl_config.exit
  %39 = call i32 @llvm.read_register.i32(metadata !68) #10
  %and.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %42, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end6.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end6.rcu_read_lock.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end6
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end6.rcu_read_lock.exit_crit_edge
  %locator_match.i35 = getelementptr inbounds %struct.ila_params, ptr %xp, i32 0, i32 1
  %call.i36 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %call1, ptr noundef %locator_match.i35, [7 x i32] [i32 67108872, i32 524320, i32 1048576, i32 16777472, i32 0, i32 0, i32 ptrtoint (ptr @ila_cmpfn to i32)]) #10
  %tobool.not14.i = icmp eq ptr %call.i36, null
  br i1 %tobool.not14.i, label %rcu_read_lock.exit.if.end11_crit_edge, label %while.body.lr.ph.i

rcu_read_lock.exit.if.end11_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

while.body.lr.ph.i:                               ; preds = %rcu_read_lock.exit
  %ifindex2.i.i = getelementptr inbounds %struct.ila_xlat_params, ptr %xp, i32 0, i32 1
  %43 = ptrtoint ptr %ifindex2.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ifindex2.i.i, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i38.while.body.i_crit_edge, %while.body.lr.ph.i
  %ila.015.i = phi ptr [ %call.i36, %while.body.lr.ph.i ], [ %48, %if.end.i38.while.body.i_crit_edge ]
  %ifindex.i.i = getelementptr inbounds %struct.ila_xlat_params, ptr %ila.015.i, i32 0, i32 1
  %45 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ifindex.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %44)
  %cmp.i.not.i = icmp eq i32 %46, %44
  br i1 %cmp.i.not.i, label %if.then9, label %if.end.i38

if.end.i38:                                       ; preds = %while.body.i
  %next.i = getelementptr inbounds %struct.ila_map, ptr %ila.015.i, i32 0, i32 2
  %47 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %next.i, align 4
  %tobool.not.i37 = icmp eq ptr %48, null
  br i1 %tobool.not.i37, label %if.end.i38.if.end11_crit_edge, label %if.end.i38.while.body.i_crit_edge

if.end.i38.while.body.i_crit_edge:                ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i38.if.end11_crit_edge:                    ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %49 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %snd_portid, align 4
  %51 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %info, align 4
  %genlhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 3
  %53 = ptrtoint ptr %genlhdr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %genlhdr, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 2
  %call10 = call fastcc i32 @ila_dump_info(ptr noundef nonnull %ila.015.i, i32 noundef %50, i32 noundef %52, i32 noundef 0, ptr noundef nonnull %call.i.i34, i8 noundef zeroext %56)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.i38.if.end11_crit_edge, %rcu_read_lock.exit.if.end11_crit_edge
  %ret.0 = phi i32 [ %call10, %if.then9 ], [ 0, %rcu_read_lock.exit.if.end11_crit_edge ], [ 0, %if.end.i38.if.end11_crit_edge ]
  %call.i39 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i39, label %if.end11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i42

if.end11.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i42:                                ; preds = %if.end11
  %call1.i40 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i40)
  %tobool.not.i41 = icmp eq i32 %call1.i40, 0
  br i1 %tobool.not.i41, label %land.lhs.true.i42.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i44

land.lhs.true.i42.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i44:                               ; preds = %land.lhs.true.i42
  %.b4.i43 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i43, label %land.lhs.true2.i44.rcu_read_unlock.exit_crit_edge, label %if.then.i45

land.lhs.true2.i44.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i45:                                      ; preds = %land.lhs.true2.i44
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.18) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i45, %land.lhs.true2.i44.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i42.rcu_read_unlock.exit_crit_edge, %if.end11.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  %57 = call i32 @llvm.read_register.i32(metadata !68) #10
  %and.i.i.i.i.i46 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i46 to ptr
  %preempt_count.i.i.i.i47 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i47, align 4
  %sub.i.i.i = add i32 %60, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i47, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %out_free, label %if.end13

if.end13:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %_net.i, align 4
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %63 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %62, i32 0, i32 21
  %65 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = call i32 @netlink_unicast(ptr noundef %66, ptr noundef nonnull %call.i.i34, i32 noundef %64, i32 noundef 64) #10
  %67 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #10
  br label %cleanup

out_free:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i34, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end13, %parse_nl_config.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_free ], [ %67, %if.end13 ], [ -12, %parse_nl_config.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %xp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ila_dump_info(ptr nocapture noundef readonly %ila, i32 noundef %portid, i32 noundef %seq, i32 noundef %flags, ptr noundef %skb, i8 noundef zeroext %cmd) unnamed_addr #0 align 64 {
entry:
  %tmp.i33.i = alloca i8, align 1
  %tmp.i31.i = alloca i8, align 1
  %tmp.i29.i = alloca i32, align 4
  %tmp.i27.i = alloca i64, align 8
  %tmp.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, ptr noundef nonnull @ila_nl_family, i32 noundef %flags, i8 noundef zeroext %cmd) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ila to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ila, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #10
  %2 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %tmp.i.i, align 8
  %call.i.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %tmp.i.i, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %locator_match.i = getelementptr inbounds %struct.ila_params, ptr %ila, i32 0, i32 1
  %3 = ptrtoint ptr %locator_match.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %locator_match.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i27.i) #10
  %5 = ptrtoint ptr %tmp.i27.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %tmp.i27.i, align 8
  %call.i28.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i27.i, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i27.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %tobool4.not.i = icmp eq i32 %call.i28.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %ifindex.i = getelementptr inbounds %struct.ila_xlat_params, ptr %ila, i32 0, i32 1
  %6 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i29.i) #10
  %8 = ptrtoint ptr %tmp.i29.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i29.i, align 4
  %call.i30.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i29.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i29.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool8.not.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false9.i, label %lor.lhs.false5.i.if.then.i_crit_edge

lor.lhs.false5.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false5.i
  %csum_mode.i = getelementptr inbounds %struct.ila_params, ptr %ila, i32 0, i32 3
  %9 = ptrtoint ptr %csum_mode.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %csum_mode.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i31.i) #10
  %11 = ptrtoint ptr %tmp.i31.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %tmp.i31.i, align 1
  %call.i32.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i31.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i31.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %tobool13.not.i = icmp eq i32 %call.i32.i, 0
  br i1 %tobool13.not.i, label %ila_fill_info.exit, label %lor.lhs.false9.i.if.then.i_crit_edge

lor.lhs.false9.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

ila_fill_info.exit:                               ; preds = %lor.lhs.false9.i
  %ident_type.i = getelementptr inbounds %struct.ila_params, ptr %ila, i32 0, i32 4
  %12 = ptrtoint ptr %ident_type.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ident_type.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i33.i) #10
  %14 = ptrtoint ptr %tmp.i33.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %tmp.i33.i, align 1
  %call.i34.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %tmp.i33.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i33.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %tobool18.not.i.not = icmp eq i32 %call.i34.i, 0
  br i1 %tobool18.not.i.not, label %if.end3, label %ila_fill_info.exit.if.then.i_crit_edge

ila_fill_info.exit.if.then.i_crit_edge:           ; preds = %ila_fill_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end3:                                          ; preds = %ila_fill_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr1.i = getelementptr i8, ptr %call, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %17 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i:                                        ; preds = %ila_fill_info.exit.if.then.i_crit_edge, %lor.lhs.false9.i.if.then.i_crit_edge, %lor.lhs.false5.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %add.ptr1.i10 = getelementptr i8, ptr %call, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i10, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %19, %add.ptr1.i10
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !80

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %20 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i10 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -12, %entry.cleanup_crit_edge ], [ -90, %if.then.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ila_xlat_nl_dump_start(ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ila_net_id to i32))
  %7 = load i32, ptr @ila_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %6, i32 noundef %7)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 40) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rhashtable_walk_enter(ptr noundef %call1, ptr noundef nonnull %call7.i) #10
  %skip = getelementptr inbounds %struct.ila_dump_iter, ptr %call7.i, i32 0, i32 1
  %9 = ptrtoint ptr %skip to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %skip, align 4
  %10 = ptrtoint ptr %call7.i to i32
  %11 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ila_xlat_nl_dump_done(ptr nocapture noundef readonly %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %3 = inttoptr i32 %2 to ptr
  tail call void @rhashtable_walk_exit(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ila_xlat_nl_dump(ptr noundef %skb, ptr nocapture noundef readonly %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %3 = inttoptr i32 %2 to ptr
  %skip2 = getelementptr inbounds %struct.ila_dump_iter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %skip2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skip2, align 4
  %call.i = tail call i32 @rhashtable_walk_start_check(ptr noundef %3) #10
  %call = tail call ptr @rhashtable_walk_peek(ptr noundef %3) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.else13.lr.ph_crit_edge, label %land.lhs.true

entry.if.else13.lr.ph_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13.lr.ph

land.lhs.true:                                    ; preds = %entry
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.land.rhs_crit_edge

land.lhs.true.land.rhs_crit_edge:                 ; preds = %land.lhs.true
  br label %land.rhs

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.lhs.true.land.rhs_crit_edge
  %skip.069 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ %5, %land.lhs.true.land.rhs_crit_edge ]
  %ila.068 = phi ptr [ %7, %while.body.land.rhs_crit_edge ], [ %call, %land.lhs.true.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip.069)
  %tobool7.not = icmp eq i32 %skip.069, 0
  br i1 %tobool7.not, label %land.rhs.if.end_crit_edge, label %while.body

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.body:                                       ; preds = %land.rhs
  %next = getelementptr inbounds %struct.ila_map, ptr %ila.068, i32 0, i32 2
  %6 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %next, align 4
  %dec = add i32 %skip.069, -1
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %while.body.if.else13.lr.ph_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.body.if.else13.lr.ph_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13.lr.ph

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %ila.1 = phi ptr [ %call, %land.lhs.true.if.end_crit_edge ], [ %ila.068, %land.rhs.if.end_crit_edge ]
  %cmp.i6274 = icmp ugt ptr %ila.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i6274, label %if.end.if.then10_crit_edge, label %if.end.if.else13.lr.ph_crit_edge

if.end.if.else13.lr.ph_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13.lr.ph

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.else13.lr.ph:                                  ; preds = %if.end.if.else13.lr.ph_crit_edge, %while.body.if.else13.lr.ph_crit_edge, %entry.if.else13.lr.ph_crit_edge
  %ila.182 = phi ptr [ %ila.1, %if.end.if.else13.lr.ph_crit_edge ], [ null, %entry.if.else13.lr.ph_crit_edge ], [ null, %while.body.if.else13.lr.ph_crit_edge ]
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %if.else13

if.then10:                                        ; preds = %while.cond18.while.end33_crit_edge.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %ila.2.lcssa = phi ptr [ %ila.1, %if.end.if.then10_crit_edge ], [ %call34, %while.cond18.while.end33_crit_edge.if.then10_crit_edge ]
  %8 = ptrtoint ptr %ila.2.lcssa to i32
  %cmp = icmp eq ptr %ila.2.lcssa, inttoptr (i32 -11 to ptr)
  br i1 %cmp, label %if.then10.out_ret_crit_edge, label %if.then10.out_crit_edge

if.then10.out_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then10.out_ret_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_ret

if.else13:                                        ; preds = %while.cond18.while.end33_crit_edge.if.else13_crit_edge, %if.else13.lr.ph
  %ila.275 = phi ptr [ %ila.182, %if.else13.lr.ph ], [ %call34, %while.cond18.while.end33_crit_edge.if.else13_crit_edge ]
  %tobool14.not = icmp eq ptr %ila.275, null
  br i1 %tobool14.not, label %if.else13.out_crit_edge, label %if.else13.while.body20_crit_edge

if.else13.while.body20_crit_edge:                 ; preds = %if.else13
  br label %while.body20

if.else13.out_crit_edge:                          ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body20:                                     ; preds = %if.end26.while.body20_crit_edge, %if.else13.while.body20_crit_edge
  %skip.273 = phi i32 [ %inc, %if.end26.while.body20_crit_edge ], [ 0, %if.else13.while.body20_crit_edge ]
  %ila.372 = phi ptr [ %18, %if.end26.while.body20_crit_edge ], [ %ila.275, %if.else13.while.body20_crit_edge ]
  %9 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3, i32 12
  %11 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %portid, align 4
  %13 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nlmsg_seq, align 4
  %call23 = tail call fastcc i32 @ila_dump_info(ptr noundef nonnull %ila.372, i32 noundef %12, i32 noundef %16, i32 noundef 2, ptr noundef %skb, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %while.body20.out_crit_edge

while.body20.out_crit_edge:                       ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end26:                                         ; preds = %while.body20
  %inc = add i32 %skip.273, 1
  %next31 = getelementptr inbounds %struct.ila_map, ptr %ila.372, i32 0, i32 2
  %17 = ptrtoint ptr %next31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %next31, align 4
  %tobool19.not = icmp eq ptr %18, null
  br i1 %tobool19.not, label %while.cond18.while.end33_crit_edge, label %if.end26.while.body20_crit_edge

if.end26.while.body20_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body20

while.cond18.while.end33_crit_edge:               ; preds = %if.end26
  %call34 = tail call ptr @rhashtable_walk_next(ptr noundef %3) #10
  %cmp.i62 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62, label %while.cond18.while.end33_crit_edge.if.then10_crit_edge, label %while.cond18.while.end33_crit_edge.if.else13_crit_edge

while.cond18.while.end33_crit_edge.if.else13_crit_edge: ; preds = %while.cond18.while.end33_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13

while.cond18.while.end33_crit_edge.if.then10_crit_edge: ; preds = %while.cond18.while.end33_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

out:                                              ; preds = %while.body20.out_crit_edge, %if.else13.out_crit_edge, %if.then10.out_crit_edge
  %ret.0 = phi i32 [ %8, %if.then10.out_crit_edge ], [ %call23, %while.body20.out_crit_edge ], [ 0, %if.else13.out_crit_edge ]
  %skip.3 = phi i32 [ 0, %if.then10.out_crit_edge ], [ %skip.273, %while.body20.out_crit_edge ], [ 0, %if.else13.out_crit_edge ]
  %19 = ptrtoint ptr %skip2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %skip.3, ptr %skip2, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool36.not = icmp eq i32 %21, 0
  %spec.select = select i1 %tobool36.not, i32 %ret.0, i32 %21
  br label %out_ret

out_ret:                                          ; preds = %out, %if.then10.out_ret_crit_edge
  %ret.1 = phi i32 [ -11, %if.then10.out_ret_crit_edge ], [ %spec.select, %out ]
  tail call void @rhashtable_walk_stop(ptr noundef %3) #10
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_walk_peek(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ila_xlat_init_net(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ila_net_id to i32))
  %0 = load i32, ptr @ila_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %locks.i = getelementptr inbounds %struct.anon.149, ptr %call, i32 0, i32 1
  %locks_mask.i = getelementptr inbounds %struct.anon.149, ptr %call, i32 0, i32 2
  %call.i = tail call i32 @__alloc_bucket_spinlocks(ptr noundef %locks.i, ptr noundef %locks_mask.i, i32 noundef 1024, i32 noundef 10, i32 noundef 3264, ptr noundef nonnull @.str.19, ptr noundef nonnull @alloc_ila_locks.key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @rhashtable_init(ptr noundef %call, ptr noundef nonnull @rht_params) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %locks.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %locks.i, align 4
  tail call void @free_bucket_spinlocks(ptr noundef %2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_bucket_spinlocks(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ila_xlat_exit_net(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ila_net_id to i32))
  %0 = load i32, ptr @ila_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  tail call void @rhashtable_free_and_destroy(ptr noundef %call, ptr noundef nonnull @ila_free_cb, ptr noundef null) #10
  %locks = getelementptr inbounds %struct.anon.149, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %locks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %locks, align 4
  tail call void @free_bucket_spinlocks(ptr noundef %2) #10
  %hooks_registered = getelementptr inbounds %struct.anon.149, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %hooks_registered to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hooks_registered, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nf_unregister_net_hooks(ptr noundef %net, ptr noundef nonnull @ila_nf_hook_ops, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_free_and_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ila_free_cb(ptr noundef %ptr, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not5.i = icmp eq ptr %ptr, null
  br i1 %tobool.not5.i, label %entry.ila_free_node.exit_crit_edge, label %entry.ila_release.exit.i_crit_edge

entry.ila_release.exit.i_crit_edge:               ; preds = %entry
  br label %ila_release.exit.i

entry.ila_free_node.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ila_free_node.exit

ila_release.exit.i:                               ; preds = %ila_release.exit.i.ila_release.exit.i_crit_edge, %entry.ila_release.exit.i_crit_edge
  %ila.addr.06.i = phi ptr [ %1, %ila_release.exit.i.ila_release.exit.i_crit_edge ], [ %ptr, %entry.ila_release.exit.i_crit_edge ]
  %next1.i = getelementptr inbounds %struct.ila_map, ptr %ila.addr.06.i, i32 0, i32 2
  %0 = ptrtoint ptr %next1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %next1.i, align 4
  %rcu.i.i = getelementptr inbounds %struct.ila_map, ptr %ila.addr.06.i, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 40 to ptr)) #10
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %ila_release.exit.i.ila_free_node.exit_crit_edge, label %ila_release.exit.i.ila_release.exit.i_crit_edge

ila_release.exit.i.ila_release.exit.i_crit_edge:  ; preds = %ila_release.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ila_release.exit.i

ila_release.exit.i.ila_free_node.exit_crit_edge:  ; preds = %ila_release.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ila_free_node.exit

ila_free_node.exit:                               ; preds = %ila_release.exit.i.ila_free_node.exit_crit_edge, %entry.ila_free_node.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_unregister_net_hooks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_register_net_hooks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ila_init_saved_csum(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup_fast(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #2 align 64 {
entry:
  %arg.i.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %params.coerce.fca.6.extract.i.i = extractvalue [7 x i32] %params.coerce, 6
  %4 = inttoptr i32 %params.coerce.fca.6.extract.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i) #10
  %5 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ht, ptr %arg.i.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %key, ptr %5, align 4
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.do.end12.i.i_crit_edge

rcu_read_lock.exit.do.end12.i.i_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call5.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b92.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 594, ptr noundef nonnull @.str.3) #10
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.do.end12.i.i_crit_edge
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i.i)
  %tobool19.not.i.i = icmp eq i32 %params.coerce.fca.6.extract.i.i, 0
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.end60.i.i.if.then.i.i.i.i_crit_edge, %do.end12.i.i
  %tbl.0.i.i = phi ptr [ %9, %do.end12.i.i ], [ %40, %do.end60.i.i.if.then.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_rnd.i.i.i, align 8
  %12 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %14 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %13(ptr noundef %key, i32 noundef %15, i32 noundef %11) #10
  %16 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i = add i32 %17, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %call.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !82

cond.true.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i) #10
  br label %rht_bucket.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket.exit.i.i

rht_bucket.exit.i.i:                              ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %call.i.i.i, %cond.true.i.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i.i ]
  %20 = ptrtoint ptr %cond.i.i.i to i32
  %or.i.i.i.i = or i32 %20, 1
  %21 = inttoptr i32 %or.i.i.i.i to ptr
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.cond34.i.i.do.body16.i.i_crit_edge, %rht_bucket.exit.i.i
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !91
  %22 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cond.i.i.i, align 4
  %call.i93.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %land.lhs.true.i.i.i, label %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge

do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge:     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body16.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr_rcu.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 369, ptr noundef nonnull @.str.3) #10
  br label %rht_ptr_rcu.exit.i.i

rht_ptr_rcu.exit.i.i:                             ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge
  %24 = ptrtoint ptr %23 to i32
  %and.i.i95.i.i = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i)
  %tobool.not.i.i96.i.i = icmp eq i32 %and.i.i95.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i96.i.i, i32 %or.i.i.i.i, i32 %and.i.i95.i.i
  %25 = inttoptr i32 %cond.i.i.i.i to ptr
  %and.i106.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i)
  %tobool.i.not107.i.i = icmp eq i32 %and.i106.i.i, 0
  br i1 %tobool.i.not107.i.i, label %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge, label %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge

rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge:     ; preds = %rht_ptr_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond34.i.i

rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge:      ; preds = %rht_ptr_rcu.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge
  %he.0108.i.i = phi ptr [ %37, %for.inc.i.i.for.body.i.i_crit_edge ], [ %25, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i98.i.i = zext i16 %27 to i32
  %idx.neg.i99.i.i = sub nsw i32 0, %conv.i98.i.i
  %add.ptr.i100.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i99.i.i
  br i1 %tobool19.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body.i.i
  %call22.i.i = call i32 %4(ptr noundef nonnull %arg.i.i, ptr noundef %add.ptr.i100.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i.for.inc.i.i_crit_edge

cond.true.i.i.for.inc.i.i_crit_edge:              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__rhashtable_lookup.exit.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  %28 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arg.i.i, align 4
  %key_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %key_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_offset.i.i.i, align 4
  %conv.i101.i.i = zext i16 %31 to i32
  %add.ptr.i102.i.i = getelementptr i8, ptr %add.ptr.i100.i.i, i32 %conv.i101.i.i
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %key_len.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_len.i.i.i, align 2
  %conv3.i.i.i = zext i16 %35 to i32
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i, ptr %33, i32 %conv3.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool26.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool26.not.i.i, label %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.false.i.i.for.inc.i.i_crit_edge

cond.false.i.i.for.inc.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__rhashtable_lookup.exit.i

for.inc.i.i:                                      ; preds = %cond.false.i.i.for.inc.i.i_crit_edge, %cond.true.i.i.for.inc.i.i_crit_edge
  %36 = ptrtoint ptr %he.0108.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %he.0108.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i = and i32 %38, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.cond34.i.i_crit_edge

for.inc.i.i.do.cond34.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond34.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

do.cond34.i.i:                                    ; preds = %for.inc.i.i.do.cond34.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge
  %he.0.lcssa.i.i = phi ptr [ %25, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge ], [ %37, %for.inc.i.i.do.cond34.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %he.0.lcssa.i.i, %21
  br i1 %cmp.not.i.i, label %do.end39.i.i, label %do.cond34.i.i.do.body16.i.i_crit_edge

do.cond34.i.i.do.body16.i.i_crit_edge:            ; preds = %do.cond34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16.i.i

do.end39.i.i:                                     ; preds = %do.cond34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call47.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %do.end39.i.i.do.end60.i.i_crit_edge

do.end39.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i.i

lor.lhs.false49.i.i:                              ; preds = %do.end39.i.i
  %call50.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false49.i.i.do.end60.i.i_crit_edge

lor.lhs.false49.i.i.do.end60.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i.i

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false49.i.i
  %call53.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %land.lhs.true52.i.i.do.end60.i.i_crit_edge, label %land.lhs.true55.i.i

land.lhs.true52.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i.i

land.lhs.true55.i.i:                              ; preds = %land.lhs.true52.i.i
  %.b9091.i.i = load i1, ptr @__rhashtable_lookup.__warned.4, align 1
  br i1 %.b9091.i.i, label %land.lhs.true55.i.i.do.end60.i.i_crit_edge, label %if.then57.i.i

land.lhs.true55.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_lookup.__warned.4, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 614, ptr noundef nonnull @.str.3) #10
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %land.lhs.true55.i.i.do.end60.i.i_crit_edge, %land.lhs.true52.i.i.do.end60.i.i_crit_edge, %lor.lhs.false49.i.i.do.end60.i.i_crit_edge, %do.end39.i.i.do.end60.i.i_crit_edge
  %tobool62.not.i.i = icmp eq ptr %40, null
  br i1 %tobool62.not.i.i, label %__rhashtable_lookup.exit.thread.i, label %do.end60.i.i.if.then.i.i.i.i_crit_edge, !prof !82

do.end60.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i.i

__rhashtable_lookup.exit.thread.i:                ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #10
  br label %rhashtable_lookup.exit

__rhashtable_lookup.exit.i:                       ; preds = %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #10
  %tobool.not.i1 = icmp eq ptr %he.0108.i.i, null
  br i1 %tobool.not.i1, label %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, label %cond.true.i

__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge: ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rhashtable_lookup.exit

cond.true.i:                                      ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i = zext i16 %42 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i.i
  br label %rhashtable_lookup.exit

rhashtable_lookup.exit:                           ; preds = %cond.true.i, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, %__rhashtable_lookup.exit.thread.i
  %cond.i = phi ptr [ %add.ptr.i.i, %cond.true.i ], [ null, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge ], [ null, %__rhashtable_lookup.exit.thread.i ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i2, label %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rhashtable_lookup.exit
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.18) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  %43 = call i32 @llvm.read_register.i32(metadata !68) #10
  %and.i.i.i.i.i9 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %cond.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_replace_fast(ptr noundef %ht, ptr noundef %obj_old, ptr noundef %obj_new, [7 x i32] %params.coerce) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b41 = load i1, ptr @rhashtable_replace_fast.__warned, align 1
  br i1 %.b41, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rhashtable_replace_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1210, ptr noundef nonnull @.str.3) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %params.coerce.fca.0.extract.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i to ptr
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i)
  %tobool.not.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i, 0
  %conv.i.i = and i32 %params.coerce.fca.0.extract.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool4.not.i.i = icmp eq i32 %conv.i.i, 0
  %key_len6.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i = lshr i32 %params.coerce.fca.1.extract.i.i, 16
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  %7 = getelementptr i8, ptr %obj_new, i32 %params.sroa.3.4.extract.shift.i.i
  br label %while.cond

while.cond:                                       ; preds = %do.end32.while.cond_crit_edge, %do.end10
  %tbl.0 = phi ptr [ %5, %do.end10 ], [ %55, %do.end32.while.cond_crit_edge ]
  %8 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %9 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %obj_old, i32 %idx.neg.i.i.i
  br i1 %tobool.not.i.i, label %if.then.i.i.i188.i, label %cond.true.i.i, !prof !80

cond.true.i.i:                                    ; preds = %while.cond
  br i1 %tobool4.not.i.i, label %cond.false.i.i, label %cond.true.i.i.cond.true.i170.i_crit_edge

cond.true.i.i.cond.true.i170.i_crit_edge:         ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true.i170.i

cond.false.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %key_len6.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %key_len6.i.i, align 2
  %conv7.i.i = zext i16 %11 to i32
  br label %cond.true.i170.i

cond.true.i170.i:                                 ; preds = %cond.false.i.i, %cond.true.i.i.cond.true.i170.i_crit_edge
  %cond.i.i = phi i32 [ %conv7.i.i, %cond.false.i.i ], [ %conv.i.i, %cond.true.i.i.cond.true.i170.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0, i32 0, i32 2
  %12 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hash_rnd.i.i, align 8
  %call8.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i, i32 noundef %cond.i.i, i32 noundef %13) #10
  %14 = ptrtoint ptr %tbl.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tbl.0, align 128
  %sub.i.i.i313.i = add i32 %15, -1
  %and.i3.i.i314.i = and i32 %sub.i.i.i313.i, %call8.i.i
  %16 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i164315.i = zext i16 %17 to i32
  %idx.neg.i.i165316.i = sub nsw i32 0, %conv.i.i164315.i
  %add.ptr.i.i166319.i = getelementptr i8, ptr %obj_new, i32 %idx.neg.i.i165316.i
  br i1 %tobool4.not.i.i, label %cond.false.i173.i, label %cond.true.i170.i.cond.end.i177.i_crit_edge

cond.true.i170.i.cond.end.i177.i_crit_edge:       ; preds = %cond.true.i170.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i177.i

cond.false.i173.i:                                ; preds = %cond.true.i170.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %key_len6.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %key_len6.i.i, align 2
  %conv7.i172.i = zext i16 %19 to i32
  br label %cond.end.i177.i

cond.end.i177.i:                                  ; preds = %cond.false.i173.i, %cond.true.i170.i.cond.end.i177.i_crit_edge
  %cond.i174.i = phi i32 [ %conv7.i172.i, %cond.false.i173.i ], [ %conv.i.i, %cond.true.i170.i.cond.end.i177.i_crit_edge ]
  %20 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hash_rnd.i.i, align 8
  %call8.i176.i = tail call i32 %6(ptr noundef %add.ptr.i.i166319.i, i32 noundef %cond.i174.i, i32 noundef %21) #10
  br label %rht_head_hashfn.exit294.i

if.then.i.i.i188.i:                               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0, i32 0, i32 2
  %22 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hash_rnd.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i
  %24 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %26 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %25(ptr noundef %add.ptr.i.i, i32 noundef %27, i32 noundef %23) #10
  %28 = ptrtoint ptr %tbl.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tbl.0, align 128
  %sub.i.i.i.i62 = add i32 %29, -1
  %and.i3.i.i.i63 = and i32 %sub.i.i.i.i62, %call.i.i.i.i
  %30 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %conv.i.i164305.pn.in.i64 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i164305.pn.i65 = zext i16 %conv.i.i164305.pn.in.i64 to i32
  %31 = sub nsw i32 0, %conv.i.i164305.pn.i65
  %add.ptr.i181.i66 = getelementptr i8, ptr %7, i32 %31
  %32 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hash_rnd.i.i.i, align 8
  %34 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %36 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i187.i = tail call i32 %35(ptr noundef %add.ptr.i181.i66, i32 noundef %37, i32 noundef %33) #10
  br label %rht_head_hashfn.exit294.i

rht_head_hashfn.exit294.i:                        ; preds = %if.then.i.i.i188.i, %cond.end.i177.i
  %and.i3.i.i308.i = phi i32 [ %and.i3.i.i314.i, %cond.end.i177.i ], [ %and.i3.i.i.i63, %if.then.i.i.i188.i ]
  %hash.2.i.i.sink.i291.i = phi i32 [ %call8.i176.i, %cond.end.i177.i ], [ %call.i.i.i187.i, %if.then.i.i.i188.i ]
  %38 = ptrtoint ptr %tbl.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tbl.0, align 128
  %sub.i.i.i292.i = add i32 %39, -1
  %and.i3.i.i293.i = and i32 %sub.i.i.i292.i, %hash.2.i.i.sink.i291.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i3.i.i308.i, i32 %and.i3.i.i293.i)
  %cmp.not.i = icmp eq i32 %and.i3.i.i308.i, %and.i3.i.i293.i
  br i1 %cmp.not.i, label %if.end.i, label %rht_head_hashfn.exit294.i.land.rhs_crit_edge

rht_head_hashfn.exit294.i.land.rhs_crit_edge:     ; preds = %rht_head_hashfn.exit294.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

if.end.i:                                         ; preds = %rht_head_hashfn.exit294.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0, i32 0, i32 1
  %40 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i295.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i295.i, label %cond.false.i297.i, label %cond.true.i296.i, !prof !82

cond.true.i296.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0, i32 noundef %and.i3.i.i308.i) #10
  br label %rht_bucket_var.exit.i

cond.false.i297.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %tbl.0, i32 0, i32 8, i32 %and.i3.i.i308.i
  br label %rht_bucket_var.exit.i

rht_bucket_var.exit.i:                            ; preds = %cond.false.i297.i, %cond.true.i296.i
  %cond.i298.i = phi ptr [ %call.i.i, %cond.true.i296.i ], [ %arrayidx.i.i, %cond.false.i297.i ]
  %tobool.not.i42 = icmp eq ptr %cond.i298.i, null
  br i1 %tobool.not.i42, label %rht_bucket_var.exit.i.land.rhs_crit_edge, label %if.end4.i

rht_bucket_var.exit.i.land.rhs_crit_edge:         ; preds = %rht_bucket_var.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

if.end4.i:                                        ; preds = %rht_bucket_var.exit.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0, ptr noundef nonnull %cond.i298.i) #10
  %call.i300.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0, i32 noundef %and.i3.i.i308.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i300.i)
  %tobool.not.i301.i = icmp eq i32 %call.i300.i, 0
  br i1 %tobool.not.i301.i, label %land.lhs.true.i.i, label %if.end4.i.rht_ptr.exit.i_crit_edge

if.end4.i.rht_ptr.exit.i_crit_edge:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i

land.lhs.true.i.i:                                ; preds = %if.end4.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.rht_ptr.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.rht_ptr.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b7.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i, label %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge:      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 377, ptr noundef nonnull @.str.1) #10
  br label %rht_ptr.exit.i

rht_ptr.exit.i:                                   ; preds = %if.then.i.i, %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, %land.lhs.true.i.i.rht_ptr.exit.i_crit_edge, %if.end4.i.rht_ptr.exit.i_crit_edge
  %42 = ptrtoint ptr %cond.i298.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cond.i298.i, align 4
  %44 = ptrtoint ptr %43 to i32
  %and.i.i.i = and i32 %44, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %45 = ptrtoint ptr %cond.i298.i to i32
  %or.i.i.i = or i32 %45, 1
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 %or.i.i.i, i32 %and.i.i.i
  %and.i321.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i321.i)
  %tobool.i.not322.i = icmp eq i32 %and.i321.i, 0
  br i1 %tobool.i.not322.i, label %for.body.preheader.i, label %rht_ptr.exit.i.for.end.i_crit_edge

rht_ptr.exit.i.for.end.i_crit_edge:               ; preds = %rht_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.preheader.i:                             ; preds = %rht_ptr.exit.i
  %46 = inttoptr i32 %cond.i.i.i to ptr
  %cmp7.not.i75 = icmp eq ptr %46, %obj_old
  br i1 %cmp7.not.i75, label %for.body.preheader.i.do.body.i_crit_edge, label %for.body.preheader.i.if.then8.i_crit_edge

for.body.preheader.i.if.then8.i_crit_edge:        ; preds = %for.body.preheader.i
  br label %if.then8.i

for.body.preheader.i.do.body.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

for.body.i:                                       ; preds = %do.end100.i
  %cmp7.not.i = icmp eq ptr %52, %obj_old
  br i1 %cmp7.not.i, label %for.body.i.do.body.i_crit_edge, label %for.body.i.if.then8.i_crit_edge

for.body.i.if.then8.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

for.body.i.do.body.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then8.i:                                       ; preds = %for.body.i.if.then8.i_crit_edge, %for.body.preheader.i.if.then8.i_crit_edge
  %he.0323.i76 = phi ptr [ %52, %for.body.i.if.then8.i_crit_edge ], [ %46, %for.body.preheader.i.if.then8.i_crit_edge ]
  %call90.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0, i32 noundef %and.i3.i.i308.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %tobool91.not.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.not.i, label %land.lhs.true92.i, label %if.then8.i.do.end100.i_crit_edge

if.then8.i.do.end100.i_crit_edge:                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end100.i

do.body.i:                                        ; preds = %for.body.i.do.body.i_crit_edge, %for.body.preheader.i.do.body.i_crit_edge
  %pprev.0324.i.lcssa = phi ptr [ %he.0323.i76, %for.body.i.do.body.i_crit_edge ], [ null, %for.body.preheader.i.do.body.i_crit_edge ]
  %47 = ptrtoint ptr %obj_old to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %obj_old, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !93
  %49 = ptrtoint ptr %obj_new to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %48, ptr %obj_new, align 4
  %tobool46.not.i = icmp eq ptr %pprev.0324.i.lcssa, null
  br i1 %tobool46.not.i, label %if.else87.i, label %do.body48.i

do.body48.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !94
  %50 = ptrtoint ptr %pprev.0324.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %obj_new, ptr %pprev.0324.i.lcssa, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0, ptr noundef nonnull %cond.i298.i) #10
  br label %while.end

if.else87.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0, ptr noundef nonnull %cond.i298.i, ptr noundef %obj_new) #10
  br label %while.end

land.lhs.true92.i:                                ; preds = %if.then8.i
  %call93.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %tobool94.not.i = icmp eq i32 %call93.i, 0
  br i1 %tobool94.not.i, label %land.lhs.true92.i.do.end100.i_crit_edge, label %land.lhs.true95.i

land.lhs.true92.i.do.end100.i_crit_edge:          ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end100.i

land.lhs.true95.i:                                ; preds = %land.lhs.true92.i
  %.b160.i = load i1, ptr @__rhashtable_replace_fast.__warned, align 1
  br i1 %.b160.i, label %land.lhs.true95.i.do.end100.i_crit_edge, label %if.then97.i

land.lhs.true95.i.do.end100.i_crit_edge:          ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end100.i

if.then97.i:                                      ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_replace_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1163, ptr noundef nonnull @.str.1) #10
  br label %do.end100.i

do.end100.i:                                      ; preds = %if.then97.i, %land.lhs.true95.i.do.end100.i_crit_edge, %land.lhs.true92.i.do.end100.i_crit_edge, %if.then8.i.do.end100.i_crit_edge
  %51 = ptrtoint ptr %he.0323.i76 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %he.0323.i76, align 4
  %53 = ptrtoint ptr %52 to i32
  %and.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i, label %do.end100.i.for.end.i_crit_edge

do.end100.i.for.end.i_crit_edge:                  ; preds = %do.end100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %do.end100.i.for.end.i_crit_edge, %rht_ptr.exit.i.for.end.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0, ptr noundef nonnull %cond.i298.i) #10
  br label %land.rhs

land.rhs:                                         ; preds = %for.end.i, %rht_bucket_var.exit.i.land.rhs_crit_edge, %rht_head_hashfn.exit294.i.land.rhs_crit_edge
  %retval.0.i.ph = phi i32 [ -2, %for.end.i ], [ -2, %rht_bucket_var.exit.i.land.rhs_crit_edge ], [ -22, %rht_head_hashfn.exit294.i.land.rhs_crit_edge ]
  %future_tbl = getelementptr inbounds %struct.bucket_table, ptr %tbl.0, i32 0, i32 5
  %54 = ptrtoint ptr %future_tbl to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %future_tbl, align 4
  %call19 = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %lor.lhs.false21, label %land.rhs.do.end32_crit_edge

land.rhs.do.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

lor.lhs.false21:                                  ; preds = %land.rhs
  %call22 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %lor.lhs.false21.do.end32_crit_edge

lor.lhs.false21.do.end32_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

land.lhs.true24:                                  ; preds = %lor.lhs.false21
  %call25 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true24.do.end32_crit_edge, label %land.lhs.true27

land.lhs.true24.do.end32_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %.b3940 = load i1, ptr @rhashtable_replace_fast.__warned.7, align 1
  br i1 %.b3940, label %land.lhs.true27.do.end32_crit_edge, label %if.then29

land.lhs.true27.do.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rhashtable_replace_fast.__warned.7, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1219, ptr noundef nonnull @.str.3) #10
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %land.lhs.true27.do.end32_crit_edge, %land.lhs.true24.do.end32_crit_edge, %lor.lhs.false21.do.end32_crit_edge, %land.rhs.do.end32_crit_edge
  %tobool34.not = icmp eq ptr %55, null
  br i1 %tobool34.not, label %do.end32.while.end_crit_edge, label %do.end32.while.cond_crit_edge

do.end32.while.cond_crit_edge:                    ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

do.end32.while.end_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end32.while.end_crit_edge, %if.else87.i, %do.body48.i
  %retval.0.i72 = phi i32 [ 0, %if.else87.i ], [ 0, %do.body48.i ], [ %retval.0.i.ph, %do.end32.while.end_crit_edge ]
  %call.i43 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i43, label %while.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i46

while.end.rcu_read_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i46:                                ; preds = %while.end
  %call1.i44 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i48

land.lhs.true.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i48:                               ; preds = %land.lhs.true.i46
  %.b4.i47 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47, label %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, label %if.then.i49

land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i49:                                      ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.18) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i49, %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, %while.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  %56 = tail call i32 @llvm.read_register.i32(metadata !68) #10
  %and.i.i.i.i.i50 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %sub.i.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i51, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i32 %retval.0.i72
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #10
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #10
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !96

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #10, !srcloc !97
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !82

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !99
  %7 = tail call i32 @llvm.read_register.i32(metadata !68) #10
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !100
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !101
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #10
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !102
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #10
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !80

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #10, !srcloc !103
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #10, !srcloc !105
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  %3 = tail call i32 @llvm.read_register.i32(metadata !68) #10
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !107
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !108
  %2 = tail call i32 @llvm.read_register.i32(metadata !68) #10
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_walk_start_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ila_cmpfn(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %obj) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %locator_match = getelementptr inbounds %struct.ila_params, ptr %obj, i32 0, i32 1
  %0 = ptrtoint ptr %locator_match to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %locator_match, align 8
  %key = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %5)
  %cmp = icmp ne i64 %1, %5
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__alloc_bucket_spinlocks(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ila_nf_input(ptr nocapture noundef readnone %priv, ptr noundef %skb, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %4 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 127
  %7 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ila_net_id to i32))
  %9 = load i32, ptr @ila_net_id, align 4
  %call2.i = tail call fastcc ptr @net_generic(ptr noundef %8, i32 noundef %9) #10
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %10 = tail call i32 @llvm.read_register.i32(metadata !68) #10
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %4, align 8
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ifindex.i, align 4
  %call.i1.i = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %call2.i, ptr noundef %daddr.i, [7 x i32] [i32 67108872, i32 524320, i32 1048576, i32 16777472, i32 0, i32 0, i32 ptrtoint (ptr @ila_cmpfn to i32)]) #10
  %tobool.not14.i.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool.not14.i.i, label %rcu_read_lock.exit.i.if.end.i_crit_edge, label %rcu_read_lock.exit.i.while.body.i.i_crit_edge

rcu_read_lock.exit.i.while.body.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i
  br label %while.body.i.i

rcu_read_lock.exit.i.if.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %rcu_read_lock.exit.i.while.body.i.i_crit_edge
  %ila.015.i.i = phi ptr [ %21, %if.end.i.i.while.body.i.i_crit_edge ], [ %call.i1.i, %rcu_read_lock.exit.i.while.body.i.i_crit_edge ]
  %ifindex1.i.i.i = getelementptr inbounds %struct.ila_xlat_params, ptr %ila.015.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %ifindex1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ifindex1.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp.i.i.i = icmp eq i32 %19, %17
  %tobool2.not.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %tobool2.not.i.i, label %if.then.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %next.i.i = getelementptr inbounds %struct.ila_map, ptr %ila.015.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %next.i.i, align 4
  %tobool.not.i2.i = icmp eq ptr %21, null
  br i1 %tobool.not.i2.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ila_update_ipv6_locator(ptr noundef %skb, ptr noundef nonnull %ila.015.i.i, i1 noundef zeroext false) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.i.i.if.end.i_crit_edge, %rcu_read_lock.exit.i.if.end.i_crit_edge
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i3.i, label %if.end.i.ila_xlat_addr.exit_crit_edge, label %land.lhs.true.i6.i

if.end.i.ila_xlat_addr.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ila_xlat_addr.exit

land.lhs.true.i6.i:                               ; preds = %if.end.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.ila_xlat_addr.exit_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.ila_xlat_addr.exit_crit_edge:  ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ila_xlat_addr.exit

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.ila_xlat_addr.exit_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.ila_xlat_addr.exit_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ila_xlat_addr.exit

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.18) #10
  br label %ila_xlat_addr.exit

ila_xlat_addr.exit:                               ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.ila_xlat_addr.exit_crit_edge, %land.lhs.true.i6.i.ila_xlat_addr.exit_crit_edge, %if.end.i.ila_xlat_addr.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  %22 = tail call i32 @llvm.read_register.i32(metadata !68) #10
  %and.i.i.i.i.i10.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i11.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ila_update_ipv6_locator(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !60, !62, !63, !65, !66}
!llvm.named.register.sp = !{!68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/ipv6/ila/ila_xlat.c", i32 255, i32 11}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__ila_hash_secret_init.___done, !5, !"___done", i1 false, i1 false}
!5 = !{!"../net/ipv6/ila/ila_xlat.c", i32 38, i32 2}
!6 = !{ptr @__ila_hash_secret_init.___once_key, !5, !"___once_key", i1 false, i1 false}
!7 = !{ptr @hashrnd, !8, !"hashrnd", i1 false, i1 false}
!8 = !{!"../net/ipv6/ila/ila_xlat.c", i32 35, i32 12}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rhashtable.h", i32 1210, i32 8}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rhashtable.h", i32 1219, i32 16}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rhashtable.h", i32 1163, i32 2}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../net/ipv6/ila/ila_xlat.c", i32 301, i32 10}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../net/ipv6/ila/ila_xlat.c", i32 315, i32 11}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!52 = !{ptr @rht_params, !53, !"rht_params", i1 false, i1 false}
!53 = !{!"../net/ipv6/ila/ila_xlat.c", i32 85, i32 39}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!56 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/net/netlink.h", i32 991, i32 3}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!62 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @alloc_ila_locks.key, !64, !"key", i1 false, i1 false}
!64 = !{!"../net/ipv6/ila/ila_xlat.c", i32 30, i32 9}
!65 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ila_nf_hook_ops, !67, !"ila_nf_hook_ops", i1 false, i1 false}
!67 = !{!"../net/ipv6/ila/ila_xlat.c", i32 195, i32 33}
!68 = !{!"sp"}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"auto-init"}
!79 = !{i64 2148866609, i64 2148866614, i64 2148866635, i64 2148866679, i64 2148866713, i64 2148866734}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{i8 0, i8 2}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{i64 2156073595, i64 2156074086, i64 2156073632, i64 2156073688, i64 2156073722, i64 2156073746, i64 2156073787, i64 2156073808, i64 2156073836, i64 2156073870}
!84 = !{i64 2149681028}
!85 = !{i64 2149681294}
!86 = !{i64 2148179296, i64 2148179322, i64 2148179351, i64 2148179385, i64 2148179416, i64 2148179439}
!87 = !{i64 2157527956}
!88 = !{i64 2157538324}
!89 = !{i64 2156099515}
!90 = !{i64 2148181761, i64 2148181787, i64 2148181816, i64 2148181850, i64 2148181881, i64 2148181904}
!91 = !{i64 2156032139}
!92 = !{i64 2156035573}
!93 = !{i64 2156117061}
!94 = !{i64 2156124228}
!95 = !{i64 2149846150}
!96 = !{!"branch_weights", i32 2146410443, i32 1073205}
!97 = !{i64 2148188154, i64 2148188186, i64 2148188215, i64 2148188249, i64 2148188280, i64 2148188303}
!98 = !{i64 2148277235}
!99 = !{i64 2149846310}
!100 = !{i64 2149846587}
!101 = !{i64 2149846429}
!102 = !{i64 2149846792}
!103 = !{i64 2149847855, i64 2149848347, i64 2149847892, i64 2149847948, i64 2149847982, i64 2149848006, i64 2149848047, i64 2149848068, i64 2149848096, i64 2149848130}
!104 = !{i64 2148276122}
!105 = !{i64 2148186541, i64 2148186573, i64 2148186602, i64 2148186636, i64 2148186667, i64 2148186690}
!106 = !{i64 2149849250}
!107 = !{i64 2156025212}
!108 = !{i64 2156027511}
