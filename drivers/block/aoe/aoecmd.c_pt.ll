; ModuleID = '/llk/IR_all_yes/drivers/block/aoe/aoecmd.c_pt.bc'
source_filename = "../drivers/block/aoe/aoecmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.105 }
%union.anon.105 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.63, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.63 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.frame = type { %struct.list_head, i32, i64, i32, i32, ptr, ptr, ptr, ptr, %struct.bvec_iter, i8 }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.aoetgt = type { [6 x i8], i16, ptr, %struct.list_head, [8 x %struct.aoeif], ptr, i16, i16, i16, i16, i32, i32, i32, i32, i32, i8 }
%struct.aoeif = type { ptr, i32, i32 }
%struct.aoedev = type { ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, %struct.work_struct, ptr, ptr, ptr, %struct.list_head, %struct.blk_mq_tag_set, %struct.hd_geometry, i64, %struct.timer_list, %struct.spinlock, %struct.sk_buff_head, ptr, %struct.anon.127, i32, [61 x %struct.list_head], %struct.list_head, ptr, i32, ptr, i32, [512 x i8] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.anon.127 = type { ptr, ptr, ptr }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.68, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.69, %union.anon.70, %union.anon.71, %union.anon.76, ptr, ptr }
%union.anon.68 = type { %struct.list_head }
%union.anon.69 = type { %struct.hlist_node }
%union.anon.70 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.71 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, %struct.list_head, ptr }
%union.anon.76 = type { i64, [8 x i8] }
%struct.buf = type { i32, ptr, %struct.bvec_iter, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.67, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bio_issue = type { i64 }
%union.anon.67 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.aoe_hdr = type { [6 x i8], [6 x i8], i16, i8, i8, i16, i8, i8, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.112, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.112 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ktstate = type { %struct.completion, ptr, ptr, ptr, [12 x i8], ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.91, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.91 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.iocq_ktio = type { %struct.list_head, %struct.spinlock }
%struct.page = type { i32, %union.anon.2, %union.anon.104, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.104 = type { %struct.atomic_t }
%struct.aoe_atahdr = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }

@__param_str_aoe_deadsecs = internal constant [17 x i8] c"aoe.aoe_deadsecs\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@aoe_deadsecs = internal global { i32, [28 x i8] } { i32 180, [28 x i8] zeroinitializer }, align 32
@__param_aoe_deadsecs = internal constant %struct.kernel_param { ptr @__param_str_aoe_deadsecs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.105 { ptr @aoe_deadsecs } }, section "__param", align 4
@__UNIQUE_ID_aoe_deadsecstype371 = internal constant [30 x i8] c"aoe.parmtype=aoe_deadsecs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_aoe_deadsecs372 = internal constant [72 x i8] c"aoe.parm=aoe_deadsecs:After aoe_deadsecs seconds, give up and fail dev.\00", section ".modinfo", align 1
@__param_str_aoe_maxout = internal constant [15 x i8] c"aoe.aoe_maxout\00", align 1
@aoe_maxout = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_aoe_maxout = internal constant %struct.kernel_param { ptr @__param_str_aoe_maxout, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.105 { ptr @aoe_maxout } }, section "__param", align 4
@__UNIQUE_ID_aoe_maxouttype373 = internal constant [28 x i8] c"aoe.parmtype=aoe_maxout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_aoe_maxout374 = internal constant [79 x i8] c"aoe.parm=aoe_maxout:Only aoe_maxout outstanding packets for every MAC on eX.Y.\00", section ".modinfo", align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"aoecmd_ata_rsp: ata response for unknown device %d.%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%15s e%d.%d    tag=%08x@%08lx s=%pm d=%pm\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unexpected rsp\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@aoecmd_cfg_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013aoe: Warning: shelf address is all ones.  Check shelf dip switches.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aoecmd_cfg_rsp\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/block/aoe/aoecmd.c\00", [37 x i8] zeroinitializer }, align 32
@aoecmd_cfg_rsp._entry_ptr = internal global ptr @aoecmd_cfg_rsp._entry, section ".printk_index", align 4
@aoecmd_cfg_rsp._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 1543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016aoe: e%ld.%d: broadcast shelf number invalid\0A\00", [48 x i8] zeroinitializer }, align 32
@aoecmd_cfg_rsp._entry_ptr.9 = internal global ptr @aoecmd_cfg_rsp._entry.7, section ".printk_index", align 4
@aoecmd_cfg_rsp._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 1548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016aoe: e%ld.%d: broadcast slot number invalid\0A\00", [49 x i8] zeroinitializer }, align 32
@aoecmd_cfg_rsp._entry_ptr.12 = internal global ptr @aoecmd_cfg_rsp._entry.10, section ".printk_index", align 4
@aoecmd_cfg_rsp._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 1558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016aoe: device allocation failure\0A\00", [62 x i8] zeroinitializer }, align 32
@aoecmd_cfg_rsp._entry_ptr.15 = internal global ptr @aoecmd_cfg_rsp._entry.13, section ".printk_index", align 4
@ncpus = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kts = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@iocq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@empty_page = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ktiowq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@aoecmd_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&iocq[i].lock\00", [18 x i8] zeroinitializer }, align 32
@aoecmd_init.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ktiowq[i]\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aoe_ktio%d\00", [21 x i8] zeroinitializer }, align 32
@probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.6, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s %pm for e%ld.%d: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"probe\00", [26 x i8] zeroinitializer }, align 32
@probe._entry_ptr = internal global ptr @probe._entry, section ".printk_index", align 4
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"aoe: cannot probe remote address\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no frame available\00", [45 x i8] zeroinitializer }, align 32
@resend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016aoe: resend: no interfaces to rotate to.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resend\00", [25 x i8] zeroinitializer }, align 32
@resend._entry_ptr = internal global ptr @resend._entry, section ".printk_index", align 4
@.str.26 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%15s e%ld.%d oldtag=%08x@%08lx newtag=%08x s=%pm d=%pm nout=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"retransmit\00", [21 x i8] zeroinitializer }, align 32
@nextbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.6, i32 866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013aoe: nextbuf: unable to mempool_alloc!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nextbuf\00", [24 x i8] zeroinitializer }, align 32
@nextbuf._entry_ptr = internal global ptr @nextbuf._entry, section ".printk_index", align 4
@bvec_iter_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/bvec.h\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Attempted to advance past end of bvec iter\0A\00", [52 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@aoecmd_cfg_pkts.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@aoecmd_cfg_pkts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.6, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016aoe: skb alloc failure\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aoecmd_cfg_pkts\00", [16 x i8] zeroinitializer }, align 32
@aoecmd_cfg_pkts._entry_ptr = internal global ptr @aoecmd_cfg_pkts._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@newframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.6, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013aoe: NULL TARGETS!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"newframe\00", [23 x i8] zeroinitializer }, align 32
@newframe._entry_ptr = internal global ptr @newframe._entry, section ".printk_index", align 4
@addtgt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.6, i32 1460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016aoe: cannot allocate memory to add target\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"addtgt\00", [25 x i8] zeroinitializer }, align 32
@addtgt._entry_ptr = internal global ptr @addtgt._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@setifbcnt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.6, i32 1504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013aoe: device setifbcnt failure; too many interfaces.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"setifbcnt\00", [22 x i8] zeroinitializer }, align 32
@setifbcnt._entry_ptr = internal global ptr @setifbcnt._entry, section ".printk_index", align 4
@setdbcnt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.6, i32 1478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016aoe: e%ld.%d: setting %d byte data frames\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"setdbcnt\00", [23 x i8] zeroinitializer }, align 32
@setdbcnt._entry_ptr = internal global ptr @setdbcnt._entry, section ".printk_index", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@ktio_spawn_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.67, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ktio_spawn_lock, i64 52), ptr getelementptr (i8, ptr @ktio_spawn_lock, i64 52) }, ptr @ktio_spawn_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.68, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ktiocomplete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.6, i32 1102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013aoe: ata error cmd=%2.2Xh stat=%2.2Xh from e%ld.%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ktiocomplete\00", [19 x i8] zeroinitializer }, align 32
@ktiocomplete._entry_ptr = internal global ptr @ktiocomplete._entry, section ".printk_index", align 4
@ktiocomplete._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.6, i32 1116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s e%ld.%d.  skb->len=%d need=%ld\0A\00", [59 x i8] zeroinitializer }, align 32
@ktiocomplete._entry_ptr.51 = internal global ptr @ktiocomplete._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"aoe: runt data size in read from\00", [63 x i8] zeroinitializer }, align 32
@ktiocomplete._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@ktiocomplete._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.48, ptr @.str.6, i32 1124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s e%ld.%d.  bytes=%ld need=%u\0A\00", [62 x i8] zeroinitializer }, align 32
@ktiocomplete._entry_ptr.56 = internal global ptr @ktiocomplete._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"aoe: too-large data size in read from\00", [58 x i8] zeroinitializer }, align 32
@ktiocomplete._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.48, ptr @.str.6, i32 1143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s e%ld.%d.  skb->len=%d need=512\0A\00", [59 x i8] zeroinitializer }, align 32
@ktiocomplete._entry_ptr.60 = internal global ptr @ktiocomplete._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"aoe: runt data size in ataid from\00", [62 x i8] zeroinitializer }, align 32
@ktiocomplete._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.48, ptr @.str.6, i32 1156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016aoe: unrecognized ata command %2.2Xh for %d.%d\0A\00", [46 x i8] zeroinitializer }, align 32
@ktiocomplete._entry_ptr.64 = internal global ptr @ktiocomplete._entry.62, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@ataid_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.6, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016aoe: %pm e%ld.%d v%04x has %llu sectors\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ataid_complete\00", [17 x i8] zeroinitializer }, align 32
@ataid_complete._entry_ptr = internal global ptr @ataid_complete._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ktio_spawn_lock.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ktio_spawn_lock\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4095, i64 65535]
@__sancov_gen_cov_switch_values.69 = internal global [7 x i64] [i64 5, i64 8, i64 32, i64 36, i64 48, i64 52, i64 236]
@___asan_gen_.70 = private unnamed_addr constant [13 x i8] c"aoe_deadsecs\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 29, i32 12 }
@___asan_gen_.73 = private unnamed_addr constant [11 x i8] c"aoe_maxout\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 33, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1259, i32 9 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1307, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1332, i32 6 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1333, i32 6 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1537, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1542, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1547, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1558, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [6 x i8] c"ncpus\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 45, i32 12 }
@___asan_gen_.121 = private unnamed_addr constant [4 x i8] c"kts\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 51, i32 24 }
@___asan_gen_.124 = private unnamed_addr constant [5 x i8] c"iocq\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 58, i32 26 }
@___asan_gen_.127 = private unnamed_addr constant [11 x i8] c"empty_page\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 60, i32 21 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"ktiowq\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 50, i32 27 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1706, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1707, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1708, i32 46 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 592, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 466, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 474, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 475, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 866, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [24 x i8] c"../include/linux/bvec.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 106, i32 6 }
@___asan_gen_.193 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 87, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 421, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 428, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 695, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 723, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 259, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1460, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1504, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1477, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [16 x i8] c"ktio_spawn_lock\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1100, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1113, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1121, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1140, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1153, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 959, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.320 = private constant [30 x i8] c"../drivers/block/aoe/aoecmd.c\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 48, i32 8 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_aoe_deadsecs372, ptr @__UNIQUE_ID_aoe_deadsecstype371, ptr @__UNIQUE_ID_aoe_maxout374, ptr @__UNIQUE_ID_aoe_maxouttype373, ptr @__param_aoe_deadsecs, ptr @__param_aoe_maxout, ptr @addtgt._entry, ptr @addtgt._entry_ptr, ptr @aoecmd_cfg_pkts._entry, ptr @aoecmd_cfg_pkts._entry_ptr, ptr @aoecmd_cfg_rsp._entry, ptr @aoecmd_cfg_rsp._entry.10, ptr @aoecmd_cfg_rsp._entry.13, ptr @aoecmd_cfg_rsp._entry.7, ptr @aoecmd_cfg_rsp._entry_ptr, ptr @aoecmd_cfg_rsp._entry_ptr.12, ptr @aoecmd_cfg_rsp._entry_ptr.15, ptr @aoecmd_cfg_rsp._entry_ptr.9, ptr @ataid_complete._entry, ptr @ataid_complete._entry_ptr, ptr @ktiocomplete._entry, ptr @ktiocomplete._entry.49, ptr @ktiocomplete._entry.54, ptr @ktiocomplete._entry.58, ptr @ktiocomplete._entry.62, ptr @ktiocomplete._entry_ptr, ptr @ktiocomplete._entry_ptr.51, ptr @ktiocomplete._entry_ptr.56, ptr @ktiocomplete._entry_ptr.60, ptr @ktiocomplete._entry_ptr.64, ptr @newframe._entry, ptr @newframe._entry_ptr, ptr @nextbuf._entry, ptr @nextbuf._entry_ptr, ptr @probe._entry, ptr @probe._entry_ptr, ptr @resend._entry, ptr @resend._entry_ptr, ptr @setdbcnt._entry, ptr @setdbcnt._entry_ptr, ptr @setifbcnt._entry, ptr @setifbcnt._entry_ptr, ptr @aoe_deadsecs, ptr @aoe_maxout, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @ncpus, ptr @kts, ptr @iocq, ptr @empty_page, ptr @ktiowq, ptr @aoecmd_init.__key, ptr @.str.16, ptr @aoecmd_init.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @init_completion.__key, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @ktio_spawn_lock, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @ktiocomplete._rs, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoe_deadsecs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoe_maxout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoecmd_cfg_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoecmd_cfg_rsp._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoecmd_cfg_rsp._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoecmd_cfg_rsp._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncpus to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iocq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @empty_page to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktiowq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoecmd_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoecmd_init.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nextbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoecmd_cfg_pkts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @newframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addtgt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setifbcnt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setdbcnt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktio_spawn_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktiocomplete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktiocomplete._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktiocomplete._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktiocomplete._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktiocomplete._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktiocomplete._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ataid_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aoe_freetframe(ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %t1 = getelementptr inbounds %struct.frame, ptr %f, i32 0, i32 5
  %0 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t1, align 8
  %r_skb = getelementptr inbounds %struct.frame, ptr %f, i32 0, i32 7
  %ffree = getelementptr inbounds %struct.aoetgt, ptr %1, i32 0, i32 3
  %2 = call ptr @memset(ptr %r_skb, i32 0, i32 29)
  %3 = ptrtoint ptr %ffree to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ffree, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %f, ptr noundef %ffree, ptr noundef %4) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %f, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %f, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %f, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ffree, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %ffree to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %f, ptr %ffree, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aoecmd_work(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  %queue.i = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rexmit_deferred(ptr noundef %d)
  %blkq.i.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %queue.i) #14
  %0 = call ptr @memset(ptr %queue.i, i32 255, i32 56)
  %1 = ptrtoint ptr %blkq.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %blkq.i.i, align 8
  %cmp.i.i4 = icmp eq ptr %2, null
  br i1 %cmp.i.i4, label %entry.while.end_crit_edge, label %if.end.i.i.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end.i.i.lr.ph:                                 ; preds = %entry
  %ip.i.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 24
  %rq7.i.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 24, i32 2
  %rq_list.i.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 16
  %nxbio.i.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 24, i32 1
  %bufpool.i.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 23
  %maxbcnt.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 25
  %prev.i.i = getelementptr inbounds %struct.anon.65, ptr %queue.i, i32 0, i32 1
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue.i, i32 0, i32 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %aoecmd_ata_rw.exit.if.end.i.i_crit_edge, %if.end.i.i.lr.ph
  %3 = ptrtoint ptr %ip.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ip.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end5.i.i, label %if.end.i.i.if.end.i_crit_edge

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %5 = ptrtoint ptr %rq7.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rq7.i.i, align 8
  %cmp8.i.i = icmp eq ptr %6, null
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.end5.i.i.if.end27.i.i_crit_edge

if.end5.i.i.if.end27.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i.i

if.then9.i.i:                                     ; preds = %if.end5.i.i
  %7 = ptrtoint ptr %rq_list.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %rq_list.i.i, align 4
  %cmp11.not.i.i = icmp eq ptr %8, %rq_list.i.i
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 -56
  %spec.select.i.i = select i1 %cmp11.not.i.i, ptr null, ptr %add.ptr.i.i
  %cmp13.i.i = icmp eq ptr %spec.select.i.i, null
  br i1 %cmp13.i.i, label %if.then9.i.i.while.end_crit_edge, label %if.end15.i.i

if.then9.i.i.while.end_crit_edge:                 ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end15.i.i:                                     ; preds = %if.then9.i.i
  %9 = getelementptr inbounds %struct.request, ptr %spec.select.i.i, i32 0, i32 12
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end15.i.i.list_del_init.exit.i.i_crit_edge

if.end15.i.i.list_del_init.exit.i.i_crit_edge:    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr inbounds %struct.request, ptr %spec.select.i.i, i32 0, i32 12, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end15.i.i.list_del_init.exit.i.i_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %9, ptr %9, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.request, ptr %spec.select.i.i, i32 0, i32 12, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %9, ptr %prev.i3.i.i.i, align 4
  call void @blk_mq_start_request(ptr noundef nonnull %spec.select.i.i) #14
  %18 = ptrtoint ptr %rq7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %spec.select.i.i, ptr %rq7.i.i, align 8
  %bio18.i.i = getelementptr inbounds %struct.request, ptr %spec.select.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %bio18.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bio18.i.i, align 8
  %21 = ptrtoint ptr %nxbio.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %nxbio.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.request, ptr %spec.select.i.i, i32 1
  %22 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %add.ptr.i.i.i, align 4
  %23 = load ptr, ptr %bio18.i.i, align 8
  %tobool21.not.i.i = icmp eq ptr %23, null
  br i1 %tobool21.not.i.i, label %list_del_init.exit.i.i.if.end27.i.i_crit_edge, label %list_del_init.exit.i.i.for.body.i.i_crit_edge

list_del_init.exit.i.i.for.body.i.i_crit_edge:    ; preds = %list_del_init.exit.i.i
  br label %for.body.i.i

list_del_init.exit.i.i.if.end27.i.i_crit_edge:    ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %list_del_init.exit.i.i.for.body.i.i_crit_edge
  %bio.087.i.i = phi ptr [ %27, %for.body.i.i.for.body.i.i_crit_edge ], [ %23, %list_del_init.exit.i.i.for.body.i.i_crit_edge ]
  %24 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i.i, align 4
  %inc.i.i = add i32 %25, 1
  store i32 %inc.i.i, ptr %add.ptr.i.i.i, align 4
  %26 = ptrtoint ptr %bio.087.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bio.087.i.i, align 8
  %tobool24.not.i.i = icmp eq ptr %27, null
  br i1 %tobool24.not.i.i, label %for.body.i.i.if.end27.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i.if.end27.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %for.body.i.i.if.end27.i.i_crit_edge, %list_del_init.exit.i.i.if.end27.i.i_crit_edge, %if.end5.i.i.if.end27.i.i_crit_edge
  %rq.0.i.i = phi ptr [ %add.ptr.i.i, %list_del_init.exit.i.i.if.end27.i.i_crit_edge ], [ %6, %if.end5.i.i.if.end27.i.i_crit_edge ], [ %spec.select.i.i, %for.body.i.i.if.end27.i.i_crit_edge ]
  %28 = ptrtoint ptr %bufpool.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bufpool.i.i, align 4
  %call28.i.i = call noalias ptr @mempool_alloc(ptr noundef %29, i32 noundef 2592) #14
  %cmp29.i.i = icmp eq ptr %call28.i.i, null
  br i1 %cmp29.i.i, label %do.end33.i.i, label %if.end36.i.i

do.end33.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call35.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #17
  br label %while.end

if.end36.i.i:                                     ; preds = %if.end27.i.i
  %30 = ptrtoint ptr %nxbio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nxbio.i.i, align 4
  %32 = ptrtoint ptr %call28.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %call28.i.i, align 4
  %rq1.i.i.i = getelementptr inbounds %struct.buf, ptr %call28.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %rq1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %rq.0.i.i, ptr %rq1.i.i.i, align 4
  %bio2.i.i.i = getelementptr inbounds %struct.buf, ptr %call28.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %bio2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %bio2.i.i.i, align 4
  %iter.i.i.i = getelementptr inbounds %struct.buf, ptr %call28.i.i, i32 0, i32 2
  %bi_iter.i.i.i = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 8
  %35 = call ptr @memcpy(ptr %iter.i.i.i, ptr %bi_iter.i.i.i, i32 20)
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %31, align 8
  store ptr %37, ptr %nxbio.i.i, align 4
  %cmp42.i.i = icmp eq ptr %37, null
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end36.i.i.if.end46.i.i_crit_edge

if.end36.i.i.if.end46.i.i_crit_edge:              ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46.i.i

if.then43.i.i:                                    ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %rq7.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %rq7.i.i, align 8
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.then43.i.i, %if.end36.i.i.if.end46.i.i_crit_edge
  %39 = ptrtoint ptr %ip.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call28.i.i, ptr %ip.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end46.i.i, %if.end.i.i.if.end.i_crit_edge
  %retval.0.i.i = phi ptr [ %call28.i.i, %if.end46.i.i ], [ %4, %if.end.i.i.if.end.i_crit_edge ]
  %call1.i = call fastcc ptr @newframe(ptr noundef %d) #14
  %cmp2.i = icmp eq ptr %call1.i, null
  br i1 %cmp2.i, label %if.end.i.while.end_crit_edge, label %if.end4.i

if.end.i.while.end_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end4.i:                                        ; preds = %if.end.i
  %buf5.i = getelementptr inbounds %struct.frame, ptr %call1.i, i32 0, i32 8
  %40 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %retval.0.i.i, ptr %buf5.i, align 4
  %iter.i = getelementptr inbounds %struct.frame, ptr %call1.i, i32 0, i32 9
  %iter6.i = getelementptr inbounds %struct.buf, ptr %retval.0.i.i, i32 0, i32 2
  %41 = call ptr @memcpy(ptr %iter.i, ptr %iter6.i, i32 20)
  %42 = ptrtoint ptr %maxbcnt.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %maxbcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i = icmp eq i32 %43, 0
  %..i = select i1 %tobool.not.i, i32 1024, i32 %43
  %bi_size.i = getelementptr inbounds %struct.frame, ptr %call1.i, i32 0, i32 9, i32 1
  %44 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bi_size.i, align 8
  %46 = call i32 @llvm.umin.i32(i32 %..i, i32 %45) #14
  %47 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %bi_size.i, align 8
  %bio.i = getelementptr inbounds %struct.buf, ptr %retval.0.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %bio.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bio.i, align 4
  %shr.i.i = lshr i32 %46, 9
  %conv.i.i = zext i32 %shr.i.i to i64
  %50 = ptrtoint ptr %iter6.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %iter6.i, align 1
  %add.i.i = add i64 %51, %conv.i.i
  store i64 %add.i.i, ptr %iter6.i, align 1
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %49, i32 0, i32 2
  %52 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bi_opf.i.i.i, align 8
  %and.i.i.i = and i32 %53, 255
  %54 = add nsw i32 %and.i.i.i, -3
  %switch.and.i.i.i = and i32 %54, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %switch.and.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %bi_size.i.i = getelementptr inbounds %struct.buf, ptr %retval.0.i.i, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %bi_size.i.i, align 1
  %sub.i.i = sub i32 %56, %46
  store i32 %sub.i.i, ptr %bi_size.i.i, align 1
  br label %bio_advance_iter.exit.i

if.else.i.i:                                      ; preds = %if.end4.i
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %49, i32 0, i32 20
  %57 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bi_io_vec.i.i, align 8
  %bi_idx.i.i.i = getelementptr inbounds %struct.buf, ptr %retval.0.i.i, i32 0, i32 2, i32 2
  %bi_size.i.i.i = getelementptr inbounds %struct.buf, ptr %retval.0.i.i, i32 0, i32 2, i32 1
  %59 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %bi_size.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %46)
  %cmp.i.i.i = icmp ult i32 %60, %46
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %if.end38.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b1.i.i.i = load i1, ptr @bvec_iter_advance.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.if.then36.i.i.i_crit_edge, label %if.then.i.i.i, !prof !170

land.rhs.i.i.i.if.then36.i.i.i_crit_edge:         ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then36.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.31) #14
  br label %if.then36.i.i.i

if.then36.i.i.i:                                  ; preds = %if.then.i.i.i, %land.rhs.i.i.i.if.then36.i.i.i_crit_edge
  %61 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 0, ptr %bi_size.i.i.i, align 1
  br label %bio_advance_iter.exit.i

if.end38.i.i.i:                                   ; preds = %if.else.i.i
  %62 = ptrtoint ptr %bi_idx.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %bi_idx.i.i.i, align 1
  %sub.i.i.i = sub i32 %60, %46
  %64 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %sub.i.i.i, ptr %bi_size.i.i.i, align 1
  %bi_bvec_done.i.i.i = getelementptr inbounds %struct.buf, ptr %retval.0.i.i, i32 0, i32 2, i32 3
  %65 = ptrtoint ptr %bi_bvec_done.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %bi_bvec_done.i.i.i, align 1
  %add.i.i.i = add i32 %66, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i.i)
  %tobool40.not3.i.i.i = icmp eq i32 %add.i.i.i, 0
  br i1 %tobool40.not3.i.i.i, label %if.end38.i.i.i.while.end.i.i.i_crit_edge, label %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge

if.end38.i.i.i.land.rhs41.i.i.i_crit_edge:        ; preds = %if.end38.i.i.i
  br label %land.rhs41.i.i.i

if.end38.i.i.i.while.end.i.i.i_crit_edge:         ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i.i

land.rhs41.i.i.i:                                 ; preds = %while.body.i.i.i.land.rhs41.i.i.i_crit_edge, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge
  %bytes.addr.05.i.i.i = phi i32 [ %sub46.i.i.i, %while.body.i.i.i.land.rhs41.i.i.i_crit_edge ], [ %add.i.i.i, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge ]
  %idx.04.i.i.i = phi i32 [ %inc.i.i.i, %while.body.i.i.i.land.rhs41.i.i.i_crit_edge ], [ %63, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge ]
  %bv_len.i.i.i = getelementptr %struct.bio_vec, ptr %58, i32 %idx.04.i.i.i, i32 1
  %67 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bv_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.05.i.i.i, i32 %68)
  %cmp42.not.i.i.i = icmp ult i32 %bytes.addr.05.i.i.i, %68
  br i1 %cmp42.not.i.i.i, label %land.rhs41.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.i.i

land.rhs41.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %land.rhs41.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %land.rhs41.i.i.i
  %sub46.i.i.i = sub i32 %bytes.addr.05.i.i.i, %68
  %inc.i.i.i = add i32 %idx.04.i.i.i, 1
  %tobool40.not.i.i.i = icmp eq i32 %sub46.i.i.i, 0
  br i1 %tobool40.not.i.i.i, label %while.body.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.i.i.land.rhs41.i.i.i_crit_edge

while.body.i.i.i.land.rhs41.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs41.i.i.i

while.body.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.body.i.i.i.while.end.i.i.i_crit_edge, %land.rhs41.i.i.i.while.end.i.i.i_crit_edge, %if.end38.i.i.i.while.end.i.i.i_crit_edge
  %idx.0.lcssa.i.i.i = phi i32 [ %63, %if.end38.i.i.i.while.end.i.i.i_crit_edge ], [ %idx.04.i.i.i, %land.rhs41.i.i.i.while.end.i.i.i_crit_edge ], [ %inc.i.i.i, %while.body.i.i.i.while.end.i.i.i_crit_edge ]
  %bytes.addr.0.lcssa.i.i.i = phi i32 [ 0, %if.end38.i.i.i.while.end.i.i.i_crit_edge ], [ %bytes.addr.05.i.i.i, %land.rhs41.i.i.i.while.end.i.i.i_crit_edge ], [ 0, %while.body.i.i.i.while.end.i.i.i_crit_edge ]
  %69 = ptrtoint ptr %bi_idx.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %idx.0.lcssa.i.i.i, ptr %bi_idx.i.i.i, align 1
  %70 = ptrtoint ptr %bi_bvec_done.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %bytes.addr.0.lcssa.i.i.i, ptr %bi_bvec_done.i.i.i, align 1
  br label %bio_advance_iter.exit.i

bio_advance_iter.exit.i:                          ; preds = %while.end.i.i.i, %if.then36.i.i.i, %if.then.i.i
  %bi_size19.i = getelementptr inbounds %struct.buf, ptr %retval.0.i.i, i32 0, i32 2, i32 1
  %71 = ptrtoint ptr %bi_size19.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bi_size19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool20.not.i = icmp eq i32 %72, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %bio_advance_iter.exit.i.if.end23.i_crit_edge

bio_advance_iter.exit.i.if.end23.i_crit_edge:     ; preds = %bio_advance_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.i

if.then21.i:                                      ; preds = %bio_advance_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %73 = ptrtoint ptr %ip.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %ip.i.i, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %bio_advance_iter.exit.i.if.end23.i_crit_edge
  %74 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %retval.0.i.i, align 4
  %add.i = add i32 %75, 1
  store i32 %add.i, ptr %retval.0.i.i, align 4
  call fastcc void @ata_rw_frameinit(ptr noundef nonnull %call1.i) #14
  %skb24.i = getelementptr inbounds %struct.frame, ptr %call1.i, i32 0, i32 6
  %76 = ptrtoint ptr %skb24.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %skb24.i, align 4
  %call25.i = call ptr @skb_clone(ptr noundef %77, i32 noundef 2592) #14
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %if.end23.i.aoecmd_ata_rw.exit_crit_edge, label %if.then27.i

if.end23.i.aoecmd_ata_rw.exit_crit_edge:          ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %aoecmd_ata_rw.exit

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  %call28.i = call i64 @ktime_get() #14
  %sent.i = getelementptr inbounds %struct.frame, ptr %call1.i, i32 0, i32 2
  %78 = ptrtoint ptr %sent.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %call28.i, ptr %sent.i, align 8
  %79 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %qlen.i.i, align 4
  %80 = ptrtoint ptr %call25.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %queue.i, ptr %call25.i, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.44, ptr %call25.i, i32 0, i32 1
  %81 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %queue.i, ptr %prev10.i.i.i.i, align 4
  %82 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %call25.i, ptr %prev.i.i, align 4
  %83 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %call25.i, ptr %queue.i, align 4
  %84 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i.i = add i32 %84, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i, align 4
  call void @aoenet_xmit(ptr noundef nonnull %queue.i) #14
  br label %aoecmd_ata_rw.exit

aoecmd_ata_rw.exit:                               ; preds = %if.then27.i, %if.end23.i.aoecmd_ata_rw.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %queue.i) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %queue.i) #14
  %85 = call ptr @memset(ptr %queue.i, i32 255, i32 56)
  %86 = ptrtoint ptr %blkq.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %blkq.i.i, align 8
  %cmp.i.i = icmp eq ptr %87, null
  br i1 %cmp.i.i, label %aoecmd_ata_rw.exit.while.end_crit_edge, label %aoecmd_ata_rw.exit.if.end.i.i_crit_edge

aoecmd_ata_rw.exit.if.end.i.i_crit_edge:          ; preds = %aoecmd_ata_rw.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

aoecmd_ata_rw.exit.while.end_crit_edge:           ; preds = %aoecmd_ata_rw.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %aoecmd_ata_rw.exit.while.end_crit_edge, %if.end.i.while.end_crit_edge, %do.end33.i.i, %if.then9.i.i.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %queue.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rexmit_deferred(ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  %queue.i = alloca %struct.sk_buff_head, align 4
  %buf.i145 = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ntargets.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 29
  %0 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ntargets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16.not.i = icmp eq i32 %1, 0
  br i1 %cmp16.not.i, label %entry.count_targets.exit_crit_edge, label %land.rhs.lr.ph.i

entry.count_targets.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %count_targets.exit

land.rhs.lr.ph.i:                                 ; preds = %entry
  %targets.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 28
  %2 = ptrtoint ptr %targets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %targets.i, align 8
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %good.018.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %spec.select.i, %for.body.i.land.rhs.i_crit_edge ]
  %i.017.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc4.i, %for.body.i.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %i.017.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %land.rhs.i.count_targets.exit_crit_edge, label %for.body.i

land.rhs.i.count_targets.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %count_targets.exit

for.body.i:                                       ; preds = %land.rhs.i
  %taint.i = getelementptr inbounds %struct.aoetgt, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %taint.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %taint.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.i = icmp eq i32 %7, 0
  %inc.i = zext i1 %cmp3.i to i32
  %spec.select.i = add i32 %good.018.i, %inc.i
  %inc4.i = add nuw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc4.i, %1
  br i1 %exitcond.not.i, label %for.body.i.count_targets.exit_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

for.body.i.count_targets.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %count_targets.exit

count_targets.exit:                               ; preds = %for.body.i.count_targets.exit_crit_edge, %land.rhs.i.count_targets.exit_crit_edge, %entry.count_targets.exit_crit_edge
  %good.0.lcssa.i = phi i32 [ 0, %entry.count_targets.exit_crit_edge ], [ %good.018.i, %land.rhs.i.count_targets.exit_crit_edge ], [ %spec.select.i, %for.body.i.count_targets.exit_crit_edge ]
  %rexmitq = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 27
  %8 = ptrtoint ptr %rexmitq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rexmitq, align 4
  %cmp.i.not160 = icmp eq ptr %9, %rexmitq
  br i1 %cmp.i.not160, label %count_targets.exit.for.end_crit_edge, label %for.body.lr.ph

