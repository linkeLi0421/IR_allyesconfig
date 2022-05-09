; ModuleID = '/llk/IR_all_yes/net/bridge/br_sysfs_br.c_pt.bc'
source_filename = "../net/bridge/br_sysfs_br.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.56, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.56 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.73, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%union.anon.22 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.73 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.148, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.148 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.149, %union.anon.150, i16, i16 }
%union.anon.149 = type { %struct.in6_addr }
%union.anon.150 = type { %struct.in6_addr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }

@bridge_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.10, ptr null, ptr null, ptr @bridge_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@br_sysfs_addbr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: can't create group %s/%s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"br_sysfs_addbr\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/bridge/br_sysfs_br.c\00", [39 x i8] zeroinitializer }, align 32
@br_sysfs_addbr._entry_ptr = internal global ptr @br_sysfs_addbr._entry, section ".printk_index", align 4
@bridge_forward = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @brforward_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@br_sysfs_addbr._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1055, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: can't create attribute file %s/%s\0A\00", [55 x i8] zeroinitializer }, align 32
@br_sysfs_addbr._entry_ptr.5 = internal global ptr @br_sysfs_addbr._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"brif\00", [27 x i8] zeroinitializer }, align 32
@br_sysfs_addbr._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 1062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: can't add kobject (directory) %s/%s\0A\00", [53 x i8] zeroinitializer }, align 32
@br_sysfs_addbr._entry_ptr.9 = internal global ptr @br_sysfs_addbr._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bridge\00", [25 x i8] zeroinitializer }, align 32
@bridge_attrs = internal global { [46 x ptr], [40 x i8] } { [46 x ptr] [ptr @dev_attr_forward_delay, ptr @dev_attr_hello_time, ptr @dev_attr_max_age, ptr @dev_attr_ageing_time, ptr @dev_attr_stp_state, ptr @dev_attr_group_fwd_mask, ptr @dev_attr_priority, ptr @dev_attr_bridge_id, ptr @dev_attr_root_id, ptr @dev_attr_root_path_cost, ptr @dev_attr_root_port, ptr @dev_attr_topology_change, ptr @dev_attr_topology_change_detected, ptr @dev_attr_hello_timer, ptr @dev_attr_tcn_timer, ptr @dev_attr_topology_change_timer, ptr @dev_attr_gc_timer, ptr @dev_attr_group_addr, ptr @dev_attr_flush, ptr @dev_attr_no_linklocal_learn, ptr @dev_attr_multicast_router, ptr @dev_attr_multicast_snooping, ptr @dev_attr_multicast_querier, ptr @dev_attr_multicast_query_use_ifaddr, ptr @dev_attr_hash_elasticity, ptr @dev_attr_hash_max, ptr @dev_attr_multicast_last_member_count, ptr @dev_attr_multicast_startup_query_count, ptr @dev_attr_multicast_last_member_interval, ptr @dev_attr_multicast_membership_interval, ptr @dev_attr_multicast_querier_interval, ptr @dev_attr_multicast_query_interval, ptr @dev_attr_multicast_query_response_interval, ptr @dev_attr_multicast_startup_query_interval, ptr @dev_attr_multicast_stats_enabled, ptr @dev_attr_multicast_igmp_version, ptr @dev_attr_multicast_mld_version, ptr @dev_attr_nf_call_iptables, ptr @dev_attr_nf_call_ip6tables, ptr @dev_attr_nf_call_arptables, ptr @dev_attr_vlan_filtering, ptr @dev_attr_vlan_protocol, ptr @dev_attr_default_pvid, ptr @dev_attr_vlan_stats_enabled, ptr @dev_attr_vlan_stats_per_port, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_forward_delay = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @forward_delay_show, ptr @forward_delay_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hello_time = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hello_time_show, ptr @hello_time_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_age = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_age_show, ptr @max_age_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ageing_time = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ageing_time_show, ptr @ageing_time_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stp_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stp_state_show, ptr @stp_state_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_group_fwd_mask = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @group_fwd_mask_show, ptr @group_fwd_mask_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_priority = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @priority_show, ptr @priority_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bridge_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bridge_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_root_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @root_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_root_path_cost = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @root_path_cost_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_root_port = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @root_port_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_topology_change = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @topology_change_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_topology_change_detected = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @topology_change_detected_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hello_timer = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hello_timer_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tcn_timer = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tcn_timer_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_topology_change_timer = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @topology_change_timer_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gc_timer = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gc_timer_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_group_addr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @group_addr_show, ptr @group_addr_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_flush = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @flush_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_no_linklocal_learn = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @no_linklocal_learn_show, ptr @no_linklocal_learn_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_multicast_router = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @multicast_router_show, ptr @multicast_router_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_multicast_snooping = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @multicast_snooping_show, ptr @multicast_snooping_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_multicast_querier = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @multicast_querier_show, ptr @multicast_querier_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_multicast_query_use_ifaddr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @multicast_query_use_ifaddr_show, ptr @multicast_query_use_ifaddr_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hash_elasticity = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hash_elasticity_show, ptr @hash_elasticity_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hash_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hash_max_show, ptr @hash_max_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_multicast_last_member_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @multicast_last_member_count_show, ptr @multicast_last_member_count_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_multicast_startup_query_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @multicast_startup_query_count_show, ptr @multicast_startup_query_count_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_multicast_last_member_interval = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @multicast_last_member_interval_show, ptr @multicast_last_member_interval_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_multicast_membership_interval = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @multicast_membership_interval_show, ptr @multicast_membership_interval_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_multicast_querier_interval = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @multicast_querier_interval_show, ptr @multicast_querier_interval_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_multicast_query_interval = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @multicast_query_interval_show, ptr @multicast_query_interval_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_multicast_query_response_interval = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @multicast_query_response_interval_show, ptr @multicast_query_response_interval_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_multicast_startup_query_interval = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @multicast_startup_query_interval_show, ptr @multicast_startup_query_interval_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_multicast_stats_enabled = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @multicast_stats_enabled_show, ptr @multicast_stats_enabled_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_multicast_igmp_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @multicast_igmp_version_show, ptr @multicast_igmp_version_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_multicast_mld_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @multicast_mld_version_show, ptr @multicast_mld_version_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_nf_call_iptables = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nf_call_iptables_show, ptr @nf_call_iptables_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_nf_call_ip6tables = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nf_call_ip6tables_show, ptr @nf_call_ip6tables_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_nf_call_arptables = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nf_call_arptables_show, ptr @nf_call_arptables_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vlan_filtering = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vlan_filtering_show, ptr @vlan_filtering_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vlan_protocol = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vlan_protocol_show, ptr @vlan_protocol_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_default_pvid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @default_pvid_show, ptr @default_pvid_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vlan_stats_enabled = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vlan_stats_enabled_show, ptr @vlan_stats_enabled_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vlan_stats_per_port = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vlan_stats_per_port_show, ptr @vlan_stats_per_port_store }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"forward_delay\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@store_bridge_parm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\013%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"store_bridge_parm\00", [46 x i8] zeroinitializer }, align 32
@store_bridge_parm._entry_ptr = internal global ptr @store_bridge_parm._entry, section ".printk_index", align 4
@store_bridge_parm._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\014%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@store_bridge_parm._entry_ptr.17 = internal global ptr @store_bridge_parm._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hello_time\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max_age\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ageing_time\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stp_state\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"group_fwd_mask\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%#x\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"priority\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bridge_id\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"root_id\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"root_path_cost\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"root_port\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"topology_change\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"topology_change_detected\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hello_timer\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tcn_timer\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"topology_change_timer\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gc_timer\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"group_addr\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flush\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no_linklocal_learn\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"multicast_router\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"multicast_snooping\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"multicast_querier\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"multicast_query_use_ifaddr\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hash_elasticity\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@set_elasticity.__msg = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"bridge: the hash_elasticity option has been deprecated and is always 16\00", [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hash_max\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"multicast_last_member_count\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"multicast_startup_query_count\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"multicast_last_member_interval\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"multicast_membership_interval\00", [34 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"multicast_querier_interval\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"multicast_query_interval\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"multicast_query_response_interval\00", [62 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"multicast_startup_query_interval\00", [63 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"multicast_stats_enabled\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"multicast_igmp_version\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"multicast_mld_version\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nf_call_iptables\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nf_call_ip6tables\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nf_call_arptables\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vlan_filtering\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vlan_protocol\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%#06x\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"default_pvid\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vlan_stats_enabled\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vlan_stats_per_port\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"brforward\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.69 = private unnamed_addr constant [13 x i8] c"bridge_group\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 989, i32 37 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 1047, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [15 x i8] c"bridge_forward\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 1022, i32 29 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 1054, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 1059, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 1061, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 990, i32 10 }
@___asan_gen_.105 = private unnamed_addr constant [13 x i8] c"bridge_attrs\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 932, i32 26 }
@___asan_gen_.108 = private unnamed_addr constant [23 x i8] c"dev_attr_forward_delay\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c"dev_attr_hello_time\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"dev_attr_max_age\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [21 x i8] c"dev_attr_ageing_time\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c"dev_attr_stp_state\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [24 x i8] c"dev_attr_group_fwd_mask\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [18 x i8] c"dev_attr_priority\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [19 x i8] c"dev_attr_bridge_id\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"dev_attr_root_id\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [24 x i8] c"dev_attr_root_path_cost\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [19 x i8] c"dev_attr_root_port\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [25 x i8] c"dev_attr_topology_change\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [34 x i8] c"dev_attr_topology_change_detected\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [21 x i8] c"dev_attr_hello_timer\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [19 x i8] c"dev_attr_tcn_timer\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [31 x i8] c"dev_attr_topology_change_timer\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [18 x i8] c"dev_attr_gc_timer\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [20 x i8] c"dev_attr_group_addr\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [15 x i8] c"dev_attr_flush\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [28 x i8] c"dev_attr_no_linklocal_learn\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [26 x i8] c"dev_attr_multicast_router\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [28 x i8] c"dev_attr_multicast_snooping\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [27 x i8] c"dev_attr_multicast_querier\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [36 x i8] c"dev_attr_multicast_query_use_ifaddr\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [25 x i8] c"dev_attr_hash_elasticity\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [18 x i8] c"dev_attr_hash_max\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [37 x i8] c"dev_attr_multicast_last_member_count\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [39 x i8] c"dev_attr_multicast_startup_query_count\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [40 x i8] c"dev_attr_multicast_last_member_interval\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [39 x i8] c"dev_attr_multicast_membership_interval\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [36 x i8] c"dev_attr_multicast_querier_interval\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [34 x i8] c"dev_attr_multicast_query_interval\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [43 x i8] c"dev_attr_multicast_query_response_interval\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [42 x i8] c"dev_attr_multicast_startup_query_interval\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [33 x i8] c"dev_attr_multicast_stats_enabled\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [32 x i8] c"dev_attr_multicast_igmp_version\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [31 x i8] c"dev_attr_multicast_mld_version\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [26 x i8] c"dev_attr_nf_call_iptables\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [27 x i8] c"dev_attr_nf_call_ip6tables\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [27 x i8] c"dev_attr_nf_call_arptables\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [24 x i8] c"dev_attr_vlan_filtering\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [23 x i8] c"dev_attr_vlan_protocol\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [22 x i8] c"dev_attr_default_pvid\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [28 x i8] c"dev_attr_vlan_stats_enabled\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [29 x i8] c"dev_attr_vlan_stats_per_port\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 85, i32 8 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 70, i32 22 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 56, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 58, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 106, i32 8 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 126, i32 8 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 147, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 169, i32 8 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 153, i32 22 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 197, i32 8 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 176, i32 22 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 219, i32 8 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 233, i32 8 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 226, i32 8 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 247, i32 8 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 240, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 254, i32 8 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 263, i32 8 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 271, i32 8 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 269, i32 22 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 279, i32 8 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 288, i32 8 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 296, i32 8 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 342, i32 8 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 302, i32 22 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 357, i32 8 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 379, i32 8 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 401, i32 8 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 417, i32 8 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 464, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 442, i32 8 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 487, i32 8 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 469, i32 22 }
@___asan_gen_.351 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 476, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 508, i32 8 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 554, i32 8 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 576, i32 8 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 599, i32 8 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 622, i32 8 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 646, i32 8 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 670, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 694, i32 8 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 718, i32 8 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 744, i32 8 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 531, i32 8 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 768, i32 8 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 792, i32 8 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 814, i32 8 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 836, i32 8 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 853, i32 8 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 869, i32 8 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 860, i32 22 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 885, i32 8 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 907, i32 8 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 929, i32 8 }
@___asan_gen_.417 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.418 = private constant [28 x i8] c"../net/bridge/br_sysfs_br.c\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 1023, i32 20 }
@llvm.compiler.used = appending global [122 x ptr] [ptr @br_sysfs_addbr._entry, ptr @br_sysfs_addbr._entry.3, ptr @br_sysfs_addbr._entry.7, ptr @br_sysfs_addbr._entry_ptr, ptr @br_sysfs_addbr._entry_ptr.5, ptr @br_sysfs_addbr._entry_ptr.9, ptr @store_bridge_parm._entry, ptr @store_bridge_parm._entry.15, ptr @store_bridge_parm._entry_ptr, ptr @store_bridge_parm._entry_ptr.17, ptr @bridge_group, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @bridge_forward, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @bridge_attrs, ptr @dev_attr_forward_delay, ptr @dev_attr_hello_time, ptr @dev_attr_max_age, ptr @dev_attr_ageing_time, ptr @dev_attr_stp_state, ptr @dev_attr_group_fwd_mask, ptr @dev_attr_priority, ptr @dev_attr_bridge_id, ptr @dev_attr_root_id, ptr @dev_attr_root_path_cost, ptr @dev_attr_root_port, ptr @dev_attr_topology_change, ptr @dev_attr_topology_change_detected, ptr @dev_attr_hello_timer, ptr @dev_attr_tcn_timer, ptr @dev_attr_topology_change_timer, ptr @dev_attr_gc_timer, ptr @dev_attr_group_addr, ptr @dev_attr_flush, ptr @dev_attr_no_linklocal_learn, ptr @dev_attr_multicast_router, ptr @dev_attr_multicast_snooping, ptr @dev_attr_multicast_querier, ptr @dev_attr_multicast_query_use_ifaddr, ptr @dev_attr_hash_elasticity, ptr @dev_attr_hash_max, ptr @dev_attr_multicast_last_member_count, ptr @dev_attr_multicast_startup_query_count, ptr @dev_attr_multicast_last_member_interval, ptr @dev_attr_multicast_membership_interval, ptr @dev_attr_multicast_querier_interval, ptr @dev_attr_multicast_query_interval, ptr @dev_attr_multicast_query_response_interval, ptr @dev_attr_multicast_startup_query_interval, ptr @dev_attr_multicast_stats_enabled, ptr @dev_attr_multicast_igmp_version, ptr @dev_attr_multicast_mld_version, ptr @dev_attr_nf_call_iptables, ptr @dev_attr_nf_call_ip6tables, ptr @dev_attr_nf_call_arptables, ptr @dev_attr_vlan_filtering, ptr @dev_attr_vlan_protocol, ptr @dev_attr_default_pvid, ptr @dev_attr_vlan_stats_enabled, ptr @dev_attr_vlan_stats_per_port, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @set_elasticity.__msg, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [117 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_sysfs_addbr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_forward to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_sysfs_addbr._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_sysfs_addbr._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_attrs to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_forward_delay to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hello_time to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_age to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ageing_time to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stp_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_group_fwd_mask to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_priority to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bridge_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_root_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_root_path_cost to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_root_port to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_topology_change to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_topology_change_detected to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hello_timer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tcn_timer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_topology_change_timer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gc_timer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_group_addr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_flush to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_no_linklocal_learn to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_multicast_router to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_multicast_snooping to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_multicast_querier to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_multicast_query_use_ifaddr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hash_elasticity to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hash_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_multicast_last_member_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_multicast_startup_query_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_multicast_last_member_interval to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_multicast_membership_interval to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_multicast_querier_interval to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_multicast_query_interval to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_multicast_query_response_interval to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_multicast_startup_query_interval to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_multicast_stats_enabled to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_multicast_igmp_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_multicast_mld_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nf_call_iptables to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nf_call_ip6tables to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nf_call_arptables to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vlan_filtering to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vlan_protocol to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_default_pvid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vlan_stats_enabled to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vlan_stats_per_port to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_bridge_parm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_bridge_parm._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_elasticity.__msg to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_sysfs_addbr(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %call2 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @bridge_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @sysfs_create_bin_file(ptr noundef %dev1, ptr noundef nonnull @bridge_forward) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end14, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @bridge_forward, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %dev, ptr noundef %0) #11
  br label %out2

if.end14:                                         ; preds = %if.end
  %call15 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.6, ptr noundef %dev1) #8
  %ifobj = getelementptr i8, ptr %dev, i32 4192
  %1 = ptrtoint ptr %ifobj to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call15, ptr %ifobj, align 4
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %do.end21, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef %dev, ptr noundef nonnull @.str.6) #11
  tail call void @sysfs_remove_bin_file(ptr noundef %dev1, ptr noundef nonnull @bridge_forward) #8
  br label %out2

out2:                                             ; preds = %do.end21, %do.end9
  %err.0 = phi i32 [ %call4, %do.end9 ], [ -12, %do.end21 ]
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @bridge_group) #8
  br label %cleanup

cleanup:                                          ; preds = %out2, %if.end14.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end14.cleanup_crit_edge ], [ %call2, %do.end ], [ %err.0, %out2 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_sysfs_delbr(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %ifobj = getelementptr i8, ptr %dev, i32 4192
  %0 = ptrtoint ptr %ifobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifobj, align 4
  tail call void @kobject_put(ptr noundef %1) #8
  tail call void @sysfs_remove_bin_file(ptr noundef %dev1, ptr noundef nonnull @bridge_forward) #8
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @bridge_group) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @forward_delay_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %forward_delay = getelementptr i8, ptr %d, i32 1736
  %0 = ptrtoint ptr %forward_delay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %forward_delay, align 4
  %call1 = tail call i32 @jiffies_to_clock_t(i32 noundef %1) #8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @forward_delay_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_forward_delay)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readonly %set) unnamed_addr #0 align 64 {
entry:
  %extack = alloca %struct.netlink_ext_ack, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %d, i32 1200
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack) #8
  %0 = call ptr @memset(ptr %extack, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !202
  %dev = getelementptr i8, ptr %d, i32 1292
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %call2 = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 12) #8
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @rtnl_trylock() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call i32 @llvm.read_register.i32(metadata !192) #8
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stack.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %13) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %call10 = call i32 %set(ptr noundef %add.ptr.i, i32 noundef %15, ptr noundef nonnull %extack) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %if.end14.thread

