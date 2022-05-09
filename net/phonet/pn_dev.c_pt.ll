; ModuleID = '/llk/IR_all_yes/net/phonet/pn_dev.c_pt.bc'
source_filename = "../net/phonet/pn_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.phonet_device = type { %struct.list_head, ptr, [2 x i32], %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.phonet_device_list = type { %struct.list_head, %struct.mutex }
%struct.phonet_net = type { %struct.phonet_device_list, %struct.phonet_routes }
%struct.phonet_routes = type { %struct.mutex, [64 x ptr] }
%struct.if_phonet_req = type { [16 x i8], %union.anon.147 }
%union.anon.147 = type { %struct.if_phonet_autoconf }
%struct.if_phonet_autoconf = type { i8 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@phonet_device_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/phonet/pn_dev.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@phonet_address_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@phonet_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @phonet_init_net, ptr null, ptr @phonet_exit_net, ptr null, ptr @phonet_net_id, i32 448 }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pnresource\00", [21 x i8] zeroinitializer }, align 32
@init_net = external dso_local local_unnamed_addr global %struct.net, align 128
@pn_res_seq_ops = external dso_local constant %struct.seq_operations, align 4
@phonet_device_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @phonet_device_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@phonet_route_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@phonet_route_output.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@phonet_net_id = internal global i32 0, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__phonet_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"phonet\00", [25 x i8] zeroinitializer }, align 32
@pn_sock_seq_ops = external dso_local constant %struct.seq_operations, align 4
@phonet_init_net.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pnn->pndevs.lock\00", [46 x i8] zeroinitializer }, align 32
@phonet_init_net.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pnn->routes.lock\00", [46 x i8] zeroinitializer }, align 32
@phonet_exit_net.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@phonet_device_autoconf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@phonet_device_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 116, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"phonet_net_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 325, i32 33 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 339, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [23 x i8] c"phonet_device_notifier\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 297, i32 30 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 400, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 45, i32 7 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 695, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 723, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 307, i32 7 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 312, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 313, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [23 x i8] c"../net/phonet/pn_dev.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 243, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @phonet_net_ops, ptr @.str.2, ptr @phonet_device_notifier, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @phonet_init_net.__key, ptr @.str.9, ptr @phonet_init_net.__key.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phonet_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phonet_device_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phonet_init_net.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phonet_init_net.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @phonet_device_list(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @phonet_pernet(ptr noundef %net)
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @phonet_pernet(ptr noundef %net) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @phonet_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !56
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.3) #7
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #7
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !57
  %9 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret ptr %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @phonet_device_get(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i50 = tail call fastcc ptr @phonet_pernet(ptr noundef %net) #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !56
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b49 = load i1, ptr @phonet_device_get.__warned, align 1
  br i1 %.b49, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phonet_device_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 116, ptr noundef nonnull @.str.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %4 = ptrtoint ptr %call.i50 to i32
  call void @__asan_load4_noabort(i32 %4)
  %pnd.065 = load volatile ptr, ptr %call.i50, align 4
  %cmp.not66 = icmp eq ptr %pnd.065, %call.i50
  br i1 %cmp.not66, label %do.end.dev_hold.exit_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.dev_hold.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_hold.exit

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %do.end.for.body_crit_edge
  %pnd.067 = phi ptr [ %pnd.0, %if.end32.for.body_crit_edge ], [ %pnd.065, %do.end.for.body_crit_edge ]
  %netdev = getelementptr inbounds %struct.phonet_device, ptr %pnd.067, i32 0, i32 1
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 4
  %tobool13.not = icmp eq ptr %6, null
  br i1 %tobool13.not, label %do.body18, label %do.end26, !prof !58

do.body18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/phonet/pn_dev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

do.end26:                                         ; preds = %for.body
  %reg_state = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 121
  %7 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load)
  %cmp27 = icmp eq i8 %bf.load, 1
  br i1 %cmp27, label %land.lhs.true28, label %do.end26.if.end32_crit_edge

do.end26.if.end32_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.lhs.true28:                                  ; preds = %do.end26
  %flags = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp30.not = icmp eq i32 %and, 0
  br i1 %cmp30.not, label %land.lhs.true28.if.end32_crit_edge, label %do.body1.i

land.lhs.true28.if.end32_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.end32:                                         ; preds = %land.lhs.true28.if.end32_crit_edge, %do.end26.if.end32_crit_edge
  %10 = ptrtoint ptr %pnd.067 to i32
  call void @__asan_load4_noabort(i32 %10)
  %pnd.0 = load volatile ptr, ptr %pnd.067, align 4
  %cmp.not = icmp eq ptr %pnd.0, %call.i50
  br i1 %cmp.not, label %if.end32.dev_hold.exit_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end32.dev_hold.exit_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %land.lhs.true28
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !60
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 118
  %12 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcpu_refcnt.i, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %20, %14
  %21 = inttoptr i32 %add.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add13.i = add i32 %23, 1
  store i32 %add13.i, ptr %21, align 4
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !61
  %and.i.i.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !58

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #7, !srcloc !62
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.end32.dev_hold.exit_crit_edge, %do.end.dev_hold.exit_crit_edge
  %dev.163 = phi ptr [ %6, %do.end30.i ], [ null, %do.end.dev_hold.exit_crit_edge ], [ null, %if.end32.dev_hold.exit_crit_edge ]
  %call.i52 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i52, label %dev_hold.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i55

dev_hold.exit.rcu_read_unlock.exit_crit_edge:     ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i55:                                ; preds = %dev_hold.exit
  %call1.i53 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53)
  %tobool.not.i54 = icmp eq i32 %call1.i53, 0
  br i1 %tobool.not.i54, label %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i57