count_targets.exit.for.end_crit_edge:             ; preds = %count_targets.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %count_targets.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %good.0.lcssa.i)
  %cmp21 = icmp slt i32 %good.0.lcssa.i, 1
  %rttavg.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 3
  %rttdev.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %good.0.lcssa.i)
  %cmp12 = icmp sgt i32 %good.0.lcssa.i, 0
  %lasttag.i.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 9
  %aoemajor.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 2
  %aoeminor.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 5
  %prev.i.i155 = getelementptr inbounds %struct.anon.65, ptr %queue.i, i32 0, i32 1
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.0161 = phi ptr [ %9, %for.body.lr.ph ], [ %nx.0163, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %pos.0161 to i32
  call void @__asan_load4_noabort(i32 %10)
  %nx.0163 = load ptr, ptr %pos.0161, align 4
  %t3 = getelementptr inbounds %struct.frame, ptr %pos.0161, i32 0, i32 5
  %11 = ptrtoint ptr %t3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %t3, align 8
  %taint = getelementptr inbounds %struct.aoetgt, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %taint to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %taint, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  %flags35 = getelementptr inbounds %struct.frame, ptr %pos.0161, i32 0, i32 10
  %15 = ptrtoint ptr %flags35 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags35, align 4
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool38.not = icmp eq i8 %17, 0
  br i1 %tobool4.not, label %if.else34, label %if.then

if.then:                                          ; preds = %for.body
  br i1 %tobool38.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %d.i = getelementptr inbounds %struct.aoetgt, ptr %12, i32 0, i32 2
  %18 = ptrtoint ptr %d.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d.i, align 4
  %call.i = call fastcc ptr @newframe(ptr noundef %19) #14
  %tobool.not.i101 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i101, label %if.then6.if.end46_crit_edge, label %if.end.i

if.then6.if.end46_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.end.i:                                         ; preds = %if.then6
  %t1.i = getelementptr inbounds %struct.frame, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %t1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %t1.i, align 8
  %22 = ptrtoint ptr %t3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %t3, align 8
  %cmp.i102 = icmp eq ptr %21, %23
  br i1 %cmp.i102, label %if.then3.i, label %if.then9

if.then3.i:                                       ; preds = %if.end.i
  %r_skb.i.i = getelementptr inbounds %struct.frame, ptr %call.i, i32 0, i32 7
  %ffree.i.i = getelementptr inbounds %struct.aoetgt, ptr %21, i32 0, i32 3
  %24 = call ptr @memset(ptr %r_skb.i.i, i32 0, i32 29)
  %25 = ptrtoint ptr %ffree.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ffree.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %ffree.i.i, ptr noundef %26) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then3.i.if.end46_crit_edge

if.then3.i.if.end46_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.end.i.i.i.i:                                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %call.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ffree.i.i, ptr %prev3.i.i.i.i, align 4
  %30 = ptrtoint ptr %ffree.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call.i, ptr %ffree.i.i, align 4
  br label %if.end46

if.then9:                                         ; preds = %if.end.i
  %skb5.i = getelementptr inbounds %struct.frame, ptr %call.i, i32 0, i32 6
  %31 = ptrtoint ptr %skb5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %skb5.i, align 4
  %skb6.i = getelementptr inbounds %struct.frame, ptr %pos.0161, i32 0, i32 6
  %33 = ptrtoint ptr %skb6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %skb6.i, align 4
  store ptr %34, ptr %skb5.i, align 4
  %buf.i = getelementptr inbounds %struct.frame, ptr %pos.0161, i32 0, i32 8
  %35 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf.i, align 4
  %buf8.i = getelementptr inbounds %struct.frame, ptr %call.i, i32 0, i32 8
  %37 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %buf8.i, align 4
  %iter.i = getelementptr inbounds %struct.frame, ptr %call.i, i32 0, i32 9
  %iter9.i = getelementptr inbounds %struct.frame, ptr %pos.0161, i32 0, i32 9
  %38 = call ptr @memcpy(ptr %iter.i, ptr %iter9.i, i32 20)
  %waited.i = getelementptr inbounds %struct.frame, ptr %call.i, i32 0, i32 3
  %39 = ptrtoint ptr %waited.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %waited.i, align 8
  %waited_total.i = getelementptr inbounds %struct.frame, ptr %pos.0161, i32 0, i32 4
  %40 = ptrtoint ptr %waited_total.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %waited_total.i, align 4
  %waited_total10.i = getelementptr inbounds %struct.frame, ptr %call.i, i32 0, i32 4
  %42 = ptrtoint ptr %waited_total10.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %waited_total10.i, align 4
  %sent.i = getelementptr inbounds %struct.frame, ptr %pos.0161, i32 0, i32 2
  %43 = ptrtoint ptr %sent.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %sent.i, align 8
  %sent11.i = getelementptr inbounds %struct.frame, ptr %call.i, i32 0, i32 2
  %45 = ptrtoint ptr %sent11.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %sent11.i, align 8
  store ptr %32, ptr %skb6.i, align 4
  %nout_probes = getelementptr inbounds %struct.aoetgt, ptr %12, i32 0, i32 15
  %46 = ptrtoint ptr %nout_probes to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %nout_probes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp = icmp eq i8 %47, 0
  %or.cond = select i1 %cmp, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.then14, label %if.then9.if.end_crit_edge

if.then9.if.end_crit_edge:                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @probe(ptr noundef %12)
  %48 = ptrtoint ptr %nout_probes to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %nout_probes, align 4
  %inc = add i8 %49, 1
  store i8 %inc, ptr %nout_probes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.then9.if.end_crit_edge
  %50 = ptrtoint ptr %pos.0161 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pos.0161, align 4
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %prev.i, align 4
  %prev3.i = getelementptr inbounds %struct.list_head, ptr %pos.0161, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev3.i, align 4
  %prev4.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %56 = ptrtoint ptr %prev4.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %prev4.i, align 4
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %55, align 4
  %58 = ptrtoint ptr %t3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %t3, align 8
  %r_skb.i = getelementptr inbounds %struct.frame, ptr %pos.0161, i32 0, i32 7
  %ffree.i = getelementptr inbounds %struct.aoetgt, ptr %59, i32 0, i32 3
  %60 = call ptr @memset(ptr %r_skb.i, i32 0, i32 29)
  %61 = ptrtoint ptr %ffree.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ffree.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %pos.0161, ptr noundef %ffree.i, ptr noundef %62) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.aoe_freetframe.exit_crit_edge

if.end.aoe_freetframe.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %aoe_freetframe.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %pos.0161, ptr %prev1.i.i.i, align 4
  %64 = ptrtoint ptr %pos.0161 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %62, ptr %pos.0161, align 4
  %65 = ptrtoint ptr %prev3.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %ffree.i, ptr %prev3.i, align 4
  %66 = ptrtoint ptr %ffree.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %pos.0161, ptr %ffree.i, align 4
  br label %aoe_freetframe.exit

aoe_freetframe.exit:                              ; preds = %if.end.i.i.i, %if.end.aoe_freetframe.exit_crit_edge
  %67 = ptrtoint ptr %t1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %t1.i, align 8
  br label %if.end46

if.else:                                          ; preds = %if.then
  br i1 %cmp21, label %if.else.stop_probe_crit_edge, label %if.else24

if.else.stop_probe_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %stop_probe

if.else24:                                        ; preds = %if.else
  %call.i104 = call i64 @ktime_get() #14
  %sent.i105 = getelementptr inbounds %struct.frame, ptr %pos.0161, i32 0, i32 2
  %69 = ptrtoint ptr %sent.i105 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %sent.i105, align 8
  %sub.i = sub i64 %call.i104, %70
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp.i106 = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp.i106, label %if.then.i, label %if.end.i109, !prof !170

if.then.i:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i107 = trunc i64 %sub.i to i32
  %div.i = udiv i32 %conv.i107, 1000
  br label %tsince_hr.exit

if.end.i109:                                      ; preds = %if.else24
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647000, i64 %sub.i)
  %cmp3.i108 = icmp ugt i64 %sub.i, 2147483647000
  br i1 %cmp3.i108, label %if.end.i109.tsince_hr.exit_crit_edge, label %if.end6.i

if.end.i109.tsince_hr.exit_crit_edge:             ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #16
  br label %tsince_hr.exit

if.end6.i:                                        ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #16
  %71 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %sub.i, i32 0) #18, !srcloc !171
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %71, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %71, 1
  %72 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %sub.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #18, !srcloc !172
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %72, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %conv8.i = trunc i64 %div1581.i.i.i to i32
  br label %tsince_hr.exit

tsince_hr.exit:                                   ; preds = %if.end6.i, %if.end.i109.tsince_hr.exit_crit_edge, %if.then.i
  %retval.0.i110 = phi i32 [ %div.i, %if.then.i ], [ %conv8.i, %if.end6.i ], [ 2147483647, %if.end.i109.tsince_hr.exit_crit_edge ]
  %73 = ptrtoint ptr %taint to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %taint, align 4
  %75 = ptrtoint ptr %rttavg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rttavg.i, align 4
  %77 = lshr i32 %76, 7
  %shr.i = and i32 %77, 16777215
  %78 = ptrtoint ptr %rttdev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rttdev.i, align 8
  %mul1.i = and i32 %79, 536870911
  %add.i = add nuw nsw i32 %shr.i, %mul1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp.i111 = icmp eq i32 %add.i, 0
  %spec.store.select.i = select i1 %cmp.i111, i32 1, i32 %add.i
  %mul = mul i32 %spec.store.select.i, %74
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i110, i32 %mul)
  %cmp28 = icmp slt i32 %retval.0.i110, %mul
  br i1 %cmp28, label %tsince_hr.exit.for.inc_crit_edge, label %tsince_hr.exit.if.end46_crit_edge

tsince_hr.exit.if.end46_crit_edge:                ; preds = %tsince_hr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

tsince_hr.exit.for.inc_crit_edge:                 ; preds = %tsince_hr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.else34:                                        ; preds = %for.body
  br i1 %tobool38.not, label %if.else34.if.end46_crit_edge, label %if.else34.stop_probe_crit_edge

if.else34.stop_probe_crit_edge:                   ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #16
  br label %stop_probe

if.else34.if.end46_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

stop_probe:                                       ; preds = %if.else34.stop_probe_crit_edge, %if.else.stop_probe_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.0161) #14
  br i1 %call.i.i, label %if.end.i.i, label %stop_probe.list_del.exit_crit_edge

stop_probe.list_del.exit_crit_edge:               ; preds = %stop_probe
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %stop_probe
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.0161, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev.i.i, align 4
  %82 = ptrtoint ptr %pos.0161 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pos.0161, align 4
  %prev1.i.i.i112 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %prev1.i.i.i112 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %prev1.i.i.i112, align 4
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %83, ptr %81, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %stop_probe.list_del.exit_crit_edge
  %86 = ptrtoint ptr %pos.0161 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.0161, align 4
  %prev.i113 = getelementptr inbounds %struct.list_head, ptr %pos.0161, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i113, align 4
  %88 = ptrtoint ptr %t3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %t3, align 8
  %r_skb.i115 = getelementptr inbounds %struct.frame, ptr %pos.0161, i32 0, i32 7
  %ffree.i116 = getelementptr inbounds %struct.aoetgt, ptr %89, i32 0, i32 3
  %90 = call ptr @memset(ptr %r_skb.i115, i32 0, i32 29)
  %91 = ptrtoint ptr %ffree.i116 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ffree.i116, align 4
  %call.i.i.i117 = call zeroext i1 @__list_add_valid(ptr noundef %pos.0161, ptr noundef %ffree.i116, ptr noundef %92) #14
  br i1 %call.i.i.i117, label %if.end.i.i.i120, label %list_del.exit.aoe_freetframe.exit121_crit_edge

list_del.exit.aoe_freetframe.exit121_crit_edge:   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %aoe_freetframe.exit121

if.end.i.i.i120:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i118 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i.i118 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %pos.0161, ptr %prev1.i.i.i118, align 4
  %94 = ptrtoint ptr %pos.0161 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %92, ptr %pos.0161, align 4
  %95 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %ffree.i116, ptr %prev.i113, align 4
  %96 = ptrtoint ptr %ffree.i116 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %pos.0161, ptr %ffree.i116, align 4
  br label %aoe_freetframe.exit121

aoe_freetframe.exit121:                           ; preds = %if.end.i.i.i120, %list_del.exit.aoe_freetframe.exit121_crit_edge
  %97 = ptrtoint ptr %t3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %t3, align 8
  %d41 = getelementptr inbounds %struct.aoetgt, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %d41 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %d41, align 4
  %flags42 = getelementptr inbounds %struct.aoedev, ptr %100, i32 0, i32 6
  %101 = ptrtoint ptr %flags42 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %flags42, align 2
  %103 = or i16 %102, 32
  store i16 %103, ptr %flags42, align 2
  br label %for.inc

if.end46:                                         ; preds = %if.else34.if.end46_crit_edge, %tsince_hr.exit.if.end46_crit_edge, %aoe_freetframe.exit, %if.end.i.i.i.i, %if.then3.i.if.end46_crit_edge, %if.then6.if.end46_crit_edge
  %f.0 = phi ptr [ %pos.0161, %tsince_hr.exit.if.end46_crit_edge ], [ %call.i, %aoe_freetframe.exit ], [ %pos.0161, %if.else34.if.end46_crit_edge ], [ %pos.0161, %if.then6.if.end46_crit_edge ], [ %pos.0161, %if.then3.i.if.end46_crit_edge ], [ %pos.0161, %if.end.i.i.i.i ]
  %t.0 = phi ptr [ %12, %tsince_hr.exit.if.end46_crit_edge ], [ %68, %aoe_freetframe.exit ], [ %12, %if.else34.if.end46_crit_edge ], [ %12, %if.then6.if.end46_crit_edge ], [ %12, %if.then3.i.if.end46_crit_edge ], [ %12, %if.end.i.i.i.i ]
  %nout = getelementptr inbounds %struct.aoetgt, ptr %t.0, i32 0, i32 6
  %104 = ptrtoint ptr %nout to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %nout, align 4
  %maxout = getelementptr inbounds %struct.aoetgt, ptr %t.0, i32 0, i32 7
  %106 = ptrtoint ptr %maxout to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %maxout, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %105, i16 %107)
  %cmp49.not = icmp ult i16 %105, %107
  br i1 %cmp49.not, label %if.end52, label %if.end46.for.inc_crit_edge

if.end46.for.inc_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end52:                                         ; preds = %if.end46
  %call.i.i122 = call zeroext i1 @__list_del_entry_valid(ptr noundef %f.0) #14
  br i1 %call.i.i122, label %if.end.i.i125, label %if.end52.list_del.exit127_crit_edge

if.end52.list_del.exit127_crit_edge:              ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit127

if.end.i.i125:                                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i123 = getelementptr inbounds %struct.list_head, ptr %f.0, i32 0, i32 1
  %108 = ptrtoint ptr %prev.i.i123 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev.i.i123, align 4
  %110 = ptrtoint ptr %f.0 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %f.0, align 4
  %prev1.i.i.i124 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %prev1.i.i.i124 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %109, ptr %prev1.i.i.i124, align 4
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %111, ptr %109, align 4
  br label %list_del.exit127

list_del.exit127:                                 ; preds = %if.end.i.i125, %if.end52.list_del.exit127_crit_edge
  %114 = ptrtoint ptr %f.0 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr inttoptr (i32 256 to ptr), ptr %f.0, align 4
  %prev.i126 = getelementptr inbounds %struct.list_head, ptr %f.0, i32 0, i32 1
  %115 = ptrtoint ptr %prev.i126 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i126, align 4
  %116 = ptrtoint ptr %nout to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %nout, align 4
  %inc54 = add i16 %117, 1
  store i16 %inc54, ptr %nout, align 4
  %flags55 = getelementptr inbounds %struct.frame, ptr %f.0, i32 0, i32 10
  %118 = ptrtoint ptr %flags55 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %flags55, align 4
  %120 = and i8 %119, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool58.not = icmp eq i8 %120, 0
  br i1 %tobool58.not, label %list_del.exit127.if.end62_crit_edge, label %if.then59

list_del.exit127.if.end62_crit_edge:              ; preds = %list_del.exit127
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.then59:                                        ; preds = %list_del.exit127
  call void @__sanitizer_cov_trace_pc() #16
  %nout_probes60 = getelementptr inbounds %struct.aoetgt, ptr %t.0, i32 0, i32 15
  %121 = ptrtoint ptr %nout_probes60 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %nout_probes60, align 4
  %inc61 = add i8 %122, 1
  store i8 %inc61, ptr %nout_probes60, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %list_del.exit127.if.end62_crit_edge
  %call.i128 = call i64 @ktime_get() #14
  %sent.i129 = getelementptr inbounds %struct.frame, ptr %f.0, i32 0, i32 2
  %123 = ptrtoint ptr %sent.i129 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %sent.i129, align 8
  %sub.i130 = sub i64 %call.i128, %124
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i130)
  %cmp.i131 = icmp ult i64 %sub.i130, 4294967296
  br i1 %cmp.i131, label %if.then.i134, label %if.end.i136, !prof !170

if.then.i134:                                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i132 = trunc i64 %sub.i130 to i32
  %div.i133 = udiv i32 %conv.i132, 1000
  br label %tsince_hr.exit144

if.end.i136:                                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647000, i64 %sub.i130)
  %cmp3.i135 = icmp ugt i64 %sub.i130, 2147483647000
  br i1 %cmp3.i135, label %if.end.i136.tsince_hr.exit144_crit_edge, label %if.end6.i142

if.end.i136.tsince_hr.exit144_crit_edge:          ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #16
  br label %tsince_hr.exit144

if.end6.i142:                                     ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #16
  %125 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %sub.i130, i32 0) #18, !srcloc !171
  %asmresult.i.i.i.i137 = extractvalue { i64, i32 } %125, 0
  %asmresult4.i.i.i.i138 = extractvalue { i64, i32 } %125, 1
  %126 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %sub.i130, i64 %asmresult.i.i.i.i137, i32 %asmresult4.i.i.i.i138) #18, !srcloc !172
  %asmresult10.i.i.i.i139 = extractvalue { i64, i32 } %126, 0
  %div1581.i.i.i140 = lshr i64 %asmresult10.i.i.i.i139, 9
  %conv8.i141 = trunc i64 %div1581.i.i.i140 to i32
  br label %tsince_hr.exit144

tsince_hr.exit144:                                ; preds = %if.end6.i142, %if.end.i136.tsince_hr.exit144_crit_edge, %if.then.i134
  %retval.0.i143 = phi i32 [ %div.i133, %if.then.i134 ], [ %conv8.i141, %if.end6.i142 ], [ 2147483647, %if.end.i136.tsince_hr.exit144_crit_edge ]
  %waited = getelementptr inbounds %struct.frame, ptr %f.0, i32 0, i32 3
  %127 = ptrtoint ptr %waited to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %waited, align 8
  %add = add i32 %128, %retval.0.i143
  store i32 %add, ptr %waited, align 8
  %waited_total = getelementptr inbounds %struct.frame, ptr %f.0, i32 0, i32 4
  %129 = ptrtoint ptr %waited_total to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %waited_total, align 4
  %add64 = add i32 %130, %retval.0.i143
  store i32 %add64, ptr %waited_total, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %queue.i) #14
  %131 = call ptr @memset(ptr %queue.i, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf.i145) #14
  %132 = call ptr @memset(ptr %buf.i145, i32 255, i32 128)
  %t1.i146 = getelementptr inbounds %struct.frame, ptr %f.0, i32 0, i32 5
  %133 = ptrtoint ptr %t1.i146 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %t1.i146, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %135 = load volatile i32, ptr @jiffies, align 128
  %and.i.i = and i32 %135, 65535
  %136 = ptrtoint ptr %lasttag.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %lasttag.i.i, align 4
  %inc.i.i = add i16 %137, 1
  store i16 %inc.i.i, ptr %lasttag.i.i, align 4
  %138 = and i16 %inc.i.i, 32767
  %and1.i.i = zext i16 %138 to i32
  %shl.i.i = shl nuw nsw i32 %and1.i.i, 16
  %or.i.i = or i32 %shl.i.i, %and.i.i
  %skb2.i = getelementptr inbounds %struct.frame, ptr %f.0, i32 0, i32 6
  %139 = ptrtoint ptr %skb2.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %skb2.i, align 4
  %ifp1.i.i = getelementptr inbounds %struct.aoetgt, ptr %134, i32 0, i32 5
  %141 = ptrtoint ptr %ifp1.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ifp1.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.aoeif, ptr %142, i32 1
  %ifs.i.i = getelementptr inbounds %struct.aoetgt, ptr %134, i32 0, i32 4
  %cmp.not.i.i = icmp ult ptr %incdec.ptr.i.i, %ifp1.i.i
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %tsince_hr.exit144.if.end.i.i147_crit_edge

tsince_hr.exit144.if.end.i.i147_crit_edge:        ; preds = %tsince_hr.exit144
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i147

lor.lhs.false.i.i:                                ; preds = %tsince_hr.exit144
  %143 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %incdec.ptr.i.i, align 4
  %cmp2.i.i = icmp eq ptr %144, null
  br i1 %cmp2.i.i, label %lor.lhs.false.i.i.if.end.i.i147_crit_edge, label %lor.lhs.false.i.i.ifrotate.exit.i_crit_edge

lor.lhs.false.i.i.ifrotate.exit.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ifrotate.exit.i

lor.lhs.false.i.i.if.end.i.i147_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i147

if.end.i.i147:                                    ; preds = %lor.lhs.false.i.i.if.end.i.i147_crit_edge, %tsince_hr.exit144.if.end.i.i147_crit_edge
  %145 = ptrtoint ptr %ifs.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %.pr.i.i = load ptr, ptr %ifs.i.i, align 4
  %cmp5.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %cmp5.i.i, label %if.end.i.i147.do.end.i_crit_edge, label %if.end.i.i147.ifrotate.exit.i_crit_edge

if.end.i.i147.ifrotate.exit.i_crit_edge:          ; preds = %if.end.i.i147
  call void @__sanitizer_cov_trace_pc() #16
  br label %ifrotate.exit.i

if.end.i.i147.do.end.i_crit_edge:                 ; preds = %if.end.i.i147
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

ifrotate.exit.i:                                  ; preds = %if.end.i.i147.ifrotate.exit.i_crit_edge, %lor.lhs.false.i.i.ifrotate.exit.i_crit_edge
  %ifp.018.i.i = phi ptr [ %ifs.i.i, %if.end.i.i147.ifrotate.exit.i_crit_edge ], [ %incdec.ptr.i.i, %lor.lhs.false.i.i.ifrotate.exit.i_crit_edge ]
  %146 = ptrtoint ptr %ifp1.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %ifp.018.i.i, ptr %ifp1.i.i, align 4
  %cmp.i148 = icmp eq ptr %ifp.018.i.i, null
  br i1 %cmp.i148, label %ifrotate.exit.i.do.end.i_crit_edge, label %if.end.i150

ifrotate.exit.i.do.end.i_crit_edge:               ; preds = %ifrotate.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i:                                         ; preds = %ifrotate.exit.i.do.end.i_crit_edge, %if.end.i.i147.do.end.i_crit_edge
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #17
  call fastcc void @ktcomplete(ptr noundef %f.0, ptr noundef null) #14
  br label %resend.exit

if.end.i150:                                      ; preds = %ifrotate.exit.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %140, i32 0, i32 18
  %147 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %140, i32 0, i32 15, i32 0, i32 21
  %149 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %150 to i32
  %add.ptr.i.i = getelementptr i8, ptr %148, i32 %conv.i.i
  %151 = ptrtoint ptr %flags55 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %flags55, align 4
  %153 = and i8 %152, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool.not.i149 = icmp eq i8 %153, 0
  br i1 %tobool.not.i149, label %if.then6.i, label %if.end.i150.if.end13.i_crit_edge

if.end.i150.if.end13.i_crit_edge:                 ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then6.i:                                       ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #16
  %154 = ptrtoint ptr %aoemajor.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %aoemajor.i, align 8
  %156 = ptrtoint ptr %aoeminor.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %aoeminor.i, align 4
  %conv7.i = zext i16 %157 to i32
  %tag.i = getelementptr inbounds %struct.frame, ptr %f.0, i32 0, i32 1
  %158 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %tag.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %160 = load volatile i32, ptr @jiffies, align 128
  %src.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %nout.i = getelementptr inbounds %struct.aoetgt, ptr %134, i32 0, i32 6
  %161 = ptrtoint ptr %nout.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %nout.i, align 4
  %conv10.i = zext i16 %162 to i32
  %call11.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i145, i32 noundef 128, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %155, i32 noundef %conv7.i, i32 noundef %159, i32 noundef %160, i32 noundef %or.i.i, ptr noundef %src.i, ptr noundef %add.ptr.i.i, i32 noundef %conv10.i) #14
  call void @aoechr_error(ptr noundef nonnull %buf.i145) #14
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then6.i, %if.end.i150.if.end13.i_crit_edge
  %tag14.i = getelementptr inbounds %struct.frame, ptr %f.0, i32 0, i32 1
  %163 = ptrtoint ptr %tag14.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %or.i.i, ptr %tag14.i, align 8
  %164 = ptrtoint ptr %t1.i146 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %t1.i146, align 8
  %d1.i.i = getelementptr inbounds %struct.aoetgt, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %d1.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %d1.i.i, align 4
  %rem.i.i = urem i32 %or.i.i, 61
  %arrayidx.i.i = getelementptr %struct.aoedev, ptr %167, i32 0, i32 26, i32 %rem.i.i
  %prev.i.i.i = getelementptr %struct.aoedev, ptr %167, i32 0, i32 26, i32 %rem.i.i, i32 1
  %168 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i151 = call zeroext i1 @__list_add_valid(ptr noundef %f.0, ptr noundef %169, ptr noundef %arrayidx.i.i) #14
  br i1 %call.i.i.i.i151, label %if.end.i.i.i.i153, label %if.end13.i.fhash.exit.i_crit_edge

if.end13.i.fhash.exit.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fhash.exit.i

if.end.i.i.i.i153:                                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  %170 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %f.0, ptr %prev.i.i.i, align 4
  %171 = ptrtoint ptr %f.0 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %arrayidx.i.i, ptr %f.0, align 4
  %172 = ptrtoint ptr %prev.i126 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %169, ptr %prev.i126, align 4
  %173 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile ptr %f.0, ptr %169, align 4
  br label %fhash.exit.i

fhash.exit.i:                                     ; preds = %if.end.i.i.i.i153, %if.end13.i.fhash.exit.i_crit_edge
  %tag15.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i.i, i32 0, i32 8
  %174 = ptrtoint ptr %tag15.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %or.i.i, ptr %tag15.i, align 4
  %175 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %134, i32 6)
  %src19.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %176 = ptrtoint ptr %ifp1.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ifp1.i.i, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %177, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %179, i32 0, i32 86
  %180 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev_addr.i, align 64
  %182 = call ptr @memcpy(ptr %src19.i, ptr %181, i32 6)
  %183 = load ptr, ptr %ifp1.i.i, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 4
  %186 = getelementptr inbounds %struct.anon.44, ptr %140, i32 0, i32 2
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %185, ptr %186, align 8
  %call23.i = call ptr @skb_clone(ptr noundef %140, i32 noundef 2592) #14
  %cmp24.i = icmp eq ptr %call23.i, null
  br i1 %cmp24.i, label %fhash.exit.i.resend.exit_crit_edge, label %if.end27.i

fhash.exit.i.resend.exit_crit_edge:               ; preds = %fhash.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %resend.exit

if.end27.i:                                       ; preds = %fhash.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %call28.i = call i64 @ktime_get() #14
  %188 = ptrtoint ptr %sent.i129 to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %call28.i, ptr %sent.i129, align 8
  %189 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %qlen.i.i, align 4
  %190 = ptrtoint ptr %call23.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile ptr %queue.i, ptr %call23.i, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.44, ptr %call23.i, i32 0, i32 1
  %191 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile ptr %queue.i, ptr %prev10.i.i.i.i, align 4
  %192 = ptrtoint ptr %prev.i.i155 to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile ptr %call23.i, ptr %prev.i.i155, align 4
  %193 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store volatile ptr %call23.i, ptr %queue.i, align 4
  %194 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i.i = add i32 %194, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i, align 4
  call void @aoenet_xmit(ptr noundef nonnull %queue.i) #14
  br label %resend.exit

resend.exit:                                      ; preds = %if.end27.i, %fhash.exit.i.resend.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf.i145) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %queue.i) #14
  br label %for.inc

for.inc:                                          ; preds = %resend.exit, %if.end46.for.inc_crit_edge, %aoe_freetframe.exit121, %tsince_hr.exit.for.inc_crit_edge
  %cmp.i.not = icmp eq ptr %nx.0163, %rexmitq
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %count_targets.exit.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aoecmd_sleepwork(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %work, i32 -14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %work, i32 -36
  tail call void @aoeblk_gdalloc(ptr noundef %add.ptr) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags, align 2
  %5 = and i16 %4, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool4.not = icmp eq i16 %5, 0
  br i1 %tobool4.not, label %if.end.if.end14_crit_edge, label %if.then5

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %gd = getelementptr i8, ptr %work, i32 44
  %6 = ptrtoint ptr %gd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gd, align 8
  %ssize = getelementptr i8, ptr %work, i32 260
  %8 = ptrtoint ptr %ssize to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ssize, align 8
  %call = tail call zeroext i1 @set_capacity_and_notify(ptr noundef %7, i64 noundef %9) #14
  %lock = getelementptr i8, ptr %work, i32 316
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 2
  %12 = and i16 %11, -66
  %13 = or i16 %12, 1
  store i16 %13, ptr %flags, align 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then5, %if.end.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aoeblk_gdalloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_capacity_and_notify(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aoe_end_request(ptr nocapture noundef %d, ptr noundef %rq, i32 noundef %fastfail) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %blkq = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %blkq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %blkq, align 8
  %rq1 = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 24, i32 2
  %2 = ptrtoint ptr %rq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq1, align 8
  %cmp = icmp eq ptr %3, %rq
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %rq1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rq1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bio4 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fastfail)
  %tobool.not = icmp eq i32 %fastfail, 0
  br label %do.body

do.body:                                          ; preds = %.do.body_crit_edge, %if.end
  %err.0 = phi i8 [ 0, %if.end ], [ %11, %.do.body_crit_edge ]
  %5 = ptrtoint ptr %bio4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bio4, align 8
  br i1 %tobool.not, label %land.end, label %do.body..thread_crit_edge

do.body..thread_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %.thread

land.end:                                         ; preds = %do.body
  %bi_status = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %land.end._crit_edge, label %land.end..thread_crit_edge

land.end..thread_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %.thread

land.end._crit_edge:                              ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %9

.thread:                                          ; preds = %land.end..thread_crit_edge, %do.body..thread_crit_edge
  br label %9

9:                                                ; preds = %.thread, %land.end._crit_edge
  %10 = phi i8 [ 10, %.thread ], [ 0, %land.end._crit_edge ]
  %11 = phi i8 [ 10, %.thread ], [ %err.0, %land.end._crit_edge ]
  %bi_size = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bi_size, align 8
  %call = tail call zeroext i1 @blk_update_request(ptr noundef %rq, i8 noundef zeroext %10, i32 noundef %13) #14
  br i1 %call, label %.do.body_crit_edge, label %do.end

.do.body_crit_edge:                               ; preds = %9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end:                                           ; preds = %9
  tail call void @__blk_mq_end_request(ptr noundef %rq, i8 noundef zeroext %11) #14
  br i1 %tobool.not, label %if.then11, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @blk_mq_run_hw_queues(ptr noundef %1, i1 noundef zeroext true) #14
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.end.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_update_request(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queues(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aoe_ktstop(ptr noundef %k) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %task = getelementptr inbounds %struct.ktstate, ptr %k, i32 0, i32 1
  %0 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task, align 4
  %call = tail call i32 @kthread_stop(ptr noundef %1) #14
  tail call void @wait_for_completion(ptr noundef %k) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aoe_ktstart(ptr noundef %k) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %k to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %k, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %k, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @init_completion.__key) #14
  %name = getelementptr inbounds %struct.ktstate, ptr %k, i32 0, i32 4
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @kthread, ptr noundef %k, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef %name) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.thread

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.thread:                                    ; preds = %entry
  %call2 = tail call i32 @wake_up_process(ptr noundef %call) #14
  %cmp20 = icmp eq ptr %call, null
  br i1 %cmp20, label %if.end.thread.cleanup_crit_edge, label %if.end5

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  %task6 = getelementptr inbounds %struct.ktstate, ptr %k, i32 0, i32 1
  %1 = ptrtoint ptr %task6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %task6, align 4
  tail call void @wait_for_completion(ptr noundef %k) #14
  %2 = ptrtoint ptr %k to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %k, align 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @init_completion.__key) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.thread.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %if.end.thread.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kthread(ptr noundef %vp) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #14
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !160) #14
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %13 = load ptr, ptr %task, align 8
  %flags4 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags4, align 4
  %or = or i32 %15, 32768
  store i32 %or, ptr %flags4, align 4
  %16 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %16, i32 noundef -10) #14
  tail call void @complete(ptr noundef %vp) #14
  %lock = getelementptr inbounds %struct.ktstate, ptr %vp, i32 0, i32 5
  %fn = getelementptr inbounds %struct.ktstate, ptr %vp, i32 0, i32 3
  %id = getelementptr inbounds %struct.ktstate, ptr %vp, i32 0, i32 6
  %waitq = getelementptr inbounds %struct.ktstate, ptr %vp, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond71.do.body_crit_edge, %entry
  %17 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock, align 4
  call void @_raw_spin_lock_irq(ptr noundef %18) #14
  %19 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fn, align 4
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %call7 = call i32 %20(i32 noundef %22) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then, label %if.else.critedge

if.then:                                          ; preds = %do.body
  %23 = ptrtoint ptr %waitq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %waitq, align 4
  call void @add_wait_queue(ptr noundef %24, ptr noundef nonnull %wait) #14
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 212
  %27 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 ptrtoint (ptr blockaddress(@kthread, %__here) to i32), ptr %task_state_change, align 4
  %28 = load ptr, ptr %task, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 1, ptr %28, align 128
  %30 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %31) #14
  call void @schedule() #14
  %32 = ptrtoint ptr %waitq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %waitq, align 4
  call void @remove_wait_queue(ptr noundef %33, ptr noundef nonnull %wait) #14
  br label %do.cond71

if.else.critedge:                                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %35) #14
  call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 1240, i32 noundef 0) #14
  %call.i = call i32 @__cond_resched() #14
  br label %do.cond71

do.cond71:                                        ; preds = %if.else.critedge, %__here
  %call72 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call72, label %do.end75, label %do.cond71.do.body_crit_edge

