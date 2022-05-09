; ModuleID = '/llk/IR_all_yes/net/dsa/dsa2.c_pt.bc'
source_filename = "../net/dsa/dsa2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dsa_switch_find\22, \22a\22\09"
module asm "\09.weak\09__crc_dsa_switch_find\09\09\09\09"
module asm "\09.long\09__crc_dsa_switch_find\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_switch_find:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_switch_find\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_switch_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dsa_register_switch\22, \22a\22\09"
module asm "\09.weak\09__crc_dsa_register_switch\09\09\09\09"
module asm "\09.long\09__crc_dsa_register_switch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_register_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_register_switch\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_register_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dsa_unregister_switch\22, \22a\22\09"
module asm "\09.weak\09__crc_dsa_unregister_switch\09\09\09\09"
module asm "\09.long\09__crc_dsa_unregister_switch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_unregister_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_unregister_switch\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_unregister_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dsa_switch_shutdown\22, \22a\22\09"
module asm "\09.weak\09__crc_dsa_switch_shutdown\09\09\09\09"
module asm "\09.long\09__crc_dsa_switch_shutdown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_switch_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_switch_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_switch_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.devlink_ops = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.dsa_bridge = type { ptr, i32, i8, %struct.refcount_struct }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_notifier_tag_proto_info = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.70, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%union.anon.22 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
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
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.159, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.159 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.134 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.134 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.of_phandle_iterator = type { ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dsa_port = type { %union.anon.145, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.145 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.dsa_chip_data = type { ptr, i32, [12 x ptr], i32, ptr, [12 x ptr], [12 x ptr], [4 x i8] }
%struct.dsa_link = type { ptr, ptr, %struct.list_head }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }

@dsa_tree_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dsa_tree_list, ptr @dsa_tree_list }, [24 x i8] zeroinitializer }, align 32
@dsa_fwd_offloading_bridges = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_dsa_switch_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_switch_find = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_switch_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_switch_find to i32), ptr @__kstrtab_dsa_switch_find, ptr @__kstrtabns_dsa_switch_find }, section "___ksymtab_gpl+dsa_switch_find", align 4
@dsa2_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dsa2_mutex, i64 52), ptr getelementptr (i8, ptr @dsa2_mutex, i64 52) }, ptr @dsa2_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_dsa_register_switch = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_register_switch = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_register_switch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_register_switch to i32), ptr @__kstrtab_dsa_register_switch, ptr @__kstrtabns_dsa_register_switch }, section "___ksymtab_gpl+dsa_register_switch", align 4
@__kstrtab_dsa_unregister_switch = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_unregister_switch = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_unregister_switch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_unregister_switch to i32), ptr @__kstrtab_dsa_unregister_switch, ptr @__kstrtabns_dsa_unregister_switch }, section "___ksymtab_gpl+dsa_unregister_switch", align 4
@__kstrtab_dsa_switch_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_switch_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_switch_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_switch_shutdown to i32), ptr @__kstrtab_dsa_switch_shutdown, ptr @__kstrtabns_dsa_switch_shutdown }, section "___ksymtab_gpl+dsa_switch_shutdown", align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dsa2_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dsa2_mutex\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dsa,member\00", [21 x i8] zeroinitializer }, align 32
@dsa_switch_parse_member_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1520, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"A DSA switch with index %d already exists in tree %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dsa_switch_parse_member_of\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/dsa/dsa2.c\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dsa_switch_parse_member_of._entry_ptr = internal global ptr @dsa_switch_parse_member_of._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ethernet-ports\00", [17 x i8] zeroinitializer }, align 32
@dsa_switch_parse_ports_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 1466, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no ports child node found\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dsa_switch_parse_ports_of\00", [38 x i8] zeroinitializer }, align 32
@dsa_switch_parse_ports_of._entry_ptr = internal global ptr @dsa_switch_parse_ports_of._entry, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@dsa_switch_parse_ports_of._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.5, i32 1480, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"port %pOF index %u exceeds num_ports (%u)\0A\00", [53 x i8] zeroinitializer }, align 32
@dsa_switch_parse_ports_of._entry_ptr.15 = internal global ptr @dsa_switch_parse_ports_of._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ethernet\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dsa-tag-protocol\00", [47 x i8] zeroinitializer }, align 32
@dsa_port_parse_cpu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 1361, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"A DSA switch tree can have only one tagging protocol\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dsa_port_parse_cpu\00", [45 x i8] zeroinitializer }, align 32
@dsa_port_parse_cpu._entry_ptr = internal global ptr @dsa_port_parse_cpu._entry, section ".printk_index", align 4
@dsa_port_parse_cpu._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.5, i32 1371, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Tag protocol cannot be modified\0A\00", [63 x i8] zeroinitializer }, align 32
@dsa_port_parse_cpu._entry_ptr.24 = internal global ptr @dsa_port_parse_cpu._entry.22, section ".printk_index", align 4
@dsa_port_parse_cpu._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.5, i32 1384, ptr @.str.27, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No tagger for this switch\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dsa_port_parse_cpu._entry_ptr.28 = internal global ptr @dsa_port_parse_cpu._entry.25, section ".printk_index", align 4
@dsa_port_parse_cpu._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 1391, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@dsa_port_parse_cpu._entry_ptr.30 = internal global ptr @dsa_port_parse_cpu._entry.29, section ".printk_index", align 4
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eth%d\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsa\00", [28 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@dsa_tree_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 1124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DSA: tree %d already setup! Disjoint trees?\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsa_tree_setup\00", [17 x i8] zeroinitializer }, align 32
@dsa_tree_setup._entry_ptr = internal global ptr @dsa_tree_setup._entry, section ".printk_index", align 4
@dsa_tree_setup._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.5, i32 1154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016DSA: tree %d setup\0A\00", [42 x i8] zeroinitializer }, align 32
@dsa_tree_setup._entry_ptr.38 = internal global ptr @dsa_tree_setup._entry.36, section ".printk_index", align 4
@dsa_tree_setup_default_cpu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013DSA: tree %d has no CPU port\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dsa_tree_setup_default_cpu\00", [37 x i8] zeroinitializer }, align 32
@dsa_tree_setup_default_cpu._entry_ptr = internal global ptr @dsa_tree_setup_default_cpu._entry, section ".printk_index", align 4
@dsa_devlink_ops = internal constant { %struct.devlink_ops, [52 x i8] } { %struct.devlink_ops { i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsa_devlink_sb_pool_get, ptr @dsa_devlink_sb_pool_set, ptr @dsa_devlink_sb_port_pool_get, ptr @dsa_devlink_sb_port_pool_set, ptr @dsa_devlink_sb_tc_pool_bind_get, ptr @dsa_devlink_sb_tc_pool_bind_set, ptr @dsa_devlink_sb_occ_snapshot, ptr @dsa_devlink_sb_occ_max_clear, ptr @dsa_devlink_sb_occ_port_pool_get, ptr @dsa_devlink_sb_occ_tc_port_bind_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsa_devlink_info_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@dsa_switch_setup_tag_protocol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.5, i32 837, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to use tag protocol \22%s\22: %pe\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dsa_switch_setup_tag_protocol\00", [34 x i8] zeroinitializer }, align 32
@dsa_switch_setup_tag_protocol._entry_ptr = internal global ptr @dsa_switch_setup_tag_protocol._entry, section ".printk_index", align 4
@dsa_switch_setup_tag_protocol._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.5, i32 854, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unable to connect to tag protocol \22%s\22: %pe\0A\00", [51 x i8] zeroinitializer }, align 32
@dsa_switch_setup_tag_protocol._entry_ptr.45 = internal global ptr @dsa_switch_setup_tag_protocol._entry.43, section ".printk_index", align 4
@dsa_port_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&dp->addr_lists_lock\00", [43 x i8] zeroinitializer }, align 32
@dsa_tree_teardown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 1192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016DSA: tree %d torn down\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dsa_tree_teardown\00", [46 x i8] zeroinitializer }, align 32
@dsa_tree_teardown._entry_ptr = internal global ptr @dsa_tree_teardown._entry, section ".printk_index", align 4
@switch.table.dsa_register_switch = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 6, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"dsa_tree_list\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 22, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [27 x i8] c"dsa_fwd_offloading_bridges\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 25, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant [11 x i8] c"dsa2_mutex\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 21, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1507, i32 47 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1518, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1461, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1464, i32 36 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1466, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1472, i32 36 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1479, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1428, i32 54 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1429, i32 41 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1430, i32 40 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1443, i32 39 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1360, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1371, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1384, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1390, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1307, i32 10 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1562, i32 20 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1574, i32 20 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1123, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1154, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 392, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [16 x i8] c"dsa_devlink_ops\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 806, i32 33 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 836, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 852, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 454, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private constant [18 x i8] c"../net/dsa/dsa2.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1192, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [33 x i8] c"switch.table.dsa_register_switch\00", align 1
@llvm.compiler.used = appending global [73 x ptr] [ptr @__ksymtab_dsa_register_switch, ptr @__ksymtab_dsa_switch_find, ptr @__ksymtab_dsa_switch_shutdown, ptr @__ksymtab_dsa_unregister_switch, ptr @dsa_port_parse_cpu._entry, ptr @dsa_port_parse_cpu._entry.22, ptr @dsa_port_parse_cpu._entry.25, ptr @dsa_port_parse_cpu._entry.29, ptr @dsa_port_parse_cpu._entry_ptr, ptr @dsa_port_parse_cpu._entry_ptr.24, ptr @dsa_port_parse_cpu._entry_ptr.28, ptr @dsa_port_parse_cpu._entry_ptr.30, ptr @dsa_switch_parse_member_of._entry, ptr @dsa_switch_parse_member_of._entry_ptr, ptr @dsa_switch_parse_ports_of._entry, ptr @dsa_switch_parse_ports_of._entry.13, ptr @dsa_switch_parse_ports_of._entry_ptr, ptr @dsa_switch_parse_ports_of._entry_ptr.15, ptr @dsa_switch_setup_tag_protocol._entry, ptr @dsa_switch_setup_tag_protocol._entry.43, ptr @dsa_switch_setup_tag_protocol._entry_ptr, ptr @dsa_switch_setup_tag_protocol._entry_ptr.45, ptr @dsa_tree_setup._entry, ptr @dsa_tree_setup._entry.36, ptr @dsa_tree_setup._entry_ptr, ptr @dsa_tree_setup._entry_ptr.38, ptr @dsa_tree_setup_default_cpu._entry, ptr @dsa_tree_setup_default_cpu._entry_ptr, ptr @dsa_tree_teardown._entry, ptr @dsa_tree_teardown._entry_ptr, ptr @dsa_tree_list, ptr @dsa_fwd_offloading_bridges, ptr @dsa2_mutex, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @dsa_devlink_ops, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @dsa_port_setup.__key, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @switch.table.dsa_register_switch], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tree_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_fwd_offloading_bridges to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa2_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_switch_parse_member_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_switch_parse_ports_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_switch_parse_ports_of._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_port_parse_cpu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_port_parse_cpu._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_port_parse_cpu._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_port_parse_cpu._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tree_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tree_setup._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tree_setup_default_cpu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_devlink_ops to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_switch_setup_tag_protocol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_switch_setup_tag_protocol._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_port_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tree_teardown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dsa_register_switch to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_tree_notify(ptr noundef %dst, i32 noundef %e, ptr noundef %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nh1 = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst, i32 0, i32 2
  %call = tail call i32 @raw_notifier_call_chain(ptr noundef %nh1, i32 noundef %e, ptr noundef %v) #12
  %and.i = and i32 %call, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp sgt i32 %and.i, 1
  %sub.i = sub i32 1, %and.i
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_broadcast(i32 noundef %e, ptr noundef %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %dst.0.in = phi ptr [ @dsa_tree_list, %entry ], [ %dst.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %dst.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %dst.0 = load ptr, ptr %dst.0.in, align 4
  %cmp.not = icmp eq ptr %dst.0, @dsa_tree_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond
  %nh1.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst.0, i32 0, i32 2
  %call.i = tail call i32 @raw_notifier_call_chain(ptr noundef %nh1.i, i32 noundef %e, ptr noundef %v) #12
  %and.i.i = and i32 %call.i, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp sgt i32 %and.i.i, 1
  %sub.i.i = sub i32 1, %and.i.i
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub.i.i, i32 0
  %tobool.not = icmp eq i32 %spec.select.i.i, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %err.1 = phi i32 [ %spec.select.i.i, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsa_lag_map(ptr nocapture noundef readonly %dst, ptr noundef %lag) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lags_len.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst, i32 0, i32 11
  %0 = ptrtoint ptr %lags_len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lags_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not.i = icmp eq i32 %1, 0
  br i1 %cmp10.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %lags.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst, i32 0, i32 5
  %2 = ptrtoint ptr %lags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lags.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %id.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %id.011.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp ne ptr %5, null
  %cmp1.i = icmp eq ptr %5, %lag
  %or.cond.i = and i1 %tobool.not.i, %cmp1.i
  br i1 %or.cond.i, label %for.body.i.dsa_lag_id.exit_crit_edge, label %for.inc.i

for.body.i.dsa_lag_id.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_lag_id.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %id.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.dsa_lag_id.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.dsa_lag_id.exit_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_lag_id.exit

dsa_lag_id.exit:                                  ; preds = %for.inc.i.dsa_lag_id.exit_crit_edge, %for.body.i.dsa_lag_id.exit_crit_edge
  %retval.0.i = phi i32 [ %id.011.i, %for.body.i.dsa_lag_id.exit_crit_edge ], [ -19, %for.inc.i.dsa_lag_id.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %for.body.lr.ph, label %dsa_lag_id.exit.cleanup_crit_edge

dsa_lag_id.exit.cleanup_crit_edge:                ; preds = %dsa_lag_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %dsa_lag_id.exit
  %lags.i12 = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst, i32 0, i32 5
  %6 = ptrtoint ptr %lags.i12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lags.i12, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %id.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx.i13 = getelementptr ptr, ptr %7, i32 %id.015
  %8 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i13, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i13.le = getelementptr ptr, ptr %7, i32 %id.015
  %10 = ptrtoint ptr %arrayidx.i13.le to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %lag, ptr %arrayidx.i13.le, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %id.015, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then3, %dsa_lag_id.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsa_lag_unmap(ptr noundef readonly %dst, ptr noundef readnone %lag) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %ports, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %ports
  br i1 %cmp.not, label %for.cond8.preheader, label %for.body

for.cond8.preheader:                              ; preds = %for.cond
  %lags_len = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst, i32 0, i32 11
  %1 = ptrtoint ptr %lags_len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lags_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp934.not = icmp eq i32 %2, 0
  br i1 %cmp934.not, label %for.cond8.preheader.cleanup_crit_edge, label %for.body10.lr.ph

for.cond8.preheader.cleanup_crit_edge:            ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body10.lr.ph:                                 ; preds = %for.cond8.preheader
  %lags = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst, i32 0, i32 5
  %3 = ptrtoint ptr %lags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lags, align 4
  br label %for.body10

for.body:                                         ; preds = %for.cond
  %lag_dev = getelementptr i8, ptr %.pn, i32 -8
  %5 = ptrtoint ptr %lag_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lag_dev, align 4
  %cmp2 = icmp eq ptr %6, %lag
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body10:                                       ; preds = %for.inc18.for.body10_crit_edge, %for.body10.lr.ph
  %id.035 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc, %for.inc18.for.body10_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %4, i32 %id.035
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp ne ptr %8, null
  %cmp12 = icmp eq ptr %8, %lag
  %or.cond = and i1 %tobool.not, %cmp12
  br i1 %or.cond, label %if.then13, label %for.inc18

if.then13:                                        ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.le = getelementptr ptr, ptr %4, i32 %id.035
  %9 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx.le, align 4
  br label %cleanup

for.inc18:                                        ; preds = %for.body10
  %inc = add nuw i32 %id.035, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.inc18.cleanup_crit_edge, label %for.inc18.for.body10_crit_edge

for.inc18.for.body10_crit_edge:                   ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10

for.inc18.cleanup_crit_edge:                      ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc18.cleanup_crit_edge, %if.then13, %for.body.cleanup_crit_edge, %for.cond8.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dsa_tree_bridge_find(ptr noundef readonly %dst, ptr noundef readnone %br) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %dsa_port_bridge_dev_get.exit.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %ports, %entry ], [ %.pn, %dsa_port_bridge_dev_get.exit.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %ports
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %bridge.i = getelementptr i8, ptr %.pn, i32 -396
  %1 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %for.body.dsa_port_bridge_dev_get.exit_crit_edge, label %cond.true.i

for.body.dsa_port_bridge_dev_get.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_port_bridge_dev_get.exit

cond.true.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  br label %dsa_port_bridge_dev_get.exit

dsa_port_bridge_dev_get.exit:                     ; preds = %cond.true.i, %for.body.dsa_port_bridge_dev_get.exit_crit_edge
  %cond.i = phi ptr [ %4, %cond.true.i ], [ null, %for.body.dsa_port_bridge_dev_get.exit_crit_edge ]
  %cmp2 = icmp eq ptr %cond.i, %br
  br i1 %cmp2, label %if.then, label %dsa_port_bridge_dev_get.exit.for.cond_crit_edge

dsa_port_bridge_dev_get.exit.for.cond_crit_edge:  ; preds = %dsa_port_bridge_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then:                                          ; preds = %dsa_port_bridge_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %bridge.i.le = getelementptr i8, ptr %.pn, i32 -396
  %5 = ptrtoint ptr %bridge.i.le to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bridge.i.le, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %if.then ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_bridge_num_get(ptr noundef readnone %bridge_dev, i32 noundef %max) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dst.014.i = load ptr, ptr @dsa_tree_list, align 4
  %cmp.not15.i = icmp eq ptr %dst.014.i, @dsa_tree_list
  br i1 %cmp.not15.i, label %entry.dsa_bridge_num_find.exit_crit_edge, label %for.body.preheader.i

entry.dsa_bridge_num_find.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_bridge_num_find.exit

for.body.preheader.i:                             ; preds = %entry
  %cmp2.i.i = icmp eq ptr %bridge_dev, null
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.preheader.i
  %dst.016.i = phi ptr [ %dst.0.i, %cleanup.i.for.body.i_crit_edge ], [ %dst.014.i, %for.body.preheader.i ]
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst.016.i, i32 0, i32 1
  %0 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i.i11 = load ptr, ptr %ports.i.i, align 4
  %cmp.not.i.i12 = icmp eq ptr %.pn.i.i11, %ports.i.i
  br i1 %cmp.not.i.i12, label %for.body.i.cleanup.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

for.body.i.i:                                     ; preds = %for.cond.i.backedge.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %.pn.i.i13 = phi ptr [ %.pn.i.i, %for.cond.i.backedge.i.for.body.i.i_crit_edge ], [ %.pn.i.i11, %for.body.i.for.body.i.i_crit_edge ]
  %bridge.i.i.i = getelementptr i8, ptr %.pn.i.i13, i32 -396
  %1 = ptrtoint ptr %bridge.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bridge.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i.i, label %dsa_port_bridge_dev_get.exit.i.i, label %dsa_port_bridge_dev_get.exit.i.thread.i

dsa_port_bridge_dev_get.exit.i.i:                 ; preds = %for.body.i.i
  br i1 %cmp2.i.i, label %dsa_port_bridge_dev_get.exit.i.i.cleanup.i_crit_edge, label %dsa_port_bridge_dev_get.exit.i.i.for.cond.i.backedge.i_crit_edge

dsa_port_bridge_dev_get.exit.i.i.for.cond.i.backedge.i_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.backedge.i

dsa_port_bridge_dev_get.exit.i.i.cleanup.i_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

for.cond.i.backedge.i:                            ; preds = %dsa_port_bridge_dev_get.exit.i.thread.i.for.cond.i.backedge.i_crit_edge, %dsa_port_bridge_dev_get.exit.i.i.for.cond.i.backedge.i_crit_edge
  %3 = ptrtoint ptr %.pn.i.i13 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i.i = load ptr, ptr %.pn.i.i13, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.backedge.i.cleanup.i_crit_edge, label %for.cond.i.backedge.i.for.body.i.i_crit_edge

for.cond.i.backedge.i.for.body.i.i_crit_edge:     ; preds = %for.cond.i.backedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.cond.i.backedge.i.cleanup.i_crit_edge:        ; preds = %for.cond.i.backedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

dsa_port_bridge_dev_get.exit.i.thread.i:          ; preds = %for.body.i.i
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 4
  %cmp2.i18.i = icmp eq ptr %5, %bridge_dev
  br i1 %cmp2.i18.i, label %cleanup.thread.i, label %dsa_port_bridge_dev_get.exit.i.thread.i.for.cond.i.backedge.i_crit_edge

dsa_port_bridge_dev_get.exit.i.thread.i.for.cond.i.backedge.i_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit.i.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.backedge.i

cleanup.thread.i:                                 ; preds = %dsa_port_bridge_dev_get.exit.i.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  %num.i = getelementptr inbounds %struct.dsa_bridge, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num.i, align 4
  br label %dsa_bridge_num_find.exit

cleanup.i:                                        ; preds = %for.cond.i.backedge.i.cleanup.i_crit_edge, %dsa_port_bridge_dev_get.exit.i.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %8 = ptrtoint ptr %dst.016.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %dst.0.i = load ptr, ptr %dst.016.i, align 4
  %cmp.not.i = icmp eq ptr %dst.0.i, @dsa_tree_list
  br i1 %cmp.not.i, label %cleanup.i.dsa_bridge_num_find.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

cleanup.i.dsa_bridge_num_find.exit_crit_edge:     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_bridge_num_find.exit

dsa_bridge_num_find.exit:                         ; preds = %cleanup.i.dsa_bridge_num_find.exit_crit_edge, %cleanup.thread.i, %entry.dsa_bridge_num_find.exit_crit_edge
  %retval.2.i = phi i32 [ %7, %cleanup.thread.i ], [ 0, %entry.dsa_bridge_num_find.exit_crit_edge ], [ 0, %cleanup.i.dsa_bridge_num_find.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max)
  %tobool.not = icmp eq i32 %max, 0
  br i1 %tobool.not, label %dsa_bridge_num_find.exit.cleanup_crit_edge, label %if.end

dsa_bridge_num_find.exit.cleanup_crit_edge:       ; preds = %dsa_bridge_num_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %dsa_bridge_num_find.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i)
  %tobool1.not = icmp eq i32 %retval.2.i, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @_find_next_zero_bit_be(ptr noundef nonnull @dsa_fwd_offloading_bridges, i32 noundef 32, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %max)
  %cmp.not = icmp ult i32 %call3, %max
  br i1 %cmp.not, label %if.end5, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef %call3, ptr noundef nonnull @dsa_fwd_offloading_bridges) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dsa_bridge_num_find.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dsa_bridge_num_find.exit.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ %retval.2.i, %if.end.cleanup_crit_edge ], [ %call3, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsa_bridge_num_put(ptr nocapture noundef readnone %bridge_dev, i32 noundef %bridge_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_clear_bit(i32 noundef %bridge_num, ptr noundef nonnull @dsa_fwd_offloading_bridges) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dsa_switch_find(i32 noundef %tree_index, i32 noundef %sw_index) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dst.037 = load ptr, ptr @dsa_tree_list, align 4
  %cmp.not38 = icmp eq ptr %dst.037, @dsa_tree_list
  br i1 %cmp.not38, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc21.for.body_crit_edge, %entry.for.body_crit_edge
  %dst.039 = phi ptr [ %dst.0, %for.inc21.for.body_crit_edge ], [ %dst.037, %entry.for.body_crit_edge ]
  %index = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst.039, i32 0, i32 3
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %tree_index)
  %cmp1.not = icmp eq i32 %1, %tree_index
  br i1 %cmp1.not, label %if.end, label %for.body.for.inc21_crit_edge

for.body.for.inc21_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21

if.end:                                           ; preds = %for.body
  %ports = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst.039, i32 0, i32 1
  br label %for.cond5

for.cond5:                                        ; preds = %for.body10.for.cond5_crit_edge, %if.end
  %.pn.in = phi ptr [ %ports, %if.end ], [ %.pn, %for.body10.for.cond5_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp8.not = icmp eq ptr %.pn, %ports
  br i1 %cmp8.not, label %for.cond5.for.inc21_crit_edge, label %for.body10

for.cond5.for.inc21_crit_edge:                    ; preds = %for.cond5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21

for.body10:                                       ; preds = %for.cond5
  %ds = getelementptr i8, ptr %.pn, i32 -432
  %3 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ds, align 4
  %index11 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %index11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index11, align 4
  %cmp12.not = icmp eq i32 %6, %sw_index
  br i1 %cmp12.not, label %for.body10.cleanup_crit_edge, label %for.body10.for.cond5_crit_edge

for.body10.for.cond5_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5

for.body10.cleanup_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc21:                                        ; preds = %for.cond5.for.inc21_crit_edge, %for.body.for.inc21_crit_edge
  %7 = ptrtoint ptr %dst.039 to i32
  call void @__asan_load4_noabort(i32 %7)
  %dst.0 = load ptr, ptr %dst.039, align 4
  %cmp.not = icmp eq ptr %dst.0, @dsa_tree_list
  br i1 %cmp.not, label %for.inc21.cleanup_crit_edge, label %for.inc21.for.body_crit_edge

for.inc21.for.body_crit_edge:                     ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc21.cleanup_crit_edge:                      ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc21.cleanup_crit_edge, %for.body10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %4, %for.body10.cleanup_crit_edge ], [ null, %for.inc21.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_tree_change_tag_proto(ptr noundef %dst, ptr nocapture noundef readonly %master, ptr noundef %tag_ops, ptr noundef %old_tag_ops) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.dsa_notifier_tag_proto_info, align 4
  %info = alloca %struct.dsa_notifier_tag_proto_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #12
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %info, align 4, !annotation !115
  %call = tail call i32 @rtnl_trylock() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !105) #12
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %6) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.net_device, ptr %master, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end4:                                          ; preds = %if.end
  %ports = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst, i32 0, i32 1
  %9 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn51 = load ptr, ptr %ports, align 4
  %cmp.not53 = icmp eq ptr %.pn51, %ports
  br i1 %cmp.not53, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %.pn54 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn51, %if.end4.for.body_crit_edge ]
  %type.i = getelementptr i8, ptr %.pn54, i32 -424
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp eq i32 %11, 3
  br i1 %cmp.i, label %if.end8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %dp.055 = getelementptr i8, ptr %.pn54, i32 -448
  %12 = ptrtoint ptr %dp.055 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dp.055, align 4
  %flags9 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags9, align 8
  %and10 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.for.inc_crit_edge, label %if.end8.out_unlock_crit_edge

if.end8.out_unlock_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.end8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn54 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn54, align 4
  %cmp.not = icmp eq ptr %.pn, %ports
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end4.for.end_crit_edge
  %17 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %tag_ops, ptr %info, align 4
  %nh1.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst, i32 0, i32 2
  %call.i = call i32 @raw_notifier_call_chain(ptr noundef %nh1.i, i32 noundef 17, ptr noundef nonnull %info) #12
  %and.i.i42 = and i32 %call.i, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i42)
  %cmp.i.i = icmp sgt i32 %and.i.i42, 1
  %sub.i.i = sub i32 1, %and.i.i42
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %tobool21.not = icmp eq i32 %spec.select.i.i, 0
  br i1 %tobool21.not, label %if.end23, label %for.end.out_unwind_tagger_crit_edge

for.end.out_unwind_tagger_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unwind_tagger

if.end23:                                         ; preds = %for.end
  %tag_ops1.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst, i32 0, i32 6
  %18 = ptrtoint ptr %tag_ops1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tag_ops1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info.i) #12
  %20 = ptrtoint ptr %tag_ops1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %tag_ops, ptr %tag_ops1.i, align 4
  %21 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tag_ops, ptr %info.i, align 4
  %call.i.i = call i32 @raw_notifier_call_chain(ptr noundef %nh1.i, i32 noundef 18, ptr noundef nonnull %info.i) #12
  %and.i.i.i = and i32 %call.i.i, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %and.i.i.i, 1
  %sub.i.i.i = sub i32 1, %and.i.i.i
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %sub.i.i.i, i32 0
  %22 = zext i32 %spec.select.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.select.i.i.i, label %dsa_tree_bind_tag_proto.exit [
    i32 0, label %if.end23.dsa_tree_bind_tag_proto.exit.thread_crit_edge
    i32 -95, label %if.end23.dsa_tree_bind_tag_proto.exit.thread_crit_edge56
  ]

if.end23.dsa_tree_bind_tag_proto.exit.thread_crit_edge56: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_tree_bind_tag_proto.exit.thread

if.end23.dsa_tree_bind_tag_proto.exit.thread_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_tree_bind_tag_proto.exit.thread

dsa_tree_bind_tag_proto.exit.thread:              ; preds = %if.end23.dsa_tree_bind_tag_proto.exit.thread_crit_edge, %if.end23.dsa_tree_bind_tag_proto.exit.thread_crit_edge56
  %23 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %19, ptr %info.i, align 4
  %call.i22.i = call i32 @raw_notifier_call_chain(ptr noundef %nh1.i, i32 noundef 19, ptr noundef nonnull %info.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #12
  call void @rtnl_unlock() #12
  br label %cleanup

dsa_tree_bind_tag_proto.exit:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %tag_ops, ptr %info.i, align 4
  %call.i28.i = call i32 @raw_notifier_call_chain(ptr noundef %nh1.i, i32 noundef 19, ptr noundef nonnull %info.i) #12
  %25 = ptrtoint ptr %tag_ops1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %19, ptr %tag_ops1.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #12
  br label %out_unwind_tagger

out_unwind_tagger:                                ; preds = %dsa_tree_bind_tag_proto.exit, %for.end.out_unwind_tagger_crit_edge
  %err.0 = phi i32 [ %spec.select.i.i, %for.end.out_unwind_tagger_crit_edge ], [ %spec.select.i.i.i, %dsa_tree_bind_tag_proto.exit ]
  %26 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %old_tag_ops, ptr %info, align 4
  %call.i44 = call i32 @raw_notifier_call_chain(ptr noundef %nh1.i, i32 noundef 17, ptr noundef nonnull %info) #12
  br label %out_unlock

out_unlock:                                       ; preds = %out_unwind_tagger, %if.end8.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %err.1 = phi i32 [ -16, %if.end.out_unlock_crit_edge ], [ %err.0, %out_unwind_tagger ], [ -16, %if.end8.out_unlock_crit_edge ]
  call void @rtnl_unlock() #12
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %dsa_tree_bind_tag_proto.exit.thread, %if.then
  %retval.0 = phi i32 [ %err.1, %out_unlock ], [ 0, %dsa_tree_bind_tag_proto.exit.thread ], [ -513, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_trylock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_register_switch(ptr noundef %ds) #0 align 64 {
entry:
  %attrs.i.i.i100.i.i = alloca %struct.devlink_port_attrs, align 4
  %attrs.i.i.i.i.i = alloca %struct.devlink_port_attrs, align 4
  %it.i.i.i.i = alloca %struct.of_phandle_iterator, align 4
  %args.i.i.i.i.i = alloca %struct.of_phandle_args, align 4
  %reg.i.i.i = alloca i32, align 4
  %m.i.i.i = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @dsa2_mutex, i32 noundef 0) #12
  %0 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dsa_switch_probe.exit_crit_edge, label %if.end.i

entry.dsa_switch_probe.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_switch_probe.exit

if.end.i:                                         ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %num_ports.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 18
  %6 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %if.end.i.dsa_switch_probe.exit_crit_edge, label %if.end5.i

if.end.i.dsa_switch_probe.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_switch_probe.exit

if.end5.i:                                        ; preds = %if.end.i
  %tobool6.not.i = icmp eq ptr %5, null
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m.i.i.i) #12
  %8 = ptrtoint ptr %m.i.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %m.i.i.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.2, ptr noundef nonnull %m.i.i.i, i32 noundef 2, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i.i.i)
  %cmp1.not.i.i.i = icmp eq i32 %call.i.i.i, -22
  %or.cond.i.i.i = or i1 %cmp.i.i.i, %cmp1.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.end.i.i.i, label %if.then7.i.dsa_switch_parse_member_of.exit.thread.i.i_crit_edge

if.then7.i.dsa_switch_parse_member_of.exit.thread.i.i_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_switch_parse_member_of.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %if.then7.i
  %arrayidx.i.i.i = getelementptr inbounds [2 x i32], ptr %m.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 2
  %11 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %index.i.i.i, align 4
  %12 = ptrtoint ptr %m.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m.i.i.i, align 8
  %call3.i.i.i = call fastcc ptr @dsa_tree_touch(i32 noundef %13) #12
  %dst.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %14 = ptrtoint ptr %dst.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call3.i.i.i, ptr %dst.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.dsa_switch_parse_member_of.exit.thread.i.i_crit_edge, label %if.end6.i.i.i