land.lhs.true.i55.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i57:                               ; preds = %land.lhs.true.i55
  %.b4.i56 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56, label %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, label %if.then.i58

land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i58:                                      ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i58, %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, %dev_hold.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !57
  %25 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i.i.i59 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i59 to ptr
  %preempt_count.i.i.i.i60 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i60, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i60, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret ptr %dev.163
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phonet_address_add(ptr noundef %dev, i8 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %call.i = tail call fastcc ptr @phonet_pernet(ptr noundef %1) #7
  %lock = getelementptr inbounds %struct.phonet_device_list, ptr %call.i, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %call.i.i = tail call fastcc ptr @phonet_pernet(ptr noundef %3) #7
  %lock.i = getelementptr inbounds %struct.phonet_device_list, ptr %call.i.i, i32 0, i32 1
  %call2.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock.i) #7
  br i1 %call2.i, label %entry.for.cond.i_crit_edge, label %do.body5.i, !prof !63

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

do.body5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/phonet/pn_dev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 67, 0\0A.popsection", ""() #7, !srcloc !64
  unreachable

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %pnd.0.in.i = phi ptr [ %pnd.0.i, %for.body.i.for.cond.i_crit_edge ], [ %call.i.i, %entry.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %pnd.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pnd.0.i = load ptr, ptr %pnd.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %pnd.0.i, %call.i.i
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %netdev.i = getelementptr inbounds %struct.phonet_device, ptr %pnd.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev.i, align 4
  %cmp15.i = icmp eq ptr %6, %dev
  br i1 %cmp15.i, label %__phonet_get.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

__phonet_get.exit:                                ; preds = %for.body.i
  %cmp = icmp eq ptr %pnd.0.i, null
  br i1 %cmp, label %__phonet_get.exit.if.then_crit_edge, label %__phonet_get.exit.if.else_crit_edge

__phonet_get.exit.if.else_crit_edge:              ; preds = %__phonet_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

__phonet_get.exit.if.then_crit_edge:              ; preds = %__phonet_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %__phonet_get.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %7 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i, align 4
  %call.i.i19 = tail call fastcc ptr @phonet_pernet(ptr noundef %8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2592, i32 noundef 28) #10
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %if.then.if.end11_crit_edge, label %if.end.i

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end.i:                                         ; preds = %if.then
  %netdev.i20 = getelementptr inbounds %struct.phonet_device, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %netdev.i20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %netdev.i20, align 8
  %addrs.i = getelementptr inbounds %struct.phonet_device, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %addrs.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 0, ptr %addrs.i, align 4
  %lock.i21 = getelementptr inbounds %struct.phonet_device_list, ptr %call.i.i19, i32 0, i32 1
  %call3.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock.i21) #7
  br i1 %call3.i, label %do.end13.i, label %do.body7.i, !prof !63

do.body7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/phonet/pn_dev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 57, 0\0A.popsection", ""() #7, !srcloc !65
  unreachable

do.end13.i:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %call.i.i19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i.i19, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %call.i.i19, ptr noundef %13) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end13.i.if.else_crit_edge

do.end13.i.if.else_crit_edge:                     ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end.i.i.i:                                     ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %call7.i.i, align 8
  %prev2.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i19, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !66
  %16 = ptrtoint ptr %call.i.i19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call7.i.i, ptr %call.i.i19, align 4
  %prev37.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %prev37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %prev37.i.i.i, align 4
  br label %if.else

