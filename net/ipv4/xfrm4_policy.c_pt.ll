; ModuleID = '/llk/IR_all_yes/net/ipv4/xfrm4_policy.c_pt.bc'
source_filename = "../net/ipv4/xfrm4_policy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.xfrm_policy_afinfo = type { ptr, ptr, ptr, ptr, ptr }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.145, ptr, [24 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.145 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.xfrm_dst = type { %union.anon.151, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.151 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.104 }
%union.anon.104 = type { [4 x i32] }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.113, i32, %struct.list_head, ptr }
%union.anon.113 = type { %struct.in6_addr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.114, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.114 = type { ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfrm_policy = type { %struct.possible_net_t, %struct.hlist_node, %struct.hlist_node, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.timer_list, %struct.atomic_t, i32, i32, i32, %struct.xfrm_mark, %struct.xfrm_selector, %struct.xfrm_lifetime_cfg, %struct.xfrm_lifetime_cur, %struct.xfrm_policy_walk_entry, %struct.xfrm_policy_queue, i8, i8, i8, i8, i8, i16, ptr, [6 x %struct.xfrm_tmpl], %struct.hlist_node, %struct.callback_head }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_policy_walk_entry = type { %struct.list_head, i8 }
%struct.xfrm_policy_queue = type { %struct.sk_buff_head, %struct.timer_list, i32 }
%struct.xfrm_tmpl = type { %struct.xfrm_id, %union.xfrm_address_t, i16, i32, i8, i8, i8, i8, i32, i32, i32 }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.103, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.105, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.103 = type { %struct.hlist_node }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.105 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }

@xfrm4_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @xfrm4_net_init, ptr null, ptr @xfrm4_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@xfrm4_policy_afinfo = internal constant { %struct.xfrm_policy_afinfo, [44 x i8] } { %struct.xfrm_policy_afinfo { ptr @xfrm4_dst_ops_template, ptr @xfrm4_dst_lookup, ptr @xfrm4_get_saddr, ptr @xfrm4_fill_dst, ptr @ipv4_blackhole_route }, [44 x i8] zeroinitializer }, align 32
@xfrm4_dst_ops_template = internal global %struct.dst_ops { i16 2, i32 32768, ptr null, ptr null, ptr null, ptr null, ptr @dst_cow_metrics_generic, ptr @xfrm4_dst_destroy, ptr @xfrm4_dst_ifdown, ptr null, ptr null, ptr @xfrm4_update_pmtu, ptr @xfrm4_redirect, ptr @__ip_local_out, ptr null, ptr null, ptr null, [60 x i8] undef, %struct.percpu_counter zeroinitializer, [56 x i8] undef }, align 128
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@dst_entries_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xfrm4_policy_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.4, ptr getelementptr (i8, ptr @init_net, i64 3716), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"net/ipv4\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xfrm4_gc_thresh\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"xfrm4_net_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 245, i32 48 }
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"xfrm4_policy_afinfo\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 151, i32 40 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 695, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 723, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [25 x i8] c"../include/net/dst_ops.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 65, i32 9 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"xfrm4_policy_table\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 160, i32 25 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 185, i32 33 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [27 x i8] c"../net/ipv4/xfrm4_policy.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 162, i32 21 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @xfrm4_net_ops, ptr @xfrm4_policy_afinfo, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dst_entries_init.__key, ptr @xfrm4_policy_table, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm4_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm4_policy_afinfo to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dst_entries_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm4_policy_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @xfrm4_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xfrm4_state_init() #7
  %call.i = tail call i32 @xfrm_policy_register_afinfo(ptr noundef nonnull @xfrm4_policy_afinfo, i32 noundef 2) #7
  tail call void @xfrm4_protocol_init() #7
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @xfrm4_net_ops) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm4_state_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm4_protocol_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_policy_register_afinfo(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfrm4_dst_lookup(ptr noundef %net, i32 noundef %tos, i32 noundef %oif, ptr noundef %saddr, ptr nocapture noundef readonly %daddr, i32 noundef %mark) #2 align 64 {
entry:
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #7
  %0 = call ptr @memset(ptr %fl4, i32 255, i32 56)
  %call = call fastcc ptr @__xfrm4_dst_lookup(ptr noundef %net, ptr noundef nonnull %fl4, i32 noundef %tos, i32 noundef %oif, ptr noundef %saddr, ptr noundef %daddr, i32 noundef %mark)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #7
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm4_get_saddr(ptr noundef %net, i32 noundef %oif, ptr nocapture noundef writeonly %saddr, ptr nocapture noundef readonly %daddr, i32 noundef %mark) #2 align 64 {
entry:
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #7
  %0 = call ptr @memset(ptr %fl4, i32 255, i32 56)
  %call = call fastcc ptr @__xfrm4_dst_lookup(ptr noundef %net, ptr noundef nonnull %fl4, i32 noundef 0, i32 noundef %oif, ptr noundef null, ptr noundef %daddr, i32 noundef %mark)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %saddr2 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %1 = ptrtoint ptr %saddr2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %saddr2, align 8
  %3 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %saddr, align 4
  call void @dst_release(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -113, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm4_fill_dst(ptr noundef %xdst, ptr noundef %dev, ptr nocapture noundef readonly %fl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %route = getelementptr inbounds %struct.xfrm_dst, ptr %xdst, i32 0, i32 1
  %0 = ptrtoint ptr %route to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %route, align 4
  %flowic_iif = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 1
  %2 = ptrtoint ptr %flowic_iif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flowic_iif, align 4
  %rt_iif = getelementptr inbounds %struct.rtable, ptr %xdst, i32 0, i32 6
  %4 = ptrtoint ptr %rt_iif to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rt_iif, align 4
  %5 = ptrtoint ptr %xdst to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %xdst, align 4
  %dev_tracker = getelementptr inbounds %struct.dst_entry, ptr %xdst, i32 0, i32 19
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.dev_hold_track.exit_crit_edge, label %do.body1.i.i

entry.dev_hold_track.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_hold_track.exit

do.body1.i.i:                                     ; preds = %entry
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !31
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %7 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add13.i.i = add i32 %18, 1
  store i32 %add13.i.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !32
  %and.i.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_hold.exit.i_crit_edge, !prof !33

do.body1.i.i.dev_hold.exit.i_crit_edge:           ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_hold.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %if.then28.i.i, %do.body1.i.i.dev_hold.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #7, !srcloc !34
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker, i32 noundef 2592) #7
  br label %dev_hold_track.exit

dev_hold_track.exit:                              ; preds = %dev_hold.exit.i, %entry.dev_hold_track.exit_crit_edge
  %rt_is_input = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %rt_is_input to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rt_is_input, align 2
  %rt_is_input6 = getelementptr inbounds %struct.rtable, ptr %xdst, i32 0, i32 4
  %22 = ptrtoint ptr %rt_is_input6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %rt_is_input6, align 2
  %rt_flags = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rt_flags, align 4
  %and = and i32 %24, -1342177280
  %rt_flags8 = getelementptr inbounds %struct.rtable, ptr %xdst, i32 0, i32 2
  %25 = ptrtoint ptr %rt_flags8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and, ptr %rt_flags8, align 4
  %rt_type = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %rt_type to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rt_type, align 4
  %rt_type10 = getelementptr inbounds %struct.rtable, ptr %xdst, i32 0, i32 3
  %28 = ptrtoint ptr %rt_type10 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %rt_type10, align 4
  %rt_uses_gateway = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %rt_uses_gateway to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rt_uses_gateway, align 1
  %rt_uses_gateway12 = getelementptr inbounds %struct.rtable, ptr %xdst, i32 0, i32 5
  %31 = ptrtoint ptr %rt_uses_gateway12 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %rt_uses_gateway12, align 1
  %rt_gw_family = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %rt_gw_family to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rt_gw_family, align 4
  %rt_gw_family14 = getelementptr inbounds %struct.rtable, ptr %xdst, i32 0, i32 7
  %34 = ptrtoint ptr %rt_gw_family14 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %rt_gw_family14, align 4
  %35 = load i8, ptr %rt_gw_family, align 4
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i8 %35, label %dev_hold_track.exit.if.end24_crit_edge [
    i8 2, label %if.then
    i8 10, label %if.then22
  ]

dev_hold_track.exit.if.end24_crit_edge:           ; preds = %dev_hold_track.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then:                                          ; preds = %dev_hold_track.exit
  call void @__sanitizer_cov_trace_pc() #9
  %37 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %40 = getelementptr inbounds %struct.rtable, ptr %xdst, i32 0, i32 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %40, align 4
  br label %if.end24

if.then22:                                        ; preds = %dev_hold_track.exit
  call void @__sanitizer_cov_trace_pc() #9
  %42 = getelementptr inbounds %struct.rtable, ptr %xdst, i32 0, i32 8
  %43 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 8
  %44 = call ptr @memcpy(ptr %42, ptr %43, i32 16)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.then, %dev_hold_track.exit.if.end24_crit_edge
  %rt_pmtu = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 9
  %45 = ptrtoint ptr %rt_pmtu to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load = load i32, ptr %rt_pmtu, align 4
  %bf.clear = and i32 %bf.load, 2147483647
  %rt_pmtu26 = getelementptr inbounds %struct.rtable, ptr %xdst, i32 0, i32 9
  %46 = ptrtoint ptr %rt_pmtu26 to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load27 = load i32, ptr %rt_pmtu26, align 4
  %bf.clear28 = and i32 %bf.load27, -2147483648
  %bf.set = or i32 %bf.clear28, %bf.clear
  store i32 %bf.set, ptr %rt_pmtu26, align 4
  %bf.load29 = load i32, ptr %rt_pmtu, align 4
  %bf.lshr = and i32 %bf.load29, -2147483648
  %bf.set35 = or i32 %bf.lshr, %bf.clear
  store i32 %bf.set35, ptr %rt_pmtu26, align 4
  %rt_uncached = getelementptr inbounds %struct.rtable, ptr %xdst, i32 0, i32 10
  %47 = ptrtoint ptr %rt_uncached to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %rt_uncached, ptr %rt_uncached, align 4
  %prev.i = getelementptr inbounds %struct.rtable, ptr %xdst, i32 0, i32 10, i32 1
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %rt_uncached, ptr %prev.i, align 4
  tail call void @rt_add_uncached_list(ptr noundef %xdst) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv4_blackhole_route(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_cow_metrics_generic(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfrm4_dst_destroy(ptr noundef %dst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %_metrics.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 2
  %0 = ptrtoint ptr %_metrics.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_metrics.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.dst_destroy_metrics_generic.exit_crit_edge

entry.dst_destroy_metrics_generic.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dst_destroy_metrics_generic.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dst_destroy_metrics_generic(ptr noundef %dst, i32 noundef %1) #7
  br label %dst_destroy_metrics_generic.exit

dst_destroy_metrics_generic.exit:                 ; preds = %if.then.i, %entry.dst_destroy_metrics_generic.exit_crit_edge
  %rt_uncached_list = getelementptr inbounds %struct.rtable, ptr %dst, i32 0, i32 11
  %2 = ptrtoint ptr %rt_uncached_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rt_uncached_list, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dst_destroy_metrics_generic.exit.if.end_crit_edge, label %if.then

dst_destroy_metrics_generic.exit.if.end_crit_edge: ; preds = %dst_destroy_metrics_generic.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %dst_destroy_metrics_generic.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rt_del_uncached_list(ptr noundef %dst) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %dst_destroy_metrics_generic.exit.if.end_crit_edge
  %pols.i = getelementptr inbounds %struct.xfrm_dst, ptr %dst, i32 0, i32 4
  %num_pols.i = getelementptr inbounds %struct.xfrm_dst, ptr %dst, i32 0, i32 5
  %4 = ptrtoint ptr %num_pols.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pols.i, align 4
  %i.03.i.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.03.i.i)
  %cmp4.i.i = icmp sgt i32 %i.03.i.i, -1
  br i1 %cmp4.i.i, label %if.end.for.body.i.i_crit_edge, label %if.end.xfrm_pols_put.exit.i_crit_edge

if.end.xfrm_pols_put.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_pols_put.exit.i

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %xfrm_pol_put.exit.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %i.0.i.i, %xfrm_pol_put.exit.i.i.for.body.i.i_crit_edge ], [ %i.03.i.i, %if.end.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %pols.i, i32 %i.05.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %refcnt.i.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %7, i32 0, i32 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !35
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #7, !srcloc !36
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.xfrm_pol_put.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !37

if.end5.i.i.i.i.i.i.xfrm_pol_put.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_pol_put.exit.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef 3) #7
  br label %xfrm_pol_put.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void @xfrm_policy_destroy(ptr noundef %7) #7
  br label %xfrm_pol_put.exit.i.i

xfrm_pol_put.exit.i.i:                            ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.xfrm_pol_put.exit.i.i_crit_edge
  %i.0.i.i = add i32 %i.05.i.i, -1
  %cmp.i.i = icmp sgt i32 %i.0.i.i, -1
  br i1 %cmp.i.i, label %xfrm_pol_put.exit.i.i.for.body.i.i_crit_edge, label %xfrm_pol_put.exit.i.i.xfrm_pols_put.exit.i_crit_edge

xfrm_pol_put.exit.i.i.xfrm_pols_put.exit.i_crit_edge: ; preds = %xfrm_pol_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_pols_put.exit.i

xfrm_pol_put.exit.i.i.for.body.i.i_crit_edge:     ; preds = %xfrm_pol_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

xfrm_pols_put.exit.i:                             ; preds = %xfrm_pol_put.exit.i.i.xfrm_pols_put.exit.i_crit_edge, %if.end.xfrm_pols_put.exit.i_crit_edge
  %route.i = getelementptr inbounds %struct.xfrm_dst, ptr %dst, i32 0, i32 1
  %9 = ptrtoint ptr %route.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %route.i, align 4
  tail call void @dst_release(ptr noundef %10) #7
  %xfrm.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 4
  %11 = ptrtoint ptr %xfrm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xfrm.i, align 4
  %tobool.not.i5 = icmp eq ptr %12, null
  br i1 %tobool.not.i5, label %xfrm_pols_put.exit.i.xfrm_dst_destroy.exit_crit_edge, label %if.then.i6, !prof !33

xfrm_pols_put.exit.i.xfrm_dst_destroy.exit_crit_edge: ; preds = %xfrm_pols_put.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_dst_destroy.exit

if.then.i6:                                       ; preds = %xfrm_pols_put.exit.i
  %refcnt.i.i = getelementptr inbounds %struct.xfrm_state, ptr %12, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !35
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #7
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #7, !srcloc !36
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.xfrm_dst_destroy.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !37

if.end5.i.i.i.i.i.xfrm_dst_destroy.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_dst_destroy.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #7
  br label %xfrm_dst_destroy.exit

if.then.i.i:                                      ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %12, i1 noundef zeroext false) #7
  br label %xfrm_dst_destroy.exit

xfrm_dst_destroy.exit:                            ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.xfrm_dst_destroy.exit_crit_edge, %xfrm_pols_put.exit.i.xfrm_dst_destroy.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfrm4_dst_ifdown(ptr noundef %dst, ptr noundef %dev, i32 noundef %unregister) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unregister)
  %tobool.not = icmp eq i32 %unregister, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xfrm_dst_ifdown(ptr noundef %dst, ptr noundef %dev) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfrm4_update_pmtu(ptr nocapture noundef readonly %dst, ptr noundef %sk, ptr noundef %skb, i32 noundef %mtu, i1 noundef zeroext %confirm_neigh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %route = getelementptr inbounds %struct.xfrm_dst, ptr %dst, i32 0, i32 1
  %0 = ptrtoint ptr %route to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %route, align 4
  %ops = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %update_pmtu = getelementptr inbounds %struct.dst_ops, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %update_pmtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %update_pmtu, align 4
  tail call void %5(ptr noundef %1, ptr noundef %sk, ptr noundef %skb, i32 noundef %mtu, i1 noundef zeroext %confirm_neigh) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfrm4_redirect(ptr nocapture noundef readonly %dst, ptr noundef %sk, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %route = getelementptr inbounds %struct.xfrm_dst, ptr %dst, i32 0, i32 1
  %0 = ptrtoint ptr %route to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %route, align 4
  %ops = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %redirect = getelementptr inbounds %struct.dst_ops, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %redirect to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %redirect, align 16
  tail call void %5(ptr noundef %1, ptr noundef %sk, ptr noundef %skb) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ip_local_out(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_del_uncached_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dst_destroy_metrics_generic(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_policy_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfrm_state_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_dst_ifdown(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__xfrm4_dst_lookup(ptr noundef %net, ptr noundef %fl4, i32 noundef %tos, i32 noundef %oif, ptr noundef readonly %saddr, ptr nocapture noundef readonly %daddr, i32 noundef %mark) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %fl4, i32 0, i32 56)
  %1 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %daddr, align 4
  %daddr1 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %3 = ptrtoint ptr %daddr1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %daddr1, align 4
  %conv = trunc i32 %tos to i8
  %flowic_tos = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %4 = ptrtoint ptr %flowic_tos to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %flowic_tos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oif)
  %tobool.not.i = icmp eq i32 %oif, 0
  br i1 %tobool.not.i, label %entry.l3mdev_master_ifindex_by_index.exit_crit_edge, label %if.then.i, !prof !33

entry.l3mdev_master_ifindex_by_index.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %l3mdev_master_ifindex_by_index.exit

if.then.i:                                        ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !39
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i, label %if.then.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.i.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call ptr @dev_get_by_index_rcu(ptr noundef %net, i32 noundef %oif) #7
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %rcu_read_lock.exit.i.if.end.i_crit_edge, label %if.then4.i

rcu_read_lock.exit.i.if.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then4.i:                                       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call i32 @l3mdev_master_ifindex_rcu(ptr noundef nonnull %call.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %rcu_read_lock.exit.i.if.end.i_crit_edge
  %rc.0.i = phi i32 [ %call5.i, %if.then4.i ], [ 0, %rcu_read_lock.exit.i.if.end.i_crit_edge ]
  %call.i9.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i9.i, label %if.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i12.i

if.end.i.rcu_read_unlock.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true.i12.i:                              ; preds = %if.end.i
  %call1.i10.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10.i)
  %tobool.not.i11.i = icmp eq i32 %call1.i10.i, 0
  br i1 %tobool.not.i11.i, label %land.lhs.true.i12.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i14.i

land.lhs.true.i12.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i14.i:                             ; preds = %land.lhs.true.i12.i
  %.b4.i13.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13.i, label %land.lhs.true2.i14.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i15.i

land.lhs.true2.i14.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

if.then.i15.i:                                    ; preds = %land.lhs.true2.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #7
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i15.i, %land.lhs.true2.i14.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i12.i.rcu_read_unlock.exit.i_crit_edge, %if.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !40
  %9 = tail call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i.i.i.i.i16.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i16.i to ptr
  %preempt_count.i.i.i.i17.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i17.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i17.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %l3mdev_master_ifindex_by_index.exit

l3mdev_master_ifindex_by_index.exit:              ; preds = %rcu_read_unlock.exit.i, %entry.l3mdev_master_ifindex_by_index.exit_crit_edge
  %rc.1.i = phi i32 [ %rc.0.i, %rcu_read_unlock.exit.i ], [ 0, %entry.l3mdev_master_ifindex_by_index.exit_crit_edge ]
  %13 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %rc.1.i, ptr %fl4, align 8
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %14 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mark, ptr %flowic_mark, align 8
  %tobool.not = icmp eq ptr %saddr, null
  br i1 %tobool.not, label %l3mdev_master_ifindex_by_index.exit.if.end_crit_edge, label %if.then

l3mdev_master_ifindex_by_index.exit.if.end_crit_edge: ; preds = %l3mdev_master_ifindex_by_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %l3mdev_master_ifindex_by_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %saddr, align 4
  %saddr4 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %17 = ptrtoint ptr %saddr4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %saddr4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %l3mdev_master_ifindex_by_index.exit.if.end_crit_edge
  %flowic_flags = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 6
  %18 = ptrtoint ptr %flowic_flags to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %flowic_flags, align 1
  %call.i22 = tail call ptr @ip_route_output_key_hash(ptr noundef %net, ptr noundef %fl4, ptr noundef null) #7
  ret ptr %call.i22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3mdev_master_ifindex_rcu(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_key_hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_add_uncached_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm4_net_init(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %xfrm4_dst_ops = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 46, i32 26
  %0 = call ptr @memcpy(ptr %xfrm4_dst_ops, ptr @xfrm4_dst_ops_template, i32 256)
  %pcpuc_entries.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 46, i32 26, i32 18
  %call.i = tail call i32 @__percpu_counter_init(ptr noundef %pcpuc_entries.i, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @dst_entries_init.__key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i.not.i = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not.i, label %if.end4.thread.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %call1.i = tail call ptr @kmemdup(ptr noundef nonnull @xfrm4_policy_table, i32 noundef 72, i32 noundef 3264) #7
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.then.i.if.then5_crit_edge, label %if.end4.i

if.then.i.if.then5_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.end4.i:                                        ; preds = %if.then.i
  %gc_thresh.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 46, i32 26, i32 1
  %data.i = getelementptr inbounds %struct.ctl_table, ptr %call1.i, i32 0, i32 1
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %gc_thresh.i, ptr %data.i, align 4
  %call5.i = tail call ptr @register_net_sysctl(ptr noundef %net, ptr noundef nonnull @.str.3, ptr noundef nonnull %call1.i) #7
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.then11.i, label %if.end4.i.xfrm4_net_sysctl_init.exit_crit_edge

if.end4.i.xfrm4_net_sysctl_init.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm4_net_sysctl_init.exit

if.end4.thread.i:                                 ; preds = %if.end
  %call526.i = tail call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.3, ptr noundef nonnull @xfrm4_policy_table) #7
  %tobool6.not27.i = icmp eq ptr %call526.i, null
  br i1 %tobool6.not27.i, label %if.end4.thread.i.if.then5_crit_edge, label %if.end4.thread.i.xfrm4_net_sysctl_init.exit_crit_edge

if.end4.thread.i.xfrm4_net_sysctl_init.exit_crit_edge: ; preds = %if.end4.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm4_net_sysctl_init.exit

if.end4.thread.i.if.then5_crit_edge:              ; preds = %if.end4.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.then11.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call1.i) #7
  br label %if.then5

xfrm4_net_sysctl_init.exit:                       ; preds = %if.end4.thread.i.xfrm4_net_sysctl_init.exit_crit_edge, %if.end4.i.xfrm4_net_sysctl_init.exit_crit_edge
  %call529.i = phi ptr [ %call526.i, %if.end4.thread.i.xfrm4_net_sysctl_init.exit_crit_edge ], [ %call5.i, %if.end4.i.xfrm4_net_sysctl_init.exit_crit_edge ]
  %xfrm4_hdr.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 5
  %2 = ptrtoint ptr %xfrm4_hdr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call529.i, ptr %xfrm4_hdr.i, align 8
  br label %cleanup

if.then5:                                         ; preds = %if.then11.i, %if.end4.thread.i.if.then5_crit_edge, %if.then.i.if.then5_crit_edge
  tail call void @percpu_counter_destroy(ptr noundef %pcpuc_entries.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %xfrm4_net_sysctl_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -12, %if.then5 ], [ 0, %xfrm4_net_sysctl_init.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfrm4_net_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %xfrm4_hdr.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 5
  %0 = ptrtoint ptr %xfrm4_hdr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xfrm4_hdr.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.xfrm4_net_sysctl_exit.exit_crit_edge, label %if.end.i

entry.xfrm4_net_sysctl_exit.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm4_net_sysctl_exit.exit

if.end.i:                                         ; preds = %entry
  %ctl_table_arg.i = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctl_table_arg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_table_arg.i, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef nonnull %1) #7
  %cmp.i.not.i = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not.i, label %if.end.i.xfrm4_net_sysctl_exit.exit_crit_edge, label %if.then6.i

if.end.i.xfrm4_net_sysctl_exit.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm4_net_sysctl_exit.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %3) #7
  br label %xfrm4_net_sysctl_exit.exit

xfrm4_net_sysctl_exit.exit:                       ; preds = %if.then6.i, %if.end.i.xfrm4_net_sysctl_exit.exit_crit_edge, %entry.xfrm4_net_sysctl_exit.exit_crit_edge
  %pcpuc_entries.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 46, i32 26, i32 18
  tail call void @percpu_counter_destroy(ptr noundef %pcpuc_entries.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !11, !13, !15, !17, !19}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @xfrm4_policy_afinfo, !1, !"xfrm4_policy_afinfo", i1 false, i1 false}
!1 = !{!"../net/ipv4/xfrm4_policy.c", i32 151, i32 40}
!2 = !{ptr @xfrm4_dst_ops_template, !3, !"xfrm4_dst_ops_template", i1 false, i1 false}
!3 = !{!"../net/ipv4/xfrm4_policy.c", i32 140, i32 23}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @xfrm4_net_ops, !12, !"xfrm4_net_ops", i1 false, i1 false}
!12 = !{!"../net/ipv4/xfrm4_policy.c", i32 245, i32 48}
!13 = !{ptr @dst_entries_init.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../include/net/dst_ops.h", i32 65, i32 9}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ipv4/xfrm4_policy.c", i32 185, i32 33}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/ipv4/xfrm4_policy.c", i32 162, i32 21}
!19 = !{ptr @xfrm4_policy_table, !20, !"xfrm4_policy_table", i1 false, i1 false}
!20 = !{!"../net/ipv4/xfrm4_policy.c", i32 160, i32 25}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 606380, i64 606441}
!32 = !{i64 609112}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i64 609397}
!35 = !{i64 2148303430}
!36 = !{i64 2148217894, i64 2148217926, i64 2148217955, i64 2148217989, i64 2148218020, i64 2148218043}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2149305441}
!39 = !{i64 2149355931}
!40 = !{i64 2149356197}