if.end.i.i.i.dsa_switch_parse_member_of.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_switch_parse_member_of.exit.thread.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  %index8.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %call3.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %index8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index8.i.i.i, align 4
  %17 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i.i.i, align 4
  %dst.037.i.i.i.i = load ptr, ptr @dsa_tree_list, align 4
  %cmp.not38.i.i.i.i = icmp eq ptr %dst.037.i.i.i.i, @dsa_tree_list
  br i1 %cmp.not38.i.i.i.i, label %if.end6.i.i.i.if.end16.i.i.i_crit_edge, label %if.end6.i.i.i.for.body.i.i.i.i_crit_edge

if.end6.i.i.i.for.body.i.i.i.i_crit_edge:         ; preds = %if.end6.i.i.i
  br label %for.body.i.i.i.i

if.end6.i.i.i.if.end16.i.i.i_crit_edge:           ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc21.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end6.i.i.i.for.body.i.i.i.i_crit_edge
  %dst.039.i.i.i.i = phi ptr [ %dst.0.i.i.i.i, %for.inc21.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %dst.037.i.i.i.i, %if.end6.i.i.i.for.body.i.i.i.i_crit_edge ]
  %index.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst.039.i.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %16)
  %cmp1.not.i.i.i.i = icmp eq i32 %20, %16
  br i1 %cmp1.not.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.i.i.for.inc21.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc21.i.i.i.i_crit_edge:     ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i.i.i
  %ports.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst.039.i.i.i.i, i32 0, i32 1
  br label %for.cond5.i.i.i.i

for.cond5.i.i.i.i:                                ; preds = %for.body10.i.i.i.i.for.cond5.i.i.i.i_crit_edge, %if.end.i.i.i.i
  %.pn.in.i.i.i.i = phi ptr [ %ports.i.i.i.i, %if.end.i.i.i.i ], [ %.pn.i.i.i.i, %for.body10.i.i.i.i.for.cond5.i.i.i.i_crit_edge ]
  %21 = ptrtoint ptr %.pn.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i.i.i.i = load ptr, ptr %.pn.in.i.i.i.i, align 4
  %cmp8.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %ports.i.i.i.i
  br i1 %cmp8.not.i.i.i.i, label %for.cond5.i.i.i.i.for.inc21.i.i.i.i_crit_edge, label %for.body10.i.i.i.i

for.cond5.i.i.i.i.for.inc21.i.i.i.i_crit_edge:    ; preds = %for.cond5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21.i.i.i.i

for.body10.i.i.i.i:                               ; preds = %for.cond5.i.i.i.i
  %ds.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 -432
  %22 = ptrtoint ptr %ds.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ds.i.i.i.i, align 4
  %index11.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %index11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index11.i.i.i.i, align 4
  %cmp12.not.i.i.i.i = icmp eq i32 %25, %18
  br i1 %cmp12.not.i.i.i.i, label %dsa_switch_find.exit.i.i.i, label %for.body10.i.i.i.i.for.cond5.i.i.i.i_crit_edge

for.body10.i.i.i.i.for.cond5.i.i.i.i_crit_edge:   ; preds = %for.body10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5.i.i.i.i

for.inc21.i.i.i.i:                                ; preds = %for.cond5.i.i.i.i.for.inc21.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc21.i.i.i.i_crit_edge
  %26 = ptrtoint ptr %dst.039.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %dst.0.i.i.i.i = load ptr, ptr %dst.039.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %dst.0.i.i.i.i, @dsa_tree_list
  br i1 %cmp.not.i.i.i.i, label %for.inc21.i.i.i.i.if.end16.i.i.i_crit_edge, label %for.inc21.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc21.i.i.i.i.for.body.i.i.i.i_crit_edge:     ; preds = %for.inc21.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i.i

for.inc21.i.i.i.i.if.end16.i.i.i_crit_edge:       ; preds = %for.inc21.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i.i

dsa_switch_find.exit.i.i.i:                       ; preds = %for.body10.i.i.i.i
  %tobool11.not.i.i.i = icmp eq ptr %23, null
  br i1 %tobool11.not.i.i.i, label %dsa_switch_find.exit.i.i.i.if.end16.i.i.i_crit_edge, label %do.end.i.i.i

dsa_switch_find.exit.i.i.i.if.end16.i.i.i_crit_edge: ; preds = %dsa_switch_find.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i.i

do.end.i.i.i:                                     ; preds = %dsa_switch_find.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ds, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.3, i32 noundef %18, i32 noundef %16) #15
  br label %dsa_switch_parse_member_of.exit.thread.i.i

if.end16.i.i.i:                                   ; preds = %dsa_switch_find.exit.i.i.i.if.end16.i.i.i_crit_edge, %for.inc21.i.i.i.i.if.end16.i.i.i_crit_edge, %if.end6.i.i.i.if.end16.i.i.i_crit_edge
  %last_switch.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %call3.i.i.i, i32 0, i32 12
  %29 = ptrtoint ptr %last_switch.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %last_switch.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %18)
  %cmp19.i.i.i = icmp ult i32 %30, %18
  br i1 %cmp19.i.i.i, label %if.then20.i.i.i, label %if.end16.i.i.i.if.end.i.i_crit_edge

if.end16.i.i.i.if.end.i.i_crit_edge:              ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then20.i.i.i:                                  ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %last_switch.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %18, ptr %last_switch.i.i.i, align 4
  br label %if.end.i.i

dsa_switch_parse_member_of.exit.thread.i.i:       ; preds = %do.end.i.i.i, %if.end.i.i.i.dsa_switch_parse_member_of.exit.thread.i.i_crit_edge, %if.then7.i.dsa_switch_parse_member_of.exit.thread.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ -12, %if.end.i.i.i.dsa_switch_parse_member_of.exit.thread.i.i_crit_edge ], [ %call.i.i.i, %if.then7.i.dsa_switch_parse_member_of.exit.thread.i.i_crit_edge ], [ -17, %do.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m.i.i.i) #12
  br label %if.then9.i

if.end.i.i:                                       ; preds = %if.then20.i.i.i, %if.end16.i.i.i.if.end.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m.i.i.i) #12
  %call1.i.i = call fastcc i32 @dsa_switch_touch_ports(ptr noundef %ds) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.if.then9.i_crit_edge

if.end.i.i.if.then9.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i) #12
  %32 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %reg.i.i.i, align 4, !annotation !115
  %call.i12.i.i = call ptr @of_get_child_by_name(ptr noundef nonnull %5, ptr noundef nonnull @.str.8) #12
  %tobool.not.i13.i.i = icmp eq ptr %call.i12.i.i, null
  br i1 %tobool.not.i13.i.i, label %if.then.i.i.i, label %if.end4.i.i.if.end4.i.i.i_crit_edge

if.end4.i.i.if.end4.i.i.i_crit_edge:              ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

if.then.i.i.i:                                    ; preds = %if.end4.i.i
  %call1.i.i.i = call ptr @of_get_child_by_name(ptr noundef nonnull %5, ptr noundef nonnull @.str.9) #12
  %tobool2.not.i.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %dsa_switch_parse_of.exit.thread170.i, label %if.then.i.i.i.if.end4.i.i.i_crit_edge

if.then.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

dsa_switch_parse_of.exit.thread170.i:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ds, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.10) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i) #12
  br label %if.then9.i

if.end4.i.i.i:                                    ; preds = %if.then.i.i.i.if.end4.i.i.i_crit_edge, %if.end4.i.i.if.end4.i.i.i_crit_edge
  %ports.0.i.i.i = phi ptr [ %call.i12.i.i, %if.end4.i.i.if.end4.i.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i.i.i.if.end4.i.i.i_crit_edge ]
  %call5.i.i.i = call ptr @of_get_next_available_child(ptr noundef nonnull %ports.0.i.i.i, ptr noundef null) #12
  %cmp.not63.i.i.i = icmp eq ptr %call5.i.i.i, null
  br i1 %cmp.not63.i.i.i, label %if.end4.i.i.i.dsa_switch_parse_of.exit.thread174.i_crit_edge, label %if.end4.i.i.i.for.body.i.i.i_crit_edge

if.end4.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.end4.i.i.i
  br label %for.body.i.i.i

if.end4.i.i.i.dsa_switch_parse_of.exit.thread174.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_switch_parse_of.exit.thread174.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end4.i.i.i.for.body.i.i.i_crit_edge
  %port.064.i.i.i = phi ptr [ %call23.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %call5.i.i.i, %if.end4.i.i.i.for.body.i.i.i_crit_edge ]
  %call.i.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %port.064.i.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull %reg.i.i.i, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i.i)
  %tobool7.not.i.i.i = icmp sgt i32 %call.i.i.i.i.i, -1
  br i1 %tobool7.not.i.i.i, label %if.end9.i.i.i, label %for.body.i.i.i.dsa_switch_parse_of.exit.i_crit_edge

for.body.i.i.i.dsa_switch_parse_of.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_switch_parse_of.exit.i

if.end9.i.i.i:                                    ; preds = %for.body.i.i.i
  %35 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg.i.i.i, align 4
  %37 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp10.not.i.i.i = icmp ult i32 %36, %38
  br i1 %cmp10.not.i.i.i, label %if.end17.i.i.i, label %do.end14.i.i.i

do.end14.i.i.i:                                   ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ds, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.14, ptr noundef nonnull %port.064.i.i.i, i32 noundef %36, i32 noundef %38) #15
  br label %dsa_switch_parse_of.exit.i

if.end17.i.i.i:                                   ; preds = %if.end9.i.i.i
  %41 = ptrtoint ptr %dst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dst.i.i.i, align 4
  %ports.i.i15.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %ports.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn20.i.i.i.i = load ptr, ptr %ports.i.i15.i.i, align 4
  %cmp.not21.i.i.i.i = icmp eq ptr %.pn20.i.i.i.i, %ports.i.i15.i.i
  br i1 %cmp.not21.i.i.i.i, label %if.end17.i.i.i.dsa_to_port.exit.i.i.i_crit_edge, label %if.end17.i.i.i.for.body.i.i16.i.i_crit_edge

if.end17.i.i.i.for.body.i.i16.i.i_crit_edge:      ; preds = %if.end17.i.i.i
  br label %for.body.i.i16.i.i

if.end17.i.i.i.dsa_to_port.exit.i.i.i_crit_edge:  ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_to_port.exit.i.i.i

for.body.i.i16.i.i:                               ; preds = %for.inc.i.i.i.i.for.body.i.i16.i.i_crit_edge, %if.end17.i.i.i.for.body.i.i16.i.i_crit_edge
  %.pn22.i.i.i.i = phi ptr [ %.pn.i.i18.i.i, %for.inc.i.i.i.i.for.body.i.i16.i.i_crit_edge ], [ %.pn20.i.i.i.i, %if.end17.i.i.i.for.body.i.i16.i.i_crit_edge ]
  %ds3.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -432
  %44 = ptrtoint ptr %ds3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ds3.i.i.i.i, align 4
  %cmp4.i.i.i.i = icmp eq ptr %45, %ds
  br i1 %cmp4.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.body.i.i16.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i16.i.i.for.inc.i.i.i.i_crit_edge:     ; preds = %for.body.i.i16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i16.i.i
  %index.i.i17.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -428
  %46 = ptrtoint ptr %index.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index.i.i17.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %36)
  %cmp5.i.i.i.i = icmp eq i32 %47, %36
  br i1 %cmp5.i.i.i.i, label %cleanup.split.loop.exit18.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i16.i.i.for.inc.i.i.i.i_crit_edge
  %48 = ptrtoint ptr %.pn22.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn.i.i18.i.i = load ptr, ptr %.pn22.i.i.i.i, align 4
  %cmp.not.i.i19.i.i = icmp eq ptr %.pn.i.i18.i.i, %ports.i.i15.i.i
  br i1 %cmp.not.i.i19.i.i, label %for.inc.i.i.i.i.dsa_to_port.exit.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i16.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i16.i.i_crit_edge:     ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i16.i.i

for.inc.i.i.i.i.dsa_to_port.exit.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_to_port.exit.i.i.i

cleanup.split.loop.exit18.i.i.i.i:                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dp.0.le.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -448
  br label %dsa_to_port.exit.i.i.i

dsa_to_port.exit.i.i.i:                           ; preds = %cleanup.split.loop.exit18.i.i.i.i, %for.inc.i.i.i.i.dsa_to_port.exit.i.i.i_crit_edge, %if.end17.i.i.i.dsa_to_port.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %dp.0.le.i.i.i.i, %cleanup.split.loop.exit18.i.i.i.i ], [ null, %if.end17.i.i.i.dsa_to_port.exit.i.i.i_crit_edge ], [ null, %for.inc.i.i.i.i.dsa_to_port.exit.i.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i.i.i.i) #12
  %49 = call ptr @memset(ptr %args.i.i.i.i.i, i32 255, i32 72)
  %call.i.i47.i.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %port.064.i.i.i, ptr noundef nonnull @.str.16, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i47.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call.i.i47.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %dsa_to_port.exit.i.i.i.of_parse_phandle.exit.i.i.i.i_crit_edge

dsa_to_port.exit.i.i.i.of_parse_phandle.exit.i.i.i.i_crit_edge: ; preds = %dsa_to_port.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %of_parse_phandle.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %dsa_to_port.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %args.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %args.i.i.i.i.i, align 4
  br label %of_parse_phandle.exit.i.i.i.i

of_parse_phandle.exit.i.i.i.i:                    ; preds = %if.end.i.i.i.i.i, %dsa_to_port.exit.i.i.i.of_parse_phandle.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %51, %if.end.i.i.i.i.i ], [ null, %dsa_to_port.exit.i.i.i.of_parse_phandle.exit.i.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i.i.i) #12
  %call1.i.i.i.i = call ptr @of_get_property(ptr noundef nonnull %port.064.i.i.i, ptr noundef nonnull @.str.17, ptr noundef null) #12
  %call.i29.i.i.i.i = call ptr @of_find_property(ptr noundef nonnull %port.064.i.i.i, ptr noundef nonnull @.str.18, ptr noundef null) #12
  %dn3.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i.i, i32 0, i32 12
  %52 = ptrtoint ptr %dn3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %port.064.i.i.i, ptr %dn3.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end10.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %of_parse_phandle.exit.i.i.i.i
  %call4.i.i.i.i = call ptr @of_find_net_device_by_node(ptr noundef nonnull %retval.0.i.i.i.i.i) #12
  call void @of_node_put(ptr noundef nonnull %retval.0.i.i.i.i.i) #12
  %tobool5.not.i.i.i.i = icmp eq ptr %call4.i.i.i.i, null
  br i1 %tobool5.not.i.i.i.i, label %if.then.i.i.i.i.dsa_switch_parse_of.exit.i_crit_edge, label %dsa_port_parse_of.exit.i.i.i

if.then.i.i.i.i.dsa_switch_parse_of.exit.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_switch_parse_of.exit.i

if.end10.i.i.i.i:                                 ; preds = %of_parse_phandle.exit.i.i.i.i
  %tobool.i.not.i.i.i.i = icmp eq ptr %call.i29.i.i.i.i, null
  br i1 %tobool.i.not.i.i.i.i, label %if.end14.i.i.i.i, label %if.then12.i.i.i.i

if.then12.i.i.i.i:                                ; preds = %if.end10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %type.i.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i.i, i32 0, i32 6
  %53 = ptrtoint ptr %type.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %type.i.i.i.i.i, align 4
  br label %for.inc.i.i.i

if.end14.i.i.i.i:                                 ; preds = %if.end10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not.i30.i.i.i.i = icmp eq ptr %call1.i.i.i.i, null
  %spec.store.select.i.i.i.i.i = select i1 %tobool.not.i30.i.i.i.i, ptr @.str.31, ptr %call1.i.i.i.i
  %type.i31.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i.i, i32 0, i32 6
  %54 = ptrtoint ptr %type.i31.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3, ptr %type.i31.i.i.i.i, align 4
  %name1.i.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i.i, i32 0, i32 7
  %55 = ptrtoint ptr %name1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %spec.store.select.i.i.i.i.i, ptr %name1.i.i.i.i.i, align 4
  br label %for.inc.i.i.i

dsa_port_parse_of.exit.i.i.i:                     ; preds = %if.then.i.i.i.i
  %call7.i.i.i.i = call ptr @of_get_property(ptr noundef nonnull %port.064.i.i.i, ptr noundef nonnull @.str.19, ptr noundef null) #12
  %call8.i.i.i.i = call fastcc i32 @dsa_port_parse_cpu(ptr noundef %retval.0.i.i.i.i, ptr noundef nonnull %call4.i.i.i.i, ptr noundef %call7.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i.i)
  %tobool20.not.i.i.i = icmp eq i32 %call8.i.i.i.i, 0
  br i1 %tobool20.not.i.i.i, label %dsa_port_parse_of.exit.i.i.i.for.inc.i.i.i_crit_edge, label %dsa_port_parse_of.exit.i.i.i.dsa_switch_parse_of.exit.i_crit_edge

dsa_port_parse_of.exit.i.i.i.dsa_switch_parse_of.exit.i_crit_edge: ; preds = %dsa_port_parse_of.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_switch_parse_of.exit.i

dsa_port_parse_of.exit.i.i.i.for.inc.i.i.i_crit_edge: ; preds = %dsa_port_parse_of.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %dsa_port_parse_of.exit.i.i.i.for.inc.i.i.i_crit_edge, %if.end14.i.i.i.i, %if.then12.i.i.i.i
  %call23.i.i.i = call ptr @of_get_next_available_child(ptr noundef %ports.0.i.i.i, ptr noundef nonnull %port.064.i.i.i) #12
  %cmp.not.i.i.i = icmp eq ptr %call23.i.i.i, null
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_switch_parse_of.exit.thread174.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_switch_parse_of.exit.thread174.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_switch_parse_of.exit.thread174.i

dsa_switch_parse_of.exit.thread174.i:             ; preds = %for.inc.i.i.i.dsa_switch_parse_of.exit.thread174.i_crit_edge, %if.end4.i.i.i.dsa_switch_parse_of.exit.thread174.i_crit_edge
  call void @of_node_put(ptr noundef %ports.0.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i) #12
  br label %if.end22.i

dsa_switch_parse_of.exit.i:                       ; preds = %dsa_port_parse_of.exit.i.i.i.dsa_switch_parse_of.exit.i_crit_edge, %if.then.i.i.i.i.dsa_switch_parse_of.exit.i_crit_edge, %do.end14.i.i.i, %for.body.i.i.i.dsa_switch_parse_of.exit.i_crit_edge
  %err.1.ph.i.i.i = phi i32 [ -22, %do.end14.i.i.i ], [ %call.i.i.i.i.i, %for.body.i.i.i.dsa_switch_parse_of.exit.i_crit_edge ], [ -517, %if.then.i.i.i.i.dsa_switch_parse_of.exit.i_crit_edge ], [ %call8.i.i.i.i, %dsa_port_parse_of.exit.i.i.i.dsa_switch_parse_of.exit.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %port.064.i.i.i) #12
  call void @of_node_put(ptr noundef %ports.0.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i) #12
  br label %if.then9.i

if.then9.i:                                       ; preds = %dsa_switch_parse_of.exit.i, %dsa_switch_parse_of.exit.thread170.i, %if.end.i.i.if.then9.i_crit_edge, %dsa_switch_parse_member_of.exit.thread.i.i
  %retval.0.i169.i = phi i32 [ %err.1.ph.i.i.i, %dsa_switch_parse_of.exit.i ], [ -22, %dsa_switch_parse_of.exit.thread170.i ], [ %retval.0.i.ph.i.i, %dsa_switch_parse_member_of.exit.thread.i.i ], [ %call1.i.i, %if.end.i.i.if.then9.i_crit_edge ]
  %dst.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %56 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dst.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ports.i.i, align 4
  %cmp.not28.i.i = icmp eq ptr %59, %ports.i.i
  br i1 %cmp.not28.i.i, label %if.then9.i.dsa_switch_probe.exit_crit_edge, label %if.then9.i.for.body.i.i_crit_edge

if.then9.i.for.body.i.i_crit_edge:                ; preds = %if.then9.i
  br label %for.body.i.i

if.then9.i.dsa_switch_probe.exit_crit_edge:       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_switch_probe.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then9.i.for.body.i.i_crit_edge
  %.pn.in29.i.i = phi ptr [ %.pn32.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %59, %if.then9.i.for.body.i.i_crit_edge ]
  %dp.031.i.i = getelementptr i8, ptr %.pn.in29.i.i, i32 -448
  %60 = ptrtoint ptr %.pn.in29.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn32.i.i = load ptr, ptr %.pn.in29.i.i, align 4
  %ds9.i.i = getelementptr i8, ptr %.pn.in29.i.i, i32 -432
  %61 = ptrtoint ptr %ds9.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ds9.i.i, align 4
  %cmp10.i.i = icmp eq ptr %62, %ds
  br i1 %cmp10.i.i, label %if.then.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in29.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i52.i, label %if.then.i.i.list_del.exit.i.i_crit_edge

if.then.i.i.list_del.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i

if.end.i.i.i52.i:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i.i.i, align 4
  %65 = ptrtoint ptr %.pn.in29.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %.pn.in29.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev1.i.i.i.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %66, ptr %64, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i52.i, %if.then.i.i.list_del.exit.i.i_crit_edge
  %69 = ptrtoint ptr %.pn.in29.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in29.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @kfree(ptr noundef %dp.031.i.i) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %list_del.exit.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %71 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dst.i.i, align 4
  %ports8.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %72, i32 0, i32 1
  %cmp.not.i.i = icmp eq ptr %.pn32.i.i, %ports8.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end19.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.if.end19.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end5.i
  %tobool11.not.i = icmp eq ptr %3, null
  br i1 %tobool11.not.i, label %if.else.i.dsa_switch_probe.exit_crit_edge, label %if.then12.i

if.else.i.dsa_switch_probe.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_switch_probe.exit

if.then12.i:                                      ; preds = %if.else.i
  %cd1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 7
  %73 = ptrtoint ptr %cd1.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %3, ptr %cd1.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 2
  %74 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %index.i.i, align 4
  %call.i.i = tail call fastcc ptr @dsa_tree_touch(i32 noundef 0) #12
  %dst.i53.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %75 = ptrtoint ptr %dst.i53.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i.i, ptr %dst.i53.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then12.i.if.then15.i_crit_edge, label %if.end.i54.i

if.then12.i.if.then15.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

if.end.i54.i:                                     ; preds = %if.then12.i
  %call3.i.i = tail call fastcc i32 @dsa_switch_touch_ports(ptr noundef %ds) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i54.i.for.body.i.i59.i_crit_edge, label %if.end.i54.i.if.then15.i_crit_edge

if.end.i54.i.if.then15.i_crit_edge:               ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

if.end.i54.i.for.body.i.i59.i_crit_edge:          ; preds = %if.end.i54.i
  br label %for.body.i.i59.i

for.body.i.i59.i:                                 ; preds = %for.inc.i.i84.i.for.body.i.i59.i_crit_edge, %if.end.i54.i.for.body.i.i59.i_crit_edge
  %i.033.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i84.i.for.body.i.i59.i_crit_edge ], [ 0, %if.end.i54.i.for.body.i.i59.i_crit_edge ]
  %valid_name_found.0.off032.i.i.i = phi i1 [ %valid_name_found.1.off0.i.i.i, %for.inc.i.i84.i.for.body.i.i59.i_crit_edge ], [ false, %if.end.i54.i.for.body.i.i59.i_crit_edge ]
  %arrayidx.i.i55.i = getelementptr %struct.dsa_chip_data, ptr %3, i32 0, i32 5, i32 %i.033.i.i.i
  %76 = ptrtoint ptr %arrayidx.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i.i55.i, align 4
  %arrayidx1.i.i.i = getelementptr %struct.dsa_chip_data, ptr %3, i32 0, i32 2, i32 %i.033.i.i.i
  %78 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx1.i.i.i, align 4
  %80 = ptrtoint ptr %dst.i53.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dst.i53.i, align 4
  %ports.i.i.i56.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %ports.i.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pn20.i.i.i57.i = load ptr, ptr %ports.i.i.i56.i, align 4
  %cmp.not21.i.i.i58.i = icmp eq ptr %.pn20.i.i.i57.i, %ports.i.i.i56.i
  br i1 %cmp.not21.i.i.i58.i, label %for.body.i.i59.i.dsa_to_port.exit.i.i74.i_crit_edge, label %for.body.i.i59.i.for.body.i.i.i63.i_crit_edge

for.body.i.i59.i.for.body.i.i.i63.i_crit_edge:    ; preds = %for.body.i.i59.i
  br label %for.body.i.i.i63.i

for.body.i.i59.i.dsa_to_port.exit.i.i74.i_crit_edge: ; preds = %for.body.i.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_to_port.exit.i.i74.i

for.body.i.i.i63.i:                               ; preds = %for.inc.i.i.i69.i.for.body.i.i.i63.i_crit_edge, %for.body.i.i59.i.for.body.i.i.i63.i_crit_edge
  %.pn22.i.i.i60.i = phi ptr [ %.pn.i.i.i67.i, %for.inc.i.i.i69.i.for.body.i.i.i63.i_crit_edge ], [ %.pn20.i.i.i57.i, %for.body.i.i59.i.for.body.i.i.i63.i_crit_edge ]
  %ds3.i.i.i61.i = getelementptr i8, ptr %.pn22.i.i.i60.i, i32 -432
  %83 = ptrtoint ptr %ds3.i.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ds3.i.i.i61.i, align 4
  %cmp4.i.i.i62.i = icmp eq ptr %84, %ds
  br i1 %cmp4.i.i.i62.i, label %land.lhs.true.i.i.i66.i, label %for.body.i.i.i63.i.for.inc.i.i.i69.i_crit_edge

for.body.i.i.i63.i.for.inc.i.i.i69.i_crit_edge:   ; preds = %for.body.i.i.i63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i69.i

land.lhs.true.i.i.i66.i:                          ; preds = %for.body.i.i.i63.i
  %index.i.i.i64.i = getelementptr i8, ptr %.pn22.i.i.i60.i, i32 -428
  %85 = ptrtoint ptr %index.i.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %index.i.i.i64.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %i.033.i.i.i)
  %cmp5.i.i.i65.i = icmp eq i32 %86, %i.033.i.i.i
  br i1 %cmp5.i.i.i65.i, label %cleanup.split.loop.exit18.i.i.i71.i, label %land.lhs.true.i.i.i66.i.for.inc.i.i.i69.i_crit_edge

land.lhs.true.i.i.i66.i.for.inc.i.i.i69.i_crit_edge: ; preds = %land.lhs.true.i.i.i66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i69.i

for.inc.i.i.i69.i:                                ; preds = %land.lhs.true.i.i.i66.i.for.inc.i.i.i69.i_crit_edge, %for.body.i.i.i63.i.for.inc.i.i.i69.i_crit_edge
  %87 = ptrtoint ptr %.pn22.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pn.i.i.i67.i = load ptr, ptr %.pn22.i.i.i60.i, align 4
  %cmp.not.i.i.i68.i = icmp eq ptr %.pn.i.i.i67.i, %ports.i.i.i56.i
  br i1 %cmp.not.i.i.i68.i, label %for.inc.i.i.i69.i.dsa_to_port.exit.i.i74.i_crit_edge, label %for.inc.i.i.i69.i.for.body.i.i.i63.i_crit_edge

for.inc.i.i.i69.i.for.body.i.i.i63.i_crit_edge:   ; preds = %for.inc.i.i.i69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i63.i

for.inc.i.i.i69.i.dsa_to_port.exit.i.i74.i_crit_edge: ; preds = %for.inc.i.i.i69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_to_port.exit.i.i74.i

cleanup.split.loop.exit18.i.i.i71.i:              ; preds = %land.lhs.true.i.i.i66.i
  call void @__sanitizer_cov_trace_pc() #14
  %dp.0.le.i.i.i70.i = getelementptr i8, ptr %.pn22.i.i.i60.i, i32 -448
  br label %dsa_to_port.exit.i.i74.i

dsa_to_port.exit.i.i74.i:                         ; preds = %cleanup.split.loop.exit18.i.i.i71.i, %for.inc.i.i.i69.i.dsa_to_port.exit.i.i74.i_crit_edge, %for.body.i.i59.i.dsa_to_port.exit.i.i74.i_crit_edge
  %retval.0.i.i.i72.i = phi ptr [ %dp.0.le.i.i.i70.i, %cleanup.split.loop.exit18.i.i.i71.i ], [ null, %for.body.i.i59.i.dsa_to_port.exit.i.i74.i_crit_edge ], [ null, %for.inc.i.i.i69.i.dsa_to_port.exit.i.i74.i_crit_edge ]
  %tobool.not.i.i73.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i73.i, label %dsa_to_port.exit.i.i74.i.for.inc.i.i84.i_crit_edge, label %if.end.i.i77.i

dsa_to_port.exit.i.i74.i.for.inc.i.i84.i_crit_edge: ; preds = %dsa_to_port.exit.i.i74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i84.i

if.end.i.i77.i:                                   ; preds = %dsa_to_port.exit.i.i74.i
  %call.i.i.i75.i = tail call i32 @strcmp(ptr noundef nonnull %77, ptr noundef nonnull dereferenceable(4) @.str.32) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i75.i)
  %tobool.not.i.i.i76.i = icmp eq i32 %call.i.i.i75.i, 0
  br i1 %tobool.not.i.i.i76.i, label %if.then.i.i.i79.i, label %if.end5.i.i.i.i

if.then.i.i.i79.i:                                ; preds = %if.end.i.i77.i
  %call1.i.i.i78.i = tail call ptr @dsa_dev_to_net_device(ptr noundef %79) #12
  %tobool2.not.i.i.i.i = icmp eq ptr %call1.i.i.i78.i, null
  br i1 %tobool2.not.i.i.i.i, label %if.then.i.i.i79.i.if.then15.i_crit_edge, label %do.body1.i.i.i.i.i

if.then.i.i.i79.i.if.then15.i_crit_edge:          ; preds = %if.then.i.i.i79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

do.body1.i.i.i.i.i:                               ; preds = %if.then.i.i.i79.i
  %88 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !116
  %pcpu_refcnt.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %call1.i.i.i78.i, i32 0, i32 118
  %89 = ptrtoint ptr %pcpu_refcnt.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pcpu_refcnt.i.i.i.i.i, align 4
  %91 = ptrtoint ptr %90 to i32
  %92 = tail call i32 @llvm.read_register.i32(metadata !105) #12
  %and.i.i.i.i.i.i = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %95
  %96 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %97, %91
  %98 = inttoptr i32 %add.i.i.i.i.i to ptr
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %add13.i.i.i.i.i = add i32 %100, -1
  store i32 %add13.i.i.i.i.i, ptr %98, align 4
  %101 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !117
  %and.i.i.i.i.i.i.i = and i32 %101, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool24.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i.i.i, label %if.then28.i.i.i.i.i, label %do.body1.i.i.i.i.i.dsa_port_parse.exit.i.i.i_crit_edge, !prof !118

do.body1.i.i.i.i.i.dsa_port_parse.exit.i.i.i_crit_edge: ; preds = %do.body1.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_port_parse.exit.i.i.i

if.then28.i.i.i.i.i:                              ; preds = %do.body1.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %dsa_port_parse.exit.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i77.i
  %call6.i.i.i.i = tail call i32 @strcmp(ptr noundef nonnull %77, ptr noundef nonnull dereferenceable(4) @.str.33) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %call6.i.i.i.i, 0
  %type.i.i.i.i80.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i72.i, i32 0, i32 6
  br i1 %tobool7.not.i.i.i.i, label %if.then8.i.i.i.i, label %if.end10.i.i.i82.i

if.then8.i.i.i.i:                                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %102 = ptrtoint ptr %type.i.i.i.i80.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 2, ptr %type.i.i.i.i80.i, align 4
  br label %for.inc.i.i84.i

if.end10.i.i.i82.i:                               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %103 = ptrtoint ptr %type.i.i.i.i80.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 3, ptr %type.i.i.i.i80.i, align 4
  %name1.i.i.i.i81.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i72.i, i32 0, i32 7
  %104 = ptrtoint ptr %name1.i.i.i.i81.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %77, ptr %name1.i.i.i.i81.i, align 4
  br label %for.inc.i.i84.i

dsa_port_parse.exit.i.i.i:                        ; preds = %if.then28.i.i.i.i.i, %do.body1.i.i.i.i.i.dsa_port_parse.exit.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %88) #12, !srcloc !119
  %call4.i.i.i83.i = tail call fastcc i32 @dsa_port_parse_cpu(ptr noundef %retval.0.i.i.i72.i, ptr noundef nonnull %call1.i.i.i78.i, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i83.i)
  %tobool3.not.i.i.i = icmp eq i32 %call4.i.i.i83.i, 0
  br i1 %tobool3.not.i.i.i, label %dsa_port_parse.exit.i.i.i.for.inc.i.i84.i_crit_edge, label %dsa_port_parse.exit.i.i.i.if.then15.i_crit_edge

dsa_port_parse.exit.i.i.i.if.then15.i_crit_edge:  ; preds = %dsa_port_parse.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

dsa_port_parse.exit.i.i.i.for.inc.i.i84.i_crit_edge: ; preds = %dsa_port_parse.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i84.i