if.else:                                          ; preds = %if.end.i.i.i, %do.end13.i.if.else_crit_edge, %__phonet_get.exit.if.else_crit_edge
  %pnd.0.ph = phi ptr [ %call7.i.i, %if.end.i.i.i ], [ %call7.i.i, %do.end13.i.if.else_crit_edge ], [ %pnd.0.i, %__phonet_get.exit.if.else_crit_edge ]
  %18 = lshr i8 %addr, 2
  %19 = zext i8 %18 to i32
  %addrs = getelementptr inbounds %struct.phonet_device, ptr %pnd.0.ph, i32 0, i32 2
  %call7 = tail call i32 @_test_and_set_bit(i32 noundef %19, ptr noundef %addrs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %spec.select = select i1 %tobool8.not, i32 0, i32 -17
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then.if.end11_crit_edge
  %err.0 = phi i32 [ %spec.select, %if.else ], [ -12, %if.then.if.end11_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phonet_address_del(ptr noundef readonly %dev, i8 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %call.i = tail call fastcc ptr @phonet_pernet(ptr noundef %1) #7
  %lock = getelementptr inbounds %struct.phonet_device_list, ptr %call.i, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %call.i.i = tail call fastcc ptr @phonet_pernet(ptr noundef %3) #7
  %lock.i = getelementptr inbounds %struct.phonet_device_list, ptr %call.i.i, i32 0, i32 1
  %call2.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock.i) #7
  br i1 %call2.i, label %entry.for.cond.i_crit_edge, label %do.body5.i, !prof !63

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

do.body5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/phonet/pn_dev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 67, 0\0A.popsection", ""() #7, !srcloc !64
  unreachable

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %pnd.0.in.i = phi ptr [ %pnd.0.i, %for.body.i.for.cond.i_crit_edge ], [ %call.i.i, %entry.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %pnd.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pnd.0.i = load ptr, ptr %pnd.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %pnd.0.i, %call.i.i
  br i1 %cmp.not.i, label %for.cond.i.if.end10.thread_crit_edge, label %for.body.i

for.cond.i.if.end10.thread_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.thread

for.body.i:                                       ; preds = %for.cond.i
  %netdev.i = getelementptr inbounds %struct.phonet_device, ptr %pnd.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev.i, align 4
  %cmp15.i = icmp eq ptr %6, %dev
  br i1 %cmp15.i, label %__phonet_get.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

__phonet_get.exit:                                ; preds = %for.body.i
  %tobool.not = icmp eq ptr %pnd.0.i, null
  br i1 %tobool.not, label %__phonet_get.exit.if.end10.thread_crit_edge, label %lor.lhs.false

__phonet_get.exit.if.end10.thread_crit_edge:      ; preds = %__phonet_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.thread

lor.lhs.false:                                    ; preds = %__phonet_get.exit
  %7 = lshr i8 %addr, 2
  %8 = zext i8 %7 to i32
  %addrs = getelementptr inbounds %struct.phonet_device, ptr %pnd.0.i, i32 0, i32 2
  %call3 = tail call i32 @_test_and_clear_bit(i32 noundef %8, ptr noundef %addrs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false.if.end10.thread_crit_edge, label %if.else

lor.lhs.false.if.end10.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.thread

if.else:                                          ; preds = %lor.lhs.false
  %call.i29 = tail call i32 @_find_first_bit_be(ptr noundef %addrs, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i29)
  %cmp4.i = icmp eq i32 %call.i29, 64
  br i1 %cmp4.i, label %if.then8, label %if.else.if.end10.thread_crit_edge

if.else.if.end10.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.thread

if.then8:                                         ; preds = %if.else
  %call.i.i30 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pnd.0.i) #7
  br i1 %call.i.i30, label %if.end.i.i, label %if.then8.do.end_crit_edge

if.then8.do.end_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pnd.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %pnd.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pnd.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %do.end

if.end10.thread:                                  ; preds = %if.else.if.end10.thread_crit_edge, %lor.lhs.false.if.end10.thread_crit_edge, %__phonet_get.exit.if.end10.thread_crit_edge, %for.cond.i.if.end10.thread_crit_edge
  %err.0.ph = phi i32 [ 0, %if.else.if.end10.thread_crit_edge ], [ -99, %__phonet_get.exit.if.end10.thread_crit_edge ], [ -99, %lor.lhs.false.if.end10.thread_crit_edge ], [ -99, %for.cond.i.if.end10.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %if.end20

do.end:                                           ; preds = %if.end.i.i, %if.then8.do.end_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pnd.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %rcu = getelementptr inbounds %struct.phonet_device, ptr %pnd.0.i, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 20 to ptr)) #7
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end10.thread
  %err.036 = phi i32 [ %err.0.ph, %if.end10.thread ], [ 0, %do.end ]
  ret i32 %err.036
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @phonet_address_get(ptr noundef readonly %dev, i8 noundef zeroext %daddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !56
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i.i, align 4
  %call.i.i = tail call fastcc ptr @phonet_pernet(ptr noundef %5) #7
  %call2.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i48 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i48, label %land.lhs.true.i49, label %rcu_read_lock.exit.for.cond.i.preheader_crit_edge

rcu_read_lock.exit.for.cond.i.preheader_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

land.lhs.true.i49:                                ; preds = %rcu_read_lock.exit
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i49.for.cond.i.preheader_crit_edge, label %land.lhs.true5.i

land.lhs.true.i49.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i49
  %.b31.i = load i1, ptr @__phonet_get_rcu.__warned, align 1
  br i1 %.b31.i, label %land.lhs.true5.i.for.cond.i.preheader_crit_edge, label %if.then.i50

land.lhs.true5.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

if.then.i50:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__phonet_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 80, ptr noundef nonnull @.str.1) #7
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i50, %land.lhs.true5.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i49.for.cond.i.preheader_crit_edge, %rcu_read_lock.exit.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %pnd.0.in.i = phi ptr [ %pnd.0.i, %for.body.i.for.cond.i_crit_edge ], [ %call.i.i, %for.cond.i.preheader ]
  %6 = ptrtoint ptr %pnd.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %pnd.0.i = load volatile ptr, ptr %pnd.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %pnd.0.i, %call.i.i
  br i1 %cmp.not.i, label %for.cond.i.if.end22_crit_edge, label %for.body.i

for.cond.i.if.end22_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

for.body.i:                                       ; preds = %for.cond.i
  %netdev.i = getelementptr inbounds %struct.phonet_device, ptr %pnd.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev.i, align 4
  %cmp13.i = icmp eq ptr %8, %dev
  br i1 %cmp13.i, label %__phonet_get_rcu.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

__phonet_get_rcu.exit:                            ; preds = %for.body.i
  %tobool.not = icmp eq ptr %pnd.0.i, null
  br i1 %tobool.not, label %__phonet_get_rcu.exit.if.end22_crit_edge, label %do.body

__phonet_get_rcu.exit.if.end22_crit_edge:         ; preds = %__phonet_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.body:                                          ; preds = %__phonet_get_rcu.exit
  %addrs = getelementptr inbounds %struct.phonet_device, ptr %pnd.0.i, i32 0, i32 2
  %call.i51 = tail call i32 @_find_first_bit_be(ptr noundef %addrs, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i51)
  %cmp4.i = icmp eq i32 %call.i51, 64
  br i1 %cmp4.i, label %do.body5, label %do.end10, !prof !58

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/phonet/pn_dev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 181, 0\0A.popsection", ""() #7, !srcloc !67
  unreachable

do.end10:                                         ; preds = %do.body
  %9 = lshr i8 %daddr, 2
  %10 = zext i8 %9 to i32
  %div3.i = lshr i32 %10, 5
  %arrayidx.i = getelementptr i32, ptr %addrs, i32 %div3.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %10, 31
  %13 = shl nuw i32 1, %and.i
  %14 = and i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14.not = icmp eq i32 %14, 0
  br i1 %tobool14.not, label %if.else, label %do.end10.if.end22_crit_edge

do.end10.if.end22_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.else:                                          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 @_find_first_bit_be(ptr noundef %addrs, i32 noundef 64) #7
  %call18.tr = trunc i32 %call18 to i8
  %conv19 = shl i8 %call18.tr, 2
  br label %if.end22

if.end22:                                         ; preds = %if.else, %do.end10.if.end22_crit_edge, %__phonet_get_rcu.exit.if.end22_crit_edge, %for.cond.i.if.end22_crit_edge
  %saddr.0 = phi i8 [ %conv19, %if.else ], [ %daddr, %do.end10.if.end22_crit_edge ], [ -1, %__phonet_get_rcu.exit.if.end22_crit_edge ], [ -1, %for.cond.i.if.end22_crit_edge ]
  %call.i52 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i52, label %if.end22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i55

if.end22.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i55:                                ; preds = %if.end22
  %call1.i53 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53)
  %tobool.not.i54 = icmp eq i32 %call1.i53, 0
  br i1 %tobool.not.i54, label %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i57

land.lhs.true.i55.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i57:                               ; preds = %land.lhs.true.i55
  %.b4.i56 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56, label %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, label %if.then.i58

land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i58:                                      ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i58, %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, %if.end22.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !57
  %15 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i.i.i59 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i59 to ptr
  %preempt_count.i.i.i.i60 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i60, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i60, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %saddr.0)
  %cmp = icmp eq i8 %saddr.0, -1
  br i1 %cmp, label %if.then25, label %rcu_read_unlock.exit.if.end36_crit_edge