do.cond71.do.body_crit_edge:                      ; preds = %do.cond71
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end75:                                         ; preds = %do.cond71
  call void @__sanitizer_cov_trace_pc() #16
  call void @complete(ptr noundef %vp) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aoecmd_ata_rsp(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %ebuf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ebuf) #14
  %0 = call ptr @memset(ptr %ebuf, i32 255, i32 128)
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %major = getelementptr inbounds %struct.aoe_hdr, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %major to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %major, align 1
  %conv = zext i16 %4 to i32
  %minor = getelementptr inbounds %struct.aoe_hdr, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %minor, align 2
  %conv1 = zext i8 %6 to i32
  %call = tail call ptr @aoedev_by_aoeaddr(i32 noundef %conv, i32 noundef %conv1, i32 noundef 0) #14
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %do.body8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %minor, align 2
  %conv5 = zext i8 %8 to i32
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ebuf, i32 noundef 128, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %conv5)
  call void @aoechr_error(ptr noundef nonnull %ebuf) #14
  br label %cleanup

do.body8:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.aoedev, ptr %call, i32 0, i32 21
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %tag = getelementptr inbounds %struct.aoe_hdr, ptr %2, i32 0, i32 8
  %9 = ptrtoint ptr %tag to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %tag, align 1
  %rem.i = urem i32 %10, 61
  %arrayidx.i = getelementptr %struct.aoedev, ptr %call, i32 0, i32 26, i32 %rem.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.body8
  %pos.0.in.i = phi ptr [ %arrayidx.i, %do.body8 ], [ %pos.0.i, %for.body.i.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %arrayidx.i
  br i1 %cmp.i.not.i, label %for.cond.i.if.else_crit_edge, label %for.body.i

for.cond.i.if.else_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

for.body.i:                                       ; preds = %for.cond.i
  %tag2.i = getelementptr inbounds %struct.frame, ptr %pos.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %tag2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tag2.i, align 8
  %cmp.i = icmp eq i32 %13, %10
  br i1 %cmp.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.0.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.getframe.exit_crit_edge

if.then.i.getframe.exit_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %getframe.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %pos.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pos.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %getframe.exit

getframe.exit:                                    ; preds = %if.end.i.i.i, %if.then.i.getframe.exit_crit_edge
  %20 = ptrtoint ptr %pos.0.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tobool.not = icmp eq ptr %pos.0.i, null
  br i1 %tobool.not, label %getframe.exit.if.else_crit_edge, label %if.then20

getframe.exit.if.else_crit_edge:                  ; preds = %getframe.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then20:                                        ; preds = %getframe.exit
  %t = getelementptr inbounds %struct.frame, ptr %pos.0.i, i32 0, i32 5
  %22 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %t, align 8
  %call.i = tail call i64 @ktime_get() #14
  %sent.i = getelementptr inbounds %struct.frame, ptr %pos.0.i, i32 0, i32 2
  %24 = ptrtoint ptr %sent.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %sent.i, align 8
  %sub.i = sub i64 %call.i, %25
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp.i91 = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp.i91, label %if.then.i92, label %if.end.i, !prof !170

if.then.i92:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i = trunc i64 %sub.i to i32
  %div.i = udiv i32 %conv.i, 1000
  br label %tsince_hr.exit

if.end.i:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647000, i64 %sub.i)
  %cmp3.i = icmp ugt i64 %sub.i, 2147483647000
  br i1 %cmp3.i, label %if.end.i.tsince_hr.exit_crit_edge, label %if.end6.i

if.end.i.tsince_hr.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tsince_hr.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %26 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %sub.i, i32 0) #18, !srcloc !171
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %26, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %26, 1
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %sub.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #18, !srcloc !172
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %27, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %conv8.i = trunc i64 %div1581.i.i.i to i32
  br label %tsince_hr.exit

tsince_hr.exit:                                   ; preds = %if.end6.i, %if.end.i.tsince_hr.exit_crit_edge, %if.then.i92
  %retval.0.i93 = phi i32 [ %div.i, %if.then.i92 ], [ %conv8.i, %if.end6.i ], [ 2147483647, %if.end.i.tsince_hr.exit_crit_edge ]
  %rttavg.i = getelementptr inbounds %struct.aoedev, ptr %call, i32 0, i32 3
  %28 = ptrtoint ptr %rttavg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rttavg.i, align 4
  %shr.i = lshr i32 %29, 8
  %sub.i94 = sub i32 %retval.0.i93, %shr.i
  %add.i = add i32 %sub.i94, %29
  store i32 %add.i, ptr %rttavg.i, align 4
  %30 = tail call i32 @llvm.abs.i32(i32 %sub.i94, i1 false) #14
  %rttdev.i = getelementptr inbounds %struct.aoedev, ptr %call, i32 0, i32 4
  %31 = ptrtoint ptr %rttdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rttdev.i, align 8
  %shr3.i = lshr i32 %32, 3
  %sub4.i = sub i32 %32, %shr3.i
  %add6.i = add i32 %sub4.i, %30
  store i32 %add6.i, ptr %rttdev.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %tsince_hr.exit.calc_rttavg.exit_crit_edge, label %lor.lhs.false.i

tsince_hr.exit.calc_rttavg.exit_crit_edge:        ; preds = %tsince_hr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %calc_rttavg.exit

lor.lhs.false.i:                                  ; preds = %tsince_hr.exit
  %maxout.i = getelementptr inbounds %struct.aoetgt, ptr %23, i32 0, i32 7
  %33 = ptrtoint ptr %maxout.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %maxout.i, align 2
  %nframes.i = getelementptr inbounds %struct.aoetgt, ptr %23, i32 0, i32 1
  %35 = ptrtoint ptr %nframes.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %nframes.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %36)
  %cmp8.not.i = icmp ult i16 %34, %36
  br i1 %cmp8.not.i, label %if.end11.i, label %lor.lhs.false.i.calc_rttavg.exit_crit_edge

lor.lhs.false.i.calc_rttavg.exit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %calc_rttavg.exit

if.end11.i:                                       ; preds = %lor.lhs.false.i
  %ssthresh.i = getelementptr inbounds %struct.aoetgt, ptr %23, i32 0, i32 9
  %37 = ptrtoint ptr %ssthresh.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ssthresh.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %38)
  %cmp15.i = icmp ult i16 %34, %38
  br i1 %cmp15.i, label %if.then17.i, label %if.else.i

if.then17.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  %add20.i = add nuw i16 %34, 1
  %39 = ptrtoint ptr %maxout.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %add20.i, ptr %maxout.i, align 2
  br label %calc_rttavg.exit

if.else.i:                                        ; preds = %if.end11.i
  %nout.i = getelementptr inbounds %struct.aoetgt, ptr %23, i32 0, i32 6
  %40 = ptrtoint ptr %nout.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %nout.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %34)
  %cmp25.i = icmp eq i16 %41, %34
  br i1 %cmp25.i, label %land.lhs.true.i, label %if.else.i.calc_rttavg.exit_crit_edge

if.else.i.calc_rttavg.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %calc_rttavg.exit

land.lhs.true.i:                                  ; preds = %if.else.i
  %next_cwnd.i = getelementptr inbounds %struct.aoetgt, ptr %23, i32 0, i32 8
  %42 = ptrtoint ptr %next_cwnd.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %next_cwnd.i, align 4
  %dec.i = add i16 %43, -1
  store i16 %dec.i, ptr %next_cwnd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp28.i = icmp eq i16 %43, 0
  br i1 %cmp28.i, label %if.then30.i, label %land.lhs.true.i.calc_rttavg.exit_crit_edge

land.lhs.true.i.calc_rttavg.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %calc_rttavg.exit

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %add33.i = add nuw i16 %34, 1
  %44 = ptrtoint ptr %maxout.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %add33.i, ptr %maxout.i, align 2
  %45 = ptrtoint ptr %next_cwnd.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %add33.i, ptr %next_cwnd.i, align 4
  br label %calc_rttavg.exit

calc_rttavg.exit:                                 ; preds = %if.then30.i, %land.lhs.true.i.calc_rttavg.exit_crit_edge, %if.else.i.calc_rttavg.exit_crit_edge, %if.then17.i, %lor.lhs.false.i.calc_rttavg.exit_crit_edge, %tsince_hr.exit.calc_rttavg.exit_crit_edge
  %46 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %t, align 8
  %nout = getelementptr inbounds %struct.aoetgt, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %nout to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %nout, align 4
  %dec = add i16 %49, -1
  store i16 %dec, ptr %nout, align 4
  %flags23 = getelementptr inbounds %struct.frame, ptr %pos.0.i, i32 0, i32 10
  %50 = ptrtoint ptr %flags23 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %flags23, align 4
  %52 = and i8 %51, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool25.not = icmp eq i8 %52, 0
  br i1 %tobool25.not, label %calc_rttavg.exit.if.end50_crit_edge, label %if.then26

calc_rttavg.exit.if.end50_crit_edge:              ; preds = %calc_rttavg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then26:                                        ; preds = %calc_rttavg.exit
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %t, align 8
  %nout_probes = getelementptr inbounds %struct.aoetgt, ptr %54, i32 0, i32 15
  %55 = ptrtoint ptr %nout_probes to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %nout_probes, align 4
  %dec28 = add i8 %56, -1
  store i8 %dec28, ptr %nout_probes, align 4
  br label %if.end50

if.else:                                          ; preds = %getframe.exit.if.else_crit_edge, %for.cond.i.if.else_crit_edge
  %rexmitq.i = getelementptr inbounds %struct.aoedev, ptr %call, i32 0, i32 27
  br label %for.cond.i98

for.cond.i98:                                     ; preds = %for.body.i101.for.cond.i98_crit_edge, %if.else
  %pos.0.in.i95 = phi ptr [ %rexmitq.i, %if.else ], [ %pos.0.i96, %for.body.i101.for.cond.i98_crit_edge ]
  %57 = ptrtoint ptr %pos.0.in.i95 to i32
  call void @__asan_load4_noabort(i32 %57)
  %pos.0.i96 = load ptr, ptr %pos.0.in.i95, align 4
  %cmp.i.not.i97 = icmp eq ptr %pos.0.i96, %rexmitq.i
  br i1 %cmp.i.not.i97, label %for.cond.i98.if.else34_crit_edge, label %for.body.i101

for.cond.i98.if.else34_crit_edge:                 ; preds = %for.cond.i98
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else34

for.body.i101:                                    ; preds = %for.cond.i98
  %tag2.i99 = getelementptr inbounds %struct.frame, ptr %pos.0.i96, i32 0, i32 1
  %58 = ptrtoint ptr %tag2.i99 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tag2.i99, align 8
  %cmp.i100 = icmp eq i32 %59, %10
  br i1 %cmp.i100, label %if.then.i103, label %for.body.i101.for.cond.i98_crit_edge

for.body.i101.for.cond.i98_crit_edge:             ; preds = %for.body.i101
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i98

if.then.i103:                                     ; preds = %for.body.i101
  %call.i.i.i102 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.0.i96) #14
  br i1 %call.i.i.i102, label %if.end.i.i.i106, label %if.then.i103.getframe_deferred.exit_crit_edge

if.then.i103.getframe_deferred.exit_crit_edge:    ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_pc() #16
  br label %getframe_deferred.exit

if.end.i.i.i106:                                  ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i104 = getelementptr inbounds %struct.list_head, ptr %pos.0.i96, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i.i104, align 4
  %62 = ptrtoint ptr %pos.0.i96 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pos.0.i96, align 4
  %prev1.i.i.i.i105 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev1.i.i.i.i105, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %61, align 4
  br label %getframe_deferred.exit

getframe_deferred.exit:                           ; preds = %if.end.i.i.i106, %if.then.i103.getframe_deferred.exit_crit_edge
  %66 = ptrtoint ptr %pos.0.i96 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.0.i96, align 4
  %prev.i.i107 = getelementptr inbounds %struct.list_head, ptr %pos.0.i96, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.i107 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i107, align 4
  %tobool31.not = icmp eq ptr %pos.0.i96, null
  br i1 %tobool31.not, label %getframe_deferred.exit.if.else34_crit_edge, label %if.then32

getframe_deferred.exit.if.else34_crit_edge:       ; preds = %getframe_deferred.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else34

if.then32:                                        ; preds = %getframe_deferred.exit
  %call.i110 = tail call i64 @ktime_get() #14
  %sent.i111 = getelementptr inbounds %struct.frame, ptr %pos.0.i96, i32 0, i32 2
  %68 = ptrtoint ptr %sent.i111 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %sent.i111, align 8
  %sub.i112 = sub i64 %call.i110, %69
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i112)
  %cmp.i113 = icmp ult i64 %sub.i112, 4294967296
  br i1 %cmp.i113, label %if.then.i116, label %if.end.i118, !prof !170

if.then.i116:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i114 = trunc i64 %sub.i112 to i32
  %div.i115 = udiv i32 %conv.i114, 1000
  br label %tsince_hr.exit126

if.end.i118:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647000, i64 %sub.i112)
  %cmp3.i117 = icmp ugt i64 %sub.i112, 2147483647000
  br i1 %cmp3.i117, label %if.end.i118.tsince_hr.exit126_crit_edge, label %if.end6.i124

if.end.i118.tsince_hr.exit126_crit_edge:          ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #16
  br label %tsince_hr.exit126

if.end6.i124:                                     ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #16
  %70 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %sub.i112, i32 0) #18, !srcloc !171
  %asmresult.i.i.i.i119 = extractvalue { i64, i32 } %70, 0
  %asmresult4.i.i.i.i120 = extractvalue { i64, i32 } %70, 1
  %71 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %sub.i112, i64 %asmresult.i.i.i.i119, i32 %asmresult4.i.i.i.i120) #18, !srcloc !172
  %asmresult10.i.i.i.i121 = extractvalue { i64, i32 } %71, 0
  %div1581.i.i.i122 = lshr i64 %asmresult10.i.i.i.i121, 9
  %conv8.i123 = trunc i64 %div1581.i.i.i122 to i32
  br label %tsince_hr.exit126

tsince_hr.exit126:                                ; preds = %if.end6.i124, %if.end.i118.tsince_hr.exit126_crit_edge, %if.then.i116
  %retval.0.i125 = phi i32 [ %div.i115, %if.then.i116 ], [ %conv8.i123, %if.end6.i124 ], [ 2147483647, %if.end.i118.tsince_hr.exit126_crit_edge ]
  %rttavg.i127 = getelementptr inbounds %struct.aoedev, ptr %call, i32 0, i32 3
  %72 = ptrtoint ptr %rttavg.i127 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rttavg.i127, align 4
  %shr.i128 = lshr i32 %73, 8
  %sub.i129 = sub i32 %retval.0.i125, %shr.i128
  %add.i130 = add i32 %sub.i129, %73
  store i32 %add.i130, ptr %rttavg.i127, align 4
  %74 = tail call i32 @llvm.abs.i32(i32 %sub.i129, i1 false) #14
  %rttdev.i131 = getelementptr inbounds %struct.aoedev, ptr %call, i32 0, i32 4
  %75 = ptrtoint ptr %rttdev.i131 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rttdev.i131, align 8
  %shr3.i132 = lshr i32 %76, 3
  %sub4.i133 = sub i32 %76, %shr3.i132
  %add6.i134 = add i32 %sub4.i133, %74
  store i32 %add6.i134, ptr %rttdev.i131, align 8
  br label %if.end50

if.else34:                                        ; preds = %getframe_deferred.exit.if.else34_crit_edge, %for.cond.i98.if.else34_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %and.i = and i32 %77, 65535
  %and1.i = and i32 %10, 65535
  %sub.i135 = sub nsw i32 %and.i, %and1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i135)
  %cmp.i136 = icmp slt i32 %sub.i135, 0
  %add.i137 = add nsw i32 %sub.i135, 65536
  %spec.select.i = select i1 %cmp.i136, i32 %add.i137, i32 %sub.i135
  %add2.i = add nuw nsw i32 %spec.select.i, 1
  %call.i138 = tail call i32 @jiffies_to_usecs(i32 noundef %add2.i) #14
  %rttavg.i139 = getelementptr inbounds %struct.aoedev, ptr %call, i32 0, i32 3
  %78 = ptrtoint ptr %rttavg.i139 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rttavg.i139, align 4
  %shr.i140 = lshr i32 %79, 8
  %sub.i141 = sub i32 %call.i138, %shr.i140
  %add.i142 = add i32 %sub.i141, %79
  store i32 %add.i142, ptr %rttavg.i139, align 4
  %80 = tail call i32 @llvm.abs.i32(i32 %sub.i141, i1 false) #14
  %rttdev.i143 = getelementptr inbounds %struct.aoedev, ptr %call, i32 0, i32 4
  %81 = ptrtoint ptr %rttdev.i143 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rttdev.i143, align 8
  %shr3.i144 = lshr i32 %82, 3
  %sub4.i145 = sub i32 %82, %shr3.i144
  %add6.i146 = add i32 %sub4.i145, %80
  store i32 %add6.i146, ptr %rttdev.i143, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #14
  tail call void @aoedev_put(ptr noundef nonnull %call) #14
  %83 = ptrtoint ptr %major to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %major, align 1
  %conv40 = zext i16 %84 to i32
  %85 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %minor, align 2
  %conv42 = zext i8 %86 to i32
  %87 = ptrtoint ptr %tag to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %tag, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %89 = load volatile i32, ptr @jiffies, align 128
  %src = getelementptr inbounds %struct.aoe_hdr, ptr %2, i32 0, i32 1
  %call47 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ebuf, i32 noundef 128, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %conv40, i32 noundef %conv42, i32 noundef %88, i32 noundef %89, ptr noundef %src, ptr noundef %2)
  call void @aoechr_error(ptr noundef nonnull %ebuf) #14
  br label %cleanup

if.end50:                                         ; preds = %tsince_hr.exit126, %if.then26, %calc_rttavg.exit.if.end50_crit_edge
  %f.0 = phi ptr [ %pos.0.i, %if.then26 ], [ %pos.0.i, %calc_rttavg.exit.if.end50_crit_edge ], [ %pos.0.i96, %tsince_hr.exit126 ]
  tail call void @aoecmd_work(ptr noundef nonnull %call)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #14
  tail call fastcc void @ktcomplete(ptr noundef nonnull %f.0, ptr noundef %skb)
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.else34, %if.then
  %retval.0 = phi ptr [ %skb, %if.then ], [ null, %if.end50 ], [ %skb, %if.else34 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ebuf) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aoedev_by_aoeaddr(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aoechr_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @aoedev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ktcomplete(ptr noundef %f, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %r_skb = getelementptr inbounds %struct.frame, ptr %f, i32 0, i32 7
  %0 = ptrtoint ptr %r_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %skb, ptr %r_skb, align 8
  %t = getelementptr inbounds %struct.frame, ptr %f, i32 0, i32 5
  %1 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %t, align 8
  %d = getelementptr inbounds %struct.aoetgt, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d, align 4
  %aoeminor = getelementptr inbounds %struct.aoedev, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %aoeminor to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %aoeminor, align 4
  %conv = zext i16 %6 to i32
  %7 = load i32, ptr @ncpus, align 4
  %rem = srem i32 %conv, %7
  %8 = load ptr, ptr @iocq, align 4
  %lock = getelementptr %struct.iocq_ktio, ptr %8, i32 %rem, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %9 = load ptr, ptr @kts, align 4
  %active = getelementptr %struct.ktstate, ptr %9, i32 %rem, i32 7
  %10 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %12 = load ptr, ptr @iocq, align 4
  %lock8 = getelementptr %struct.iocq_ktio, ptr %12, i32 %rem, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock8, i32 noundef %call3) #14
  %13 = load ptr, ptr @iocq, align 4
  %lock17 = getelementptr inbounds %struct.iocq_ktio, ptr %13, i32 0, i32 1
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock17) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call3, %entry.if.end_crit_edge ], [ %call19, %if.then ]
  %id.0 = phi i32 [ %rem, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %14 = load ptr, ptr @iocq, align 4
  %arrayidx24 = getelementptr %struct.iocq_ktio, ptr %14, i32 %id.0
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx24, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %f, ptr noundef %16, ptr noundef %arrayidx24) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %f, ptr %prev.i, align 4
  %18 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx24, ptr %f, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %f, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %f, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %21 = load ptr, ptr @iocq, align 4
  %lock27 = getelementptr %struct.iocq_ktio, ptr %21, i32 %id.0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock27, i32 noundef %flags.0) #14
  %22 = load ptr, ptr @ktiowq, align 4
  %arrayidx28 = getelementptr %struct.wait_queue_head, ptr %22, i32 %id.0
  tail call void @__wake_up(ptr noundef %arrayidx28, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aoecmd_cfg(i16 noundef zeroext %aoemajor, i8 noundef zeroext %aoeminor) local_unnamed_addr #0 align 64 {
entry:
  %queue = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %queue) #14
  %0 = getelementptr inbounds i8, ptr %queue, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.anon.65, ptr %queue, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queue, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i, align 4
  %5 = call i32 @llvm.read_register.i32(metadata !160) #14
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !173
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %call.i = call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b50.i = load i1, ptr @aoecmd_cfg_pkts.__warned, align 1
  br i1 %.b50.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @aoecmd_cfg_pkts.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 421, ptr noundef nonnull @.str.33) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn76.i = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp.not78.i = icmp eq ptr %.pn76.i, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not78.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %dev_put.exit.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn79.i = phi ptr [ %.pn.i, %dev_put.exit.i.for.body.i_crit_edge ], [ %.pn76.i, %do.end.i.for.body.i_crit_edge ]
  %ifp.080.i = getelementptr i8, ptr %.pn79.i, i32 -40
  %tobool.not.i51.i = icmp eq ptr %ifp.080.i, null
  br i1 %tobool.not.i51.i, label %for.body.i.dev_hold.exit.i_crit_edge, label %do.body1.i.i

for.body.i.dev_hold.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_hold.exit.i

do.body1.i.i:                                     ; preds = %for.body.i
  %9 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !174
  %pcpu_refcnt.i.i = getelementptr i8, ptr %.pn79.i, i32 940
  %10 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = call i32 @llvm.read_register.i32(metadata !160) #14
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %18, %12
  %19 = inttoptr i32 %add.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add13.i.i = add i32 %21, 1
  store i32 %add13.i.i, ptr %19, align 4
  %22 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !175
  %and.i.i.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !176

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #14, !srcloc !177
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %do.end30.i.i, %for.body.i.dev_hold.exit.i_crit_edge
  %call9.i = call i32 @is_aoe_netif(ptr noundef %ifp.080.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %dev_hold.exit.i.cont.i_crit_edge, label %if.end12.i

dev_hold.exit.i.cont.i_crit_edge:                 ; preds = %dev_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cont.i

if.end12.i:                                       ; preds = %dev_hold.exit.i
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef 208, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #14
  %tobool.not.i52.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i52.i, label %do.end18.i, label %if.end21.i

do.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #17
  br label %cont.i

if.end21.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %23 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 176
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %25 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %26, i32 176
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 18
  %27 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 21
  %29 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 20
  %30 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %31 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -30558, ptr %protocol.i.i, align 8
  %call22.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 32) #14
  %32 = getelementptr inbounds %struct.anon.44, ptr %call.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ifp.080.i, ptr %32, align 8
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i, align 4
  %36 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %queue, ptr %call.i.i.i, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.44, ptr %call.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %call.i.i.i, ptr %prev.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call.i.i.i, ptr %35, align 4
  %39 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qlen.i, align 4
  %add.i.i.i54.i = add i32 %40, 1
  store volatile i32 %add.i.i.i54.i, ptr %qlen.i, align 4
  %41 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i.i.i, align 8
  %43 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i = zext i16 %44 to i32
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %conv.i.i
  %45 = getelementptr inbounds i8, ptr %add.ptr.i.i, i32 4
  %46 = call ptr @memset(ptr %45, i32 0, i32 28)
  %47 = call ptr @memset(ptr %add.ptr.i.i, i32 255, i32 6)
  %src.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %dev_addr.i = getelementptr i8, ptr %.pn79.i, i32 536
  %48 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_addr.i, align 64
  %50 = call ptr @memcpy(ptr %src.i, ptr %49, i32 6)
  %type.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -30558, ptr %type.i, align 4
  %verfl.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %verfl.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 16, ptr %verfl.i, align 2
  %major.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %53 = ptrtoint ptr %major.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %aoemajor, ptr %major.i, align 4
  %minor.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %54 = ptrtoint ptr %minor.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %aoeminor, ptr %minor.i, align 2
  %cmd.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i.i, i32 0, i32 7
  %55 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %cmd.i, align 1
  br label %cont.i

cont.i:                                           ; preds = %if.end21.i, %do.end18.i, %dev_hold.exit.i.cont.i_crit_edge
  br i1 %tobool.not.i51.i, label %cont.i.dev_put.exit.i_crit_edge, label %do.body1.i64.i

cont.i.dev_put.exit.i_crit_edge:                  ; preds = %cont.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put.exit.i

do.body1.i64.i:                                   ; preds = %cont.i
  %56 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !174
  %pcpu_refcnt.i56.i = getelementptr i8, ptr %.pn79.i, i32 940
  %57 = ptrtoint ptr %pcpu_refcnt.i56.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pcpu_refcnt.i56.i, align 4
  %59 = ptrtoint ptr %58 to i32
  %60 = call i32 @llvm.read_register.i32(metadata !160) #14
  %and.i.i57.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i57.i to ptr
  %cpu.i58.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %cpu.i58.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu.i58.i, align 4
  %arrayidx.i59.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx.i59.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i59.i, align 4
  %add.i60.i = add i32 %65, %59
  %66 = inttoptr i32 %add.i60.i to ptr
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %add13.i61.i = add i32 %68, -1
  store i32 %add13.i61.i, ptr %66, align 4
  %69 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !175
  %and.i.i.i62.i = and i32 %69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i62.i)
  %tobool24.not.i63.i = icmp eq i32 %and.i.i.i62.i, 0
  br i1 %tobool24.not.i63.i, label %if.then28.i65.i, label %do.body1.i64.i.do.end30.i66.i_crit_edge, !prof !176

do.body1.i64.i.do.end30.i66.i_crit_edge:          ; preds = %do.body1.i64.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30.i66.i

if.then28.i65.i:                                  ; preds = %do.body1.i64.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %do.end30.i66.i

do.end30.i66.i:                                   ; preds = %if.then28.i65.i, %do.body1.i64.i.do.end30.i66.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %56) #14, !srcloc !177
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %do.end30.i66.i, %cont.i.dev_put.exit.i_crit_edge
  %70 = ptrtoint ptr %.pn79.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn.i = load volatile ptr, ptr %.pn79.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not.i, label %dev_put.exit.i.for.end.i_crit_edge, label %dev_put.exit.i.for.body.i_crit_edge

dev_put.exit.i.for.body.i_crit_edge:              ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

dev_put.exit.i.for.end.i_crit_edge:               ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %dev_put.exit.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i67.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i67.i, label %for.end.i.aoecmd_cfg_pkts.exit_crit_edge, label %land.lhs.true.i70.i

for.end.i.aoecmd_cfg_pkts.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %aoecmd_cfg_pkts.exit

land.lhs.true.i70.i:                              ; preds = %for.end.i
  %call1.i68.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68.i)
  %tobool.not.i69.i = icmp eq i32 %call1.i68.i, 0
  br i1 %tobool.not.i69.i, label %land.lhs.true.i70.i.aoecmd_cfg_pkts.exit_crit_edge, label %land.lhs.true2.i72.i

land.lhs.true.i70.i.aoecmd_cfg_pkts.exit_crit_edge: ; preds = %land.lhs.true.i70.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %aoecmd_cfg_pkts.exit

land.lhs.true2.i72.i:                             ; preds = %land.lhs.true.i70.i
  %.b4.i71.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i71.i, label %land.lhs.true2.i72.i.aoecmd_cfg_pkts.exit_crit_edge, label %if.then.i73.i

land.lhs.true2.i72.i.aoecmd_cfg_pkts.exit_crit_edge: ; preds = %land.lhs.true2.i72.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %aoecmd_cfg_pkts.exit

if.then.i73.i:                                    ; preds = %land.lhs.true2.i72.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 724, ptr noundef nonnull @.str.38) #14
  br label %aoecmd_cfg_pkts.exit

aoecmd_cfg_pkts.exit:                             ; preds = %if.then.i73.i, %land.lhs.true2.i72.i.aoecmd_cfg_pkts.exit_crit_edge, %land.lhs.true.i70.i.aoecmd_cfg_pkts.exit_crit_edge, %for.end.i.aoecmd_cfg_pkts.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !178
  %71 = call i32 @llvm.read_register.i32(metadata !160) #14
  %and.i.i.i.i.i74.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i74.i to ptr
  %preempt_count.i.i.i.i75.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i75.i, align 4
  %sub.i.i.i.i = add i32 %74, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i75.i, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @aoenet_xmit(ptr noundef nonnull %queue) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %queue) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aoenet_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aoecmd_ata_id(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @newframe(ptr noundef %d)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %tgt = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 30
  %0 = ptrtoint ptr %tgt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgt, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %skb1 = getelementptr inbounds %struct.frame, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb1, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15, i32 0, i32 21
  %8 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv.i
  %call3 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 36) #14
  %len = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %12 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %11)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %and.i.i = and i32 %13, 65535
  %lasttag.i.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 9
  %14 = ptrtoint ptr %lasttag.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %lasttag.i.i, align 4
  %inc.i.i = add i16 %15, 1
  store i16 %inc.i.i, ptr %lasttag.i.i, align 4
  %16 = and i16 %inc.i.i, 32767
  %and1.i.i = zext i16 %16 to i32
  %shl.i.i = shl nuw nsw i32 %and1.i.i, 16
  %or.i.i = or i32 %shl.i.i, %and.i.i
  %src.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i, i32 0, i32 1
  %ifp.i = getelementptr inbounds %struct.aoetgt, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %ifp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ifp.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 86
  %21 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_addr.i, align 64
  %23 = call ptr @memcpy(ptr %src.i, ptr %22, i32 6)
  %24 = call ptr @memcpy(ptr %add.ptr.i, ptr %3, i32 6)
  %type.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i, i32 0, i32 2
  %25 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -30558, ptr %type.i, align 4
  %verfl.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i, i32 0, i32 3
  %26 = ptrtoint ptr %verfl.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 16, ptr %verfl.i, align 2
  %aoemajor.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 2
  %27 = ptrtoint ptr %aoemajor.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %aoemajor.i, align 8
  %conv.i36 = trunc i32 %28 to i16
  %major.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i, i32 0, i32 5
  %29 = ptrtoint ptr %major.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i36, ptr %major.i, align 4
  %aoeminor.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 5
  %30 = ptrtoint ptr %aoeminor.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %aoeminor.i, align 4
  %conv3.i = trunc i16 %31 to i8
  %minor.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i, i32 0, i32 6
  %32 = ptrtoint ptr %minor.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv3.i, ptr %minor.i, align 2
  %cmd.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i, i32 0, i32 7
  %33 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %cmd.i, align 1
  %tag.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i, i32 0, i32 8
  %34 = ptrtoint ptr %tag.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i.i, ptr %tag.i, align 4
  %tag = getelementptr inbounds %struct.frame, ptr %call, i32 0, i32 1
  %35 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i.i, ptr %tag, align 8
  %t.i = getelementptr inbounds %struct.frame, ptr %call, i32 0, i32 5
  %36 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %t.i, align 8
  %d1.i = getelementptr inbounds %struct.aoetgt, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %d1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %d1.i, align 4
  %rem.i = urem i32 %or.i.i, 61
  %arrayidx.i = getelementptr %struct.aoedev, ptr %39, i32 0, i32 26, i32 %rem.i
  %prev.i.i = getelementptr %struct.aoedev, ptr %39, i32 0, i32 26, i32 %rem.i, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %41, ptr noundef %arrayidx.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.fhash.exit_crit_edge

if.end.fhash.exit_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %fhash.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx.i, ptr %call, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %call, ptr %41, align 4
  br label %fhash.exit

fhash.exit:                                       ; preds = %if.end.i.i.i, %if.end.fhash.exit_crit_edge
  %nout = getelementptr inbounds %struct.aoetgt, ptr %3, i32 0, i32 6
  %46 = ptrtoint ptr %nout to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %nout, align 4
  %inc = add i16 %47, 1
  store i16 %inc, ptr %nout, align 4
  %waited = getelementptr inbounds %struct.frame, ptr %call, i32 0, i32 3
  %48 = ptrtoint ptr %waited to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %waited, align 8
  %waited_total = getelementptr inbounds %struct.frame, ptr %call, i32 0, i32 4
  %49 = ptrtoint ptr %waited_total to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %waited_total, align 4
  %scnt = getelementptr %struct.aoe_hdr, ptr %add.ptr.i, i32 1, i32 0, i32 2
  %50 = ptrtoint ptr %scnt to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %scnt, align 1
  %cmdstat = getelementptr %struct.aoe_hdr, ptr %add.ptr.i, i32 1, i32 0, i32 3
  %51 = ptrtoint ptr %cmdstat to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -20, ptr %cmdstat, align 1
  %lba3 = getelementptr %struct.aoe_hdr, ptr %add.ptr.i, i32 1, i32 1, i32 1
  %52 = ptrtoint ptr %lba3 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -96, ptr %lba3, align 1
  %53 = ptrtoint ptr %ifp.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ifp.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %57 = getelementptr inbounds %struct.anon.44, ptr %5, i32 0, i32 2
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %56, ptr %57, align 8
  %rttavg = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 3
  %59 = ptrtoint ptr %rttavg to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 64000000, ptr %rttavg, align 4
  %rttdev = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 4
  %60 = ptrtoint ptr %rttdev to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 16000000, ptr %rttdev, align 8
  %function = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 20, i32 2
  %61 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @rexmit_timer, ptr %function, align 4
  %call5 = tail call ptr @skb_clone(ptr noundef %5, i32 noundef 2592) #14
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %fhash.exit.cleanup_crit_edge, label %if.then6