for.inc.i.i84.i:                                  ; preds = %dsa_port_parse.exit.i.i.i.for.inc.i.i84.i_crit_edge, %if.end10.i.i.i82.i, %if.then8.i.i.i.i, %dsa_to_port.exit.i.i74.i.for.inc.i.i84.i_crit_edge
  %valid_name_found.1.off0.i.i.i = phi i1 [ %valid_name_found.0.off032.i.i.i, %dsa_to_port.exit.i.i74.i.for.inc.i.i84.i_crit_edge ], [ true, %dsa_port_parse.exit.i.i.i.for.inc.i.i84.i_crit_edge ], [ true, %if.end10.i.i.i82.i ], [ true, %if.then8.i.i.i.i ]
  %inc.i.i.i = add nuw nsw i32 %i.033.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 12
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.inc.i.i84.i.for.body.i.i59.i_crit_edge

for.inc.i.i84.i.for.body.i.i59.i_crit_edge:       ; preds = %for.inc.i.i84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i59.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i84.i
  br i1 %valid_name_found.1.off0.i.i.i, label %for.end.i.i.i.if.end22.i_crit_edge, label %for.end.i.i.i.if.then15.i_crit_edge

for.end.i.i.i.if.then15.i_crit_edge:              ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

for.end.i.i.i.if.end22.i_crit_edge:               ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.then15.i:                                      ; preds = %for.end.i.i.i.if.then15.i_crit_edge, %dsa_port_parse.exit.i.i.i.if.then15.i_crit_edge, %if.then.i.i.i79.i.if.then15.i_crit_edge, %if.end.i54.i.if.then15.i_crit_edge, %if.then12.i.if.then15.i_crit_edge
  %retval.0.i85.ph.i = phi i32 [ -22, %for.end.i.i.i.if.then15.i_crit_edge ], [ %call3.i.i, %if.end.i54.i.if.then15.i_crit_edge ], [ -12, %if.then12.i.if.then15.i_crit_edge ], [ -517, %if.then.i.i.i79.i.if.then15.i_crit_edge ], [ %call4.i.i.i83.i, %dsa_port_parse.exit.i.i.i.if.then15.i_crit_edge ]
  %105 = ptrtoint ptr %dst.i53.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dst.i53.i, align 4
  %ports.i87.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %ports.i87.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ports.i87.i, align 4
  %cmp.not28.i88.i = icmp eq ptr %108, %ports.i87.i
  br i1 %cmp.not28.i88.i, label %if.then15.i.dsa_switch_probe.exit_crit_edge, label %if.then15.i.for.body.i94.i_crit_edge

if.then15.i.for.body.i94.i_crit_edge:             ; preds = %if.then15.i
  br label %for.body.i94.i

if.then15.i.dsa_switch_probe.exit_crit_edge:      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_switch_probe.exit

for.body.i94.i:                                   ; preds = %for.inc.i104.i.for.body.i94.i_crit_edge, %if.then15.i.for.body.i94.i_crit_edge
  %.pn.in29.i89.i = phi ptr [ %.pn32.i91.i, %for.inc.i104.i.for.body.i94.i_crit_edge ], [ %108, %if.then15.i.for.body.i94.i_crit_edge ]
  %dp.031.i90.i = getelementptr i8, ptr %.pn.in29.i89.i, i32 -448
  %109 = ptrtoint ptr %.pn.in29.i89.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %.pn32.i91.i = load ptr, ptr %.pn.in29.i89.i, align 4
  %ds9.i92.i = getelementptr i8, ptr %.pn.in29.i89.i, i32 -432
  %110 = ptrtoint ptr %ds9.i92.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ds9.i92.i, align 4
  %cmp10.i93.i = icmp eq ptr %111, %ds
  br i1 %cmp10.i93.i, label %if.then.i96.i, label %for.body.i94.i.for.inc.i104.i_crit_edge

for.body.i94.i.for.inc.i104.i_crit_edge:          ; preds = %for.body.i94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i104.i

if.then.i96.i:                                    ; preds = %for.body.i94.i
  %call.i.i.i95.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in29.i89.i) #12
  br i1 %call.i.i.i95.i, label %if.end.i.i.i99.i, label %if.then.i96.i.list_del.exit.i101.i_crit_edge

if.then.i96.i.list_del.exit.i101.i_crit_edge:     ; preds = %if.then.i96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i101.i

if.end.i.i.i99.i:                                 ; preds = %if.then.i96.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i97.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i89.i, i32 0, i32 1
  %112 = ptrtoint ptr %prev.i.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i.i.i97.i, align 4
  %114 = ptrtoint ptr %.pn.in29.i89.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %.pn.in29.i89.i, align 4
  %prev1.i.i.i.i98.i = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %prev1.i.i.i.i98.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev1.i.i.i.i98.i, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %115, ptr %113, align 4
  br label %list_del.exit.i101.i

list_del.exit.i101.i:                             ; preds = %if.end.i.i.i99.i, %if.then.i96.i.list_del.exit.i101.i_crit_edge
  %118 = ptrtoint ptr %.pn.in29.i89.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in29.i89.i, align 4
  %prev.i.i100.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i89.i, i32 0, i32 1
  %119 = ptrtoint ptr %prev.i.i100.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i100.i, align 4
  tail call void @kfree(ptr noundef %dp.031.i90.i) #12
  br label %for.inc.i104.i

for.inc.i104.i:                                   ; preds = %list_del.exit.i101.i, %for.body.i94.i.for.inc.i104.i_crit_edge
  %120 = ptrtoint ptr %dst.i53.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dst.i53.i, align 4
  %ports8.i102.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %121, i32 0, i32 1
  %cmp.not.i103.i = icmp eq ptr %.pn32.i91.i, %ports8.i102.i
  br i1 %cmp.not.i103.i, label %for.inc.i104.i.if.end19.i_crit_edge, label %for.inc.i104.i.for.body.i94.i_crit_edge

for.inc.i104.i.for.body.i94.i_crit_edge:          ; preds = %for.inc.i104.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i94.i

for.inc.i104.i.if.end19.i_crit_edge:              ; preds = %for.inc.i104.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.end19.i:                                       ; preds = %for.inc.i104.i.if.end19.i_crit_edge, %for.inc.i.i.if.end19.i_crit_edge
  %err.0.i = phi i32 [ %retval.0.i85.ph.i, %for.inc.i104.i.if.end19.i_crit_edge ], [ %retval.0.i169.i, %for.inc.i.i.if.end19.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool20.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool20.not.i, label %if.end19.i.if.end22.i_crit_edge, label %if.end19.i.dsa_switch_probe.exit_crit_edge

if.end19.i.dsa_switch_probe.exit_crit_edge:       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_switch_probe.exit

if.end19.i.if.end22.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end19.i.if.end22.i_crit_edge, %for.end.i.i.i.if.end22.i_crit_edge, %dsa_switch_parse_of.exit.thread174.i
  %dst23.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %122 = ptrtoint ptr %dst23.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dst23.i, align 4
  %tobool.not.i106.i = icmp eq ptr %123, null
  br i1 %tobool.not.i106.i, label %if.end22.i.dsa_tree_get.exit.i_crit_edge, label %if.then.i107.i

if.end22.i.dsa_tree_get.exit.i_crit_edge:         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_tree_get.exit.i

if.then.i107.i:                                   ; preds = %if.end22.i
  %refcount.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %123, i32 0, i32 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #12
  %124 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #12, !srcloc !120
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %124, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i107.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !118

if.then.i107.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i107.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %125 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %125)
  %.not.i.i.i.i.i.i = icmp sgt i32 %125, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.dsa_tree_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !121

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.dsa_tree_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_tree_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i107.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i107.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i.i.i) #12
  br label %dsa_tree_get.exit.i

dsa_tree_get.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.dsa_tree_get.exit.i_crit_edge, %if.end22.i.dsa_tree_get.exit.i_crit_edge
  %setup.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %123, i32 0, i32 8
  %126 = ptrtoint ptr %setup.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %setup.i.i, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool.not.i109.i = icmp eq i8 %127, 0
  br i1 %tobool.not.i109.i, label %if.end.i112.i, label %dsa_tree_get.exit.i.if.then27.sink.split.i_crit_edge

dsa_tree_get.exit.i.if.then27.sink.split.i_crit_edge: ; preds = %dsa_tree_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.sink.split.i

if.end.i112.i:                                    ; preds = %dsa_tree_get.exit.i
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %123, i32 0, i32 1
  %128 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %.pn35.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not37.i.i.i = icmp eq ptr %.pn35.i.i.i, %ports.i.i.i
  br i1 %cmp.not37.i.i.i, label %if.end.i112.i.if.end4.i126.i_crit_edge, label %for.body.lr.ph.i.i113.i

if.end.i112.i.if.end4.i126.i_crit_edge:           ; preds = %if.end.i112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i126.i

for.body.lr.ph.i.i113.i:                          ; preds = %if.end.i112.i
  %node.i.i.i.i = getelementptr inbounds %struct.of_phandle_iterator, ptr %it.i.i.i.i, i32 0, i32 8
  br label %for.body.i.i114.i

for.body.i.i114.i:                                ; preds = %for.inc.i.i125.i.for.body.i.i114.i_crit_edge, %for.body.lr.ph.i.i113.i
  %.pn38.i.i.i = phi ptr [ %.pn35.i.i.i, %for.body.lr.ph.i.i113.i ], [ %.pn.i.i.i, %for.inc.i.i125.i.for.body.i.i114.i_crit_edge ]
  %dp.039.i.i.i = getelementptr i8, ptr %.pn38.i.i.i, i32 -448
  %type.i.i.i.i = getelementptr i8, ptr %.pn38.i.i.i, i32 -424
  %129 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %130)
  %cmp.i.i.i.i = icmp eq i32 %130, 2
  br i1 %cmp.i.i.i.i, label %if.then.i.i118.i, label %for.body.i.i114.i.for.inc.i.i125.i_crit_edge

for.body.i.i114.i.for.inc.i.i125.i_crit_edge:     ; preds = %for.body.i.i114.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i125.i

if.then.i.i118.i:                                 ; preds = %for.body.i.i114.i
  %ds1.i.i.i.i = getelementptr i8, ptr %.pn38.i.i.i, i32 -432
  %131 = ptrtoint ptr %ds1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ds1.i.i.i.i, align 4
  %dst2.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %dst2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dst2.i.i.i.i, align 4
  %dn3.i.i.i115.i = getelementptr i8, ptr %.pn38.i.i.i, i32 -404
  %135 = ptrtoint ptr %dn3.i.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dn3.i.i.i115.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %it.i.i.i.i) #12
  %137 = call ptr @memset(ptr %it.i.i.i.i, i32 255, i32 36)
  %call.i.i.i116.i = call i32 @of_phandle_iterator_init(ptr noundef nonnull %it.i.i.i.i, ptr noundef %136, ptr noundef nonnull @.str.18, ptr noundef null, i32 noundef 0) #12
  %call4.i.i.i117.i = call i32 @of_phandle_iterator_next(ptr noundef nonnull %it.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i117.i)
  %cmp45.i.i.i.i = icmp eq i32 %call4.i.i.i117.i, 0
  br i1 %cmp45.i.i.i.i, label %for.body.lr.ph.i.i.i.i, label %if.then.i.i118.i.dsa_port_setup_routing_table.exit.thread.i.i.i_crit_edge

if.then.i.i118.i.dsa_port_setup_routing_table.exit.thread.i.i.i_crit_edge: ; preds = %if.then.i.i118.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_port_setup_routing_table.exit.thread.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %if.then.i.i118.i
  %ports.i.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %134, i32 0, i32 1
  br label %for.body.i.i.i119.i

for.body.i.i.i119.i:                              ; preds = %for.inc.i.i.i123.i.for.body.i.i.i119.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %138 = ptrtoint ptr %node.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %node.i.i.i.i, align 4
  br label %for.cond.i.i.i.i.i

for.cond.i.i.i.i.i:                               ; preds = %for.body.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge, %for.body.i.i.i119.i
  %.pn.in.i.i.i.i.i = phi ptr [ %ports.i.i.i.i.i, %for.body.i.i.i119.i ], [ %.pn.i.i.i.i.i, %for.body.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge ]
  %140 = ptrtoint ptr %.pn.in.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %.pn.i.i.i.i.i = load ptr, ptr %.pn.in.i.i.i.i.i, align 4
  %cmp.not.i.i.i.i.i = icmp eq ptr %.pn.i.i.i.i.i, %ports.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %for.cond.i.i.i.i.i.dsa_tree_setup_routing_table.exit.i.i_crit_edge, label %for.body.i.i.i.i.i

for.cond.i.i.i.i.i.dsa_tree_setup_routing_table.exit.i.i_crit_edge: ; preds = %for.cond.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_tree_setup_routing_table.exit.i.i

for.body.i.i.i.i.i:                               ; preds = %for.cond.i.i.i.i.i
  %dn2.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i.i, i32 -404
  %141 = ptrtoint ptr %dn2.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dn2.i.i.i.i.i, align 4
  %cmp3.i.i.i.i.i = icmp eq ptr %142, %139
  br i1 %cmp3.i.i.i.i.i, label %dsa_tree_find_port_by_node.exit.i.i.i.i, label %for.body.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge

for.body.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge:  ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i.i.i

dsa_tree_find_port_by_node.exit.i.i.i.i:          ; preds = %for.body.i.i.i.i.i
  %dp.0.le.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i.i, i32 -448
  %tobool.not.i.i.i120.i = icmp eq ptr %dp.0.le.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i120.i, label %dsa_tree_find_port_by_node.exit.i.i.i.i.dsa_tree_setup_routing_table.exit.i.i_crit_edge, label %if.end.i.i.i121.i

dsa_tree_find_port_by_node.exit.i.i.i.i.dsa_tree_setup_routing_table.exit.i.i_crit_edge: ; preds = %dsa_tree_find_port_by_node.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_tree_setup_routing_table.exit.i.i

if.end.i.i.i121.i:                                ; preds = %dsa_tree_find_port_by_node.exit.i.i.i.i
  %143 = ptrtoint ptr %ds1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ds1.i.i.i.i, align 4
  %dst2.i.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %dst2.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dst2.i.i.i.i.i, align 4
  %rtable.i.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %146, i32 0, i32 10
  %147 = ptrtoint ptr %rtable.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pn39.i.i.i.i.i = load ptr, ptr %rtable.i.i.i.i.i, align 4
  %cmp.not41.i.i.i.i.i = icmp eq ptr %.pn39.i.i.i.i.i, %rtable.i.i.i.i.i
  br i1 %cmp.not41.i.i.i.i.i, label %if.end.i.i.i121.i.for.end.i.i.i.i.i_crit_edge, label %if.end.i.i.i121.i.for.body.i22.i.i.i.i_crit_edge

if.end.i.i.i121.i.for.body.i22.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i121.i
  br label %for.body.i22.i.i.i.i

if.end.i.i.i121.i.for.end.i.i.i.i.i_crit_edge:    ; preds = %if.end.i.i.i121.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i.i.i

for.body.i22.i.i.i.i:                             ; preds = %for.inc.i.i.i.i.i.for.body.i22.i.i.i.i_crit_edge, %if.end.i.i.i121.i.for.body.i22.i.i.i.i_crit_edge
  %.pn42.i.i.i.i.i = phi ptr [ %.pn.i23.i.i.i.i, %for.inc.i.i.i.i.i.for.body.i22.i.i.i.i_crit_edge ], [ %.pn39.i.i.i.i.i, %if.end.i.i.i121.i.for.body.i22.i.i.i.i_crit_edge ]
  %dl.043.i.i.i.i.i = getelementptr i8, ptr %.pn42.i.i.i.i.i, i32 -8
  %148 = ptrtoint ptr %dl.043.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dl.043.i.i.i.i.i, align 4
  %cmp5.i.i.i.i.i = icmp eq ptr %149, %dp.039.i.i.i
  br i1 %cmp5.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %for.body.i22.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

for.body.i22.i.i.i.i.for.inc.i.i.i.i.i_crit_edge: ; preds = %for.body.i22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %for.body.i22.i.i.i.i
  %link_dp6.i.i.i.i.i = getelementptr i8, ptr %.pn42.i.i.i.i.i, i32 -4
  %150 = ptrtoint ptr %link_dp6.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %link_dp6.i.i.i.i.i, align 4
  %cmp7.i.i.i.i.i = icmp eq ptr %151, %dp.0.le.i.i.i.i.i
  br i1 %cmp7.i.i.i.i.i, label %dsa_link_touch.exit.i.i.i.i, label %land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i.i.i

for.inc.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge, %for.body.i22.i.i.i.i.for.inc.i.i.i.i.i_crit_edge
  %152 = ptrtoint ptr %.pn42.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %.pn.i23.i.i.i.i = load ptr, ptr %.pn42.i.i.i.i.i, align 4
  %cmp.not.i24.i.i.i.i = icmp eq ptr %.pn.i23.i.i.i.i, %rtable.i.i.i.i.i
  br i1 %cmp.not.i24.i.i.i.i, label %for.inc.i.i.i.i.i.for.end.i.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.i.for.body.i22.i.i.i.i_crit_edge

for.inc.i.i.i.i.i.for.body.i22.i.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i22.i.i.i.i

for.inc.i.i.i.i.i.for.end.i.i.i.i.i_crit_edge:    ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i.i.i

for.end.i.i.i.i.i:                                ; preds = %for.inc.i.i.i.i.i.for.end.i.i.i.i.i_crit_edge, %if.end.i.i.i121.i.for.end.i.i.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %153 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %153, i32 noundef 3520, i32 noundef 16) #17
  %tobool.not.i.i.i.i122.i = icmp eq ptr %call7.i.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i122.i, label %for.end.i.i.i.i.i.if.then9.i.i.i.i_crit_edge, label %if.end14.i.i.i.i.i

for.end.i.i.i.i.i.if.then9.i.i.i.i_crit_edge:     ; preds = %for.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i.i.i.i

if.end14.i.i.i.i.i:                               ; preds = %for.end.i.i.i.i.i
  %154 = ptrtoint ptr %call7.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %dp.039.i.i.i, ptr %call7.i.i.i.i.i.i.i, align 8
  %link_dp16.i.i.i.i.i = getelementptr inbounds %struct.dsa_link, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 1
  %155 = ptrtoint ptr %link_dp16.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %dp.0.le.i.i.i.i.i, ptr %link_dp16.i.i.i.i.i, align 4
  %list17.i.i.i.i.i = getelementptr inbounds %struct.dsa_link, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 2
  %156 = ptrtoint ptr %list17.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr %list17.i.i.i.i.i, ptr %list17.i.i.i.i.i, align 8
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.dsa_link, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 2, i32 1
  %157 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %list17.i.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %prev.i37.i.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %146, i32 0, i32 10, i32 1
  %158 = ptrtoint ptr %prev.i37.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %prev.i37.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list17.i.i.i.i.i, ptr noundef %159, ptr noundef %rtable.i.i.i.i.i) #12
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end14.i.i.i.i.i.for.inc.i.i.i123.i_crit_edge

if.end14.i.i.i.i.i.for.inc.i.i.i123.i_crit_edge:  ; preds = %if.end14.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i123.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end14.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %160 = ptrtoint ptr %prev.i37.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %list17.i.i.i.i.i, ptr %prev.i37.i.i.i.i.i, align 4
  %161 = ptrtoint ptr %list17.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %rtable.i.i.i.i.i, ptr %list17.i.i.i.i.i, align 8
  %162 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %159, ptr %prev.i.i.i.i.i.i, align 4
  %163 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %list17.i.i.i.i.i, ptr %159, align 4
  br label %for.inc.i.i.i123.i

dsa_link_touch.exit.i.i.i.i:                      ; preds = %land.lhs.true.i.i.i.i.i
  %dl.043.i.i.i.i.i.le = getelementptr i8, ptr %.pn42.i.i.i.i.i, i32 -8
  %tobool8.not.i.i.i.i = icmp eq ptr %dl.043.i.i.i.i.i.le, null
  br i1 %tobool8.not.i.i.i.i, label %dsa_link_touch.exit.i.i.i.i.if.then9.i.i.i.i_crit_edge, label %dsa_link_touch.exit.i.i.i.i.for.inc.i.i.i123.i_crit_edge

dsa_link_touch.exit.i.i.i.i.for.inc.i.i.i123.i_crit_edge: ; preds = %dsa_link_touch.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i123.i

dsa_link_touch.exit.i.i.i.i.if.then9.i.i.i.i_crit_edge: ; preds = %dsa_link_touch.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i.i.i.i

if.then9.i.i.i.i:                                 ; preds = %dsa_link_touch.exit.i.i.i.i.if.then9.i.i.i.i_crit_edge, %for.end.i.i.i.i.i.if.then9.i.i.i.i_crit_edge
  %164 = ptrtoint ptr %node.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %node.i.i.i.i, align 4
  br label %dsa_tree_setup_routing_table.exit.i.i

for.inc.i.i.i123.i:                               ; preds = %dsa_link_touch.exit.i.i.i.i.for.inc.i.i.i123.i_crit_edge, %if.end.i.i.i.i.i.i.i, %if.end14.i.i.i.i.i.for.inc.i.i.i123.i_crit_edge
  %call12.i.i.i.i = call i32 @of_phandle_iterator_next(ptr noundef nonnull %it.i.i.i.i) #12
  %cmp.i20.i.i.i = icmp eq i32 %call12.i.i.i.i, 0
  br i1 %cmp.i20.i.i.i, label %for.inc.i.i.i123.i.for.body.i.i.i119.i_crit_edge, label %for.inc.i.i.i123.i.dsa_port_setup_routing_table.exit.thread.i.i.i_crit_edge

for.inc.i.i.i123.i.dsa_port_setup_routing_table.exit.thread.i.i.i_crit_edge: ; preds = %for.inc.i.i.i123.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_port_setup_routing_table.exit.thread.i.i.i

for.inc.i.i.i123.i.for.body.i.i.i119.i_crit_edge: ; preds = %for.inc.i.i.i123.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i119.i

dsa_port_setup_routing_table.exit.thread.i.i.i:   ; preds = %for.inc.i.i.i123.i.dsa_port_setup_routing_table.exit.thread.i.i.i_crit_edge, %if.then.i.i118.i.dsa_port_setup_routing_table.exit.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %it.i.i.i.i) #12
  br label %for.inc.i.i125.i

for.inc.i.i125.i:                                 ; preds = %dsa_port_setup_routing_table.exit.thread.i.i.i, %for.body.i.i114.i.for.inc.i.i125.i_crit_edge
  %166 = ptrtoint ptr %.pn38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %.pn.i.i.i = load ptr, ptr %.pn38.i.i.i, align 4
  %cmp.not.i.i124.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i124.i, label %for.inc.i.i125.i.if.end4.i126.i_crit_edge, label %for.inc.i.i125.i.for.body.i.i114.i_crit_edge

for.inc.i.i125.i.for.body.i.i114.i_crit_edge:     ; preds = %for.inc.i.i125.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i114.i

for.inc.i.i125.i.if.end4.i126.i_crit_edge:        ; preds = %for.inc.i.i125.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i126.i

dsa_tree_setup_routing_table.exit.i.i:            ; preds = %if.then9.i.i.i.i, %dsa_tree_find_port_by_node.exit.i.i.i.i.dsa_tree_setup_routing_table.exit.i.i_crit_edge, %for.cond.i.i.i.i.i.dsa_tree_setup_routing_table.exit.i.i_crit_edge
  %.sink.i.i.i.i = phi ptr [ %165, %if.then9.i.i.i.i ], [ %139, %for.cond.i.i.i.i.i.dsa_tree_setup_routing_table.exit.i.i_crit_edge ], [ %139, %dsa_tree_find_port_by_node.exit.i.i.i.i.dsa_tree_setup_routing_table.exit.i.i_crit_edge ]
  call void @of_node_put(ptr noundef %.sink.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %it.i.i.i.i) #12
  br label %dsa_switch_probe.exit

if.end4.i126.i:                                   ; preds = %for.inc.i.i125.i.if.end4.i126.i_crit_edge, %if.end.i112.i.if.end4.i126.i_crit_edge
  %167 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %.pn67.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not69.i.i.i = icmp eq ptr %.pn67.i.i.i, %ports.i.i.i
  br i1 %cmp.not69.i.i.i, label %if.end4.i126.i.for.cond.i.i.i62.i.i.preheader_crit_edge, label %if.end4.i126.i.for.body.i55.i.i_crit_edge

if.end4.i126.i.for.body.i55.i.i_crit_edge:        ; preds = %if.end4.i126.i
  br label %for.body.i55.i.i

if.end4.i126.i.for.cond.i.i.i62.i.i.preheader_crit_edge: ; preds = %if.end4.i126.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i62.i.i.preheader

for.body.i55.i.i:                                 ; preds = %for.inc34.i.i.i.for.body.i55.i.i_crit_edge, %if.end4.i126.i.for.body.i55.i.i_crit_edge
  %.pn70.i.i.i = phi ptr [ %.pn.i57.i.i, %for.inc34.i.i.i.for.body.i55.i.i_crit_edge ], [ %.pn67.i.i.i, %if.end4.i126.i.for.body.i55.i.i_crit_edge ]
  %cpu_dp.071.i.i.i = getelementptr i8, ptr %.pn70.i.i.i, i32 -448
  %type.i.i53.i.i = getelementptr i8, ptr %.pn70.i.i.i, i32 -424
  %168 = ptrtoint ptr %type.i.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %type.i.i53.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %169)
  %cmp.i.i54.i.i = icmp eq i32 %169, 1
  br i1 %cmp.i.i54.i.i, label %if.end.i.i127.i, label %for.body.i55.i.i.for.inc34.i.i.i_crit_edge

for.body.i55.i.i.for.inc34.i.i.i_crit_edge:       ; preds = %for.body.i55.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc34.i.i.i

if.end.i.i127.i:                                  ; preds = %for.body.i55.i.i
  %ds.i.i.i = getelementptr i8, ptr %.pn70.i.i.i, i32 -432
  %170 = ptrtoint ptr %ds.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ds.i.i.i, align 4
  %dst3.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %dst3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dst3.i.i.i, align 4
  %ports4.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %ports4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %.pn5662.i.i.i = load ptr, ptr %ports4.i.i.i, align 4
  %cmp13.not65.i.i.i = icmp eq ptr %.pn5662.i.i.i, %ports4.i.i.i
  br i1 %cmp13.not65.i.i.i, label %if.end.i.i127.i.for.inc34.i.i.i_crit_edge, label %if.end.i.i127.i.for.body15.i.i.i_crit_edge

if.end.i.i127.i.for.body15.i.i.i_crit_edge:       ; preds = %if.end.i.i127.i
  br label %for.body15.i.i.i

if.end.i.i127.i.for.inc34.i.i.i_crit_edge:        ; preds = %if.end.i.i127.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc34.i.i.i

for.body15.i.i.i:                                 ; preds = %for.inc.i56.i.i.for.body15.i.i.i_crit_edge, %if.end.i.i127.i.for.body15.i.i.i_crit_edge
  %175 = phi ptr [ %186, %for.inc.i56.i.i.for.body15.i.i.i_crit_edge ], [ %171, %if.end.i.i127.i.for.body15.i.i.i_crit_edge ]
  %.pn5666.i.i.i = phi ptr [ %.pn56.i.i.i, %for.inc.i56.i.i.for.body15.i.i.i_crit_edge ], [ %.pn5662.i.i.i, %if.end.i.i127.i.for.body15.i.i.i_crit_edge ]
  %ds16.i.i.i = getelementptr i8, ptr %.pn5666.i.i.i, i32 -432
  %176 = ptrtoint ptr %ds16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ds16.i.i.i, align 4
  %cmp18.i.i.i = icmp eq ptr %177, %175
  br i1 %cmp18.i.i.i, label %if.then19.i.i.i, label %for.body15.i.i.i.for.inc.i56.i.i_crit_edge

for.body15.i.i.i.for.inc.i56.i.i_crit_edge:       ; preds = %for.body15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i56.i.i

if.then19.i.i.i:                                  ; preds = %for.body15.i.i.i
  %cpu_dp20.i.i.i = getelementptr i8, ptr %.pn5666.i.i.i, i32 -416
  %178 = ptrtoint ptr %cpu_dp20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %cpu_dp20.i.i.i, align 4
  %tobool.not.i.i128.i = icmp eq ptr %179, null
  br i1 %tobool.not.i.i128.i, label %if.end22.i.i.i, label %if.then19.i.i.i.for.inc.i56.i.i_crit_edge

if.then19.i.i.i.for.inc.i56.i.i_crit_edge:        ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i56.i.i

if.end22.i.i.i:                                   ; preds = %if.then19.i.i.i
  %type.i57.i.i.i = getelementptr i8, ptr %.pn5666.i.i.i, i32 -424
  %180 = ptrtoint ptr %type.i57.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %type.i57.i.i.i, align 4
  %182 = and i32 %181, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %182)
  %switch.i.i.i = icmp eq i32 %182, 2
  br i1 %switch.i.i.i, label %if.then25.i.i.i, label %if.end22.i.i.i.for.inc.i56.i.i_crit_edge

if.end22.i.i.i.for.inc.i56.i.i_crit_edge:         ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i56.i.i

if.then25.i.i.i:                                  ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %183 = ptrtoint ptr %cpu_dp20.i.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %cpu_dp.071.i.i.i, ptr %cpu_dp20.i.i.i, align 4
  br label %for.inc.i56.i.i

for.inc.i56.i.i:                                  ; preds = %if.then25.i.i.i, %if.end22.i.i.i.for.inc.i56.i.i_crit_edge, %if.then19.i.i.i.for.inc.i56.i.i_crit_edge, %for.body15.i.i.i.for.inc.i56.i.i_crit_edge
  %184 = ptrtoint ptr %.pn5666.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %.pn56.i.i.i = load ptr, ptr %.pn5666.i.i.i, align 4
  %185 = ptrtoint ptr %ds.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %ds.i.i.i, align 4
  %dst11.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %dst11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dst11.i.i.i, align 4
  %ports12.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %188, i32 0, i32 1
  %cmp13.not.i.i.i = icmp eq ptr %.pn56.i.i.i, %ports12.i.i.i
  br i1 %cmp13.not.i.i.i, label %for.inc.i56.i.i.for.inc34.i.i.i_crit_edge, label %for.inc.i56.i.i.for.body15.i.i.i_crit_edge

for.inc.i56.i.i.for.body15.i.i.i_crit_edge:       ; preds = %for.inc.i56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body15.i.i.i

for.inc.i56.i.i.for.inc34.i.i.i_crit_edge:        ; preds = %for.inc.i56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc34.i.i.i

for.inc34.i.i.i:                                  ; preds = %for.inc.i56.i.i.for.inc34.i.i.i_crit_edge, %if.end.i.i127.i.for.inc34.i.i.i_crit_edge, %for.body.i55.i.i.for.inc34.i.i.i_crit_edge
  %189 = ptrtoint ptr %.pn70.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %.pn.i57.i.i = load ptr, ptr %.pn70.i.i.i, align 4
  %cmp.not.i58.i.i = icmp eq ptr %.pn.i57.i.i, %ports.i.i.i
  br i1 %cmp.not.i58.i.i, label %for.inc34.i.i.i.for.cond.i.i.i62.i.i.preheader_crit_edge, label %for.inc34.i.i.i.for.body.i55.i.i_crit_edge

for.inc34.i.i.i.for.body.i55.i.i_crit_edge:       ; preds = %for.inc34.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i55.i.i

for.inc34.i.i.i.for.cond.i.i.i62.i.i.preheader_crit_edge: ; preds = %for.inc34.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i62.i.i.preheader

for.cond.i.i.i62.i.i.preheader:                   ; preds = %for.inc34.i.i.i.for.cond.i.i.i62.i.i.preheader_crit_edge, %if.end4.i126.i.for.cond.i.i.i62.i.i.preheader_crit_edge
  br label %for.cond.i.i.i62.i.i

for.cond.i.i.i62.i.i:                             ; preds = %for.body.i.i.i63.i.i.for.cond.i.i.i62.i.i_crit_edge, %for.cond.i.i.i62.i.i.preheader
  %.pn.in.i.i.i59.i.i = phi ptr [ %.pn.i.i.i60.i.i, %for.body.i.i.i63.i.i.for.cond.i.i.i62.i.i_crit_edge ], [ %ports.i.i.i, %for.cond.i.i.i62.i.i.preheader ]
  %190 = ptrtoint ptr %.pn.in.i.i.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %.pn.i.i.i60.i.i = load ptr, ptr %.pn.in.i.i.i59.i.i, align 4
  %cmp.not.i.i.i61.i.i = icmp eq ptr %.pn.i.i.i60.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i61.i.i, label %for.cond.i.i.i62.i.i.if.then27.sink.split.i_crit_edge, label %for.body.i.i.i63.i.i

for.cond.i.i.i62.i.i.if.then27.sink.split.i_crit_edge: ; preds = %for.cond.i.i.i62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.sink.split.i