rcu_read_unlock.exit.if.end36_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then25:                                        ; preds = %rcu_read_unlock.exit
  %19 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nd_net.i.i, align 4
  %call27 = tail call ptr @phonet_device_get(ptr noundef %20)
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then25.if.end36_crit_edge, label %if.then29

if.then25.if.end36_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then29:                                        ; preds = %if.then25
  %cmp30.not = icmp eq ptr %call27, %dev
  br i1 %cmp30.not, label %if.then29.do.body1.i_crit_edge, label %if.then32

if.then29.do.body1.i_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1.i

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = tail call zeroext i8 @phonet_address_get(ptr noundef nonnull %call27, i8 noundef zeroext %daddr)
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.then32, %if.then29.do.body1.i_crit_edge
  %saddr.1 = phi i8 [ %call33, %if.then32 ], [ -1, %if.then29.do.body1.i_crit_edge ]
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !60
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 118
  %22 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcpu_refcnt.i, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i, align 4
  %arrayidx.i63 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i63, align 4
  %add.i = add i32 %30, %24
  %31 = inttoptr i32 %add.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add13.i = add i32 %33, -1
  store i32 %add13.i, ptr %31, align 4
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !61
  %and.i.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !58

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #7, !srcloc !62
  br label %if.end36

if.end36:                                         ; preds = %dev_put.exit, %if.then25.if.end36_crit_edge, %rcu_read_unlock.exit.if.end36_crit_edge
  %saddr.3 = phi i8 [ %saddr.0, %rcu_read_unlock.exit.if.end36_crit_edge ], [ %saddr.1, %dev_put.exit ], [ -1, %if.then25.if.end36_crit_edge ]
  ret i8 %saddr.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phonet_address_lookup(ptr noundef %net, i8 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i36 = tail call fastcc ptr @phonet_pernet(ptr noundef %net) #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !56
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b35 = load i1, ptr @phonet_address_lookup.__warned, align 1
  br i1 %.b35, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phonet_address_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 213, ptr noundef nonnull @.str.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %4 = ptrtoint ptr %call.i36 to i32
  call void @__asan_load4_noabort(i32 %4)
  %pnd.046 = load volatile ptr, ptr %call.i36, align 4
  %cmp.not47 = icmp eq ptr %pnd.046, %call.i36
  br i1 %cmp.not47, label %do.end.found_crit_edge, label %for.body.lr.ph

do.end.found_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

for.body.lr.ph:                                   ; preds = %do.end
  %5 = lshr i8 %addr, 2
  %6 = zext i8 %5 to i32
  %div3.i = lshr i32 %6, 5
  %and.i = and i32 %6, 31
  %7 = shl nuw i32 1, %and.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pnd.048 = phi ptr [ %pnd.046, %for.body.lr.ph ], [ %pnd.0, %for.inc.for.body_crit_edge ]
  %netdev = getelementptr inbounds %struct.phonet_device, ptr %pnd.048, i32 0, i32 1
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  %reg_state = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 121
  %10 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load)
  %cmp12.not = icmp eq i8 %bf.load, 1
  br i1 %cmp12.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %flags = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 14
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp14.not.not = icmp eq i32 %and, 0
  br i1 %cmp14.not.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end16

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end16:                                         ; preds = %lor.lhs.false
  %addrs = getelementptr inbounds %struct.phonet_device, ptr %pnd.048, i32 0, i32 2
  %arrayidx.i = getelementptr i32, ptr %addrs, i32 %div3.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i, align 4
  %15 = and i32 %14, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool18.not = icmp eq i32 %15, 0
  br i1 %tobool18.not, label %if.end16.for.inc_crit_edge, label %if.end16.found_crit_edge

if.end16.found_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end16.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %pnd.048 to i32
  call void @__asan_load4_noabort(i32 %16)
  %pnd.0 = load volatile ptr, ptr %pnd.048, align 4
  %cmp.not = icmp eq ptr %pnd.0, %call.i36
  br i1 %cmp.not, label %for.inc.found_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.found_crit_edge:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

found:                                            ; preds = %for.inc.found_crit_edge, %if.end16.found_crit_edge, %do.end.found_crit_edge
  %err.0 = phi i32 [ -99, %do.end.found_crit_edge ], [ 0, %if.end16.found_crit_edge ], [ -99, %for.inc.found_crit_edge ]
  %call.i37 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i37, label %found.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i40