if.end14:                                         ; preds = %if.end9
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  call void @netdev_state_change(ptr noundef %17) #8
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extack, align 4
  %tobool15.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %if.end14.if.end33_crit_edge, label %do.end25

if.end14.if.end33_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end14.thread:                                  ; preds = %if.end9
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extack, align 4
  %tobool15.not47 = icmp eq ptr %21, null
  br i1 %tobool15.not47, label %if.end14.thread.if.end33_crit_edge, label %do.end

if.end14.thread.if.end33_crit_edge:               ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

do.end:                                           ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %23, ptr noundef nonnull %21) #11
  br label %if.end33

do.end25:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %25, ptr noundef nonnull %19) #11
  br label %if.end33

if.end33:                                         ; preds = %do.end25, %do.end, %if.end14.thread.if.end33_crit_edge, %if.end14.if.end33_crit_edge
  %len.call10 = phi i32 [ %call10, %if.end14.thread.if.end33_crit_edge ], [ %call10, %do.end ], [ %len, %do.end25 ], [ %len, %if.end14.if.end33_crit_edge ]
  call void @rtnl_unlock() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.call10, %if.end33 ], [ -513, %if.then7 ], [ -1, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_forward_delay(ptr noundef %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @br_set_forward_delay(ptr noundef %br, i32 noundef %val) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_trylock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_state_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_set_forward_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hello_time_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hello_time = getelementptr i8, ptr %d, i32 1732
  %0 = ptrtoint ptr %hello_time to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hello_time, align 4
  %call1 = tail call i32 @jiffies_to_clock_t(i32 noundef %1) #8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hello_time_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_hello_time)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_hello_time(ptr noundef %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @br_set_hello_time(ptr noundef %br, i32 noundef %val) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_set_hello_time(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_age_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_age = getelementptr i8, ptr %d, i32 1728
  %0 = ptrtoint ptr %max_age to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_age, align 4
  %call1 = tail call i32 @jiffies_to_clock_t(i32 noundef %1) #8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_age_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_max_age)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_max_age(ptr noundef %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @br_set_max_age(ptr noundef %br, i32 noundef %val) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_set_max_age(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ageing_time_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ageing_time = getelementptr i8, ptr %d, i32 1740
  %0 = ptrtoint ptr %ageing_time to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ageing_time, align 4
  %call1 = tail call i32 @jiffies_to_clock_t(i32 noundef %1) #8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ageing_time_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_ageing_time)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_ageing_time(ptr noundef %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @br_set_ageing_time(ptr noundef %br, i32 noundef %val) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_set_ageing_time(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stp_state_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stp_enabled = getelementptr i8, ptr %d, i32 1772
  %0 = ptrtoint ptr %stp_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stp_enabled, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stp_state_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_stp_state)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_stp_state(ptr noundef %br, i32 noundef %val, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @br_stp_set_enabled(ptr noundef %br, i32 noundef %val, ptr noundef %extack) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_stp_set_enabled(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @group_fwd_mask_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %group_fwd_mask = getelementptr i8, ptr %d, i32 1704
  %0 = ptrtoint ptr %group_fwd_mask to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %group_fwd_mask, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.24, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @group_fwd_mask_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_group_fwd_mask)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @set_group_fwd_mask(ptr nocapture noundef writeonly %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %val, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %val to i16
  %group_fwd_mask = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 11
  %0 = ptrtoint ptr %group_fwd_mask to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %group_fwd_mask, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @priority_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge_id = getelementptr i8, ptr %d, i32 1716
  %0 = ptrtoint ptr %bridge_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge_id, align 4
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx3 = getelementptr i8, ptr %d, i32 1717
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %or = or i32 %shl, %conv4
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %or)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @priority_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_priority)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_priority(ptr noundef %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %val to i16
  tail call void @br_stp_set_bridge_priority(ptr noundef %br, i16 noundef zeroext %conv) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_stp_set_bridge_priority(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bridge_id_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge_id = getelementptr i8, ptr %d, i32 1716
  %call1 = tail call i32 @br_show_bridge_id(ptr noundef %buf, ptr noundef %bridge_id) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_show_bridge_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @root_id_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %designated_root = getelementptr i8, ptr %d, i32 1708
  %call1 = tail call i32 @br_show_bridge_id(ptr noundef %buf, ptr noundef %designated_root) #8
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @root_path_cost_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_path_cost = getelementptr i8, ptr %d, i32 1760
  %0 = ptrtoint ptr %root_path_cost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %root_path_cost, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @root_port_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_port = getelementptr i8, ptr %d, i32 1726
  %0 = ptrtoint ptr %root_port to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %root_port, align 2
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @topology_change_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %topology_change = getelementptr i8, ptr %d, i32 1724
  %0 = ptrtoint ptr %topology_change to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %topology_change, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @topology_change_detected_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %topology_change_detected = getelementptr i8, ptr %d, i32 1725
  %0 = ptrtoint ptr %topology_change_detected to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %topology_change_detected, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hello_timer_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hello_timer = getelementptr i8, ptr %d, i32 2844
  %call1 = tail call i32 @br_timer_value(ptr noundef %hello_timer) #8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.33, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_timer_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcn_timer_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tcn_timer = getelementptr i8, ptr %d, i32 2892
  %call1 = tail call i32 @br_timer_value(ptr noundef %tcn_timer) #8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.33, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @topology_change_timer_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %topology_change_timer = getelementptr i8, ptr %d, i32 2940
  %call1 = tail call i32 @br_timer_value(ptr noundef %topology_change_timer) #8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.33, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gc_timer_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr i8, ptr %d, i32 3032
  %call1 = tail call i32 @br_timer_value(ptr noundef %timer) #8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.33, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @group_addr_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %group_addr = getelementptr i8, ptr %d, i32 1764
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, ptr noundef %group_addr)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @group_addr_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %new_addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %d, i32 1200
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %new_addr) #8
  %0 = getelementptr inbounds [6 x i8], ptr %new_addr, i32 0, i32 4
  %1 = getelementptr inbounds [6 x i8], ptr %new_addr, i32 0, i32 5
  %dev = getelementptr i8, ptr %d, i32 1292
  %2 = call ptr @memset(ptr %new_addr, i32 255, i32 6)
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nd_net.i, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user_ns, align 4
  %call2 = tail call zeroext i1 @ns_capable(ptr noundef %8, i32 noundef 12) #8
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call zeroext i1 @mac_pton(ptr noundef %buf, ptr noundef nonnull %new_addr) #8
  br i1 %call3, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %new_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %new_addr, align 4
  %xor.i = xor i32 %10, 25215488
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %0, align 4
  %13 = and i16 %12, -16
  %and.i = zext i16 %13 to i32
  %or.i = or i32 %xor.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 1
  %.off = add i8 %15, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.end9.cleanup_crit_edge, label %if.end21

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %call22 = call i32 @rtnl_trylock() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %16 = call i32 @llvm.read_register.i32(metadata !192) #8
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stack.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %21) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i) #8
  %group_addr = getelementptr i8, ptr %d, i32 1764
  %22 = ptrtoint ptr %new_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %new_addr, align 4
  %24 = ptrtoint ptr %group_addr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %group_addr, align 4
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %0, align 4
  %add.ptr1.i = getelementptr i8, ptr %d, i32 1768
  %27 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %add.ptr1.i, align 2
  call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i) #8
  call void @br_opt_toggle(ptr noundef %add.ptr.i, i32 noundef 5, i1 noundef zeroext true) #8
  call void @br_recalculate_fwd_mask(ptr noundef %add.ptr.i) #8
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  call void @netdev_state_change(ptr noundef %29) #8
  call void @rtnl_unlock() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then23, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end25 ], [ -513, %if.then23 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %new_addr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mac_pton(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_opt_toggle(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_recalculate_fwd_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flush_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_flush)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_flush(ptr noundef %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @br_fdb_flush(ptr noundef %br) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_fdb_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @no_linklocal_learn_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %d, i32 1200
  %call1 = tail call i32 @br_boolopt_get(ptr noundef %add.ptr.i, i32 noundef 0) #8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @no_linklocal_learn_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_no_linklocal_learn)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_boolopt_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_no_linklocal_learn(ptr noundef %br, i32 noundef %val, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool = icmp ne i32 %val, 0
  %call = tail call i32 @br_boolopt_toggle(ptr noundef %br, i32 noundef 0, i1 noundef zeroext %tobool, ptr noundef %extack) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_boolopt_toggle(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_router_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_router = getelementptr i8, ptr %d, i32 1794
  %0 = ptrtoint ptr %multicast_router to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %multicast_router, align 2
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_router_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_multicast_router)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_multicast_router(ptr noundef %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_ctx = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 29
  %call = tail call i32 @br_multicast_set_router(ptr noundef %multicast_ctx, i32 noundef %val) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_set_router(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_snooping_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %options.i = getelementptr i8, ptr %d, i32 1296
  %0 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %options.i, align 4
  %shr.i.i = lshr i32 %1, 6
  %and1.i.i = and i32 %shr.i.i, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %and1.i.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_snooping_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %extack.i = alloca %struct.netlink_ext_ack, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i) #8
  %0 = call ptr @memset(ptr %extack.i, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val.i, align 4, !annotation !202
  %dev.i = getelementptr i8, ptr %d, i32 1292
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i.i, align 4
  %user_ns.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i, align 4
  %call2.i = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 12) #8
  br i1 %call2.i, label %if.end.i, label %entry.store_bridge_parm.exit_crit_edge

entry.store_bridge_parm.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %store_bridge_parm.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i.store_bridge_parm.exit_crit_edge

if.end.i.store_bridge_parm.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %store_bridge_parm.exit

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @rtnl_trylock() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call i32 @llvm.read_register.i32(metadata !192) #8
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stack.i.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %13) #8
  br label %store_bridge_parm.exit

if.end9.i:                                        ; preds = %if.end5.i
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i, align 4
  %call10.i = call i32 @br_multicast_toggle(ptr noundef %add.ptr.i.i, i32 noundef %15, ptr noundef nonnull %extack.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end14.i, label %if.end14.thread.i

if.end14.i:                                       ; preds = %if.end9.i
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  call void @netdev_state_change(ptr noundef %17) #8
  %18 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extack.i, align 4
  %tobool15.not.i = icmp eq ptr %19, null
  br i1 %tobool15.not.i, label %if.end14.i.if.end33.i_crit_edge, label %do.end25.i

if.end14.i.if.end33.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.end14.thread.i:                                ; preds = %if.end9.i
  %20 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extack.i, align 4
  %tobool15.not47.i = icmp eq ptr %21, null
  br i1 %tobool15.not47.i, label %if.end14.thread.i.if.end33.i_crit_edge, label %do.end.i

if.end14.thread.i.if.end33.i_crit_edge:           ; preds = %if.end14.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

do.end.i:                                         ; preds = %if.end14.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %23, ptr noundef nonnull %21) #11
  br label %if.end33.i

do.end25.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %25, ptr noundef nonnull %19) #11
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.end25.i, %do.end.i, %if.end14.thread.i.if.end33.i_crit_edge, %if.end14.i.if.end33.i_crit_edge
  %len.call10.i = phi i32 [ %call10.i, %if.end14.thread.i.if.end33.i_crit_edge ], [ %call10.i, %do.end.i ], [ %len, %do.end25.i ], [ %len, %if.end14.i.if.end33.i_crit_edge ]
  call void @rtnl_unlock() #8
  br label %store_bridge_parm.exit

store_bridge_parm.exit:                           ; preds = %if.end33.i, %if.then7.i, %if.end.i.store_bridge_parm.exit_crit_edge, %entry.store_bridge_parm.exit_crit_edge
  %retval.0.i = phi i32 [ %len.call10.i, %if.end33.i ], [ -513, %if.then7.i ], [ -1, %entry.store_bridge_parm.exit_crit_edge ], [ %call.i.i, %if.end.i.store_bridge_parm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_toggle(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_querier_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_querier = getelementptr i8, ptr %d, i32 1792
  %0 = ptrtoint ptr %multicast_querier to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %multicast_querier, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_querier_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_multicast_querier)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_multicast_querier(ptr noundef %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_ctx = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 29
  %call = tail call i32 @br_multicast_set_querier(ptr noundef %multicast_ctx, i32 noundef %val) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_set_querier(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_query_use_ifaddr_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %options.i = getelementptr i8, ptr %d, i32 1296
  %0 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %options.i, align 4
  %shr.i.i = lshr i32 %1, 7
  %and1.i.i = and i32 %shr.i.i, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %and1.i.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_query_use_ifaddr_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_query_use_ifaddr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_query_use_ifaddr(ptr noundef %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool = icmp ne i32 %val, 0
  tail call void @br_opt_toggle(ptr noundef %br, i32 noundef 7, i1 noundef zeroext %tobool) #8
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_elasticity_show(ptr nocapture noundef readnone %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.46, i32 noundef 16)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_elasticity_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_elasticity)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_elasticity(ptr nocapture noundef readnone %br, i32 noundef %val, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @set_elasticity.__msg) #8
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @set_elasticity.__msg, ptr %extack, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_max_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_max = getelementptr i8, ptr %d, i32 2288
  %0 = ptrtoint ptr %hash_max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hash_max, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.46, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_max_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_hash_max)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @set_hash_max(ptr nocapture noundef writeonly %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_max = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 31
  %0 = ptrtoint ptr %hash_max to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %hash_max, align 4
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_last_member_count_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_last_member_count = getelementptr i8, ptr %d, i32 1784
  %0 = ptrtoint ptr %multicast_last_member_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %multicast_last_member_count, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.46, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_last_member_count_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_last_member_count)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @set_last_member_count(ptr nocapture noundef writeonly %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_last_member_count = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 29, i32 2
  %0 = ptrtoint ptr %multicast_last_member_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %multicast_last_member_count, align 4
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_startup_query_count_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_startup_query_count = getelementptr i8, ptr %d, i32 1788
  %0 = ptrtoint ptr %multicast_startup_query_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %multicast_startup_query_count, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.46, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_startup_query_count_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_startup_query_count)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @set_startup_query_count(ptr nocapture noundef writeonly %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_startup_query_count = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 29, i32 3
  %0 = ptrtoint ptr %multicast_startup_query_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %multicast_startup_query_count, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_last_member_interval_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_last_member_interval = getelementptr i8, ptr %d, i32 1796
  %0 = ptrtoint ptr %multicast_last_member_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %multicast_last_member_interval, align 4
  %call1 = tail call i32 @jiffies_to_clock_t(i32 noundef %1) #8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_last_member_interval_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_last_member_interval)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_last_member_interval(ptr nocapture noundef writeonly %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clock_t_to_jiffies(i32 noundef %val) #8
  %multicast_last_member_interval = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 29, i32 8
  %0 = ptrtoint ptr %multicast_last_member_interval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %multicast_last_member_interval, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clock_t_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_membership_interval_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_membership_interval = getelementptr i8, ptr %d, i32 1800
  %0 = ptrtoint ptr %multicast_membership_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %multicast_membership_interval, align 4
  %call1 = tail call i32 @jiffies_to_clock_t(i32 noundef %1) #8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_membership_interval_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_membership_interval)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_membership_interval(ptr nocapture noundef writeonly %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clock_t_to_jiffies(i32 noundef %val) #8
  %multicast_membership_interval = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 29, i32 9
  %0 = ptrtoint ptr %multicast_membership_interval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %multicast_membership_interval, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_querier_interval_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_querier_interval = getelementptr i8, ptr %d, i32 1804
  %0 = ptrtoint ptr %multicast_querier_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %multicast_querier_interval, align 4
  %call1 = tail call i32 @jiffies_to_clock_t(i32 noundef %1) #8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_querier_interval_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_querier_interval)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_querier_interval(ptr nocapture noundef writeonly %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clock_t_to_jiffies(i32 noundef %val) #8
  %multicast_querier_interval = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 29, i32 10
  %0 = ptrtoint ptr %multicast_querier_interval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %multicast_querier_interval, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_query_interval_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_query_interval = getelementptr i8, ptr %d, i32 1808
  %0 = ptrtoint ptr %multicast_query_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %multicast_query_interval, align 4
  %call1 = tail call i32 @jiffies_to_clock_t(i32 noundef %1) #8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_query_interval_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_query_interval)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_query_interval(ptr noundef %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_ctx = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 29
  tail call void @br_multicast_set_query_intvl(ptr noundef %multicast_ctx, i32 noundef %val) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_set_query_intvl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_query_response_interval_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_query_response_interval = getelementptr i8, ptr %d, i32 1812
  %0 = ptrtoint ptr %multicast_query_response_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %multicast_query_response_interval, align 4
  %call1 = tail call i32 @jiffies_to_clock_t(i32 noundef %1) #8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_query_response_interval_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_query_response_interval)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_query_response_interval(ptr nocapture noundef writeonly %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clock_t_to_jiffies(i32 noundef %val) #8
  %multicast_query_response_interval = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 29, i32 12
  %0 = ptrtoint ptr %multicast_query_response_interval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %multicast_query_response_interval, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_startup_query_interval_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_startup_query_interval = getelementptr i8, ptr %d, i32 1816
  %0 = ptrtoint ptr %multicast_startup_query_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %multicast_startup_query_interval, align 4
  %call1 = tail call i32 @jiffies_to_clock_t(i32 noundef %1) #8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_startup_query_interval_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_startup_query_interval)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_startup_query_interval(ptr noundef %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_ctx = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 29
  tail call void @br_multicast_set_startup_query_intvl(ptr noundef %multicast_ctx, i32 noundef %val) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_set_startup_query_intvl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_stats_enabled_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %options.i = getelementptr i8, ptr %d, i32 1296
  %0 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %options.i, align 4
  %shr.i.i = lshr i32 %1, 8
  %and1.i.i = and i32 %shr.i.i, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %and1.i.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_stats_enabled_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_stats_enabled)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_stats_enabled(ptr noundef %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool = icmp ne i32 %val, 0
  tail call void @br_opt_toggle(ptr noundef %br, i32 noundef 8, i1 noundef zeroext %tobool) #8
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_igmp_version_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_igmp_version = getelementptr i8, ptr %d, i32 1793
  %0 = ptrtoint ptr %multicast_igmp_version to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %multicast_igmp_version, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.46, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_igmp_version_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_multicast_igmp_version)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_multicast_igmp_version(ptr noundef %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_ctx = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 29
  %call = tail call i32 @br_multicast_set_igmp_version(ptr noundef %multicast_ctx, i32 noundef %val) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_set_igmp_version(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_mld_version_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_mld_version = getelementptr i8, ptr %d, i32 1795
  %0 = ptrtoint ptr %multicast_mld_version to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %multicast_mld_version, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.46, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_mld_version_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_multicast_mld_version)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_multicast_mld_version(ptr noundef %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_ctx = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 29
  %call = tail call i32 @br_multicast_set_mld_version(ptr noundef %multicast_ctx, i32 noundef %val) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_set_mld_version(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_call_iptables_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %options.i = getelementptr i8, ptr %d, i32 1296
  %0 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %options.i, align 4
  %shr.i.i = lshr i32 %1, 2
  %and1.i.i = and i32 %shr.i.i, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.46, i32 noundef %and1.i.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_call_iptables_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_nf_call_iptables)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_nf_call_iptables(ptr noundef %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool = icmp ne i32 %val, 0
  tail call void @br_opt_toggle(ptr noundef %br, i32 noundef 2, i1 noundef zeroext %tobool) #8
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_call_ip6tables_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %options.i = getelementptr i8, ptr %d, i32 1296
  %0 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %options.i, align 4
  %shr.i.i = lshr i32 %1, 3
  %and1.i.i = and i32 %shr.i.i, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.46, i32 noundef %and1.i.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_call_ip6tables_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_nf_call_ip6tables)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_nf_call_ip6tables(ptr noundef %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool = icmp ne i32 %val, 0
  tail call void @br_opt_toggle(ptr noundef %br, i32 noundef 3, i1 noundef zeroext %tobool) #8
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_call_arptables_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %options.i = getelementptr i8, ptr %d, i32 1296
  %0 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %options.i, align 4
  %shr.i.i = lshr i32 %1, 4
  %and1.i.i = and i32 %shr.i.i, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.46, i32 noundef %and1.i.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_call_arptables_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_nf_call_arptables)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_nf_call_arptables(ptr noundef %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool = icmp ne i32 %val, 0
  tail call void @br_opt_toggle(ptr noundef %br, i32 noundef 4, i1 noundef zeroext %tobool) #8
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_filtering_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %options.i = getelementptr i8, ptr %d, i32 1296
  %0 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %options.i, align 4
  %and1.i.i = and i32 %1, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %and1.i.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_filtering_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %extack.i = alloca %struct.netlink_ext_ack, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i) #8
  %0 = call ptr @memset(ptr %extack.i, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val.i, align 4, !annotation !202
  %dev.i = getelementptr i8, ptr %d, i32 1292
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i.i, align 4
  %user_ns.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i, align 4
  %call2.i = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 12) #8
  br i1 %call2.i, label %if.end.i, label %entry.store_bridge_parm.exit_crit_edge

entry.store_bridge_parm.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %store_bridge_parm.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i.store_bridge_parm.exit_crit_edge

if.end.i.store_bridge_parm.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %store_bridge_parm.exit

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @rtnl_trylock() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call i32 @llvm.read_register.i32(metadata !192) #8
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stack.i.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %13) #8
  br label %store_bridge_parm.exit

if.end9.i:                                        ; preds = %if.end5.i
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i, align 4
  %call10.i = call i32 @br_vlan_filter_toggle(ptr noundef %add.ptr.i.i, i32 noundef %15, ptr noundef nonnull %extack.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end14.i, label %if.end14.thread.i

if.end14.i:                                       ; preds = %if.end9.i
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  call void @netdev_state_change(ptr noundef %17) #8
  %18 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extack.i, align 4
  %tobool15.not.i = icmp eq ptr %19, null
  br i1 %tobool15.not.i, label %if.end14.i.if.end33.i_crit_edge, label %do.end25.i

if.end14.i.if.end33.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.end14.thread.i:                                ; preds = %if.end9.i
  %20 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extack.i, align 4
  %tobool15.not47.i = icmp eq ptr %21, null
  br i1 %tobool15.not47.i, label %if.end14.thread.i.if.end33.i_crit_edge, label %do.end.i

if.end14.thread.i.if.end33.i_crit_edge:           ; preds = %if.end14.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

do.end.i:                                         ; preds = %if.end14.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %23, ptr noundef nonnull %21) #11
  br label %if.end33.i

do.end25.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %25, ptr noundef nonnull %19) #11
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.end25.i, %do.end.i, %if.end14.thread.i.if.end33.i_crit_edge, %if.end14.i.if.end33.i_crit_edge
  %len.call10.i = phi i32 [ %call10.i, %if.end14.thread.i.if.end33.i_crit_edge ], [ %call10.i, %do.end.i ], [ %len, %do.end25.i ], [ %len, %if.end14.i.if.end33.i_crit_edge ]
  call void @rtnl_unlock() #8
  br label %store_bridge_parm.exit

store_bridge_parm.exit:                           ; preds = %if.end33.i, %if.then7.i, %if.end.i.store_bridge_parm.exit_crit_edge, %entry.store_bridge_parm.exit_crit_edge
  %retval.0.i = phi i32 [ %len.call10.i, %if.end33.i ], [ -513, %if.then7.i ], [ -1, %entry.store_bridge_parm.exit_crit_edge ], [ %call.i.i, %if.end.i.store_bridge_parm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_filter_toggle(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_protocol_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_proto = getelementptr i8, ptr %d, i32 1300
  %0 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vlan_proto, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.64, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_protocol_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %extack.i = alloca %struct.netlink_ext_ack, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i) #8
  %0 = call ptr @memset(ptr %extack.i, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val.i, align 4, !annotation !202
  %dev.i = getelementptr i8, ptr %d, i32 1292
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i.i, align 4
  %user_ns.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i, align 4
  %call2.i = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 12) #8
  br i1 %call2.i, label %if.end.i, label %entry.store_bridge_parm.exit_crit_edge

entry.store_bridge_parm.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %store_bridge_parm.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i.store_bridge_parm.exit_crit_edge

if.end.i.store_bridge_parm.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %store_bridge_parm.exit

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @rtnl_trylock() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call i32 @llvm.read_register.i32(metadata !192) #8
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stack.i.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %13) #8
  br label %store_bridge_parm.exit

if.end9.i:                                        ; preds = %if.end5.i
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i, align 4
  %call10.i = call i32 @br_vlan_set_proto(ptr noundef %add.ptr.i.i, i32 noundef %15, ptr noundef nonnull %extack.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end14.i, label %if.end14.thread.i

if.end14.i:                                       ; preds = %if.end9.i
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  call void @netdev_state_change(ptr noundef %17) #8
  %18 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extack.i, align 4
  %tobool15.not.i = icmp eq ptr %19, null
  br i1 %tobool15.not.i, label %if.end14.i.if.end33.i_crit_edge, label %do.end25.i

if.end14.i.if.end33.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.end14.thread.i:                                ; preds = %if.end9.i
  %20 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extack.i, align 4
  %tobool15.not47.i = icmp eq ptr %21, null
  br i1 %tobool15.not47.i, label %if.end14.thread.i.if.end33.i_crit_edge, label %do.end.i

if.end14.thread.i.if.end33.i_crit_edge:           ; preds = %if.end14.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

do.end.i:                                         ; preds = %if.end14.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %23, ptr noundef nonnull %21) #11
  br label %if.end33.i

do.end25.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %25, ptr noundef nonnull %19) #11
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.end25.i, %do.end.i, %if.end14.thread.i.if.end33.i_crit_edge, %if.end14.i.if.end33.i_crit_edge
  %len.call10.i = phi i32 [ %call10.i, %if.end14.thread.i.if.end33.i_crit_edge ], [ %call10.i, %do.end.i ], [ %len, %do.end25.i ], [ %len, %if.end14.i.if.end33.i_crit_edge ]
  call void @rtnl_unlock() #8
  br label %store_bridge_parm.exit

store_bridge_parm.exit:                           ; preds = %if.end33.i, %if.then7.i, %if.end.i.store_bridge_parm.exit_crit_edge, %entry.store_bridge_parm.exit_crit_edge
  %retval.0.i = phi i32 [ %len.call10.i, %if.end33.i ], [ -513, %if.then7.i ], [ -1, %entry.store_bridge_parm.exit_crit_edge ], [ %call.i.i, %if.end.i.store_bridge_parm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_set_proto(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @default_pvid_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %default_pvid = getelementptr i8, ptr %d, i32 1302
  %0 = ptrtoint ptr %default_pvid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %default_pvid, align 2
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @default_pvid_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %extack.i = alloca %struct.netlink_ext_ack, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i) #8
  %0 = call ptr @memset(ptr %extack.i, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val.i, align 4, !annotation !202
  %dev.i = getelementptr i8, ptr %d, i32 1292
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i.i, align 4
  %user_ns.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i, align 4
  %call2.i = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 12) #8
  br i1 %call2.i, label %if.end.i, label %entry.store_bridge_parm.exit_crit_edge

entry.store_bridge_parm.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %store_bridge_parm.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i.store_bridge_parm.exit_crit_edge

if.end.i.store_bridge_parm.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %store_bridge_parm.exit

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @rtnl_trylock() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call i32 @llvm.read_register.i32(metadata !192) #8
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stack.i.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %13) #8
  br label %store_bridge_parm.exit

if.end9.i:                                        ; preds = %if.end5.i
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i, align 4
  %call10.i = call i32 @br_vlan_set_default_pvid(ptr noundef %add.ptr.i.i, i32 noundef %15, ptr noundef nonnull %extack.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end14.i, label %if.end14.thread.i

if.end14.i:                                       ; preds = %if.end9.i
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  call void @netdev_state_change(ptr noundef %17) #8
  %18 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extack.i, align 4
  %tobool15.not.i = icmp eq ptr %19, null
  br i1 %tobool15.not.i, label %if.end14.i.if.end33.i_crit_edge, label %do.end25.i

if.end14.i.if.end33.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.end14.thread.i:                                ; preds = %if.end9.i
  %20 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extack.i, align 4
  %tobool15.not47.i = icmp eq ptr %21, null
  br i1 %tobool15.not47.i, label %if.end14.thread.i.if.end33.i_crit_edge, label %do.end.i

if.end14.thread.i.if.end33.i_crit_edge:           ; preds = %if.end14.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

do.end.i:                                         ; preds = %if.end14.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %23, ptr noundef nonnull %21) #11
  br label %if.end33.i

do.end25.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %25, ptr noundef nonnull %19) #11
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.end25.i, %do.end.i, %if.end14.thread.i.if.end33.i_crit_edge, %if.end14.i.if.end33.i_crit_edge
  %len.call10.i = phi i32 [ %call10.i, %if.end14.thread.i.if.end33.i_crit_edge ], [ %call10.i, %do.end.i ], [ %len, %do.end25.i ], [ %len, %if.end14.i.if.end33.i_crit_edge ]
  call void @rtnl_unlock() #8
  br label %store_bridge_parm.exit

store_bridge_parm.exit:                           ; preds = %if.end33.i, %if.then7.i, %if.end.i.store_bridge_parm.exit_crit_edge, %entry.store_bridge_parm.exit_crit_edge
  %retval.0.i = phi i32 [ %len.call10.i, %if.end33.i ], [ -513, %if.then7.i ], [ -1, %entry.store_bridge_parm.exit_crit_edge ], [ %call.i.i, %if.end.i.store_bridge_parm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_set_default_pvid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_stats_enabled_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %options.i = getelementptr i8, ptr %d, i32 1296
  %0 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %options.i, align 4
  %shr.i.i = lshr i32 %1, 1
  %and1.i.i = and i32 %shr.i.i, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.46, i32 noundef %and1.i.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_stats_enabled_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_vlan_stats_enabled)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_vlan_stats_enabled(ptr noundef %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @br_vlan_set_stats(ptr noundef %br, i32 noundef %val) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_set_stats(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_stats_per_port_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %options.i = getelementptr i8, ptr %d, i32 1296
  %0 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %options.i, align 4
  %shr.i.i = lshr i32 %1, 12
  %and1.i.i = and i32 %shr.i.i, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.46, i32 noundef %and1.i.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_stats_per_port_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_bridge_parm(ptr noundef %d, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @set_vlan_stats_per_port)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_vlan_stats_per_port(ptr noundef %br, i32 noundef %val, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @br_vlan_set_stats_per_port(ptr noundef %br, i32 noundef %val) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_set_stats_per_port(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brforward_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i64 %off, 15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %0)
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 1200
  %div13 = lshr i32 %count, 4
  %div2 = sdiv i64 %off, 16
  %conv = trunc i64 %div2 to i32
  %call3 = tail call i32 @br_fdb_fillbuf(ptr noundef %add.ptr.i, ptr noundef %buf, i32 noundef %div13, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp sgt i32 %call3, 0
  %mul = shl i32 %call3, 4
  %spec.select = select i1 %cmp4, i32 %mul, i32 %call3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_fdb_fillbuf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !18, !20, !22, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !52, !53, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !97, !99, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !181, !182, !184, !185, !187, !188, !190}
!llvm.named.register.sp = !{!192}
!llvm.module.flags = !{!193, !194, !195, !196, !197, !198, !199, !200}
!llvm.ident = !{!201}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bridge/br_sysfs_br.c", i32 1047, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @br_sysfs_addbr._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @br_sysfs_addbr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bridge/br_sysfs_br.c", i32 1054, i32 3}
!8 = !{ptr @br_sysfs_addbr._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @br_sysfs_addbr._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/bridge/br_sysfs_br.c", i32 1059, i32 37}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/bridge/br_sysfs_br.c", i32 1061, i32 3}
!14 = !{ptr @br_sysfs_addbr._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @br_sysfs_addbr._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/bridge/br_sysfs_br.c", i32 990, i32 10}
!18 = !{ptr @bridge_group, !19, !"bridge_group", i1 false, i1 false}
!19 = !{!"../net/bridge/br_sysfs_br.c", i32 989, i32 37}
!20 = !{ptr @bridge_attrs, !21, !"bridge_attrs", i1 false, i1 false}
!21 = !{!"../net/bridge/br_sysfs_br.c", i32 932, i32 26}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/bridge/br_sysfs_br.c", i32 85, i32 8}
!24 = !{ptr @dev_attr_forward_delay, !23, !"dev_attr_forward_delay", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/bridge/br_sysfs_br.c", i32 70, i32 22}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/bridge/br_sysfs_br.c", i32 56, i32 4}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @store_bridge_parm._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @store_bridge_parm._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/bridge/br_sysfs_br.c", i32 58, i32 4}
!34 = !{ptr @store_bridge_parm._entry.15, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @store_bridge_parm._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/bridge/br_sysfs_br.c", i32 106, i32 8}
!38 = !{ptr @dev_attr_hello_time, !37, !"dev_attr_hello_time", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/bridge/br_sysfs_br.c", i32 126, i32 8}
!41 = !{ptr @dev_attr_max_age, !40, !"dev_attr_max_age", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/bridge/br_sysfs_br.c", i32 147, i32 8}
!44 = !{ptr @dev_attr_ageing_time, !43, !"dev_attr_ageing_time", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/bridge/br_sysfs_br.c", i32 169, i32 8}
!47 = !{ptr @dev_attr_stp_state, !46, !"dev_attr_stp_state", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/bridge/br_sysfs_br.c", i32 153, i32 22}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/bridge/br_sysfs_br.c", i32 197, i32 8}
!52 = !{ptr @dev_attr_group_fwd_mask, !51, !"dev_attr_group_fwd_mask", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/bridge/br_sysfs_br.c", i32 176, i32 22}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/bridge/br_sysfs_br.c", i32 219, i32 8}
!57 = !{ptr @dev_attr_priority, !56, !"dev_attr_priority", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/bridge/br_sysfs_br.c", i32 233, i32 8}
!60 = !{ptr @dev_attr_bridge_id, !59, !"dev_attr_bridge_id", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/bridge/br_sysfs_br.c", i32 226, i32 8}
!63 = !{ptr @dev_attr_root_id, !62, !"dev_attr_root_id", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/bridge/br_sysfs_br.c", i32 247, i32 8}
!66 = !{ptr @dev_attr_root_path_cost, !65, !"dev_attr_root_path_cost", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/bridge/br_sysfs_br.c", i32 240, i32 8}
!69 = !{ptr @dev_attr_root_port, !68, !"dev_attr_root_port", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/bridge/br_sysfs_br.c", i32 254, i32 8}
!72 = !{ptr @dev_attr_topology_change, !71, !"dev_attr_topology_change", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/bridge/br_sysfs_br.c", i32 263, i32 8}
!75 = !{ptr @dev_attr_topology_change_detected, !74, !"dev_attr_topology_change_detected", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/bridge/br_sysfs_br.c", i32 271, i32 8}
!78 = !{ptr @dev_attr_hello_timer, !77, !"dev_attr_hello_timer", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/bridge/br_sysfs_br.c", i32 269, i32 22}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/bridge/br_sysfs_br.c", i32 279, i32 8}
!83 = !{ptr @dev_attr_tcn_timer, !82, !"dev_attr_tcn_timer", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/bridge/br_sysfs_br.c", i32 288, i32 8}
!86 = !{ptr @dev_attr_topology_change_timer, !85, !"dev_attr_topology_change_timer", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/bridge/br_sysfs_br.c", i32 296, i32 8}
!89 = !{ptr @dev_attr_gc_timer, !88, !"dev_attr_gc_timer", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/bridge/br_sysfs_br.c", i32 342, i32 8}
!92 = !{ptr @dev_attr_group_addr, !91, !"dev_attr_group_addr", i1 false, i1 false}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/bridge/br_sysfs_br.c", i32 302, i32 22}
!95 = distinct !{null, !96, !"b", i1 false, i1 false}
!96 = !{!"../include/linux/etherdevice.h", i32 86, i32 23}
!97 = distinct !{null, !98, !"m", i1 false, i1 false}
!98 = !{!"../include/linux/etherdevice.h", i32 87, i32 22}
!99 = distinct !{null, !100, !"eth_reserved_addr_base", i1 false, i1 false}
!100 = !{!"../include/linux/etherdevice.h", i32 70, i32 17}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/bridge/br_sysfs_br.c", i32 357, i32 8}
!103 = !{ptr @dev_attr_flush, !102, !"dev_attr_flush", i1 false, i1 false}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/bridge/br_sysfs_br.c", i32 379, i32 8}
!106 = !{ptr @dev_attr_no_linklocal_learn, !105, !"dev_attr_no_linklocal_learn", i1 false, i1 false}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/bridge/br_sysfs_br.c", i32 401, i32 8}
!109 = !{ptr @dev_attr_multicast_router, !108, !"dev_attr_multicast_router", i1 false, i1 false}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/bridge/br_sysfs_br.c", i32 417, i32 8}
!112 = !{ptr @dev_attr_multicast_snooping, !111, !"dev_attr_multicast_snooping", i1 false, i1 false}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/bridge/br_sysfs_br.c", i32 464, i32 8}
!115 = !{ptr @dev_attr_multicast_querier, !114, !"dev_attr_multicast_querier", i1 false, i1 false}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/bridge/br_sysfs_br.c", i32 442, i32 8}
!118 = !{ptr @dev_attr_multicast_query_use_ifaddr, !117, !"dev_attr_multicast_query_use_ifaddr", i1 false, i1 false}
!119 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/bridge/br_sysfs_br.c", i32 487, i32 8}
!121 = !{ptr @dev_attr_hash_elasticity, !120, !"dev_attr_hash_elasticity", i1 false, i1 false}
!122 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/bridge/br_sysfs_br.c", i32 469, i32 22}
!124 = !{ptr @set_elasticity.__msg, !125, !"__msg", i1 false, i1 false}
!125 = !{!"../net/bridge/br_sysfs_br.c", i32 476, i32 2}
!126 = !{ptr @.str.47, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../net/bridge/br_sysfs_br.c", i32 508, i32 8}
!128 = !{ptr @dev_attr_hash_max, !127, !"dev_attr_hash_max", i1 false, i1 false}
!129 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/bridge/br_sysfs_br.c", i32 554, i32 8}
!131 = !{ptr @dev_attr_multicast_last_member_count, !130, !"dev_attr_multicast_last_member_count", i1 false, i1 false}
!132 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/bridge/br_sysfs_br.c", i32 576, i32 8}
!134 = !{ptr @dev_attr_multicast_startup_query_count, !133, !"dev_attr_multicast_startup_query_count", i1 false, i1 false}
!135 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/bridge/br_sysfs_br.c", i32 599, i32 8}
!137 = !{ptr @dev_attr_multicast_last_member_interval, !136, !"dev_attr_multicast_last_member_interval", i1 false, i1 false}
!138 = !{ptr @.str.51, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../net/bridge/br_sysfs_br.c", i32 622, i32 8}
!140 = !{ptr @dev_attr_multicast_membership_interval, !139, !"dev_attr_multicast_membership_interval", i1 false, i1 false}
!141 = !{ptr @.str.52, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../net/bridge/br_sysfs_br.c", i32 646, i32 8}
!143 = !{ptr @dev_attr_multicast_querier_interval, !142, !"dev_attr_multicast_querier_interval", i1 false, i1 false}
!144 = !{ptr @.str.53, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/bridge/br_sysfs_br.c", i32 670, i32 8}
!146 = !{ptr @dev_attr_multicast_query_interval, !145, !"dev_attr_multicast_query_interval", i1 false, i1 false}
!147 = !{ptr @.str.54, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../net/bridge/br_sysfs_br.c", i32 694, i32 8}
!149 = !{ptr @dev_attr_multicast_query_response_interval, !148, !"dev_attr_multicast_query_response_interval", i1 false, i1 false}
!150 = !{ptr @.str.55, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../net/bridge/br_sysfs_br.c", i32 718, i32 8}
!152 = !{ptr @dev_attr_multicast_startup_query_interval, !151, !"dev_attr_multicast_startup_query_interval", i1 false, i1 false}
!153 = !{ptr @.str.56, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../net/bridge/br_sysfs_br.c", i32 744, i32 8}
!155 = !{ptr @dev_attr_multicast_stats_enabled, !154, !"dev_attr_multicast_stats_enabled", i1 false, i1 false}
!156 = !{ptr @.str.57, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../net/bridge/br_sysfs_br.c", i32 531, i32 8}
!158 = !{ptr @dev_attr_multicast_igmp_version, !157, !"dev_attr_multicast_igmp_version", i1 false, i1 false}
!159 = !{ptr @.str.58, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../net/bridge/br_sysfs_br.c", i32 768, i32 8}
!161 = !{ptr @dev_attr_multicast_mld_version, !160, !"dev_attr_multicast_mld_version", i1 false, i1 false}
!162 = !{ptr @.str.59, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../net/bridge/br_sysfs_br.c", i32 792, i32 8}
!164 = !{ptr @dev_attr_nf_call_iptables, !163, !"dev_attr_nf_call_iptables", i1 false, i1 false}
!165 = !{ptr @.str.60, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../net/bridge/br_sysfs_br.c", i32 814, i32 8}
!167 = !{ptr @dev_attr_nf_call_ip6tables, !166, !"dev_attr_nf_call_ip6tables", i1 false, i1 false}
!168 = !{ptr @.str.61, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../net/bridge/br_sysfs_br.c", i32 836, i32 8}
!170 = !{ptr @dev_attr_nf_call_arptables, !169, !"dev_attr_nf_call_arptables", i1 false, i1 false}
!171 = !{ptr @.str.62, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/bridge/br_sysfs_br.c", i32 853, i32 8}
!173 = !{ptr @dev_attr_vlan_filtering, !172, !"dev_attr_vlan_filtering", i1 false, i1 false}
!174 = !{ptr @.str.63, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../net/bridge/br_sysfs_br.c", i32 869, i32 8}
!176 = !{ptr @dev_attr_vlan_protocol, !175, !"dev_attr_vlan_protocol", i1 false, i1 false}
!177 = !{ptr @.str.64, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../net/bridge/br_sysfs_br.c", i32 860, i32 22}
!179 = !{ptr @.str.65, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../net/bridge/br_sysfs_br.c", i32 885, i32 8}
!181 = !{ptr @dev_attr_default_pvid, !180, !"dev_attr_default_pvid", i1 false, i1 false}
!182 = !{ptr @.str.66, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../net/bridge/br_sysfs_br.c", i32 907, i32 8}
!184 = !{ptr @dev_attr_vlan_stats_enabled, !183, !"dev_attr_vlan_stats_enabled", i1 false, i1 false}
!185 = !{ptr @.str.67, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../net/bridge/br_sysfs_br.c", i32 929, i32 8}
!187 = !{ptr @dev_attr_vlan_stats_per_port, !186, !"dev_attr_vlan_stats_per_port", i1 false, i1 false}
!188 = !{ptr @.str.68, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../net/bridge/br_sysfs_br.c", i32 1023, i32 20}
!190 = !{ptr @bridge_forward, !191, !"bridge_forward", i1 false, i1 false}
!191 = !{!"../net/bridge/br_sysfs_br.c", i32 1022, i32 29}
!192 = !{!"sp"}
!193 = !{i32 1, !"wchar_size", i32 2}
!194 = !{i32 1, !"min_enum_size", i32 4}
!195 = !{i32 8, !"branch-target-enforcement", i32 0}
!196 = !{i32 8, !"sign-return-address", i32 0}
!197 = !{i32 8, !"sign-return-address-all", i32 0}
!198 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!199 = !{i32 7, !"uwtable", i32 1}
!200 = !{i32 7, !"frame-pointer", i32 2}
!201 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!202 = !{!"auto-init"}