fhash.exit.cleanup_crit_edge:                     ; preds = %fhash.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then6:                                         ; preds = %fhash.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call i64 @ktime_get() #14
  %sent = getelementptr inbounds %struct.frame, ptr %call, i32 0, i32 2
  %62 = ptrtoint ptr %sent to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %call7, ptr %sent, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %fhash.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call5, %if.then6 ], [ null, %fhash.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @newframe(ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %targets = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 28
  %0 = ptrtoint ptr %targets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targets, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tgt = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 30
  %ntargets = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 29
  %4 = ptrtoint ptr %tgt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tgt, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end31.for.cond_crit_edge, %if.end
  %tt.0 = phi ptr [ %tt.1, %if.end31.for.cond_crit_edge ], [ %5, %if.end ]
  %totout.0 = phi i32 [ %totout.1, %if.end31.for.cond_crit_edge ], [ 0, %if.end ]
  %has_untainted.0 = phi i32 [ %has_untainted.1, %if.end31.for.cond_crit_edge ], [ 0, %if.end ]
  %incdec.ptr = getelementptr ptr, ptr %tt.0, i32 1
  %6 = ptrtoint ptr %targets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %targets, align 8
  %8 = ptrtoint ptr %ntargets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ntargets, align 4
  %arrayidx4 = getelementptr ptr, ptr %7, i32 %9
  %cmp.not = icmp ult ptr %incdec.ptr, %arrayidx4
  br i1 %cmp.not, label %lor.lhs.false5, label %for.cond.if.then7_crit_edge

for.cond.if.then7_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

lor.lhs.false5:                                   ; preds = %for.cond
  %10 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %incdec.ptr, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %lor.lhs.false5.if.then7_crit_edge, label %lor.lhs.false5.if.end9_crit_edge

lor.lhs.false5.if.end9_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

lor.lhs.false5.if.then7_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false5.if.then7_crit_edge, %for.cond.if.then7_crit_edge
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %lor.lhs.false5.if.end9_crit_edge
  %tt.1 = phi ptr [ %7, %if.then7 ], [ %incdec.ptr, %lor.lhs.false5.if.end9_crit_edge ]
  %12 = ptrtoint ptr %tt.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tt.1, align 4
  %taint = getelementptr inbounds %struct.aoetgt, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %taint to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %taint, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %if.then11, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %nout = getelementptr inbounds %struct.aoetgt, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %nout to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %nout, align 4
  %conv = zext i16 %17 to i32
  %add = add i32 %totout.0, %conv
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %totout.1 = phi i32 [ %totout.0, %if.end9.if.end12_crit_edge ], [ %add, %if.then11 ]
  %has_untainted.1 = phi i32 [ %has_untainted.0, %if.end9.if.end12_crit_edge ], [ 1, %if.then11 ]
  %nout13 = getelementptr inbounds %struct.aoetgt, ptr %13, i32 0, i32 6
  %18 = ptrtoint ptr %nout13 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nout13, align 4
  %maxout = getelementptr inbounds %struct.aoetgt, ptr %13, i32 0, i32 7
  %20 = ptrtoint ptr %maxout to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %maxout, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp16 = icmp ult i16 %19, %21
  %or.cond78 = select i1 %cmp16, i1 %tobool10.not, i1 false
  br i1 %or.cond78, label %land.lhs.true22, label %if.end12.if.end31_crit_edge

if.end12.if.end31_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

land.lhs.true22:                                  ; preds = %if.end12
  %ifp = getelementptr inbounds %struct.aoetgt, ptr %13, i32 0, i32 5
  %22 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ifp, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool23.not = icmp eq ptr %25, null
  br i1 %tobool23.not, label %land.lhs.true22.if.end31_crit_edge, label %if.then24

land.lhs.true22.if.end31_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then24:                                        ; preds = %land.lhs.true22
  %call25 = tail call fastcc ptr @newtframe(ptr noundef %d, ptr noundef %13)
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.then24.if.end31_crit_edge, label %if.then24.if.then27_crit_edge

if.then24.if.then27_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27

if.then24.if.end31_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then27:                                        ; preds = %if.then24.1.if.then27_crit_edge, %if.then24.if.then27_crit_edge
  %tt.1.lcssa = phi ptr [ %tt.1, %if.then24.if.then27_crit_edge ], [ %tt.1.1, %if.then24.1.if.then27_crit_edge ]
  %.lcssa = phi ptr [ %13, %if.then24.if.then27_crit_edge ], [ %42, %if.then24.1.if.then27_crit_edge ]
  %call25.lcssa = phi ptr [ %call25, %if.then24.if.then27_crit_edge ], [ %call25.1, %if.then24.1.if.then27_crit_edge ]
  %ifp.le = getelementptr inbounds %struct.aoetgt, ptr %.lcssa, i32 0, i32 5
  %26 = ptrtoint ptr %ifp.le to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ifp.le, align 4
  %incdec.ptr.i = getelementptr %struct.aoeif, ptr %27, i32 1
  %ifs.i = getelementptr inbounds %struct.aoetgt, ptr %.lcssa, i32 0, i32 4
  %cmp.not.i = icmp ult ptr %incdec.ptr.i, %ifp.le
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then27.if.end.i_crit_edge

if.then27.if.end.i_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %if.then27
  %28 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %incdec.ptr.i, align 4
  %cmp2.i = icmp eq ptr %29, null
  br i1 %cmp2.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.end7.i_crit_edge

lor.lhs.false.i.if.end7.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %if.then27.if.end.i_crit_edge
  %30 = ptrtoint ptr %ifs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr.i = load ptr, ptr %ifs.i, align 4
  %cmp5.i = icmp eq ptr %.pr.i, null
  br i1 %cmp5.i, label %if.end.i.ifrotate.exit_crit_edge, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.end.i.ifrotate.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ifrotate.exit

if.end7.i:                                        ; preds = %if.end.i.if.end7.i_crit_edge, %lor.lhs.false.i.if.end7.i_crit_edge
  %ifp.018.i = phi ptr [ %ifs.i, %if.end.i.if.end7.i_crit_edge ], [ %incdec.ptr.i, %lor.lhs.false.i.if.end7.i_crit_edge ]
  %31 = ptrtoint ptr %ifp.le to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %ifp.018.i, ptr %ifp.le, align 4
  br label %ifrotate.exit

ifrotate.exit:                                    ; preds = %if.end7.i, %if.end.i.ifrotate.exit_crit_edge
  %32 = ptrtoint ptr %tgt to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %tt.1.lcssa, ptr %tgt, align 8
  br label %cleanup

if.end31:                                         ; preds = %if.then24.if.end31_crit_edge, %land.lhs.true22.if.end31_crit_edge, %if.end12.if.end31_crit_edge
  %33 = ptrtoint ptr %tgt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tgt, align 8
  %cmp33 = icmp eq ptr %tt.1, %34
  br i1 %cmp33, label %if.then35, label %if.end31.for.cond_crit_edge

if.end31.for.cond_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %has_untainted.1)
  %tobool38.not = icmp eq i32 %has_untainted.1, 0
  br i1 %tobool38.not, label %if.then35.for.cond.1_crit_edge, label %if.then35.for.end_crit_edge

if.then35.for.end_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.then35.for.cond.1_crit_edge:                   ; preds = %if.then35
  br label %for.cond.1

for.cond.1:                                       ; preds = %if.end31.1.for.cond.1_crit_edge, %if.then35.for.cond.1_crit_edge
  %tt.0.1 = phi ptr [ %tt.1.1, %if.end31.1.for.cond.1_crit_edge ], [ %tt.1, %if.then35.for.cond.1_crit_edge ]
  %totout.0.1 = phi i32 [ %totout.1.1, %if.end31.1.for.cond.1_crit_edge ], [ %totout.1, %if.then35.for.cond.1_crit_edge ]
  %incdec.ptr.1 = getelementptr ptr, ptr %tt.0.1, i32 1
  %35 = ptrtoint ptr %targets to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %targets, align 8
  %37 = ptrtoint ptr %ntargets to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ntargets, align 4
  %arrayidx4.1 = getelementptr ptr, ptr %36, i32 %38
  %cmp.not.1 = icmp ult ptr %incdec.ptr.1, %arrayidx4.1
  br i1 %cmp.not.1, label %lor.lhs.false5.1, label %for.cond.1.if.then7.1_crit_edge

for.cond.1.if.then7.1_crit_edge:                  ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7.1

lor.lhs.false5.1:                                 ; preds = %for.cond.1
  %39 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %incdec.ptr.1, align 4
  %tobool6.not.1 = icmp eq ptr %40, null
  br i1 %tobool6.not.1, label %lor.lhs.false5.1.if.then7.1_crit_edge, label %lor.lhs.false5.1.if.end9.1_crit_edge

lor.lhs.false5.1.if.end9.1_crit_edge:             ; preds = %lor.lhs.false5.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.1

lor.lhs.false5.1.if.then7.1_crit_edge:            ; preds = %lor.lhs.false5.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7.1

if.then7.1:                                       ; preds = %lor.lhs.false5.1.if.then7.1_crit_edge, %for.cond.1.if.then7.1_crit_edge
  br label %if.end9.1

if.end9.1:                                        ; preds = %if.then7.1, %lor.lhs.false5.1.if.end9.1_crit_edge
  %tt.1.1 = phi ptr [ %36, %if.then7.1 ], [ %incdec.ptr.1, %lor.lhs.false5.1.if.end9.1_crit_edge ]
  %41 = ptrtoint ptr %tt.1.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tt.1.1, align 4
  %taint.1 = getelementptr inbounds %struct.aoetgt, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %taint.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %taint.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool10.not.1 = icmp eq i32 %44, 0
  br i1 %tobool10.not.1, label %if.then11.1, label %if.end9.1.if.end12.1_crit_edge

if.end9.1.if.end12.1_crit_edge:                   ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.1

if.then11.1:                                      ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #16
  %nout.1 = getelementptr inbounds %struct.aoetgt, ptr %42, i32 0, i32 6
  %45 = ptrtoint ptr %nout.1 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %nout.1, align 4
  %conv.1 = zext i16 %46 to i32
  %add.1 = add i32 %totout.0.1, %conv.1
  br label %if.end12.1

if.end12.1:                                       ; preds = %if.then11.1, %if.end9.1.if.end12.1_crit_edge
  %totout.1.1 = phi i32 [ %totout.0.1, %if.end9.1.if.end12.1_crit_edge ], [ %add.1, %if.then11.1 ]
  %nout13.1 = getelementptr inbounds %struct.aoetgt, ptr %42, i32 0, i32 6
  %47 = ptrtoint ptr %nout13.1 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %nout13.1, align 4
  %maxout.1 = getelementptr inbounds %struct.aoetgt, ptr %42, i32 0, i32 7
  %49 = ptrtoint ptr %maxout.1 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %maxout.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %50)
  %cmp16.1 = icmp ult i16 %48, %50
  br i1 %cmp16.1, label %land.lhs.true22.1, label %if.end12.1.if.end31.1_crit_edge

if.end12.1.if.end31.1_crit_edge:                  ; preds = %if.end12.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.1

land.lhs.true22.1:                                ; preds = %if.end12.1
  %ifp.1 = getelementptr inbounds %struct.aoetgt, ptr %42, i32 0, i32 5
  %51 = ptrtoint ptr %ifp.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ifp.1, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %tobool23.not.1 = icmp eq ptr %54, null
  br i1 %tobool23.not.1, label %land.lhs.true22.1.if.end31.1_crit_edge, label %if.then24.1

land.lhs.true22.1.if.end31.1_crit_edge:           ; preds = %land.lhs.true22.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.1

if.then24.1:                                      ; preds = %land.lhs.true22.1
  %call25.1 = tail call fastcc ptr @newtframe(ptr noundef %d, ptr noundef %42)
  %tobool26.not.1 = icmp eq ptr %call25.1, null
  br i1 %tobool26.not.1, label %if.then24.1.if.end31.1_crit_edge, label %if.then24.1.if.then27_crit_edge

if.then24.1.if.then27_crit_edge:                  ; preds = %if.then24.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27

if.then24.1.if.end31.1_crit_edge:                 ; preds = %if.then24.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.1

if.end31.1:                                       ; preds = %if.then24.1.if.end31.1_crit_edge, %land.lhs.true22.1.if.end31.1_crit_edge, %if.end12.1.if.end31.1_crit_edge
  %55 = ptrtoint ptr %tgt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tgt, align 8
  %cmp33.1 = icmp eq ptr %tt.1.1, %56
  br i1 %cmp33.1, label %if.end31.1.for.end_crit_edge, label %if.end31.1.for.cond.1_crit_edge

if.end31.1.for.cond.1_crit_edge:                  ; preds = %if.end31.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.1

if.end31.1.for.end_crit_edge:                     ; preds = %if.end31.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end31.1.for.end_crit_edge, %if.then35.for.end_crit_edge
  %totout.1.lcssa96.lcssa = phi i32 [ %totout.1, %if.then35.for.end_crit_edge ], [ %totout.1.1, %if.end31.1.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %totout.1.lcssa96.lcssa)
  %cmp42 = icmp eq i32 %totout.1.lcssa96.lcssa, 0
  br i1 %cmp42, label %if.then44, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then44:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %kicked = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 31
  %57 = ptrtoint ptr %kicked to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %kicked, align 4
  %inc = add i32 %58, 1
  store i32 %inc, ptr %kicked, align 4
  %flags = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 6
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %flags, align 2
  %61 = or i16 %60, 32
  store i16 %61, ptr %flags, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %for.end.cleanup_crit_edge, %ifrotate.exit, %do.end
  %retval.0 = phi ptr [ %call25.lcssa, %ifrotate.exit ], [ null, %do.end ], [ null, %if.then44 ], [ null, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rexmit_timer(ptr noundef %timer) #0 align 64 {
entry:
  %flist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flist) #14
  %0 = getelementptr inbounds %struct.list_head, ptr %flist, i32 0, i32 1
  %1 = ptrtoint ptr %flist to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %flist, ptr %flist, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %flist, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %timer, i32 -304
  %lock = getelementptr i8, ptr %timer, i32 48
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %rttavg.i = getelementptr i8, ptr %timer, i32 -292
  %3 = ptrtoint ptr %rttavg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rttavg.i, align 4
  %5 = lshr i32 %4, 7
  %shr.i = and i32 %5, 16777215
  %rttdev.i = getelementptr i8, ptr %timer, i32 -288
  %6 = ptrtoint ptr %rttdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rttdev.i, align 8
  %mul1.i = and i32 %7, 536870911
  %add.i = add nuw nsw i32 %shr.i, %mul1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp.i = icmp eq i32 %add.i, 0
  %spec.store.select.i = select i1 %cmp.i, i32 1, i32 %add.i
  %ntargets.i = getelementptr i8, ptr %timer, i32 668
  %8 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ntargets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp16.not.i = icmp eq i32 %9, 0
  br i1 %cmp16.not.i, label %entry.count_targets.exit_crit_edge, label %land.rhs.lr.ph.i

entry.count_targets.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %count_targets.exit

land.rhs.lr.ph.i:                                 ; preds = %entry
  %targets.i = getelementptr i8, ptr %timer, i32 664
  %10 = ptrtoint ptr %targets.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %targets.i, align 8
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %i.017.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc4.i, %for.body.i.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %i.017.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %land.rhs.i.count_targets.exit_crit_edge, label %for.body.i

land.rhs.i.count_targets.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %count_targets.exit

for.body.i:                                       ; preds = %land.rhs.i
  %inc4.i = add nuw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc4.i, %9
  br i1 %exitcond.not.i, label %for.body.i.count_targets.exit_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

for.body.i.count_targets.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %count_targets.exit

count_targets.exit:                               ; preds = %for.body.i.count_targets.exit_crit_edge, %land.rhs.i.count_targets.exit_crit_edge, %entry.count_targets.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.count_targets.exit_crit_edge ], [ %i.017.i, %land.rhs.i.count_targets.exit_crit_edge ], [ %9, %for.body.i.count_targets.exit_crit_edge ]
  %flags8 = getelementptr i8, ptr %timer, i32 -282
  %14 = ptrtoint ptr %flags8 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags8, align 2
  %16 = and i16 %15, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not = icmp eq i16 %16, 0
  br i1 %tobool.not, label %for.cond.preheader, label %count_targets.exit.cleanup_crit_edge

count_targets.exit.cleanup_crit_edge:             ; preds = %count_targets.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %count_targets.exit
  %factive = getelementptr i8, ptr %timer, i32 168
  br label %for.body

while.cond.preheader:                             ; preds = %for.inc28
  %17 = ptrtoint ptr %flist to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %flist, align 4
  %cmp.i187.not234 = icmp eq ptr %18, %flist
  br i1 %cmp.i187.not234, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i)
  %cmp55 = icmp sgt i32 %i.0.lcssa.i, 0
  %rexmitq = getelementptr i8, ptr %timer, i32 656
  %prev.i2.i217 = getelementptr i8, ptr %timer, i32 660
  br label %while.body

for.body:                                         ; preds = %for.inc28.for.body_crit_edge, %for.cond.preheader
  %i.0233 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc28.for.body_crit_edge ]
  %arrayidx = getelementptr [61 x %struct.list_head], ptr %factive, i32 0, i32 %i.0233
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %cmp.i183.not229 = icmp eq ptr %20, %arrayidx
  br i1 %cmp.i183.not229, label %for.body.for.inc28_crit_edge, label %for.body.for.body18_crit_edge

for.body.for.body18_crit_edge:                    ; preds = %for.body
  br label %for.body18

for.body.for.inc28_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc28

for.body18:                                       ; preds = %list_move_tail.exit.for.body18_crit_edge, %for.body.for.body18_crit_edge
  %pos.0230 = phi ptr [ %nx.0232, %list_move_tail.exit.for.body18_crit_edge ], [ %20, %for.body.for.body18_crit_edge ]
  %21 = ptrtoint ptr %pos.0230 to i32
  call void @__asan_load4_noabort(i32 %21)
  %nx.0232 = load ptr, ptr %pos.0230, align 4
  %call.i = call i64 @ktime_get() #14
  %sent.i = getelementptr inbounds %struct.frame, ptr %pos.0230, i32 0, i32 2
  %22 = ptrtoint ptr %sent.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %sent.i, align 8
  %sub.i = sub i64 %call.i, %23
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp.i184 = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp.i184, label %if.then.i, label %if.end.i, !prof !170

if.then.i:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i185 = trunc i64 %sub.i to i32
  %div.i = udiv i32 %conv.i185, 1000
  br label %tsince_hr.exit

if.end.i:                                         ; preds = %for.body18
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647000, i64 %sub.i)
  %cmp3.i186 = icmp ugt i64 %sub.i, 2147483647000
  br i1 %cmp3.i186, label %if.end.i.if.end26_crit_edge, label %if.end6.i

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %24 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %sub.i, i32 0) #18, !srcloc !171
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %24, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %24, 1
  %25 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %sub.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #18, !srcloc !172
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %25, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %conv8.i = trunc i64 %div1581.i.i.i to i32
  br label %tsince_hr.exit

tsince_hr.exit:                                   ; preds = %if.end6.i, %if.then.i
  %retval.0.i = phi i32 [ %div.i, %if.then.i ], [ %conv8.i, %if.end6.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %spec.store.select.i)
  %cmp23 = icmp slt i32 %retval.0.i, %spec.store.select.i
  br i1 %cmp23, label %tsince_hr.exit.for.inc28_crit_edge, label %tsince_hr.exit.if.end26_crit_edge

tsince_hr.exit.if.end26_crit_edge:                ; preds = %tsince_hr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

tsince_hr.exit.for.inc28_crit_edge:               ; preds = %tsince_hr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc28

if.end26:                                         ; preds = %tsince_hr.exit.if.end26_crit_edge, %if.end.i.if.end26_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.0230) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end26.__list_del_entry.exit.i_crit_edge

if.end26.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.0230, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %pos.0230 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pos.0230, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end26.__list_del_entry.exit.i_crit_edge
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %pos.0230, ptr noundef %33, ptr noundef nonnull %flist) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pos.0230, ptr %0, align 4
  %35 = ptrtoint ptr %pos.0230 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %flist, ptr %pos.0230, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.0230, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %pos.0230, ptr %33, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %cmp.i183.not = icmp eq ptr %nx.0232, %arrayidx
  br i1 %cmp.i183.not, label %list_move_tail.exit.for.inc28_crit_edge, label %list_move_tail.exit.for.body18_crit_edge

list_move_tail.exit.for.body18_crit_edge:         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body18

list_move_tail.exit.for.inc28_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc28

for.inc28:                                        ; preds = %list_move_tail.exit.for.inc28_crit_edge, %tsince_hr.exit.for.inc28_crit_edge, %for.body.for.inc28_crit_edge
  %inc = add nuw nsw i32 %i.0233, 1
  %exitcond.not = icmp eq i32 %inc, 61
  br i1 %exitcond.not, label %while.cond.preheader, label %for.inc28.for.body_crit_edge

for.inc28.for.body_crit_edge:                     ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

while.body:                                       ; preds = %list_move_tail.exit222.while.body_crit_edge, %while.body.lr.ph
  %38 = phi ptr [ %18, %while.body.lr.ph ], [ %127, %list_move_tail.exit222.while.body_crit_edge ]
  %call.i189 = call i64 @ktime_get() #14
  %sent.i190 = getelementptr inbounds %struct.frame, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %sent.i190 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %sent.i190, align 8
  %sub.i191 = sub i64 %call.i189, %40
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i191)
  %cmp.i192 = icmp ult i64 %sub.i191, 4294967296
  br i1 %cmp.i192, label %if.then.i195, label %if.end.i197, !prof !170

if.then.i195:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i193 = trunc i64 %sub.i191 to i32
  %div.i194 = udiv i32 %conv.i193, 1000
  br label %tsince_hr.exit205

if.end.i197:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647000, i64 %sub.i191)
  %cmp3.i196 = icmp ugt i64 %sub.i191, 2147483647000
  br i1 %cmp3.i196, label %if.end.i197.tsince_hr.exit205_crit_edge, label %if.end6.i203

if.end.i197.tsince_hr.exit205_crit_edge:          ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #16
  br label %tsince_hr.exit205

if.end6.i203:                                     ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #16
  %41 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %sub.i191, i32 0) #18, !srcloc !171
  %asmresult.i.i.i.i198 = extractvalue { i64, i32 } %41, 0
  %asmresult4.i.i.i.i199 = extractvalue { i64, i32 } %41, 1
  %42 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %sub.i191, i64 %asmresult.i.i.i.i198, i32 %asmresult4.i.i.i.i199) #18, !srcloc !172
  %asmresult10.i.i.i.i200 = extractvalue { i64, i32 } %42, 0
  %div1581.i.i.i201 = lshr i64 %asmresult10.i.i.i.i200, 9
  %conv8.i202 = trunc i64 %div1581.i.i.i201 to i32
  br label %tsince_hr.exit205

tsince_hr.exit205:                                ; preds = %if.end6.i203, %if.end.i197.tsince_hr.exit205_crit_edge, %if.then.i195
  %retval.0.i204 = phi i32 [ %div.i194, %if.then.i195 ], [ %conv8.i202, %if.end6.i203 ], [ 2147483647, %if.end.i197.tsince_hr.exit205_crit_edge ]
  %43 = load i32, ptr @aoe_deadsecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool38.not = icmp eq i32 %43, 0
  br i1 %tobool38.not, label %if.end49.thread, label %land.lhs.true

if.end49.thread:                                  ; preds = %tsince_hr.exit205
  call void @__sanitizer_cov_trace_pc() #16
  %t50236 = getelementptr inbounds %struct.frame, ptr %38, i32 0, i32 5
  %44 = ptrtoint ptr %t50236 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %t50236, align 8
  br label %if.end64

land.lhs.true:                                    ; preds = %tsince_hr.exit205
  %waited_total = getelementptr inbounds %struct.frame, ptr %38, i32 0, i32 4
  %46 = ptrtoint ptr %waited_total to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %waited_total, align 4
  %add = add i32 %47, %retval.0.i204
  %div = udiv i32 %add, 1000000
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %43)
  %cmp39 = icmp ugt i32 %div, %43
  br i1 %cmp39, label %land.lhs.true41, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

land.lhs.true41:                                  ; preds = %land.lhs.true
  %flags42 = getelementptr inbounds %struct.frame, ptr %38, i32 0, i32 10
  %48 = ptrtoint ptr %flags42 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flags42, align 4
  %50 = and i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool45.not = icmp eq i8 %50, 0
  br i1 %tobool45.not, label %if.then46, label %land.lhs.true41.if.end49_crit_edge

land.lhs.true41.if.end49_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then46:                                        ; preds = %land.lhs.true41
  %51 = ptrtoint ptr %flist to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %flist, align 4
  %cmp.i.not.i = icmp eq ptr %52, %flist
  br i1 %cmp.i.not.i, label %if.then46.list_splice.exit_crit_edge, label %if.then.i206

if.then46.list_splice.exit_crit_edge:             ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice.exit

if.then.i206:                                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %factive to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %factive, align 4
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %0, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %factive, ptr %prev3.i.i, align 4
  store ptr %52, ptr %factive, align 4
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %54, ptr %56, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev6.i.i, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i206, %if.then46.list_splice.exit_crit_edge
  call void @aoedev_downdev(ptr noundef %add.ptr) #14
  br label %out

if.end49:                                         ; preds = %land.lhs.true41.if.end49_crit_edge, %land.lhs.true.if.end49_crit_edge
  %t50 = getelementptr inbounds %struct.frame, ptr %38, i32 0, i32 5
  %60 = ptrtoint ptr %t50 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %t50, align 8
  br i1 %cmp55, label %land.lhs.true57, label %if.end49.if.end64_crit_edge

if.end49.if.end64_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

land.lhs.true57:                                  ; preds = %if.end49
  %waited = getelementptr inbounds %struct.frame, ptr %38, i32 0, i32 3
  %62 = ptrtoint ptr %waited to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %waited, align 8
  %add51 = add i32 %63, %retval.0.i204
  %div52 = udiv i32 %add51, 1000000
  %div58 = sdiv i32 %43, %i.0.lcssa.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div52, i32 %div58)
  %cmp59 = icmp ugt i32 %div52, %div58
  call void @__sanitizer_cov_trace_const_cmp4(i32 10999999, i32 %add51)
  %cmp61 = icmp ugt i32 %add51, 10999999
  %or.cond182 = or i1 %cmp61, %cmp59
  br i1 %or.cond182, label %if.then63, label %land.lhs.true57.if.end64_crit_edge

land.lhs.true57.if.end64_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

if.then63:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #16
  %taint.i208 = getelementptr inbounds %struct.aoetgt, ptr %61, i32 0, i32 11
  %64 = ptrtoint ptr %taint.i208 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %taint.i208, align 4
  %66 = mul i32 %65, 3
  %add.i209 = add i32 %66, 3
  %67 = call i32 @llvm.smax.i32(i32 %65, i32 %add.i209) #14
  %68 = call i32 @llvm.smin.i32(i32 %67, i32 1000) #14
  %69 = ptrtoint ptr %taint.i208 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %taint.i208, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %land.lhs.true57.if.end64_crit_edge, %if.end49.if.end64_crit_edge, %if.end49.thread
  %70 = phi ptr [ %45, %if.end49.thread ], [ %61, %land.lhs.true57.if.end64_crit_edge ], [ %61, %if.then63 ], [ %61, %if.end49.if.end64_crit_edge ]
  %maxout = getelementptr inbounds %struct.aoetgt, ptr %70, i32 0, i32 7
  %71 = ptrtoint ptr %maxout to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %maxout, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %72)
  %cmp66.not = icmp eq i16 %72, 1
  br i1 %cmp66.not, label %if.end64.if.end74_crit_edge, label %if.then68

if.end64.if.end74_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  %73 = lshr i16 %72, 1
  %ssthresh = getelementptr inbounds %struct.aoetgt, ptr %70, i32 0, i32 9
  %74 = ptrtoint ptr %ssthresh to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %ssthresh, align 2
  %75 = ptrtoint ptr %maxout to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 1, ptr %maxout, align 2
  br label %if.end74

if.end74:                                         ; preds = %if.then68, %if.end64.if.end74_crit_edge
  %flags75 = getelementptr inbounds %struct.frame, ptr %38, i32 0, i32 10
  %76 = ptrtoint ptr %flags75 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %flags75, align 4
  %78 = and i8 %77, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool78.not = icmp eq i8 %78, 0
  br i1 %tobool78.not, label %if.else, label %if.then79

if.then79:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  %nout_probes = getelementptr inbounds %struct.aoetgt, ptr %70, i32 0, i32 15
  %79 = ptrtoint ptr %nout_probes to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %nout_probes, align 4
  %dec = add i8 %80, -1
  store i8 %dec, ptr %nout_probes, align 4
  br label %if.end96

if.else:                                          ; preds = %if.end74
  %skb = getelementptr inbounds %struct.frame, ptr %38, i32 0, i32 6
  %81 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %skb, align 4
  %83 = getelementptr inbounds %struct.anon.44, ptr %82, i32 0, i32 2
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 8
  %ifs.i = getelementptr inbounds %struct.aoetgt, ptr %70, i32 0, i32 4
  %add.ptr.i = getelementptr %struct.aoetgt, ptr %70, i32 0, i32 5
  %cmp8.i = icmp ult ptr %ifs.i, %add.ptr.i
  br i1 %cmp8.i, label %if.else.for.body.i210_crit_edge, label %if.else.if.end96_crit_edge

if.else.if.end96_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

if.else.for.body.i210_crit_edge:                  ; preds = %if.else
  br label %for.body.i210

for.body.i210:                                    ; preds = %for.inc.i.for.body.i210_crit_edge, %if.else.for.body.i210_crit_edge
  %p.09.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i210_crit_edge ], [ %ifs.i, %if.else.for.body.i210_crit_edge ]
  %86 = ptrtoint ptr %p.09.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %p.09.i, align 4
  %cmp2.i = icmp eq ptr %87, %85
  br i1 %cmp2.i, label %getif.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i210
  %incdec.ptr.i = getelementptr %struct.aoeif, ptr %p.09.i, i32 1
  %cmp.i211 = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i211, label %for.inc.i.for.body.i210_crit_edge, label %for.inc.i.if.end96_crit_edge

for.inc.i.if.end96_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

for.inc.i.for.body.i210_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i210

getif.exit:                                       ; preds = %for.body.i210
  %tobool81.not = icmp eq ptr %p.09.i, null
  br i1 %tobool81.not, label %getif.exit.if.end96_crit_edge, label %land.lhs.true82

getif.exit.if.end96_crit_edge:                    ; preds = %getif.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

land.lhs.true82:                                  ; preds = %getif.exit
  %lost = getelementptr inbounds %struct.aoeif, ptr %p.09.i, i32 0, i32 1
  %88 = ptrtoint ptr %lost to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %lost, align 4
  %inc83 = add i32 %89, 1
  store i32 %inc83, ptr %lost, align 4
  %nframes = getelementptr inbounds %struct.aoetgt, ptr %70, i32 0, i32 1
  %90 = ptrtoint ptr %nframes to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %nframes, align 2
  %conv84 = zext i16 %91 to i32
  %shl = shl nuw nsw i32 %conv84, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc83, i32 %shl)
  %cmp85 = icmp ugt i32 %inc83, %shl
  br i1 %cmp85, label %land.lhs.true87, label %land.lhs.true82.if.end96_crit_edge

land.lhs.true82.if.end96_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

land.lhs.true87:                                  ; preds = %land.lhs.true82
  %cmp88.not = icmp eq ptr %p.09.i, %ifs.i
  br i1 %cmp88.not, label %lor.lhs.false90, label %land.lhs.true87.if.then94_crit_edge

land.lhs.true87.if.then94_crit_edge:              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then94

lor.lhs.false90:                                  ; preds = %land.lhs.true87
  %arrayidx92 = getelementptr %struct.aoetgt, ptr %70, i32 0, i32 4, i32 1
  %92 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx92, align 4
  %tobool93.not = icmp eq ptr %93, null
  br i1 %tobool93.not, label %lor.lhs.false90.if.end96_crit_edge, label %lor.lhs.false90.if.then94_crit_edge

lor.lhs.false90.if.then94_crit_edge:              ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then94

lor.lhs.false90.if.end96_crit_edge:               ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

if.then94:                                        ; preds = %lor.lhs.false90.if.then94_crit_edge, %land.lhs.true87.if.then94_crit_edge
  %94 = ptrtoint ptr %p.09.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %p.09.i, align 4
  %add.ptr2.i = getelementptr %struct.aoetgt, ptr %70, i32 0, i32 4, i32 7
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr2.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %p.09.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.ptr3.i = getelementptr %struct.aoeif, ptr %p.09.i, i32 1
  %96 = call ptr @memmove(ptr %p.09.i, ptr %add.ptr3.i, i32 %sub.ptr.sub.i)
  %97 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %add.ptr2.i, align 4
  %tobool.not.i.i = icmp eq ptr %95, null
  br i1 %tobool.not.i.i, label %if.then94.if.end96_crit_edge, label %do.body1.i.i

if.then94.if.end96_crit_edge:                     ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

do.body1.i.i:                                     ; preds = %if.then94
  %98 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !174
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 118
  %99 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %101 = ptrtoint ptr %100 to i32
  %102 = call i32 @llvm.read_register.i32(metadata !160) #14
  %and.i.i.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %105
  %106 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %107, %101
  %108 = inttoptr i32 %add.i.i to ptr
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 4
  %add13.i.i = add i32 %110, -1
  store i32 %add13.i.i, ptr %108, align 4
  %111 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !175
  %and.i.i.i.i = and i32 %111, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !176

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %98) #14, !srcloc !177
  br label %if.end96

if.end96:                                         ; preds = %do.end30.i.i, %if.then94.if.end96_crit_edge, %lor.lhs.false90.if.end96_crit_edge, %land.lhs.true82.if.end96_crit_edge, %getif.exit.if.end96_crit_edge, %for.inc.i.if.end96_crit_edge, %if.else.if.end96_crit_edge, %if.then79
  %call.i.i213 = call zeroext i1 @__list_del_entry_valid(ptr noundef %38) #14
  br i1 %call.i.i213, label %if.end.i.i216, label %if.end96.__list_del_entry.exit.i219_crit_edge

if.end96.__list_del_entry.exit.i219_crit_edge:    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i219

if.end.i.i216:                                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i214 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %112 = ptrtoint ptr %prev.i.i214 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i.i214, align 4
  %114 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %38, align 4
  %prev1.i.i.i215 = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %prev1.i.i.i215 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev1.i.i.i215, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %115, ptr %113, align 4
  br label %__list_del_entry.exit.i219

__list_del_entry.exit.i219:                       ; preds = %if.end.i.i216, %if.end96.__list_del_entry.exit.i219_crit_edge
  %118 = ptrtoint ptr %prev.i2.i217 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %prev.i2.i217, align 4
  %call.i.i.i218 = call zeroext i1 @__list_add_valid(ptr noundef %38, ptr noundef %119, ptr noundef %rexmitq) #14
  br i1 %call.i.i.i218, label %if.end.i.i.i221, label %__list_del_entry.exit.i219.list_move_tail.exit222_crit_edge