for.body.i.i.i63.i.i:                             ; preds = %for.cond.i.i.i62.i.i
  %type.i.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i60.i.i, i32 -424
  %191 = ptrtoint ptr %type.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %type.i.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i.i = icmp eq i32 %192, 1
  br i1 %cmp.i.i.i.i.i.i, label %dsa_tree_find_first_cpu.exit.i.i.i.i, label %for.body.i.i.i63.i.i.for.cond.i.i.i62.i.i_crit_edge

for.body.i.i.i63.i.i.for.cond.i.i.i62.i.i_crit_edge: ; preds = %for.body.i.i.i63.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i62.i.i

dsa_tree_find_first_cpu.exit.i.i.i.i:             ; preds = %for.body.i.i.i63.i.i
  %dp.0.le.i.i.i64.i.i = getelementptr i8, ptr %.pn.i.i.i60.i.i, i32 -448
  %tobool.not.i.i65.i.i = icmp eq ptr %dp.0.le.i.i.i64.i.i, null
  br i1 %tobool.not.i.i65.i.i, label %dsa_tree_find_first_cpu.exit.i.i.i.i.if.then27.sink.split.i_crit_edge, label %for.cond.preheader.i.i.i.i

dsa_tree_find_first_cpu.exit.i.i.i.i.if.then27.sink.split.i_crit_edge: ; preds = %dsa_tree_find_first_cpu.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.sink.split.i

for.cond.preheader.i.i.i.i:                       ; preds = %dsa_tree_find_first_cpu.exit.i.i.i.i
  %193 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %.pn33.i.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not34.i.i.i.i = icmp eq ptr %.pn33.i.i.i.i, %ports.i.i.i
  br i1 %cmp.not34.i.i.i.i, label %for.cond.preheader.i.i.i.i.if.end8.i.i_crit_edge, label %for.cond.preheader.i.i.i.i.for.body.i.i66.i.i_crit_edge

for.cond.preheader.i.i.i.i.for.body.i.i66.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i.i
  br label %for.body.i.i66.i.i

for.cond.preheader.i.i.i.i.if.end8.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

for.body.i.i66.i.i:                               ; preds = %for.inc.i.i67.i.i.for.body.i.i66.i.i_crit_edge, %for.cond.preheader.i.i.i.i.for.body.i.i66.i.i_crit_edge
  %.pn35.i.i.i.i = phi ptr [ %.pn.i.i.i131.i, %for.inc.i.i67.i.i.for.body.i.i66.i.i_crit_edge ], [ %.pn33.i.i.i.i, %for.cond.preheader.i.i.i.i.for.body.i.i66.i.i_crit_edge ]
  %cpu_dp4.i.i.i.i = getelementptr i8, ptr %.pn35.i.i.i.i, i32 -416
  %194 = ptrtoint ptr %cpu_dp4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cpu_dp4.i.i.i.i, align 4
  %tobool5.not.i.i.i129.i = icmp eq ptr %195, null
  br i1 %tobool5.not.i.i.i129.i, label %if.end7.i.i.i.i, label %for.body.i.i66.i.i.for.inc.i.i67.i.i_crit_edge

for.body.i.i66.i.i.for.inc.i.i67.i.i_crit_edge:   ; preds = %for.body.i.i66.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i67.i.i

if.end7.i.i.i.i:                                  ; preds = %for.body.i.i66.i.i
  %type.i.i.i.i130.i = getelementptr i8, ptr %.pn35.i.i.i.i, i32 -424
  %196 = ptrtoint ptr %type.i.i.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %type.i.i.i.i130.i, align 4
  %198 = and i32 %197, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %198)
  %switch.i.i.i.i = icmp eq i32 %198, 2
  br i1 %switch.i.i.i.i, label %if.then10.i.i.i.i, label %if.end7.i.i.i.i.for.inc.i.i67.i.i_crit_edge

if.end7.i.i.i.i.for.inc.i.i67.i.i_crit_edge:      ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i67.i.i

if.then10.i.i.i.i:                                ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %199 = ptrtoint ptr %cpu_dp4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %dp.0.le.i.i.i64.i.i, ptr %cpu_dp4.i.i.i.i, align 4
  br label %for.inc.i.i67.i.i

for.inc.i.i67.i.i:                                ; preds = %if.then10.i.i.i.i, %if.end7.i.i.i.i.for.inc.i.i67.i.i_crit_edge, %for.body.i.i66.i.i.for.inc.i.i67.i.i_crit_edge
  %200 = ptrtoint ptr %.pn35.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %.pn.i.i.i131.i = load ptr, ptr %.pn35.i.i.i.i, align 4
  %cmp.not.i.i.i132.i = icmp eq ptr %.pn.i.i.i131.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i132.i, label %for.inc.i.i67.i.i.if.end8.i.i_crit_edge, label %for.inc.i.i67.i.i.for.body.i.i66.i.i_crit_edge

for.inc.i.i67.i.i.for.body.i.i66.i.i_crit_edge:   ; preds = %for.inc.i.i67.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i66.i.i

for.inc.i.i67.i.i.if.end8.i.i_crit_edge:          ; preds = %for.inc.i.i67.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %for.inc.i.i67.i.i.if.end8.i.i_crit_edge, %for.cond.preheader.i.i.i.i.if.end8.i.i_crit_edge
  %201 = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs.i.i.i.i.i, i32 0, i32 4
  %switch_id.i.i.i.i.i = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs.i.i.i.i.i, i32 0, i32 3
  %id_len.i.i.i.i.i = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs.i.i.i.i.i, i32 0, i32 3, i32 1
  %flavour9.i.i.i.i.i = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs.i.i.i.i.i, i32 0, i32 2
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %dsa_switch_setup.exit.i.i.i.for.cond.i.i.i_crit_edge, %if.end8.i.i
  %.pn.in.i.i.i = phi ptr [ %ports.i.i.i, %if.end8.i.i ], [ %.pn.i69.i.i, %dsa_switch_setup.exit.i.i.i.for.cond.i.i.i_crit_edge ]
  %202 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %.pn.i69.i.i = load ptr, ptr %.pn.in.i.i.i, align 4
  %cmp.not.i70.i.i = icmp eq ptr %.pn.i69.i.i, %ports.i.i.i
  br i1 %cmp.not.i70.i.i, label %if.end12.i.i, label %for.body.i73.i.i

for.body.i73.i.i:                                 ; preds = %for.cond.i.i.i
  %ds.i71.i.i = getelementptr i8, ptr %.pn.i69.i.i, i32 -432
  %203 = ptrtoint ptr %ds.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ds.i71.i.i, align 4
  %setup.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %204, i32 0, i32 3
  %205 = ptrtoint ptr %setup.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %bf.load.i.i.i.i = load i16, ptr %setup.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i.i.i)
  %tobool.not.i.i72.i.i = icmp sgt i16 %bf.load.i.i.i.i, -1
  br i1 %tobool.not.i.i72.i.i, label %if.end.i.i75.i.i, label %for.body.i73.i.i.dsa_switch_setup.exit.i.i.i_crit_edge

for.body.i73.i.i.dsa_switch_setup.exit.i.i.i_crit_edge: ; preds = %for.body.i73.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_switch_setup.exit.i.i.i

if.end.i.i75.i.i:                                 ; preds = %for.body.i73.i.i
  %dst.i.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %204, i32 0, i32 1
  %206 = ptrtoint ptr %dst.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dst.i.i.i.i.i, align 4
  %ports.i.i.i74.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %ports.i.i.i74.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %.pn19.i.i.i.i.i = load ptr, ptr %ports.i.i.i74.i.i, align 4
  %cmp.not20.i.i.i.i.i = icmp eq ptr %.pn19.i.i.i.i.i, %ports.i.i.i74.i.i
  br i1 %cmp.not20.i.i.i.i.i, label %if.end.i.i75.i.i.dsa_user_ports.exit.i.i.i.i_crit_edge, label %if.end.i.i75.i.i.for.body.i.i.i76.i.i_crit_edge

if.end.i.i75.i.i.for.body.i.i.i76.i.i_crit_edge:  ; preds = %if.end.i.i75.i.i
  br label %for.body.i.i.i76.i.i

if.end.i.i75.i.i.dsa_user_ports.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i75.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_user_ports.exit.i.i.i.i

for.body.i.i.i76.i.i:                             ; preds = %for.inc.i.i.i81.i.i.for.body.i.i.i76.i.i_crit_edge, %if.end.i.i75.i.i.for.body.i.i.i76.i.i_crit_edge
  %.pn22.i.i.i.i.i = phi ptr [ %.pn.i.i.i79.i.i, %for.inc.i.i.i81.i.i.for.body.i.i.i76.i.i_crit_edge ], [ %.pn19.i.i.i.i.i, %if.end.i.i75.i.i.for.body.i.i.i76.i.i_crit_edge ]
  %mask.021.i.i.i.i.i = phi i32 [ %mask.1.i.i.i.i.i, %for.inc.i.i.i81.i.i.for.body.i.i.i76.i.i_crit_edge ], [ 0, %if.end.i.i75.i.i.for.body.i.i.i76.i.i_crit_edge ]
  %ds3.i.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i.i, i32 -432
  %209 = ptrtoint ptr %ds3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ds3.i.i.i.i.i, align 4
  %cmp4.i.i.i.i.i = icmp eq ptr %210, %204
  br i1 %cmp4.i.i.i.i.i, label %if.then.i.i.i.i.i, label %for.body.i.i.i76.i.i.for.inc.i.i.i81.i.i_crit_edge

for.body.i.i.i76.i.i.for.inc.i.i.i81.i.i_crit_edge: ; preds = %for.body.i.i.i76.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i81.i.i

if.then.i.i.i.i.i:                                ; preds = %for.body.i.i.i76.i.i
  %type.i.i.i.i77.i.i = getelementptr i8, ptr %.pn22.i.i.i.i.i, i32 -424
  %211 = ptrtoint ptr %type.i.i.i.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %type.i.i.i.i77.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %212)
  %cmp.i.i.i.i78.i.i = icmp eq i32 %212, 3
  br i1 %cmp.i.i.i.i78.i.i, label %if.then5.i.i.i.i.i, label %if.then.i.i.i.i.i.for.inc.i.i.i81.i.i_crit_edge

if.then.i.i.i.i.i.for.inc.i.i.i81.i.i_crit_edge:  ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i81.i.i

if.then5.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %index.i.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i.i, i32 -428
  %213 = ptrtoint ptr %index.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %index.i.i.i.i.i, align 4
  %shl.i.i.i.i.i = shl nuw i32 1, %214
  %or.i.i.i.i.i = or i32 %shl.i.i.i.i.i, %mask.021.i.i.i.i.i
  br label %for.inc.i.i.i81.i.i

for.inc.i.i.i81.i.i:                              ; preds = %if.then5.i.i.i.i.i, %if.then.i.i.i.i.i.for.inc.i.i.i81.i.i_crit_edge, %for.body.i.i.i76.i.i.for.inc.i.i.i81.i.i_crit_edge
  %mask.1.i.i.i.i.i = phi i32 [ %or.i.i.i.i.i, %if.then5.i.i.i.i.i ], [ %mask.021.i.i.i.i.i, %if.then.i.i.i.i.i.for.inc.i.i.i81.i.i_crit_edge ], [ %mask.021.i.i.i.i.i, %for.body.i.i.i76.i.i.for.inc.i.i.i81.i.i_crit_edge ]
  %215 = ptrtoint ptr %.pn22.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %.pn.i.i.i79.i.i = load ptr, ptr %.pn22.i.i.i.i.i, align 4
  %cmp.not.i.i.i80.i.i = icmp eq ptr %.pn.i.i.i79.i.i, %ports.i.i.i74.i.i
  br i1 %cmp.not.i.i.i80.i.i, label %for.inc.i.i.i81.i.i.dsa_user_ports.exit.i.i.i.i_crit_edge, label %for.inc.i.i.i81.i.i.for.body.i.i.i76.i.i_crit_edge

for.inc.i.i.i81.i.i.for.body.i.i.i76.i.i_crit_edge: ; preds = %for.inc.i.i.i81.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i76.i.i

for.inc.i.i.i81.i.i.dsa_user_ports.exit.i.i.i.i_crit_edge: ; preds = %for.inc.i.i.i81.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_user_ports.exit.i.i.i.i

dsa_user_ports.exit.i.i.i.i:                      ; preds = %for.inc.i.i.i81.i.i.dsa_user_ports.exit.i.i.i.i_crit_edge, %if.end.i.i75.i.i.dsa_user_ports.exit.i.i.i.i_crit_edge
  %mask.0.lcssa.i.i.i.i.i = phi i32 [ 0, %if.end.i.i75.i.i.dsa_user_ports.exit.i.i.i.i_crit_edge ], [ %mask.1.i.i.i.i.i, %for.inc.i.i.i81.i.i.dsa_user_ports.exit.i.i.i.i_crit_edge ]
  %phys_mii_mask.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %204, i32 0, i32 9
  %216 = ptrtoint ptr %phys_mii_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %phys_mii_mask.i.i.i.i, align 4
  %or.i.i.i.i = or i32 %217, %mask.0.lcssa.i.i.i.i.i
  store i32 %or.i.i.i.i, ptr %phys_mii_mask.i.i.i.i, align 4
  %218 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %204, align 4
  %call.i.i.i.i135.i = call ptr @devlink_alloc_ns(ptr noundef nonnull @dsa_devlink_ops, i32 noundef 4, ptr noundef nonnull @init_net, ptr noundef %219) #12
  %devlink.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %204, i32 0, i32 14
  %220 = ptrtoint ptr %devlink.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %call.i.i.i.i135.i, ptr %devlink.i.i.i.i, align 4
  %tobool3.not.i.i.i.i = icmp eq ptr %call.i.i.i.i135.i, null
  br i1 %tobool3.not.i.i.i.i, label %dsa_user_ports.exit.i.i.i.i.teardown_cpu_ports.i.i_crit_edge, label %if.end5.i.i.i138.i

dsa_user_ports.exit.i.i.i.i.teardown_cpu_ports.i.i_crit_edge: ; preds = %dsa_user_ports.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %teardown_cpu_ports.i.i

if.end5.i.i.i138.i:                               ; preds = %dsa_user_ports.exit.i.i.i.i
  %call7.i.i.i136.i = call ptr @devlink_priv(ptr noundef nonnull %call.i.i.i.i135.i) #12
  %221 = ptrtoint ptr %call7.i.i.i136.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %204, ptr %call7.i.i.i136.i, align 4
  %222 = ptrtoint ptr %dst.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %dst.i.i.i.i.i, align 4
  %ports.i.i.i137.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %ports.i.i.i137.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %.pn173.i.i.i.i = load ptr, ptr %ports.i.i.i137.i, align 4
  %cmp.not175.i.i.i.i = icmp eq ptr %.pn173.i.i.i.i, %ports.i.i.i137.i
  br i1 %cmp.not175.i.i.i.i, label %if.end5.i.i.i138.i.for.end.i.i.i.i_crit_edge, label %if.end5.i.i.i138.i.for.body.i.i82.i.i_crit_edge

if.end5.i.i.i138.i.for.body.i.i82.i.i_crit_edge:  ; preds = %if.end5.i.i.i138.i
  br label %for.body.i.i82.i.i

if.end5.i.i.i138.i.for.end.i.i.i.i_crit_edge:     ; preds = %if.end5.i.i.i138.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i.i

for.body.i.i82.i.i:                               ; preds = %for.inc.i.i87.i.i.for.body.i.i82.i.i_crit_edge, %if.end5.i.i.i138.i.for.body.i.i82.i.i_crit_edge
  %.pn176.i.i.i.i = phi ptr [ %.pn.i.i85.i.i, %for.inc.i.i87.i.i.for.body.i.i82.i.i_crit_edge ], [ %.pn173.i.i.i.i, %if.end5.i.i.i138.i.for.body.i.i82.i.i_crit_edge ]
  %ds11.i.i.i.i = getelementptr i8, ptr %.pn176.i.i.i.i, i32 -432
  %225 = ptrtoint ptr %ds11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %ds11.i.i.i.i, align 4
  %cmp12.i.i.i.i = icmp eq ptr %226, %204
  br i1 %cmp12.i.i.i.i, label %if.then13.i.i.i.i, label %for.body.i.i82.i.i.for.inc.i.i87.i.i_crit_edge

for.body.i.i82.i.i.for.inc.i.i87.i.i_crit_edge:   ; preds = %for.body.i.i82.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i87.i.i

if.then13.i.i.i.i:                                ; preds = %for.body.i.i82.i.i
  %devlink_port.i.i.i.i.i = getelementptr i8, ptr %.pn176.i.i.i.i, i32 -392
  %227 = ptrtoint ptr %dst.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dst.i.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %attrs.i.i.i.i.i) #12
  %229 = call ptr @memset(ptr %attrs.i.i.i.i.i, i32 0, i32 60)
  %230 = ptrtoint ptr %devlink.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %devlink.i.i.i.i, align 4
  %index.i152.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %228, i32 0, i32 3
  %index3.i.i.i.i.i = getelementptr i8, ptr %.pn176.i.i.i.i, i32 -428
  %232 = ptrtoint ptr %index3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %index3.i.i.i.i.i, align 4
  %234 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %201, align 4
  %235 = ptrtoint ptr %index.i152.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %235, i32 4)
  %236 = load i32, ptr %index.i152.i.i.i.i, align 1
  %237 = ptrtoint ptr %switch_id.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %switch_id.i.i.i.i.i, align 4
  %238 = ptrtoint ptr %id_len.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 4, ptr %id_len.i.i.i.i.i, align 4
  %239 = call ptr @memset(ptr %devlink_port.i.i.i.i.i, i32 0, i32 356)
  %type.i.i.i83.i.i = getelementptr i8, ptr %.pn176.i.i.i.i, i32 -424
  %240 = ptrtoint ptr %type.i.i.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %type.i.i.i83.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %241)
  %242 = icmp ult i32 %241, 3
  br i1 %242, label %switch.lookup, label %if.then13.i.i.i.i.sw.epilog.i.i.i.i.i_crit_edge

if.then13.i.i.i.i.sw.epilog.i.i.i.i.i_crit_edge:  ; preds = %if.then13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i.i.i.i

switch.lookup:                                    ; preds = %if.then13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.dsa_register_switch, i32 0, i32 %241
  %243 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %243)
  %switch.load = load i32, ptr %switch.gep, align 4
  %244 = ptrtoint ptr %flavour9.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %switch.load, ptr %flavour9.i.i.i.i.i, align 4
  br label %sw.epilog.i.i.i.i.i

sw.epilog.i.i.i.i.i:                              ; preds = %switch.lookup, %if.then13.i.i.i.i.sw.epilog.i.i.i.i.i_crit_edge
  call void @devlink_port_attrs_set(ptr noundef %devlink_port.i.i.i.i.i, ptr noundef nonnull %attrs.i.i.i.i.i) #12
  %245 = ptrtoint ptr %index3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %index3.i.i.i.i.i, align 4
  %call.i153.i.i.i.i = call i32 @devlink_port_register(ptr noundef %231, ptr noundef %devlink_port.i.i.i.i.i, i32 noundef %246) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153.i.i.i.i)
  %tobool.not.i.i.i84.i.i = icmp eq i32 %call.i153.i.i.i.i, 0
  br i1 %tobool.not.i.i.i84.i.i, label %dsa_port_devlink_setup.exit.thread.i.i.i.i, label %dsa_port_devlink_setup.exit.i.i.i.i

dsa_port_devlink_setup.exit.thread.i.i.i.i:       ; preds = %sw.epilog.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %devlink_port_setup.i.i.i.i.i = getelementptr i8, ptr %.pn176.i.i.i.i, i32 -405
  %247 = ptrtoint ptr %devlink_port_setup.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %bf.load.i.i.i.i.i = load i8, ptr %devlink_port_setup.i.i.i.i.i, align 1
  %bf.set.i.i.i.i.i = or i8 %bf.load.i.i.i.i.i, 16
  store i8 %bf.set.i.i.i.i.i, ptr %devlink_port_setup.i.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %attrs.i.i.i.i.i) #12
  br label %for.inc.i.i87.i.i

dsa_port_devlink_setup.exit.i.i.i.i:              ; preds = %sw.epilog.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %attrs.i.i.i.i.i) #12
  br label %unregister_devlink_ports.i.i.i.i

for.inc.i.i87.i.i:                                ; preds = %dsa_port_devlink_setup.exit.thread.i.i.i.i, %for.body.i.i82.i.i.for.inc.i.i87.i.i_crit_edge
  %248 = ptrtoint ptr %.pn176.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %.pn.i.i85.i.i = load ptr, ptr %.pn176.i.i.i.i, align 4
  %249 = ptrtoint ptr %dst.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %dst.i.i.i.i.i, align 4
  %ports10.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %250, i32 0, i32 1
  %cmp.not.i.i86.i.i = icmp eq ptr %.pn.i.i85.i.i, %ports10.i.i.i.i
  br i1 %cmp.not.i.i86.i.i, label %for.inc.i.i87.i.i.for.end.i.i.i.i_crit_edge, label %for.inc.i.i87.i.i.for.body.i.i82.i.i_crit_edge

for.inc.i.i87.i.i.for.body.i.i82.i.i_crit_edge:   ; preds = %for.inc.i.i87.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i82.i.i

for.inc.i.i87.i.i.for.end.i.i.i.i_crit_edge:      ; preds = %for.inc.i.i87.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %for.inc.i.i87.i.i.for.end.i.i.i.i_crit_edge, %if.end5.i.i.i138.i.for.end.i.i.i.i_crit_edge
  %call24.i.i.i.i = call i32 @dsa_switch_register_notifier(ptr noundef %204) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i.i.i)
  %tobool25.not.i.i.i.i = icmp eq i32 %call24.i.i.i.i, 0
  br i1 %tobool25.not.i.i.i.i, label %if.end27.i.i.i.i, label %for.end.i.i.i.i.unregister_devlink_ports.i.i.i.i_crit_edge

for.end.i.i.i.i.unregister_devlink_ports.i.i.i.i_crit_edge: ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unregister_devlink_ports.i.i.i.i

if.end27.i.i.i.i:                                 ; preds = %for.end.i.i.i.i
  %251 = ptrtoint ptr %setup.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %bf.load28.i.i.i.i = load i16, ptr %setup.i.i.i.i, align 4
  %bf.set.i.i.i.i = or i16 %bf.load28.i.i.i.i, 4096
  store i16 %bf.set.i.i.i.i, ptr %setup.i.i.i.i, align 4
  %ops.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %204, i32 0, i32 8
  %252 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %ops.i.i.i.i, align 4
  %setup29.i.i.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %253, i32 0, i32 3
  %254 = ptrtoint ptr %setup29.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %setup29.i.i.i.i, align 4
  %call30.i.i.i.i = call i32 %255(ptr noundef %204) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i.i.i)
  %cmp31.i.i.i.i = icmp slt i32 %call30.i.i.i.i, 0
  br i1 %cmp31.i.i.i.i, label %if.end27.i.i.i.i.unregister_notifier.i.i.i.i_crit_edge, label %if.end33.i.i.i.i

if.end27.i.i.i.i.unregister_notifier.i.i.i.i_crit_edge: ; preds = %if.end27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unregister_notifier.i.i.i.i

if.end33.i.i.i.i:                                 ; preds = %if.end27.i.i.i.i
  %256 = ptrtoint ptr %dst.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dst.i.i.i.i.i, align 4
  %tag_ops1.i.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %257, i32 0, i32 6
  %258 = ptrtoint ptr %tag_ops1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %tag_ops1.i.i.i.i.i, align 4
  %proto.i.i.i.i.i = getelementptr inbounds %struct.dsa_device_ops, ptr %259, i32 0, i32 8
  %260 = ptrtoint ptr %proto.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %proto.i.i.i.i.i, align 4
  %default_proto.i.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %257, i32 0, i32 7
  %262 = ptrtoint ptr %default_proto.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %default_proto.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %261, i32 %263)
  %cmp.i.i.i.i.i = icmp eq i32 %261, %263
  br i1 %cmp.i.i.i.i.i, label %if.end33.i.i.i.i.connect.i.i.i.i.i_crit_edge, label %if.end.i.i.i.i139.i

if.end33.i.i.i.i.connect.i.i.i.i.i_crit_edge:     ; preds = %if.end33.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %connect.i.i.i.i.i

if.end.i.i.i.i139.i:                              ; preds = %if.end33.i.i.i.i
  %ports.i156.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %257, i32 0, i32 1
  %264 = ptrtoint ptr %ports.i156.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %.pn92.i.i.i.i.i = load ptr, ptr %ports.i156.i.i.i.i, align 4
  %cmp7.not94.i.i.i.i.i = icmp eq ptr %.pn92.i.i.i.i.i, %ports.i156.i.i.i.i
  br i1 %cmp7.not94.i.i.i.i.i, label %if.end.i.i.i.i139.i.connect.i.i.i.i.i_crit_edge, label %if.end.i.i.i.i139.i.for.body.i157.i.i.i.i_crit_edge

if.end.i.i.i.i139.i.for.body.i157.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i139.i
  br label %for.body.i157.i.i.i.i

if.end.i.i.i.i139.i.connect.i.i.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i139.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %connect.i.i.i.i.i

for.body.i157.i.i.i.i:                            ; preds = %for.inc.i163.i.i.i.i.for.body.i157.i.i.i.i_crit_edge, %if.end.i.i.i.i139.i.for.body.i157.i.i.i.i_crit_edge
  %.pn95.i.i.i.i.i = phi ptr [ %.pn.i162.i.i.i.i, %for.inc.i163.i.i.i.i.for.body.i157.i.i.i.i_crit_edge ], [ %.pn92.i.i.i.i.i, %if.end.i.i.i.i139.i.for.body.i157.i.i.i.i_crit_edge ]
  %ds8.i.i.i.i.i = getelementptr i8, ptr %.pn95.i.i.i.i.i, i32 -432
  %265 = ptrtoint ptr %ds8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %ds8.i.i.i.i.i, align 4
  %cmp9.i.i.i.i.i = icmp eq ptr %266, %204
  br i1 %cmp9.i.i.i.i.i, label %if.then10.i.i.i.i.i, label %for.body.i157.i.i.i.i.for.inc.i163.i.i.i.i_crit_edge

for.body.i157.i.i.i.i.for.inc.i163.i.i.i.i_crit_edge: ; preds = %for.body.i157.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i163.i.i.i.i

if.then10.i.i.i.i.i:                              ; preds = %for.body.i157.i.i.i.i
  %type.i.i158.i.i.i.i = getelementptr i8, ptr %.pn95.i.i.i.i.i, i32 -424
  %267 = ptrtoint ptr %type.i.i158.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %type.i.i158.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %268)
  %cmp.i.i159.i.i.i.i = icmp eq i32 %268, 1
  br i1 %cmp.i.i159.i.i.i.i, label %if.then11.i.i.i.i.i, label %if.then10.i.i.i.i.i.for.inc.i163.i.i.i.i_crit_edge

if.then10.i.i.i.i.i.for.inc.i163.i.i.i.i_crit_edge: ; preds = %if.then10.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i163.i.i.i.i

if.then11.i.i.i.i.i:                              ; preds = %if.then10.i.i.i.i.i
  call void @rtnl_lock() #12
  %269 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %ops.i.i.i.i, align 4
  %change_tag_protocol.i.i.i.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %270, i32 0, i32 1
  %271 = ptrtoint ptr %change_tag_protocol.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %change_tag_protocol.i.i.i.i.i, align 4
  %index.i160.i.i.i.i = getelementptr i8, ptr %.pn95.i.i.i.i.i, i32 -428
  %273 = ptrtoint ptr %index.i160.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %index.i160.i.i.i.i, align 4
  %275 = ptrtoint ptr %proto.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %proto.i.i.i.i.i, align 4
  %call13.i.i.i.i.i = call i32 %272(ptr noundef %204, i32 noundef %274, i32 noundef %276) #12
  call void @rtnl_unlock() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i.i.i.i)
  %tobool.not.i161.i.i.i.i = icmp eq i32 %call13.i.i.i.i.i, 0
  br i1 %tobool.not.i161.i.i.i.i, label %if.then11.i.i.i.i.i.for.inc.i163.i.i.i.i_crit_edge, label %do.end.i.i.i.i.i

if.then11.i.i.i.i.i.for.inc.i163.i.i.i.i_crit_edge: ; preds = %if.then11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i163.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.then11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %277 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %204, align 4
  %name.i.i.i.i.i = getelementptr inbounds %struct.dsa_device_ops, ptr %259, i32 0, i32 7
  %279 = ptrtoint ptr %name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %name.i.i.i.i.i, align 4
  %281 = inttoptr i32 %call13.i.i.i.i.i to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %278, ptr noundef nonnull @.str.41, ptr noundef %280, ptr noundef nonnull %281) #15
  br label %teardown.i.i.i.i

for.inc.i163.i.i.i.i:                             ; preds = %if.then11.i.i.i.i.i.for.inc.i163.i.i.i.i_crit_edge, %if.then10.i.i.i.i.i.for.inc.i163.i.i.i.i_crit_edge, %for.body.i157.i.i.i.i.for.inc.i163.i.i.i.i_crit_edge
  %282 = ptrtoint ptr %.pn95.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %.pn.i162.i.i.i.i = load ptr, ptr %.pn95.i.i.i.i.i, align 4
  %283 = ptrtoint ptr %dst.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %dst.i.i.i.i.i, align 4
  %ports6.i.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %284, i32 0, i32 1
  %cmp7.not.i.i.i.i.i = icmp eq ptr %.pn.i162.i.i.i.i, %ports6.i.i.i.i.i
  br i1 %cmp7.not.i.i.i.i.i, label %for.inc.i163.i.i.i.i.connect.i.i.i.i.i_crit_edge, label %for.inc.i163.i.i.i.i.for.body.i157.i.i.i.i_crit_edge

for.inc.i163.i.i.i.i.for.body.i157.i.i.i.i_crit_edge: ; preds = %for.inc.i163.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i157.i.i.i.i

for.inc.i163.i.i.i.i.connect.i.i.i.i.i_crit_edge: ; preds = %for.inc.i163.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %connect.i.i.i.i.i

connect.i.i.i.i.i:                                ; preds = %for.inc.i163.i.i.i.i.connect.i.i.i.i.i_crit_edge, %if.end.i.i.i.i139.i.connect.i.i.i.i.i_crit_edge, %if.end33.i.i.i.i.connect.i.i.i.i.i_crit_edge
  %connect24.i.i.i.i.i = getelementptr inbounds %struct.dsa_device_ops, ptr %259, i32 0, i32 3
  %285 = ptrtoint ptr %connect24.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %connect24.i.i.i.i.i, align 4
  %tobool25.not.i.i.i.i.i = icmp eq ptr %286, null
  br i1 %tobool25.not.i.i.i.i.i, label %connect.i.i.i.i.i.if.end32.i.i.i.i.i_crit_edge, label %if.then26.i.i.i.i.i

connect.i.i.i.i.i.if.end32.i.i.i.i.i_crit_edge:   ; preds = %connect.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i.i.i.i.i

if.then26.i.i.i.i.i:                              ; preds = %connect.i.i.i.i.i
  %call28.i.i.i.i.i = call i32 %286(ptr noundef %204) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i.i.i.i)
  %tobool29.not.i.i.i.i.i = icmp eq i32 %call28.i.i.i.i.i, 0
  br i1 %tobool29.not.i.i.i.i.i, label %if.then26.i.i.i.i.i.if.end32.i.i.i.i.i_crit_edge, label %if.then26.i.i.i.i.i.teardown.i.i.i.i_crit_edge

if.then26.i.i.i.i.i.teardown.i.i.i.i_crit_edge:   ; preds = %if.then26.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %teardown.i.i.i.i

if.then26.i.i.i.i.i.if.end32.i.i.i.i.i_crit_edge: ; preds = %if.then26.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i.i.i.i.i

if.end32.i.i.i.i.i:                               ; preds = %if.then26.i.i.i.i.i.if.end32.i.i.i.i.i_crit_edge, %connect.i.i.i.i.i.if.end32.i.i.i.i.i_crit_edge
  %287 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %ops.i.i.i.i, align 4
  %connect_tag_protocol.i.i.i.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %288, i32 0, i32 2
  %289 = ptrtoint ptr %connect_tag_protocol.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %connect_tag_protocol.i.i.i.i.i, align 4
  %tobool34.not.i.i.i.i.i = icmp eq ptr %290, null
  br i1 %tobool34.not.i.i.i.i.i, label %if.end32.i.i.i.i.i.if.end37.i.i.i.i_crit_edge, label %if.then35.i.i.i.i.i

if.end32.i.i.i.i.i.if.end37.i.i.i.i_crit_edge:    ; preds = %if.end32.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i.i.i.i

if.then35.i.i.i.i.i:                              ; preds = %if.end32.i.i.i.i.i
  %291 = ptrtoint ptr %proto.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %proto.i.i.i.i.i, align 4
  %call39.i.i.i.i.i = call i32 %290(ptr noundef %204, i32 noundef %292) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i.i.i.i)
  %tobool40.not.i.i.i.i.i = icmp eq i32 %call39.i.i.i.i.i, 0
  br i1 %tobool40.not.i.i.i.i.i, label %if.then35.i.i.i.i.i.if.end37.i.i.i.i_crit_edge, label %do.end44.i.i.i.i.i