found.rcu_read_unlock.exit_crit_edge:             ; preds = %found
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i40:                                ; preds = %found
  %call1.i38 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38)
  %tobool.not.i39 = icmp eq i32 %call1.i38, 0
  br i1 %tobool.not.i39, label %land.lhs.true.i40.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i42

land.lhs.true.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i42:                               ; preds = %land.lhs.true.i40
  %.b4.i41 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i41, label %land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge, label %if.then.i43

land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i43:                                      ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i43, %land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i40.rcu_read_unlock.exit_crit_edge, %found.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !57
  %17 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i.i.i44 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i44 to ptr
  %preempt_count.i.i.i.i45 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i45, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i45, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret i32 %err.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phonet_device_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @phonet_net_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call1 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.2, i16 noundef zeroext 0, ptr noundef %0, ptr noundef nonnull @pn_res_seq_ops, i32 noundef 8, ptr noundef null) #7
  %call2 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @phonet_device_notifier) #7
  %call3 = tail call i32 @phonet_netlink_register() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phonet_device_exit()
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.then5 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phonet_netlink_register() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @phonet_device_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_unregister_all(i32 noundef 35) #7
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @phonet_device_notifier) #7
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @phonet_net_ops) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.2, ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unregister_all(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phonet_route_add(ptr noundef %dev, i8 noundef zeroext %daddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %call1 = tail call fastcc ptr @phonet_pernet(ptr noundef %1)
  %routes2 = getelementptr inbounds %struct.phonet_net, ptr %call1, i32 0, i32 1
  %2 = lshr i8 %daddr, 2
  tail call void @mutex_lock_nested(ptr noundef %routes2, i32 noundef 0) #7
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr %struct.phonet_net, ptr %call1, i32 0, i32 1, i32 1, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %do.body, label %entry.if.end44_crit_edge

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !68
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %dev, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body.if.end44_crit_edge, label %do.body1.i

do.body.if.end44_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

do.body1.i:                                       ; preds = %do.body
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !60
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %7 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcpu_refcnt.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add13.i = add i32 %18, 1
  store i32 %add13.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !61
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !58

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #7, !srcloc !62
  br label %if.end44

if.end44:                                         ; preds = %do.end30.i, %do.body.if.end44_crit_edge, %entry.if.end44_crit_edge
  %err.0 = phi i32 [ -17, %entry.if.end44_crit_edge ], [ 0, %do.body.if.end44_crit_edge ], [ 0, %do.end30.i ]
  tail call void @mutex_unlock(ptr noundef %routes2) #7
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phonet_route_del(ptr noundef readonly %dev, i8 noundef zeroext %daddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %call1 = tail call fastcc ptr @phonet_pernet(ptr noundef %1)
  %routes2 = getelementptr inbounds %struct.phonet_net, ptr %call1, i32 0, i32 1
  %2 = lshr i8 %daddr, 2
  tail call void @mutex_lock_nested(ptr noundef %routes2, i32 noundef 0) #7
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr %struct.phonet_net, ptr %call1, i32 0, i32 1, i32 1, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %4, %dev
  br i1 %cmp, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %routes2) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr null, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef %routes2) #7
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body1.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1.i:                                       ; preds = %if.end
  tail call void @synchronize_rcu() #7
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !60
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %7 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcpu_refcnt.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add13.i = add i32 %18, -1
  store i32 %add13.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !61
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !58

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #7, !srcloc !62
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit, %if.end.cleanup_crit_edge, %if.end.thread
  %retval.0 = phi i32 [ 0, %dev_put.exit ], [ -2, %if.end.cleanup_crit_edge ], [ -2, %if.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @phonet_route_get_rcu(ptr noundef %net, i8 noundef zeroext %daddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @phonet_pernet(ptr noundef %net)
  %0 = lshr i8 %daddr, 2
  %idxprom = zext i8 %0 to i32
  %arrayidx = getelementptr %struct.phonet_net, ptr %call, i32 0, i32 1, i32 1, i32 %idxprom
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

land.lhs.true:                                    ; preds = %entry
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b13 = load i1, ptr @phonet_route_get_rcu.__warned, align 1
  br i1 %.b13, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phonet_route_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 400, ptr noundef nonnull @.str.3) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %entry.do.end10_crit_edge
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @phonet_route_output(ptr noundef %net, i8 noundef zeroext %daddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @phonet_pernet(ptr noundef %net)
  %0 = lshr i8 %daddr, 2
  %1 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !56
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %idxprom = zext i8 %0 to i32
  %arrayidx = getelementptr %struct.phonet_net, ptr %call, i32 0, i32 1, i32 1, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b20 = load i1, ptr @phonet_route_output.__warned, align 1
  br i1 %.b20, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phonet_route_output.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 412, ptr noundef nonnull @.str.3) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %tobool.not.i21 = icmp eq ptr %6, null
  br i1 %tobool.not.i21, label %do.end10.dev_hold.exit_crit_edge, label %do.body1.i

do.end10.dev_hold.exit_crit_edge:                 ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %do.end10
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !60
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 118
  %8 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcpu_refcnt.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, %10
  %17 = inttoptr i32 %add.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add13.i = add i32 %19, 1
  store i32 %add13.i, ptr %17, align 4
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !61
  %and.i.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !58

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #7, !srcloc !62
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %do.end10.dev_hold.exit_crit_edge
  %call.i22 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i22, label %dev_hold.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i25

dev_hold.exit.rcu_read_unlock.exit_crit_edge:     ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i25:                                ; preds = %dev_hold.exit
  %call1.i23 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i27

land.lhs.true.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i27:                               ; preds = %land.lhs.true.i25
  %.b4.i26 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i26, label %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, label %if.then.i28

land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i28:                                      ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i28, %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, %dev_hold.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !57
  %21 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i.i.i29 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i29 to ptr
  %preempt_count.i.i.i.i30 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i30, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i30, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br i1 %tobool.not.i21, label %if.then13, label %rcu_read_unlock.exit.if.end15_crit_edge

rcu_read_unlock.exit.if.end15_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then13:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call ptr @phonet_device_get(ptr noundef %net)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %rcu_read_unlock.exit.if.end15_crit_edge
  %dev.0 = phi ptr [ %6, %rcu_read_unlock.exit.if.end15_crit_edge ], [ %call14, %if.then13 ]
  ret ptr %dev.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phonet_init_net(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @phonet_pernet(ptr noundef %net)
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call1 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.8, i16 noundef zeroext 0, ptr noundef %1, ptr noundef nonnull @pn_sock_seq_ops, i32 noundef 8, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call, ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.phonet_device_list, ptr %call, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @phonet_init_net.__key) #7
  %routes = getelementptr inbounds %struct.phonet_net, ptr %call, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %routes, ptr noundef nonnull @.str.11, ptr noundef nonnull @phonet_init_net.__key.10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @phonet_exit_net(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @phonet_pernet(ptr noundef %net)
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.8, ptr noundef %1) #7
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %call, align 4
  %cmp.i.not = icmp eq ptr %3, %call
  br i1 %cmp.i.not, label %entry.if.end30_crit_edge, label %land.rhs

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b41 = load i1, ptr @phonet_exit_net.__already_done, align 1
  br i1 %.b41, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !63

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phonet_exit_net.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 322, i32 noundef 9, ptr noundef null) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phonet_device_notify(ptr nocapture noundef readnone %me, i32 noundef %what, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  %deleted.i = alloca [2 x i32], align 8
  %req.i = alloca %struct.if_phonet_req, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %what to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %what, label %entry.sw.epilog_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 820, i16 %4)
  %cmp = icmp eq i16 %4, 820
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %req.i) #7
  %5 = getelementptr inbounds %struct.if_phonet_req, ptr %req.i, i32 0, i32 1
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %6 = call ptr @memset(ptr %req.i, i32 255, i32 17)
  %7 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_siocdevprivate.i = getelementptr inbounds %struct.net_device_ops, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %ndo_siocdevprivate.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndo_siocdevprivate.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then.phonet_device_autoconf.exit_crit_edge, label %if.end.i