__list_del_entry.exit.i219.list_move_tail.exit222_crit_edge: ; preds = %__list_del_entry.exit.i219
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_move_tail.exit222

if.end.i.i.i221:                                  ; preds = %__list_del_entry.exit.i219
  call void @__sanitizer_cov_trace_pc() #16
  %120 = ptrtoint ptr %prev.i2.i217 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %38, ptr %prev.i2.i217, align 4
  %121 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %rexmitq, ptr %38, align 4
  %prev3.i.i.i220 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %122 = ptrtoint ptr %prev3.i.i.i220 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %119, ptr %prev3.i.i.i220, align 4
  %123 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %38, ptr %119, align 4
  br label %list_move_tail.exit222

list_move_tail.exit222:                           ; preds = %if.end.i.i.i221, %__list_del_entry.exit.i219.list_move_tail.exit222_crit_edge
  %nout = getelementptr inbounds %struct.aoetgt, ptr %70, i32 0, i32 6
  %124 = ptrtoint ptr %nout to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %nout, align 4
  %dec97 = add i16 %125, -1
  store i16 %dec97, ptr %nout, align 4
  %126 = ptrtoint ptr %flist to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile ptr, ptr %flist, align 4
  %cmp.i187.not = icmp eq ptr %127, %flist
  br i1 %cmp.i187.not, label %list_move_tail.exit222.while.end_crit_edge, label %list_move_tail.exit222.while.body_crit_edge

list_move_tail.exit222.while.body_crit_edge:      ; preds = %list_move_tail.exit222
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

list_move_tail.exit222.while.end_crit_edge:       ; preds = %list_move_tail.exit222
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %list_move_tail.exit222.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call fastcc void @rexmit_deferred(ptr noundef %add.ptr)
  br label %out

out:                                              ; preds = %while.end, %list_splice.exit
  %128 = ptrtoint ptr %flags8 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %flags8, align 2
  %130 = and i16 %129, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %tobool101.not = icmp eq i16 %130, 0
  br i1 %tobool101.not, label %out.if.end110_crit_edge, label %land.lhs.true102

out.if.end110_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end110

land.lhs.true102:                                 ; preds = %out
  %blkq = getelementptr i8, ptr %timer, i32 -216
  %131 = ptrtoint ptr %blkq to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %blkq, align 8
  %tobool103.not = icmp eq ptr %132, null
  br i1 %tobool103.not, label %land.lhs.true102.if.end110_crit_edge, label %if.then104

land.lhs.true102.if.end110_crit_edge:             ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end110

if.then104:                                       ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #16
  %and107 = and i16 %129, -33
  %133 = ptrtoint ptr %flags8 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %and107, ptr %flags8, align 2
  call void @blk_mq_run_hw_queues(ptr noundef nonnull %132, i1 noundef zeroext true) #14
  br label %if.end110

if.end110:                                        ; preds = %if.then104, %land.lhs.true102.if.end110_crit_edge, %out.if.end110_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %134 = load volatile i32, ptr @jiffies, align 128
  %add111 = add i32 %134, 10
  %expires = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 1
  %135 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %add111, ptr %expires, align 8
  call void @add_timer(ptr noundef %timer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %count_targets.exit.cleanup_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flist) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aoecmd_cfg_rsp(ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  %queue = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %queue) #14
  %0 = call ptr @memset(ptr %queue, i32 255, i32 56)
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %3 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %4 to i32
  %add.ptr.i = getelementptr i8, ptr %2, i32 %conv.i
  %add.ptr = getelementptr %struct.aoe_hdr, ptr %add.ptr.i, i32 1
  %major = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i, i32 0, i32 5
  %5 = ptrtoint ptr %major to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %major, align 1
  %conv = zext i16 %6 to i32
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i16 %6, label %if.end13 [
    i16 4095, label %do.end
    i16 -1, label %do.end9
  ]

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #17
  br label %cleanup

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %minor = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i, i32 0, i32 6
  %8 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %minor, align 2
  %conv11 = zext i8 %9 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef 65535, i32 noundef %conv11) #17
  br label %cleanup

if.end13:                                         ; preds = %entry
  %minor14 = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i, i32 0, i32 6
  %10 = ptrtoint ptr %minor14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %minor14, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp16 = icmp eq i8 %11, -1
  br i1 %cmp16, label %do.end21, label %if.end26

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv, i32 noundef 255) #17
  br label %cleanup

if.end26:                                         ; preds = %if.end13
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr, align 2
  %conv27 = zext i16 %13 to i32
  %14 = load i32, ptr @aoe_maxout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv27)
  %cmp28 = icmp slt i32 %14, %conv27
  %conv31 = trunc i32 %14 to i16
  %spec.select = select i1 %cmp28, i16 %conv31, i16 %13
  %conv34 = zext i8 %11 to i32
  %call35 = tail call ptr @aoedev_by_aoeaddr(i32 noundef %conv, i32 noundef %conv34, i32 noundef 1) #14
  %cmp36 = icmp eq ptr %call35, null
  br i1 %cmp36, label %do.end41, label %do.body46

do.end41:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #17
  br label %cleanup

do.body46:                                        ; preds = %if.end26
  %lock = getelementptr inbounds %struct.aoedev, ptr %call35, i32 0, i32 21
  %call51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %src = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i, i32 0, i32 1
  %targets.i = getelementptr inbounds %struct.aoedev, ptr %call35, i32 0, i32 28
  %15 = ptrtoint ptr %targets.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %targets.i, align 8
  %ntargets.i = getelementptr inbounds %struct.aoedev, ptr %call35, i32 0, i32 29
  %17 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ntargets.i, align 4
  %add.ptr.i149 = getelementptr ptr, ptr %16, i32 %18
  %cmp10.i = icmp ult ptr %16, %add.ptr.i149
  br i1 %cmp10.i, label %do.body46.land.rhs.i_crit_edge, label %do.body46.for.end.i_crit_edge

do.body46.for.end.i_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

do.body46.land.rhs.i_crit_edge:                   ; preds = %do.body46
  br label %land.rhs.i

for.cond.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr ptr, ptr %t.011.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i149
  br i1 %cmp.i, label %for.cond.i.land.rhs.i_crit_edge, label %for.cond.i.land.rhs.i154.preheader_crit_edge

for.cond.i.land.rhs.i154.preheader_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i154.preheader

for.cond.i.land.rhs.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.cond.i.land.rhs.i_crit_edge, %do.body46.land.rhs.i_crit_edge
  %t.011.i = phi ptr [ %incdec.ptr.i, %for.cond.i.land.rhs.i_crit_edge ], [ %16, %do.body46.land.rhs.i_crit_edge ]
  %19 = ptrtoint ptr %t.011.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t.011.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %land.rhs.i.land.rhs.i154.preheader_crit_edge, label %for.body.i

land.rhs.i.land.rhs.i154.preheader_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i154.preheader

land.rhs.i154.preheader:                          ; preds = %land.rhs.i.land.rhs.i154.preheader_crit_edge, %for.cond.i.land.rhs.i154.preheader_crit_edge
  br label %land.rhs.i154

for.body.i:                                       ; preds = %land.rhs.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %20, ptr noundef dereferenceable(6) %src, i32 6) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp2.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp2.i, label %if.then57, label %for.cond.i

if.then57:                                        ; preds = %for.body.i
  %nframes = getelementptr inbounds %struct.aoetgt, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %nframes to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %spec.select, ptr %nframes, align 2
  %maxout = getelementptr inbounds %struct.aoetgt, ptr %20, i32 0, i32 7
  %22 = ptrtoint ptr %maxout to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %maxout, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %spec.select, i16 %23)
  %cmp60 = icmp ult i16 %spec.select, %23
  br i1 %cmp60, label %if.then62, label %if.then57.if.end71_crit_edge

if.then57.if.end71_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then62:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %maxout to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %maxout, align 2
  %25 = lshr i16 %spec.select, 1
  %ssthresh.i = getelementptr inbounds %struct.aoetgt, ptr %20, i32 0, i32 9
  %26 = ptrtoint ptr %ssthresh.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %ssthresh.i, align 2
  %next_cwnd.i = getelementptr inbounds %struct.aoetgt, ptr %20, i32 0, i32 8
  %27 = ptrtoint ptr %next_cwnd.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %spec.select, ptr %next_cwnd.i, align 4
  br label %if.end71

land.rhs.i154:                                    ; preds = %for.inc.i.land.rhs.i154_crit_edge, %land.rhs.i154.preheader
  %tt.042.i = phi ptr [ %incdec.ptr.i155, %for.inc.i.land.rhs.i154_crit_edge ], [ %16, %land.rhs.i154.preheader ]
  %28 = ptrtoint ptr %tt.042.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tt.042.i, align 4
  %tobool.not.i153 = icmp eq ptr %29, null
  br i1 %tobool.not.i153, label %land.rhs.i154.for.end.i_crit_edge, label %for.inc.i

land.rhs.i154.for.end.i_crit_edge:                ; preds = %land.rhs.i154
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.inc.i:                                        ; preds = %land.rhs.i154
  %incdec.ptr.i155 = getelementptr ptr, ptr %tt.042.i, i32 1
  %cmp.i156 = icmp ult ptr %incdec.ptr.i155, %add.ptr.i149
  br i1 %cmp.i156, label %for.inc.i.land.rhs.i154_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.inc.i.land.rhs.i154_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i154

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.rhs.i154.for.end.i_crit_edge, %do.body46.for.end.i_crit_edge
  %tt.0.lcssa.i = phi ptr [ %16, %do.body46.for.end.i_crit_edge ], [ %tt.042.i, %land.rhs.i154.for.end.i_crit_edge ], [ %incdec.ptr.i155, %for.inc.i.for.end.i_crit_edge ]
  %cmp1.i = icmp eq ptr %tt.0.lcssa.i, %add.ptr.i149
  br i1 %cmp1.i, label %if.then.i, label %for.end.i.if.end4.i_crit_edge

for.end.i.if.end4.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

if.then.i:                                        ; preds = %for.end.i
  %mul.i.i = shl i32 %18, 1
  %30 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul.i.i, i32 4) #14
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %if.then.i.addtgt.exit.thread_crit_edge, label %if.end7.i.i.i.i, !prof !176

if.then.i.addtgt.exit.thread_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %addtgt.exit.thread

if.end7.i.i.i.i:                                  ; preds = %if.then.i
  %32 = extractvalue { i32, i1 } %30, 0
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %32, i32 noundef 2848) #20
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i.i.i.addtgt.exit.thread_crit_edge, label %grow_targets.exit.i

if.end7.i.i.i.i.addtgt.exit.thread_crit_edge:     ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %addtgt.exit.thread

grow_targets.exit.i:                              ; preds = %if.end7.i.i.i.i
  %33 = ptrtoint ptr %targets.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %targets.i, align 8
  %mul1.i.i = shl i32 %18, 2
  %35 = call ptr @memmove(ptr %call8.i.i.i.i, ptr %34, i32 %mul1.i.i)
  %tgt.i.i = getelementptr inbounds %struct.aoedev, ptr %call35, i32 0, i32 30
  %36 = ptrtoint ptr %tgt.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tgt.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 2
  %add.ptr.i.i = getelementptr ptr, ptr %call8.i.i.i.i, i32 %sub.ptr.div.i.i
  store ptr %add.ptr.i.i, ptr %tgt.i.i, align 8
  %38 = load ptr, ptr %targets.i, align 8
  tail call void @kfree(ptr noundef %38) #14
  %39 = ptrtoint ptr %targets.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call8.i.i.i.i, ptr %targets.i, align 8
  %40 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul.i.i, ptr %ntargets.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %call8.i.i.i.i, i32 %18
  %tobool2.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool2.not.i, label %grow_targets.exit.i.addtgt.exit.thread_crit_edge, label %grow_targets.exit.i.if.end4.i_crit_edge

grow_targets.exit.i.if.end4.i_crit_edge:          ; preds = %grow_targets.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

grow_targets.exit.i.addtgt.exit.thread_crit_edge: ; preds = %grow_targets.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %addtgt.exit.thread

if.end4.i:                                        ; preds = %grow_targets.exit.i.if.end4.i_crit_edge, %for.end.i.if.end4.i_crit_edge
  %tt.1.i = phi ptr [ %arrayidx.i.i, %grow_targets.exit.i.if.end4.i_crit_edge ], [ %tt.0.lcssa.i, %for.end.i.if.end4.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 2848, i32 noundef 152) #21
  %tobool6.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool6.not.i, label %if.end4.i.addtgt.exit.thread_crit_edge, label %addtgt.exit

if.end4.i.addtgt.exit.thread_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %addtgt.exit.thread

addtgt.exit.thread:                               ; preds = %if.end4.i.addtgt.exit.thread_crit_edge, %grow_targets.exit.i.addtgt.exit.thread_crit_edge, %if.end7.i.i.i.i.addtgt.exit.thread_crit_edge, %if.then.i.addtgt.exit.thread_crit_edge
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #17
  br label %bail

addtgt.exit:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %nframes9.i = getelementptr inbounds %struct.aoetgt, ptr %call7.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %nframes9.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %spec.select, ptr %nframes9.i, align 2
  %d10.i = getelementptr inbounds %struct.aoetgt, ptr %call7.i.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %d10.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call35, ptr %d10.i, align 8
  %44 = call ptr @memcpy(ptr %call7.i.i.i, ptr %src, i32 6)
  %ifs.i = getelementptr inbounds %struct.aoetgt, ptr %call7.i.i.i, i32 0, i32 4
  %ifp.i = getelementptr inbounds %struct.aoetgt, ptr %call7.i.i.i, i32 0, i32 5
  %45 = ptrtoint ptr %ifp.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %ifs.i, ptr %ifp.i, align 4
  %maxout.i.i = getelementptr inbounds %struct.aoetgt, ptr %call7.i.i.i, i32 0, i32 7
  %46 = lshr i16 %spec.select, 1
  %ssthresh.i.i = getelementptr inbounds %struct.aoetgt, ptr %call7.i.i.i, i32 0, i32 9
  %47 = ptrtoint ptr %ssthresh.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %ssthresh.i.i, align 2
  %next_cwnd.i.i = getelementptr inbounds %struct.aoetgt, ptr %call7.i.i.i, i32 0, i32 8
  %48 = ptrtoint ptr %next_cwnd.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %spec.select, ptr %next_cwnd.i.i, align 4
  %49 = ptrtoint ptr %maxout.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %46, ptr %maxout.i.i, align 2
  %ffree.i = getelementptr inbounds %struct.aoetgt, ptr %call7.i.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %ffree.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %ffree.i, ptr %ffree.i, align 4
  %prev.i.i = getelementptr inbounds %struct.aoetgt, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %ffree.i, ptr %prev.i.i, align 8
  %52 = ptrtoint ptr %tt.1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i.i, ptr %tt.1.i, align 4
  br label %if.end71

if.end71:                                         ; preds = %addtgt.exit, %if.then62, %if.then57.if.end71_crit_edge
  %t.0 = phi ptr [ %20, %if.then62 ], [ %20, %if.then57.if.end71_crit_edge ], [ %call7.i.i.i, %addtgt.exit ]
  %53 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 20
  %56 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mtu, align 4
  %58 = trunc i32 %57 to i16
  %59 = add i16 %58, -36
  %60 = lshr i16 %59, 9
  %scnt = getelementptr %struct.aoe_hdr, ptr %add.ptr.i, i32 1, i32 0, i32 4
  %61 = ptrtoint ptr %scnt to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %scnt, align 2
  %63 = zext i8 %62 to i16
  %64 = tail call i16 @llvm.umin.i16(i16 %60, i16 %63)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool86.not = icmp eq i16 %64, 0
  %mul = shl nuw i16 %64, 9
  %narrow = select i1 %tobool86.not, i16 1024, i16 %mul
  %cond = zext i16 %narrow to i32
  %d1.i = getelementptr inbounds %struct.aoetgt, ptr %t.0, i32 0, i32 2
  %65 = ptrtoint ptr %d1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %d1.i, align 4
  %ifs.i158 = getelementptr inbounds %struct.aoetgt, ptr %t.0, i32 0, i32 4
  %add.ptr.i159 = getelementptr %struct.aoetgt, ptr %t.0, i32 0, i32 5
  %cmp46.i = icmp ult ptr %ifs.i158, %add.ptr.i159
  br i1 %cmp46.i, label %if.end71.for.body.i160_crit_edge, label %if.end71.for.end.i165_crit_edge

if.end71.for.end.i165_crit_edge:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i165

if.end71.for.body.i160_crit_edge:                 ; preds = %if.end71
  br label %for.body.i160

for.body.i160:                                    ; preds = %for.inc.i163.for.body.i160_crit_edge, %if.end71.for.body.i160_crit_edge
  %nd.addr.050.i = phi ptr [ %nd.addr.1.i, %for.inc.i163.for.body.i160_crit_edge ], [ %55, %if.end71.for.body.i160_crit_edge ]
  %minbcnt.049.i = phi i32 [ %minbcnt.1.i, %for.inc.i163.for.body.i160_crit_edge ], [ %cond, %if.end71.for.body.i160_crit_edge ]
  %p.047.i = phi ptr [ %incdec.ptr.i161, %for.inc.i163.for.body.i160_crit_edge ], [ %ifs.i158, %if.end71.for.body.i160_crit_edge ]
  %67 = ptrtoint ptr %p.047.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %p.047.i, align 4
  %cmp3.i = icmp eq ptr %68, null
  br i1 %cmp3.i, label %for.body.i160.for.end.i165_crit_edge, label %if.end.i

for.body.i160.for.end.i165_crit_edge:             ; preds = %for.body.i160
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i165

if.end.i:                                         ; preds = %for.body.i160
  %cmp5.i = icmp eq ptr %68, %nd.addr.050.i
  %bcnt7.i = getelementptr inbounds %struct.aoeif, ptr %p.047.i, i32 0, i32 2
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %69 = ptrtoint ptr %bcnt7.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %cond, ptr %bcnt7.i, align 4
  br label %for.inc.i163

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %bcnt7.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bcnt7.i, align 4
  %72 = tail call i32 @llvm.smin.i32(i32 %minbcnt.049.i, i32 %71) #14
  br label %for.inc.i163

for.inc.i163:                                     ; preds = %if.else.i, %if.then6.i
  %minbcnt.1.i = phi i32 [ %minbcnt.049.i, %if.then6.i ], [ %72, %if.else.i ]
  %nd.addr.1.i = phi ptr [ null, %if.then6.i ], [ %nd.addr.050.i, %if.else.i ]
  %incdec.ptr.i161 = getelementptr %struct.aoeif, ptr %p.047.i, i32 1
  %cmp.i162 = icmp ult ptr %incdec.ptr.i161, %add.ptr.i159
  br i1 %cmp.i162, label %for.inc.i163.for.body.i160_crit_edge, label %for.inc.i163.for.end.i165_crit_edge

for.inc.i163.for.end.i165_crit_edge:              ; preds = %for.inc.i163
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i165

for.inc.i163.for.body.i160_crit_edge:             ; preds = %for.inc.i163
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i160

for.end.i165:                                     ; preds = %for.inc.i163.for.end.i165_crit_edge, %for.body.i160.for.end.i165_crit_edge, %if.end71.for.end.i165_crit_edge
  %p.0.lcssa.i = phi ptr [ %ifs.i158, %if.end71.for.end.i165_crit_edge ], [ %incdec.ptr.i161, %for.inc.i163.for.end.i165_crit_edge ], [ %p.047.i, %for.body.i160.for.end.i165_crit_edge ]
  %minbcnt.0.lcssa.i = phi i32 [ %cond, %if.end71.for.end.i165_crit_edge ], [ %minbcnt.1.i, %for.inc.i163.for.end.i165_crit_edge ], [ %minbcnt.049.i, %for.body.i160.for.end.i165_crit_edge ]
  %nd.addr.0.lcssa.i = phi ptr [ %55, %if.end71.for.end.i165_crit_edge ], [ %nd.addr.1.i, %for.inc.i163.for.end.i165_crit_edge ], [ %nd.addr.050.i, %for.body.i160.for.end.i165_crit_edge ]
  %tobool.not.i164 = icmp eq ptr %nd.addr.0.lcssa.i, null
  br i1 %tobool.not.i164, label %for.end.i165.if.end20.i_crit_edge, label %if.then14.i

for.end.i165.if.end20.i_crit_edge:                ; preds = %for.end.i165
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

if.then14.i:                                      ; preds = %for.end.i165
  %cmp15.i = icmp eq ptr %p.0.lcssa.i, %add.ptr.i159
  br i1 %cmp15.i, label %do.end.i166, label %do.body1.i.i

do.end.i166:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #17
  br label %setifbcnt.exit

do.body1.i.i:                                     ; preds = %if.then14.i
  %73 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !174
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %nd.addr.0.lcssa.i, i32 0, i32 118
  %74 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %76 = ptrtoint ptr %75 to i32
  %77 = tail call i32 @llvm.read_register.i32(metadata !160) #14
  %and.i.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i167 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %80
  %81 = ptrtoint ptr %arrayidx.i.i167 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i.i167, align 4
  %add.i.i = add i32 %82, %76
  %83 = inttoptr i32 %add.i.i to ptr
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %add13.i.i = add i32 %85, 1
  store i32 %add13.i.i, ptr %83, align 4
  %86 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !175
  %and.i.i.i.i = and i32 %86, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_hold.exit.i_crit_edge, !prof !176

do.body1.i.i.dev_hold.exit.i_crit_edge:           ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_hold.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %if.then28.i.i, %do.body1.i.i.dev_hold.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %73) #14, !srcloc !177
  %87 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %nd.addr.0.lcssa.i, ptr %p.0.lcssa.i, align 4
  %bcnt19.i = getelementptr inbounds %struct.aoeif, ptr %p.0.lcssa.i, i32 0, i32 2
  %88 = ptrtoint ptr %bcnt19.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %cond, ptr %bcnt19.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %dev_hold.exit.i, %for.end.i165.if.end20.i_crit_edge
  %minbcnt21.i = getelementptr inbounds %struct.aoetgt, ptr %t.0, i32 0, i32 12
  %89 = ptrtoint ptr %minbcnt21.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %minbcnt.0.lcssa.i, ptr %minbcnt21.i, align 4
  %targets.i.i = getelementptr inbounds %struct.aoedev, ptr %66, i32 0, i32 28
  %90 = ptrtoint ptr %targets.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %targets.i.i, align 8
  %ntargets.i.i = getelementptr inbounds %struct.aoedev, ptr %66, i32 0, i32 29
  %92 = ptrtoint ptr %ntargets.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ntargets.i.i, align 4
  %add.ptr.i.i168 = getelementptr ptr, ptr %91, i32 %93
  %cmp22.i.i = icmp ult ptr %91, %add.ptr.i.i168
  br i1 %cmp22.i.i, label %if.end20.i.land.rhs.i.i_crit_edge, label %if.end20.i.for.end.i.i_crit_edge

if.end20.i.for.end.i.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

if.end20.i.land.rhs.i.i_crit_edge:                ; preds = %if.end20.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %if.end20.i.land.rhs.i.i_crit_edge
  %t.024.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ %91, %if.end20.i.land.rhs.i.i_crit_edge ]
  %bcnt.023.i.i = phi i32 [ %bcnt.1.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ 0, %if.end20.i.land.rhs.i.i_crit_edge ]
  %94 = ptrtoint ptr %t.024.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %t.024.i.i, align 4
  %tobool.not.i45.i = icmp eq ptr %95, null
  br i1 %tobool.not.i45.i, label %land.rhs.i.i.for.end.i.i_crit_edge, label %for.body.i.i

land.rhs.i.i.for.end.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcnt.023.i.i)
  %cmp1.i.i = icmp eq i32 %bcnt.023.i.i, 0
  br i1 %cmp1.i.i, label %for.body.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.i.if.then.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %minbcnt.i.i = getelementptr inbounds %struct.aoetgt, ptr %95, i32 0, i32 12
  %96 = ptrtoint ptr %minbcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %minbcnt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bcnt.023.i.i, i32 %97)
  %cmp2.i.i = icmp sgt i32 %bcnt.023.i.i, %97
  br i1 %cmp2.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %for.body.i.i.if.then.i.i_crit_edge
  %minbcnt3.i.i = getelementptr inbounds %struct.aoetgt, ptr %95, i32 0, i32 12
  %98 = ptrtoint ptr %minbcnt3.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %minbcnt3.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %lor.lhs.false.i.i.for.inc.i.i_crit_edge
  %bcnt.1.i.i = phi i32 [ %99, %if.then.i.i ], [ %bcnt.023.i.i, %lor.lhs.false.i.i.for.inc.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr ptr, ptr %t.024.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i168
  br i1 %cmp.i.i, label %for.inc.i.i.land.rhs.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %land.rhs.i.i.for.end.i.i_crit_edge, %if.end20.i.for.end.i.i_crit_edge
  %bcnt.0.lcssa.i.i = phi i32 [ 0, %if.end20.i.for.end.i.i_crit_edge ], [ %bcnt.1.i.i, %for.inc.i.i.for.end.i.i_crit_edge ], [ %bcnt.023.i.i, %land.rhs.i.i.for.end.i.i_crit_edge ]
  %maxbcnt.i.i = getelementptr inbounds %struct.aoedev, ptr %66, i32 0, i32 25
  %100 = ptrtoint ptr %maxbcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %maxbcnt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bcnt.0.lcssa.i.i, i32 %101)
  %cmp4.not.i.i = icmp eq i32 %bcnt.0.lcssa.i.i, %101
  br i1 %cmp4.not.i.i, label %for.end.i.i.setifbcnt.exit_crit_edge, label %if.then5.i.i

for.end.i.i.setifbcnt.exit_crit_edge:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %setifbcnt.exit

if.then5.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %102 = ptrtoint ptr %maxbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %bcnt.0.lcssa.i.i, ptr %maxbcnt.i.i, align 4
  %aoemajor.i.i = getelementptr inbounds %struct.aoedev, ptr %66, i32 0, i32 2
  %103 = ptrtoint ptr %aoemajor.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %aoemajor.i.i, align 8
  %aoeminor.i.i = getelementptr inbounds %struct.aoedev, ptr %66, i32 0, i32 5
  %105 = ptrtoint ptr %aoeminor.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %aoeminor.i.i, align 4
  %conv.i.i = zext i16 %106 to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %104, i32 noundef %conv.i.i, i32 noundef %bcnt.0.lcssa.i.i) #17
  br label %setifbcnt.exit

setifbcnt.exit:                                   ; preds = %if.then5.i.i, %for.end.i.i.setifbcnt.exit_crit_edge, %do.end.i166
  %nopen = getelementptr inbounds %struct.aoedev, ptr %call35, i32 0, i32 7
  %107 = ptrtoint ptr %nopen to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %nopen, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %cmp91 = icmp eq i16 %108, 0
  br i1 %cmp91, label %if.then93, label %setifbcnt.exit.bail_crit_edge

setifbcnt.exit.bail_crit_edge:                    ; preds = %setifbcnt.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail

if.then93:                                        ; preds = %setifbcnt.exit
  call void @__sanitizer_cov_trace_pc() #16
  %fwver = getelementptr %struct.aoe_hdr, ptr %add.ptr.i, i32 1, i32 0, i32 2
  %109 = ptrtoint ptr %fwver to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %fwver, align 2
  %fw_ver = getelementptr inbounds %struct.aoedev, ptr %call35, i32 0, i32 8
  %111 = ptrtoint ptr %fw_ver to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %fw_ver, align 2
  %call94 = tail call ptr @aoecmd_ata_id(ptr noundef nonnull %call35)
  br label %bail

bail:                                             ; preds = %if.then93, %setifbcnt.exit.bail_crit_edge, %addtgt.exit.thread
  %sl.0 = phi ptr [ %call94, %if.then93 ], [ null, %setifbcnt.exit.bail_crit_edge ], [ null, %addtgt.exit.thread ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call51) #14
  tail call void @aoedev_put(ptr noundef nonnull %call35) #14
  %tobool97.not = icmp eq ptr %sl.0, null
  br i1 %tobool97.not, label %bail.cleanup_crit_edge, label %if.then98

bail.cleanup_crit_edge:                           ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then98:                                        ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i = getelementptr inbounds %struct.anon.65, ptr %queue, i32 0, i32 1
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 1
  %112 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %qlen.i, align 4
  %113 = ptrtoint ptr %sl.0 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %queue, ptr %sl.0, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.44, ptr %sl.0, i32 0, i32 1
  %114 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %queue, ptr %prev10.i.i.i, align 4
  %115 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %sl.0, ptr %prev.i, align 4
  %116 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %sl.0, ptr %queue, align 4
  %117 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %117, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  call void @aoenet_xmit(ptr noundef nonnull %queue) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %bail.cleanup_crit_edge, %do.end41, %do.end21, %do.end9, %do.end
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %queue) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @aoecmd_wreset(ptr nocapture noundef %t) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %maxout = getelementptr inbounds %struct.aoetgt, ptr %t, i32 0, i32 7
  %0 = ptrtoint ptr %maxout to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %maxout, align 2
  %nframes = getelementptr inbounds %struct.aoetgt, ptr %t, i32 0, i32 1
  %1 = ptrtoint ptr %nframes to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %nframes, align 2
  %3 = lshr i16 %2, 1
  %ssthresh = getelementptr inbounds %struct.aoetgt, ptr %t, i32 0, i32 9
  %4 = ptrtoint ptr %ssthresh to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %ssthresh, align 2
  %next_cwnd = getelementptr inbounds %struct.aoetgt, ptr %t, i32 0, i32 8
  %5 = ptrtoint ptr %next_cwnd to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %2, ptr %next_cwnd, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aoecmd_cleanslate(ptr nocapture noundef %d) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rttavg = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %rttavg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 64000000, ptr %rttavg, align 4
  %rttdev = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 4
  %1 = ptrtoint ptr %rttdev to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16000000, ptr %rttdev, align 8
  %maxbcnt = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 25
  %2 = ptrtoint ptr %maxbcnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %maxbcnt, align 4
  %targets = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 28
  %3 = ptrtoint ptr %targets to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %targets, align 8
  %ntargets = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 29
  %5 = ptrtoint ptr %ntargets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ntargets, align 4
  %add.ptr = getelementptr ptr, ptr %4, i32 %6
  %cmp9 = icmp ult ptr %4, %add.ptr
  br i1 %cmp9, label %entry.land.rhs_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %t.010 = phi ptr [ %incdec.ptr, %for.body.land.rhs_crit_edge ], [ %4, %entry.land.rhs_crit_edge ]
  %7 = ptrtoint ptr %t.010 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %t.010, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %maxout.i = getelementptr inbounds %struct.aoetgt, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %maxout.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %maxout.i, align 2
  %nframes.i = getelementptr inbounds %struct.aoetgt, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %nframes.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nframes.i, align 2
  %12 = lshr i16 %11, 1
  %ssthresh.i = getelementptr inbounds %struct.aoetgt, ptr %8, i32 0, i32 9
  %13 = ptrtoint ptr %ssthresh.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %ssthresh.i, align 2
  %next_cwnd.i = getelementptr inbounds %struct.aoetgt, ptr %8, i32 0, i32 8
  %14 = ptrtoint ptr %next_cwnd.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %11, ptr %next_cwnd.i, align 4
  %incdec.ptr = getelementptr ptr, ptr %t.010, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.body.land.rhs_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aoe_failbuf(ptr nocapture noundef %d, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %buf, null
  br i1 %cmp, label %entry.if.end3_crit_edge, label %if.end

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.end:                                           ; preds = %entry
  %bi_size = getelementptr inbounds %struct.buf, ptr %buf, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %bi_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bi_size, align 4
  %bio = getelementptr inbounds %struct.buf, ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bio, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %bi_status, align 2
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @aoe_end_buf(ptr noundef %d, ptr noundef nonnull %buf)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aoe_end_buf(ptr nocapture noundef %d, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rq1 = getelementptr inbounds %struct.buf, ptr %buf, i32 0, i32 3
  %0 = ptrtoint ptr %rq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq1, align 4
  %add.ptr.i = getelementptr %struct.request, ptr %1, i32 1
  %ip = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 24
  %2 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ip, align 8
  %cmp = icmp eq ptr %3, %buf
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ip, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bufpool = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 23
  %5 = ptrtoint ptr %bufpool to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bufpool, align 4
  tail call void @mempool_free(ptr noundef %buf, ptr noundef %6) #14
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp5 = icmp eq i32 %dec, 0
  br i1 %cmp5, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then6:                                         ; preds = %if.end
  %blkq.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 15
  %9 = ptrtoint ptr %blkq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %blkq.i, align 8
  %rq1.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 24, i32 2
  %11 = ptrtoint ptr %rq1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rq1.i, align 8
  %cmp.i = icmp eq ptr %12, %1
  br i1 %cmp.i, label %if.then.i, label %if.then6.if.end.i_crit_edge

if.then6.if.end.i_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %rq1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rq1.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then6.if.end.i_crit_edge
  %bio4.i = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 10
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end.i
  %err.0.i = phi i8 [ 0, %if.end.i ], [ %spec.select14, %do.body.i.do.body.i_crit_edge ]
  %14 = ptrtoint ptr %bio4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bio4.i, align 8
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bi_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not.i = icmp eq i8 %17, 0
  %spec.select = select i1 %tobool5.not.i, i8 0, i8 10
  %spec.select14 = select i1 %tobool5.not.i, i8 %err.0.i, i8 10
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %15, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bi_size.i, align 8
  %call.i = tail call zeroext i1 @blk_update_request(ptr noundef %1, i8 noundef zeroext %spec.select, i32 noundef %19) #14
  br i1 %call.i, label %do.body.i.do.body.i_crit_edge, label %aoe_end_request.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

aoe_end_request.exit:                             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__blk_mq_end_request(ptr noundef %1, i8 noundef zeroext %spec.select14) #14
  tail call void @blk_mq_run_hw_queues(ptr noundef %10, i1 noundef zeroext true) #14
  br label %if.end7

if.end7:                                          ; preds = %aoe_end_request.exit, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aoe_flush_iocq() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ncpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp4 = icmp sgt i32 %0, 0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = load ptr, ptr @kts, align 4
  %active = getelementptr %struct.ktstate, ptr %1, i32 %i.05, i32 7
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @aoe_flush_iocq_by_index(i32 noundef %i.05)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.05, 1
  %4 = load i32, ptr @ncpus, align 4
  %cmp = icmp slt i32 %inc, %4
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aoe_flush_iocq_by_index(i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  %flist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flist) #14
  %0 = getelementptr inbounds %struct.list_head, ptr %flist, i32 0, i32 1
  %1 = ptrtoint ptr %flist to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %flist, ptr %flist, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %flist, ptr %0, align 4
  %3 = load ptr, ptr @iocq, align 4
  %lock = getelementptr %struct.iocq_ktio, ptr %3, i32 %id, i32 1
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %4 = load ptr, ptr @iocq, align 4
  %arrayidx5 = getelementptr %struct.iocq_ktio, ptr %4, i32 %id
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx5, align 4
  %cmp.i.not.i = icmp eq ptr %6, %arrayidx5
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %flist to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %flist, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx5, i32 0, i32 1
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %flist, ptr %prev3.i.i, align 4
  store ptr %6, ptr %flist, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %8, ptr %10, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev6.i.i, align 4
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %arrayidx5, ptr %arrayidx5, align 4
  store ptr %arrayidx5, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %lock7 = getelementptr %struct.iocq_ktio, ptr %4, i32 %id, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock7, i32 noundef %call2) #14
  %15 = ptrtoint ptr %flist to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %flist, align 4
  %cmp.i.not44 = icmp eq ptr %16, %flist
  br i1 %cmp.i.not44, label %list_splice_init.exit.while.end_crit_edge, label %list_splice_init.exit.while.body_crit_edge

list_splice_init.exit.while.body_crit_edge:       ; preds = %list_splice_init.exit
  br label %while.body

list_splice_init.exit.while.end_crit_edge:        ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %aoe_freetframe.exit.while.body_crit_edge, %list_splice_init.exit.while.body_crit_edge
  %17 = phi ptr [ %54, %aoe_freetframe.exit.while.body_crit_edge ], [ %16, %list_splice_init.exit.while.body_crit_edge ]
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %17) #14
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %t = getelementptr inbounds %struct.frame, ptr %17, i32 0, i32 5
  %26 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %t, align 8
  %d11 = getelementptr inbounds %struct.aoetgt, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %d11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d11, align 4
  %r_skb = getelementptr inbounds %struct.frame, ptr %17, i32 0, i32 7
  %30 = ptrtoint ptr %r_skb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %r_skb, align 8
  %lock19 = getelementptr inbounds %struct.aoedev, ptr %29, i32 0, i32 21
  %call21 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock19) #14
  %buf = getelementptr inbounds %struct.frame, ptr %17, i32 0, i32 8
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf, align 4
  %tobool26.not = icmp eq ptr %33, null
  br i1 %tobool26.not, label %list_del.exit.if.end_crit_edge, label %if.then

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %dec = add i32 %35, -1
  store i32 %dec, ptr %33, align 4
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf, align 4
  %cmp.i42 = icmp eq ptr %37, null
  br i1 %cmp.i42, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %bi_size.i = getelementptr inbounds %struct.buf, ptr %37, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %bi_size.i, align 4
  %bio.i = getelementptr inbounds %struct.buf, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %bio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bio.i, align 4
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 10, ptr %bi_status.i, align 2
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp1.i = icmp eq i32 %43, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @aoe_end_buf(ptr noundef %29, ptr noundef nonnull %37) #14
  br label %if.end