if.then35.i.i.i.i.i.if.end37.i.i.i.i_crit_edge:   ; preds = %if.then35.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i.i.i.i

do.end44.i.i.i.i.i:                               ; preds = %if.then35.i.i.i.i.i
  %293 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %204, align 4
  %name46.i.i.i.i.i = getelementptr inbounds %struct.dsa_device_ops, ptr %259, i32 0, i32 7
  %295 = ptrtoint ptr %name46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %name46.i.i.i.i.i, align 4
  %297 = inttoptr i32 %call39.i.i.i.i.i to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %294, ptr noundef nonnull @.str.44, ptr noundef %296, ptr noundef nonnull %297) #15
  %disconnect50.i.i.i.i.i = getelementptr inbounds %struct.dsa_device_ops, ptr %259, i32 0, i32 4
  %298 = ptrtoint ptr %disconnect50.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %disconnect50.i.i.i.i.i, align 4
  %tobool51.not.i.i.i.i.i = icmp eq ptr %299, null
  br i1 %tobool51.not.i.i.i.i.i, label %do.end44.i.i.i.i.i.teardown.i.i.i.i_crit_edge, label %if.then52.i.i.i.i.i

do.end44.i.i.i.i.i.teardown.i.i.i.i_crit_edge:    ; preds = %do.end44.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %teardown.i.i.i.i

if.then52.i.i.i.i.i:                              ; preds = %do.end44.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void %299(ptr noundef %204) #12
  br label %teardown.i.i.i.i

if.end37.i.i.i.i:                                 ; preds = %if.then35.i.i.i.i.i.if.end37.i.i.i.i_crit_edge, %if.end32.i.i.i.i.i.if.end37.i.i.i.i_crit_edge
  %slave_mii_bus.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %204, i32 0, i32 10
  %300 = ptrtoint ptr %slave_mii_bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %slave_mii_bus.i.i.i.i, align 4
  %tobool38.not.i.i.i.i = icmp eq ptr %301, null
  br i1 %tobool38.not.i.i.i.i, label %land.lhs.true.i.i.i140.i, label %if.end37.i.i.i.i.if.end53.i.i.i.i_crit_edge

if.end37.i.i.i.i.if.end53.i.i.i.i_crit_edge:      ; preds = %if.end37.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i.i.i.i

land.lhs.true.i.i.i140.i:                         ; preds = %if.end37.i.i.i.i
  %302 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %ops.i.i.i.i, align 4
  %phy_read.i.i.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %303, i32 0, i32 8
  %304 = ptrtoint ptr %phy_read.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %phy_read.i.i.i.i, align 4
  %tobool40.not.i.i.i.i = icmp eq ptr %305, null
  br i1 %tobool40.not.i.i.i.i, label %land.lhs.true.i.i.i140.i.if.end53.i.i.i.i_crit_edge, label %if.then41.i.i.i.i

land.lhs.true.i.i.i140.i.if.end53.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i140.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i.i.i.i

if.then41.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i140.i
  %call.i164.i.i.i.i = call ptr @mdiobus_alloc_size(i32 noundef 0) #12
  %306 = ptrtoint ptr %slave_mii_bus.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %call.i164.i.i.i.i, ptr %slave_mii_bus.i.i.i.i, align 4
  %tobool45.not.i.i.i.i = icmp eq ptr %call.i164.i.i.i.i, null
  br i1 %tobool45.not.i.i.i.i, label %if.then41.i.i.i.i.teardown.i.i.i.i_crit_edge, label %if.end47.i.i.i.i

if.then41.i.i.i.i.teardown.i.i.i.i_crit_edge:     ; preds = %if.then41.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %teardown.i.i.i.i

if.end47.i.i.i.i:                                 ; preds = %if.then41.i.i.i.i
  call void @dsa_slave_mii_bus_init(ptr noundef %204) #12
  %307 = ptrtoint ptr %slave_mii_bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %slave_mii_bus.i.i.i.i, align 4
  %call49.i.i.i.i = call i32 @__mdiobus_register(ptr noundef %308, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i.i.i.i)
  %cmp50.i.i.i.i = icmp slt i32 %call49.i.i.i.i, 0
  br i1 %cmp50.i.i.i.i, label %free_slave_mii_bus.i.i.i.i, label %if.end47.i.i.i.i.if.end53.i.i.i.i_crit_edge

if.end47.i.i.i.i.if.end53.i.i.i.i_crit_edge:      ; preds = %if.end47.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i.i.i.i

if.end53.i.i.i.i:                                 ; preds = %if.end47.i.i.i.i.if.end53.i.i.i.i_crit_edge, %land.lhs.true.i.i.i140.i.if.end53.i.i.i.i_crit_edge, %if.end37.i.i.i.i.if.end53.i.i.i.i_crit_edge
  %309 = ptrtoint ptr %setup.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %309)
  %bf.load55.i.i.i.i = load i16, ptr %setup.i.i.i.i, align 4
  %bf.set57.i.i.i.i = or i16 %bf.load55.i.i.i.i, -32768
  store i16 %bf.set57.i.i.i.i, ptr %setup.i.i.i.i, align 4
  %310 = ptrtoint ptr %devlink.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %devlink.i.i.i.i, align 4
  call void @devlink_register(ptr noundef %311) #12
  br label %dsa_switch_setup.exit.i.i.i

free_slave_mii_bus.i.i.i.i:                       ; preds = %if.end47.i.i.i.i
  %312 = ptrtoint ptr %slave_mii_bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %slave_mii_bus.i.i.i.i, align 4
  %tobool60.not.i.i.i.i = icmp eq ptr %313, null
  br i1 %tobool60.not.i.i.i.i, label %free_slave_mii_bus.i.i.i.i.teardown.i.i.i.i_crit_edge, label %land.lhs.true61.i.i.i.i

free_slave_mii_bus.i.i.i.i.teardown.i.i.i.i_crit_edge: ; preds = %free_slave_mii_bus.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %teardown.i.i.i.i

land.lhs.true61.i.i.i.i:                          ; preds = %free_slave_mii_bus.i.i.i.i
  %314 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %ops.i.i.i.i, align 4
  %phy_read63.i.i.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %315, i32 0, i32 8
  %316 = ptrtoint ptr %phy_read63.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %phy_read63.i.i.i.i, align 4
  %tobool64.not.i.i.i.i = icmp eq ptr %317, null
  br i1 %tobool64.not.i.i.i.i, label %land.lhs.true61.i.i.i.i.teardown.i.i.i.i_crit_edge, label %if.then65.i.i.i.i

land.lhs.true61.i.i.i.i.teardown.i.i.i.i_crit_edge: ; preds = %land.lhs.true61.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %teardown.i.i.i.i

if.then65.i.i.i.i:                                ; preds = %land.lhs.true61.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @mdiobus_free(ptr noundef nonnull %313) #12
  br label %teardown.i.i.i.i

teardown.i.i.i.i:                                 ; preds = %if.then65.i.i.i.i, %land.lhs.true61.i.i.i.i.teardown.i.i.i.i_crit_edge, %free_slave_mii_bus.i.i.i.i.teardown.i.i.i.i_crit_edge, %if.then41.i.i.i.i.teardown.i.i.i.i_crit_edge, %if.then52.i.i.i.i.i, %do.end44.i.i.i.i.i.teardown.i.i.i.i_crit_edge, %if.then26.i.i.i.i.i.teardown.i.i.i.i_crit_edge, %do.end.i.i.i.i.i
  %err.0.i.i.i.i = phi i32 [ %call49.i.i.i.i, %if.then65.i.i.i.i ], [ %call49.i.i.i.i, %land.lhs.true61.i.i.i.i.teardown.i.i.i.i_crit_edge ], [ %call49.i.i.i.i, %free_slave_mii_bus.i.i.i.i.teardown.i.i.i.i_crit_edge ], [ -12, %if.then41.i.i.i.i.teardown.i.i.i.i_crit_edge ], [ %call39.i.i.i.i.i, %do.end44.i.i.i.i.i.teardown.i.i.i.i_crit_edge ], [ %call39.i.i.i.i.i, %if.then52.i.i.i.i.i ], [ %call28.i.i.i.i.i, %if.then26.i.i.i.i.i.teardown.i.i.i.i_crit_edge ], [ %call13.i.i.i.i.i, %do.end.i.i.i.i.i ]
  %318 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %ops.i.i.i.i, align 4
  %teardown69.i.i.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %319, i32 0, i32 4
  %320 = ptrtoint ptr %teardown69.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %teardown69.i.i.i.i, align 4
  %tobool70.not.i.i.i.i = icmp eq ptr %321, null
  br i1 %tobool70.not.i.i.i.i, label %teardown.i.i.i.i.unregister_notifier.i.i.i.i_crit_edge, label %if.then71.i.i.i.i

teardown.i.i.i.i.unregister_notifier.i.i.i.i_crit_edge: ; preds = %teardown.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unregister_notifier.i.i.i.i

if.then71.i.i.i.i:                                ; preds = %teardown.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void %321(ptr noundef %204) #12
  br label %unregister_notifier.i.i.i.i

unregister_notifier.i.i.i.i:                      ; preds = %if.then71.i.i.i.i, %teardown.i.i.i.i.unregister_notifier.i.i.i.i_crit_edge, %if.end27.i.i.i.i.unregister_notifier.i.i.i.i_crit_edge
  %err.1.i.i.i.i = phi i32 [ %call30.i.i.i.i, %if.end27.i.i.i.i.unregister_notifier.i.i.i.i_crit_edge ], [ %err.0.i.i.i.i, %if.then71.i.i.i.i ], [ %err.0.i.i.i.i, %teardown.i.i.i.i.unregister_notifier.i.i.i.i_crit_edge ]
  call void @dsa_switch_unregister_notifier(ptr noundef %204) #12
  br label %unregister_devlink_ports.i.i.i.i

unregister_devlink_ports.i.i.i.i:                 ; preds = %unregister_notifier.i.i.i.i, %for.end.i.i.i.i.unregister_devlink_ports.i.i.i.i_crit_edge, %dsa_port_devlink_setup.exit.i.i.i.i
  %err.2.i.i.i.i = phi i32 [ %call.i153.i.i.i.i, %dsa_port_devlink_setup.exit.i.i.i.i ], [ %call24.i.i.i.i, %for.end.i.i.i.i.unregister_devlink_ports.i.i.i.i_crit_edge ], [ %err.1.i.i.i.i, %unregister_notifier.i.i.i.i ]
  %322 = ptrtoint ptr %dst.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %dst.i.i.i.i.i, align 4
  %ports77.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %323, i32 0, i32 1
  %324 = ptrtoint ptr %ports77.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %.pn151177.i.i.i.i = load ptr, ptr %ports77.i.i.i.i, align 4
  %cmp85.not179.i.i.i.i = icmp eq ptr %.pn151177.i.i.i.i, %ports77.i.i.i.i
  br i1 %cmp85.not179.i.i.i.i, label %unregister_devlink_ports.i.i.i.i.for.end98.i.i.i.i_crit_edge, label %unregister_devlink_ports.i.i.i.i.for.body87.i.i.i.i_crit_edge

unregister_devlink_ports.i.i.i.i.for.body87.i.i.i.i_crit_edge: ; preds = %unregister_devlink_ports.i.i.i.i
  br label %for.body87.i.i.i.i

unregister_devlink_ports.i.i.i.i.for.end98.i.i.i.i_crit_edge: ; preds = %unregister_devlink_ports.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end98.i.i.i.i

for.body87.i.i.i.i:                               ; preds = %for.inc92.i.i.i.i.for.body87.i.i.i.i_crit_edge, %unregister_devlink_ports.i.i.i.i.for.body87.i.i.i.i_crit_edge
  %.pn151180.i.i.i.i = phi ptr [ %.pn151.i.i.i.i, %for.inc92.i.i.i.i.for.body87.i.i.i.i_crit_edge ], [ %.pn151177.i.i.i.i, %unregister_devlink_ports.i.i.i.i.for.body87.i.i.i.i_crit_edge ]
  %ds88.i.i.i.i = getelementptr i8, ptr %.pn151180.i.i.i.i, i32 -432
  %325 = ptrtoint ptr %ds88.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %ds88.i.i.i.i, align 4
  %cmp89.i.i.i.i = icmp eq ptr %326, %204
  br i1 %cmp89.i.i.i.i, label %if.then90.i.i.i.i, label %for.body87.i.i.i.i.for.inc92.i.i.i.i_crit_edge

for.body87.i.i.i.i.for.inc92.i.i.i.i_crit_edge:   ; preds = %for.body87.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc92.i.i.i.i

if.then90.i.i.i.i:                                ; preds = %for.body87.i.i.i.i
  %devlink_port_setup.i165.i.i.i.i = getelementptr i8, ptr %.pn151180.i.i.i.i, i32 -405
  %327 = ptrtoint ptr %devlink_port_setup.i165.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %bf.load.i166.i.i.i.i = load i8, ptr %devlink_port_setup.i165.i.i.i.i, align 1
  %328 = and i8 %bf.load.i166.i.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %328)
  %tobool.not.i167.i.i.i.i = icmp eq i8 %328, 0
  br i1 %tobool.not.i167.i.i.i.i, label %if.then90.i.i.i.i.dsa_port_devlink_teardown.exit.i.i.i.i_crit_edge, label %if.then.i169.i.i.i.i

if.then90.i.i.i.i.dsa_port_devlink_teardown.exit.i.i.i.i_crit_edge: ; preds = %if.then90.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_port_devlink_teardown.exit.i.i.i.i

if.then.i169.i.i.i.i:                             ; preds = %if.then90.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %devlink_port.i168.i.i.i.i = getelementptr i8, ptr %.pn151180.i.i.i.i, i32 -392
  call void @devlink_port_unregister(ptr noundef %devlink_port.i168.i.i.i.i) #12
  br label %dsa_port_devlink_teardown.exit.i.i.i.i

dsa_port_devlink_teardown.exit.i.i.i.i:           ; preds = %if.then.i169.i.i.i.i, %if.then90.i.i.i.i.dsa_port_devlink_teardown.exit.i.i.i.i_crit_edge
  %329 = ptrtoint ptr %devlink_port_setup.i165.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %bf.load2.i.i.i.i.i = load i8, ptr %devlink_port_setup.i165.i.i.i.i, align 1
  %bf.clear3.i.i.i.i.i = and i8 %bf.load2.i.i.i.i.i, -17
  store i8 %bf.clear3.i.i.i.i.i, ptr %devlink_port_setup.i165.i.i.i.i, align 1
  br label %for.inc92.i.i.i.i

for.inc92.i.i.i.i:                                ; preds = %dsa_port_devlink_teardown.exit.i.i.i.i, %for.body87.i.i.i.i.for.inc92.i.i.i.i_crit_edge
  %330 = ptrtoint ptr %.pn151180.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %.pn151.i.i.i.i = load ptr, ptr %.pn151180.i.i.i.i, align 4
  %331 = ptrtoint ptr %dst.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %dst.i.i.i.i.i, align 4
  %ports84.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %332, i32 0, i32 1
  %cmp85.not.i.i.i.i = icmp eq ptr %.pn151.i.i.i.i, %ports84.i.i.i.i
  br i1 %cmp85.not.i.i.i.i, label %for.inc92.i.i.i.i.for.end98.i.i.i.i_crit_edge, label %for.inc92.i.i.i.i.for.body87.i.i.i.i_crit_edge

for.inc92.i.i.i.i.for.body87.i.i.i.i_crit_edge:   ; preds = %for.inc92.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body87.i.i.i.i

for.inc92.i.i.i.i.for.end98.i.i.i.i_crit_edge:    ; preds = %for.inc92.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end98.i.i.i.i

for.end98.i.i.i.i:                                ; preds = %for.inc92.i.i.i.i.for.end98.i.i.i.i_crit_edge, %unregister_devlink_ports.i.i.i.i.for.end98.i.i.i.i_crit_edge
  %333 = ptrtoint ptr %devlink.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %devlink.i.i.i.i, align 4
  call void @devlink_free(ptr noundef %334) #12
  %335 = ptrtoint ptr %devlink.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr null, ptr %devlink.i.i.i.i, align 4
  br label %dsa_switch_setup.exit.i.i.i

dsa_switch_setup.exit.i.i.i:                      ; preds = %for.end98.i.i.i.i, %if.end53.i.i.i.i, %for.body.i73.i.i.dsa_switch_setup.exit.i.i.i_crit_edge
  %retval.0.i.i88.i.i = phi i32 [ %err.2.i.i.i.i, %for.end98.i.i.i.i ], [ 0, %if.end53.i.i.i.i ], [ 0, %for.body.i73.i.i.dsa_switch_setup.exit.i.i.i_crit_edge ]
  %tobool.not.i89.i.i = icmp eq i32 %retval.0.i.i88.i.i, 0
  br i1 %tobool.not.i89.i.i, label %dsa_switch_setup.exit.i.i.i.for.cond.i.i.i_crit_edge, label %dsa_switch_setup.exit.i.i.i.teardown_cpu_ports.i.i_crit_edge

dsa_switch_setup.exit.i.i.i.teardown_cpu_ports.i.i_crit_edge: ; preds = %dsa_switch_setup.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %teardown_cpu_ports.i.i

dsa_switch_setup.exit.i.i.i.for.cond.i.i.i_crit_edge: ; preds = %dsa_switch_setup.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i

if.end12.i.i:                                     ; preds = %for.cond.i.i.i
  call void @rtnl_lock() #12
  %336 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %.pn16.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not18.i.i.i = icmp eq ptr %.pn16.i.i.i, %ports.i.i.i
  br i1 %cmp.not18.i.i.i, label %if.end12.i.i.if.end16.i.i_crit_edge, label %if.end12.i.i.for.body.i94.i.i_crit_edge

if.end12.i.i.for.body.i94.i.i_crit_edge:          ; preds = %if.end12.i.i
  br label %for.body.i94.i.i

if.end12.i.i.if.end16.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i

for.body.i94.i.i:                                 ; preds = %for.inc.i99.i.i.for.body.i94.i.i_crit_edge, %if.end12.i.i.for.body.i94.i.i_crit_edge
  %.pn19.i.i.i = phi ptr [ %.pn.i97.i.i, %for.inc.i99.i.i.for.body.i94.i.i_crit_edge ], [ %.pn16.i.i.i, %if.end12.i.i.for.body.i94.i.i_crit_edge ]
  %type.i.i92.i.i = getelementptr i8, ptr %.pn19.i.i.i, i32 -424
  %337 = ptrtoint ptr %type.i.i92.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %type.i.i92.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %338)
  %cmp.i.i93.i.i = icmp eq i32 %338, 1
  br i1 %cmp.i.i93.i.i, label %if.then.i96.i.i, label %for.body.i94.i.i.for.inc.i99.i.i_crit_edge

for.body.i94.i.i.for.inc.i99.i.i_crit_edge:       ; preds = %for.body.i94.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i99.i.i

if.then.i96.i.i:                                  ; preds = %for.body.i94.i.i
  %dp.020.i.i.i = getelementptr i8, ptr %.pn19.i.i.i, i32 -448
  %339 = ptrtoint ptr %dp.020.i.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %dp.020.i.i.i, align 4
  %call2.i.i.i = call i32 @dsa_master_setup(ptr noundef %340, ptr noundef %dp.020.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i95.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i95.i.i, label %if.then.i96.i.i.for.inc.i99.i.i_crit_edge, label %if.then.i96.i.i.teardown_switches.i.i_crit_edge

if.then.i96.i.i.teardown_switches.i.i_crit_edge:  ; preds = %if.then.i96.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %teardown_switches.i.i

if.then.i96.i.i.for.inc.i99.i.i_crit_edge:        ; preds = %if.then.i96.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i99.i.i

for.inc.i99.i.i:                                  ; preds = %if.then.i96.i.i.for.inc.i99.i.i_crit_edge, %for.body.i94.i.i.for.inc.i99.i.i_crit_edge
  %341 = ptrtoint ptr %.pn19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %.pn.i97.i.i = load ptr, ptr %.pn19.i.i.i, align 4
  %cmp.not.i98.i.i = icmp eq ptr %.pn.i97.i.i, %ports.i.i.i
  br i1 %cmp.not.i98.i.i, label %for.inc.i99.i.i.if.end16.i.i_crit_edge, label %for.inc.i99.i.i.for.body.i94.i.i_crit_edge

for.inc.i99.i.i.for.body.i94.i.i_crit_edge:       ; preds = %for.inc.i99.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i94.i.i

for.inc.i99.i.i.if.end16.i.i_crit_edge:           ; preds = %for.inc.i99.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %for.inc.i99.i.i.if.end16.i.i_crit_edge, %if.end12.i.i.if.end16.i.i_crit_edge
  call void @rtnl_unlock() #12
  %342 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %.pn73.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not75.i.i.i = icmp eq ptr %.pn73.i.i.i, %ports.i.i.i
  br i1 %cmp.not75.i.i.i, label %if.end16.i.i.for.cond16.preheader.i.i.i_crit_edge, label %if.end16.i.i.for.body.i107.i.i_crit_edge

if.end16.i.i.for.body.i107.i.i_crit_edge:         ; preds = %if.end16.i.i
  br label %for.body.i107.i.i

if.end16.i.i.for.cond16.preheader.i.i.i_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond16.preheader.i.i.i

for.cond16.preheader.i.i.i:                       ; preds = %for.inc.i112.i.i.for.cond16.preheader.i.i.i_crit_edge, %if.end16.i.i.for.cond16.preheader.i.i.i_crit_edge
  %343 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %.pn6078.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp19.not80.i.i.i = icmp eq ptr %.pn6078.i.i.i, %ports.i.i.i
  br i1 %cmp19.not80.i.i.i, label %for.cond16.preheader.i.i.i.if.end20.i.i_crit_edge, label %for.body21.lr.ph.i.i.i

for.cond16.preheader.i.i.i.if.end20.i.i_crit_edge: ; preds = %for.cond16.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i.i

for.body21.lr.ph.i.i.i:                           ; preds = %for.cond16.preheader.i.i.i
  %344 = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs.i.i.i100.i.i, i32 0, i32 4
  %switch_id.i.i.i102.i.i = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs.i.i.i100.i.i, i32 0, i32 3
  %id_len.i.i.i103.i.i = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs.i.i.i100.i.i, i32 0, i32 3, i32 1
  %flavour9.i.i.i104.i.i = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs.i.i.i100.i.i, i32 0, i32 2
  br label %for.body21.i.i.i

for.body.i107.i.i:                                ; preds = %for.inc.i112.i.i.for.body.i107.i.i_crit_edge, %if.end16.i.i.for.body.i107.i.i_crit_edge
  %.pn76.i.i.i = phi ptr [ %.pn.i110.i.i, %for.inc.i112.i.i.for.body.i107.i.i_crit_edge ], [ %.pn73.i.i.i, %if.end16.i.i.for.body.i107.i.i_crit_edge ]
  %type.i.i105.i.i = getelementptr i8, ptr %.pn76.i.i.i, i32 -424
  %345 = ptrtoint ptr %type.i.i105.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %type.i.i105.i.i, align 4
  %.off.i.i.i = add i32 %346, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i.i)
  %switch.i106.i.i = icmp ult i32 %.off.i.i.i, 2
  br i1 %switch.i106.i.i, label %if.then.i109.i.i, label %for.body.i107.i.i.for.inc.i112.i.i_crit_edge

for.body.i107.i.i.for.inc.i112.i.i_crit_edge:     ; preds = %for.body.i107.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i112.i.i

if.then.i109.i.i:                                 ; preds = %for.body.i107.i.i
  %dp.077.i.i.i = getelementptr i8, ptr %.pn76.i.i.i, i32 -448
  %call3.i.i141.i = call fastcc i32 @dsa_port_setup(ptr noundef %dp.077.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i141.i)
  %tobool.not.i108.i.i = icmp eq i32 %call3.i.i141.i, 0
  br i1 %tobool.not.i108.i.i, label %if.then.i109.i.i.for.inc.i112.i.i_crit_edge, label %if.then.i109.i.i.teardown.i.i.i_crit_edge

if.then.i109.i.i.teardown.i.i.i_crit_edge:        ; preds = %if.then.i109.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %teardown.i.i.i

if.then.i109.i.i.for.inc.i112.i.i_crit_edge:      ; preds = %if.then.i109.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i112.i.i

for.inc.i112.i.i:                                 ; preds = %if.then.i109.i.i.for.inc.i112.i.i_crit_edge, %for.body.i107.i.i.for.inc.i112.i.i_crit_edge
  %347 = ptrtoint ptr %.pn76.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %.pn.i110.i.i = load ptr, ptr %.pn76.i.i.i, align 4
  %cmp.not.i111.i.i = icmp eq ptr %.pn.i110.i.i, %ports.i.i.i
  br i1 %cmp.not.i111.i.i, label %for.inc.i112.i.i.for.cond16.preheader.i.i.i_crit_edge, label %for.inc.i112.i.i.for.body.i107.i.i_crit_edge

for.inc.i112.i.i.for.body.i107.i.i_crit_edge:     ; preds = %for.inc.i112.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i107.i.i

for.inc.i112.i.i.for.cond16.preheader.i.i.i_crit_edge: ; preds = %for.inc.i112.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond16.preheader.i.i.i

for.body21.i.i.i:                                 ; preds = %for.inc35.i.i.i.for.body21.i.i.i_crit_edge, %for.body21.lr.ph.i.i.i
  %.pn6081.i.i.i = phi ptr [ %.pn6078.i.i.i, %for.body21.lr.ph.i.i.i ], [ %.pn60.i.i.i, %for.inc35.i.i.i.for.body21.i.i.i_crit_edge ]
  %type.i63.i.i.i = getelementptr i8, ptr %.pn6081.i.i.i, i32 -424
  %348 = ptrtoint ptr %type.i63.i.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %type.i63.i.i.i, align 4
  %350 = zext i32 %349 to i64
  call void @__sanitizer_cov_trace_switch(i64 %350, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %349, label %for.body21.i.i.i.for.inc35.i.i.i_crit_edge [
    i32 3, label %for.body21.i.i.i.if.then25.i113.i.i_crit_edge
    i32 0, label %for.body21.i.i.i.if.then25.i113.i.i_crit_edge152
  ]

for.body21.i.i.i.if.then25.i113.i.i_crit_edge152: ; preds = %for.body21.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25.i113.i.i

for.body21.i.i.i.if.then25.i113.i.i_crit_edge:    ; preds = %for.body21.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25.i113.i.i

for.body21.i.i.i.for.inc35.i.i.i_crit_edge:       ; preds = %for.body21.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc35.i.i.i

if.then25.i113.i.i:                               ; preds = %for.body21.i.i.i.if.then25.i113.i.i_crit_edge, %for.body21.i.i.i.if.then25.i113.i.i_crit_edge152
  %dp.183.i.i.i = getelementptr i8, ptr %.pn6081.i.i.i, i32 -448
  %call26.i.i.i = call fastcc i32 @dsa_port_setup(ptr noundef %dp.183.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i.i)
  %tobool27.not.i.i.i = icmp eq i32 %call26.i.i.i, 0
  br i1 %tobool27.not.i.i.i, label %if.then25.i113.i.i.for.inc35.i.i.i_crit_edge, label %if.then28.i.i.i

if.then25.i113.i.i.for.inc35.i.i.i_crit_edge:     ; preds = %if.then25.i113.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc35.i.i.i

if.then28.i.i.i:                                  ; preds = %if.then25.i113.i.i
  %ds1.i.i114.i.i = getelementptr i8, ptr %.pn6081.i.i.i, i32 -432
  %351 = ptrtoint ptr %ds1.i.i114.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %ds1.i.i114.i.i, align 4
  %devlink_port_setup.i.i.i115.i.i = getelementptr i8, ptr %.pn6081.i.i.i, i32 -405
  %353 = ptrtoint ptr %devlink_port_setup.i.i.i115.i.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %bf.load.i.i.i116.i.i = load i8, ptr %devlink_port_setup.i.i.i115.i.i, align 1
  %354 = and i8 %bf.load.i.i.i116.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %354)
  %tobool.not.i.i.i117.i.i = icmp eq i8 %354, 0
  br i1 %tobool.not.i.i.i117.i.i, label %if.then28.i.i.i.sw.epilog.i.i.i125.i.i_crit_edge, label %if.then.i.i.i119.i.i

if.then28.i.i.i.sw.epilog.i.i.i125.i.i_crit_edge: ; preds = %if.then28.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i.i125.i.i

if.then.i.i.i119.i.i:                             ; preds = %if.then28.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %devlink_port.i.i.i118.i.i = getelementptr i8, ptr %.pn6081.i.i.i, i32 -392
  call void @devlink_port_unregister(ptr noundef %devlink_port.i.i.i118.i.i) #12
  br label %sw.epilog.i.i.i125.i.i

sw.epilog.i.i.i125.i.i:                           ; preds = %if.then.i.i.i119.i.i, %if.then28.i.i.i.sw.epilog.i.i.i125.i.i_crit_edge
  %355 = ptrtoint ptr %devlink_port_setup.i.i.i115.i.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %bf.load2.i.i.i120.i.i = load i8, ptr %devlink_port_setup.i.i.i115.i.i, align 1
  %bf.clear3.i.i.i121.i.i = and i8 %bf.load2.i.i.i120.i.i, -17
  store i8 %bf.clear3.i.i.i121.i.i, ptr %devlink_port_setup.i.i.i115.i.i, align 1
  %356 = ptrtoint ptr %type.i63.i.i.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 0, ptr %type.i63.i.i.i, align 4
  %devlink_port.i21.i.i.i.i = getelementptr i8, ptr %.pn6081.i.i.i, i32 -392
  %357 = ptrtoint ptr %ds1.i.i114.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %ds1.i.i114.i.i, align 4
  %dst1.i.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %358, i32 0, i32 1
  %359 = ptrtoint ptr %dst1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %dst1.i.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %attrs.i.i.i100.i.i) #12
  %361 = call ptr @memset(ptr %attrs.i.i.i100.i.i, i32 0, i32 60)
  %devlink.i.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %358, i32 0, i32 14
  %362 = ptrtoint ptr %devlink.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %devlink.i.i.i.i.i, align 4
  %index.i.i.i122.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %360, i32 0, i32 3
  %index3.i.i.i123.i.i = getelementptr i8, ptr %.pn6081.i.i.i, i32 -428
  %364 = ptrtoint ptr %index3.i.i.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %index3.i.i.i123.i.i, align 4
  %366 = ptrtoint ptr %344 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %365, ptr %344, align 4
  %367 = ptrtoint ptr %index.i.i.i122.i.i to i32
  call void @__asan_loadN_noabort(i32 %367, i32 4)
  %368 = load i32, ptr %index.i.i.i122.i.i, align 1
  %369 = ptrtoint ptr %switch_id.i.i.i102.i.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %368, ptr %switch_id.i.i.i102.i.i, align 4
  %370 = ptrtoint ptr %id_len.i.i.i103.i.i to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 4, ptr %id_len.i.i.i103.i.i, align 4
  %371 = call ptr @memset(ptr %devlink_port.i21.i.i.i.i, i32 0, i32 356)
  %372 = ptrtoint ptr %flavour9.i.i.i104.i.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 6, ptr %flavour9.i.i.i104.i.i, align 4
  call void @devlink_port_attrs_set(ptr noundef %devlink_port.i21.i.i.i.i, ptr noundef nonnull %attrs.i.i.i100.i.i) #12
  %373 = ptrtoint ptr %index3.i.i.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %index3.i.i.i123.i.i, align 4
  %call.i.i.i124.i.i = call i32 @devlink_port_register(ptr noundef %363, ptr noundef %devlink_port.i21.i.i.i.i, i32 noundef %374) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i124.i.i)
  %tobool.not.i22.i.i.i.i = icmp eq i32 %call.i.i.i124.i.i, 0
  br i1 %tobool.not.i22.i.i.i.i, label %if.end.i.i129.i.i, label %dsa_port_devlink_setup.exit.i.i126.i.i

dsa_port_devlink_setup.exit.i.i126.i.i:           ; preds = %sw.epilog.i.i.i125.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %attrs.i.i.i100.i.i) #12
  br label %teardown.i.i.i

if.end.i.i129.i.i:                                ; preds = %sw.epilog.i.i.i125.i.i
  %375 = ptrtoint ptr %devlink_port_setup.i.i.i115.i.i to i32
  call void @__asan_load1_noabort(i32 %375)
  %bf.load.i24.i.i.i.i = load i8, ptr %devlink_port_setup.i.i.i115.i.i, align 1
  %bf.set.i.i.i127.i.i = or i8 %bf.load.i24.i.i.i.i, 16
  store i8 %bf.set.i.i.i127.i.i, ptr %devlink_port_setup.i.i.i115.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %attrs.i.i.i100.i.i) #12
  %ops.i.i128.i.i = getelementptr inbounds %struct.dsa_switch, ptr %352, i32 0, i32 8
  %376 = ptrtoint ptr %ops.i.i128.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %ops.i.i128.i.i, align 4
  %port_setup.i.i.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %377, i32 0, i32 5
  %378 = ptrtoint ptr %port_setup.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %port_setup.i.i.i.i, align 4
  %tobool2.not.i.i.i142.i = icmp eq ptr %379, null
  br i1 %tobool2.not.i.i.i142.i, label %if.end.i.i129.i.i.for.inc35.i.i.i_crit_edge, label %if.then3.i.i.i.i