if.then.phonet_device_autoconf.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %phonet_device_autoconf.exit

if.end.i:                                         ; preds = %if.then
  %call.i = call i32 %10(ptr noundef %1, ptr noundef nonnull %req.i, ptr noundef null, i32 noundef 35312) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.phonet_device_autoconf.exit_crit_edge, label %if.end4.i

if.end.i.phonet_device_autoconf.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phonet_device_autoconf.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.rhs.i, label %if.end4.i.if.end37.i_crit_edge

if.end4.i.if.end37.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

land.rhs.i:                                       ; preds = %if.end4.i
  %.b1.i = load i1, ptr @phonet_device_autoconf.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end37.i_crit_edge, label %if.then15.i, !prof !63

land.rhs.i.if.end37.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.then15.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phonet_device_autoconf.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str, i32 noundef 243) #7
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then15.i, %land.rhs.i.if.end37.i_crit_edge, %if.end4.i.if.end37.i_crit_edge
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %5, align 1
  %call45.i = call i32 @phonet_address_add(ptr noundef %1, i8 noundef zeroext %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %if.end37.i.phonet_device_autoconf.exit_crit_edge

if.end37.i.phonet_device_autoconf.exit_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phonet_device_autoconf.exit

if.end48.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %5, align 1
  call void @phonet_address_notify(i32 noundef 20, ptr noundef %1, i8 noundef zeroext %14) #7
  br label %phonet_device_autoconf.exit

phonet_device_autoconf.exit:                      ; preds = %if.end48.i, %if.end37.i.phonet_device_autoconf.exit_crit_edge, %if.end.i.phonet_device_autoconf.exit_crit_edge, %if.then.phonet_device_autoconf.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %req.i) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %15 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nd_net.i.i, align 4
  %call.i.i = tail call fastcc ptr @phonet_pernet(ptr noundef %16) #7
  %call2.i = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i7 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i7, label %land.rhs.i8, label %sw.bb3.if.end31.i_crit_edge

sw.bb3.if.end31.i_crit_edge:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

land.rhs.i8:                                      ; preds = %sw.bb3
  %.b67.i = load i1, ptr @phonet_device_destroy.__already_done, align 1
  br i1 %.b67.i, label %land.rhs.i8.if.end31.i_crit_edge, label %if.then.i, !prof !63

land.rhs.i8.if.end31.i_crit_edge:                 ; preds = %land.rhs.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then.i:                                        ; preds = %land.rhs.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @phonet_device_destroy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 92, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str, i32 noundef 92) #7
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then.i, %land.rhs.i8.if.end31.i_crit_edge, %sw.bb3.if.end31.i_crit_edge
  %lock.i = getelementptr inbounds %struct.phonet_device_list, ptr %call.i.i, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %17 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nd_net.i.i, align 4
  %call.i.i.i = tail call fastcc ptr @phonet_pernet(ptr noundef %18) #7
  %lock.i.i = getelementptr inbounds %struct.phonet_device_list, ptr %call.i.i.i, i32 0, i32 1
  %call2.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock.i.i) #7
  br i1 %call2.i.i, label %if.end31.i.for.cond.i.i_crit_edge, label %do.body5.i.i, !prof !63

if.end31.i.for.cond.i.i_crit_edge:                ; preds = %if.end31.i
  br label %for.cond.i.i