if.end:                                           ; preds = %if.then2.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %list_del.exit.if.end_crit_edge
  %44 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %t, align 8
  %ffree.i = getelementptr inbounds %struct.aoetgt, ptr %45, i32 0, i32 3
  %46 = call ptr @memset(ptr %r_skb, i32 0, i32 29)
  %47 = ptrtoint ptr %ffree.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ffree.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %17, ptr noundef %ffree.i, ptr noundef %48) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.aoe_freetframe.exit_crit_edge

if.end.aoe_freetframe.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %aoe_freetframe.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i43 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %17, ptr %prev1.i.i.i43, align 4
  %50 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %17, align 4
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %ffree.i, ptr %prev.i, align 4
  %52 = ptrtoint ptr %ffree.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %17, ptr %ffree.i, align 4
  br label %aoe_freetframe.exit

aoe_freetframe.exit:                              ; preds = %if.end.i.i.i, %if.end.aoe_freetframe.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock19, i32 noundef %call21) #14
  call void @consume_skb(ptr noundef %31) #14
  call void @aoedev_put(ptr noundef %29) #14
  %53 = ptrtoint ptr %flist to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %flist, align 4
  %cmp.i.not = icmp eq ptr %54, %flist
  br i1 %cmp.i.not, label %aoe_freetframe.exit.while.end_crit_edge, label %aoe_freetframe.exit.while.body_crit_edge

aoe_freetframe.exit.while.body_crit_edge:         ; preds = %aoe_freetframe.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

aoe_freetframe.exit.while.end_crit_edge:          ; preds = %aoe_freetframe.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %aoe_freetframe.exit.while.end_crit_edge, %list_splice_init.exit.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flist) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aoecmd_init() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %sub = add i32 %call, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %shr
  store ptr %add.ptr, ptr @empty_page, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %1 = load volatile i32, ptr @__num_online_cpus, align 4
  store i32 %1, ptr @ncpus, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 52) #14
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !176

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  store ptr null, ptr @iocq, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #20
  store ptr %call8.i.i, ptr @iocq, align 4
  %tobool4.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool4.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end6

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end7.i.i
  %5 = load i32, ptr @ncpus, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 92) #14
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %kcalloc.exit88.thread, label %if.end7.i.i86, !prof !176

kcalloc.exit88.thread:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  store ptr null, ptr @kts, align 4
  br label %kts_fail

if.end7.i.i86:                                    ; preds = %if.end6
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i.i85 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #20
  store ptr %call8.i.i85, ptr @kts, align 4
  %tobool8.not = icmp eq ptr %call8.i.i85, null
  br i1 %tobool8.not, label %if.end7.i.i86.kts_fail_crit_edge, label %if.end10

if.end7.i.i86.kts_fail_crit_edge:                 ; preds = %if.end7.i.i86
  call void @__sanitizer_cov_trace_pc() #16
  br label %kts_fail

if.end10:                                         ; preds = %if.end7.i.i86
  %9 = load i32, ptr @ncpus, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 52) #14
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %kcalloc.exit121.thread, label %if.end7.i.i119, !prof !176

kcalloc.exit121.thread:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  store ptr null, ptr @ktiowq, align 4
  br label %ktiowq_fail

if.end7.i.i119:                                   ; preds = %if.end10
  %12 = extractvalue { i32, i1 } %10, 0
  %call8.i.i118 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #20
  store ptr %call8.i.i118, ptr @ktiowq, align 4
  %tobool12.not = icmp eq ptr %call8.i.i118, null
  br i1 %tobool12.not, label %if.end7.i.i119.ktiowq_fail_crit_edge, label %for.cond.preheader

if.end7.i.i119.ktiowq_fail_crit_edge:             ; preds = %if.end7.i.i119
  call void @__sanitizer_cov_trace_pc() #16
  br label %ktiowq_fail

for.cond.preheader:                               ; preds = %if.end7.i.i119
  %13 = load i32, ptr @ncpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp134 = icmp sgt i32 %13, 0
  br i1 %cmp134, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0135 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %14 = load ptr, ptr @iocq, align 4
  %arrayidx = getelementptr %struct.iocq_ktio, ptr %14, i32 %i.0135
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx, ptr %prev.i, align 4
  %lock = getelementptr %struct.iocq_ktio, ptr %14, i32 %i.0135, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @aoecmd_init.__key, i16 noundef signext 3) #14
  %17 = load ptr, ptr @ktiowq, align 4
  %arrayidx18 = getelementptr %struct.wait_queue_head, ptr %17, i32 %i.0135
  tail call void @__init_waitqueue_head(ptr noundef %arrayidx18, ptr noundef nonnull @.str.18, ptr noundef nonnull @aoecmd_init.__key.17) #14
  %18 = load ptr, ptr @kts, align 4
  %name = getelementptr %struct.ktstate, ptr %18, i32 %i.0135, i32 4
  %call22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 12, ptr noundef nonnull @.str.19, i32 noundef %i.0135)
  %19 = load ptr, ptr @kts, align 4
  %fn = getelementptr %struct.ktstate, ptr %19, i32 %i.0135, i32 3
  %20 = ptrtoint ptr %fn to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ktio, ptr %fn, align 4
  %21 = load ptr, ptr @ktiowq, align 4
  %arrayidx24 = getelementptr %struct.wait_queue_head, ptr %21, i32 %i.0135
  %waitq = getelementptr %struct.ktstate, ptr %19, i32 %i.0135, i32 2
  %22 = ptrtoint ptr %waitq to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx24, ptr %waitq, align 4
  %23 = load ptr, ptr @iocq, align 4
  %lock27 = getelementptr %struct.iocq_ktio, ptr %23, i32 %i.0135, i32 1
  %lock29 = getelementptr %struct.ktstate, ptr %19, i32 %i.0135, i32 5
  %24 = ptrtoint ptr %lock29 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %lock27, ptr %lock29, align 4
  %id = getelementptr %struct.ktstate, ptr %19, i32 %i.0135, i32 6
  %25 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %i.0135, ptr %id, align 4
  %active = getelementptr %struct.ktstate, ptr %19, i32 %i.0135, i32 7
  %26 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %active, align 4
  %inc = add nuw nsw i32 %i.0135, 1
  %27 = load i32, ptr @ncpus, align 4
  %cmp = icmp slt i32 %inc, %27
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %28 = load ptr, ptr @kts, align 4
  %active33 = getelementptr inbounds %struct.ktstate, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %active33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %active33, align 4
  %call35 = tail call i32 @aoe_ktstart(ptr noundef %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %for.end.cleanup_crit_edge, label %if.then37

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %30 = load ptr, ptr @ktiowq, align 4
  tail call void @kfree(ptr noundef %30) #14
  br label %ktiowq_fail

ktiowq_fail:                                      ; preds = %if.then37, %if.end7.i.i119.ktiowq_fail_crit_edge, %kcalloc.exit121.thread
  %31 = load ptr, ptr @kts, align 4
  tail call void @kfree(ptr noundef %31) #14
  br label %kts_fail

kts_fail:                                         ; preds = %ktiowq_fail, %if.end7.i.i86.kts_fail_crit_edge, %kcalloc.exit88.thread
  %32 = load ptr, ptr @iocq, align 4
  tail call void @kfree(ptr noundef %32) #14
  br label %cleanup

cleanup:                                          ; preds = %kts_fail, %for.end.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %kts_fail ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ktio(i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp9.not = icmp eq i32 %id, 0
  br label %if.end

if.end:                                           ; preds = %if.end32.if.end_crit_edge, %entry
  %i.062 = phi i32 [ 0, %entry ], [ %inc, %if.end32.if.end_crit_edge ]
  %0 = load ptr, ptr @iocq, align 4
  %arrayidx = getelementptr %struct.iocq_ktio, ptr %0, i32 %id
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %2, %arrayidx
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end2.list_del.exit_crit_edge

if.end2.list_del.exit_crit_edge:                  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end2.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %11 = load ptr, ptr @iocq, align 4
  %lock = getelementptr %struct.iocq_ktio, ptr %11, i32 %id, i32 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  %cmp.i48 = icmp eq ptr %2, null
  br i1 %cmp.i48, label %list_del.exit.ktiocomplete.exit_crit_edge, label %if.end.i

list_del.exit.ktiocomplete.exit_crit_edge:        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %ktiocomplete.exit

if.end.i:                                         ; preds = %list_del.exit
  %t1.i = getelementptr inbounds %struct.frame, ptr %2, i32 0, i32 5
  %12 = ptrtoint ptr %t1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %t1.i, align 8
  %d2.i = getelementptr inbounds %struct.aoetgt, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %d2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d2.i, align 4
  %r_skb.i = getelementptr inbounds %struct.frame, ptr %2, i32 0, i32 7
  %16 = ptrtoint ptr %r_skb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %r_skb.i, align 8
  %buf3.i = getelementptr inbounds %struct.frame, ptr %2, i32 0, i32 8
  %18 = ptrtoint ptr %buf3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf3.i, align 4
  %flags.i = getelementptr inbounds %struct.frame, ptr %2, i32 0, i32 10
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags.i, align 4
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end5.i:                                        ; preds = %if.end.i
  %tobool6.not.i = icmp eq ptr %17, null
  br i1 %tobool6.not.i, label %if.end5.i.noskb.i_crit_edge, label %if.end8.i

if.end5.i.noskb.i_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %noskb.i

if.end8.i:                                        ; preds = %if.end5.i
  %skb9.i = getelementptr inbounds %struct.frame, ptr %2, i32 0, i32 6
  %23 = ptrtoint ptr %skb9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb9.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 18
  %25 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 15, i32 0, i32 21
  %27 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %28 to i32
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i, align 4
  %call10.i = tail call ptr @skb_pull(ptr noundef nonnull %17, i32 noundef 24) #14
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i, align 4
  %call12.i = tail call ptr @skb_pull(ptr noundef nonnull %17, i32 noundef 12) #14
  %cmdstat.i = getelementptr inbounds %struct.aoe_atahdr, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cmdstat.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cmdstat.i, align 1
  %conv13.i = zext i8 %34 to i32
  %and14.i = and i32 %conv13.i, 169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end26.i, label %do.end.i

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %cmdstat17.i = getelementptr %struct.aoe_hdr, ptr %add.ptr.i.i, i32 1, i32 0, i32 3
  %35 = ptrtoint ptr %cmdstat17.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cmdstat17.i, align 1
  %conv18.i = zext i8 %36 to i32
  %aoemajor.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 2
  %37 = ptrtoint ptr %aoemajor.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %aoemajor.i, align 8
  %aoeminor.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 5
  %39 = ptrtoint ptr %aoeminor.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %aoeminor.i, align 4
  %conv21.i = zext i16 %40 to i32
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %conv18.i, i32 noundef %conv13.i, i32 noundef %38, i32 noundef %conv21.i) #17
  br label %noskb.i

noskb.i:                                          ; preds = %do.end.i, %if.end5.i.noskb.i_crit_edge
  %tobool23.not.i = icmp eq ptr %19, null
  br i1 %tobool23.not.i, label %noskb.i.out.i_crit_edge, label %if.then24.i

noskb.i.out.i_crit_edge:                          ; preds = %noskb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.then24.i:                                      ; preds = %noskb.i
  call void @__sanitizer_cov_trace_pc() #16
  %bio.i = getelementptr inbounds %struct.buf, ptr %19, i32 0, i32 1
  %41 = ptrtoint ptr %bio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bio.i, align 4
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 10, ptr %bi_status.i, align 2
  br label %out.i

if.end26.i:                                       ; preds = %if.end8.i
  %scnt.i = getelementptr %struct.aoe_hdr, ptr %add.ptr.i.i, i32 1, i32 0, i32 2
  %44 = ptrtoint ptr %scnt.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %scnt.i, align 1
  %conv27.i = zext i8 %45 to i32
  %shl.i = shl nuw nsw i32 %conv27.i, 9
  %cmdstat28.i = getelementptr %struct.aoe_hdr, ptr %add.ptr.i.i, i32 1, i32 0, i32 3
  %46 = ptrtoint ptr %cmdstat28.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %cmdstat28.i, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %47, label %do.end98.i [
    i8 32, label %if.end26.i.sw.bb.i_crit_edge
    i8 36, label %if.end26.i.sw.bb.i_crit_edge68
    i8 48, label %if.end26.i.sw.bb68.i_crit_edge
    i8 52, label %if.end26.i.sw.bb68.i_crit_edge69
    i8 -20, label %sw.bb74.i
  ]

if.end26.i.sw.bb68.i_crit_edge69:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb68.i

if.end26.i.sw.bb68.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb68.i

if.end26.i.sw.bb.i_crit_edge68:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.end26.i.sw.bb.i_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end26.i.sw.bb.i_crit_edge, %if.end26.i.sw.bb.i_crit_edge68
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %49 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %shl.i)
  %cmp30.i = icmp ult i32 %50, %shl.i
  br i1 %cmp30.i, label %do.end35.i, label %if.end44.i

do.end35.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  %aoemajor37.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 2
  %51 = ptrtoint ptr %aoemajor37.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %aoemajor37.i, align 8
  %aoeminor38.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 5
  %53 = ptrtoint ptr %aoeminor38.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %aoeminor38.i, align 4
  %conv39.i = zext i16 %54 to i32
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.52, i32 noundef %52, i32 noundef %conv39.i, i32 noundef %50, i32 noundef %shl.i) #17
  %bio42.i = getelementptr inbounds %struct.buf, ptr %19, i32 0, i32 1
  %55 = ptrtoint ptr %bio42.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bio42.i, align 4
  %bi_status43.i = getelementptr inbounds %struct.bio, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %bi_status43.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 10, ptr %bi_status43.i, align 2
  br label %out.i

if.end44.i:                                       ; preds = %sw.bb.i
  %bi_size.i = getelementptr inbounds %struct.frame, ptr %2, i32 0, i32 9, i32 1
  %58 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bi_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %59)
  %cmp45.i = icmp ugt i32 %shl.i, %59
  br i1 %cmp45.i, label %if.then47.i, label %if.end64.i

if.then47.i:                                      ; preds = %if.end44.i
  %call48.i = tail call i32 @___ratelimit(ptr noundef nonnull @ktiocomplete._rs, ptr noundef nonnull @.str.48) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.then47.i.if.end61.i_crit_edge, label %do.end53.i

if.then47.i.if.end61.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61.i

do.end53.i:                                       ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #16
  %aoemajor55.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 2
  %60 = ptrtoint ptr %aoemajor55.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %aoemajor55.i, align 8
  %aoeminor56.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 5
  %62 = ptrtoint ptr %aoeminor56.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %aoeminor56.i, align 4
  %conv57.i = zext i16 %63 to i32
  %64 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bi_size.i, align 8
  %call60.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.57, i32 noundef %61, i32 noundef %conv57.i, i32 noundef %shl.i, i32 noundef %65) #17
  br label %if.end61.i

if.end61.i:                                       ; preds = %do.end53.i, %if.then47.i.if.end61.i_crit_edge
  %bio62.i = getelementptr inbounds %struct.buf, ptr %19, i32 0, i32 1
  %66 = ptrtoint ptr %bio62.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bio62.i, align 4
  %bi_status63.i = getelementptr inbounds %struct.bio, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %bi_status63.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 10, ptr %bi_status63.i, align 2
  br label %out.i

if.end64.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not67.i.i = icmp eq i8 %45, 0
  br i1 %tobool.not67.i.i, label %if.end64.i.sw.bb68.i_crit_edge, label %land.rhs.lr.ph.i.i

if.end64.i.sw.bb68.i_crit_edge:                   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb68.i

land.rhs.lr.ph.i.i:                               ; preds = %if.end64.i
  %.elt221.i = getelementptr inbounds %struct.frame, ptr %2, i32 0, i32 9, i32 3
  %69 = ptrtoint ptr %.elt221.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.unpack222.i = load i32, ptr %.elt221.i, align 8
  %.elt219.i = getelementptr inbounds %struct.frame, ptr %2, i32 0, i32 9, i32 2
  %70 = ptrtoint ptr %.elt219.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.unpack220.i = load i32, ptr %.elt219.i, align 4
  %71 = ptrtoint ptr %buf3.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %buf3.i, align 4
  %bio66.i = getelementptr inbounds %struct.buf, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %bio66.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bio66.i, align 4
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %74, i32 0, i32 20
  %bi_opf.i.i.i.i = getelementptr inbounds %struct.bio, ptr %74, i32 0, i32 2
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %soff.073.i.i = phi i32 [ 0, %land.rhs.lr.ph.i.i ], [ %add42.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %iter.sroa.4.070.i.i = phi i32 [ %shl.i, %land.rhs.lr.ph.i.i ], [ %sub.i.i58.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %iter.sroa.9.069.i.i = phi i32 [ %.unpack220.i, %land.rhs.lr.ph.i.i ], [ %iter.sroa.9.2.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %iter.sroa.15.068.i.i = phi i32 [ %.unpack222.i, %land.rhs.lr.ph.i.i ], [ %iter.sroa.15.1.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %75 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bi_io_vec.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.bio_vec, ptr %76, i32 %iter.sroa.9.069.i.i
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i.i, align 4
  %bv_offset.i.i = getelementptr %struct.bio_vec, ptr %76, i32 %iter.sroa.9.069.i.i, i32 2
  %79 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bv_offset.i.i, align 4
  %add.i.i = add i32 %80, %iter.sroa.15.068.i.i
  %div57.i.i = lshr i32 %add.i.i, 12
  %add.ptr.i223.i = getelementptr %struct.page, ptr %78, i32 %div57.i.i
  %bv_len10.i.i = getelementptr %struct.bio_vec, ptr %76, i32 %iter.sroa.9.069.i.i, i32 1
  %81 = ptrtoint ptr %bv_len10.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bv_len10.i.i, align 4
  %sub.i.i = sub i32 %82, %iter.sroa.15.068.i.i
  %83 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.4.070.i.i, i32 %sub.i.i) #14
  %rem.i.i = and i32 %add.i.i, 4095
  %sub18.i.i = sub nuw nsw i32 4096, %rem.i.i
  %84 = tail call i32 @llvm.umin.i32(i32 %83, i32 %sub18.i.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %85 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %85, 512
  %86 = tail call i32 @llvm.read_register.i32(metadata !160) #14
  %and.i.i.i.i.i.i.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %89, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  %90 = tail call i32 @llvm.read_register.i32(metadata !160) #14
  %and.i.i.i1.i.i.i.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 213
  %94 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %95, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !180
  %call.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i223.i, i32 noundef %or.i.i.i) #14
  %add.ptr35.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 %rem.i.i
  %call37.i.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %17, i32 noundef %soff.073.i.i, ptr noundef %add.ptr35.i.i, i32 noundef %84) #14
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr35.i.i) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !181
  %96 = tail call i32 @llvm.read_register.i32(metadata !160) #14
  %and.i.i.i1.i.i.i = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 213
  %100 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %101, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !182
  %102 = tail call i32 @llvm.read_register.i32(metadata !160) #14
  %and.i.i.i.i.i.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %105, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  %add42.i.i = add i32 %84, %soff.073.i.i
  %106 = ptrtoint ptr %bi_opf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bi_opf.i.i.i.i, align 8
  %and.i.i.i.i = and i32 %107, 255
  %108 = add nsw i32 %and.i.i.i.i, -3
  %switch.and.i.i.i.i = and i32 %108, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i.i)
  %switch.selectcmp.i.i.i.i = icmp eq i32 %switch.and.i.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i.i, label %land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge, label %if.else.i.i.i

land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_advance_iter_single.exit.i.i

if.else.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %109 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bi_io_vec.i.i, align 8
  %add.i.i.i.i = add i32 %84, %iter.sroa.15.068.i.i
  %bv_len.i.i.i.i = getelementptr %struct.bio_vec, ptr %110, i32 %iter.sroa.9.069.i.i, i32 1
  %111 = ptrtoint ptr %bv_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bv_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %112)
  %cmp.i.i.i.i = icmp eq i32 %add.i.i.i.i, %112
  %spec.select.i.i = select i1 %cmp.i.i.i.i, i32 0, i32 %add.i.i.i.i
  %inc.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %spec.select66.i.i = add i32 %iter.sroa.9.069.i.i, %inc.i.i.i.i
  br label %bio_advance_iter_single.exit.i.i

bio_advance_iter_single.exit.i.i:                 ; preds = %if.else.i.i.i, %land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge
  %iter.sroa.15.1.i.i = phi i32 [ %iter.sroa.15.068.i.i, %land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge ], [ %spec.select.i.i, %if.else.i.i.i ]
  %iter.sroa.9.2.i.i = phi i32 [ %iter.sroa.9.069.i.i, %land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge ], [ %spec.select66.i.i, %if.else.i.i.i ]
  %sub.i.i58.i.i = sub i32 %iter.sroa.4.070.i.i, %84
  %tobool.not.i.i = icmp eq i32 %sub.i.i58.i.i, 0
  br i1 %tobool.not.i.i, label %bio_advance_iter_single.exit.i.i.sw.bb68.i_crit_edge, label %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge

bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i.i

bio_advance_iter_single.exit.i.i.sw.bb68.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb68.i

sw.bb68.i:                                        ; preds = %bio_advance_iter_single.exit.i.i.sw.bb68.i_crit_edge, %if.end64.i.sw.bb68.i_crit_edge, %if.end26.i.sw.bb68.i_crit_edge, %if.end26.i.sw.bb68.i_crit_edge69
  %lock.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 21
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #14
  %113 = getelementptr inbounds %struct.anon.44, ptr %17, i32 0, i32 2
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 8
  %ifs.i.i = getelementptr inbounds %struct.aoetgt, ptr %13, i32 0, i32 4
  %add.ptr.i224.i = getelementptr %struct.aoetgt, ptr %13, i32 0, i32 5
  %cmp8.i.i = icmp ult ptr %ifs.i.i, %add.ptr.i224.i
  br i1 %cmp8.i.i, label %sw.bb68.i.for.body.i.i_crit_edge, label %sw.bb68.i.if.end72.i_crit_edge

sw.bb68.i.if.end72.i_crit_edge:                   ; preds = %sw.bb68.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72.i

sw.bb68.i.for.body.i.i_crit_edge:                 ; preds = %sw.bb68.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.bb68.i.for.body.i.i_crit_edge
  %p.09.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %ifs.i.i, %sw.bb68.i.for.body.i.i_crit_edge ]
  %116 = ptrtoint ptr %p.09.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %p.09.i.i, align 4
  %cmp2.i.i = icmp eq ptr %117, %115
  br i1 %cmp2.i.i, label %getif.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.aoeif, ptr %p.09.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i224.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end72.i_crit_edge

for.inc.i.i.if.end72.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

getif.exit.i:                                     ; preds = %for.body.i.i
  %tobool70.not.i = icmp eq ptr %p.09.i.i, null
  br i1 %tobool70.not.i, label %getif.exit.i.if.end72.i_crit_edge, label %if.then71.i

getif.exit.i.if.end72.i_crit_edge:                ; preds = %getif.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72.i

if.then71.i:                                      ; preds = %getif.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %lost.i = getelementptr inbounds %struct.aoeif, ptr %p.09.i.i, i32 0, i32 1
  %118 = ptrtoint ptr %lost.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %lost.i, align 4
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then71.i, %getif.exit.i.if.end72.i_crit_edge, %for.inc.i.i.if.end72.i_crit_edge, %sw.bb68.i.if.end72.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #14
  br label %out.i

sw.bb74.i:                                        ; preds = %if.end26.i
  %len75.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %119 = ptrtoint ptr %len75.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %len75.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %120)
  %cmp76.i = icmp ult i32 %120, 512
  br i1 %cmp76.i, label %do.end81.i, label %if.end88.i

do.end81.i:                                       ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #16
  %aoemajor83.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 2
  %121 = ptrtoint ptr %aoemajor83.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %aoemajor83.i, align 8
  %aoeminor84.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 5
  %123 = ptrtoint ptr %aoeminor84.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %aoeminor84.i, align 4
  %conv85.i = zext i16 %124 to i32
  %call87.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.61, i32 noundef %122, i32 noundef %conv85.i, i32 noundef %120) #17
  br label %out.i

if.end88.i:                                       ; preds = %sw.bb74.i
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 7
  %125 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.i.not.i.i = icmp eq i32 %126, 0
  br i1 %tobool.i.not.i.i, label %if.end88.i.if.end92.i_crit_edge, label %cond.true.i.i

if.end88.i.if.end92.i_crit_edge:                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92.i

cond.true.i.i:                                    ; preds = %if.end88.i
  %call.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %17, i32 noundef %126) #14
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %cond.true.i.i.out.i_crit_edge, label %cond.true.i.i.if.end92.i_crit_edge

cond.true.i.i.if.end92.i_crit_edge:               ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92.i

cond.true.i.i.out.i_crit_edge:                    ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end92.i:                                       ; preds = %cond.true.i.i.if.end92.i_crit_edge, %if.end88.i.if.end92.i_crit_edge
  %lock93.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 21
  tail call void @_raw_spin_lock_irq(ptr noundef %lock93.i) #14
  %127 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %128, i32 166
  %129 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 2)
  %130 = load i16, ptr %arrayidx.i, align 1
  %arrayidx1.i = getelementptr i8, ptr %128, i32 172
  %131 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_loadN_noabort(i32 %131, i32 2)
  %132 = load i16, ptr %arrayidx1.i, align 1
  %133 = or i16 %132, %130
  %134 = and i16 %133, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %134)
  %tobool.not.i51 = icmp eq i16 %134, 0
  %flags18.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 6
  %135 = ptrtoint ptr %flags18.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %flags18.i, align 2
  br i1 %tobool.not.i51, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #16
  %137 = or i16 %136, 4
  %138 = ptrtoint ptr %flags18.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %137, ptr %flags18.i, align 2
  %arrayidx9.i = getelementptr i8, ptr %128, i32 200
  %139 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_loadN_noabort(i32 %139, i32 8)
  %140 = load i64, ptr %arrayidx9.i, align 1
  %141 = tail call i64 @llvm.bswap.i64(i64 %140) #14
  %conv11.i = trunc i64 %141 to i16
  %geo.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 18
  %cylinders.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 18, i32 2
  %div.i = udiv i16 %conv11.i, 16065
  %142 = ptrtoint ptr %cylinders.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %div.i, ptr %cylinders.i, align 2
  %143 = ptrtoint ptr %geo.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 -1, ptr %geo.i, align 4
  br label %if.end.i53

if.else.i:                                        ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #16
  %144 = and i16 %136, -5
  %145 = ptrtoint ptr %flags18.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %flags18.i, align 2
  %arrayidx22.i = getelementptr i8, ptr %128, i32 120
  %146 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %arrayidx22.i, align 1
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #14
  %conv24.i = zext i32 %148 to i64
  %arrayidx25.i = getelementptr i8, ptr %128, i32 108
  %149 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 2)
  %150 = load i16, ptr %arrayidx25.i, align 1
  %151 = tail call i16 @llvm.bswap.i16(i16 %150) #14
  %geo27.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 18
  %cylinders28.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 18, i32 2
  %152 = ptrtoint ptr %cylinders28.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %151, ptr %cylinders28.i, align 2
  %arrayidx29.i = getelementptr i8, ptr %128, i32 110
  %153 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 2)
  %154 = load i16, ptr %arrayidx29.i, align 1
  %155 = lshr i16 %154, 8
  %conv31.i = trunc i16 %155 to i8
  %156 = ptrtoint ptr %geo27.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv31.i, ptr %geo27.i, align 4
  %arrayidx34.i = getelementptr i8, ptr %128, i32 112
  %157 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_loadN_noabort(i32 %157, i32 2)
  %158 = load i16, ptr %arrayidx34.i, align 1
  %159 = lshr i16 %158, 8
  %conv36.i = trunc i16 %159 to i8
  br label %if.end.i53