if.end.i.i129.i.i.for.inc35.i.i.i_crit_edge:      ; preds = %if.end.i.i129.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc35.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i129.i.i
  %380 = ptrtoint ptr %index3.i.i.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %index3.i.i.i123.i.i, align 4
  %call6.i.i.i143.i = call i32 %379(ptr noundef %352, i32 noundef %381) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i143.i)
  %tobool7.not.i.i.i144.i = icmp eq i32 %call6.i.i.i143.i, 0
  br i1 %tobool7.not.i.i.i144.i, label %if.then3.i.i.i.i.for.inc35.i.i.i_crit_edge, label %if.then3.i.i.i.i.teardown.i.i.i_crit_edge

if.then3.i.i.i.i.teardown.i.i.i_crit_edge:        ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %teardown.i.i.i

if.then3.i.i.i.i.for.inc35.i.i.i_crit_edge:       ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc35.i.i.i

for.inc35.i.i.i:                                  ; preds = %if.then3.i.i.i.i.for.inc35.i.i.i_crit_edge, %if.end.i.i129.i.i.for.inc35.i.i.i_crit_edge, %if.then25.i113.i.i.for.inc35.i.i.i_crit_edge, %for.body21.i.i.i.for.inc35.i.i.i_crit_edge
  %382 = ptrtoint ptr %.pn6081.i.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %.pn60.i.i.i = load ptr, ptr %.pn6081.i.i.i, align 4
  %cmp19.not.i.i.i = icmp eq ptr %.pn60.i.i.i, %ports.i.i.i
  br i1 %cmp19.not.i.i.i, label %for.inc35.i.i.i.if.end20.i.i_crit_edge, label %for.inc35.i.i.i.for.body21.i.i.i_crit_edge

for.inc35.i.i.i.for.body21.i.i.i_crit_edge:       ; preds = %for.inc35.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body21.i.i.i

for.inc35.i.i.i.if.end20.i.i_crit_edge:           ; preds = %for.inc35.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i.i

teardown.i.i.i:                                   ; preds = %if.then3.i.i.i.i.teardown.i.i.i_crit_edge, %dsa_port_devlink_setup.exit.i.i126.i.i, %if.then.i109.i.i.teardown.i.i.i_crit_edge
  %err.0.i.i.i = phi i32 [ %call.i.i.i124.i.i, %dsa_port_devlink_setup.exit.i.i126.i.i ], [ %call6.i.i.i143.i, %if.then3.i.i.i.i.teardown.i.i.i_crit_edge ], [ %call3.i.i141.i, %if.then.i109.i.i.teardown.i.i.i_crit_edge ]
  %383 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %.pn50.i.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not52.i.i.i.i = icmp eq ptr %.pn50.i.i.i.i, %ports.i.i.i
  br i1 %cmp.not52.i.i.i.i, label %teardown.i.i.i.for.end.i.i135.i.i_crit_edge, label %teardown.i.i.i.for.body.i.i131.i.i_crit_edge

teardown.i.i.i.for.body.i.i131.i.i_crit_edge:     ; preds = %teardown.i.i.i
  br label %for.body.i.i131.i.i

teardown.i.i.i.for.end.i.i135.i.i_crit_edge:      ; preds = %teardown.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i135.i.i

for.body.i.i131.i.i:                              ; preds = %for.inc.i.i134.i.i.for.body.i.i131.i.i_crit_edge, %teardown.i.i.i.for.body.i.i131.i.i_crit_edge
  %.pn53.i.i.i.i = phi ptr [ %.pn.i.i132.i.i, %for.inc.i.i134.i.i.for.body.i.i131.i.i_crit_edge ], [ %.pn50.i.i.i.i, %teardown.i.i.i.for.body.i.i131.i.i_crit_edge ]
  %type.i.i.i130.i.i = getelementptr i8, ptr %.pn53.i.i.i.i, i32 -424
  %384 = ptrtoint ptr %type.i.i.i130.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %type.i.i.i130.i.i, align 4
  %386 = zext i32 %385 to i64
  call void @__sanitizer_cov_trace_switch(i64 %386, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %385, label %for.body.i.i131.i.i.for.inc.i.i134.i.i_crit_edge [
    i32 3, label %for.body.i.i131.i.i.if.then.i.i.i145.i_crit_edge
    i32 0, label %for.body.i.i131.i.i.if.then.i.i.i145.i_crit_edge153
  ]

for.body.i.i131.i.i.if.then.i.i.i145.i_crit_edge153: ; preds = %for.body.i.i131.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i145.i

for.body.i.i131.i.i.if.then.i.i.i145.i_crit_edge: ; preds = %for.body.i.i131.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i145.i

for.body.i.i131.i.i.for.inc.i.i134.i.i_crit_edge: ; preds = %for.body.i.i131.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i134.i.i

if.then.i.i.i145.i:                               ; preds = %for.body.i.i131.i.i.if.then.i.i.i145.i_crit_edge, %for.body.i.i131.i.i.if.then.i.i.i145.i_crit_edge153
  %dp.054.i.i.i.i = getelementptr i8, ptr %.pn53.i.i.i.i, i32 -448
  call fastcc void @dsa_port_teardown(ptr noundef %dp.054.i.i.i.i) #12
  br label %for.inc.i.i134.i.i

for.inc.i.i134.i.i:                               ; preds = %if.then.i.i.i145.i, %for.body.i.i131.i.i.for.inc.i.i134.i.i_crit_edge
  %387 = ptrtoint ptr %.pn53.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %.pn.i.i132.i.i = load ptr, ptr %.pn53.i.i.i.i, align 4
  %cmp.not.i.i133.i.i = icmp eq ptr %.pn.i.i132.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i133.i.i, label %for.inc.i.i134.i.i.for.end.i.i135.i.i_crit_edge, label %for.inc.i.i134.i.i.for.body.i.i131.i.i_crit_edge

for.inc.i.i134.i.i.for.body.i.i131.i.i_crit_edge: ; preds = %for.inc.i.i134.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i131.i.i

for.inc.i.i134.i.i.for.end.i.i135.i.i_crit_edge:  ; preds = %for.inc.i.i134.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i135.i.i

for.end.i.i135.i.i:                               ; preds = %for.inc.i.i134.i.i.for.end.i.i135.i.i_crit_edge, %teardown.i.i.i.for.end.i.i135.i.i_crit_edge
  call void @dsa_flush_workqueue() #12
  %388 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %.pn4355.i.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp16.not57.i.i.i.i = icmp eq ptr %.pn4355.i.i.i.i, %ports.i.i.i
  br i1 %cmp16.not57.i.i.i.i, label %for.end.i.i135.i.i.teardown_master.i.i_crit_edge, label %for.end.i.i135.i.i.for.body18.i.i.i.i_crit_edge

for.end.i.i135.i.i.for.body18.i.i.i.i_crit_edge:  ; preds = %for.end.i.i135.i.i
  br label %for.body18.i.i.i.i

for.end.i.i135.i.i.teardown_master.i.i_crit_edge: ; preds = %for.end.i.i135.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %teardown_master.i.i

for.body18.i.i.i.i:                               ; preds = %for.inc24.i.i.i.i.for.body18.i.i.i.i_crit_edge, %for.end.i.i135.i.i.for.body18.i.i.i.i_crit_edge
  %.pn4358.i.i.i.i = phi ptr [ %.pn43.i.i.i.i, %for.inc24.i.i.i.i.for.body18.i.i.i.i_crit_edge ], [ %.pn4355.i.i.i.i, %for.end.i.i135.i.i.for.body18.i.i.i.i_crit_edge ]
  %type.i46.i.i.i.i = getelementptr i8, ptr %.pn4358.i.i.i.i, i32 -424
  %389 = ptrtoint ptr %type.i46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %type.i46.i.i.i.i, align 4
  %.off.i.i.i.i = add i32 %390, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i.i.i)
  %switch.i.i136.i.i = icmp ult i32 %.off.i.i.i.i, 2
  br i1 %switch.i.i136.i.i, label %if.then22.i.i.i.i, label %for.body18.i.i.i.i.for.inc24.i.i.i.i_crit_edge

for.body18.i.i.i.i.for.inc24.i.i.i.i_crit_edge:   ; preds = %for.body18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc24.i.i.i.i

if.then22.i.i.i.i:                                ; preds = %for.body18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dp.159.i.i.i.i = getelementptr i8, ptr %.pn4358.i.i.i.i, i32 -448
  call fastcc void @dsa_port_teardown(ptr noundef %dp.159.i.i.i.i) #12
  br label %for.inc24.i.i.i.i

for.inc24.i.i.i.i:                                ; preds = %if.then22.i.i.i.i, %for.body18.i.i.i.i.for.inc24.i.i.i.i_crit_edge
  %391 = ptrtoint ptr %.pn4358.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %.pn43.i.i.i.i = load ptr, ptr %.pn4358.i.i.i.i, align 4
  %cmp16.not.i.i.i.i = icmp eq ptr %.pn43.i.i.i.i, %ports.i.i.i
  br i1 %cmp16.not.i.i.i.i, label %for.inc24.i.i.i.i.teardown_master.i.i_crit_edge, label %for.inc24.i.i.i.i.for.body18.i.i.i.i_crit_edge

for.inc24.i.i.i.i.for.body18.i.i.i.i_crit_edge:   ; preds = %for.inc24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body18.i.i.i.i

for.inc24.i.i.i.i.teardown_master.i.i_crit_edge:  ; preds = %for.inc24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %teardown_master.i.i

if.end20.i.i:                                     ; preds = %for.inc35.i.i.i.if.end20.i.i_crit_edge, %for.cond16.preheader.i.i.i.if.end20.i.i_crit_edge
  %392 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %.pn34.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not35.i = icmp eq ptr %.pn34.i, %ports.i.i.i
  br i1 %cmp.not35.i, label %if.end20.i.i.if.end24.i.i_crit_edge, label %if.end20.i.i.for.body.i5_crit_edge

if.end20.i.i.for.body.i5_crit_edge:               ; preds = %if.end20.i.i
  br label %for.body.i5

if.end20.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i.i

for.body.i5:                                      ; preds = %for.body.i5.for.body.i5_crit_edge, %if.end20.i.i.for.body.i5_crit_edge
  %.pn37.i = phi ptr [ %.pn.i3, %for.body.i5.for.body.i5_crit_edge ], [ %.pn34.i, %if.end20.i.i.for.body.i5_crit_edge ]
  %len.036.i = phi i32 [ %397, %for.body.i5.for.body.i5_crit_edge ], [ 0, %if.end20.i.i.for.body.i5_crit_edge ]
  %ds.i = getelementptr i8, ptr %.pn37.i, i32 -432
  %393 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %ds.i, align 4
  %num_lag_ids.i = getelementptr inbounds %struct.dsa_switch, ptr %394, i32 0, i32 16
  %395 = ptrtoint ptr %num_lag_ids.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %num_lag_ids.i, align 4
  %397 = call i32 @llvm.umax.i32(i32 %396, i32 %len.036.i) #12
  %398 = ptrtoint ptr %.pn37.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %.pn.i3 = load ptr, ptr %.pn37.i, align 4
  %cmp.not.i4 = icmp eq ptr %.pn.i3, %ports.i.i.i
  br i1 %cmp.not.i4, label %for.end.i7, label %for.body.i5.for.body.i5_crit_edge

for.body.i5.for.body.i5_crit_edge:                ; preds = %for.body.i5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i5

for.end.i7:                                       ; preds = %for.body.i5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %397)
  %tobool.not.i6 = icmp eq i32 %397, 0
  br i1 %tobool.not.i6, label %for.end.i7.if.end24.i.i_crit_edge, label %if.end11.i

for.end.i7.if.end24.i.i_crit_edge:                ; preds = %for.end.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i.i

if.end11.i:                                       ; preds = %for.end.i7
  %399 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %397, i32 4) #12
  %400 = extractvalue { i32, i1 } %399, 1
  br i1 %400, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !118

kcalloc.exit.thread.i:                            ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %lags28.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %123, i32 0, i32 5
  %401 = ptrtoint ptr %lags28.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr null, ptr %lags28.i, align 4
  br label %teardown_ports.i.i

if.end7.i.i.i:                                    ; preds = %if.end11.i
  %402 = extractvalue { i32, i1 } %399, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %402, i32 noundef 3520) #18
  %lags.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %123, i32 0, i32 5
  %403 = ptrtoint ptr %lags.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store ptr %call8.i.i.i, ptr %lags.i, align 4
  %tobool13.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool13.not.i, label %if.end7.i.i.i.teardown_ports.i.i_crit_edge, label %if.end15.i

if.end7.i.i.i.teardown_ports.i.i_crit_edge:       ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %teardown_ports.i.i

if.end15.i:                                       ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %lags_len.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %123, i32 0, i32 11
  %404 = ptrtoint ptr %lags_len.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 %397, ptr %lags_len.i, align 4
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.end15.i, %for.end.i7.if.end24.i.i_crit_edge, %if.end20.i.i.if.end24.i.i_crit_edge
  %405 = ptrtoint ptr %setup.i.i to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 1, ptr %setup.i.i, align 4
  %index30.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %123, i32 0, i32 3
  %406 = ptrtoint ptr %index30.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %index30.i.i, align 4
  %call31.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %407) #15
  br label %dsa_switch_probe.exit

teardown_ports.i.i:                               ; preds = %if.end7.i.i.i.teardown_ports.i.i_crit_edge, %kcalloc.exit.thread.i
  %408 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %.pn50.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not52.i = icmp eq ptr %.pn50.i, %ports.i.i.i
  br i1 %cmp.not52.i, label %teardown_ports.i.i.for.end.i_crit_edge, label %teardown_ports.i.i.for.body.i_crit_edge

teardown_ports.i.i.for.body.i_crit_edge:          ; preds = %teardown_ports.i.i
  br label %for.body.i

teardown_ports.i.i.for.end.i_crit_edge:           ; preds = %teardown_ports.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %teardown_ports.i.i.for.body.i_crit_edge
  %.pn53.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn50.i, %teardown_ports.i.i.for.body.i_crit_edge ]
  %type.i.i = getelementptr i8, ptr %.pn53.i, i32 -424
  %409 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %type.i.i, align 4
  %411 = zext i32 %410 to i64
  call void @__sanitizer_cov_trace_switch(i64 %411, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %410, label %for.body.i.for.inc.i_crit_edge [
    i32 3, label %for.body.i.if.then.i_crit_edge
    i32 0, label %for.body.i.if.then.i_crit_edge154
  ]

for.body.i.if.then.i_crit_edge154:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge154
  %dp.054.i = getelementptr i8, ptr %.pn53.i, i32 -448
  call fastcc void @dsa_port_teardown(ptr noundef %dp.054.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %412 = ptrtoint ptr %.pn53.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %.pn.i = load ptr, ptr %.pn53.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i.i.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %teardown_ports.i.i.for.end.i_crit_edge
  call void @dsa_flush_workqueue() #12
  %413 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %.pn4355.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp16.not57.i = icmp eq ptr %.pn4355.i, %ports.i.i.i
  br i1 %cmp16.not57.i, label %for.end.i.teardown_master.i.i_crit_edge, label %for.end.i.for.body18.i_crit_edge

for.end.i.for.body18.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body18.i

for.end.i.teardown_master.i.i_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %teardown_master.i.i

for.body18.i:                                     ; preds = %for.inc24.i.for.body18.i_crit_edge, %for.end.i.for.body18.i_crit_edge
  %.pn4358.i = phi ptr [ %.pn43.i, %for.inc24.i.for.body18.i_crit_edge ], [ %.pn4355.i, %for.end.i.for.body18.i_crit_edge ]
  %type.i46.i = getelementptr i8, ptr %.pn4358.i, i32 -424
  %414 = ptrtoint ptr %type.i46.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %type.i46.i, align 4
  %.off.i = add i32 %415, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then22.i, label %for.body18.i.for.inc24.i_crit_edge

for.body18.i.for.inc24.i_crit_edge:               ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc24.i

if.then22.i:                                      ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  %dp.159.i = getelementptr i8, ptr %.pn4358.i, i32 -448
  call fastcc void @dsa_port_teardown(ptr noundef %dp.159.i) #12
  br label %for.inc24.i

for.inc24.i:                                      ; preds = %if.then22.i, %for.body18.i.for.inc24.i_crit_edge
  %416 = ptrtoint ptr %.pn4358.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %.pn43.i = load ptr, ptr %.pn4358.i, align 4
  %cmp16.not.i = icmp eq ptr %.pn43.i, %ports.i.i.i
  br i1 %cmp16.not.i, label %for.inc24.i.teardown_master.i.i_crit_edge, label %for.inc24.i.for.body18.i_crit_edge

for.inc24.i.for.body18.i_crit_edge:               ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body18.i

for.inc24.i.teardown_master.i.i_crit_edge:        ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %teardown_master.i.i

teardown_master.i.i:                              ; preds = %for.inc24.i.teardown_master.i.i_crit_edge, %for.end.i.teardown_master.i.i_crit_edge, %for.inc24.i.i.i.i.teardown_master.i.i_crit_edge, %for.end.i.i135.i.i.teardown_master.i.i_crit_edge
  %err.0.i.i = phi i32 [ %err.0.i.i.i, %for.end.i.i135.i.i.teardown_master.i.i_crit_edge ], [ -12, %for.end.i.teardown_master.i.i_crit_edge ], [ -12, %for.inc24.i.teardown_master.i.i_crit_edge ], [ %err.0.i.i.i, %for.inc24.i.i.i.i.teardown_master.i.i_crit_edge ]
  call void @rtnl_lock() #12
  %417 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %.pn11.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not13.i.i.i = icmp eq ptr %.pn11.i.i.i, %ports.i.i.i
  br i1 %cmp.not13.i.i.i, label %teardown_master.i.i.teardown_switches.i.i_crit_edge, label %teardown_master.i.i.for.body.i140.i.i_crit_edge

teardown_master.i.i.for.body.i140.i.i_crit_edge:  ; preds = %teardown_master.i.i
  br label %for.body.i140.i.i

teardown_master.i.i.teardown_switches.i.i_crit_edge: ; preds = %teardown_master.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %teardown_switches.i.i

for.body.i140.i.i:                                ; preds = %for.inc.i144.i.i.for.body.i140.i.i_crit_edge, %teardown_master.i.i.for.body.i140.i.i_crit_edge
  %.pn14.i.i.i = phi ptr [ %.pn.i142.i.i, %for.inc.i144.i.i.for.body.i140.i.i_crit_edge ], [ %.pn11.i.i.i, %teardown_master.i.i.for.body.i140.i.i_crit_edge ]
  %type.i.i138.i.i = getelementptr i8, ptr %.pn14.i.i.i, i32 -424
  %418 = ptrtoint ptr %type.i.i138.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %type.i.i138.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %419)
  %cmp.i.i139.i.i = icmp eq i32 %419, 1
  br i1 %cmp.i.i139.i.i, label %if.then.i141.i.i, label %for.body.i140.i.i.for.inc.i144.i.i_crit_edge

for.body.i140.i.i.for.inc.i144.i.i_crit_edge:     ; preds = %for.body.i140.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i144.i.i

if.then.i141.i.i:                                 ; preds = %for.body.i140.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dp.015.i.i.i = getelementptr i8, ptr %.pn14.i.i.i, i32 -448
  %420 = ptrtoint ptr %dp.015.i.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %dp.015.i.i.i, align 4
  call void @dsa_master_teardown(ptr noundef %421) #12
  br label %for.inc.i144.i.i

for.inc.i144.i.i:                                 ; preds = %if.then.i141.i.i, %for.body.i140.i.i.for.inc.i144.i.i_crit_edge
  %422 = ptrtoint ptr %.pn14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %.pn.i142.i.i = load ptr, ptr %.pn14.i.i.i, align 4
  %cmp.not.i143.i.i = icmp eq ptr %.pn.i142.i.i, %ports.i.i.i
  br i1 %cmp.not.i143.i.i, label %for.inc.i144.i.i.teardown_switches.i.i_crit_edge, label %for.inc.i144.i.i.for.body.i140.i.i_crit_edge

for.inc.i144.i.i.for.body.i140.i.i_crit_edge:     ; preds = %for.inc.i144.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i140.i.i

for.inc.i144.i.i.teardown_switches.i.i_crit_edge: ; preds = %for.inc.i144.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %teardown_switches.i.i

teardown_switches.i.i:                            ; preds = %for.inc.i144.i.i.teardown_switches.i.i_crit_edge, %teardown_master.i.i.teardown_switches.i.i_crit_edge, %if.then.i96.i.i.teardown_switches.i.i_crit_edge
  %err.1.i.i = phi i32 [ %err.0.i.i, %teardown_master.i.i.teardown_switches.i.i_crit_edge ], [ %err.0.i.i, %for.inc.i144.i.i.teardown_switches.i.i_crit_edge ], [ %call2.i.i.i, %if.then.i96.i.i.teardown_switches.i.i_crit_edge ]
  call void @rtnl_unlock() #12
  br label %teardown_cpu_ports.i.i

teardown_cpu_ports.i.i:                           ; preds = %teardown_switches.i.i, %dsa_switch_setup.exit.i.i.i.teardown_cpu_ports.i.i_crit_edge, %dsa_user_ports.exit.i.i.i.i.teardown_cpu_ports.i.i_crit_edge
  %err.2.i.i = phi i32 [ %err.1.i.i, %teardown_switches.i.i ], [ -12, %dsa_user_ports.exit.i.i.i.i.teardown_cpu_ports.i.i_crit_edge ], [ %retval.0.i.i88.i.i, %dsa_switch_setup.exit.i.i.i.teardown_cpu_ports.i.i_crit_edge ]
  call fastcc void @dsa_tree_teardown_switches(ptr noundef %123) #12
  %423 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %.pn15.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not16.i.i.i = icmp eq ptr %.pn15.i.i.i, %ports.i.i.i
  br i1 %cmp.not16.i.i.i, label %teardown_cpu_ports.i.i.dsa_tree_setup.exit.i_crit_edge, label %teardown_cpu_ports.i.i.for.body.i148.i.i_crit_edge

teardown_cpu_ports.i.i.for.body.i148.i.i_crit_edge: ; preds = %teardown_cpu_ports.i.i
  br label %for.body.i148.i.i

teardown_cpu_ports.i.i.dsa_tree_setup.exit.i_crit_edge: ; preds = %teardown_cpu_ports.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_tree_setup.exit.i

for.body.i148.i.i:                                ; preds = %for.inc.i152.i.i.for.body.i148.i.i_crit_edge, %teardown_cpu_ports.i.i.for.body.i148.i.i_crit_edge
  %.pn17.i.i.i = phi ptr [ %.pn.i150.i.i, %for.inc.i152.i.i.for.body.i148.i.i_crit_edge ], [ %.pn15.i.i.i, %teardown_cpu_ports.i.i.for.body.i148.i.i_crit_edge ]
  %type.i.i146.i.i = getelementptr i8, ptr %.pn17.i.i.i, i32 -424
  %424 = ptrtoint ptr %type.i.i146.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %type.i.i146.i.i, align 4
  %426 = and i32 %425, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %426)
  %switch.i147.i.i = icmp eq i32 %426, 2
  br i1 %switch.i147.i.i, label %if.then.i149.i.i, label %for.body.i148.i.i.for.inc.i152.i.i_crit_edge

for.body.i148.i.i.for.inc.i152.i.i_crit_edge:     ; preds = %for.body.i148.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i152.i.i

if.then.i149.i.i:                                 ; preds = %for.body.i148.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %cpu_dp.i.i.i = getelementptr i8, ptr %.pn17.i.i.i, i32 -416
  %427 = ptrtoint ptr %cpu_dp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store ptr null, ptr %cpu_dp.i.i.i, align 4
  br label %for.inc.i152.i.i

for.inc.i152.i.i:                                 ; preds = %if.then.i149.i.i, %for.body.i148.i.i.for.inc.i152.i.i_crit_edge
  %428 = ptrtoint ptr %.pn17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %.pn.i150.i.i = load ptr, ptr %.pn17.i.i.i, align 4
  %cmp.not.i151.i.i = icmp eq ptr %.pn.i150.i.i, %ports.i.i.i
  br i1 %cmp.not.i151.i.i, label %for.inc.i152.i.i.dsa_tree_setup.exit.i_crit_edge, label %for.inc.i152.i.i.for.body.i148.i.i_crit_edge

for.inc.i152.i.i.for.body.i148.i.i_crit_edge:     ; preds = %for.inc.i152.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i148.i.i

for.inc.i152.i.i.dsa_tree_setup.exit.i_crit_edge: ; preds = %for.inc.i152.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_tree_setup.exit.i

dsa_tree_setup.exit.i:                            ; preds = %for.inc.i152.i.i.dsa_tree_setup.exit.i_crit_edge, %teardown_cpu_ports.i.i.dsa_tree_setup.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i.i)
  %tobool26.not.i = icmp eq i32 %err.2.i.i, 0
  br i1 %tobool26.not.i, label %dsa_tree_setup.exit.i.dsa_switch_probe.exit_crit_edge, label %dsa_tree_setup.exit.i.if.then27.i_crit_edge

dsa_tree_setup.exit.i.if.then27.i_crit_edge:      ; preds = %dsa_tree_setup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.i

dsa_tree_setup.exit.i.dsa_switch_probe.exit_crit_edge: ; preds = %dsa_tree_setup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_switch_probe.exit

if.then27.sink.split.i:                           ; preds = %dsa_tree_find_first_cpu.exit.i.i.i.i.if.then27.sink.split.i_crit_edge, %for.cond.i.i.i62.i.i.if.then27.sink.split.i_crit_edge, %dsa_tree_get.exit.i.if.then27.sink.split.i_crit_edge
  %.str.39.sink.i = phi ptr [ @.str.34, %dsa_tree_get.exit.i.if.then27.sink.split.i_crit_edge ], [ @.str.39, %dsa_tree_find_first_cpu.exit.i.i.i.i.if.then27.sink.split.i_crit_edge ], [ @.str.39, %for.cond.i.i.i62.i.i.if.then27.sink.split.i_crit_edge ]
  %retval.0.i146192.ph.i = phi i32 [ -17, %dsa_tree_get.exit.i.if.then27.sink.split.i_crit_edge ], [ -22, %dsa_tree_find_first_cpu.exit.i.i.i.i.if.then27.sink.split.i_crit_edge ], [ -22, %for.cond.i.i.i62.i.i.if.then27.sink.split.i_crit_edge ]
  %index.i.i.i133.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %123, i32 0, i32 3
  %429 = ptrtoint ptr %index.i.i.i133.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %index.i.i.i133.i, align 4
  %call1.i.i.i134.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.39.sink.i, i32 noundef %430) #15
  br label %if.then27.i

if.then27.i:                                      ; preds = %if.then27.sink.split.i, %dsa_tree_setup.exit.i.if.then27.i_crit_edge
  %retval.0.i146192.i = phi i32 [ %err.2.i.i, %dsa_tree_setup.exit.i.if.then27.i_crit_edge ], [ %retval.0.i146192.ph.i, %if.then27.sink.split.i ]
  %431 = ptrtoint ptr %dst23.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %dst23.i, align 4
  %ports.i148.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %432, i32 0, i32 1
  %433 = ptrtoint ptr %ports.i148.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %ports.i148.i, align 4
  %cmp.not28.i149.i = icmp eq ptr %434, %ports.i148.i
  br i1 %cmp.not28.i149.i, label %if.then27.i.dsa_switch_release_ports.exit166.i_crit_edge, label %if.then27.i.for.body.i155.i_crit_edge

if.then27.i.for.body.i155.i_crit_edge:            ; preds = %if.then27.i
  br label %for.body.i155.i

if.then27.i.dsa_switch_release_ports.exit166.i_crit_edge: ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_switch_release_ports.exit166.i

for.body.i155.i:                                  ; preds = %for.inc.i165.i.for.body.i155.i_crit_edge, %if.then27.i.for.body.i155.i_crit_edge
  %.pn.in29.i150.i = phi ptr [ %.pn32.i152.i, %for.inc.i165.i.for.body.i155.i_crit_edge ], [ %434, %if.then27.i.for.body.i155.i_crit_edge ]
  %dp.031.i151.i = getelementptr i8, ptr %.pn.in29.i150.i, i32 -448
  %435 = ptrtoint ptr %.pn.in29.i150.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %.pn32.i152.i = load ptr, ptr %.pn.in29.i150.i, align 4
  %ds9.i153.i = getelementptr i8, ptr %.pn.in29.i150.i, i32 -432
  %436 = ptrtoint ptr %ds9.i153.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %ds9.i153.i, align 4
  %cmp10.i154.i = icmp eq ptr %437, %ds
  br i1 %cmp10.i154.i, label %if.then.i157.i, label %for.body.i155.i.for.inc.i165.i_crit_edge

for.body.i155.i.for.inc.i165.i_crit_edge:         ; preds = %for.body.i155.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i165.i

if.then.i157.i:                                   ; preds = %for.body.i155.i
  %call.i.i.i156.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in29.i150.i) #12
  br i1 %call.i.i.i156.i, label %if.end.i.i.i160.i, label %if.then.i157.i.list_del.exit.i162.i_crit_edge

if.then.i157.i.list_del.exit.i162.i_crit_edge:    ; preds = %if.then.i157.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i162.i

if.end.i.i.i160.i:                                ; preds = %if.then.i157.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i158.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i150.i, i32 0, i32 1
  %438 = ptrtoint ptr %prev.i.i.i158.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %prev.i.i.i158.i, align 4
  %440 = ptrtoint ptr %.pn.in29.i150.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %.pn.in29.i150.i, align 4
  %prev1.i.i.i.i159.i = getelementptr inbounds %struct.list_head, ptr %441, i32 0, i32 1
  %442 = ptrtoint ptr %prev1.i.i.i.i159.i to i32
  call void @__asan_store4_noabort(i32 %442)
  store ptr %439, ptr %prev1.i.i.i.i159.i, align 4
  %443 = ptrtoint ptr %439 to i32
  call void @__asan_store4_noabort(i32 %443)
  store volatile ptr %441, ptr %439, align 4
  br label %list_del.exit.i162.i

list_del.exit.i162.i:                             ; preds = %if.end.i.i.i160.i, %if.then.i157.i.list_del.exit.i162.i_crit_edge
  %444 = ptrtoint ptr %.pn.in29.i150.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in29.i150.i, align 4
  %prev.i.i161.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i150.i, i32 0, i32 1
  %445 = ptrtoint ptr %prev.i.i161.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i161.i, align 4
  call void @kfree(ptr noundef %dp.031.i151.i) #12
  br label %for.inc.i165.i

for.inc.i165.i:                                   ; preds = %list_del.exit.i162.i, %for.body.i155.i.for.inc.i165.i_crit_edge
  %446 = ptrtoint ptr %dst23.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %dst23.i, align 4
  %ports8.i163.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %447, i32 0, i32 1
  %cmp.not.i164.i = icmp eq ptr %.pn32.i152.i, %ports8.i163.i
  br i1 %cmp.not.i164.i, label %for.inc.i165.i.dsa_switch_release_ports.exit166.i_crit_edge, label %for.inc.i165.i.for.body.i155.i_crit_edge

for.inc.i165.i.for.body.i155.i_crit_edge:         ; preds = %for.inc.i165.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i155.i

for.inc.i165.i.dsa_switch_release_ports.exit166.i_crit_edge: ; preds = %for.inc.i165.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_switch_release_ports.exit166.i

dsa_switch_release_ports.exit166.i:               ; preds = %for.inc.i165.i.dsa_switch_release_ports.exit166.i_crit_edge, %if.then27.i.dsa_switch_release_ports.exit166.i_crit_edge
  call fastcc void @dsa_tree_put(ptr noundef %123) #12
  br label %dsa_switch_probe.exit