do.body5.i.i:                                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/phonet/pn_dev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 67, 0\0A.popsection", ""() #7, !srcloc !64
  unreachable

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end31.i.for.cond.i.i_crit_edge
  %pnd.0.in.i.i = phi ptr [ %pnd.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %call.i.i.i, %if.end31.i.for.cond.i.i_crit_edge ]
  %19 = ptrtoint ptr %pnd.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %pnd.0.i.i = load ptr, ptr %pnd.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %pnd.0.i.i, %call.i.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end54.critedge.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.end54.critedge.i_crit_edge:       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.critedge.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %netdev.i.i = getelementptr inbounds %struct.phonet_device, ptr %pnd.0.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev.i.i, align 4
  %cmp15.i.i = icmp eq ptr %21, %1
  br i1 %cmp15.i.i, label %__phonet_get.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

__phonet_get.exit.i:                              ; preds = %for.body.i.i
  %tobool40.not.i = icmp eq ptr %pnd.0.i.i, null
  br i1 %tobool40.not.i, label %__phonet_get.exit.i.if.end54.critedge.i_crit_edge, label %if.then41.i

__phonet_get.exit.i.if.end54.critedge.i_crit_edge: ; preds = %__phonet_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.critedge.i

if.then41.i:                                      ; preds = %__phonet_get.exit.i
  %call.i.i68.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pnd.0.i.i) #7
  br i1 %call.i.i68.i, label %if.end.i.i.i, label %if.then41.i.list_del_rcu.exit.i_crit_edge

if.then41.i.list_del_rcu.exit.i_crit_edge:        ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pnd.0.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %pnd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pnd.0.i.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.then41.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pnd.0.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  %addrs.i = getelementptr inbounds %struct.phonet_device, ptr %pnd.0.i.i, i32 0, i32 2
  %call46.i = tail call i32 @_find_next_bit_be(ptr noundef %addrs.i, i32 noundef 64, i32 noundef 0) #7
  %conv4772.i = and i32 %call46.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv4772.i)
  %cmp73.i = icmp ult i32 %conv4772.i, 64
  br i1 %cmp73.i, label %list_del_rcu.exit.i.for.body.i_crit_edge, label %list_del_rcu.exit.i.for.end.i_crit_edge

list_del_rcu.exit.i.for.end.i_crit_edge:          ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

list_del_rcu.exit.i.for.body.i_crit_edge:         ; preds = %list_del_rcu.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %list_del_rcu.exit.i.for.body.i_crit_edge
  %conv4775.i = phi i32 [ %conv47.i, %for.body.i.for.body.i_crit_edge ], [ %conv4772.i, %list_del_rcu.exit.i.for.body.i_crit_edge ]
  %addr.0.in74.i = phi i32 [ %call52.i, %for.body.i.for.body.i_crit_edge ], [ %call46.i, %list_del_rcu.exit.i.for.body.i_crit_edge ]
  %addr.0.i = trunc i32 %addr.0.in74.i to i8
  tail call void @phonet_address_notify(i32 noundef 21, ptr noundef %1, i8 noundef zeroext %addr.0.i) #7
  %add.i = add nuw nsw i32 %conv4775.i, 1
  %call52.i = tail call i32 @_find_next_bit_be(ptr noundef %addrs.i, i32 noundef 64, i32 noundef %add.i) #7
  %conv47.i = and i32 %call52.i, 255
  %cmp.i9 = icmp ult i32 %conv47.i, 64
  br i1 %cmp.i9, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %list_del_rcu.exit.i.for.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %pnd.0.i.i) #7
  br label %phonet_device_destroy.exit

if.end54.critedge.i:                              ; preds = %__phonet_get.exit.i.if.end54.critedge.i_crit_edge, %for.cond.i.i.if.end54.critedge.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %phonet_device_destroy.exit

phonet_device_destroy.exit:                       ; preds = %if.end54.critedge.i, %for.end.i
  %29 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nd_net.i.i, align 4
  %call1.i = tail call fastcc ptr @phonet_pernet(ptr noundef %30) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %deleted.i) #7
  %31 = ptrtoint ptr %deleted.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %deleted.i, align 8
  %routes.i = getelementptr inbounds %struct.phonet_net, ptr %call1.i, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %routes.i, i32 noundef 0) #7
  br label %for.body.i11

for.body.i11:                                     ; preds = %for.inc.i.for.body.i11_crit_edge, %phonet_device_destroy.exit
  %i.051.i = phi i32 [ 0, %phonet_device_destroy.exit ], [ %inc.i, %for.inc.i.for.body.i11_crit_edge ]
  %arrayidx.i = getelementptr %struct.phonet_net, ptr %call1.i, i32 0, i32 1, i32 1, i32 %i.051.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp4.i = icmp eq ptr %33, %1
  br i1 %cmp4.i, label %do.body10.i, label %for.body.i11.for.inc.i_crit_edge