if.end.i53:                                       ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i8 [ %conv36.i, %if.else.i ], [ 63, %if.then.i ]
  %ssize.0.i = phi i64 [ %conv24.i, %if.else.i ], [ %141, %if.then.i ]
  %160 = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 18, i32 1
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %.sink.i, ptr %160, align 1
  %arrayidx39.i = getelementptr i8, ptr %128, i32 20
  %162 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %arrayidx39.i, align 2
  %or.i.i = tail call i16 @llvm.bswap.i16(i16 %163) #14
  %incdec.ptr.i.i52 = getelementptr i8, ptr %128, i32 22
  %164 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %or.i.i, ptr %arrayidx39.i, align 2
  %165 = ptrtoint ptr %incdec.ptr.i.i52 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %incdec.ptr.i.i52, align 2
  %or.i.1.i = tail call i16 @llvm.bswap.i16(i16 %166) #14
  %incdec.ptr.i.1.i = getelementptr i8, ptr %128, i32 24
  %167 = ptrtoint ptr %incdec.ptr.i.i52 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %or.i.1.i, ptr %incdec.ptr.i.i52, align 2
  %168 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %incdec.ptr.i.1.i, align 2
  %or.i.2.i = tail call i16 @llvm.bswap.i16(i16 %169) #14
  %incdec.ptr.i.2.i = getelementptr i8, ptr %128, i32 26
  %170 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %or.i.2.i, ptr %incdec.ptr.i.1.i, align 2
  %171 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %incdec.ptr.i.2.i, align 2
  %or.i.3.i = tail call i16 @llvm.bswap.i16(i16 %172) #14
  %incdec.ptr.i.3.i = getelementptr i8, ptr %128, i32 28
  %173 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %or.i.3.i, ptr %incdec.ptr.i.2.i, align 2
  %174 = ptrtoint ptr %incdec.ptr.i.3.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %incdec.ptr.i.3.i, align 2
  %or.i.4.i = tail call i16 @llvm.bswap.i16(i16 %175) #14
  %incdec.ptr.i.4.i = getelementptr i8, ptr %128, i32 30
  %176 = ptrtoint ptr %incdec.ptr.i.3.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %or.i.4.i, ptr %incdec.ptr.i.3.i, align 2
  %177 = ptrtoint ptr %incdec.ptr.i.4.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %incdec.ptr.i.4.i, align 2
  %or.i.5.i = tail call i16 @llvm.bswap.i16(i16 %178) #14
  %incdec.ptr.i.5.i = getelementptr i8, ptr %128, i32 32
  %179 = ptrtoint ptr %incdec.ptr.i.4.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %or.i.5.i, ptr %incdec.ptr.i.4.i, align 2
  %180 = ptrtoint ptr %incdec.ptr.i.5.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %incdec.ptr.i.5.i, align 2
  %or.i.6.i = tail call i16 @llvm.bswap.i16(i16 %181) #14
  %incdec.ptr.i.6.i = getelementptr i8, ptr %128, i32 34
  %182 = ptrtoint ptr %incdec.ptr.i.5.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %or.i.6.i, ptr %incdec.ptr.i.5.i, align 2
  %183 = ptrtoint ptr %incdec.ptr.i.6.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %incdec.ptr.i.6.i, align 2
  %or.i.7.i = tail call i16 @llvm.bswap.i16(i16 %184) #14
  %incdec.ptr.i.7.i = getelementptr i8, ptr %128, i32 36
  %185 = ptrtoint ptr %incdec.ptr.i.6.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %or.i.7.i, ptr %incdec.ptr.i.6.i, align 2
  %186 = ptrtoint ptr %incdec.ptr.i.7.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %incdec.ptr.i.7.i, align 2
  %or.i.8.i = tail call i16 @llvm.bswap.i16(i16 %187) #14
  %incdec.ptr.i.8.i = getelementptr i8, ptr %128, i32 38
  %188 = ptrtoint ptr %incdec.ptr.i.7.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %or.i.8.i, ptr %incdec.ptr.i.7.i, align 2
  %189 = ptrtoint ptr %incdec.ptr.i.8.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %incdec.ptr.i.8.i, align 2
  %or.i.9.i = tail call i16 @llvm.bswap.i16(i16 %190) #14
  %191 = ptrtoint ptr %incdec.ptr.i.8.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %or.i.9.i, ptr %incdec.ptr.i.8.i, align 2
  %arrayidx40.i = getelementptr i8, ptr %128, i32 46
  %192 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %arrayidx40.i, align 2
  %or.i111.i = tail call i16 @llvm.bswap.i16(i16 %193) #14
  %incdec.ptr.i112.i = getelementptr i8, ptr %128, i32 48
  %194 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %or.i111.i, ptr %arrayidx40.i, align 2
  %195 = ptrtoint ptr %incdec.ptr.i112.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %incdec.ptr.i112.i, align 2
  %or.i111.1.i = tail call i16 @llvm.bswap.i16(i16 %196) #14
  %incdec.ptr.i112.1.i = getelementptr i8, ptr %128, i32 50
  %197 = ptrtoint ptr %incdec.ptr.i112.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %or.i111.1.i, ptr %incdec.ptr.i112.i, align 2
  %198 = ptrtoint ptr %incdec.ptr.i112.1.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %incdec.ptr.i112.1.i, align 2
  %or.i111.2.i = tail call i16 @llvm.bswap.i16(i16 %199) #14
  %incdec.ptr.i112.2.i = getelementptr i8, ptr %128, i32 52
  %200 = ptrtoint ptr %incdec.ptr.i112.1.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %or.i111.2.i, ptr %incdec.ptr.i112.1.i, align 2
  %201 = ptrtoint ptr %incdec.ptr.i112.2.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %incdec.ptr.i112.2.i, align 2
  %or.i111.3.i = tail call i16 @llvm.bswap.i16(i16 %202) #14
  %203 = ptrtoint ptr %incdec.ptr.i112.2.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %or.i111.3.i, ptr %incdec.ptr.i112.2.i, align 2
  %arrayidx41.i = getelementptr i8, ptr %128, i32 54
  %204 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %arrayidx41.i, align 2
  %or.i119.i = tail call i16 @llvm.bswap.i16(i16 %205) #14
  %incdec.ptr.i120.i = getelementptr i8, ptr %128, i32 56
  %206 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %or.i119.i, ptr %arrayidx41.i, align 2
  %207 = ptrtoint ptr %incdec.ptr.i120.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %incdec.ptr.i120.i, align 2
  %or.i119.1.i = tail call i16 @llvm.bswap.i16(i16 %208) #14
  %incdec.ptr.i120.1.i = getelementptr i8, ptr %128, i32 58
  %209 = ptrtoint ptr %incdec.ptr.i120.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %or.i119.1.i, ptr %incdec.ptr.i120.i, align 2
  %210 = ptrtoint ptr %incdec.ptr.i120.1.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %incdec.ptr.i120.1.i, align 2
  %or.i119.2.i = tail call i16 @llvm.bswap.i16(i16 %211) #14
  %incdec.ptr.i120.2.i = getelementptr i8, ptr %128, i32 60
  %212 = ptrtoint ptr %incdec.ptr.i120.1.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %or.i119.2.i, ptr %incdec.ptr.i120.1.i, align 2
  %213 = ptrtoint ptr %incdec.ptr.i120.2.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %incdec.ptr.i120.2.i, align 2
  %or.i119.3.i = tail call i16 @llvm.bswap.i16(i16 %214) #14
  %incdec.ptr.i120.3.i = getelementptr i8, ptr %128, i32 62
  %215 = ptrtoint ptr %incdec.ptr.i120.2.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %or.i119.3.i, ptr %incdec.ptr.i120.2.i, align 2
  %216 = ptrtoint ptr %incdec.ptr.i120.3.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %incdec.ptr.i120.3.i, align 2
  %or.i119.4.i = tail call i16 @llvm.bswap.i16(i16 %217) #14
  %incdec.ptr.i120.4.i = getelementptr i8, ptr %128, i32 64
  %218 = ptrtoint ptr %incdec.ptr.i120.3.i to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 %or.i119.4.i, ptr %incdec.ptr.i120.3.i, align 2
  %219 = ptrtoint ptr %incdec.ptr.i120.4.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %incdec.ptr.i120.4.i, align 2
  %or.i119.5.i = tail call i16 @llvm.bswap.i16(i16 %220) #14
  %incdec.ptr.i120.5.i = getelementptr i8, ptr %128, i32 66
  %221 = ptrtoint ptr %incdec.ptr.i120.4.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 %or.i119.5.i, ptr %incdec.ptr.i120.4.i, align 2
  %222 = ptrtoint ptr %incdec.ptr.i120.5.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %incdec.ptr.i120.5.i, align 2
  %or.i119.6.i = tail call i16 @llvm.bswap.i16(i16 %223) #14
  %incdec.ptr.i120.6.i = getelementptr i8, ptr %128, i32 68
  %224 = ptrtoint ptr %incdec.ptr.i120.5.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 %or.i119.6.i, ptr %incdec.ptr.i120.5.i, align 2
  %225 = ptrtoint ptr %incdec.ptr.i120.6.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %incdec.ptr.i120.6.i, align 2
  %or.i119.7.i = tail call i16 @llvm.bswap.i16(i16 %226) #14
  %incdec.ptr.i120.7.i = getelementptr i8, ptr %128, i32 70
  %227 = ptrtoint ptr %incdec.ptr.i120.6.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %or.i119.7.i, ptr %incdec.ptr.i120.6.i, align 2
  %228 = ptrtoint ptr %incdec.ptr.i120.7.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %incdec.ptr.i120.7.i, align 2
  %or.i119.8.i = tail call i16 @llvm.bswap.i16(i16 %229) #14
  %incdec.ptr.i120.8.i = getelementptr i8, ptr %128, i32 72
  %230 = ptrtoint ptr %incdec.ptr.i120.7.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %or.i119.8.i, ptr %incdec.ptr.i120.7.i, align 2
  %231 = ptrtoint ptr %incdec.ptr.i120.8.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %incdec.ptr.i120.8.i, align 2
  %or.i119.9.i = tail call i16 @llvm.bswap.i16(i16 %232) #14
  %incdec.ptr.i120.9.i = getelementptr i8, ptr %128, i32 74
  %233 = ptrtoint ptr %incdec.ptr.i120.8.i to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 %or.i119.9.i, ptr %incdec.ptr.i120.8.i, align 2
  %234 = ptrtoint ptr %incdec.ptr.i120.9.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %incdec.ptr.i120.9.i, align 2
  %or.i119.10.i = tail call i16 @llvm.bswap.i16(i16 %235) #14
  %incdec.ptr.i120.10.i = getelementptr i8, ptr %128, i32 76
  %236 = ptrtoint ptr %incdec.ptr.i120.9.i to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %or.i119.10.i, ptr %incdec.ptr.i120.9.i, align 2
  %237 = ptrtoint ptr %incdec.ptr.i120.10.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %incdec.ptr.i120.10.i, align 2
  %or.i119.11.i = tail call i16 @llvm.bswap.i16(i16 %238) #14
  %incdec.ptr.i120.11.i = getelementptr i8, ptr %128, i32 78
  %239 = ptrtoint ptr %incdec.ptr.i120.10.i to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %or.i119.11.i, ptr %incdec.ptr.i120.10.i, align 2
  %240 = ptrtoint ptr %incdec.ptr.i120.11.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %incdec.ptr.i120.11.i, align 2
  %or.i119.12.i = tail call i16 @llvm.bswap.i16(i16 %241) #14
  %incdec.ptr.i120.12.i = getelementptr i8, ptr %128, i32 80
  %242 = ptrtoint ptr %incdec.ptr.i120.11.i to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 %or.i119.12.i, ptr %incdec.ptr.i120.11.i, align 2
  %243 = ptrtoint ptr %incdec.ptr.i120.12.i to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %incdec.ptr.i120.12.i, align 2
  %or.i119.13.i = tail call i16 @llvm.bswap.i16(i16 %244) #14
  %incdec.ptr.i120.13.i = getelementptr i8, ptr %128, i32 82
  %245 = ptrtoint ptr %incdec.ptr.i120.12.i to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %or.i119.13.i, ptr %incdec.ptr.i120.12.i, align 2
  %246 = ptrtoint ptr %incdec.ptr.i120.13.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %incdec.ptr.i120.13.i, align 2
  %or.i119.14.i = tail call i16 @llvm.bswap.i16(i16 %247) #14
  %incdec.ptr.i120.14.i = getelementptr i8, ptr %128, i32 84
  %248 = ptrtoint ptr %incdec.ptr.i120.13.i to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 %or.i119.14.i, ptr %incdec.ptr.i120.13.i, align 2
  %249 = ptrtoint ptr %incdec.ptr.i120.14.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %incdec.ptr.i120.14.i, align 2
  %or.i119.15.i = tail call i16 @llvm.bswap.i16(i16 %250) #14
  %incdec.ptr.i120.15.i = getelementptr i8, ptr %128, i32 86
  %251 = ptrtoint ptr %incdec.ptr.i120.14.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 %or.i119.15.i, ptr %incdec.ptr.i120.14.i, align 2
  %252 = ptrtoint ptr %incdec.ptr.i120.15.i to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %incdec.ptr.i120.15.i, align 2
  %or.i119.16.i = tail call i16 @llvm.bswap.i16(i16 %253) #14
  %incdec.ptr.i120.16.i = getelementptr i8, ptr %128, i32 88
  %254 = ptrtoint ptr %incdec.ptr.i120.15.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %or.i119.16.i, ptr %incdec.ptr.i120.15.i, align 2
  %255 = ptrtoint ptr %incdec.ptr.i120.16.i to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %incdec.ptr.i120.16.i, align 2
  %or.i119.17.i = tail call i16 @llvm.bswap.i16(i16 %256) #14
  %incdec.ptr.i120.17.i = getelementptr i8, ptr %128, i32 90
  %257 = ptrtoint ptr %incdec.ptr.i120.16.i to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 %or.i119.17.i, ptr %incdec.ptr.i120.16.i, align 2
  %258 = ptrtoint ptr %incdec.ptr.i120.17.i to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %incdec.ptr.i120.17.i, align 2
  %or.i119.18.i = tail call i16 @llvm.bswap.i16(i16 %259) #14
  %incdec.ptr.i120.18.i = getelementptr i8, ptr %128, i32 92
  %260 = ptrtoint ptr %incdec.ptr.i120.17.i to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 %or.i119.18.i, ptr %incdec.ptr.i120.17.i, align 2
  %261 = ptrtoint ptr %incdec.ptr.i120.18.i to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %incdec.ptr.i120.18.i, align 2
  %or.i119.19.i = tail call i16 @llvm.bswap.i16(i16 %262) #14
  %263 = ptrtoint ptr %incdec.ptr.i120.18.i to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 %or.i119.19.i, ptr %incdec.ptr.i120.18.i, align 2
  %ident.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 32
  %264 = call ptr @memcpy(ptr %ident.i, ptr %128, i32 512)
  %ssize42.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 19
  %265 = ptrtoint ptr %ssize42.i to i32
  call void @__asan_load8_noabort(i32 %265)
  %266 = load i64, ptr %ssize42.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %266, i64 %ssize.0.i)
  %cmp.not.i = icmp eq i64 %266, %ssize.0.i
  br i1 %cmp.not.i, label %if.end.i53.if.end49.i_crit_edge, label %do.end.i57

if.end.i53.if.end49.i_crit_edge:                  ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49.i

do.end.i57:                                       ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #16
  %aoemajor.i54 = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 2
  %267 = ptrtoint ptr %aoemajor.i54 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %aoemajor.i54, align 8
  %aoeminor.i55 = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 5
  %269 = ptrtoint ptr %aoeminor.i55 to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %aoeminor.i55, align 4
  %conv46.i = zext i16 %270 to i32
  %fw_ver.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 8
  %271 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %fw_ver.i, align 2
  %conv47.i = zext i16 %272 to i32
  %call48.i56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %13, i32 noundef %268, i32 noundef %conv46.i, i32 noundef %conv47.i, i64 noundef %ssize.0.i) #17
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end.i57, %if.end.i53.if.end49.i_crit_edge
  %273 = ptrtoint ptr %ssize42.i to i32
  call void @__asan_store8_noabort(i32 %273)
  store i64 %ssize.0.i, ptr %ssize42.i, align 8
  %start.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 18, i32 3
  %274 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 0, ptr %start.i, align 4
  %275 = ptrtoint ptr %flags18.i to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %flags18.i, align 2
  %277 = and i16 %276, 72
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %277)
  %tobool55.not.i = icmp eq i16 %277, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %if.end49.i.ataid_complete.exit_crit_edge

if.end49.i.ataid_complete.exit_crit_edge:         ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ataid_complete.exit

if.end57.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #16
  %gd.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 13
  %278 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %gd.i, align 8
  %cmp58.not.i = icmp eq ptr %279, null
  %storemerge.v.i = select i1 %cmp58.not.i, i16 8, i16 64
  %storemerge.i = or i16 %storemerge.v.i, %276
  %280 = ptrtoint ptr %flags18.i to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 %storemerge.i, ptr %flags18.i, align 2
  %work.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %281 = load ptr, ptr @system_wq, align 4
  %call.i.i.i58 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %281, ptr noundef %work.i) #14
  br label %ataid_complete.exit

ataid_complete.exit:                              ; preds = %if.end57.i, %if.end49.i.ataid_complete.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock93.i) #14
  br label %out.i

do.end98.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv29.i = zext i8 %47 to i32
  %major.i = getelementptr inbounds %struct.aoe_hdr, ptr %30, i32 0, i32 5
  %282 = ptrtoint ptr %major.i to i32
  call void @__asan_loadN_noabort(i32 %282, i32 2)
  %283 = load i16, ptr %major.i, align 1
  %conv103.i = zext i16 %283 to i32
  %minor.i = getelementptr inbounds %struct.aoe_hdr, ptr %30, i32 0, i32 6
  %284 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %minor.i, align 2
  %conv104.i = zext i8 %285 to i32
  %call105.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %conv29.i, i32 noundef %conv103.i, i32 noundef %conv104.i) #17
  br label %out.i

out.i:                                            ; preds = %do.end98.i, %ataid_complete.exit, %cond.true.i.i.out.i_crit_edge, %do.end81.i, %if.end72.i, %if.end61.i, %do.end35.i, %if.then24.i, %noskb.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %lock106.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 21
  tail call void @_raw_spin_lock_irq(ptr noundef %lock106.i) #14
  %taint.i = getelementptr inbounds %struct.aoetgt, ptr %13, i32 0, i32 11
  %286 = ptrtoint ptr %taint.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %taint.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %cmp107.i = icmp sgt i32 %287, 0
  br i1 %cmp107.i, label %land.lhs.true.i, label %out.i.if.end123.i_crit_edge

out.i.if.end123.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123.i

land.lhs.true.i:                                  ; preds = %out.i
  %dec.i = add nsw i32 %287, -1
  %288 = ptrtoint ptr %taint.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %dec.i, ptr %taint.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp110.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp110.not.i, label %land.lhs.true.i.if.end123.i_crit_edge, label %land.lhs.true112.i

land.lhs.true.i.if.end123.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123.i

land.lhs.true112.i:                               ; preds = %land.lhs.true.i
  %nout_probes.i = getelementptr inbounds %struct.aoetgt, ptr %13, i32 0, i32 15
  %289 = ptrtoint ptr %nout_probes.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %nout_probes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %290)
  %cmp114.i = icmp eq i8 %290, 0
  br i1 %cmp114.i, label %if.then116.i, label %land.lhs.true112.i.if.end123.i_crit_edge

land.lhs.true112.i.if.end123.i_crit_edge:         ; preds = %land.lhs.true112.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123.i

if.then116.i:                                     ; preds = %land.lhs.true112.i
  %ntargets.i.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 29
  %291 = ptrtoint ptr %ntargets.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %ntargets.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %cmp16.not.i.i = icmp eq i32 %292, 0
  br i1 %cmp16.not.i.i, label %if.then116.i.if.end123.i_crit_edge, label %land.rhs.lr.ph.i225.i

if.then116.i.if.end123.i_crit_edge:               ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123.i

land.rhs.lr.ph.i225.i:                            ; preds = %if.then116.i
  %targets.i.i = getelementptr inbounds %struct.aoedev, ptr %15, i32 0, i32 28
  %293 = ptrtoint ptr %targets.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %targets.i.i, align 8
  br label %land.rhs.i228.i

land.rhs.i228.i:                                  ; preds = %for.body.i230.i.land.rhs.i228.i_crit_edge, %land.rhs.lr.ph.i225.i
  %good.018.i.i = phi i32 [ 0, %land.rhs.lr.ph.i225.i ], [ %spec.select.i229.i, %for.body.i230.i.land.rhs.i228.i_crit_edge ]
  %i.017.i.i = phi i32 [ 0, %land.rhs.lr.ph.i225.i ], [ %inc4.i.i, %for.body.i230.i.land.rhs.i228.i_crit_edge ]
  %arrayidx.i226.i = getelementptr ptr, ptr %294, i32 %i.017.i.i
  %295 = ptrtoint ptr %arrayidx.i226.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %arrayidx.i226.i, align 4
  %tobool.not.i227.i = icmp eq ptr %296, null
  br i1 %tobool.not.i227.i, label %land.rhs.i228.i.count_targets.exit.i_crit_edge, label %for.body.i230.i

land.rhs.i228.i.count_targets.exit.i_crit_edge:   ; preds = %land.rhs.i228.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %count_targets.exit.i

for.body.i230.i:                                  ; preds = %land.rhs.i228.i
  %taint.i.i = getelementptr inbounds %struct.aoetgt, ptr %296, i32 0, i32 11
  %297 = ptrtoint ptr %taint.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %taint.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %cmp3.i.i = icmp eq i32 %298, 0
  %inc.i.i = zext i1 %cmp3.i.i to i32
  %spec.select.i229.i = add i32 %good.018.i.i, %inc.i.i
  %inc4.i.i = add nuw i32 %i.017.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc4.i.i, %292
  br i1 %exitcond.not.i.i, label %for.body.i230.i.count_targets.exit.i_crit_edge, label %for.body.i230.i.land.rhs.i228.i_crit_edge

for.body.i230.i.land.rhs.i228.i_crit_edge:        ; preds = %for.body.i230.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i228.i

for.body.i230.i.count_targets.exit.i_crit_edge:   ; preds = %for.body.i230.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %count_targets.exit.i

count_targets.exit.i:                             ; preds = %for.body.i230.i.count_targets.exit.i_crit_edge, %land.rhs.i228.i.count_targets.exit.i_crit_edge
  %good.0.lcssa.i.i = phi i32 [ %spec.select.i229.i, %for.body.i230.i.count_targets.exit.i_crit_edge ], [ %good.018.i.i, %land.rhs.i228.i.count_targets.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %good.0.lcssa.i.i)
  %cmp118.i = icmp sgt i32 %good.0.lcssa.i.i, 0
  br i1 %cmp118.i, label %if.then120.i, label %count_targets.exit.i.if.end123.i_crit_edge

count_targets.exit.i.if.end123.i_crit_edge:       ; preds = %count_targets.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123.i

if.then120.i:                                     ; preds = %count_targets.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @probe(ptr noundef %13) #14
  %299 = ptrtoint ptr %nout_probes.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %nout_probes.i, align 4
  %inc.i = add i8 %300, 1
  store i8 %inc.i, ptr %nout_probes.i, align 4
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then120.i, %count_targets.exit.i.if.end123.i_crit_edge, %if.then116.i.if.end123.i_crit_edge, %land.lhs.true112.i.if.end123.i_crit_edge, %land.lhs.true.i.if.end123.i_crit_edge, %out.i.if.end123.i_crit_edge
  %301 = ptrtoint ptr %t1.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %t1.i, align 8
  %ffree.i.i = getelementptr inbounds %struct.aoetgt, ptr %302, i32 0, i32 3
  %303 = call ptr @memset(ptr %r_skb.i, i32 0, i32 29)
  %304 = ptrtoint ptr %ffree.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %ffree.i.i, align 4
  %call.i.i.i231.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %2, ptr noundef %ffree.i.i, ptr noundef %305) #14
  br i1 %call.i.i.i231.i, label %if.end.i.i.i.i, label %if.end123.i.aoe_freetframe.exit.i_crit_edge

if.end123.i.aoe_freetframe.exit.i_crit_edge:      ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %aoe_freetframe.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %305, i32 0, i32 1
  %306 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %2, ptr %prev1.i.i.i.i, align 4
  %307 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %305, ptr %2, align 4
  %308 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %ffree.i.i, ptr %prev.i, align 4
  %309 = ptrtoint ptr %ffree.i.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store volatile ptr %2, ptr %ffree.i.i, align 4
  br label %aoe_freetframe.exit.i

aoe_freetframe.exit.i:                            ; preds = %if.end.i.i.i.i, %if.end123.i.aoe_freetframe.exit.i_crit_edge
  %tobool124.not.i = icmp eq ptr %19, null
  br i1 %tobool124.not.i, label %aoe_freetframe.exit.i.if.end135.i_crit_edge, label %land.lhs.true125.i

aoe_freetframe.exit.i.if.end135.i_crit_edge:      ; preds = %aoe_freetframe.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end135.i

land.lhs.true125.i:                               ; preds = %aoe_freetframe.exit.i
  %310 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %19, align 4
  %dec126.i = add i32 %311, -1
  store i32 %dec126.i, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec126.i)
  %cmp127.i = icmp eq i32 %dec126.i, 0
  br i1 %cmp127.i, label %land.lhs.true129.i, label %land.lhs.true125.i.if.end135.i_crit_edge

land.lhs.true125.i.if.end135.i_crit_edge:         ; preds = %land.lhs.true125.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end135.i

land.lhs.true129.i:                               ; preds = %land.lhs.true125.i
  %bi_size131.i = getelementptr inbounds %struct.buf, ptr %19, i32 0, i32 2, i32 1
  %312 = ptrtoint ptr %bi_size131.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %bi_size131.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %313)
  %cmp132.i = icmp eq i32 %313, 0
  br i1 %cmp132.i, label %if.then134.i, label %land.lhs.true129.i.if.end135.i_crit_edge

land.lhs.true129.i.if.end135.i_crit_edge:         ; preds = %land.lhs.true129.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end135.i

if.then134.i:                                     ; preds = %land.lhs.true129.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @aoe_end_buf(ptr noundef %15, ptr noundef nonnull %19) #14
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.then134.i, %land.lhs.true129.i.if.end135.i_crit_edge, %land.lhs.true125.i.if.end135.i_crit_edge, %aoe_freetframe.exit.i.if.end135.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock106.i) #14
  tail call void @aoedev_put(ptr noundef %15) #14
  tail call void @consume_skb(ptr noundef %17) #14
  br label %ktiocomplete.exit

ktiocomplete.exit:                                ; preds = %if.end135.i, %list_del.exit.ktiocomplete.exit_crit_edge
  %t = getelementptr inbounds %struct.frame, ptr %2, i32 0, i32 5
  %314 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %t, align 8
  %d = getelementptr inbounds %struct.aoetgt, ptr %315, i32 0, i32 2
  %316 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %d, align 4
  %aoeminor = getelementptr inbounds %struct.aoedev, ptr %317, i32 0, i32 5
  %318 = ptrtoint ptr %aoeminor to i32
  call void @__asan_load2_noabort(i32 %318)
  %319 = load i16, ptr %aoeminor, align 4
  %conv = zext i16 %319 to i32
  %320 = load i32, ptr @ncpus, align 4
  %rem = srem i32 %conv, %320
  %321 = load ptr, ptr @kts, align 4
  %active = getelementptr %struct.ktstate, ptr %321, i32 %rem, i32 7
  %322 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %tobool7.not = icmp eq i32 %323, 0
  br i1 %tobool7.not, label %do.body, label %ktiocomplete.exit.if.end32_crit_edge

ktiocomplete.exit.if.end32_crit_edge:             ; preds = %ktiocomplete.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

do.body:                                          ; preds = %ktiocomplete.exit
  br i1 %cmp9.not, label %do.end20, label %do.body14, !prof !170

do.body14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/aoe/aoecmd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1206, 0\0A.popsection", ""() #14, !srcloc !183
  unreachable

do.end20:                                         ; preds = %do.body
  tail call void @mutex_lock_nested(ptr noundef nonnull @ktio_spawn_lock, i32 noundef 0) #14
  %324 = load ptr, ptr @kts, align 4
  %active22 = getelementptr %struct.ktstate, ptr %324, i32 %rem, i32 7
  %325 = ptrtoint ptr %active22 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %active22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %326)
  %tobool23.not = icmp eq i32 %326, 0
  br i1 %tobool23.not, label %land.lhs.true, label %do.end20.if.end31_crit_edge

do.end20.if.end31_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

land.lhs.true:                                    ; preds = %do.end20
  %arrayidx21 = getelementptr %struct.ktstate, ptr %324, i32 %rem
  %327 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 0, ptr %arrayidx21, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %arrayidx21, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @init_completion.__key) #14
  %name.i = getelementptr %struct.ktstate, ptr %324, i32 %rem, i32 4
  %call.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @kthread, ptr noundef %arrayidx21, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef %name.i) #14
  %cmp.i.i49 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i49, label %land.lhs.true.if.end31_crit_edge, label %if.end.thread.i

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.end.thread.i:                                  ; preds = %land.lhs.true
  %call2.i = tail call i32 @wake_up_process(ptr noundef %call.i) #14
  %cmp20.i = icmp eq ptr %call.i, null
  br i1 %cmp20.i, label %if.end.thread.i.if.end31_crit_edge, label %if.then28

if.end.thread.i.if.end31_crit_edge:               ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then28:                                        ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  %task6.i = getelementptr %struct.ktstate, ptr %324, i32 %rem, i32 1
  %328 = ptrtoint ptr %task6.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr %call.i, ptr %task6.i, align 4
  tail call void @wait_for_completion(ptr noundef %arrayidx21) #14
  %329 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 0, ptr %arrayidx21, align 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @init_completion.__key) #14
  %330 = load ptr, ptr @kts, align 4
  %active30 = getelementptr %struct.ktstate, ptr %330, i32 %rem, i32 7
  %331 = ptrtoint ptr %active30 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 1, ptr %active30, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end.thread.i.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge, %do.end20.if.end31_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ktio_spawn_lock) #14
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %ktiocomplete.exit.if.end32_crit_edge
  %332 = load ptr, ptr @iocq, align 4
  %lock34 = getelementptr %struct.iocq_ktio, ptr %332, i32 %id, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock34) #14
  %inc = add nuw nsw i32 %i.062, 1
  %cmp = icmp eq i32 %inc, 8192
  br i1 %cmp, label %if.end32.cleanup_crit_edge, label %if.end32.if.end_crit_edge

if.end32.if.end_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end32.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end32.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aoecmd_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ncpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp5 = icmp sgt i32 %0, 0
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.aoe_flush_iocq.exit_crit_edge

entry.aoe_flush_iocq.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %aoe_flush_iocq.exit

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = load ptr, ptr @kts, align 4
  %active = getelementptr %struct.ktstate, ptr %1, i32 %i.06, i32 7
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr %struct.ktstate, ptr %1, i32 %i.06
  %task.i = getelementptr %struct.ktstate, ptr %1, i32 %i.06, i32 1
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 4
  %call.i = tail call i32 @kthread_stop(ptr noundef %5) #14
  tail call void @wait_for_completion(ptr noundef %arrayidx) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.06, 1
  %6 = load i32, ptr @ncpus, align 4
  %cmp = icmp slt i32 %inc, %6
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4.i = icmp sgt i32 %6, 0
  br i1 %cmp4.i, label %for.end.for.body.i_crit_edge, label %for.end.aoe_flush_iocq.exit_crit_edge

for.end.aoe_flush_iocq.exit_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %aoe_flush_iocq.exit

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %7 = load ptr, ptr @kts, align 4
  %active.i = getelementptr %struct.ktstate, ptr %7, i32 %i.05.i, i32 7
  %8 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @aoe_flush_iocq_by_index(i32 noundef %i.05.i) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %10 = load i32, ptr @ncpus, align 4
  %cmp.i = icmp slt i32 %inc.i, %10
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.aoe_flush_iocq.exit_crit_edge

for.inc.i.aoe_flush_iocq.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %aoe_flush_iocq.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

aoe_flush_iocq.exit:                              ; preds = %for.inc.i.aoe_flush_iocq.exit_crit_edge, %for.end.aoe_flush_iocq.exit_crit_edge, %entry.aoe_flush_iocq.exit_crit_edge
  %11 = load ptr, ptr @iocq, align 4
  tail call void @kfree(ptr noundef %11) #14
  %12 = load ptr, ptr @kts, align 4
  tail call void @kfree(ptr noundef %12) #14
  %13 = load ptr, ptr @ktiowq, align 4
  tail call void @kfree(ptr noundef %13) #14
  %14 = load ptr, ptr @empty_page, align 4
  %call = tail call ptr @page_address(ptr noundef %14) #14
  %15 = ptrtoint ptr %call to i32
  tail call void @free_pages(i32 noundef %15, i32 noundef 0) #14
  store ptr null, ptr @empty_page, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @probe(ptr noundef %t) unnamed_addr #0 align 64 {
entry:
  %queue = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %queue) #14
  %0 = getelementptr inbounds i8, ptr %queue, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %d1 = getelementptr inbounds %struct.aoetgt, ptr %t, i32 0, i32 2
  %2 = ptrtoint ptr %d1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d1, align 4
  %call = tail call fastcc ptr @newtframe(ptr noundef %3, ptr noundef %t)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %aoemajor = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %aoemajor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %aoemajor, align 8
  %aoeminor = getelementptr inbounds %struct.aoedev, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %aoeminor to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %aoeminor, align 4
  %conv = zext i16 %7 to i32
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22, ptr noundef %t, i32 noundef %5, i32 noundef %conv, ptr noundef nonnull @.str.23) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.frame, ptr %call, i32 0, i32 10
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags, align 4
  %10 = or i8 %9, 1
  store i8 %10, ptr %flags, align 4
  %ifp1.i = getelementptr inbounds %struct.aoetgt, ptr %t, i32 0, i32 5
  %11 = ptrtoint ptr %ifp1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ifp1.i, align 4
  %incdec.ptr.i = getelementptr %struct.aoeif, ptr %12, i32 1
  %ifs.i = getelementptr inbounds %struct.aoetgt, ptr %t, i32 0, i32 4
  %cmp.not.i = icmp ult ptr %incdec.ptr.i, %ifp1.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %if.end
  %13 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incdec.ptr.i, align 4
  %cmp2.i = icmp eq ptr %14, null
  br i1 %cmp2.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.end7.i_crit_edge

lor.lhs.false.i.if.end7.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %15 = ptrtoint ptr %ifs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load ptr, ptr %ifs.i, align 4
  %cmp5.i = icmp eq ptr %.pr.i, null
  br i1 %cmp5.i, label %if.end.i.ifrotate.exit_crit_edge, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.end.i.ifrotate.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ifrotate.exit

if.end7.i:                                        ; preds = %if.end.i.if.end7.i_crit_edge, %lor.lhs.false.i.if.end7.i_crit_edge
  %ifp.018.i = phi ptr [ %ifs.i, %if.end.i.if.end7.i_crit_edge ], [ %incdec.ptr.i, %lor.lhs.false.i.if.end7.i_crit_edge ]
  %16 = ptrtoint ptr %ifp1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ifp.018.i, ptr %ifp1.i, align 4
  br label %ifrotate.exit

ifrotate.exit:                                    ; preds = %if.end7.i, %if.end.i.ifrotate.exit_crit_edge
  %17 = ptrtoint ptr %d1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d1, align 4
  %maxbcnt = getelementptr inbounds %struct.aoedev, ptr %18, i32 0, i32 25
  %19 = ptrtoint ptr %maxbcnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %maxbcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool7.not = icmp eq i32 %20, 0
  %spec.select = select i1 %tobool7.not, i32 1024, i32 %20
  %bi_size = getelementptr inbounds %struct.frame, ptr %call, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %bi_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select, ptr %bi_size, align 8
  tail call fastcc void @ata_rw_frameinit(ptr noundef nonnull %call)
  %skb10 = getelementptr inbounds %struct.frame, ptr %call, i32 0, i32 6
  %22 = ptrtoint ptr %skb10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb10, align 4
  %24 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not64 = icmp eq i32 %25, 0
  br i1 %cmp.not64, label %ifrotate.exit.for.end_crit_edge, label %for.body.lr.ph

ifrotate.exit.for.end_crit_edge:                  ; preds = %ifrotate.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %ifrotate.exit
  %26 = load ptr, ptr @empty_page, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 17
  %27 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %26 to i32
  %pfmemalloc.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %skb_fill_page_desc.exit.for.body_crit_edge, %for.body.lr.ph
  %frag.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %skb_fill_page_desc.exit.for.body_crit_edge ]
  %n.065 = phi i32 [ %25, %for.body.lr.ph ], [ %sub, %skb_fill_page_desc.exit.for.body_crit_edge ]
  %29 = tail call i32 @llvm.umin.i32(i32 %n.065, i32 4096)
  %30 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %end.i.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.skb_shared_info, ptr %31, i32 0, i32 12, i32 %frag.066
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %26, ptr %arrayidx.i.i, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %31, i32 0, i32 12, i32 %frag.066, i32 2
  %33 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %bv_offset.i.i, align 4
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %31, i32 0, i32 12, i32 %frag.066, i32 1
  %34 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %29, ptr %bv_len.i.i.i, align 4
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %27, align 4
  %and.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !170

for.body._compound_head.exit.i.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i = add i32 %36, -1
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %for.body._compound_head.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %28, %for.body._compound_head.exit.i.i_crit_edge ]
  %37 = inttoptr i32 %retval.0.i.i.i to ptr
  %38 = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %40 to i32
  %and.i8.i.i = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i8.i.i, 0
  br i1 %tobool.i.not.i.i, label %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge, label %if.then.i.i