dsa_switch_probe.exit:                            ; preds = %dsa_switch_release_ports.exit166.i, %dsa_tree_setup.exit.i.dsa_switch_probe.exit_crit_edge, %if.end24.i.i, %dsa_tree_setup_routing_table.exit.i.i, %if.end19.i.dsa_switch_probe.exit_crit_edge, %if.then15.i.dsa_switch_probe.exit_crit_edge, %if.else.i.dsa_switch_probe.exit_crit_edge, %if.then9.i.dsa_switch_probe.exit_crit_edge, %if.end.i.dsa_switch_probe.exit_crit_edge, %entry.dsa_switch_probe.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %entry.dsa_switch_probe.exit_crit_edge ], [ -22, %if.end.i.dsa_switch_probe.exit_crit_edge ], [ %err.0.i, %if.end19.i.dsa_switch_probe.exit_crit_edge ], [ %retval.0.i146192.i, %dsa_switch_release_ports.exit166.i ], [ 0, %dsa_tree_setup.exit.i.dsa_switch_probe.exit_crit_edge ], [ %retval.0.i85.ph.i, %if.then15.i.dsa_switch_probe.exit_crit_edge ], [ %retval.0.i169.i, %if.then9.i.dsa_switch_probe.exit_crit_edge ], [ -19, %if.else.i.dsa_switch_probe.exit_crit_edge ], [ 0, %if.end24.i.i ], [ 0, %dsa_tree_setup_routing_table.exit.i.i ]
  %dst = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %448 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %dst, align 4
  call fastcc void @dsa_tree_put(ptr noundef %449)
  call void @mutex_unlock(ptr noundef nonnull @dsa2_mutex) #12
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsa_tree_put(ptr noundef %dst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dst, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !123
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #12, !srcloc !124
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !121

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #12
  br label %if.end

if.then.i:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !125
  %tag_ops.i.i.i = getelementptr %struct.dsa_switch_tree, ptr %dst, i32 0, i32 6
  %1 = ptrtoint ptr %tag_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tag_ops.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i.i, label %if.then.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then.i.if.end.i.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dsa_tag_driver_put(ptr noundef nonnull %2) #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.if.end.i.i.i_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %dst) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i.dsa_tree_release.exit.i_crit_edge

if.end.i.i.i.dsa_tree_release.exit.i_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_tree_release.exit.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i.i = getelementptr %struct.dsa_switch_tree, ptr %dst, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %5 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dst, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %dsa_tree_release.exit.i

dsa_tree_release.exit.i:                          ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i.dsa_tree_release.exit.i_crit_edge
  %9 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %dst, align 4
  %prev.i.i.i.i = getelementptr %struct.dsa_switch_tree, ptr %dst, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %dst) #12
  br label %if.end

if.end:                                           ; preds = %dsa_tree_release.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsa_unregister_switch(ptr noundef readonly %ds) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @dsa2_mutex, i32 noundef 0) #12
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst1.i, align 4
  %setup.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %setup.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %setup.i.i, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %entry.dsa_tree_teardown.exit.i_crit_edge, label %if.end.i.i

entry.dsa_tree_teardown.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_tree_teardown.exit.i

if.end.i.i:                                       ; preds = %entry
  %lags.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %lags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lags.i.i.i, align 4
  tail call void @kfree(ptr noundef %5) #12
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn50.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not52.i.i.i = icmp eq ptr %.pn50.i.i.i, %ports.i.i.i
  br i1 %cmp.not52.i.i.i, label %if.end.i.i.for.end.i.i.i_crit_edge, label %if.end.i.i.for.body.i.i.i_crit_edge

if.end.i.i.for.body.i.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %for.body.i.i.i

if.end.i.i.for.end.i.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.for.body.i.i.i_crit_edge
  %.pn53.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn50.i.i.i, %if.end.i.i.for.body.i.i.i_crit_edge ]
  %type.i.i.i.i = getelementptr i8, ptr %.pn53.i.i.i, i32 -424
  %7 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type.i.i.i.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %8, label %for.body.i.i.i.for.inc.i.i.i_crit_edge [
    i32 3, label %for.body.i.i.i.if.then.i.i.i_crit_edge
    i32 0, label %for.body.i.i.i.if.then.i.i.i_crit_edge1
  ]

for.body.i.i.i.if.then.i.i.i_crit_edge1:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

for.body.i.i.i.if.then.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i.if.then.i.i.i_crit_edge, %for.body.i.i.i.if.then.i.i.i_crit_edge1
  %dp.054.i.i.i = getelementptr i8, ptr %.pn53.i.i.i, i32 -448
  tail call fastcc void @dsa_port_teardown(ptr noundef %dp.054.i.i.i) #12
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %10 = ptrtoint ptr %.pn53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i.i.i = load ptr, ptr %.pn53.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %if.end.i.i.for.end.i.i.i_crit_edge
  tail call void @dsa_flush_workqueue() #12
  %11 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn4355.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp16.not57.i.i.i = icmp eq ptr %.pn4355.i.i.i, %ports.i.i.i
  br i1 %cmp16.not57.i.i.i, label %for.end.i.i.i.dsa_tree_teardown_ports.exit.i.i_crit_edge, label %for.end.i.i.i.for.body18.i.i.i_crit_edge

for.end.i.i.i.for.body18.i.i.i_crit_edge:         ; preds = %for.end.i.i.i
  br label %for.body18.i.i.i

for.end.i.i.i.dsa_tree_teardown_ports.exit.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_tree_teardown_ports.exit.i.i

for.body18.i.i.i:                                 ; preds = %for.inc24.i.i.i.for.body18.i.i.i_crit_edge, %for.end.i.i.i.for.body18.i.i.i_crit_edge
  %.pn4358.i.i.i = phi ptr [ %.pn43.i.i.i, %for.inc24.i.i.i.for.body18.i.i.i_crit_edge ], [ %.pn4355.i.i.i, %for.end.i.i.i.for.body18.i.i.i_crit_edge ]
  %type.i46.i.i.i = getelementptr i8, ptr %.pn4358.i.i.i, i32 -424
  %12 = ptrtoint ptr %type.i46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i46.i.i.i, align 4
  %.off.i.i.i = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 2
  br i1 %switch.i.i.i, label %if.then22.i.i.i, label %for.body18.i.i.i.for.inc24.i.i.i_crit_edge

for.body18.i.i.i.for.inc24.i.i.i_crit_edge:       ; preds = %for.body18.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc24.i.i.i

if.then22.i.i.i:                                  ; preds = %for.body18.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dp.159.i.i.i = getelementptr i8, ptr %.pn4358.i.i.i, i32 -448
  tail call fastcc void @dsa_port_teardown(ptr noundef %dp.159.i.i.i) #12
  br label %for.inc24.i.i.i

for.inc24.i.i.i:                                  ; preds = %if.then22.i.i.i, %for.body18.i.i.i.for.inc24.i.i.i_crit_edge
  %14 = ptrtoint ptr %.pn4358.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn43.i.i.i = load ptr, ptr %.pn4358.i.i.i, align 4
  %cmp16.not.i.i.i = icmp eq ptr %.pn43.i.i.i, %ports.i.i.i
  br i1 %cmp16.not.i.i.i, label %for.inc24.i.i.i.dsa_tree_teardown_ports.exit.i.i_crit_edge, label %for.inc24.i.i.i.for.body18.i.i.i_crit_edge

for.inc24.i.i.i.for.body18.i.i.i_crit_edge:       ; preds = %for.inc24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body18.i.i.i

for.inc24.i.i.i.dsa_tree_teardown_ports.exit.i.i_crit_edge: ; preds = %for.inc24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_tree_teardown_ports.exit.i.i

dsa_tree_teardown_ports.exit.i.i:                 ; preds = %for.inc24.i.i.i.dsa_tree_teardown_ports.exit.i.i_crit_edge, %for.end.i.i.i.dsa_tree_teardown_ports.exit.i.i_crit_edge
  tail call void @rtnl_lock() #12
  %15 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn11.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not13.i.i.i = icmp eq ptr %.pn11.i.i.i, %ports.i.i.i
  br i1 %cmp.not13.i.i.i, label %dsa_tree_teardown_ports.exit.i.i.dsa_tree_teardown_master.exit.i.i_crit_edge, label %dsa_tree_teardown_ports.exit.i.i.for.body.i33.i.i_crit_edge

dsa_tree_teardown_ports.exit.i.i.for.body.i33.i.i_crit_edge: ; preds = %dsa_tree_teardown_ports.exit.i.i
  br label %for.body.i33.i.i

dsa_tree_teardown_ports.exit.i.i.dsa_tree_teardown_master.exit.i.i_crit_edge: ; preds = %dsa_tree_teardown_ports.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_tree_teardown_master.exit.i.i

for.body.i33.i.i:                                 ; preds = %for.inc.i37.i.i.for.body.i33.i.i_crit_edge, %dsa_tree_teardown_ports.exit.i.i.for.body.i33.i.i_crit_edge
  %.pn14.i.i.i = phi ptr [ %.pn.i35.i.i, %for.inc.i37.i.i.for.body.i33.i.i_crit_edge ], [ %.pn11.i.i.i, %dsa_tree_teardown_ports.exit.i.i.for.body.i33.i.i_crit_edge ]
  %type.i.i32.i.i = getelementptr i8, ptr %.pn14.i.i.i, i32 -424
  %16 = ptrtoint ptr %type.i.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i.i32.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i.i.i.i = icmp eq i32 %17, 1
  br i1 %cmp.i.i.i.i, label %if.then.i34.i.i, label %for.body.i33.i.i.for.inc.i37.i.i_crit_edge

for.body.i33.i.i.for.inc.i37.i.i_crit_edge:       ; preds = %for.body.i33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i37.i.i

if.then.i34.i.i:                                  ; preds = %for.body.i33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dp.015.i.i.i = getelementptr i8, ptr %.pn14.i.i.i, i32 -448
  %18 = ptrtoint ptr %dp.015.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dp.015.i.i.i, align 4
  tail call void @dsa_master_teardown(ptr noundef %19) #12
  br label %for.inc.i37.i.i

for.inc.i37.i.i:                                  ; preds = %if.then.i34.i.i, %for.body.i33.i.i.for.inc.i37.i.i_crit_edge
  %20 = ptrtoint ptr %.pn14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i35.i.i = load ptr, ptr %.pn14.i.i.i, align 4
  %cmp.not.i36.i.i = icmp eq ptr %.pn.i35.i.i, %ports.i.i.i
  br i1 %cmp.not.i36.i.i, label %for.inc.i37.i.i.dsa_tree_teardown_master.exit.i.i_crit_edge, label %for.inc.i37.i.i.for.body.i33.i.i_crit_edge

for.inc.i37.i.i.for.body.i33.i.i_crit_edge:       ; preds = %for.inc.i37.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i33.i.i

for.inc.i37.i.i.dsa_tree_teardown_master.exit.i.i_crit_edge: ; preds = %for.inc.i37.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_tree_teardown_master.exit.i.i

dsa_tree_teardown_master.exit.i.i:                ; preds = %for.inc.i37.i.i.dsa_tree_teardown_master.exit.i.i_crit_edge, %dsa_tree_teardown_ports.exit.i.i.dsa_tree_teardown_master.exit.i.i_crit_edge
  tail call void @rtnl_unlock() #12
  tail call fastcc void @dsa_tree_teardown_switches(ptr noundef %1) #12
  %21 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn15.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not16.i.i.i = icmp eq ptr %.pn15.i.i.i, %ports.i.i.i
  br i1 %cmp.not16.i.i.i, label %dsa_tree_teardown_master.exit.i.i.dsa_tree_teardown_cpu_ports.exit.i.i_crit_edge, label %dsa_tree_teardown_master.exit.i.i.for.body.i42.i.i_crit_edge

dsa_tree_teardown_master.exit.i.i.for.body.i42.i.i_crit_edge: ; preds = %dsa_tree_teardown_master.exit.i.i
  br label %for.body.i42.i.i

dsa_tree_teardown_master.exit.i.i.dsa_tree_teardown_cpu_ports.exit.i.i_crit_edge: ; preds = %dsa_tree_teardown_master.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_tree_teardown_cpu_ports.exit.i.i

for.body.i42.i.i:                                 ; preds = %for.inc.i46.i.i.for.body.i42.i.i_crit_edge, %dsa_tree_teardown_master.exit.i.i.for.body.i42.i.i_crit_edge
  %.pn17.i.i.i = phi ptr [ %.pn.i44.i.i, %for.inc.i46.i.i.for.body.i42.i.i_crit_edge ], [ %.pn15.i.i.i, %dsa_tree_teardown_master.exit.i.i.for.body.i42.i.i_crit_edge ]
  %type.i.i40.i.i = getelementptr i8, ptr %.pn17.i.i.i, i32 -424
  %22 = ptrtoint ptr %type.i.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type.i.i40.i.i, align 4
  %24 = and i32 %23, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %switch.i41.i.i = icmp eq i32 %24, 2
  br i1 %switch.i41.i.i, label %if.then.i43.i.i, label %for.body.i42.i.i.for.inc.i46.i.i_crit_edge

for.body.i42.i.i.for.inc.i46.i.i_crit_edge:       ; preds = %for.body.i42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i46.i.i

if.then.i43.i.i:                                  ; preds = %for.body.i42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %cpu_dp.i.i.i = getelementptr i8, ptr %.pn17.i.i.i, i32 -416
  %25 = ptrtoint ptr %cpu_dp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %cpu_dp.i.i.i, align 4
  br label %for.inc.i46.i.i

for.inc.i46.i.i:                                  ; preds = %if.then.i43.i.i, %for.body.i42.i.i.for.inc.i46.i.i_crit_edge
  %26 = ptrtoint ptr %.pn17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i44.i.i = load ptr, ptr %.pn17.i.i.i, align 4
  %cmp.not.i45.i.i = icmp eq ptr %.pn.i44.i.i, %ports.i.i.i
  br i1 %cmp.not.i45.i.i, label %for.inc.i46.i.i.dsa_tree_teardown_cpu_ports.exit.i.i_crit_edge, label %for.inc.i46.i.i.for.body.i42.i.i_crit_edge

for.inc.i46.i.i.for.body.i42.i.i_crit_edge:       ; preds = %for.inc.i46.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i42.i.i

for.inc.i46.i.i.dsa_tree_teardown_cpu_ports.exit.i.i_crit_edge: ; preds = %for.inc.i46.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_tree_teardown_cpu_ports.exit.i.i

dsa_tree_teardown_cpu_ports.exit.i.i:             ; preds = %for.inc.i46.i.i.dsa_tree_teardown_cpu_ports.exit.i.i_crit_edge, %dsa_tree_teardown_master.exit.i.i.dsa_tree_teardown_cpu_ports.exit.i.i_crit_edge
  %rtable.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %rtable.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rtable.i.i, align 4
  %cmp.not48.i.i = icmp eq ptr %28, %rtable.i.i
  br i1 %cmp.not48.i.i, label %dsa_tree_teardown_cpu_ports.exit.i.i.do.end.i.i_crit_edge, label %dsa_tree_teardown_cpu_ports.exit.i.i.for.body.i.i_crit_edge

dsa_tree_teardown_cpu_ports.exit.i.i.for.body.i.i_crit_edge: ; preds = %dsa_tree_teardown_cpu_ports.exit.i.i
  br label %for.body.i.i

dsa_tree_teardown_cpu_ports.exit.i.i.do.end.i.i_crit_edge: ; preds = %dsa_tree_teardown_cpu_ports.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %dsa_tree_teardown_cpu_ports.exit.i.i.for.body.i.i_crit_edge
  %.pn.in49.i.i = phi ptr [ %.pn.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %28, %dsa_tree_teardown_cpu_ports.exit.i.i.for.body.i.i_crit_edge ]
  %dl.0.i.i = getelementptr i8, ptr %.pn.in49.i.i, i32 -8
  %29 = ptrtoint ptr %.pn.in49.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i.i = load ptr, ptr %.pn.in49.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in49.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in49.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i.i, align 4
  %32 = ptrtoint ptr %.pn.in49.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %.pn.in49.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %36 = ptrtoint ptr %.pn.in49.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in49.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in49.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %dl.0.i.i) #12
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %rtable.i.i
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.do.end.i.i_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

list_del.exit.i.i.do.end.i.i_crit_edge:           ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %list_del.exit.i.i.do.end.i.i_crit_edge, %dsa_tree_teardown_cpu_ports.exit.i.i.do.end.i.i_crit_edge
  %index.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index.i.i, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %39) #15
  %40 = ptrtoint ptr %setup.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %setup.i.i, align 4
  br label %dsa_tree_teardown.exit.i

dsa_tree_teardown.exit.i:                         ; preds = %do.end.i.i, %entry.dsa_tree_teardown.exit.i_crit_edge
  %41 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dst1.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ports.i.i, align 4
  %cmp.not28.i.i = icmp eq ptr %44, %ports.i.i
  br i1 %cmp.not28.i.i, label %dsa_tree_teardown.exit.i.dsa_switch_remove.exit_crit_edge, label %dsa_tree_teardown.exit.i.for.body.i4.i_crit_edge

dsa_tree_teardown.exit.i.for.body.i4.i_crit_edge: ; preds = %dsa_tree_teardown.exit.i
  br label %for.body.i4.i

dsa_tree_teardown.exit.i.dsa_switch_remove.exit_crit_edge: ; preds = %dsa_tree_teardown.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_switch_remove.exit

for.body.i4.i:                                    ; preds = %for.inc.i.i.for.body.i4.i_crit_edge, %dsa_tree_teardown.exit.i.for.body.i4.i_crit_edge
  %.pn.in29.i.i = phi ptr [ %.pn32.i.i, %for.inc.i.i.for.body.i4.i_crit_edge ], [ %44, %dsa_tree_teardown.exit.i.for.body.i4.i_crit_edge ]
  %dp.031.i.i = getelementptr i8, ptr %.pn.in29.i.i, i32 -448
  %45 = ptrtoint ptr %.pn.in29.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn32.i.i = load ptr, ptr %.pn.in29.i.i, align 4
  %ds9.i.i = getelementptr i8, ptr %.pn.in29.i.i, i32 -432
  %46 = ptrtoint ptr %ds9.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ds9.i.i, align 4
  %cmp10.i.i = icmp eq ptr %47, %ds
  br i1 %cmp10.i.i, label %if.then.i.i, label %for.body.i4.i.for.inc.i.i_crit_edge

for.body.i4.i.for.inc.i.i_crit_edge:              ; preds = %for.body.i4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i4.i
  %call.i.i.i5.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in29.i.i) #12
  br i1 %call.i.i.i5.i, label %if.end.i.i.i8.i, label %if.then.i.i.list_del.exit.i10.i_crit_edge

if.then.i.i.list_del.exit.i10.i_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i10.i

if.end.i.i.i8.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i6.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i6.i, align 4
  %50 = ptrtoint ptr %.pn.in29.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %.pn.in29.i.i, align 4
  %prev1.i.i.i.i7.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i.i7.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del.exit.i10.i

list_del.exit.i10.i:                              ; preds = %if.end.i.i.i8.i, %if.then.i.i.list_del.exit.i10.i_crit_edge
  %54 = ptrtoint ptr %.pn.in29.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in29.i.i, align 4
  %prev.i.i9.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i9.i, align 4
  tail call void @kfree(ptr noundef %dp.031.i.i) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %list_del.exit.i10.i, %for.body.i4.i.for.inc.i.i_crit_edge
  %56 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dst1.i, align 4
  %ports8.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %57, i32 0, i32 1
  %cmp.not.i11.i = icmp eq ptr %.pn32.i.i, %ports8.i.i
  br i1 %cmp.not.i11.i, label %for.inc.i.i.dsa_switch_remove.exit_crit_edge, label %for.inc.i.i.for.body.i4.i_crit_edge

for.inc.i.i.for.body.i4.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i4.i

for.inc.i.i.dsa_switch_remove.exit_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_switch_remove.exit

dsa_switch_remove.exit:                           ; preds = %for.inc.i.i.dsa_switch_remove.exit_crit_edge, %dsa_tree_teardown.exit.i.dsa_switch_remove.exit_crit_edge
  tail call fastcc void @dsa_tree_put(ptr noundef %1) #12
  tail call void @mutex_unlock(ptr noundef nonnull @dsa2_mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsa_switch_shutdown(ptr noundef readonly %ds) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @dsa2_mutex, i32 noundef 0) #12
  tail call void @rtnl_lock() #12
  %dst = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst, align 4
  %ports = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn57 = load ptr, ptr %ports, align 4
  %cmp.not60 = icmp eq ptr %.pn57, %ports
  br i1 %cmp.not60, label %entry.for.cond18.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond18.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.inc.for.cond18.preheader_crit_edge, %entry.for.cond18.preheader_crit_edge
  %ports2.lcssa = phi ptr [ %ports, %entry.for.cond18.preheader_crit_edge ], [ %.pn, %for.inc.for.cond18.preheader_crit_edge ]
  %3 = ptrtoint ptr %ports2.lcssa to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn5463 = load ptr, ptr %ports2.lcssa, align 4
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst, align 4
  %ports2165 = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 1
  %cmp22.not66 = icmp eq ptr %.pn5463, %ports2165
  br i1 %cmp22.not66, label %for.cond18.preheader.for.end38_crit_edge, label %for.cond18.preheader.for.body24_crit_edge

for.cond18.preheader.for.body24_crit_edge:        ; preds = %for.cond18.preheader
  br label %for.body24

for.cond18.preheader.for.end38_crit_edge:         ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end38

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn61 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn57, %entry.for.body_crit_edge ]
  %dp.062 = getelementptr i8, ptr %.pn61, i32 -448
  %ds3 = getelementptr i8, ptr %.pn61, i32 -432
  %6 = ptrtoint ptr %ds3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ds3, align 4
  %cmp4 = icmp eq ptr %7, %ds
  br i1 %cmp4, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  %type.i = getelementptr i8, ptr %.pn61, i32 -424
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.i = icmp eq i32 %9, 3
  br i1 %cmp.i, label %if.then5, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %cpu_dp = getelementptr i8, ptr %.pn61, i32 -416
  %10 = ptrtoint ptr %cpu_dp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cpu_dp, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %dp.062 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dp.062, align 4
  tail call void @netdev_upper_dev_unlink(ptr noundef %13, ptr noundef %15) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn61 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn61, align 4
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dst, align 4
  %ports2 = getelementptr inbounds %struct.dsa_switch_tree, ptr %18, i32 0, i32 1
  %cmp.not = icmp eq ptr %.pn, %ports2
  br i1 %cmp.not, label %for.inc.for.cond18.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.cond18.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond18.preheader

for.body24:                                       ; preds = %for.inc32.for.body24_crit_edge, %for.cond18.preheader.for.body24_crit_edge
  %.pn5467 = phi ptr [ %.pn54, %for.inc32.for.body24_crit_edge ], [ %.pn5463, %for.cond18.preheader.for.body24_crit_edge ]
  %dp.169 = getelementptr i8, ptr %.pn5467, i32 -448
  %ds25 = getelementptr i8, ptr %.pn5467, i32 -432
  %19 = ptrtoint ptr %ds25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ds25, align 4
  %cmp26 = icmp eq ptr %20, %ds
  br i1 %cmp26, label %if.then27, label %for.body24.for.inc32_crit_edge

for.body24.for.inc32_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc32

if.then27:                                        ; preds = %for.body24
  %type.i55 = getelementptr i8, ptr %.pn5467, i32 -424
  %21 = ptrtoint ptr %type.i55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i56 = icmp eq i32 %22, 1
  br i1 %cmp.i56, label %if.then29, label %if.then27.for.inc32_crit_edge

if.then27.for.inc32_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc32

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %dp.169 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dp.169, align 4
  %dsa_ptr = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 75
  %25 = ptrtoint ptr %dsa_ptr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %dsa_ptr, align 4
  br label %for.inc32

for.inc32:                                        ; preds = %if.then29, %if.then27.for.inc32_crit_edge, %for.body24.for.inc32_crit_edge
  %26 = ptrtoint ptr %.pn5467 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn54 = load ptr, ptr %.pn5467, align 4
  %27 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dst, align 4
  %ports21 = getelementptr inbounds %struct.dsa_switch_tree, ptr %28, i32 0, i32 1
  %cmp22.not = icmp eq ptr %.pn54, %ports21
  br i1 %cmp22.not, label %for.inc32.for.end38_crit_edge, label %for.inc32.for.body24_crit_edge

for.inc32.for.body24_crit_edge:                   ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body24

for.inc32.for.end38_crit_edge:                    ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end38

for.end38:                                        ; preds = %for.inc32.for.end38_crit_edge, %for.cond18.preheader.for.end38_crit_edge
  tail call void @rtnl_unlock() #12
  tail call void @mutex_unlock(ptr noundef nonnull @dsa2_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_upper_dev_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dsa_switch_touch_ports(ptr noundef %ds) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 18
  %0 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11.not = icmp eq i32 %1, 0
  br i1 %cmp11.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %port.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn41.i = load ptr, ptr %ports.i, align 4
  %cmp.not42.i = icmp eq ptr %.pn41.i, %ports.i
  br i1 %cmp.not42.i, label %for.body.for.end.i_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.for.end.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %.pn43.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn41.i, %for.body.for.body.i_crit_edge ]
  %ds5.i = getelementptr i8, ptr %.pn43.i, i32 -432
  %5 = ptrtoint ptr %ds5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds5.i, align 4
  %cmp6.i = icmp eq ptr %6, %ds
  br i1 %cmp6.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %index7.i = getelementptr i8, ptr %.pn43.i, i32 -428
  %7 = ptrtoint ptr %index7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %port.012)
  %cmp8.i = icmp eq i32 %8, %port.012
  br i1 %cmp8.i, label %dsa_port_touch.exit, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %9 = ptrtoint ptr %.pn43.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn43.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.for.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 572) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.end.i.cleanup_crit_edge, label %if.end17.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17.i:                                       ; preds = %for.end.i
  %ds18.i = getelementptr inbounds %struct.dsa_port, ptr %call7.i.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %ds18.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ds, ptr %ds18.i, align 8
  %index19.i = getelementptr inbounds %struct.dsa_port, ptr %call7.i.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %index19.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %port.012, ptr %index19.i, align 4
  %list20.i = getelementptr inbounds %struct.dsa_port, ptr %call7.i.i.i, i32 0, i32 20
  %13 = ptrtoint ptr %list20.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list20.i, ptr %list20.i, align 8
  %prev.i.i = getelementptr inbounds %struct.dsa_port, ptr %call7.i.i.i, i32 0, i32 20, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list20.i, ptr %prev.i.i, align 4
  %prev.i39.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i39.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i39.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list20.i, ptr noundef %16, ptr noundef %ports.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end17.i.for.inc_crit_edge

if.end17.i.for.inc_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %prev.i39.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list20.i, ptr %prev.i39.i, align 4
  %18 = ptrtoint ptr %list20.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ports.i, ptr %list20.i, align 8
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list20.i, ptr %16, align 4
  br label %for.inc

dsa_port_touch.exit:                              ; preds = %if.then.i
  %dp.0.le.i = getelementptr i8, ptr %.pn43.i, i32 -448
  %tobool.not = icmp eq ptr %dp.0.le.i, null
  br i1 %tobool.not, label %dsa_port_touch.exit.cleanup_crit_edge, label %dsa_port_touch.exit.for.inc_crit_edge

dsa_port_touch.exit.for.inc_crit_edge:            ; preds = %dsa_port_touch.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

dsa_port_touch.exit.cleanup_crit_edge:            ; preds = %dsa_port_touch.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %dsa_port_touch.exit.for.inc_crit_edge, %if.end.i.i.i, %if.end17.i.for.inc_crit_edge
  %inc = add nuw i32 %port.012, 1
  %21 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %dsa_port_touch.exit.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %for.end.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -12, %dsa_port_touch.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dsa_tree_touch(i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %dst.0.in.i = phi ptr [ @dsa_tree_list, %entry ], [ %dst.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %dst.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %dst.0.i = load ptr, ptr %dst.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %dst.0.i, @dsa_tree_list
  br i1 %cmp.not.i, label %for.cond.i.if.else_crit_edge, label %for.body.i

for.cond.i.if.else_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

for.body.i:                                       ; preds = %for.cond.i
  %index1.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst.0.i, i32 0, i32 3
  %1 = ptrtoint ptr %index1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index1.i, align 4
  %cmp2.i = icmp eq i32 %2, %index
  br i1 %cmp2.i, label %dsa_tree_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

dsa_tree_find.exit:                               ; preds = %for.body.i
  %tobool.not = icmp eq ptr %dst.0.i, null
  br i1 %tobool.not, label %dsa_tree_find.exit.if.else_crit_edge, label %if.then.i

dsa_tree_find.exit.if.else_crit_edge:             ; preds = %dsa_tree_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then.i:                                        ; preds = %dsa_tree_find.exit
  %refcount.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst.0.i, i32 0, i32 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !120
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !118

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !121

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %cleanup

if.else:                                          ; preds = %dsa_tree_find.exit.if.else_crit_edge, %for.cond.i.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 64) #17
  %tobool.not.i5 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i5, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %index1.i6 = getelementptr inbounds %struct.dsa_switch_tree, ptr %call7.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %index1.i6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %index, ptr %index1.i6, align 4
  %rtable.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %call7.i.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %rtable.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %rtable.i, ptr %rtable.i, align 8
  %prev.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %call7.i.i.i, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %rtable.i, ptr %prev.i.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %ports.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %ports.i, ptr %ports.i, align 8
  %prev.i10.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i10.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ports.i, ptr %prev.i10.i, align 4
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i11.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i11.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i, ptr %prev.i11.i, align 4
  %13 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dsa_tree_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %13, ptr noundef nonnull @dsa_tree_list) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @dsa_tree_list, i32 0, i32 1), align 4
  %14 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dsa_tree_list, ptr %call7.i.i.i, align 8
  %15 = ptrtoint ptr %prev.i11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %prev.i11.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call7.i.i.i, ptr %13, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  %refcount.i7 = getelementptr inbounds %struct.dsa_switch_tree, ptr %call7.i.i.i, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i7, i32 noundef 4) #12
  %17 = ptrtoint ptr %refcount.i7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %refcount.i7, align 8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.i, %if.else.cleanup_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %dst.0.i, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ %dst.0.i, %if.end15.sink.split.i.i.i.i.i ], [ null, %if.else.cleanup_crit_edge ], [ %call7.i.i.i, %list_add_tail.exit.i ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_net_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dsa_port_parse_cpu(ptr noundef %dp, ptr noundef %master, ptr noundef %user_protocol) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %dst2 = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dst2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst2, align 4
  %call.i = tail call zeroext i1 @dsa_slave_dev_check(ptr noundef %master) #12
  br i1 %call.i, label %if.then.i, label %entry.dsa_get_tag_protocol.exit_crit_edge

entry.dsa_get_tag_protocol.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_get_tag_protocol.exit

if.then.i:                                        ; preds = %entry
  %dp.i.i = getelementptr i8, ptr %master, i32 2312
  %4 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp.i.i, align 4
  %ds3.i = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ds3.i, align 4
  %index.i = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %if.then.i.dsa_to_port.exit.i.i_crit_edge, label %if.then.i.for.body.i.i.i_crit_edge

if.then.i.for.body.i.i.i_crit_edge:               ; preds = %if.then.i
  br label %for.body.i.i.i

if.then.i.dsa_to_port.exit.i.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_to_port.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %if.then.i.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %13 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %14, %7
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %15 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %9)
  %cmp5.i.i.i = icmp eq i32 %16, %9
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %17 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_to_port.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_to_port.exit.i.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_to_port.exit.i.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_to_port.exit.i.i

dsa_to_port.exit.i.i:                             ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_to_port.exit.i.i_crit_edge, %if.then.i.dsa_to_port.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %if.then.i.dsa_to_port.exit.i.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_to_port.exit.i.i_crit_edge ]
  %cpu_dp1.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %cpu_dp1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cpu_dp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %dsa_to_port.exit.i.i.dsa_upstream_port.exit.i_crit_edge, label %if.end.i.i

dsa_to_port.exit.i.i.dsa_upstream_port.exit.i_crit_edge: ; preds = %dsa_to_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_upstream_port.exit.i

if.end.i.i:                                       ; preds = %dsa_to_port.exit.i.i
  %ds2.i.i = getelementptr inbounds %struct.dsa_port, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %ds2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ds2.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.dsa_switch, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i.i, align 4
  %index3.i.i = getelementptr inbounds %struct.dsa_port, ptr %19, i32 0, i32 5
  %24 = ptrtoint ptr %index3.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index3.i.i, align 4
  %index.i10.i.i = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 2
  %26 = ptrtoint ptr %index.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index.i10.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %23)
  %cmp.i.i.i = icmp eq i32 %27, %23
  br i1 %cmp.i.i.i, label %if.end.i.i.dsa_upstream_port.exit.i_crit_edge, label %if.else.i.i.i

if.end.i.i.dsa_upstream_port.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_upstream_port.exit.i

if.else.i.i.i:                                    ; preds = %if.end.i.i
  %rtable.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %11, i32 0, i32 10
  %28 = ptrtoint ptr %rtable.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn22.i.i.i.i = load ptr, ptr %rtable.i.i.i.i, align 4
  %cmp.not23.i.i.i.i = icmp eq ptr %.pn22.i.i.i.i, %rtable.i.i.i.i
  br i1 %cmp.not23.i.i.i.i, label %if.else.i.i.i.for.end.i.i.i.i_crit_edge, label %if.else.i.i.i.for.body.i.i.i.i_crit_edge

if.else.i.i.i.for.body.i.i.i.i_crit_edge:         ; preds = %if.else.i.i.i
  br label %for.body.i.i.i.i