for.body.i11.for.inc.i_crit_edge:                 ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.body10.i:                                      ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr null, ptr %arrayidx.i, align 4
  call void @_set_bit(i32 noundef %i.051.i, ptr noundef nonnull %deleted.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body10.i, %for.body.i11.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.051.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i13, label %for.inc.i.for.body.i11_crit_edge

for.inc.i.for.body.i11_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i11

for.end.i13:                                      ; preds = %for.inc.i
  call void @mutex_unlock(ptr noundef %routes.i) #7
  %call.i.i12 = call i32 @_find_first_bit_be(ptr noundef nonnull %deleted.i, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i.i12)
  %cmp4.i.i = icmp eq i32 %call.i.i12, 64
  br i1 %cmp4.i.i, label %for.end.i13.phonet_route_autodel.exit_crit_edge, label %if.end26.i

for.end.i13.phonet_route_autodel.exit_crit_edge:  ; preds = %for.end.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %phonet_route_autodel.exit

if.end26.i:                                       ; preds = %for.end.i13
  call void @synchronize_rcu() #7
  %call28.i = call i32 @_find_next_bit_be(ptr noundef nonnull %deleted.i, i32 noundef 64, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call28.i)
  %cmp3053.i = icmp ult i32 %call28.i, 64
  br i1 %cmp3053.i, label %for.body31.lr.ph.i, label %if.end26.i.phonet_route_autodel.exit_crit_edge

if.end26.i.phonet_route_autodel.exit_crit_edge:   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phonet_route_autodel.exit

for.body31.lr.ph.i:                               ; preds = %if.end26.i
  %tobool.not.i.i = icmp eq ptr %1, null
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  br label %for.body31.i

for.body31.i:                                     ; preds = %dev_put.exit.i.for.body31.i_crit_edge, %for.body31.lr.ph.i
  %i.154.i = phi i32 [ %call28.i, %for.body31.lr.ph.i ], [ %call34.i, %dev_put.exit.i.for.body31.i_crit_edge ]
  %conv.i = trunc i32 %i.154.i to i8
  call void @rtm_phonet_notify(i32 noundef 25, ptr noundef %1, i8 noundef zeroext %conv.i) #7
  br i1 %tobool.not.i.i, label %for.body31.i.dev_put.exit.i_crit_edge, label %do.body1.i.i

for.body31.i.dev_put.exit.i_crit_edge:            ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_put.exit.i

do.body1.i.i:                                     ; preds = %for.body31.i
  %35 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !60
  %36 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %44, %38
  %45 = inttoptr i32 %add.i.i to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add13.i.i = add i32 %47, -1
  store i32 %add13.i.i, ptr %45, align 4
  %48 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !61
  %and.i.i.i.i = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !58

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #7, !srcloc !62
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %do.end30.i.i, %for.body31.i.dev_put.exit.i_crit_edge
  %add.i14 = add nuw nsw i32 %i.154.i, 1
  %call34.i = call i32 @_find_next_bit_be(ptr noundef nonnull %deleted.i, i32 noundef 64, i32 noundef %add.i14) #7
  %cmp30.i = icmp ult i32 %call34.i, 64
  br i1 %cmp30.i, label %dev_put.exit.i.for.body31.i_crit_edge, label %dev_put.exit.i.phonet_route_autodel.exit_crit_edge

dev_put.exit.i.phonet_route_autodel.exit_crit_edge: ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phonet_route_autodel.exit

dev_put.exit.i.for.body31.i_crit_edge:            ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body31.i

phonet_route_autodel.exit:                        ; preds = %dev_put.exit.i.phonet_route_autodel.exit_crit_edge, %if.end26.i.phonet_route_autodel.exit_crit_edge, %for.end.i13.phonet_route_autodel.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %deleted.i) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %phonet_route_autodel.exit, %phonet_device_autoconf.exit, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phonet_address_notify(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtm_phonet_notify(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !13, !15, !16, !18, !20, !21, !22, !24, !25, !27, !29, !31, !33, !34, !36, !37, !39, !41, !43, !44}
!llvm.named.register.sp = !{!46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/phonet/pn_dev.c", i32 116, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/phonet/pn_dev.c", i32 213, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/phonet/pn_dev.c", i32 339, i32 2}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/phonet/pn_dev.c", i32 400, i32 8}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../net/phonet/pn_dev.c", i32 412, i32 8}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @phonet_net_id, !17, !"phonet_net_id", i1 false, i1 false}
!17 = !{!"../net/phonet/pn_dev.c", i32 34, i32 21}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/phonet/pn_dev.c", i32 80, i32 2}
!27 = !{ptr @phonet_net_ops, !28, !"phonet_net_ops", i1 false, i1 false}
!28 = !{!"../net/phonet/pn_dev.c", i32 325, i32 33}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/phonet/pn_dev.c", i32 307, i32 7}
!31 = !{ptr @phonet_init_net.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../net/phonet/pn_dev.c", i32 312, i32 2}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @phonet_init_net.__key.10, !35, !"__key", i1 false, i1 false}
!35 = !{!"../net/phonet/pn_dev.c", i32 313, i32 2}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../net/phonet/pn_dev.c", i32 322, i32 2}
!39 = !{ptr @phonet_device_notifier, !40, !"phonet_device_notifier", i1 false, i1 false}
!40 = !{!"../net/phonet/pn_dev.c", i32 297, i32 30}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../net/phonet/pn_dev.c", i32 243, i32 2}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../net/phonet/pn_dev.c", i32 92, i32 2}
!46 = !{!"sp"}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 2149395775}
!57 = !{i64 2149396041}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 2156929630, i64 2156930114, i64 2156929667, i64 2156929723, i64 2156929757, i64 2156929781, i64 2156929822, i64 2156929843, i64 2156929871, i64 2156929905}
!60 = !{i64 609972, i64 610033}
!61 = !{i64 612704}
!62 = !{i64 612989}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i64 2156851403, i64 2156851886, i64 2156851440, i64 2156851496, i64 2156851530, i64 2156851554, i64 2156851595, i64 2156851616, i64 2156851644, i64 2156851678}
!65 = !{i64 2156849788, i64 2156850271, i64 2156849825, i64 2156849881, i64 2156849915, i64 2156849939, i64 2156849980, i64 2156850001, i64 2156850029, i64 2156850063}
!66 = !{i64 2149609318}
!67 = !{i64 2156938072, i64 2156938556, i64 2156938109, i64 2156938165, i64 2156938199, i64 2156938223, i64 2156938264, i64 2156938285, i64 2156938313, i64 2156938347}
!68 = !{i64 2156991194}