_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_fill_page_desc.exit

if.then.i.i:                                      ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %pfmemalloc.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i.i = load i8, ptr %pfmemalloc.i.i, align 2
  %bf.set.i.i = or i8 %bf.load.i.i, 2
  store i8 %bf.set.i.i, ptr %pfmemalloc.i.i, align 2
  br label %skb_fill_page_desc.exit

skb_fill_page_desc.exit:                          ; preds = %if.then.i.i, %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge
  %43 = trunc i32 %frag.066 to i8
  %conv.i = add i8 %43, 1
  %44 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv.i, ptr %nr_frags.i, align 2
  %inc = add i32 %frag.066, 1
  %sub = sub i32 %n.065, %29
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %skb_fill_page_desc.exit.for.end_crit_edge, label %skb_fill_page_desc.exit.for.body_crit_edge

skb_fill_page_desc.exit.for.body_crit_edge:       ; preds = %skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

skb_fill_page_desc.exit.for.end_crit_edge:        ; preds = %skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %skb_fill_page_desc.exit.for.end_crit_edge, %ifrotate.exit.for.end_crit_edge
  %47 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bi_size, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 6
  %49 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len, align 4
  %add = add i32 %50, %48
  store i32 %add, ptr %len, align 4
  %51 = load i32, ptr %bi_size, align 8
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 7
  %52 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %data_len, align 8
  %53 = load i32, ptr %bi_size, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 20
  %54 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %truesize, align 8
  %add24 = add i32 %55, %53
  store i32 %add24, ptr %truesize, align 8
  %56 = ptrtoint ptr %skb10 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skb10, align 4
  %call26 = tail call ptr @skb_clone(ptr noundef %57, i32 noundef 2592) #14
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %for.end.cleanup_crit_edge, label %if.then28

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then28:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %call29 = tail call i64 @ktime_get() #14
  %sent = getelementptr inbounds %struct.frame, ptr %call, i32 0, i32 2
  %58 = ptrtoint ptr %sent to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %call29, ptr %sent, align 8
  %prev.i = getelementptr inbounds %struct.anon.65, ptr %queue, i32 0, i32 1
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 1
  %59 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %qlen.i, align 4
  %60 = ptrtoint ptr %call26 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %queue, ptr %call26, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.44, ptr %call26, i32 0, i32 1
  %61 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %queue, ptr %prev10.i.i.i, align 4
  %62 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %call26, ptr %prev.i, align 4
  %63 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %call26, ptr %queue, align 4
  %64 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %64, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  call void @aoenet_xmit(ptr noundef nonnull %queue) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %for.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %queue) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @newtframe(ptr noundef %d, ptr noundef %t) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ffree = getelementptr inbounds %struct.aoetgt, ptr %t, i32 0, i32 3
  %0 = ptrtoint ptr %ffree to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ffree, align 4
  %cmp.i.not = icmp eq ptr %1, %ffree
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %falloc = getelementptr inbounds %struct.aoetgt, ptr %t, i32 0, i32 10
  %2 = ptrtoint ptr %falloc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %falloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %3)
  %cmp = icmp ugt i32 %3, 511
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 72) #21
  %cmp3 = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %falloc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %falloc, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %falloc, align 4
  %t7 = getelementptr inbounds %struct.frame, ptr %call7.i.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %t7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %t, ptr %t7, align 8
  br label %if.end9

if.else:                                          ; preds = %entry
  %call.i.i56 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #14
  br i1 %call.i.i56, label %if.end.i.i, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else.list_del.exit_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %list_del.exit, %if.end5
  %f.0 = phi ptr [ %call7.i.i.i, %if.end5 ], [ %1, %list_del.exit ]
  %skb10 = getelementptr inbounds %struct.frame, ptr %f.0, i32 0, i32 6
  %16 = ptrtoint ptr %skb10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb10, align 4
  %cmp11 = icmp eq ptr %17, null
  br i1 %cmp11, label %if.then12, label %if.end9.if.end18_crit_edge

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then12:                                        ; preds = %if.end9
  %call.i.i57 = tail call ptr @__alloc_skb(i32 noundef 236, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #14
  %tobool.not.i = icmp eq ptr %call.i.i57, null
  br i1 %tobool.not.i, label %new_skb.exit.thread, label %new_skb.exit

new_skb.exit.thread:                              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %skb10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %skb10, align 4
  br label %bail

new_skb.exit:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i57, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 176
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i57, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %22, i32 176
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i57, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i57, i32 0, i32 15, i32 0, i32 21
  %25 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i57, i32 0, i32 15, i32 0, i32 20
  %26 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i57, i32 0, i32 15, i32 0, i32 18
  %27 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -30558, ptr %protocol.i, align 8
  %28 = ptrtoint ptr %skb10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i57, ptr %skb10, align 4
  br label %if.end18

bail:                                             ; preds = %land.lhs.true7.i.bail_crit_edge, %if.end.i.bail_crit_edge, %new_skb.exit.thread
  %t1.i = getelementptr inbounds %struct.frame, ptr %f.0, i32 0, i32 5
  %29 = ptrtoint ptr %t1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %t1.i, align 8
  %r_skb.i = getelementptr inbounds %struct.frame, ptr %f.0, i32 0, i32 7
  %ffree.i = getelementptr inbounds %struct.aoetgt, ptr %30, i32 0, i32 3
  %31 = call ptr @memset(ptr %r_skb.i, i32 0, i32 29)
  %32 = ptrtoint ptr %ffree.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ffree.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %f.0, ptr noundef %ffree.i, ptr noundef %33) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %bail.cleanup_crit_edge

bail.cleanup_crit_edge:                           ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i.i:                                     ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i58 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %f.0, ptr %prev1.i.i.i58, align 4
  %35 = ptrtoint ptr %f.0 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %f.0, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %f.0, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %ffree.i, ptr %prev3.i.i.i, align 4
  %37 = ptrtoint ptr %ffree.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %f.0, ptr %ffree.i, align 4
  br label %cleanup

if.end18:                                         ; preds = %new_skb.exit, %if.end9.if.end18_crit_edge
  %skb.0 = phi ptr [ %call.i.i57, %new_skb.exit ], [ %17, %if.end9.if.end18_crit_edge ]
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 17
  %38 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %end.i, align 4
  %dataref = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref, i32 noundef 4) #14
  %40 = ptrtoint ptr %dataref to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %dataref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp21.not = icmp eq i32 %41, 1
  br i1 %cmp21.not, label %if.end18.if.end29_crit_edge, label %if.then22

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then22:                                        ; preds = %if.end18
  %skbpool.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 22
  %42 = ptrtoint ptr %skbpool.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skbpool.i, align 4
  %cmp.i.i = icmp eq ptr %43, %skbpool.i
  %tobool.not20.i = icmp eq ptr %43, null
  %tobool.not.i59 = or i1 %cmp.i.i, %tobool.not20.i
  br i1 %tobool.not.i59, label %if.then22.if.end.i_crit_edge, label %land.lhs.true.i

if.then22.if.end.i_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then22
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 17
  %44 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %45, i32 0, i32 10
  %call.i.i.i60 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #14
  %46 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %dataref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp.i61 = icmp eq i32 %47, 1
  br i1 %cmp.i61, label %if.then.i62, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i62:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %qlen.i.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 22, i32 1
  %48 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %43, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.44, ptr %43, i32 0, i32 1
  %52 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %43, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.44, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %53, ptr %prev17.i.i, align 4
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %51, ptr %53, align 8
  br label %if.end26

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then22.if.end.i_crit_edge
  %qlen.i18.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 22, i32 1
  %56 = ptrtoint ptr %qlen.i18.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %qlen.i18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %57)
  %cmp6.i = icmp ult i32 %57, 256
  br i1 %cmp6.i, label %land.lhs.true7.i, label %if.end.i.bail_crit_edge

if.end.i.bail_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail

land.lhs.true7.i:                                 ; preds = %if.end.i
  %call.i.i19.i = tail call ptr @__alloc_skb(i32 noundef 236, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i19.i, null
  br i1 %tobool.not.i.i, label %land.lhs.true7.i.bail_crit_edge, label %new_skb.exit.i

land.lhs.true7.i.bail_crit_edge:                  ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail

new_skb.exit.i:                                   ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i19.i, i32 0, i32 19
  %58 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %59, i32 176
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i19.i, i32 0, i32 16
  %60 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %61, i32 176
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i19.i, i32 0, i32 18
  %62 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %63 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i19.i, i32 0, i32 15, i32 0, i32 21
  %64 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i19.i, i32 0, i32 15, i32 0, i32 20
  %65 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i19.i, i32 0, i32 15, i32 0, i32 18
  %66 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 -30558, ptr %protocol.i.i, align 8
  br label %if.end26

if.end26:                                         ; preds = %new_skb.exit.i, %if.then.i62
  %retval.0.i = phi ptr [ %43, %if.then.i62 ], [ %call.i.i19.i, %new_skb.exit.i ]
  %67 = ptrtoint ptr %skb10 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %skb10, align 4
  %prev.i.i.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 22, i32 0, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i.i.i, align 4
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %skbpool.i, ptr %68, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.44, ptr %68, i32 0, i32 1
  %72 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %70, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %68, ptr %prev.i.i.i, align 4
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %68, ptr %70, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 22, i32 1
  %74 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %75, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  store ptr %retval.0.i, ptr %skb10, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end26, %if.end18.if.end29_crit_edge
  %skb.1 = phi ptr [ %retval.0.i, %if.end26 ], [ %skb.0, %if.end18.if.end29_crit_edge ]
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 7
  %76 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data_len, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 20
  %78 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %truesize, align 8
  %sub = sub i32 %79, %77
  store i32 %sub, ptr %truesize, align 8
  store i32 0, ptr %data_len, align 8
  %end.i64 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 17
  %80 = ptrtoint ptr %end.i64 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %end.i64, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %nr_frags to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %nr_frags, align 2
  tail call void @skb_trim(ptr noundef nonnull %skb.1, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end.i.i.i, %bail.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %f.0, %if.end29 ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %bail.cleanup_crit_edge ], [ null, %if.end.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ata_rw_frameinit(ptr noundef %f) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %skb1 = getelementptr inbounds %struct.frame, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %add.ptr = getelementptr %struct.aoe_hdr, ptr %add.ptr.i, i32 1
  %call2 = tail call ptr @skb_put(ptr noundef %1, i32 noundef 36) #14
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %8 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %7)
  %t3 = getelementptr inbounds %struct.frame, ptr %f, i32 0, i32 5
  %9 = ptrtoint ptr %t3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %t3, align 8
  %d = getelementptr inbounds %struct.aoetgt, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %and.i.i = and i32 %13, 65535
  %lasttag.i.i = getelementptr inbounds %struct.aoedev, ptr %12, i32 0, i32 9
  %14 = ptrtoint ptr %lasttag.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %lasttag.i.i, align 4
  %inc.i.i = add i16 %15, 1
  store i16 %inc.i.i, ptr %lasttag.i.i, align 4
  %16 = and i16 %inc.i.i, 32767
  %and1.i.i = zext i16 %16 to i32
  %shl.i.i = shl nuw nsw i32 %and1.i.i, 16
  %or.i.i = or i32 %shl.i.i, %and.i.i
  %src.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i, i32 0, i32 1
  %ifp.i = getelementptr inbounds %struct.aoetgt, ptr %10, i32 0, i32 5
  %17 = ptrtoint ptr %ifp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ifp.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 86
  %21 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_addr.i, align 64
  %23 = call ptr @memcpy(ptr %src.i, ptr %22, i32 6)
  %24 = call ptr @memcpy(ptr %add.ptr.i, ptr %10, i32 6)
  %type.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i, i32 0, i32 2
  %25 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -30558, ptr %type.i, align 4
  %verfl.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i, i32 0, i32 3
  %26 = ptrtoint ptr %verfl.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 16, ptr %verfl.i, align 2
  %aoemajor.i = getelementptr inbounds %struct.aoedev, ptr %12, i32 0, i32 2
  %27 = ptrtoint ptr %aoemajor.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %aoemajor.i, align 8
  %conv.i91 = trunc i32 %28 to i16
  %major.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i, i32 0, i32 5
  %29 = ptrtoint ptr %major.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i91, ptr %major.i, align 4
  %aoeminor.i = getelementptr inbounds %struct.aoedev, ptr %12, i32 0, i32 5
  %30 = ptrtoint ptr %aoeminor.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %aoeminor.i, align 4
  %conv3.i = trunc i16 %31 to i8
  %minor.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i, i32 0, i32 6
  %32 = ptrtoint ptr %minor.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv3.i, ptr %minor.i, align 2
  %cmd.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i, i32 0, i32 7
  %33 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %cmd.i, align 1
  %tag.i = getelementptr inbounds %struct.aoe_hdr, ptr %add.ptr.i, i32 0, i32 8
  %34 = ptrtoint ptr %tag.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i.i, ptr %tag.i, align 4
  %tag = getelementptr inbounds %struct.frame, ptr %f, i32 0, i32 1
  %35 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i.i, ptr %tag, align 8
  %36 = load ptr, ptr %t3, align 8
  %d1.i = getelementptr inbounds %struct.aoetgt, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %d1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d1.i, align 4
  %rem.i = urem i32 %or.i.i, 61
  %arrayidx.i = getelementptr %struct.aoedev, ptr %38, i32 0, i32 26, i32 %rem.i
  %prev.i.i = getelementptr %struct.aoedev, ptr %38, i32 0, i32 26, i32 %rem.i, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %f, ptr noundef %40, ptr noundef %arrayidx.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.fhash.exit_crit_edge

entry.fhash.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %fhash.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %f, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx.i, ptr %f, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %f, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %f, ptr %40, align 4
  br label %fhash.exit

fhash.exit:                                       ; preds = %if.end.i.i.i, %entry.fhash.exit_crit_edge
  %nout = getelementptr inbounds %struct.aoetgt, ptr %10, i32 0, i32 6
  %45 = ptrtoint ptr %nout to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %nout, align 4
  %inc = add i16 %46, 1
  store i16 %inc, ptr %nout, align 4
  %waited = getelementptr inbounds %struct.frame, ptr %f, i32 0, i32 3
  %47 = ptrtoint ptr %waited to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %waited, align 8
  %waited_total = getelementptr inbounds %struct.frame, ptr %f, i32 0, i32 4
  %48 = ptrtoint ptr %waited_total to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %waited_total, align 4
  %iter = getelementptr inbounds %struct.frame, ptr %f, i32 0, i32 9
  %bi_size = getelementptr inbounds %struct.frame, ptr %f, i32 0, i32 9, i32 1
  %49 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %50, 9
  %conv = trunc i32 %shr to i8
  %scnt = getelementptr %struct.aoe_hdr, ptr %add.ptr.i, i32 1, i32 0, i32 2
  %51 = ptrtoint ptr %scnt to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv, ptr %scnt, align 1
  %52 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %iter, align 8
  %conv.i93 = trunc i64 %53 to i8
  %lba0.i = getelementptr inbounds %struct.aoe_atahdr, ptr %add.ptr, i32 0, i32 4
  %54 = ptrtoint ptr %lba0.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv.i93, ptr %lba0.i, align 1
  %shr.i = lshr i64 %53, 8
  %conv1.i = trunc i64 %shr.i to i8
  %lba1.i = getelementptr inbounds %struct.aoe_atahdr, ptr %add.ptr, i32 0, i32 5
  %55 = ptrtoint ptr %lba1.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv1.i, ptr %lba1.i, align 1
  %shr2.i = lshr i64 %53, 16
  %conv3.i94 = trunc i64 %shr2.i to i8
  %lba2.i = getelementptr inbounds %struct.aoe_atahdr, ptr %add.ptr, i32 0, i32 6
  %56 = ptrtoint ptr %lba2.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv3.i94, ptr %lba2.i, align 1
  %shr4.i = lshr i64 %53, 24
  %conv5.i = trunc i64 %shr4.i to i8
  %lba3.i = getelementptr inbounds %struct.aoe_atahdr, ptr %add.ptr, i32 0, i32 7
  %57 = ptrtoint ptr %lba3.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv5.i, ptr %lba3.i, align 1
  %shr6.i = lshr i64 %53, 32
  %conv7.i = trunc i64 %shr6.i to i8
  %lba4.i = getelementptr inbounds %struct.aoe_atahdr, ptr %add.ptr, i32 0, i32 8
  %58 = ptrtoint ptr %lba4.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv7.i, ptr %lba4.i, align 1
  %shr8.i = lshr i64 %53, 40
  %conv9.i = trunc i64 %shr8.i to i8
  %lba5.i = getelementptr inbounds %struct.aoe_atahdr, ptr %add.ptr, i32 0, i32 9
  %59 = ptrtoint ptr %lba5.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv9.i, ptr %lba5.i, align 1
  %60 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %d, align 4
  %flags = getelementptr inbounds %struct.aoedev, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %flags, align 2
  %64 = and i16 %63, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool.not = icmp eq i16 %64, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %fhash.exit
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %add.ptr, align 1
  %67 = or i8 %66, 64
  store i8 %67, ptr %add.ptr, align 1
  br label %if.end

if.else:                                          ; preds = %fhash.exit
  call void @__sanitizer_cov_trace_pc() #16
  %lba3 = getelementptr %struct.aoe_hdr, ptr %add.ptr.i, i32 1, i32 1, i32 1
  %68 = ptrtoint ptr %lba3 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %lba3, align 1
  %70 = and i8 %69, 15
  %71 = or i8 %70, -32
  store i8 %71, ptr %lba3, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %extbit.0 = phi i8 [ 4, %if.then ], [ 0, %if.else ]
  %buf = getelementptr inbounds %struct.frame, ptr %f, i32 0, i32 8
  %72 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %buf, align 4
  %tobool17.not = icmp eq ptr %73, null
  br i1 %tobool17.not, label %if.end.if.else40_crit_edge, label %land.lhs.true

if.end.if.else40_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else40

land.lhs.true:                                    ; preds = %if.end
  %bio = getelementptr inbounds %struct.buf, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bio, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.else40_crit_edge, label %if.then23

land.lhs.true.if.else40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else40

if.then23:                                        ; preds = %land.lhs.true
  %78 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %.unpack86 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack86)
  %tobool.not57.i = icmp eq i32 %.unpack86, 0
  br i1 %tobool.not57.i, label %if.then23.skb_fillup.exit_crit_edge, label %land.rhs.lr.ph.i

if.then23.skb_fillup.exit_crit_edge:              ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_fillup.exit

land.rhs.lr.ph.i:                                 ; preds = %if.then23
  %.elt89 = getelementptr inbounds %struct.frame, ptr %f, i32 0, i32 9, i32 3
  %79 = ptrtoint ptr %.elt89 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.unpack90 = load i32, ptr %.elt89, align 8
  %.elt87 = getelementptr inbounds %struct.frame, ptr %f, i32 0, i32 9, i32 2
  %80 = ptrtoint ptr %.elt87 to i32
  call void @__asan_load4_noabort(i32 %80)
  %.unpack88 = load i32, ptr %.elt87, align 4
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %75, i32 0, i32 20
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %pfmemalloc.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 12
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %frag.063.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.4.060.i = phi i32 [ %.unpack86, %land.rhs.lr.ph.i ], [ %sub.i.i.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.8.059.i = phi i32 [ %.unpack88, %land.rhs.lr.ph.i ], [ %iter.sroa.8.2.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.14.058.i = phi i32 [ %.unpack90, %land.rhs.lr.ph.i ], [ %iter.sroa.14.1.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %81 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bi_io_vec.i, align 8
  %arrayidx.i95 = getelementptr %struct.bio_vec, ptr %82, i32 %iter.sroa.8.059.i
  %83 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i95, align 4
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %82, i32 %iter.sroa.8.059.i, i32 2
  %85 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %bv_offset.i, align 4
  %add.i = add i32 %86, %iter.sroa.14.058.i
  %div46.i = lshr i32 %add.i, 12
  %add.ptr.i96 = getelementptr %struct.page, ptr %84, i32 %div46.i
  %bv_len9.i = getelementptr %struct.bio_vec, ptr %82, i32 %iter.sroa.8.059.i, i32 1
  %87 = ptrtoint ptr %bv_len9.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bv_len9.i, align 4
  %sub.i = sub i32 %88, %iter.sroa.14.058.i
  %89 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.4.060.i, i32 %sub.i) #14
  %rem.i97 = and i32 %add.i, 4095
  %sub17.i = sub nuw nsw i32 4096, %rem.i97
  %90 = tail call i32 @llvm.umin.i32(i32 %89, i32 %sub17.i) #14
  %inc.i = add i32 %frag.063.i, 1
  %91 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %end.i.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.skb_shared_info, ptr %92, i32 0, i32 12, i32 %frag.063.i
  %93 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %add.ptr.i96, ptr %arrayidx.i.i.i, align 4
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %92, i32 0, i32 12, i32 %frag.063.i, i32 2
  %94 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %rem.i97, ptr %bv_offset.i.i.i, align 4
  %bv_len.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %92, i32 0, i32 12, i32 %frag.063.i, i32 1
  %95 = ptrtoint ptr %bv_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %90, ptr %bv_len.i.i.i.i, align 4
  %96 = getelementptr %struct.page, ptr %84, i32 %div46.i, i32 1
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %96, align 4
  %and.i.i.i.i = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !170

if.then.i.i.i.i:                                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i.i = add i32 %98, -1
  br label %_compound_head.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  %99 = ptrtoint ptr %add.ptr.i96 to i32
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %99, %if.end.i.i.i.i ]
  %100 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %101 = getelementptr inbounds %struct.page, ptr %100, i32 0, i32 1
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %104 = ptrtoint ptr %103 to i32
  %and.i8.i.i.i = and i32 %104, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i8.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %_compound_head.exit.i.i.i.skb_fill_page_desc.exit.i_crit_edge, label %if.then.i.i.i

_compound_head.exit.i.i.i.skb_fill_page_desc.exit.i_crit_edge: ; preds = %_compound_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_fill_page_desc.exit.i

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %105 = ptrtoint ptr %pfmemalloc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load.i.i.i = load i8, ptr %pfmemalloc.i.i.i, align 2
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, 2
  store i8 %bf.set.i.i.i, ptr %pfmemalloc.i.i.i, align 2
  br label %skb_fill_page_desc.exit.i

skb_fill_page_desc.exit.i:                        ; preds = %if.then.i.i.i, %_compound_head.exit.i.i.i.skb_fill_page_desc.exit.i_crit_edge
  %106 = trunc i32 %frag.063.i to i8
  %conv.i.i = add i8 %106, 1
  %107 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %end.i.i.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv.i.i, ptr %nr_frags.i.i, align 2
  %110 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %bi_opf, align 8
  %and.i.i.i = and i32 %111, 255
  %112 = add nsw i32 %and.i.i.i, -3
  %switch.and.i.i.i = and i32 %112, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %switch.and.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i, label %skb_fill_page_desc.exit.i.bio_advance_iter_single.exit.i_crit_edge, label %if.else.i.i

skb_fill_page_desc.exit.i.bio_advance_iter_single.exit.i_crit_edge: ; preds = %skb_fill_page_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_advance_iter_single.exit.i

if.else.i.i:                                      ; preds = %skb_fill_page_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %113 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bi_io_vec.i, align 8
  %add.i.i.i = add i32 %90, %iter.sroa.14.058.i
  %bv_len.i.i.i = getelementptr %struct.bio_vec, ptr %114, i32 %iter.sroa.8.059.i, i32 1
  %115 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %bv_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %116)
  %cmp.i.i.i = icmp eq i32 %add.i.i.i, %116
  %spec.select.i = select i1 %cmp.i.i.i, i32 0, i32 %add.i.i.i
  %inc.i.i.i = zext i1 %cmp.i.i.i to i32
  %spec.select56.i = add i32 %iter.sroa.8.059.i, %inc.i.i.i
  br label %bio_advance_iter_single.exit.i

bio_advance_iter_single.exit.i:                   ; preds = %if.else.i.i, %skb_fill_page_desc.exit.i.bio_advance_iter_single.exit.i_crit_edge
  %iter.sroa.14.1.i = phi i32 [ %iter.sroa.14.058.i, %skb_fill_page_desc.exit.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select.i, %if.else.i.i ]
  %iter.sroa.8.2.i = phi i32 [ %iter.sroa.8.059.i, %skb_fill_page_desc.exit.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select56.i, %if.else.i.i ]
  %sub.i.i.i = sub i32 %iter.sroa.4.060.i, %90
  %tobool.not.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool.not.i, label %bio_advance_iter_single.exit.i.skb_fillup.exit_crit_edge, label %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge

bio_advance_iter_single.exit.i.land.rhs.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

bio_advance_iter_single.exit.i.skb_fillup.exit_crit_edge: ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_fillup.exit

skb_fillup.exit:                                  ; preds = %bio_advance_iter_single.exit.i.skb_fillup.exit_crit_edge, %if.then23.skb_fillup.exit_crit_edge
  %117 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %add.ptr, align 1
  %119 = or i8 %118, 1
  store i8 %119, ptr %add.ptr, align 1
  %120 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bi_size, align 8
  %122 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %len, align 4
  %add = add i32 %123, %121
  store i32 %add, ptr %len, align 4
  %124 = load i32, ptr %bi_size, align 8
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %125 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %data_len, align 8
  %126 = load i32, ptr %bi_size, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 20
  %127 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %truesize, align 8
  %add38 = add i32 %128, %126
  store i32 %add38, ptr %truesize, align 8
  %wpkts = getelementptr inbounds %struct.aoetgt, ptr %10, i32 0, i32 13
  br label %if.end42

if.else40:                                        ; preds = %land.lhs.true.if.else40_crit_edge, %if.end.if.else40_crit_edge
  %rpkts = getelementptr inbounds %struct.aoetgt, ptr %10, i32 0, i32 14
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %skb_fillup.exit
  %rpkts.sink98 = phi ptr [ %rpkts, %if.else40 ], [ %wpkts, %skb_fillup.exit ]
  %writebit.0 = phi i8 [ 32, %if.else40 ], [ 48, %skb_fillup.exit ]
  %129 = ptrtoint ptr %rpkts.sink98 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rpkts.sink98, align 4
  %inc41 = add i32 %130, 1
  store i32 %inc41, ptr %rpkts.sink98, align 4
  %or46 = or i8 %writebit.0, %extbit.0
  %cmdstat = getelementptr %struct.aoe_hdr, ptr %add.ptr.i, i32 1, i32 0, i32 3
  %131 = ptrtoint ptr %cmdstat to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %or46, ptr %cmdstat, align 1
  %132 = ptrtoint ptr %ifp.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ifp.i, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %136 = getelementptr inbounds %struct.anon.44, ptr %1, i32 0, i32 2
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %135, ptr %136, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_aoe_netif(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aoedev_downdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !44, !46, !48, !50, !52, !54, !55, !57, !58, !60, !62, !63, !64, !65, !66, !67, !69, !70, !71, !72, !74, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !90, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !159}
!llvm.named.register.sp = !{!160}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @__param_aoe_deadsecs, !1, !"__param_aoe_deadsecs", i1 false, i1 false}
!1 = !{!"../drivers/block/aoe/aoecmd.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_aoe_deadsecstype371, !1, !"__UNIQUE_ID_aoe_deadsecstype371", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_aoe_deadsecs372, !4, !"__UNIQUE_ID_aoe_deadsecs372", i1 false, i1 false}
!4 = !{!"../drivers/block/aoe/aoecmd.c", i32 31, i32 1}
!5 = !{ptr @__param_aoe_maxout, !6, !"__param_aoe_maxout", i1 false, i1 false}
!6 = !{!"../drivers/block/aoe/aoecmd.c", i32 34, i32 1}
!7 = !{ptr @__UNIQUE_ID_aoe_maxouttype373, !6, !"__UNIQUE_ID_aoe_maxouttype373", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_aoe_maxout374, !9, !"__UNIQUE_ID_aoe_maxout374", i1 false, i1 false}
!9 = !{!"../drivers/block/aoe/aoecmd.c", i32 35, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/block/aoe/aoecmd.c", i32 1259, i32 9}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/block/aoe/aoecmd.c", i32 1307, i32 31}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/block/aoe/aoecmd.c", i32 1332, i32 6}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/block/aoe/aoecmd.c", i32 1333, i32 6}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/block/aoe/aoecmd.c", i32 1537, i32 3}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @aoecmd_cfg_rsp._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @aoecmd_cfg_rsp._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/block/aoe/aoecmd.c", i32 1542, i32 3}
!26 = !{ptr @aoecmd_cfg_rsp._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @aoecmd_cfg_rsp._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/block/aoe/aoecmd.c", i32 1547, i32 3}
!30 = !{ptr @aoecmd_cfg_rsp._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @aoecmd_cfg_rsp._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/block/aoe/aoecmd.c", i32 1558, i32 3}
!34 = !{ptr @aoecmd_cfg_rsp._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @aoecmd_cfg_rsp._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @aoecmd_init.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/block/aoe/aoecmd.c", i32 1706, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @aoecmd_init.__key.17, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/block/aoe/aoecmd.c", i32 1707, i32 3}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/block/aoe/aoecmd.c", i32 1708, i32 46}
!44 = !{ptr @ncpus, !45, !"ncpus", i1 false, i1 false}
!45 = !{!"../drivers/block/aoe/aoecmd.c", i32 45, i32 12}
!46 = !{ptr @ktiowq, !47, !"ktiowq", i1 false, i1 false}
!47 = !{!"../drivers/block/aoe/aoecmd.c", i32 50, i32 27}
!48 = !{ptr @kts, !49, !"kts", i1 false, i1 false}
!49 = !{!"../drivers/block/aoe/aoecmd.c", i32 51, i32 24}
!50 = !{ptr @iocq, !51, !"iocq", i1 false, i1 false}
!51 = !{!"../drivers/block/aoe/aoecmd.c", i32 58, i32 26}
!52 = !{ptr @empty_page, !53, !"empty_page", i1 false, i1 false}
!53 = !{!"../drivers/block/aoe/aoecmd.c", i32 60, i32 21}
!54 = !{ptr @__param_str_aoe_deadsecs, !1, !"__param_str_aoe_deadsecs", i1 false, i1 false}
!55 = !{ptr @aoe_deadsecs, !56, !"aoe_deadsecs", i1 false, i1 false}
!56 = !{!"../drivers/block/aoe/aoecmd.c", i32 29, i32 12}
!57 = !{ptr @__param_str_aoe_maxout, !6, !"__param_str_aoe_maxout", i1 false, i1 false}
!58 = !{ptr @aoe_maxout, !59, !"aoe_maxout", i1 false, i1 false}
!59 = !{!"../drivers/block/aoe/aoecmd.c", i32 33, i32 12}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/block/aoe/aoecmd.c", i32 592, i32 3}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @probe._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @probe._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/block/aoe/aoecmd.c", i32 466, i32 3}
!69 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @resend._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @resend._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/block/aoe/aoecmd.c", i32 474, i32 4}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/block/aoe/aoecmd.c", i32 475, i32 4}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/block/aoe/aoecmd.c", i32 866, i32 3}
!78 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @nextbuf._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @nextbuf._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../include/linux/bvec.h", i32 106, i32 6}
!83 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @init_completion.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../include/linux/completion.h", i32 87, i32 2}
!87 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../drivers/block/aoe/aoecmd.c", i32 1233, i32 4}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../drivers/block/aoe/aoecmd.c", i32 421, i32 2}
!92 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/block/aoe/aoecmd.c", i32 428, i32 4}
!95 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @aoecmd_cfg_pkts._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @aoecmd_cfg_pkts._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!100 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!104 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/block/aoe/aoecmd.c", i32 259, i32 3}
!107 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @newframe._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @newframe._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/block/aoe/aoecmd.c", i32 1460, i32 2}
!112 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @addtgt._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @addtgt._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/block/aoe/aoecmd.c", i32 1504, i32 4}
!117 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @setifbcnt._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @setifbcnt._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/block/aoe/aoecmd.c", i32 1477, i32 3}
!122 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @setdbcnt._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @setdbcnt._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/block/aoe/aoecmd.c", i32 1100, i32 3}
!127 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ktiocomplete._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @ktiocomplete._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.50, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/block/aoe/aoecmd.c", i32 1113, i32 4}
!132 = !{ptr @ktiocomplete._entry.49, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @ktiocomplete._entry_ptr.51, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/block/aoe/aoecmd.c", i32 1121, i32 4}
!137 = !{ptr @ktiocomplete._rs, !136, !"_rs", i1 false, i1 false}
!138 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @ktiocomplete._entry.54, !136, !"_entry", i1 false, i1 false}
!140 = !{ptr @ktiocomplete._entry_ptr.56, !136, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/block/aoe/aoecmd.c", i32 1140, i32 4}
!144 = !{ptr @ktiocomplete._entry.58, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @ktiocomplete._entry_ptr.60, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/block/aoe/aoecmd.c", i32 1153, i32 3}
!149 = !{ptr @ktiocomplete._entry.62, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @ktiocomplete._entry_ptr.64, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.65, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/block/aoe/aoecmd.c", i32 959, i32 3}
!153 = !{ptr @.str.66, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @ataid_complete._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @ataid_complete._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/block/aoe/aoecmd.c", i32 48, i32 8}
!158 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @ktio_spawn_lock, !157, !"ktio_spawn_lock", i1 false, i1 false}
!160 = !{!"sp"}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{!"branch_weights", i32 2000, i32 1}
!171 = !{i64 1055318, i64 1055345, i64 1055367, i64 1055395}
!172 = !{i64 1055726, i64 1055753, i64 1055786, i64 1055807, i64 1055834, i64 1055860}
!173 = !{i64 2149995555}
!174 = !{i64 1095757, i64 1095818}
!175 = !{i64 1098489}
!176 = !{!"branch_weights", i32 1, i32 2000}
!177 = !{i64 1098774}
!178 = !{i64 2149995821}
!179 = !{i64 2153841115}
!180 = !{i64 2152791305}
!181 = !{i64 2152791512}
!182 = !{i64 2153843886}
!183 = !{i64 2156449376, i64 2156449868, i64 2156449413, i64 2156449469, i64 2156449503, i64 2156449527, i64 2156449568, i64 2156449589, i64 2156449617, i64 2156449651}