if.else.i.i.i.for.end.i.i.i.i_crit_edge:          ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.else.i.i.i.for.body.i.i.i.i_crit_edge
  %.pn24.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %.pn22.i.i.i.i, %if.else.i.i.i.for.body.i.i.i.i_crit_edge ]
  %dl.0.i.i.i.i = getelementptr i8, ptr %.pn24.i.i.i.i, i32 -8
  %29 = ptrtoint ptr %dl.0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dl.0.i.i.i.i, align 4
  %ds3.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %ds3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ds3.i.i.i.i, align 4
  %cmp4.i.i.i.i = icmp eq ptr %32, %7
  br i1 %cmp4.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %link_dp.i.i.i.i = getelementptr i8, ptr %.pn24.i.i.i.i, i32 -4
  %33 = ptrtoint ptr %link_dp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %link_dp.i.i.i.i, align 4
  %ds5.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %ds5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ds5.i.i.i.i, align 4
  %index.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %index.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %23)
  %cmp6.i.i.i.i = icmp eq i32 %38, %23
  br i1 %cmp6.i.i.i.i, label %if.then.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %index8.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %30, i32 0, i32 5
  br label %dsa_routing_port.exit.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %39 = ptrtoint ptr %.pn24.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.i.i.i.i = load ptr, ptr %.pn24.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %rtable.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge, %if.else.i.i.i.for.end.i.i.i.i_crit_edge
  %num_ports.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 18
  br label %dsa_routing_port.exit.i.i.i

dsa_routing_port.exit.i.i.i:                      ; preds = %for.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.in.i.i.i.i = phi ptr [ %index8.i.i.i.i, %if.then.i.i.i.i ], [ %num_ports.i.i.i.i, %for.end.i.i.i.i ]
  %40 = ptrtoint ptr %retval.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %retval.0.i.i.i.i = load i32, ptr %retval.0.in.i.i.i.i, align 4
  br label %dsa_upstream_port.exit.i

dsa_upstream_port.exit.i:                         ; preds = %dsa_routing_port.exit.i.i.i, %if.end.i.i.dsa_upstream_port.exit.i_crit_edge, %dsa_to_port.exit.i.i.dsa_upstream_port.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %9, %dsa_to_port.exit.i.i.dsa_upstream_port.exit.i_crit_edge ], [ %retval.0.i.i.i.i, %dsa_routing_port.exit.i.i.i ], [ %25, %if.end.i.i.dsa_upstream_port.exit.i_crit_edge ]
  %ops.i = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 8
  %41 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %call5.i = tail call i32 %44(ptr noundef %7, i32 noundef %retval.0.i.i, i32 noundef 0) #12
  br label %dsa_get_tag_protocol.exit

dsa_get_tag_protocol.exit:                        ; preds = %dsa_upstream_port.exit.i, %entry.dsa_get_tag_protocol.exit_crit_edge
  %tag_protocol.0.i = phi i32 [ %call5.i, %dsa_upstream_port.exit.i ], [ 0, %entry.dsa_get_tag_protocol.exit_crit_edge ]
  %ops6.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %45 = ptrtoint ptr %ops6.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops6.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %index8.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %49 = ptrtoint ptr %index8.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index8.i, align 4
  %call9.i = tail call i32 %48(ptr noundef %1, i32 noundef %50, i32 noundef %tag_protocol.0.i) #12
  %default_proto3 = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 7
  %51 = ptrtoint ptr %default_proto3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %default_proto3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not = icmp eq i32 %52, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %dsa_get_tag_protocol.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %call9.i)
  %cmp.not = icmp eq i32 %52, %call9.i
  br i1 %cmp.not, label %if.then.if.end7_crit_edge, label %do.end

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.20) #15
  br label %cleanup

if.else:                                          ; preds = %dsa_get_tag_protocol.exit
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %default_proto3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call9.i, ptr %default_proto3, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %user_protocol, null
  br i1 %tobool8.not, label %if.else18, label %if.then9

if.then9:                                         ; preds = %if.end7
  %56 = ptrtoint ptr %ops6.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops6.i, align 4
  %change_tag_protocol = getelementptr inbounds %struct.dsa_switch_ops, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %change_tag_protocol to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %change_tag_protocol, align 4
  %tobool10.not = icmp eq ptr %59, null
  br i1 %tobool10.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.23) #15
  br label %cleanup

if.end16:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = tail call ptr @dsa_find_tagger_by_name(ptr noundef nonnull %user_protocol) #12
  br label %if.end20

if.else18:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = tail call ptr @dsa_tag_driver_get(i32 noundef %call9.i) #12
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.end16
  %tag_ops.0 = phi ptr [ %call17, %if.end16 ], [ %call19, %if.else18 ]
  %cmp.i = icmp ugt ptr %tag_ops.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end32

if.then22:                                        ; preds = %if.end20
  %cmp24 = icmp eq ptr %tag_ops.0, inttoptr (i32 -92 to ptr)
  br i1 %cmp24, label %if.then22.cleanup_crit_edge, label %do.end29

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end29:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %tag_ops.0 to i32
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.26) #15
  br label %cleanup

if.end32:                                         ; preds = %if.end20
  %tag_ops33 = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 6
  %65 = ptrtoint ptr %tag_ops33 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tag_ops33, align 4
  %tobool34.not = icmp eq ptr %66, null
  br i1 %tobool34.not, label %if.else44, label %if.then35

if.then35:                                        ; preds = %if.end32
  %cmp37.not = icmp eq ptr %66, %tag_ops.0
  br i1 %cmp37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.20) #15
  tail call void @dsa_tag_driver_put(ptr noundef %tag_ops.0) #12
  br label %cleanup

if.end43:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dsa_tag_driver_put(ptr noundef %tag_ops.0) #12
  br label %if.end46

if.else44:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %tag_ops33 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %tag_ops.0, ptr %tag_ops33, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.end43
  %70 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %master, ptr %dp, align 4
  %type = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 6
  %71 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %type, align 4
  %72 = ptrtoint ptr %tag_ops33 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tag_ops33, align 4
  tail call void @dsa_port_set_tag_protocol(ptr noundef %dp, ptr noundef %73) #12
  %dst48 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 2
  %74 = ptrtoint ptr %dst48 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %3, ptr %dst48, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.end41, %do.end29, %if.then22.cleanup_crit_edge, %do.end14, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %62, %do.end29 ], [ -22, %do.end41 ], [ 0, %if.end46 ], [ -22, %do.end14 ], [ -517, %if.then22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_find_tagger_by_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_tag_driver_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_driver_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_set_tag_protocol(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dsa_slave_dev_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_dev_to_net_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsa_tree_teardown_switches(ptr noundef readonly %dst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst, i32 0, i32 1
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn10 = load ptr, ptr %ports, align 4
  %cmp.not11 = icmp eq ptr %.pn10, %ports
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %dsa_switch_teardown.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn12 = phi ptr [ %.pn, %dsa_switch_teardown.exit.for.body_crit_edge ], [ %.pn10, %entry.for.body_crit_edge ]
  %ds = getelementptr i8, ptr %.pn12, i32 -432
  %1 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ds, align 4
  %setup.i = getelementptr inbounds %struct.dsa_switch, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %setup.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load.i = load i16, ptr %setup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %for.body.dsa_switch_teardown.exit_crit_edge, label %if.end.i

for.body.dsa_switch_teardown.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_switch_teardown.exit

if.end.i:                                         ; preds = %for.body
  %devlink.i = getelementptr inbounds %struct.dsa_switch, ptr %2, i32 0, i32 14
  %4 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devlink.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @devlink_unregister(ptr noundef nonnull %5) #12
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %slave_mii_bus.i = getelementptr inbounds %struct.dsa_switch, ptr %2, i32 0, i32 10
  %6 = ptrtoint ptr %slave_mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slave_mii_bus.i, align 4
  %tobool5.not.i = icmp eq ptr %7, null
  br i1 %tobool5.not.i, label %if.end4.i.if.end11.i_crit_edge, label %land.lhs.true.i

if.end4.i.if.end11.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %ops.i = getelementptr inbounds %struct.dsa_switch, ptr %2, i32 0, i32 8
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %phy_read.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %phy_read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_read.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end11.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mdiobus_unregister(ptr noundef nonnull %7) #12
  %12 = ptrtoint ptr %slave_mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slave_mii_bus.i, align 4
  tail call void @mdiobus_free(ptr noundef %13) #12
  %14 = ptrtoint ptr %slave_mii_bus.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %slave_mii_bus.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %land.lhs.true.i.if.end11.i_crit_edge, %if.end4.i.if.end11.i_crit_edge
  %ops12.i = getelementptr inbounds %struct.dsa_switch, ptr %2, i32 0, i32 8
  %15 = ptrtoint ptr %ops12.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops12.i, align 4
  %teardown.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %teardown.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %teardown.i, align 4
  %tobool13.not.i = icmp eq ptr %18, null
  br i1 %tobool13.not.i, label %if.end11.i.if.end17.i_crit_edge, label %if.then14.i

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %18(ptr noundef %2) #12
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end17.i_crit_edge
  tail call void @dsa_switch_unregister_notifier(ptr noundef %2) #12
  %19 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %devlink.i, align 4
  %tobool19.not.i = icmp eq ptr %20, null
  br i1 %tobool19.not.i, label %if.end17.i.if.end34.i_crit_edge, label %if.then20.i

if.end17.i.if.end34.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then20.i:                                      ; preds = %if.end17.i
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %2, i32 0, i32 1
  %21 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dst.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn60.i = load ptr, ptr %ports.i, align 4
  %cmp.not62.i = icmp eq ptr %.pn60.i, %ports.i
  br i1 %cmp.not62.i, label %if.then20.i.for.end.i_crit_edge, label %if.then20.i.for.body.i_crit_edge

if.then20.i.for.body.i_crit_edge:                 ; preds = %if.then20.i
  br label %for.body.i

if.then20.i.for.end.i_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then20.i.for.body.i_crit_edge
  %.pn63.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn60.i, %if.then20.i.for.body.i_crit_edge ]
  %ds23.i = getelementptr i8, ptr %.pn63.i, i32 -432
  %24 = ptrtoint ptr %ds23.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ds23.i, align 4
  %cmp24.i = icmp eq ptr %25, %2
  br i1 %cmp24.i, label %if.then25.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then25.i:                                      ; preds = %for.body.i
  %devlink_port_setup.i.i = getelementptr i8, ptr %.pn63.i, i32 -405
  %26 = ptrtoint ptr %devlink_port_setup.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i.i = load i8, ptr %devlink_port_setup.i.i, align 1
  %27 = and i8 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i, label %if.then25.i.dsa_port_devlink_teardown.exit.i_crit_edge, label %if.then.i.i

if.then25.i.dsa_port_devlink_teardown.exit.i_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_port_devlink_teardown.exit.i

if.then.i.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  %devlink_port.i.i = getelementptr i8, ptr %.pn63.i, i32 -392
  tail call void @devlink_port_unregister(ptr noundef %devlink_port.i.i) #12
  br label %dsa_port_devlink_teardown.exit.i

dsa_port_devlink_teardown.exit.i:                 ; preds = %if.then.i.i, %if.then25.i.dsa_port_devlink_teardown.exit.i_crit_edge
  %28 = ptrtoint ptr %devlink_port_setup.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load2.i.i = load i8, ptr %devlink_port_setup.i.i, align 1
  %bf.clear3.i.i = and i8 %bf.load2.i.i, -17
  store i8 %bf.clear3.i.i, ptr %devlink_port_setup.i.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %dsa_port_devlink_teardown.exit.i, %for.body.i.for.inc.i_crit_edge
  %29 = ptrtoint ptr %.pn63.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i = load ptr, ptr %.pn63.i, align 4
  %30 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dst.i, align 4
  %ports22.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %31, i32 0, i32 1
  %cmp.not.i = icmp eq ptr %.pn.i, %ports22.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then20.i.for.end.i_crit_edge
  %32 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %devlink.i, align 4
  tail call void @devlink_free(ptr noundef %33) #12
  %34 = ptrtoint ptr %devlink.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %devlink.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %for.end.i, %if.end17.i.if.end34.i_crit_edge
  %35 = ptrtoint ptr %setup.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load36.i = load i16, ptr %setup.i, align 4
  %bf.clear.i = and i16 %bf.load36.i, 32767
  store i16 %bf.clear.i, ptr %setup.i, align 4
  br label %dsa_switch_teardown.exit

dsa_switch_teardown.exit:                         ; preds = %if.end34.i, %for.body.dsa_switch_teardown.exit_crit_edge
  %36 = ptrtoint ptr %.pn12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn = load ptr, ptr %.pn12, align 4
  %cmp.not = icmp eq ptr %.pn, %ports
  br i1 %cmp.not, label %dsa_switch_teardown.exit.for.end_crit_edge, label %dsa_switch_teardown.exit.for.body_crit_edge

dsa_switch_teardown.exit.for.body_crit_edge:      ; preds = %dsa_switch_teardown.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

dsa_switch_teardown.exit.for.end_crit_edge:       ; preds = %dsa_switch_teardown.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %dsa_switch_teardown.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_switch_register_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_slave_mii_bus_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_unregister_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_alloc_ns(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_devlink_sb_pool_get(ptr noundef %dl, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr noundef %pool_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %dl) #12
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %devlink_sb_pool_get = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 81
  %4 = ptrtoint ptr %devlink_sb_pool_get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devlink_sb_pool_get, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 %5(ptr noundef %1, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr noundef %pool_info) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_devlink_sb_pool_set(ptr noundef %dl, i32 noundef %sb_index, i16 noundef zeroext %pool_index, i32 noundef %size, i32 noundef %threshold_type, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %dl) #12
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %devlink_sb_pool_set = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 82
  %4 = ptrtoint ptr %devlink_sb_pool_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devlink_sb_pool_set, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 %5(ptr noundef %1, i32 noundef %sb_index, i16 noundef zeroext %pool_index, i32 noundef %size, i32 noundef %threshold_type, ptr noundef %extack) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_devlink_sb_port_pool_get(ptr nocapture noundef readonly %dlp, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr noundef %p_threshold) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink.i = getelementptr inbounds %struct.devlink_port, ptr %dlp, i32 0, i32 3
  %0 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink.i, align 4
  %call.i = tail call ptr @devlink_priv(ptr noundef %1) #12
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %devlink_sb_port_pool_get = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 83
  %6 = ptrtoint ptr %devlink_sb_port_pool_get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devlink_sb_port_pool_get, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %index.i = getelementptr inbounds %struct.devlink_port, ptr %dlp, i32 0, i32 4
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %call4 = tail call i32 %7(ptr noundef %3, i32 noundef %9, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr noundef %p_threshold) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_devlink_sb_port_pool_set(ptr nocapture noundef readonly %dlp, i32 noundef %sb_index, i16 noundef zeroext %pool_index, i32 noundef %threshold, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink.i = getelementptr inbounds %struct.devlink_port, ptr %dlp, i32 0, i32 3
  %0 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink.i, align 4
  %call.i = tail call ptr @devlink_priv(ptr noundef %1) #12
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %devlink_sb_port_pool_set = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 84
  %6 = ptrtoint ptr %devlink_sb_port_pool_set to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devlink_sb_port_pool_set, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %index.i = getelementptr inbounds %struct.devlink_port, ptr %dlp, i32 0, i32 4
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %call4 = tail call i32 %7(ptr noundef %3, i32 noundef %9, i32 noundef %sb_index, i16 noundef zeroext %pool_index, i32 noundef %threshold, ptr noundef %extack) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_devlink_sb_tc_pool_bind_get(ptr nocapture noundef readonly %dlp, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, ptr noundef %p_pool_index, ptr noundef %p_threshold) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink.i = getelementptr inbounds %struct.devlink_port, ptr %dlp, i32 0, i32 3
  %0 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink.i, align 4
  %call.i = tail call ptr @devlink_priv(ptr noundef %1) #12
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %devlink_sb_tc_pool_bind_get = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 85
  %6 = ptrtoint ptr %devlink_sb_tc_pool_bind_get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devlink_sb_tc_pool_bind_get, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %index.i = getelementptr inbounds %struct.devlink_port, ptr %dlp, i32 0, i32 4
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %call4 = tail call i32 %7(ptr noundef %3, i32 noundef %9, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, ptr noundef %p_pool_index, ptr noundef %p_threshold) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_devlink_sb_tc_pool_bind_set(ptr nocapture noundef readonly %dlp, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, i16 noundef zeroext %pool_index, i32 noundef %threshold, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink.i = getelementptr inbounds %struct.devlink_port, ptr %dlp, i32 0, i32 3
  %0 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink.i, align 4
  %call.i = tail call ptr @devlink_priv(ptr noundef %1) #12
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %devlink_sb_tc_pool_bind_set = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 86
  %6 = ptrtoint ptr %devlink_sb_tc_pool_bind_set to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devlink_sb_tc_pool_bind_set, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %index.i = getelementptr inbounds %struct.devlink_port, ptr %dlp, i32 0, i32 4
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %call4 = tail call i32 %7(ptr noundef %3, i32 noundef %9, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, i16 noundef zeroext %pool_index, i32 noundef %threshold, ptr noundef %extack) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_devlink_sb_occ_snapshot(ptr noundef %dl, i32 noundef %sb_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %dl) #12
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %devlink_sb_occ_snapshot = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 87
  %4 = ptrtoint ptr %devlink_sb_occ_snapshot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devlink_sb_occ_snapshot, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 %5(ptr noundef %1, i32 noundef %sb_index) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_devlink_sb_occ_max_clear(ptr noundef %dl, i32 noundef %sb_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %dl) #12
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %devlink_sb_occ_max_clear = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 88
  %4 = ptrtoint ptr %devlink_sb_occ_max_clear to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devlink_sb_occ_max_clear, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 %5(ptr noundef %1, i32 noundef %sb_index) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_devlink_sb_occ_port_pool_get(ptr nocapture noundef readonly %dlp, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr noundef %p_cur, ptr noundef %p_max) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink.i = getelementptr inbounds %struct.devlink_port, ptr %dlp, i32 0, i32 3
  %0 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink.i, align 4
  %call.i = tail call ptr @devlink_priv(ptr noundef %1) #12
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %devlink_sb_occ_port_pool_get = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 89
  %6 = ptrtoint ptr %devlink_sb_occ_port_pool_get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devlink_sb_occ_port_pool_get, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %index.i = getelementptr inbounds %struct.devlink_port, ptr %dlp, i32 0, i32 4
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %call4 = tail call i32 %7(ptr noundef %3, i32 noundef %9, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr noundef %p_cur, ptr noundef %p_max) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_devlink_sb_occ_tc_port_bind_get(ptr nocapture noundef readonly %dlp, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, ptr noundef %p_cur, ptr noundef %p_max) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink.i = getelementptr inbounds %struct.devlink_port, ptr %dlp, i32 0, i32 3
  %0 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink.i, align 4
  %call.i = tail call ptr @devlink_priv(ptr noundef %1) #12
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %devlink_sb_occ_tc_port_bind_get = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 90
  %6 = ptrtoint ptr %devlink_sb_occ_tc_port_bind_get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devlink_sb_occ_tc_port_bind_get, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %index.i = getelementptr inbounds %struct.devlink_port, ptr %dlp, i32 0, i32 4
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %call4 = tail call i32 %7(ptr noundef %3, i32 noundef %9, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, ptr noundef %p_cur, ptr noundef %p_max) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_devlink_info_get(ptr noundef %dl, ptr noundef %req, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %dl) #12
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %devlink_info_get = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 80
  %4 = ptrtoint ptr %devlink_info_get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devlink_info_get, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 %5(ptr noundef %1, ptr noundef %req, ptr noundef %extack) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_attrs_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_port_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_master_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dsa_port_setup(ptr noundef %dp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink_port = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 15
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %setup = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 11
  %2 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %setup, align 1
  %3 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  %addr_lists_lock = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 23
  tail call void @__mutex_init(ptr noundef %addr_lists_lock, ptr noundef nonnull @.str.46, ptr noundef nonnull @dsa_port_setup.__key) #12
  %fdbs = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 24
  %4 = ptrtoint ptr %fdbs to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %fdbs, ptr %fdbs, align 4
  %prev.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 24, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fdbs, ptr %prev.i, align 4
  %mdbs = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 25
  %6 = ptrtoint ptr %mdbs to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %mdbs, ptr %mdbs, align 4
  %prev.i100 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 25, i32 1
  %7 = ptrtoint ptr %prev.i100 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mdbs, ptr %prev.i100, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %port_setup = getelementptr inbounds %struct.dsa_switch_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %port_setup to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_setup, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %do.body.if.end9_crit_edge, label %if.then3

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then3:                                         ; preds = %do.body
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %call = tail call i32 %11(ptr noundef %1, i32 noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then3.if.end9_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.end9:                                          ; preds = %if.then3.if.end9_crit_edge, %do.body.if.end9_crit_edge
  %type = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 6
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %15, label %if.end9.if.end52_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb19
    i32 3, label %sw.bb28
  ]

if.end9.if.end52_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dsa_port_disable(ptr noundef %dp) #12
  br label %if.end52

sw.bb10:                                          ; preds = %if.end9
  %call11 = tail call i32 @dsa_port_link_register_of(ptr noundef %dp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %sw.bb10.sw.epilog_crit_edge, label %sw.bb10.if.then44_crit_edge

sw.bb10.if.then44_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then44

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end9
  %call20 = tail call i32 @dsa_port_link_register_of(ptr noundef %dp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %sw.bb19.sw.epilog_crit_edge, label %sw.bb19.if.then44_crit_edge

sw.bb19.if.then44_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then44

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end9
  %dn = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 12
  %17 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dn, align 4
  %mac = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 9
  %call29 = tail call i32 @of_get_mac_address(ptr noundef %18, ptr noundef %mac) #12
  %call30 = tail call i32 @dsa_slave_create(ptr noundef %dp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %sw.bb28.if.then44_crit_edge

sw.bb28.if.then44_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then44

if.end33:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dp, align 4
  tail call void @devlink_port_type_eth_set(ptr noundef %devlink_port, ptr noundef %20) #12
  br label %if.end52

sw.epilog:                                        ; preds = %sw.bb19.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge
  %call24 = tail call i32 @dsa_port_enable(ptr noundef %dp, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool34.not = icmp eq i32 %call24, 0
  br i1 %tobool34.not, label %sw.epilog.if.end52_crit_edge, label %if.then41

sw.epilog.if.end52_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then41:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dsa_port_link_unregister_of(ptr noundef %dp) #12
  br label %if.then44

if.then44:                                        ; preds = %if.then41, %sw.bb28.if.then44_crit_edge, %sw.bb19.if.then44_crit_edge, %sw.bb10.if.then44_crit_edge
  %err.1108116117 = phi i32 [ %call24, %if.then41 ], [ %call11, %sw.bb10.if.then44_crit_edge ], [ %call20, %sw.bb19.if.then44_crit_edge ], [ %call30, %sw.bb28.if.then44_crit_edge ]
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %port_teardown = getelementptr inbounds %struct.dsa_switch_ops, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %port_teardown to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port_teardown, align 4
  %tobool46.not = icmp eq ptr %24, null
  br i1 %tobool46.not, label %if.then44.cleanup_crit_edge, label %if.then47

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %index50 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %25 = ptrtoint ptr %index50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index50, align 4
  tail call void %24(ptr noundef %1, i32 noundef %26) #12
  br label %cleanup

if.end52:                                         ; preds = %sw.epilog.if.end52_crit_edge, %if.end33, %sw.bb, %if.end9.if.end52_crit_edge
  %27 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load54 = load i8, ptr %setup, align 1
  %bf.set = or i8 %bf.load54, 8
  store i8 %bf.set, ptr %setup, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.then47, %if.then44.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end52 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then3.cleanup_crit_edge ], [ %err.1108116117, %if.then47 ], [ %err.1108116117, %if.then44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_link_register_of(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_slave_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_type_eth_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_link_unregister_of(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsa_port_teardown(ptr noundef %dp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink_port = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 15
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %setup = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 11
  %2 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %setup, align 1
  %3 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %port_teardown = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %port_teardown to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_teardown, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  tail call void %7(ptr noundef %1, i32 noundef %9) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  tail call void @devlink_port_type_clear(ptr noundef %devlink_port) #12
  %type = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 6
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %11, label %if.end6.sw.epilog_crit_edge [
    i32 3, label %sw.bb8
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dsa_port_disable(ptr noundef %dp) #12
  tail call void @dsa_port_link_unregister_of(ptr noundef %dp) #12
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dsa_port_disable(ptr noundef %dp) #12
  tail call void @dsa_port_link_unregister_of(ptr noundef %dp) #12
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end6
  %13 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dp, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %sw.bb8.sw.epilog_crit_edge, label %if.then10

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then10:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %dp, align 4
  tail call void @dsa_slave_destroy(ptr noundef nonnull %14) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then10, %sw.bb8.sw.epilog_crit_edge, %sw.bb7, %sw.bb, %if.end6.sw.epilog_crit_edge
  %fdbs = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 24
  %16 = ptrtoint ptr %fdbs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fdbs, align 4
  %cmp.not93 = icmp eq ptr %17, %fdbs
  br i1 %cmp.not93, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %.pn.in94 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %17, %sw.epilog.for.body_crit_edge ]
  %a.0 = getelementptr i8, ptr %.pn.in94, i32 -12
  %18 = ptrtoint ptr %.pn.in94 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn.in94, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in94) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in94, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %.pn.in94 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.pn.in94, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %25 = ptrtoint ptr %.pn.in94 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in94, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in94, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %a.0) #12
  %cmp.not = icmp eq ptr %.pn, %fdbs
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %mdbs = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 25
  %27 = ptrtoint ptr %mdbs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdbs, align 4
  %cmp37.not96 = icmp eq ptr %28, %mdbs
  br i1 %cmp37.not96, label %for.end.for.end47_crit_edge, label %for.end.for.body39_crit_edge

for.end.for.body39_crit_edge:                     ; preds = %for.end
  br label %for.body39

for.end.for.end47_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end47

for.body39:                                       ; preds = %list_del.exit92.for.body39_crit_edge, %for.end.for.body39_crit_edge
  %.pn84.in97 = phi ptr [ %.pn84, %list_del.exit92.for.body39_crit_edge ], [ %28, %for.end.for.body39_crit_edge ]
  %a.1 = getelementptr i8, ptr %.pn84.in97, i32 -12
  %29 = ptrtoint ptr %.pn84.in97 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn84 = load ptr, ptr %.pn84.in97, align 4
  %call.i.i87 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn84.in97) #12
  br i1 %call.i.i87, label %if.end.i.i90, label %for.body39.list_del.exit92_crit_edge

for.body39.list_del.exit92_crit_edge:             ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit92

if.end.i.i90:                                     ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i88 = getelementptr inbounds %struct.list_head, ptr %.pn84.in97, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i88 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i88, align 4
  %32 = ptrtoint ptr %.pn84.in97 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %.pn84.in97, align 4
  %prev1.i.i.i89 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i89, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit92

list_del.exit92:                                  ; preds = %if.end.i.i90, %for.body39.list_del.exit92_crit_edge
  %36 = ptrtoint ptr %.pn84.in97 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn84.in97, align 4
  %prev.i91 = getelementptr inbounds %struct.list_head, ptr %.pn84.in97, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i91 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i91, align 4
  tail call void @kfree(ptr noundef %a.1) #12
  %cmp37.not = icmp eq ptr %.pn84, %mdbs
  br i1 %cmp37.not, label %list_del.exit92.for.end47_crit_edge, label %list_del.exit92.for.body39_crit_edge

list_del.exit92.for.body39_crit_edge:             ; preds = %list_del.exit92
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body39

list_del.exit92.for.end47_crit_edge:              ; preds = %list_del.exit92
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end47

for.end47:                                        ; preds = %list_del.exit92.for.end47_crit_edge, %for.end.for.end47_crit_edge
  %38 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load49 = load i8, ptr %setup, align 1
  %bf.clear50 = and i8 %bf.load49, -9
  store i8 %bf.clear50, ptr %setup, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end47, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_flush_workqueue() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_type_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_slave_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_master_teardown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !35, !37, !39, !40, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104}
!llvm.named.register.sp = !{!105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @dsa_tree_list, !1, !"dsa_tree_list", i1 false, i1 false}
!1 = !{!"../net/dsa/dsa2.c", i32 22, i32 1}
!2 = !{ptr @__ksymtab_dsa_switch_find, !3, !"__ksymtab_dsa_switch_find", i1 false, i1 false}
!3 = !{!"../net/dsa/dsa2.c", i32 214, i32 1}
!4 = !{ptr @__ksymtab_dsa_register_switch, !5, !"__ksymtab_dsa_register_switch", i1 false, i1 false}
!5 = !{!"../net/dsa/dsa2.c", i32 1695, i32 1}
!6 = !{ptr @__ksymtab_dsa_unregister_switch, !7, !"__ksymtab_dsa_unregister_switch", i1 false, i1 false}
!7 = !{!"../net/dsa/dsa2.c", i32 1712, i32 1}
!8 = !{ptr @__ksymtab_dsa_switch_shutdown, !9, !"__ksymtab_dsa_switch_shutdown", i1 false, i1 false}
!9 = !{!"../net/dsa/dsa2.c", i32 1743, i32 1}
!10 = !{ptr @dsa_fwd_offloading_bridges, !11, !"dsa_fwd_offloading_bridges", i1 false, i1 false}
!11 = !{!"../net/dsa/dsa2.c", i32 25, i32 22}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/dsa/dsa2.c", i32 21, i32 8}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @dsa2_mutex, !13, !"dsa2_mutex", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/dsa/dsa2.c", i32 1507, i32 47}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/dsa/dsa2.c", i32 1518, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @dsa_switch_parse_member_of._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @dsa_switch_parse_member_of._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/dsa/dsa2.c", i32 1461, i32 35}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/dsa/dsa2.c", i32 1464, i32 36}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/dsa/dsa2.c", i32 1466, i32 4}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @dsa_switch_parse_ports_of._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @dsa_switch_parse_ports_of._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/dsa/dsa2.c", i32 1472, i32 36}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/dsa/dsa2.c", i32 1479, i32 4}
!39 = !{ptr @dsa_switch_parse_ports_of._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @dsa_switch_parse_ports_of._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/dsa/dsa2.c", i32 1428, i32 54}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/dsa/dsa2.c", i32 1429, i32 41}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/dsa/dsa2.c", i32 1430, i32 40}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/dsa/dsa2.c", i32 1443, i32 39}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/dsa/dsa2.c", i32 1360, i32 4}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @dsa_port_parse_cpu._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @dsa_port_parse_cpu._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/dsa/dsa2.c", i32 1371, i32 4}
!56 = !{ptr @dsa_port_parse_cpu._entry.22, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @dsa_port_parse_cpu._entry_ptr.24, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/dsa/dsa2.c", i32 1384, i32 3}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @dsa_port_parse_cpu._entry.25, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @dsa_port_parse_cpu._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @dsa_port_parse_cpu._entry.29, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../net/dsa/dsa2.c", i32 1390, i32 4}
!65 = !{ptr @dsa_port_parse_cpu._entry_ptr.30, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/dsa/dsa2.c", i32 1307, i32 10}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/dsa/dsa2.c", i32 1562, i32 20}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/dsa/dsa2.c", i32 1574, i32 20}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/dsa/dsa2.c", i32 1123, i32 3}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @dsa_tree_setup._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @dsa_tree_setup._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/dsa/dsa2.c", i32 1154, i32 2}
!79 = !{ptr @dsa_tree_setup._entry.36, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @dsa_tree_setup._entry_ptr.38, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/dsa/dsa2.c", i32 392, i32 3}
!83 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @dsa_tree_setup_default_cpu._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @dsa_tree_setup_default_cpu._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @dsa_devlink_ops, !87, !"dsa_devlink_ops", i1 false, i1 false}
!87 = !{!"../net/dsa/dsa2.c", i32 806, i32 33}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/dsa/dsa2.c", i32 836, i32 4}
!90 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @dsa_switch_setup_tag_protocol._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @dsa_switch_setup_tag_protocol._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/dsa/dsa2.c", i32 852, i32 4}
!95 = !{ptr @dsa_switch_setup_tag_protocol._entry.43, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @dsa_switch_setup_tag_protocol._entry_ptr.45, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @dsa_port_setup.__key, !98, !"__key", i1 false, i1 false}
!98 = !{!"../net/dsa/dsa2.c", i32 454, i32 2}
!99 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/dsa/dsa2.c", i32 1192, i32 2}
!102 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @dsa_tree_teardown._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @dsa_tree_teardown._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{!"sp"}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{!"auto-init"}
!116 = !{i64 895808, i64 895869}
!117 = !{i64 898540}
!118 = !{!"branch_weights", i32 1, i32 2000}
!119 = !{i64 898825}
!120 = !{i64 2148503080, i64 2148503112, i64 2148503141, i64 2148503175, i64 2148503206, i64 2148503229}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{i8 0, i8 2}
!123 = !{i64 2148591081}
!124 = !{i64 2148505545, i64 2148505577, i64 2148505606, i64 2148505640, i64 2148505671, i64 2148505694}
!125 = !{i64 2149637051}
