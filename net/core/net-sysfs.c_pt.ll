; ModuleID = '/llk/IR_all_yes/net/core/net-sysfs.c_pt.bc'
source_filename = "../net/core/net-sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+net_ns_type_operations\22, \22a\22\09"
module asm "\09.weak\09__crc_net_ns_type_operations\09\09\09\09"
module asm "\09.long\09__crc_net_ns_type_operations\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_ns_type_operations:\09\09\09\09\09"
module asm "\09.asciz \09\22net_ns_type_operations\22\09\09\09\09\09"
module asm "__kstrtabns_net_ns_type_operations:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+of_find_net_device_by_node\22, \22a\22\09"
module asm "\09.weak\09__crc_of_find_net_device_by_node\09\09\09\09"
module asm "\09.long\09__crc_of_find_net_device_by_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_find_net_device_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22of_find_net_device_by_node\22\09\09\09\09\09"
module asm "__kstrtabns_of_find_net_device_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+netdev_class_create_file_ns\22, \22a\22\09"
module asm "\09.weak\09__crc_netdev_class_create_file_ns\09\09\09\09"
module asm "\09.long\09__crc_netdev_class_create_file_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netdev_class_create_file_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22netdev_class_create_file_ns\22\09\09\09\09\09"
module asm "__kstrtabns_netdev_class_create_file_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+netdev_class_remove_file_ns\22, \22a\22\09"
module asm "\09.weak\09__crc_netdev_class_remove_file_ns\09\09\09\09"
module asm "\09.long\09__crc_netdev_class_remove_file_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netdev_class_remove_file_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22netdev_class_remove_file_ns\22\09\09\09\09\09"
module asm "__kstrtabns_netdev_class_remove_file_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_ns_type_operations = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.rx_queue_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.80 }
%union.anon.80 = type { i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.netdev_queue_attribute = type { %struct.attribute, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
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
%struct.netdev_rx_queue = type { %struct.xdp_rxq_info, ptr, ptr, %struct.kobject, ptr, ptr, ptr, [100 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.70, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.rps_map = type { i32, %struct.callback_head, [0 x i16] }
%struct.rps_dev_flow_table = type { i32, %struct.callback_head, [0 x %struct.rps_dev_flow] }
%struct.rps_dev_flow = type { i16, i16, i32 }
%struct.xps_dev_maps = type { %struct.callback_head, i32, i16, [0 x ptr] }
%struct.xps_map = type { i32, i32, %struct.callback_head, [0 x i16] }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.141, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.141 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/core/net-sysfs.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"New queues can't be registered after device unregistration.\00", [36 x i8] zeroinitializer }, align 32
@dql_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.27, ptr null, ptr null, ptr @dql_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@net_ns_type_operations = dso_local constant { %struct.kobj_ns_type_operations, [40 x i8] } { %struct.kobj_ns_type_operations { i32 1, ptr @net_current_may_mount, ptr @net_grab_current_ns, ptr @net_netlink_ns, ptr @net_initial_ns, ptr @net_drop_ns }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_net_ns_type_operations = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_ns_type_operations = external dso_local constant [0 x i8], align 1
@__ksymtab_net_ns_type_operations = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_ns_type_operations to i32), ptr @__kstrtab_net_ns_type_operations, ptr @__kstrtabns_net_ns_type_operations }, section "___ksymtab_gpl+net_ns_type_operations", align 4
@net_class = internal global %struct.class { ptr @.str.36, ptr null, ptr null, ptr @net_class_groups, ptr null, ptr @netdev_uevent, ptr null, ptr null, ptr @netdev_release, ptr null, ptr @net_ns_type_operations, ptr @net_namespace, ptr @net_get_ownership, ptr null, ptr null }, section ".data..ro_after_init", align 4
@__kstrtab_of_find_net_device_by_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_find_net_device_by_node = external dso_local constant [0 x i8], align 1
@__ksymtab_of_find_net_device_by_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_find_net_device_by_node to i32), ptr @__kstrtab_of_find_net_device_by_node, ptr @__kstrtabns_of_find_net_device_by_node }, section "___ksymtab+of_find_net_device_by_node", align 4
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@netstat_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.80, ptr null, ptr null, ptr @netstat_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@wireless_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.105, ptr null, ptr null, ptr @wireless_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_netdev_class_create_file_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_netdev_class_create_file_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_netdev_class_create_file_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netdev_class_create_file_ns to i32), ptr @__kstrtab_netdev_class_create_file_ns, ptr @__kstrtabns_netdev_class_create_file_ns }, section "___ksymtab+netdev_class_create_file_ns", align 4
@__kstrtab_netdev_class_remove_file_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_netdev_class_remove_file_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_netdev_class_remove_file_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netdev_class_remove_file_ns to i32), ptr @__kstrtab_netdev_class_remove_file_ns, ptr @__kstrtabns_netdev_class_remove_file_ns }, section "___ksymtab+netdev_class_remove_file_ns", align 4
@netdev_kobject_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rx_queue_ktype = internal global %struct.kobj_type { ptr @rx_queue_release, ptr @rx_queue_sysfs_ops, ptr null, ptr @rx_queue_default_groups, ptr null, ptr @rx_queue_namespace, ptr @rx_queue_get_ownership }, section ".data..ro_after_init", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rx-%u\00", [26 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rx_queue_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @rx_queue_attr_show, ptr @rx_queue_attr_store }, [24 x i8] zeroinitializer }, align 32
@rx_queue_default_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @rx_queue_default_group, ptr null], [24 x i8] zeroinitializer }, align 32
@rx_queue_default_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rx_queue_default_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rx_queue_default_attrs = internal global [3 x ptr] [ptr @rps_cpus_attribute, ptr @rps_dev_flow_table_cnt_attribute, ptr null], section ".data..ro_after_init", align 4
@rps_cpus_attribute = internal global %struct.rx_queue_attribute { %struct.attribute { ptr @.str.5, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_rps_map, ptr @store_rps_map }, section ".data..ro_after_init", align 4
@rps_dev_flow_table_cnt_attribute = internal global %struct.rx_queue_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_rps_dev_flow_table_cnt, ptr @store_rps_dev_flow_table_cnt }, section ".data..ro_after_init", align 4
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rps_cpus\00", [23 x i8] zeroinitializer }, align 32
@show_rps_map.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*pb\0A\00", [26 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@store_rps_map.rps_map_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @store_rps_map.rps_map_mutex, i64 52), ptr getelementptr (i8, ptr @store_rps_map.rps_map_mutex, i64 52) }, ptr @store_rps_map.rps_map_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rps_map_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rps_map_mutex\00", [18 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@store_rps_map.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@rps_needed = external dso_local global %struct.static_key_false, align 4
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rps_flow_cnt\00", [19 x i8] zeroinitializer }, align 32
@show_rps_dev_flow_table_cnt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@store_rps_dev_flow_table_cnt.rps_dev_flow_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.12 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rps_dev_flow_lock\00", [46 x i8] zeroinitializer }, align 32
@store_rps_dev_flow_table_cnt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netdev_queue_ktype = internal global %struct.kobj_type { ptr @netdev_queue_release, ptr @netdev_queue_sysfs_ops, ptr null, ptr @netdev_queue_default_groups, ptr null, ptr @netdev_queue_namespace, ptr @netdev_queue_get_ownership }, section ".data..ro_after_init", align 4
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tx-%u\00", [26 x i8] zeroinitializer }, align 32
@netdev_queue_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @netdev_queue_attr_show, ptr @netdev_queue_attr_store }, [24 x i8] zeroinitializer }, align 32
@netdev_queue_default_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @netdev_queue_default_group, ptr null], [24 x i8] zeroinitializer }, align 32
@netdev_queue_default_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @netdev_queue_default_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@netdev_queue_default_attrs = internal global [6 x ptr] [ptr @queue_trans_timeout, ptr @queue_traffic_class, ptr @xps_cpus_attribute, ptr @xps_rxqs_attribute, ptr @queue_tx_maxrate, ptr null], section ".data..ro_after_init", align 4
@queue_trans_timeout = internal global %struct.netdev_queue_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tx_timeout_show, ptr null }, section ".data..ro_after_init", align 4
@queue_traffic_class = internal global %struct.netdev_queue_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @traffic_class_show, ptr null }, section ".data..ro_after_init", align 4
@xps_cpus_attribute = internal global %struct.netdev_queue_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @xps_cpus_show, ptr @xps_cpus_store }, section ".data..ro_after_init", align 4
@xps_rxqs_attribute = internal global %struct.netdev_queue_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @xps_rxqs_show, ptr @xps_rxqs_store }, section ".data..ro_after_init", align 4
@queue_tx_maxrate = internal global %struct.netdev_queue_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tx_maxrate_show, ptr @tx_maxrate_store }, section ".data..ro_after_init", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_timeout\00", [21 x i8] zeroinitializer }, align 32
@fmt_ulong = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"traffic_class\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d%d\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xps_cpus\00", [23 x i8] zeroinitializer }, align 32
@xps_queue_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xps_queue_show.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xps_rxqs\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_maxrate\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"byte_queue_limits\00", [46 x i8] zeroinitializer }, align 32
@dql_attrs = internal global [6 x ptr] [ptr @bql_limit_attribute, ptr @bql_limit_max_attribute, ptr @bql_limit_min_attribute, ptr @bql_hold_time_attribute, ptr @bql_inflight_attribute, ptr null], section ".data..ro_after_init", align 4
@bql_limit_attribute = internal global %struct.netdev_queue_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bql_show_limit, ptr @bql_set_limit }, section ".data..ro_after_init", align 4
@bql_limit_max_attribute = internal global %struct.netdev_queue_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bql_show_limit_max, ptr @bql_set_limit_max }, section ".data..ro_after_init", align 4
@bql_limit_min_attribute = internal global %struct.netdev_queue_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bql_show_limit_min, ptr @bql_set_limit_min }, section ".data..ro_after_init", align 4
@bql_hold_time_attribute = internal global %struct.netdev_queue_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bql_show_hold_time, ptr @bql_set_hold_time }, section ".data..ro_after_init", align 4
@bql_inflight_attribute = internal global %struct.netdev_queue_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bql_show_inflight, ptr null }, section ".data..ro_after_init", align 4
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"limit\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"max\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"max\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"limit_max\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"limit_min\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hold_time\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inflight\00", [23 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"net\00", [28 x i8] zeroinitializer }, align 32
@net_class_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @net_class_group, ptr null], [24 x i8] zeroinitializer }, align 32
@net_class_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @net_class_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@net_class_attrs = internal global [33 x ptr] [ptr @dev_attr_netdev_group, ptr @dev_attr_type, ptr @dev_attr_dev_id, ptr @dev_attr_dev_port, ptr @dev_attr_iflink, ptr @dev_attr_ifindex, ptr @dev_attr_name_assign_type, ptr @dev_attr_addr_assign_type, ptr @dev_attr_addr_len, ptr @dev_attr_link_mode, ptr @dev_attr_address, ptr @dev_attr_broadcast, ptr @dev_attr_speed, ptr @dev_attr_duplex, ptr @dev_attr_dormant, ptr @dev_attr_testing, ptr @dev_attr_operstate, ptr @dev_attr_carrier_changes, ptr @dev_attr_ifalias, ptr @dev_attr_carrier, ptr @dev_attr_mtu, ptr @dev_attr_flags, ptr @dev_attr_tx_queue_len, ptr @dev_attr_gro_flush_timeout, ptr @dev_attr_napi_defer_hard_irqs, ptr @dev_attr_phys_port_id, ptr @dev_attr_phys_port_name, ptr @dev_attr_phys_switch_id, ptr @dev_attr_proto_down, ptr @dev_attr_carrier_up_count, ptr @dev_attr_carrier_down_count, ptr @dev_attr_threaded, ptr null], section ".data..ro_after_init", align 4
@dev_attr_netdev_group = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @group_show, ptr @group_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dev_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dev_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dev_port = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dev_port_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_iflink = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iflink_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ifindex = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ifindex_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_name_assign_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_assign_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_addr_assign_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @addr_assign_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_addr_len = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @addr_len_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_link_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @link_mode_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_address = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @address_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_broadcast = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @broadcast_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_speed = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @speed_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_duplex = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @duplex_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dormant = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dormant_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_testing = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @testing_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_operstate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @operstate_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_carrier_changes = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @carrier_changes_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ifalias = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ifalias_show, ptr @ifalias_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_carrier = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @carrier_show, ptr @carrier_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mtu = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mtu_show, ptr @mtu_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_flags = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @flags_show, ptr @flags_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tx_queue_len = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tx_queue_len_show, ptr @tx_queue_len_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gro_flush_timeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gro_flush_timeout_show, ptr @gro_flush_timeout_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_napi_defer_hard_irqs = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @napi_defer_hard_irqs_show, ptr @napi_defer_hard_irqs_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_phys_port_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @phys_port_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_phys_port_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @phys_port_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_phys_switch_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @phys_switch_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_proto_down = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @proto_down_show, ptr @proto_down_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_carrier_up_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @carrier_up_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_carrier_down_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @carrier_down_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_threaded = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @threaded_show, ptr @threaded_store }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"netdev_group\00", [19 x i8] zeroinitializer }, align 32
@dev_base_lock = external dso_local global %struct.rwlock_t, align 4
@fmt_dec = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dev_id\00", [25 x i8] zeroinitializer }, align 32
@fmt_hex = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%#x\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_port\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iflink\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ifindex\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"name_assign_type\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"addr_assign_type\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"addr_len\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"link_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"address\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"broadcast\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"speed\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"duplex\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dormant\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"testing\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"operstate\00", [22 x i8] zeroinitializer }, align 32
@operstates = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.53, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.56, ptr @.str.55, ptr @.str.61], [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"notpresent\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lowerlayerdown\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"carrier_changes\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ifalias\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"carrier\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mtu\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_queue_len\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gro_flush_timeout\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"napi_defer_hard_irqs\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"phys_port_id\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%*phN\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"phys_port_name\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"phys_switch_id\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"proto_down\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"carrier_up_count\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"carrier_down_count\00", [45 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"threaded\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"INTERFACE=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IFINDEX=%d\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"statistics\00", [21 x i8] zeroinitializer }, align 32
@netstat_attrs = internal global [25 x ptr] [ptr @dev_attr_rx_packets, ptr @dev_attr_tx_packets, ptr @dev_attr_rx_bytes, ptr @dev_attr_tx_bytes, ptr @dev_attr_rx_errors, ptr @dev_attr_tx_errors, ptr @dev_attr_rx_dropped, ptr @dev_attr_tx_dropped, ptr @dev_attr_multicast, ptr @dev_attr_collisions, ptr @dev_attr_rx_length_errors, ptr @dev_attr_rx_over_errors, ptr @dev_attr_rx_crc_errors, ptr @dev_attr_rx_frame_errors, ptr @dev_attr_rx_fifo_errors, ptr @dev_attr_rx_missed_errors, ptr @dev_attr_tx_aborted_errors, ptr @dev_attr_tx_carrier_errors, ptr @dev_attr_tx_fifo_errors, ptr @dev_attr_tx_heartbeat_errors, ptr @dev_attr_tx_window_errors, ptr @dev_attr_rx_compressed, ptr @dev_attr_tx_compressed, ptr @dev_attr_rx_nohandler, ptr null], section ".data..ro_after_init", align 4
@dev_attr_rx_packets = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rx_packets_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tx_packets = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tx_packets_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rx_bytes = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rx_bytes_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tx_bytes = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tx_bytes_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rx_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rx_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tx_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tx_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rx_dropped = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rx_dropped_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tx_dropped = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tx_dropped_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_multicast = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @multicast_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_collisions = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @collisions_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rx_length_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rx_length_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rx_over_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rx_over_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rx_crc_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rx_crc_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rx_frame_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rx_frame_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rx_fifo_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rx_fifo_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rx_missed_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rx_missed_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tx_aborted_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tx_aborted_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tx_carrier_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tx_carrier_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tx_fifo_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tx_fifo_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tx_heartbeat_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tx_heartbeat_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tx_window_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tx_window_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rx_compressed = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rx_compressed_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tx_compressed = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tx_compressed_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rx_nohandler = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rx_nohandler_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_packets\00", [21 x i8] zeroinitializer }, align 32
@fmt_u64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_packets\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx_bytes\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_bytes\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rx_errors\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tx_errors\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_dropped\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_dropped\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"multicast\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"collisions\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_length_errors\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_over_errors\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_crc_errors\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_frame_errors\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_fifo_errors\00", [17 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_missed_errors\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_aborted_errors\00", [46 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_carrier_errors\00", [46 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_fifo_errors\00", [17 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_heartbeat_errors\00", [44 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_window_errors\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_compressed\00", [18 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_compressed\00", [18 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_nohandler\00", [19 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wireless\00", [23 x i8] zeroinitializer }, align 32
@wireless_attrs = internal global { [1 x ptr], [28 x i8] } zeroinitializer, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"queues\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1701, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [10 x i8] c"dql_group\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1400, i32 37 }
@___asan_gen_.116 = private unnamed_addr constant [23 x i8] c"net_ns_type_operations\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1853, i32 38 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1989, i32 20 }
@___asan_gen_.122 = private unnamed_addr constant [14 x i8] c"netstat_group\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 743, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"wireless_group\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 753, i32 37 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 2071, i32 9 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1051, i32 10 }
@___asan_gen_.134 = private unnamed_addr constant [19 x i8] c"rx_queue_sysfs_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 793, i32 31 }
@___asan_gen_.137 = private unnamed_addr constant [24 x i8] c"rx_queue_default_groups\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [23 x i8] c"rx_queue_default_group\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 984, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 970, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 809, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 814, i32 33 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 695, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 108, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 723, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [14 x i8] c"rps_map_mutex\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 827, i32 9 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 870, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 973, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 900, i32 22 }
@___asan_gen_.182 = private unnamed_addr constant [18 x i8] c"rps_dev_flow_lock\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 915, i32 9 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1654, i32 10 }
@___asan_gen_.191 = private unnamed_addr constant [23 x i8] c"netdev_queue_sysfs_ops\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1189, i32 31 }
@___asan_gen_.194 = private unnamed_addr constant [28 x i8] c"netdev_queue_default_groups\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [27 x i8] c"netdev_queue_default_group\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1603, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1296, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant [10 x i8] c"fmt_ulong\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 32, i32 19 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1299, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1245, i32 35 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1246, i32 21 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1529, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1590, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1292, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1401, i32 11 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1387, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1307, i32 22 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1316, i32 19 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1316, i32 42 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1388, i32 1 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1389, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1356, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1368, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1916, i32 10 }
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"net_class_groups\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [16 x i8] c"net_class_group\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 656, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant [22 x i8] c"dev_attr_netdev_group\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [14 x i8] c"dev_attr_type\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [16 x i8] c"dev_attr_dev_id\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [18 x i8] c"dev_attr_dev_port\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [16 x i8] c"dev_attr_iflink\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [17 x i8] c"dev_attr_ifindex\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [26 x i8] c"dev_attr_name_assign_type\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [26 x i8] c"dev_attr_addr_assign_type\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [18 x i8] c"dev_attr_addr_len\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [19 x i8] c"dev_attr_link_mode\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"dev_attr_address\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [19 x i8] c"dev_attr_broadcast\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [15 x i8] c"dev_attr_speed\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [16 x i8] c"dev_attr_duplex\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"dev_attr_dormant\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [17 x i8] c"dev_attr_testing\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [19 x i8] c"dev_attr_operstate\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [25 x i8] c"dev_attr_carrier_changes\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"dev_attr_ifalias\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [17 x i8] c"dev_attr_carrier\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [13 x i8] c"dev_attr_mtu\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [15 x i8] c"dev_attr_flags\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [22 x i8] c"dev_attr_tx_queue_len\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [27 x i8] c"dev_attr_gro_flush_timeout\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [30 x i8] c"dev_attr_napi_defer_hard_irqs\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [22 x i8] c"dev_attr_phys_port_id\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [24 x i8] c"dev_attr_phys_port_name\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [24 x i8] c"dev_attr_phys_switch_id\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [20 x i8] c"dev_attr_proto_down\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [26 x i8] c"dev_attr_carrier_up_count\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [28 x i8] c"dev_attr_carrier_down_count\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [18 x i8] c"dev_attr_threaded\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 480, i32 8 }
@___asan_gen_.359 = private unnamed_addr constant [8 x i8] c"fmt_dec\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 31, i32 19 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 111, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 106, i32 1 }
@___asan_gen_.368 = private unnamed_addr constant [8 x i8] c"fmt_hex\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 30, i32 19 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 107, i32 1 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 121, i32 8 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 110, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 140, i32 8 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 108, i32 1 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 109, i32 1 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 112, i32 1 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 155, i32 8 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 166, i32 8 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 225, i32 8 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 265, i32 8 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 250, i32 14 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 253, i32 14 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 256, i32 14 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 259, i32 23 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 289, i32 8 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 277, i32 8 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 318, i32 8 }
@___asan_gen_.425 = private unnamed_addr constant [11 x i8] c"operstates\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 291, i32 26 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 293, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 294, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 295, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 298, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 330, i32 8 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 466, i32 8 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 199, i32 8 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 364, i32 1 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 376, i32 1 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 387, i32 1 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 404, i32 1 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 421, i32 1 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 521, i32 8 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 515, i32 23 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 550, i32 8 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 580, i32 8 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 493, i32 1 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 340, i32 8 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 350, i32 8 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 619, i32 8 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1869, i32 31 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1877, i32 31 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 744, i32 11 }
@___asan_gen_.497 = private unnamed_addr constant [20 x i8] c"dev_attr_rx_packets\00", align 1
@___asan_gen_.500 = private unnamed_addr constant [20 x i8] c"dev_attr_tx_packets\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [18 x i8] c"dev_attr_rx_bytes\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [18 x i8] c"dev_attr_tx_bytes\00", align 1
@___asan_gen_.509 = private unnamed_addr constant [19 x i8] c"dev_attr_rx_errors\00", align 1
@___asan_gen_.512 = private unnamed_addr constant [19 x i8] c"dev_attr_tx_errors\00", align 1
@___asan_gen_.515 = private unnamed_addr constant [20 x i8] c"dev_attr_rx_dropped\00", align 1
@___asan_gen_.518 = private unnamed_addr constant [20 x i8] c"dev_attr_tx_dropped\00", align 1
@___asan_gen_.521 = private unnamed_addr constant [19 x i8] c"dev_attr_multicast\00", align 1
@___asan_gen_.524 = private unnamed_addr constant [20 x i8] c"dev_attr_collisions\00", align 1
@___asan_gen_.527 = private unnamed_addr constant [26 x i8] c"dev_attr_rx_length_errors\00", align 1
@___asan_gen_.530 = private unnamed_addr constant [24 x i8] c"dev_attr_rx_over_errors\00", align 1
@___asan_gen_.533 = private unnamed_addr constant [23 x i8] c"dev_attr_rx_crc_errors\00", align 1
@___asan_gen_.536 = private unnamed_addr constant [25 x i8] c"dev_attr_rx_frame_errors\00", align 1
@___asan_gen_.539 = private unnamed_addr constant [24 x i8] c"dev_attr_rx_fifo_errors\00", align 1
@___asan_gen_.542 = private unnamed_addr constant [26 x i8] c"dev_attr_rx_missed_errors\00", align 1
@___asan_gen_.545 = private unnamed_addr constant [27 x i8] c"dev_attr_tx_aborted_errors\00", align 1
@___asan_gen_.548 = private unnamed_addr constant [27 x i8] c"dev_attr_tx_carrier_errors\00", align 1
@___asan_gen_.551 = private unnamed_addr constant [24 x i8] c"dev_attr_tx_fifo_errors\00", align 1
@___asan_gen_.554 = private unnamed_addr constant [29 x i8] c"dev_attr_tx_heartbeat_errors\00", align 1
@___asan_gen_.557 = private unnamed_addr constant [26 x i8] c"dev_attr_tx_window_errors\00", align 1
@___asan_gen_.560 = private unnamed_addr constant [23 x i8] c"dev_attr_rx_compressed\00", align 1
@___asan_gen_.563 = private unnamed_addr constant [23 x i8] c"dev_attr_tx_compressed\00", align 1
@___asan_gen_.566 = private unnamed_addr constant [22 x i8] c"dev_attr_rx_nohandler\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 690, i32 1 }
@___asan_gen_.572 = private unnamed_addr constant [8 x i8] c"fmt_u64\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 33, i32 19 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 691, i32 1 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 692, i32 1 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 693, i32 1 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 694, i32 1 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 695, i32 1 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 696, i32 1 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 697, i32 1 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 698, i32 1 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 699, i32 1 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 700, i32 1 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 701, i32 1 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 702, i32 1 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 703, i32 1 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 704, i32 1 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 705, i32 1 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 706, i32 1 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 707, i32 1 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 708, i32 1 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 709, i32 1 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 710, i32 1 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 711, i32 1 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 712, i32 1 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 713, i32 1 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 754, i32 10 }
@___asan_gen_.647 = private unnamed_addr constant [15 x i8] c"wireless_attrs\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 749, i32 26 }
@___asan_gen_.650 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.651 = private constant [24 x i8] c"../net/core/net-sysfs.c\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.651, i32 1753, i32 41 }
@llvm.compiler.used = appending global [186 x ptr] [ptr @__ksymtab_net_ns_type_operations, ptr @__ksymtab_netdev_class_create_file_ns, ptr @__ksymtab_netdev_class_remove_file_ns, ptr @__ksymtab_of_find_net_device_by_node, ptr @.str, ptr @.str.1, ptr @dql_group, ptr @net_ns_type_operations, ptr @.str.2, ptr @netstat_group, ptr @wireless_group, ptr @netdev_kobject_init.__key, ptr @.str.3, ptr @rx_queue_sysfs_ops, ptr @rx_queue_default_groups, ptr @rx_queue_default_group, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @store_rps_map.rps_map_mutex, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @store_rps_dev_flow_table_cnt.rps_dev_flow_lock, ptr @.str.17, ptr @.str.18, ptr @netdev_queue_sysfs_ops, ptr @netdev_queue_default_groups, ptr @netdev_queue_default_group, ptr @.str.19, ptr @fmt_ulong, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @net_class_groups, ptr @net_class_group, ptr @dev_attr_netdev_group, ptr @dev_attr_type, ptr @dev_attr_dev_id, ptr @dev_attr_dev_port, ptr @dev_attr_iflink, ptr @dev_attr_ifindex, ptr @dev_attr_name_assign_type, ptr @dev_attr_addr_assign_type, ptr @dev_attr_addr_len, ptr @dev_attr_link_mode, ptr @dev_attr_address, ptr @dev_attr_broadcast, ptr @dev_attr_speed, ptr @dev_attr_duplex, ptr @dev_attr_dormant, ptr @dev_attr_testing, ptr @dev_attr_operstate, ptr @dev_attr_carrier_changes, ptr @dev_attr_ifalias, ptr @dev_attr_carrier, ptr @dev_attr_mtu, ptr @dev_attr_flags, ptr @dev_attr_tx_queue_len, ptr @dev_attr_gro_flush_timeout, ptr @dev_attr_napi_defer_hard_irqs, ptr @dev_attr_phys_port_id, ptr @dev_attr_phys_port_name, ptr @dev_attr_phys_switch_id, ptr @dev_attr_proto_down, ptr @dev_attr_carrier_up_count, ptr @dev_attr_carrier_down_count, ptr @dev_attr_threaded, ptr @.str.37, ptr @fmt_dec, ptr @.str.38, ptr @.str.39, ptr @fmt_hex, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @operstates, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @dev_attr_rx_packets, ptr @dev_attr_tx_packets, ptr @dev_attr_rx_bytes, ptr @dev_attr_tx_bytes, ptr @dev_attr_rx_errors, ptr @dev_attr_tx_errors, ptr @dev_attr_rx_dropped, ptr @dev_attr_tx_dropped, ptr @dev_attr_multicast, ptr @dev_attr_collisions, ptr @dev_attr_rx_length_errors, ptr @dev_attr_rx_over_errors, ptr @dev_attr_rx_crc_errors, ptr @dev_attr_rx_frame_errors, ptr @dev_attr_rx_fifo_errors, ptr @dev_attr_rx_missed_errors, ptr @dev_attr_tx_aborted_errors, ptr @dev_attr_tx_carrier_errors, ptr @dev_attr_tx_fifo_errors, ptr @dev_attr_tx_heartbeat_errors, ptr @dev_attr_tx_window_errors, ptr @dev_attr_rx_compressed, ptr @dev_attr_tx_compressed, ptr @dev_attr_rx_nohandler, ptr @.str.81, ptr @fmt_u64, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @wireless_attrs, ptr @.str.106], section "llvm.metadata"
@0 = internal global [182 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dql_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_ns_type_operations to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netstat_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wireless_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_kobject_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_queue_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_queue_default_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_queue_default_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_rps_map.rps_map_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_rps_dev_flow_table_cnt.rps_dev_flow_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_queue_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_queue_default_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_queue_default_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmt_ulong to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_class_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_class_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_netdev_group to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dev_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dev_port to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_iflink to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ifindex to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name_assign_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_addr_assign_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_addr_len to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_link_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_address to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_broadcast to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_speed to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_duplex to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dormant to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_testing to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_operstate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_carrier_changes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ifalias to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_carrier to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mtu to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_flags to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tx_queue_len to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gro_flush_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_napi_defer_hard_irqs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_phys_port_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_phys_port_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_phys_switch_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_proto_down to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_carrier_up_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_carrier_down_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_threaded to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmt_dec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmt_hex to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @operstates to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rx_packets to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tx_packets to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rx_bytes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tx_bytes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rx_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tx_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rx_dropped to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tx_dropped to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_multicast to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_collisions to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rx_length_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rx_over_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rx_crc_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rx_frame_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rx_fifo_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rx_missed_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tx_aborted_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tx_carrier_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tx_fifo_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tx_heartbeat_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tx_window_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rx_compressed to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tx_compressed to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rx_nohandler to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmt_u64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wireless_attrs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @net_rx_queue_update_kobjects(ptr nocapture noundef readonly %dev, i32 noundef %old_num, i32 noundef %new_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %old_num, i32 %new_num)
  %cmp30 = icmp slt i32 %old_num, %new_num
  br i1 %cmp30, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %_rx.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 87
  %queues_kset.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 68
  %sysfs_rx_queue_group.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 135
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ %old_num, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %_rx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_rx.i, align 4
  %kobj1.i = getelementptr %struct.netdev_rx_queue, ptr %1, i32 %i.031, i32 3
  %dev2.i = getelementptr %struct.netdev_rx_queue, ptr %1, i32 %i.031, i32 4
  %2 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2.i, align 16
  %dev_tracker.i = getelementptr %struct.netdev_rx_queue, ptr %1, i32 %i.031, i32 5
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %for.body.dev_hold_track.exit.i_crit_edge, label %do.body1.i.i.i

for.body.dev_hold_track.exit.i_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_hold_track.exit.i

do.body1.i.i.i:                                   ; preds = %for.body
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !372
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 118
  %5 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i.i.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add13.i.i.i = add i32 %16, 1
  store i32 %add13.i.i.i, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !373
  %and.i.i.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_hold.exit.i.i_crit_edge, !prof !374

do.body1.i.i.i.dev_hold.exit.i.i_crit_edge:       ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_hold.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %dev_hold.exit.i.i

dev_hold.exit.i.i:                                ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_hold.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #16, !srcloc !375
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 119
  %call.i.i.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i, i32 noundef 3264) #16
  br label %dev_hold_track.exit.i

dev_hold_track.exit.i:                            ; preds = %dev_hold.exit.i.i, %for.body.dev_hold_track.exit.i_crit_edge
  %18 = ptrtoint ptr %queues_kset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %queues_kset.i, align 8
  %kset.i = getelementptr %struct.netdev_rx_queue, ptr %1, i32 %i.031, i32 3, i32 3
  %20 = ptrtoint ptr %kset.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %kset.i, align 4
  %call.i = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj1.i, ptr noundef nonnull @rx_queue_ktype, ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef %i.031) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dev_hold_track.exit.i.rx_queue_add_kobject.exit_crit_edge

dev_hold_track.exit.i.rx_queue_add_kobject.exit_crit_edge: ; preds = %dev_hold_track.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rx_queue_add_kobject.exit

if.end.i:                                         ; preds = %dev_hold_track.exit.i
  %21 = ptrtoint ptr %sysfs_rx_queue_group.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sysfs_rx_queue_group.i, align 128
  %tobool3.not.i = icmp eq ptr %22, null
  br i1 %tobool3.not.i, label %if.end.i.for.inc_crit_edge, label %if.then4.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then4.i:                                       ; preds = %if.end.i
  %call6.i = tail call i32 @sysfs_create_group(ptr noundef %kobj1.i, ptr noundef nonnull %22) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then4.i.for.inc_crit_edge, label %if.then4.i.rx_queue_add_kobject.exit_crit_edge

if.then4.i.rx_queue_add_kobject.exit_crit_edge:   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rx_queue_add_kobject.exit

if.then4.i.for.inc_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

rx_queue_add_kobject.exit:                        ; preds = %if.then4.i.rx_queue_add_kobject.exit_crit_edge, %dev_hold_track.exit.i.rx_queue_add_kobject.exit_crit_edge
  %error.1.i = phi i32 [ %call.i, %dev_hold_track.exit.i.rx_queue_add_kobject.exit_crit_edge ], [ %call6.i, %if.then4.i.rx_queue_add_kobject.exit_crit_edge ]
  tail call void @kobject_put(ptr noundef %kobj1.i) #16
  br label %for.end

for.inc:                                          ; preds = %if.then4.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge
  %call11.i = tail call i32 @kobject_uevent(ptr noundef %kobj1.i, i32 noundef 0) #16
  %inc = add i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %new_num
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rx_queue_add_kobject.exit, %entry.for.end_crit_edge
  %i.029 = phi i32 [ %i.031, %rx_queue_add_kobject.exit ], [ %old_num, %entry.for.end_crit_edge ], [ %new_num, %for.inc.for.end_crit_edge ]
  %new_num.addr.0 = phi i32 [ %old_num, %rx_queue_add_kobject.exit ], [ %new_num, %entry.for.end_crit_edge ], [ %new_num, %for.inc.for.end_crit_edge ]
  %error.1 = phi i32 [ %error.1.i, %rx_queue_add_kobject.exit ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %dec33 = add i32 %i.029, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %dec33, i32 %new_num.addr.0)
  %cmp1.not34 = icmp slt i32 %dec33, %new_num.addr.0
  br i1 %cmp1.not34, label %for.end.while.end_crit_edge, label %while.body.lr.ph

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.end
  %_rx = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 87
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %sysfs_rx_queue_group = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 135
  br label %while.body

while.body:                                       ; preds = %if.end11.while.body_crit_edge, %while.body.lr.ph
  %dec35 = phi i32 [ %dec33, %while.body.lr.ph ], [ %dec, %if.end11.while.body_crit_edge ]
  %23 = ptrtoint ptr %_rx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_rx, align 4
  %kobj2 = getelementptr %struct.netdev_rx_queue, ptr %24, i32 %dec35, i32 3
  %25 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nd_net.i, align 4
  %count = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 14, i32 3
  %call.i.i.i25 = tail call zeroext i1 @__kasan_check_read(ptr noundef %count, i32 noundef 4) #16
  %27 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool5.not = icmp eq i32 %28, 0
  br i1 %tobool5.not, label %if.then6, label %while.body.if.end7_crit_edge

while.body.if.end7_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then6:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %uevent_suppress = getelementptr %struct.netdev_rx_queue, ptr %24, i32 %dec35, i32 3, i32 8
  %29 = ptrtoint ptr %uevent_suppress to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %uevent_suppress, align 4
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, ptr %uevent_suppress, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %while.body.if.end7_crit_edge
  %30 = ptrtoint ptr %sysfs_rx_queue_group to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sysfs_rx_queue_group, align 128
  %tobool8.not = icmp eq ptr %31, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @sysfs_remove_group(ptr noundef %kobj2, ptr noundef nonnull %31) #16
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  tail call void @kobject_put(ptr noundef %kobj2) #16
  %dec = add i32 %dec35, -1
  %cmp1.not = icmp slt i32 %dec, %new_num.addr.0
  br i1 %cmp1.not, label %if.end11.while.end_crit_edge, label %if.end11.while.body_crit_edge

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end11.while.end_crit_edge, %for.end.while.end_crit_edge
  ret i32 %error.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netdev_queue_update_kobjects(ptr nocapture noundef readonly %dev, i32 noundef %old_num, i32 noundef %new_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_state = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 121
  %0 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.load)
  %cmp = icmp eq i8 %bf.load, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %new_num, i32 %old_num)
  %cmp1 = icmp sgt i32 %new_num, %old_num
  %spec.select = and i1 %cmp1, %cmp
  br i1 %spec.select, label %do.end, label %entry.if.end_crit_edge, !prof !374

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1702, i32 noundef 9, ptr noundef nonnull @.str.1) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  br i1 %cmp1, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %queues_kset.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 68
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ %old_num, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %_tx.i, align 128
  %add.ptr.i = getelementptr %struct.netdev_queue, ptr %2, i32 %i.054
  %kobj1.i = getelementptr %struct.netdev_queue, ptr %2, i32 %i.054, i32 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %dev_tracker.i = getelementptr %struct.netdev_queue, ptr %2, i32 %i.054, i32 1
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %for.body.dev_hold_track.exit.i_crit_edge, label %do.body1.i.i.i

for.body.dev_hold_track.exit.i_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_hold_track.exit.i

do.body1.i.i.i:                                   ; preds = %for.body
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !372
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 118
  %6 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %14, %8
  %15 = inttoptr i32 %add.i.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add13.i.i.i = add i32 %17, 1
  store i32 %add13.i.i.i, ptr %15, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !373
  %and.i.i.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_hold.exit.i.i_crit_edge, !prof !374

do.body1.i.i.i.dev_hold.exit.i.i_crit_edge:       ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_hold.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %dev_hold.exit.i.i

dev_hold.exit.i.i:                                ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_hold.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #16, !srcloc !375
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 119
  %call.i.i.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i, i32 noundef 3264) #16
  br label %dev_hold_track.exit.i

dev_hold_track.exit.i:                            ; preds = %dev_hold.exit.i.i, %for.body.dev_hold_track.exit.i_crit_edge
  %19 = ptrtoint ptr %queues_kset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %queues_kset.i, align 8
  %kset.i = getelementptr %struct.netdev_queue, ptr %2, i32 %i.054, i32 4, i32 3
  %21 = ptrtoint ptr %kset.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %kset.i, align 4
  %call.i = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj1.i, ptr noundef nonnull @netdev_queue_ktype, ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef %i.054) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dev_hold_track.exit.i.netdev_queue_add_kobject.exit_crit_edge

dev_hold_track.exit.i.netdev_queue_add_kobject.exit_crit_edge: ; preds = %dev_hold_track.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_queue_add_kobject.exit

if.end.i:                                         ; preds = %dev_hold_track.exit.i
  %call3.i = tail call i32 @sysfs_create_group(ptr noundef %kobj1.i, ptr noundef nonnull @dql_group) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %for.inc, label %if.end.i.netdev_queue_add_kobject.exit_crit_edge

if.end.i.netdev_queue_add_kobject.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_queue_add_kobject.exit

netdev_queue_add_kobject.exit:                    ; preds = %if.end.i.netdev_queue_add_kobject.exit_crit_edge, %dev_hold_track.exit.i.netdev_queue_add_kobject.exit_crit_edge
  %error.0.i = phi i32 [ %call.i, %dev_hold_track.exit.i.netdev_queue_add_kobject.exit_crit_edge ], [ %call3.i, %if.end.i.netdev_queue_add_kobject.exit_crit_edge ]
  tail call void @kobject_put(ptr noundef %kobj1.i) #16
  br label %for.end

for.inc:                                          ; preds = %if.end.i
  %call7.i = tail call i32 @kobject_uevent(ptr noundef %kobj1.i, i32 noundef 0) #16
  %inc = add i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, %new_num
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %netdev_queue_add_kobject.exit, %if.end.for.end_crit_edge
  %i.052 = phi i32 [ %i.054, %netdev_queue_add_kobject.exit ], [ %old_num, %if.end.for.end_crit_edge ], [ %new_num, %for.inc.for.end_crit_edge ]
  %error.1 = phi i32 [ %error.0.i, %netdev_queue_add_kobject.exit ], [ 0, %if.end.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %new_num.addr.0 = phi i32 [ %old_num, %netdev_queue_add_kobject.exit ], [ %new_num, %if.end.for.end_crit_edge ], [ %new_num, %for.inc.for.end_crit_edge ]
  %dec55 = add i32 %i.052, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %dec55, i32 %new_num.addr.0)
  %cmp24.not56 = icmp slt i32 %dec55, %new_num.addr.0
  br i1 %cmp24.not56, label %for.end.while.end_crit_edge, label %while.body.lr.ph

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.end
  %_tx = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  br label %while.body

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %while.body.lr.ph
  %dec57 = phi i32 [ %dec55, %while.body.lr.ph ], [ %dec, %if.end30.while.body_crit_edge ]
  %22 = ptrtoint ptr %_tx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_tx, align 128
  %24 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nd_net.i, align 4
  %count = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 14, i32 3
  %call.i.i.i48 = tail call zeroext i1 @__kasan_check_read(ptr noundef %count, i32 noundef 4) #16
  %26 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool27.not = icmp eq i32 %27, 0
  br i1 %tobool27.not, label %if.then28, label %while.body.if.end30_crit_edge

while.body.if.end30_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then28:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %uevent_suppress = getelementptr %struct.netdev_queue, ptr %23, i32 %dec57, i32 4, i32 8
  %28 = ptrtoint ptr %uevent_suppress to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load29 = load i8, ptr %uevent_suppress, align 4
  %bf.set = or i8 %bf.load29, 8
  store i8 %bf.set, ptr %uevent_suppress, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %while.body.if.end30_crit_edge
  %kobj31 = getelementptr %struct.netdev_queue, ptr %23, i32 %dec57, i32 4
  tail call void @sysfs_remove_group(ptr noundef %kobj31, ptr noundef nonnull @dql_group) #16
  tail call void @kobject_put(ptr noundef %kobj31) #16
  %dec = add i32 %dec57, -1
  %cmp24.not = icmp slt i32 %dec, %new_num.addr.0
  br i1 %cmp24.not, label %if.end30.while.end_crit_edge, label %if.end30.while.body_crit_edge

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end30.while.end_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end30.while.end_crit_edge, %for.end.while.end_crit_edge
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @net_current_may_mount() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_ns, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns, align 4
  %call1 = tail call zeroext i1 @ns_capable(ptr noundef %9, i32 noundef 21) #16
  ret i1 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @net_grab_current_ns() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_ns, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %7, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull %7, i32 1, i32 3, i32 1) #16
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #16, !srcloc !376
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !374

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !377

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef %.sink.i.i.i) #16
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @net_netlink_ns(ptr nocapture noundef readonly %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @net_initial_ns() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @init_net
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_drop_ns(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_find_net_device_by_node(ptr noundef %np) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @class_find_device(ptr noundef nonnull @net_class, ptr noundef null, ptr noundef %np, ptr noundef nonnull @of_dev_node_match) #16
  %tobool.not = icmp eq ptr %call, null
  %add.ptr = getelementptr i8, ptr %call, i32 -1104
  %retval.0 = select i1 %tobool.not, ptr null, ptr %add.ptr
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @of_dev_node_match(ptr noundef readonly %dev, ptr noundef readnone %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not3 = icmp eq ptr %dev, null
  br i1 %tobool.not3, label %entry.return_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %dev.addr.04 = phi ptr [ %3, %for.inc.for.body_crit_edge ], [ %dev, %entry.for.body_crit_edge ]
  %of_node = getelementptr inbounds %struct.device, ptr %dev.addr.04, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %cmp = icmp eq ptr %1, %data
  br i1 %cmp, label %for.body.return_crit_edge, label %for.inc

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

for.inc:                                          ; preds = %for.body
  %parent = getelementptr inbounds %struct.device, ptr %dev.addr.04, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.inc.return_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.return_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

return:                                           ; preds = %for.inc.return_crit_edge, %for.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.inc.return_crit_edge ], [ 1, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netdev_unregister_kobject(ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %count = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count, i32 noundef 4) #16
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %uevent_suppress.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 0, i32 8
  %4 = ptrtoint ptr %uevent_suppress.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %uevent_suppress.i, align 4
  %bf.set.i = or i8 %bf.load.i, 8
  store i8 %bf.set.i, ptr %uevent_suppress.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  %call3 = tail call ptr @kobject_get(ptr noundef %dev1) #16
  %real_num_rx_queues.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 89
  %5 = ptrtoint ptr %real_num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %real_num_rx_queues.i, align 4
  %real_num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 105
  %7 = ptrtoint ptr %real_num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %real_num_tx_queues.i, align 8
  %call.i = tail call i32 @net_rx_queue_update_kobjects(ptr noundef %ndev, i32 noundef %6, i32 noundef 0) #16
  %call1.i = tail call i32 @netdev_queue_update_kobjects(ptr noundef %ndev, i32 noundef %8, i32 noundef 0) #16
  %9 = ptrtoint ptr %real_num_rx_queues.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %real_num_rx_queues.i, align 4
  %10 = ptrtoint ptr %real_num_tx_queues.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %real_num_tx_queues.i, align 8
  %queues_kset.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 68
  %11 = ptrtoint ptr %queues_kset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queues_kset.i, align 8
  tail call void @kset_unregister(ptr noundef %12) #16
  tail call void @pm_runtime_set_memalloc_noio(ptr noundef %dev1, i1 noundef zeroext false) #16
  tail call void @device_del(ptr noundef %dev1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_memalloc_noio(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netdev_register_kobject(ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  %sysfs_groups = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 134
  tail call void @device_initialize(ptr noundef %dev1) #16
  %class = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 33
  %0 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @net_class, ptr %class, align 4
  %platform_data = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 7
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ndev, ptr %platform_data, align 8
  %groups2 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 34
  %2 = ptrtoint ptr %groups2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sysfs_groups, ptr %groups2, align 8
  %call = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef %ndev) #16
  %3 = ptrtoint ptr %sysfs_groups to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sysfs_groups, align 4
  %tobool.not = icmp eq ptr %4, null
  %incdec.ptr = getelementptr %struct.net_device, ptr %ndev, i32 0, i32 134, i32 1
  %spec.select = select i1 %tobool.not, ptr %sysfs_groups, ptr %incdec.ptr
  %incdec.ptr4 = getelementptr ptr, ptr %spec.select, i32 1
  %5 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @netstat_group, ptr %spec.select, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 82
  %6 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ieee80211_ptr, align 16
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.else, label %entry.if.end12.sink.split_crit_edge

entry.if.end12.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.sink.split

if.else:                                          ; preds = %entry
  %wireless_handlers = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 42
  %8 = ptrtoint ptr %wireless_handlers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wireless_handlers, align 8
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.else.if.end12_crit_edge, label %if.else.if.end12.sink.split_crit_edge

if.else.if.end12.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.sink.split

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.end12.sink.split:                              ; preds = %if.else.if.end12.sink.split_crit_edge, %entry.if.end12.sink.split_crit_edge
  %10 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @wireless_group, ptr %incdec.ptr4, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.else.if.end12_crit_edge
  %call13 = tail call i32 @device_add(ptr noundef %dev1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call.i = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.106, ptr noundef null, ptr noundef %dev1) #16
  %queues_kset.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 68
  %11 = ptrtoint ptr %queues_kset.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %queues_kset.i, align 8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end16.if.then19_crit_edge, label %if.end.i

if.end16.if.then19_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then19

if.end.i:                                         ; preds = %if.end16
  %real_num_rx_queues.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 89
  %12 = ptrtoint ptr %real_num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %real_num_rx_queues.i, align 4
  %real_num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 105
  %14 = ptrtoint ptr %real_num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %real_num_tx_queues.i, align 8
  %call3.i = tail call i32 @net_rx_queue_update_kobjects(ptr noundef %ndev, i32 noundef 0, i32 noundef %13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.error11.i_crit_edge

if.end.i.error11.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error11.i

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 @netdev_queue_update_kobjects(ptr noundef %ndev, i32 noundef 0, i32 noundef %15) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end20, label %if.end6.i.error11.i_crit_edge

if.end6.i.error11.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error11.i

error11.i:                                        ; preds = %if.end6.i.error11.i_crit_edge, %if.end.i.error11.i_crit_edge
  %error.0.i = phi i32 [ %call3.i, %if.end.i.error11.i_crit_edge ], [ %call7.i, %if.end6.i.error11.i_crit_edge ]
  %rxq.0.i = phi i32 [ 0, %if.end.i.error11.i_crit_edge ], [ %13, %if.end6.i.error11.i_crit_edge ]
  %call13.i = tail call i32 @net_rx_queue_update_kobjects(ptr noundef %ndev, i32 noundef %rxq.0.i, i32 noundef 0) #16
  %16 = ptrtoint ptr %queues_kset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %queues_kset.i, align 8
  tail call void @kset_unregister(ptr noundef %17) #16
  br label %if.then19

if.then19:                                        ; preds = %error11.i, %if.end16.if.then19_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end16.if.then19_crit_edge ], [ %error.0.i, %error11.i ]
  tail call void @device_del(ptr noundef %dev1) #16
  br label %cleanup

if.end20:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @pm_runtime_set_memalloc_noio(ptr noundef %dev1, i1 noundef zeroext true) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then19, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then19 ], [ 0, %if.end20 ], [ %call13, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netdev_change_owner(ptr noundef %ndev, ptr noundef %net_old, ptr noundef %net_new) local_unnamed_addr #0 align 64 {
entry:
  %old_uid = alloca %struct.kuid_t, align 4
  %new_uid = alloca %struct.kuid_t, align 4
  %old_gid = alloca %struct.kgid_t, align 4
  %new_gid = alloca %struct.kgid_t, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_uid) #16
  %0 = ptrtoint ptr %old_uid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %old_uid, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_uid) #16
  %1 = ptrtoint ptr %new_uid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %new_uid, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_gid) #16
  %2 = ptrtoint ptr %old_gid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %old_gid, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_gid) #16
  %3 = ptrtoint ptr %new_gid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %new_gid, align 4
  %dev1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  call void @net_ns_get_ownership(ptr noundef %net_old, ptr noundef nonnull %old_uid, ptr noundef nonnull %old_gid) #16
  call void @net_ns_get_ownership(ptr noundef %net_new, ptr noundef nonnull %new_uid, ptr noundef nonnull %new_gid) #16
  %4 = ptrtoint ptr %old_uid to i32
  call void @__asan_load4_noabort(i32 %4)
  %.fca.0.load44 = load i32, ptr %old_uid, align 4
  %5 = ptrtoint ptr %new_uid to i32
  call void @__asan_load4_noabort(i32 %5)
  %.fca.0.load35 = load i32, ptr %new_uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.fca.0.load44, i32 %.fca.0.load35)
  %cmp.i = icmp eq i32 %.fca.0.load44, %.fca.0.load35
  br i1 %cmp.i, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %old_gid to i32
  call void @__asan_load4_noabort(i32 %6)
  %.fca.0.load32 = load i32, ptr %old_gid, align 4
  %7 = ptrtoint ptr %new_gid to i32
  call void @__asan_load4_noabort(i32 %7)
  %.fca.0.load = load i32, ptr %new_gid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.fca.0.load32, i32 %.fca.0.load)
  %cmp.i47 = icmp eq i32 %.fca.0.load32, %.fca.0.load
  br i1 %cmp.i47, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %.fca.0.insert39 = insertvalue [1 x i32] poison, i32 %.fca.0.load35, 0
  %8 = ptrtoint ptr %new_gid to i32
  call void @__asan_load4_noabort(i32 %8)
  %.fca.0.load26 = load i32, ptr %new_gid, align 4
  %.fca.0.insert27 = insertvalue [1 x i32] poison, i32 %.fca.0.load26, 0
  %call8 = call i32 @device_change_owner(ptr noundef %dev1, [1 x i32] %.fca.0.insert39, [1 x i32] %.fca.0.insert27) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %9 = ptrtoint ptr %new_uid to i32
  call void @__asan_load4_noabort(i32 %9)
  %.fca.0.load41 = load i32, ptr %new_uid, align 4
  %.fca.0.insert42 = insertvalue [1 x i32] poison, i32 %.fca.0.load41, 0
  %10 = ptrtoint ptr %new_gid to i32
  call void @__asan_load4_noabort(i32 %10)
  %.fca.0.load29 = load i32, ptr %new_gid, align 4
  %.fca.0.insert30 = insertvalue [1 x i32] poison, i32 %.fca.0.load29, 0
  %queues_kset.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 68
  %11 = ptrtoint ptr %queues_kset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queues_kset.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end10.if.end7.i_crit_edge, label %if.then.i

if.end10.if.end7.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end10
  %kobj.i = getelementptr inbounds %struct.kset, ptr %12, i32 0, i32 2
  %call.i = call i32 @sysfs_change_owner(ptr noundef %kobj.i, [1 x i32] %.fca.0.insert42, [1 x i32] %.fca.0.insert30) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end7.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then.i.if.end7.i_crit_edge, %if.end10.if.end7.i_crit_edge
  %real_num_rx_queues.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 89
  %13 = ptrtoint ptr %real_num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %real_num_rx_queues.i, align 4
  %real_num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 105
  %15 = ptrtoint ptr %real_num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %real_num_tx_queues.i, align 8
  %_rx.i.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp13.i.i = icmp sgt i32 %14, 0
  br i1 %cmp13.i.i, label %for.body.lr.ph.i.i, label %if.end7.i.if.end13.i_crit_edge

if.end7.i.if.end13.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i

for.body.lr.ph.i.i:                               ; preds = %if.end7.i
  %sysfs_rx_queue_group.i.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 135
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.014.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %17 = ptrtoint ptr %_rx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_rx.i.i.i, align 4
  %kobj2.i.i.i = getelementptr %struct.netdev_rx_queue, ptr %18, i32 %i.014.i.i, i32 3
  %call.i.i.i = call i32 @sysfs_change_owner(ptr noundef %kobj2.i.i.i, [1 x i32] %.fca.0.insert42, [1 x i32] %.fca.0.insert30) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %for.body.i.i.cleanup_crit_edge

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %19 = ptrtoint ptr %sysfs_rx_queue_group.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sysfs_rx_queue_group.i.i.i, align 128
  %tobool5.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool5.not.i.i.i, label %if.end.i.i.i.for.inc.i.i_crit_edge, label %rx_queue_change_owner.exit.i.i

if.end.i.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

rx_queue_change_owner.exit.i.i:                   ; preds = %if.end.i.i.i
  %call10.i.i.i = call i32 @sysfs_group_change_owner(ptr noundef %kobj2.i.i.i, ptr noundef nonnull %20, [1 x i32] %.fca.0.insert42, [1 x i32] %.fca.0.insert30) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call10.i.i.i, 0
  br i1 %tobool.not.i.i, label %rx_queue_change_owner.exit.i.i.for.inc.i.i_crit_edge, label %rx_queue_change_owner.exit.i.i.cleanup_crit_edge

rx_queue_change_owner.exit.i.i.cleanup_crit_edge: ; preds = %rx_queue_change_owner.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

rx_queue_change_owner.exit.i.i.for.inc.i.i_crit_edge: ; preds = %rx_queue_change_owner.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %rx_queue_change_owner.exit.i.i.for.inc.i.i_crit_edge, %if.end.i.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %14
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end13.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.inc.i.i.if.end13.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i

if.end13.i:                                       ; preds = %for.inc.i.i.if.end13.i_crit_edge, %if.end7.i.if.end13.i_crit_edge
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp10.i.i = icmp sgt i32 %16, 0
  br i1 %cmp10.i.i, label %if.end13.i.for.body.i54.i_crit_edge, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13.i.for.body.i54.i_crit_edge:              ; preds = %if.end13.i
  br label %for.body.i54.i

for.cond.i.i:                                     ; preds = %tx_queue_change_owner.exit.i.i
  %inc.i49.i = add nuw nsw i32 %i.011.i.i, 1
  %exitcond.not.i50.i = icmp eq i32 %inc.i49.i, %16
  br i1 %exitcond.not.i50.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.i.i.for.body.i54.i_crit_edge

for.cond.i.i.for.body.i54.i_crit_edge:            ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i54.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i54.i:                                   ; preds = %for.cond.i.i.for.body.i54.i_crit_edge, %if.end13.i.for.body.i54.i_crit_edge
  %i.011.i.i = phi i32 [ %inc.i49.i, %for.cond.i.i.for.body.i54.i_crit_edge ], [ 0, %if.end13.i.for.body.i54.i_crit_edge ]
  %21 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i.i, align 128
  %kobj2.i.i51.i = getelementptr %struct.netdev_queue, ptr %22, i32 %i.011.i.i, i32 4
  %call.i.i52.i = call i32 @sysfs_change_owner(ptr noundef %kobj2.i.i51.i, [1 x i32] %.fca.0.insert42, [1 x i32] %.fca.0.insert30) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i52.i)
  %tobool.not.i.i53.i = icmp eq i32 %call.i.i52.i, 0
  br i1 %tobool.not.i.i53.i, label %tx_queue_change_owner.exit.i.i, label %for.body.i54.i.cleanup_crit_edge

for.body.i54.i.cleanup_crit_edge:                 ; preds = %for.body.i54.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

tx_queue_change_owner.exit.i.i:                   ; preds = %for.body.i54.i
  %call7.i.i.i = call i32 @sysfs_group_change_owner(ptr noundef %kobj2.i.i51.i, ptr noundef nonnull @dql_group, [1 x i32] %.fca.0.insert42, [1 x i32] %.fca.0.insert30) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool.not.i55.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool.not.i55.i, label %for.cond.i.i, label %tx_queue_change_owner.exit.i.i.cleanup_crit_edge

tx_queue_change_owner.exit.i.i.cleanup_crit_edge: ; preds = %tx_queue_change_owner.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %tx_queue_change_owner.exit.i.i.cleanup_crit_edge, %for.body.i54.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %rx_queue_change_owner.exit.i.i.cleanup_crit_edge, %for.body.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ 0, %if.end13.i.cleanup_crit_edge ], [ %call.i.i52.i, %for.body.i54.i.cleanup_crit_edge ], [ %call7.i.i.i, %tx_queue_change_owner.exit.i.i.cleanup_crit_edge ], [ 0, %for.cond.i.i.cleanup_crit_edge ], [ %call.i.i.i, %for.body.i.i.cleanup_crit_edge ], [ %call10.i.i.i, %rx_queue_change_owner.exit.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_gid) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_gid) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_uid) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_uid) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_ns_get_ownership(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_change_owner(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netdev_class_create_file_ns(ptr noundef %class_attr, ptr noundef %ns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @class_create_file_ns(ptr noundef nonnull @net_class, ptr noundef %class_attr, ptr noundef %ns) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netdev_class_remove_file_ns(ptr noundef %class_attr, ptr noundef %ns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @class_remove_file_ns(ptr noundef nonnull @net_class, ptr noundef %class_attr, ptr noundef %ns) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netdev_kobject_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kobj_ns_type_register(ptr noundef nonnull @net_ns_type_operations) #16
  %call1 = tail call i32 @__class_register(ptr noundef nonnull @net_class, ptr noundef nonnull @netdev_kobject_init.__key) #16
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobj_ns_type_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rx_queue_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rps_map = getelementptr i8, ptr %kobj, i32 -8
  %0 = ptrtoint ptr %rps_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rps_map, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end26_crit_edge, label %do.body7

entry.do.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end26

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %rps_map to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %rps_map, align 128
  %rcu = getelementptr inbounds %struct.rps_map, ptr %1, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 4 to ptr)) #16
  br label %do.end26

do.end26:                                         ; preds = %do.body7, %entry.do.end26_crit_edge
  %rps_flow_table = getelementptr i8, ptr %kobj, i32 -4
  %3 = ptrtoint ptr %rps_flow_table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rps_flow_table, align 4
  %tobool28.not = icmp eq ptr %4, null
  br i1 %tobool28.not, label %do.end26.if.end44_crit_edge, label %do.body35

do.end26.if.end44_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

do.body35:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %rps_flow_table to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr null, ptr %rps_flow_table, align 4
  %rcu43 = getelementptr inbounds %struct.rps_dev_flow_table, ptr %4, i32 0, i32 1
  tail call void @call_rcu(ptr noundef %rcu43, ptr noundef nonnull @rps_dev_flow_table_release) #16
  br label %if.end44

if.end44:                                         ; preds = %do.body35, %do.end26.if.end44_crit_edge
  %6 = call ptr @memset(ptr %kobj, i32 0, i32 136)
  %dev = getelementptr i8, ptr %kobj, i32 136
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 16
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end44.dev_put_track.exit_crit_edge, label %do.body1.i.i

if.end44.dev_put_track.exit_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %if.end44
  %dev_tracker = getelementptr i8, ptr %kobj, i32 140
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #16
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !372
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 118
  %10 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !362) #16
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
  %add13.i.i = add i32 %21, -1
  store i32 %add13.i.i, ptr %19, align 4
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !373
  %and.i.i.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !374

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #16, !srcloc !375
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %if.end44.dev_put_track.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rx_queue_namespace(ptr nocapture noundef readonly %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %kobj, i32 136
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 16
  %dev2 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  %class = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 33
  %2 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %class, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ns_type = getelementptr inbounds %struct.class, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns_type, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %namespace = getelementptr inbounds %struct.class, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %namespace to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %namespace, align 4
  %call = tail call ptr %7(ptr noundef %dev2) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ns.0 = phi ptr [ %call, %if.then ], [ null, %land.lhs.true.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ]
  ret ptr %ns.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rx_queue_get_ownership(ptr nocapture noundef readonly %kobj, ptr noundef %uid, ptr noundef %gid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr i8, ptr %kobj, i32 136
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 16
  %dev2.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  %class.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 33
  %2 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %class.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.rx_queue_namespace.exit_crit_edge, label %land.lhs.true.i

entry.rx_queue_namespace.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rx_queue_namespace.exit

land.lhs.true.i:                                  ; preds = %entry
  %ns_type.i = getelementptr inbounds %struct.class, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ns_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns_type.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.rx_queue_namespace.exit_crit_edge, label %if.then.i

land.lhs.true.i.rx_queue_namespace.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rx_queue_namespace.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %namespace.i = getelementptr inbounds %struct.class, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %namespace.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %namespace.i, align 4
  %call.i = tail call ptr %7(ptr noundef %dev2.i) #16
  br label %rx_queue_namespace.exit

rx_queue_namespace.exit:                          ; preds = %if.then.i, %land.lhs.true.i.rx_queue_namespace.exit_crit_edge, %entry.rx_queue_namespace.exit_crit_edge
  %ns.0.i = phi ptr [ %call.i, %if.then.i ], [ null, %land.lhs.true.i.rx_queue_namespace.exit_crit_edge ], [ null, %entry.rx_queue_namespace.exit_crit_edge ]
  tail call void @net_ns_get_ownership(ptr noundef %ns.0.i, ptr noundef %uid, ptr noundef %gid) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rps_dev_flow_table_release(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -4
  tail call void @vfree(ptr noundef %add.ptr) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_queue_attr_show(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.rx_queue_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr3 = getelementptr i8, ptr %kobj, i32 -136
  %call = tail call i32 %1(ptr noundef %add.ptr3, ptr noundef %buf) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_queue_attr_store(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.rx_queue_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr3 = getelementptr i8, ptr %kobj, i32 -136
  %call = tail call i32 %1(ptr noundef %add.ptr3, ptr noundef %buf, i32 noundef %count) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_rps_map(ptr noundef %queue, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mask = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #16
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mask, align 4, !annotation !378
  %call = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %mask, i32 noundef 3264) #16
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !379
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %rps_map = getelementptr inbounds %struct.netdev_rx_queue, ptr %queue, i32 0, i32 1
  %5 = ptrtoint ptr %rps_map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %rps_map, align 128
  %call2 = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true5

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b27 = load i1, ptr @show_rps_map.__warned, align 1
  br i1 %.b27, label %land.lhs.true5.do.end10_crit_edge, label %if.then7

land.lhs.true5.do.end10_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @show_rps_map.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 809, ptr noundef nonnull @.str.6) #16
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %land.lhs.true5.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %do.end10.if.end15_crit_edge, label %for.cond.preheader

do.end10.if.end15_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

for.cond.preheader:                               ; preds = %do.end10
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp37.not = icmp eq i32 %8, 0
  br i1 %cmp37.not, label %for.cond.preheader.if.end15_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end15_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

for.body:                                         ; preds = %cpumask_set_cpu.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %cpumask_set_cpu.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rps_map, ptr %6, i32 0, i32 2, i32 %i.038
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %10 to i32
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp.not.i.i.i = icmp ugt i32 %13, %conv
  br i1 %cmp.not.i.i.i, label %for.body.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

for.body.cpumask_set_cpu.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %for.body
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !377

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %for.body.cpumask_set_cpu.exit_crit_edge
  call void @_set_bit(i32 noundef %conv, ptr noundef %12) #16
  %inc = add nuw i32 %i.038, 1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %6, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %cpumask_set_cpu.exit.for.body_crit_edge, label %cpumask_set_cpu.exit.if.end15_crit_edge

cpumask_set_cpu.exit.if.end15_crit_edge:          ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

cpumask_set_cpu.exit.for.body_crit_edge:          ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end15:                                         ; preds = %cpumask_set_cpu.exit.if.end15_crit_edge, %for.cond.preheader.if.end15_crit_edge, %do.end10.if.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mask, align 4
  %call16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %16, ptr noundef %18)
  %call.i28 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i28, label %if.end15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i31

if.end15.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i31:                                ; preds = %if.end15
  %call1.i29 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29)
  %tobool.not.i30 = icmp eq i32 %call1.i29, 0
  br i1 %tobool.not.i30, label %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i33

land.lhs.true.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i33:                               ; preds = %land.lhs.true.i31
  %.b4.i32 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32, label %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, label %if.then.i34

land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i34:                                      ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i34, %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, %if.end15.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !380
  %19 = call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i.i.i.i35 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i35 to ptr
  %preempt_count.i.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i36, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i36, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %23 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mask, align 4
  call void @free_cpumask_var(ptr noundef %24) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call16)
  %cmp17 = icmp ult i32 %call16, 4096
  %spec.select = select i1 %cmp17, i32 %call16, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %rcu_read_unlock.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_rps_map(ptr noundef %queue, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %mask = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #16
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mask, align 4, !annotation !378
  %call = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call zeroext i1 @alloc_cpumask_var(ptr noundef nonnull %mask, i32 noundef 3264) #16
  br i1 %call1, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call4 = call i32 @bitmap_parse(ptr noundef %buf, i32 noundef %len, ptr noundef %2, i32 noundef %3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mask, align 4
  br i1 %tobool.not, label %cpumask_empty.exit, label %if.end3.cleanup.sink.split_crit_edge

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

cpumask_empty.exit:                               ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = call i32 @_find_first_bit_be(ptr noundef %5, i32 noundef %6) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %6)
  %cmp4.i.i = icmp eq i32 %call.i.i, %6
  br i1 %cmp4.i.i, label %cpumask_empty.exit.if.end.i.i140_crit_edge, label %if.then8

cpumask_empty.exit.if.end.i.i140_crit_edge:       ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i140

if.then8:                                         ; preds = %cpumask_empty.exit
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %call9 = call ptr @housekeeping_cpumask(i32 noundef 96) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i122 = call i32 @__bitmap_and(ptr noundef %8, ptr noundef %8, ptr noundef %call9, i32 noundef %9) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mask, align 4
  %call.i.i130 = call i32 @_find_first_bit_be(ptr noundef %12, i32 noundef %10) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i130, i32 %10)
  %cmp4.i.i131 = icmp eq i32 %call.i.i130, %10
  br i1 %cmp4.i.i131, label %if.then12, label %if.then8.if.end.i.i140_crit_edge

if.then8.if.end.i.i140_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i140

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mask, align 4
  br label %cleanup.sink.split

if.end.i.i140:                                    ; preds = %if.then8.if.end.i.i140_crit_edge, %cpumask_empty.exit.if.end.i.i140_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mask, align 4
  %call4.i.i = call i32 @__bitmap_weight(ptr noundef %17, i32 noundef %15) #16
  %mul = shl i32 %call4.i.i, 1
  %add = add i32 %mul, 12
  %18 = call i32 @llvm.umax.i32(i32 %add, i32 128)
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #19
  %tobool17.not = icmp eq ptr %call9.i.i, null
  %19 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mask, align 4
  br i1 %tobool17.not, label %if.end.i.i140.cleanup.sink.split_crit_edge, label %for.cond.preheader

if.end.i.i140.cleanup.sink.split_crit_edge:       ; preds = %if.end.i.i140
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end.i.i140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %call20144 = call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %20, ptr noundef nonnull @__cpu_online_mask) #20
  call void @__sanitizer_cov_trace_cmp4(i32 %call20144, i32 %21)
  %cmp21145 = icmp ult i32 %call20144, %21
  br i1 %cmp21145, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.else_crit_edge

for.cond.preheader.if.else_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call20147 = phi i32 [ %call20, %for.body.for.body_crit_edge ], [ %call20144, %for.cond.preheader.for.body_crit_edge ]
  %i.0146 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %conv = trunc i32 %call20147 to i16
  %inc = add i32 %i.0146, 1
  %arrayidx = getelementptr %struct.rps_map, ptr %call9.i.i, i32 0, i32 2, i32 %i.0146
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv, ptr %arrayidx, align 2
  %call20 = call i32 @cpumask_next_and(i32 noundef %call20147, ptr noundef %20, ptr noundef nonnull @__cpu_online_mask) #20
  %cmp21 = icmp ult i32 %call20, %21
  br i1 %cmp21, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool22.not = icmp eq i32 %inc, 0
  br i1 %tobool22.not, label %for.end.if.else_crit_edge, label %if.then23

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %inc, ptr %call9.i.i, align 128
  br label %if.end25

if.else:                                          ; preds = %for.end.if.else_crit_edge, %for.cond.preheader.if.else_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #16
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then23
  %map.0 = phi ptr [ %call9.i.i, %if.then23 ], [ null, %if.else ]
  call void @mutex_lock_nested(ptr noundef nonnull @store_rps_map.rps_map_mutex, i32 noundef 0) #16
  %call26 = call zeroext i1 @mutex_is_locked(ptr noundef nonnull @store_rps_map.rps_map_mutex) #16
  br i1 %call26, label %if.end25.do.end_crit_edge, label %land.lhs.true

if.end25.do.end_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %if.end25
  %call27 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true29

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true29:                                  ; preds = %land.lhs.true
  %.b116 = load i1, ptr @store_rps_map.__warned, align 1
  br i1 %.b116, label %land.lhs.true29.do.end_crit_edge, label %if.then31

land.lhs.true29.do.end_crit_edge:                 ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @store_rps_map.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 871, ptr noundef nonnull @.str.14) #16
  br label %do.end

do.end:                                           ; preds = %if.then31, %land.lhs.true29.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end25.do.end_crit_edge
  %rps_map = getelementptr inbounds %struct.netdev_rx_queue, ptr %queue, i32 0, i32 1
  %24 = ptrtoint ptr %rps_map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rps_map, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !381
  %26 = ptrtoint ptr %rps_map to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %map.0, ptr %rps_map, align 128
  %tobool75.not = icmp eq ptr %map.0, null
  br i1 %tobool75.not, label %do.end.if.end77_crit_edge, label %if.then76

do.end.if.end77_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77

if.then76:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @static_key_slow_inc(ptr noundef nonnull @rps_needed) #16
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %do.end.if.end77_crit_edge
  %tobool78.not = icmp eq ptr %25, null
  br i1 %tobool78.not, label %if.end92.critedge, label %if.then79

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  call void @static_key_slow_dec(ptr noundef nonnull @rps_needed) #16
  call void @mutex_unlock(ptr noundef nonnull @store_rps_map.rps_map_mutex) #16
  %rcu = getelementptr inbounds %struct.rps_map, ptr %25, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 4 to ptr)) #16
  br label %if.end92

if.end92.critedge:                                ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  call void @mutex_unlock(ptr noundef nonnull @store_rps_map.rps_map_mutex) #16
  br label %if.end92

if.end92:                                         ; preds = %if.end92.critedge, %if.then79
  %27 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mask, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end92, %if.end.i.i140.cleanup.sink.split_crit_edge, %if.then12, %if.end3.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %28, %if.end92 ], [ %14, %if.then12 ], [ %5, %if.end3.cleanup.sink.split_crit_edge ], [ %20, %if.end.i.i140.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %len, %if.end92 ], [ -22, %if.then12 ], [ %call4, %if.end3.cleanup.sink.split_crit_edge ], [ -12, %if.end.i.i140.cleanup.sink.split_crit_edge ]
  call void @free_cpumask_var(ptr noundef %.sink) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @alloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @housekeeping_cpumask(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_inc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_dec(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_rps_dev_flow_table_cnt(ptr noundef %queue, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !379
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %rps_flow_table = getelementptr inbounds %struct.netdev_rx_queue, ptr %queue, i32 0, i32 2
  %4 = ptrtoint ptr %rps_flow_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %rps_flow_table, align 4
  %call = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b14 = load i1, ptr @show_rps_dev_flow_table_cnt.__warned, align 1
  br i1 %.b14, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @show_rps_dev_flow_table_cnt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 895, ptr noundef nonnull @.str.6) #16
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.if.end11_crit_edge, label %if.then10

do.end7.if.end11_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add = add i32 %7, 1
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.end7.if.end11_crit_edge
  %val.0 = phi i32 [ %add, %if.then10 ], [ 0, %do.end7.if.end11_crit_edge ]
  %call.i15 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i15, label %if.end11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

if.end11.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %if.end11
  %call1.i16 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %if.end11.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !380
  %8 = tail call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i.i.i.i22 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %val.0)
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_rps_dev_flow_table_cnt(ptr noundef %queue, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #16
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %count, align 4, !annotation !378
  %call = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %count) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end3.if.end18_crit_edge, label %if.then4

if.end3.if.end18_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then4:                                         ; preds = %if.end3
  %sub = add i32 %2, -1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then4
  %mask.0 = phi i32 [ %sub, %if.then4 ], [ %or, %while.cond.while.cond_crit_edge ]
  %shr = lshr i32 %mask.0, 1
  %or = or i32 %shr, %mask.0
  %cmp5.not = icmp eq i32 %or, %mask.0
  br i1 %cmp5.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870909, i32 %mask.0)
  %cmp8 = icmp ugt i32 %mask.0, 536870909
  br i1 %cmp8, label %while.end.cleanup_crit_edge, label %if.end10

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %while.end
  %add = shl nuw i32 %mask.0, 3
  %add11 = add nuw i32 %add, 20
  %call12 = call noalias ptr @vmalloc(i32 noundef %add11) #19
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %3 = ptrtoint ptr %call12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mask.0, ptr %call12, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end15
  %storemerge92 = phi i32 [ 0, %if.end15 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rps_dev_flow_table, ptr %call12, i32 0, i32 2, i32 %storemerge92
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %arrayidx, align 4
  %inc = add i32 %storemerge92, 1
  %cmp17.not = icmp ugt i32 %inc, %mask.0
  br i1 %cmp17.not, label %if.end18.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end18.loopexit:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc, ptr %count, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end18.loopexit, %if.end3.if.end18_crit_edge
  %table.0 = phi ptr [ null, %if.end3.if.end18_crit_edge ], [ %call12, %if.end18.loopexit ]
  call void @_raw_spin_lock(ptr noundef nonnull @store_rps_dev_flow_table_cnt.rps_dev_flow_lock) #16
  %call.i91 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @store_rps_dev_flow_table_cnt.rps_dev_flow_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool20.not = icmp eq i32 %call.i91, 0
  br i1 %tobool20.not, label %land.lhs.true, label %if.end18.do.end_crit_edge

if.end18.do.end_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %if.end18
  %call21 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true23

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true23:                                  ; preds = %land.lhs.true
  %.b90 = load i1, ptr @store_rps_dev_flow_table_cnt.__warned, align 1
  br i1 %.b90, label %land.lhs.true23.do.end_crit_edge, label %if.then25

land.lhs.true23.do.end_crit_edge:                 ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @store_rps_dev_flow_table_cnt.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 959, ptr noundef nonnull @.str.14) #16
  br label %do.end

do.end:                                           ; preds = %if.then25, %land.lhs.true23.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end18.do.end_crit_edge
  %rps_flow_table = getelementptr inbounds %struct.netdev_rx_queue, ptr %queue, i32 0, i32 2
  %6 = ptrtoint ptr %rps_flow_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rps_flow_table, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !382
  %8 = ptrtoint ptr %rps_flow_table to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %table.0, ptr %rps_flow_table, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @store_rps_dev_flow_table_cnt.rps_dev_flow_lock) #16
  %tobool67.not = icmp eq ptr %7, null
  br i1 %tobool67.not, label %do.end.cleanup_crit_edge, label %if.then68

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then68:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %rcu = getelementptr inbounds %struct.rps_dev_flow_table, ptr %7, i32 0, i32 1
  call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @rps_dev_flow_table_release) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %do.end.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ -22, %while.end.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ %len, %if.then68 ], [ %len, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #16
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_queue_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -16
  %0 = call ptr @memset(ptr %kobj, i32 0, i32 136)
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 128
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.dev_put_track.exit_crit_edge, label %do.body1.i.i

entry.dev_put_track.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %entry
  %dev_tracker = getelementptr i8, ptr %kobj, i32 -12
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #16
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !372
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 118
  %4 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add13.i.i = add i32 %15, -1
  store i32 %add13.i.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !373
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !374

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #16, !srcloc !375
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %entry.dev_put_track.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @netdev_queue_namespace(ptr nocapture noundef readonly %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %dev2 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  %class = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 33
  %2 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %class, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ns_type = getelementptr inbounds %struct.class, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns_type, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %namespace = getelementptr inbounds %struct.class, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %namespace to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %namespace, align 4
  %call = tail call ptr %7(ptr noundef %dev2) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ns.0 = phi ptr [ %call, %if.then ], [ null, %land.lhs.true.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ]
  ret ptr %ns.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_queue_get_ownership(ptr nocapture noundef readonly %kobj, ptr noundef %uid, ptr noundef %gid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -16
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %dev2.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  %class.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 33
  %2 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %class.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.netdev_queue_namespace.exit_crit_edge, label %land.lhs.true.i

entry.netdev_queue_namespace.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_queue_namespace.exit

land.lhs.true.i:                                  ; preds = %entry
  %ns_type.i = getelementptr inbounds %struct.class, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ns_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns_type.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.netdev_queue_namespace.exit_crit_edge, label %if.then.i

land.lhs.true.i.netdev_queue_namespace.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_queue_namespace.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %namespace.i = getelementptr inbounds %struct.class, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %namespace.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %namespace.i, align 4
  %call.i = tail call ptr %7(ptr noundef %dev2.i) #16
  br label %netdev_queue_namespace.exit

netdev_queue_namespace.exit:                      ; preds = %if.then.i, %land.lhs.true.i.netdev_queue_namespace.exit_crit_edge, %entry.netdev_queue_namespace.exit_crit_edge
  %ns.0.i = phi ptr [ %call.i, %if.then.i ], [ null, %land.lhs.true.i.netdev_queue_namespace.exit_crit_edge ], [ null, %entry.netdev_queue_namespace.exit_crit_edge ]
  tail call void @net_ns_get_ownership(ptr noundef %ns.0.i, ptr noundef %uid, ptr noundef %gid) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_queue_attr_show(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.netdev_queue_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr3 = getelementptr i8, ptr %kobj, i32 -16
  %call = tail call i32 %1(ptr noundef %add.ptr3, ptr noundef %buf) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_queue_attr_store(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.netdev_queue_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr3 = getelementptr i8, ptr %kobj, i32 -16
  %call = tail call i32 %1(ptr noundef %add.ptr3, ptr noundef %buf, i32 noundef %count) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_timeout_show(ptr noundef %queue, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_timeout1 = getelementptr inbounds %struct.netdev_queue, ptr %queue, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %trans_timeout1, i32 noundef 4) #16
  %0 = ptrtoint ptr %trans_timeout1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %trans_timeout1, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_ulong, i32 noundef %1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @traffic_class_show(ptr noundef %queue, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 128
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %2 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp ugt i32 %3, 1
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %4 = tail call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %9) #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue, align 128
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i, align 128
  %sub.ptr.lhs.cast.i = ptrtoint ptr %queue to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 640
  %num_tx_queues.i35 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 104
  %14 = ptrtoint ptr %num_tx_queues.i35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_tx_queues.i35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %15)
  %cmp.not.i = icmp ult i32 %sub.ptr.div.i, %15
  br i1 %cmp.not.i, label %get_netdev_queue_index.exit, label %do.body3.i, !prof !377

do.body3.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/net-sysfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1207, 0\0A.popsection", ""() #16, !srcloc !383
  unreachable

get_netdev_queue_index.exit:                      ; preds = %if.end5
  %_tx.i36 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i36, align 128
  %sb_dev = getelementptr %struct.netdev_queue, ptr %17, i32 %sub.ptr.div.i, i32 7
  %18 = ptrtoint ptr %sb_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sb_dev, align 32
  %tobool8.not = icmp eq ptr %19, null
  %spec.select = select i1 %tobool8.not, ptr %1, ptr %19
  %num_tc9 = getelementptr inbounds %struct.net_device, ptr %spec.select, i32 0, i32 140
  %20 = ptrtoint ptr %num_tc9 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %num_tc9, align 4
  %conv = sext i16 %21 to i32
  %call10 = tail call i32 @netdev_txq_to_tc(ptr noundef %spec.select, i32 noundef %sub.ptr.div.i) #16
  tail call void @rtnl_unlock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %get_netdev_queue_index.exit.cleanup_crit_edge, label %if.end13

get_netdev_queue_index.exit.cleanup_crit_edge:    ; preds = %get_netdev_queue_index.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13:                                         ; preds = %get_netdev_queue_index.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp14 = icmp slt i16 %21, 0
  br i1 %cmp14, label %cond.true16, label %cond.false18

cond.true16:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %call17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %call10, i32 noundef %conv)
  br label %cleanup

cond.false18:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %call19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %call10)
  br label %cleanup

cleanup:                                          ; preds = %cond.false18, %cond.true16, %get_netdev_queue_index.exit.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -513, %if.then3 ], [ -2, %entry.cleanup_crit_edge ], [ -22, %get_netdev_queue_index.exit.cleanup_crit_edge ], [ %call17, %cond.true16 ], [ %call19, %cond.false18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_trylock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_txq_to_tc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xps_cpus_show(ptr noundef %queue, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 128
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %2 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp ugt i32 %3, 1
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i, align 128
  %sub.ptr.lhs.cast.i = ptrtoint ptr %queue to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 640
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %3)
  %cmp.not.i = icmp ult i32 %sub.ptr.div.i, %3
  br i1 %cmp.not.i, label %get_netdev_queue_index.exit, label %do.body3.i, !prof !377

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/net-sysfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1207, 0\0A.popsection", ""() #16, !srcloc !383
  unreachable

get_netdev_queue_index.exit:                      ; preds = %if.end
  %call3 = tail call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %get_netdev_queue_index.exit
  call void @__sanitizer_cov_trace_pc() #18
  %6 = tail call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %11) #16
  br label %cleanup

if.end6:                                          ; preds = %get_netdev_queue_index.exit
  %12 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i, align 128
  %sb_dev = getelementptr %struct.netdev_queue, ptr %13, i32 %sub.ptr.div.i, i32 7
  %14 = ptrtoint ptr %sb_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sb_dev, align 32
  %tobool8.not = icmp eq ptr %15, null
  %spec.select = select i1 %tobool8.not, ptr %1, ptr %15
  %call9 = tail call i32 @netdev_txq_to_tc(ptr noundef %spec.select, i32 noundef %sub.ptr.div.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @rtnl_unlock() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %dev12 = getelementptr inbounds %struct.net_device, ptr %spec.select, i32 0, i32 133
  %call13 = tail call ptr @get_device(ptr noundef %dev12) #16
  tail call void @rtnl_unlock() #16
  %call14 = tail call fastcc i32 @xps_queue_show(ptr noundef %spec.select, i32 noundef %sub.ptr.div.i, i32 noundef %call9, ptr noundef %buf, i32 noundef 0)
  tail call void @put_device(ptr noundef %dev12) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then10 ], [ %call14, %if.end11 ], [ -513, %if.then4 ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xps_cpus_store(ptr noundef %queue, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %mask = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #16
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %mask, align 4, !annotation !378
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %3 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp ugt i32 %4, 1
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call2, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call zeroext i1 @alloc_cpumask_var(ptr noundef nonnull %mask, i32 noundef 3264) #16
  br i1 %call5, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %5 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queue, align 128
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 103
  %7 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i, align 128
  %sub.ptr.lhs.cast.i = ptrtoint ptr %queue to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 640
  %num_tx_queues.i27 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 104
  %9 = ptrtoint ptr %num_tx_queues.i27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_tx_queues.i27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %10)
  %cmp.not.i = icmp ult i32 %sub.ptr.div.i, %10
  br i1 %cmp.not.i, label %get_netdev_queue_index.exit, label %do.body3.i, !prof !377

do.body3.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/net-sysfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1207, 0\0A.popsection", ""() #16, !srcloc !383
  unreachable

get_netdev_queue_index.exit:                      ; preds = %if.end7
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %call9 = call i32 @bitmap_parse(ptr noundef %buf, i32 noundef %len, ptr noundef %12, i32 noundef %13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %get_netdev_queue_index.exit
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mask, align 4
  call void @free_cpumask_var(ptr noundef %15) #16
  br label %cleanup

if.end11:                                         ; preds = %get_netdev_queue_index.exit
  %call12 = call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mask, align 4
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  call void @free_cpumask_var(ptr noundef %17) #16
  %18 = call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stack.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %23) #16
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %conv = trunc i32 %sub.ptr.div.i to i16
  %call17 = call i32 @netif_set_xps_queue(ptr noundef %1, ptr noundef %17, i16 noundef zeroext %conv) #16
  call void @rtnl_unlock() #16
  %24 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mask, align 4
  call void @free_cpumask_var(ptr noundef %25) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  %spec.select = select i1 %tobool18.not, i32 %len, i32 %call17
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %if.then10, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then10 ], [ %spec.select, %if.end16 ], [ -513, %if.then14 ], [ -2, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xps_queue_show(ptr noundef %dev, i32 noundef %index, i32 noundef %tc, ptr noundef %buf, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !379
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %arrayidx = getelementptr %struct.net_device, ptr %dev, i32 0, i32 110, i32 %type
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b97 = load i1, ptr @xps_queue_show.__warned, align 1
  br i1 %.b97, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @xps_queue_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1416, ptr noundef nonnull @.str.6) #16
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  %nr_ids10 = getelementptr inbounds %struct.xps_dev_maps, ptr %5, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  %num_rx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 88
  %spec.select98 = select i1 %cmp, ptr @nr_cpu_ids, ptr %num_rx_queues
  %cond14.in = select i1 %tobool9.not, ptr %spec.select98, ptr %nr_ids10
  %6 = ptrtoint ptr %cond14.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond14 = load i32, ptr %cond14.in, align 4
  %call15 = tail call ptr @bitmap_zalloc(i32 noundef %cond14, i32 noundef 2048) #16
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %do.end7
  %call.i99 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i99, label %if.then17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i102

if.then17.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i102:                               ; preds = %if.then17
  %call1.i100 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i100)
  %tobool.not.i101 = icmp eq i32 %call1.i100, 0
  br i1 %tobool.not.i101, label %land.lhs.true.i102.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i104

land.lhs.true.i102.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i102
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i104:                              ; preds = %land.lhs.true.i102
  %.b4.i103 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i103, label %land.lhs.true2.i104.rcu_read_unlock.exit_crit_edge, label %if.then.i105

land.lhs.true2.i104.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i104
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i105:                                     ; preds = %land.lhs.true2.i104
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i105, %land.lhs.true2.i104.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i102.rcu_read_unlock.exit_crit_edge, %if.then17.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !380
  %7 = tail call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i.i.i.i106 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i106 to ptr
  %preempt_count.i.i.i.i107 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i107, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i107, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup69

if.end18:                                         ; preds = %do.end7
  br i1 %tobool9.not, label %if.end18.out_no_maps_crit_edge, label %lor.lhs.false

if.end18.out_no_maps_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_no_maps

lor.lhs.false:                                    ; preds = %if.end18
  %num_tc = getelementptr inbounds %struct.xps_dev_maps, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %num_tc to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_tc, align 4
  %conv = sext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %tc)
  %cmp20.not = icmp sgt i32 %conv, %tc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond14)
  %cmp24119 = icmp ne i32 %cond14, 0
  %or.cond = and i1 %cmp20.not, %cmp24119
  br i1 %or.cond, label %lor.lhs.false.for.body_crit_edge, label %lor.lhs.false.out_no_maps_crit_edge

lor.lhs.false.out_no_maps_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_no_maps

lor.lhs.false.for.body_crit_edge:                 ; preds = %lor.lhs.false
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %lor.lhs.false.for.body_crit_edge
  %j.0120 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %lor.lhs.false.for.body_crit_edge ]
  %13 = ptrtoint ptr %num_tc to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_tc, align 4
  %conv27 = sext i16 %14 to i32
  %mul = mul i32 %j.0120, %conv27
  %add = add i32 %mul, %tc
  %arrayidx32 = getelementptr %struct.xps_dev_maps, ptr %5, i32 0, i32 3, i32 %add
  %15 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx32, align 4
  %call34 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true36, label %for.body.do.end44_crit_edge

for.body.do.end44_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end44

land.lhs.true36:                                  ; preds = %for.body
  %call37 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true36.do.end44_crit_edge, label %land.lhs.true39

land.lhs.true36.do.end44_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end44

land.lhs.true39:                                  ; preds = %land.lhs.true36
  %.b9596 = load i1, ptr @xps_queue_show.__warned.24, align 1
  br i1 %.b9596, label %land.lhs.true39.do.end44_crit_edge, label %if.then41

land.lhs.true39.do.end44_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end44

if.then41:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @xps_queue_show.__warned.24, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1437, ptr noundef nonnull @.str.6) #16
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %land.lhs.true39.do.end44_crit_edge, %land.lhs.true36.do.end44_crit_edge, %for.body.do.end44_crit_edge
  %tobool46.not = icmp eq ptr %16, null
  br i1 %tobool46.not, label %do.end44.cleanup_crit_edge, label %if.end48

do.end44.cleanup_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end48:                                         ; preds = %do.end44
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  br label %for.cond50

for.cond50:                                       ; preds = %for.body52.for.cond50_crit_edge, %if.end48
  %i.0 = phi i32 [ %18, %if.end48 ], [ %dec, %for.body52.for.cond50_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %tobool51.not = icmp eq i32 %i.0, 0
  br i1 %tobool51.not, label %for.cond50.cleanup_crit_edge, label %for.body52

for.cond50.cleanup_crit_edge:                     ; preds = %for.cond50
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body52:                                       ; preds = %for.cond50
  %dec = add i32 %i.0, -1
  %arrayidx53 = getelementptr %struct.xps_map, ptr %16, i32 0, i32 3, i32 %dec
  %19 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx53, align 2
  %conv54 = zext i16 %20 to i32
  %cmp55 = icmp eq i32 %conv54, %index
  br i1 %cmp55, label %if.then57, label %for.body52.for.cond50_crit_edge

for.body52.for.cond50_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond50

if.then57:                                        ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #18
  %rem.i = and i32 %j.0120, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %j.0120, 5
  %add.ptr.i = getelementptr i32, ptr %call15, i32 %div2.i
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %22, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %for.cond50.cleanup_crit_edge, %do.end44.cleanup_crit_edge
  %inc = add nuw i32 %j.0120, 1
  %exitcond.not = icmp eq i32 %inc, %cond14
  br i1 %exitcond.not, label %cleanup.out_no_maps_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup.out_no_maps_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_no_maps

out_no_maps:                                      ; preds = %cleanup.out_no_maps_crit_edge, %lor.lhs.false.out_no_maps_crit_edge, %if.end18.out_no_maps_crit_edge
  %call.i108 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i108, label %out_no_maps.rcu_read_unlock.exit118_crit_edge, label %land.lhs.true.i111

out_no_maps.rcu_read_unlock.exit118_crit_edge:    ; preds = %out_no_maps
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit118

land.lhs.true.i111:                               ; preds = %out_no_maps
  %call1.i109 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i109)
  %tobool.not.i110 = icmp eq i32 %call1.i109, 0
  br i1 %tobool.not.i110, label %land.lhs.true.i111.rcu_read_unlock.exit118_crit_edge, label %land.lhs.true2.i113

land.lhs.true.i111.rcu_read_unlock.exit118_crit_edge: ; preds = %land.lhs.true.i111
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit118

land.lhs.true2.i113:                              ; preds = %land.lhs.true.i111
  %.b4.i112 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i112, label %land.lhs.true2.i113.rcu_read_unlock.exit118_crit_edge, label %if.then.i114

land.lhs.true2.i113.rcu_read_unlock.exit118_crit_edge: ; preds = %land.lhs.true2.i113
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit118

if.then.i114:                                     ; preds = %land.lhs.true2.i113
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #16
  br label %rcu_read_unlock.exit118

rcu_read_unlock.exit118:                          ; preds = %if.then.i114, %land.lhs.true2.i113.rcu_read_unlock.exit118_crit_edge, %land.lhs.true.i111.rcu_read_unlock.exit118_crit_edge, %out_no_maps.rcu_read_unlock.exit118_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !380
  %23 = tail call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i.i.i.i115 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i115 to ptr
  %preempt_count.i.i.i.i116 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i116, align 4
  %sub.i.i.i117 = add i32 %26, -1
  store volatile i32 %sub.i.i.i117, ptr %preempt_count.i.i.i.i116, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %call62 = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext false, ptr noundef %buf, ptr noundef nonnull %call15, i32 noundef %cond14) #16
  tail call void @bitmap_free(ptr noundef nonnull %call15) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call62)
  %cmp63 = icmp ult i32 %call62, 4096
  %spec.select = select i1 %cmp63, i32 %call62, i32 -22
  br label %cleanup69

cleanup69:                                        ; preds = %rcu_read_unlock.exit118, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %spec.select, %rcu_read_unlock.exit118 ], [ -12, %rcu_read_unlock.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_xps_queue(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xps_rxqs_show(ptr noundef %queue, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 128
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i, align 128
  %sub.ptr.lhs.cast.i = ptrtoint ptr %queue to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 640
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %4 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %5)
  %cmp.not.i = icmp ult i32 %sub.ptr.div.i, %5
  br i1 %cmp.not.i, label %get_netdev_queue_index.exit, label %do.body3.i, !prof !377

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/net-sysfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1207, 0\0A.popsection", ""() #16, !srcloc !383
  unreachable

get_netdev_queue_index.exit:                      ; preds = %entry
  %call2 = tail call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %get_netdev_queue_index.exit
  call void @__sanitizer_cov_trace_pc() #18
  %6 = tail call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %11) #16
  br label %cleanup

if.end:                                           ; preds = %get_netdev_queue_index.exit
  %call4 = tail call i32 @netdev_txq_to_tc(ptr noundef %1, i32 noundef %sub.ptr.div.i) #16
  tail call void @rtnl_unlock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call7 = tail call fastcc i32 @xps_queue_show(ptr noundef %1, i32 noundef %sub.ptr.div.i, i32 noundef %call4, ptr noundef %buf, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -513, %if.then ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xps_rxqs_store(ptr noundef %queue, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 128
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ns, align 4
  %call2 = tail call zeroext i1 @ns_capable(ptr noundef %5, i32 noundef 12) #16
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_rx_queues = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 88
  %6 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_rx_queues, align 8
  %call3 = tail call ptr @bitmap_zalloc(i32 noundef %7, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue, align 128
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i, align 128
  %sub.ptr.lhs.cast.i = ptrtoint ptr %queue to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 640
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 104
  %12 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %13)
  %cmp.not.i = icmp ult i32 %sub.ptr.div.i, %13
  br i1 %cmp.not.i, label %get_netdev_queue_index.exit, label %do.body3.i, !prof !377

do.body3.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/net-sysfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1207, 0\0A.popsection", ""() #16, !srcloc !383
  unreachable

get_netdev_queue_index.exit:                      ; preds = %if.end5
  %14 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_rx_queues, align 8
  %call8 = tail call i32 @bitmap_parse(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull %call3, i32 noundef %15) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %get_netdev_queue_index.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @bitmap_free(ptr noundef nonnull %call3) #16
  br label %cleanup

if.end11:                                         ; preds = %get_netdev_queue_index.exit
  %call12 = tail call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @bitmap_free(ptr noundef nonnull %call3) #16
  %16 = tail call i32 @llvm.read_register.i32(metadata !362) #16
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
  tail call void @_set_bit(i32 noundef 0, ptr noundef %21) #16
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @cpus_read_lock() #16
  %conv = trunc i32 %sub.ptr.div.i to i16
  %call17 = tail call i32 @__netif_set_xps_queue(ptr noundef %1, ptr noundef nonnull %call3, i16 noundef zeroext %conv, i32 noundef 1) #16
  tail call void @cpus_read_unlock() #16
  tail call void @rtnl_unlock() #16
  tail call void @bitmap_free(ptr noundef nonnull %call3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  %spec.select = select i1 %tobool18.not, i32 %len, i32 %call17
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then10 ], [ %spec.select, %if.end16 ], [ -513, %if.then14 ], [ -1, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netif_set_xps_queue(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_maxrate_show(ptr nocapture noundef readonly %queue, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_maxrate = getelementptr inbounds %struct.netdev_queue, ptr %queue, i32 0, i32 5
  %0 = ptrtoint ptr %tx_maxrate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_maxrate, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_maxrate_store(ptr noundef %queue, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 128
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i, align 128
  %sub.ptr.lhs.cast.i = ptrtoint ptr %queue to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 640
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %4 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %5)
  %cmp.not.i = icmp ult i32 %sub.ptr.div.i, %5
  br i1 %cmp.not.i, label %get_netdev_queue_index.exit, label %do.body3.i, !prof !377

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/net-sysfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1207, 0\0A.popsection", ""() #16, !srcloc !383
  unreachable

get_netdev_queue_index.exit:                      ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #16
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rate, align 4
  %call2 = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call2, label %if.end, label %get_netdev_queue_index.exit.cleanup_crit_edge

get_netdev_queue_index.exit.cleanup_crit_edge:    ; preds = %get_netdev_queue_index.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %get_netdev_queue_index.exit
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev_ops, align 8
  %ndo_set_tx_maxrate = getelementptr inbounds %struct.net_device_ops, ptr %8, i32 0, i32 72
  %9 = ptrtoint ptr %ndo_set_tx_maxrate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndo_set_tx_maxrate, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %rate) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %call8 = call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %11 = call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stack.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %16) #16
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %17 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev_ops, align 8
  %ndo_set_tx_maxrate14 = getelementptr inbounds %struct.net_device_ops, ptr %18, i32 0, i32 72
  %19 = ptrtoint ptr %ndo_set_tx_maxrate14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndo_set_tx_maxrate14, align 4
  %tobool15.not = icmp eq ptr %20, null
  br i1 %tobool15.not, label %if.end20.thread, label %if.end20

if.end20.thread:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  call void @rtnl_unlock() #16
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %21 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rate, align 4
  %call19 = call i32 %20(ptr noundef %1, i32 noundef %sub.ptr.div.i, i32 noundef %22) #16
  call void @rtnl_unlock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %if.then22, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rate, align 4
  %tx_maxrate = getelementptr inbounds %struct.netdev_queue, ptr %queue, i32 0, i32 5
  %25 = ptrtoint ptr %tx_maxrate to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tx_maxrate, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end20.cleanup_crit_edge, %if.end20.thread, %if.then10, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %get_netdev_queue_index.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.then22 ], [ -513, %if.then10 ], [ -1, %get_netdev_queue_index.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call.i, %if.end4.cleanup_crit_edge ], [ %call19, %if.end20.cleanup_crit_edge ], [ -95, %if.end20.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bql_show_limit(ptr nocapture noundef readonly %queue, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %limit = getelementptr inbounds %struct.netdev_queue, ptr %queue, i32 0, i32 15, i32 4
  %0 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %limit, align 128
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, i32 noundef %1) #16
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bql_set_limit(ptr nocapture noundef writeonly %queue, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %limit = getelementptr inbounds %struct.netdev_queue, ptr %queue, i32 0, i32 15, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #16
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value.i, align 4, !annotation !378
  %call.i = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(4) @.str.30) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %call1.i = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.31) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %1 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1879048192, ptr %value.i, align 4
  br label %if.end8.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  %call3.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.else.i.bql_set.exit_crit_edge, label %if.end.i

if.else.i.bql_set.exit_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %bql_set.exit

if.end.i:                                         ; preds = %if.else.i
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1879048192, i32 %3)
  %cmp5.i = icmp ugt i32 %3, 1879048192
  br i1 %cmp5.i, label %if.end.i.bql_set.exit_crit_edge, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i

if.end.i.bql_set.exit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %bql_set.exit

if.end8.i:                                        ; preds = %if.end.i.if.end8.i_crit_edge, %if.then.i
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value.i, align 4
  %6 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %limit, align 4
  br label %bql_set.exit

bql_set.exit:                                     ; preds = %if.end8.i, %if.end.i.bql_set.exit_crit_edge, %if.else.i.bql_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end8.i ], [ %call3.i, %if.else.i.bql_set.exit_crit_edge ], [ -22, %if.end.i.bql_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #16
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bql_show_limit_max(ptr nocapture noundef readonly %queue, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %max_limit = getelementptr inbounds %struct.netdev_queue, ptr %queue, i32 0, i32 15, i32 11
  %0 = ptrtoint ptr %max_limit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_limit, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, i32 noundef %1) #16
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bql_set_limit_max(ptr nocapture noundef writeonly %queue, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %max_limit = getelementptr inbounds %struct.netdev_queue, ptr %queue, i32 0, i32 15, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #16
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value.i, align 4, !annotation !378
  %call.i = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(4) @.str.30) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %call1.i = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.31) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %1 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1879048192, ptr %value.i, align 4
  br label %if.end8.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  %call3.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.else.i.bql_set.exit_crit_edge, label %if.end.i

if.else.i.bql_set.exit_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %bql_set.exit

if.end.i:                                         ; preds = %if.else.i
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1879048192, i32 %3)
  %cmp5.i = icmp ugt i32 %3, 1879048192
  br i1 %cmp5.i, label %if.end.i.bql_set.exit_crit_edge, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i

if.end.i.bql_set.exit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %bql_set.exit

if.end8.i:                                        ; preds = %if.end.i.if.end8.i_crit_edge, %if.then.i
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value.i, align 4
  %6 = ptrtoint ptr %max_limit to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %max_limit, align 4
  br label %bql_set.exit

bql_set.exit:                                     ; preds = %if.end8.i, %if.end.i.bql_set.exit_crit_edge, %if.else.i.bql_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end8.i ], [ %call3.i, %if.else.i.bql_set.exit_crit_edge ], [ -22, %if.end.i.bql_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #16
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bql_show_limit_min(ptr nocapture noundef readonly %queue, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %min_limit = getelementptr inbounds %struct.netdev_queue, ptr %queue, i32 0, i32 15, i32 12
  %0 = ptrtoint ptr %min_limit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_limit, align 32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, i32 noundef %1) #16
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bql_set_limit_min(ptr nocapture noundef writeonly %queue, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %min_limit = getelementptr inbounds %struct.netdev_queue, ptr %queue, i32 0, i32 15, i32 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #16
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value.i, align 4, !annotation !378
  %call.i = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(4) @.str.30) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %call1.i = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.31) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %1 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1879048192, ptr %value.i, align 4
  br label %if.end8.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  %call3.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.else.i.bql_set.exit_crit_edge, label %if.end.i

if.else.i.bql_set.exit_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %bql_set.exit

if.end.i:                                         ; preds = %if.else.i
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1879048192, i32 %3)
  %cmp5.i = icmp ugt i32 %3, 1879048192
  br i1 %cmp5.i, label %if.end.i.bql_set.exit_crit_edge, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i

if.end.i.bql_set.exit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %bql_set.exit

if.end8.i:                                        ; preds = %if.end.i.if.end8.i_crit_edge, %if.then.i
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value.i, align 4
  %6 = ptrtoint ptr %min_limit to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %min_limit, align 4
  br label %bql_set.exit

bql_set.exit:                                     ; preds = %if.end8.i, %if.end.i.bql_set.exit_crit_edge, %if.else.i.bql_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end8.i ], [ %call3.i, %if.else.i.bql_set.exit_crit_edge ], [ -22, %if.end.i.bql_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #16
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bql_show_hold_time(ptr nocapture noundef readonly %queue, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %slack_hold_time = getelementptr inbounds %struct.netdev_queue, ptr %queue, i32 0, i32 15, i32 13
  %0 = ptrtoint ptr %slack_hold_time to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slack_hold_time, align 4
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %1) #16
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, i32 noundef %call)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bql_set_hold_time(ptr nocapture noundef writeonly %queue, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #16
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !378
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %2) #16
  %slack_hold_time = getelementptr inbounds %struct.netdev_queue, ptr %queue, i32 0, i32 15, i32 13
  %3 = ptrtoint ptr %slack_hold_time to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call2.i, ptr %slack_hold_time, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.else.i ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bql_show_inflight(ptr nocapture noundef readonly %queue, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dql1 = getelementptr inbounds %struct.netdev_queue, ptr %queue, i32 0, i32 15
  %0 = ptrtoint ptr %dql1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dql1, align 128
  %num_completed = getelementptr inbounds %struct.netdev_queue, ptr %queue, i32 0, i32 15, i32 5
  %2 = ptrtoint ptr %num_completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_completed, align 4
  %sub = sub i32 %1, %3
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, i32 noundef %sub)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_uevent(ptr noundef %d, ptr noundef %env) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %d, i32 -1104
  %call = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.78, ptr noundef %add.ptr) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %ifindex = getelementptr i8, ptr %d, i32 -980
  %0 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ifindex, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.79, i32 noundef %1) #16
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %retval1.0 = phi i32 [ %call, %entry.exit_crit_edge ], [ %call2, %if.end ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_release(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_state = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.load)
  %cmp.not = icmp eq i8 %bf.load, 4
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !377

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/net-sysfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1891, 0\0A.popsection", ""() #16, !srcloc !384
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %d, i32 -1104
  %ifalias = getelementptr i8, ptr %d, i32 -1084
  %1 = ptrtoint ptr %ifalias to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %ifalias, align 4
  tail call void @kfree(ptr noundef %2) #16
  tail call void @netdev_freemem(ptr noundef %add.ptr) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @net_namespace(ptr nocapture noundef readonly %d) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr i8, ptr %d, i32 -28
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net_get_ownership(ptr nocapture noundef readonly %d, ptr noundef %uid, ptr noundef %gid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr i8, ptr %d, i32 -28
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  tail call void @net_ns_get_ownership(ptr noundef %1, ptr noundef %uid, ptr noundef %gid) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @group_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netdev_show.exit_crit_edge, label %if.then.i

entry.netdev_show.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_show.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %group.i = getelementptr i8, ptr %dev, i32 -892
  %1 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %group.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %2) #16
  br label %netdev_show.exit

netdev_show.exit:                                 ; preds = %if.then.i, %entry.netdev_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ -22, %entry.netdev_show.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @group_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %new.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -1104
  %nd_net.i.i = getelementptr i8, ptr %dev, i32 -28
  %0 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new.i) #16
  %2 = ptrtoint ptr %new.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %new.i, align 4, !annotation !378
  %user_ns.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user_ns.i, align 4
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef %4, i32 noundef 12) #16
  br i1 %call1.i, label %if.end.i, label %entry.netdev_store.exit_crit_edge

entry.netdev_store.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_store.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %new.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.netdev_store.exit_crit_edge

if.end.i.netdev_store.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_store.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %5 = call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stack.i.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %10) #16
  br label %netdev_store.exit

if.end9.i:                                        ; preds = %if.end4.i
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %11 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %if.end9.i.if.end16.i_crit_edge, label %if.then12.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %new.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new.i, align 4
  call void @dev_set_group(ptr noundef %add.ptr.i, i32 noundef %13) #16
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end16.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end9.i.if.end16.i_crit_edge ], [ %len, %if.then12.i ]
  call void @rtnl_unlock() #16
  br label %netdev_store.exit

netdev_store.exit:                                ; preds = %if.end16.i, %if.then7.i, %if.end.i.netdev_store.exit_crit_edge, %entry.netdev_store.exit_crit_edge
  %retval.0.i = phi i32 [ -513, %if.then7.i ], [ -1, %entry.netdev_store.exit_crit_edge ], [ %call.i.i, %if.end.i.netdev_store.exit_crit_edge ], [ %ret.0.i, %if.end16.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new.i) #16
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_set_group(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netdev_show.exit_crit_edge, label %if.then.i

entry.netdev_show.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_show.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %type.i = getelementptr i8, ptr %dev, i32 -896
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type.i, align 16
  %conv.i = zext i16 %2 to i32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %conv.i) #16
  br label %netdev_show.exit

netdev_show.exit:                                 ; preds = %if.then.i, %entry.netdev_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ -22, %entry.netdev_show.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netdev_show.exit_crit_edge, label %if.then.i

entry.netdev_show.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_show.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev_id.i = getelementptr i8, ptr %dev, i32 -702
  %1 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %dev_id.i, align 2
  %conv.i = zext i16 %2 to i32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_hex, i32 noundef %conv.i) #16
  br label %netdev_show.exit

netdev_show.exit:                                 ; preds = %if.then.i, %entry.netdev_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ -22, %entry.netdev_show.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_port_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netdev_show.exit_crit_edge, label %if.then.i

entry.netdev_show.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_show.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev_port.i = getelementptr i8, ptr %dev, i32 -700
  %1 = ptrtoint ptr %dev_port.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %dev_port.i, align 4
  %conv.i = zext i16 %2 to i32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %conv.i) #16
  br label %netdev_show.exit

netdev_show.exit:                                 ; preds = %if.then.i, %entry.netdev_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ -22, %entry.netdev_show.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iflink_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -1104
  %call = tail call i32 @dev_get_iflink(ptr noundef %add.ptr) #16
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %call)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_iflink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifindex_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netdev_show.exit_crit_edge, label %if.then.i

entry.netdev_show.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_show.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %ifindex.i = getelementptr i8, ptr %dev, i32 -980
  %1 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ifindex.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %2) #16
  br label %netdev_show.exit

netdev_show.exit:                                 ; preds = %if.then.i, %entry.netdev_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ -22, %entry.netdev_show.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_assign_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %name_assign_type = getelementptr i8, ptr %dev, i32 -893
  %0 = ptrtoint ptr %name_assign_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %name_assign_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %2 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %if.then.netdev_show.exit_crit_edge, label %if.then.i

if.then.netdev_show.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_show.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %name_assign_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %name_assign_type, align 1
  %conv.i = zext i8 %4 to i32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %conv.i) #16
  br label %netdev_show.exit

netdev_show.exit:                                 ; preds = %if.then.i, %if.then.netdev_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ -22, %if.then.netdev_show.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  br label %if.end

if.end:                                           ; preds = %netdev_show.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %ret.0.i, %netdev_show.exit ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @addr_assign_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netdev_show.exit_crit_edge, label %if.then.i

entry.netdev_show.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_show.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %addr_assign_type.i = getelementptr i8, ptr %dev, i32 -708
  %1 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr_assign_type.i, align 4
  %conv.i = zext i8 %2 to i32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %conv.i) #16
  br label %netdev_show.exit

netdev_show.exit:                                 ; preds = %if.then.i, %entry.netdev_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ -22, %entry.netdev_show.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @addr_len_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netdev_show.exit_crit_edge, label %if.then.i

entry.netdev_show.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_show.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %addr_len.i = getelementptr i8, ptr %dev, i32 -707
  %1 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %2 to i32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %conv.i) #16
  br label %netdev_show.exit

netdev_show.exit:                                 ; preds = %if.then.i, %entry.netdev_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ -22, %entry.netdev_show.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @link_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netdev_show.exit_crit_edge, label %if.then.i

entry.netdev_show.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_show.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %link_mode.i = getelementptr i8, ptr %dev, i32 -743
  %1 = ptrtoint ptr %link_mode.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %link_mode.i, align 1
  %conv.i = zext i8 %2 to i32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %conv.i) #16
  br label %netdev_show.exit

netdev_show.exit:                                 ; preds = %if.then.i, %entry.netdev_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ -22, %entry.netdev_show.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @address_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i = getelementptr i8, ptr %dev, i32 -44
  %0 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i)
  %cmp.i = icmp ugt i8 %bf.load.i, 1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev_addr = getelementptr i8, ptr %dev, i32 -528
  %1 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_addr, align 64
  %addr_len = getelementptr i8, ptr %dev, i32 -707
  %3 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %4 to i32
  %call1 = tail call i32 @sysfs_format_mac(ptr noundef %buf, ptr noundef %2, i32 noundef %conv) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then ], [ -22, %entry.if.end_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_format_mac(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @broadcast_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_state.i = getelementptr i8, ptr %dev, i32 -44
  %0 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i)
  %cmp.i = icmp ugt i8 %bf.load.i, 1
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %broadcast = getelementptr i8, ptr %dev, i32 -476
  %addr_len = getelementptr i8, ptr %dev, i32 -707
  %1 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %2 to i32
  %call1 = tail call i32 @sysfs_format_mac(ptr noundef %buf, ptr noundef %broadcast, i32 noundef %conv) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @speed_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %cmd = alloca %struct.ethtool_link_ksettings, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -1104
  %ethtool_ops = getelementptr i8, ptr %dev, i32 -768
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethtool_ops, align 16
  %get_link_ksettings = getelementptr inbounds %struct.ethtool_ops, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %get_link_ksettings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_link_ksettings, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %4 = tail call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %9) #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %state.i = getelementptr i8, ptr %dev, i32 -1068
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end4.if.end13_crit_edge, label %land.lhs.true

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end4
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i20.not = icmp eq i32 %14, 0
  br i1 %tobool.i20.not, label %land.lhs.true.if.end13_crit_edge, label %if.then7

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then7:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %cmd) #16
  %15 = call ptr @memset(ptr %cmd, i32 255, i32 88)
  %call8 = call i32 @__ethtool_get_link_ksettings(ptr noundef %add.ptr, ptr noundef nonnull %cmd) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %16 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed, align 4
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %17)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then7.if.end12_crit_edge
  %ret.0 = phi i32 [ -22, %if.then7.if.end12_crit_edge ], [ %call11, %if.then10 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %cmd) #16
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %land.lhs.true.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end12 ], [ -22, %land.lhs.true.if.end13_crit_edge ], [ -22, %if.end4.if.end13_crit_edge ]
  call void @rtnl_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end13 ], [ -513, %if.then2 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @duplex_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %cmd = alloca %struct.ethtool_link_ksettings, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -1104
  %ethtool_ops = getelementptr i8, ptr %dev, i32 -768
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethtool_ops, align 16
  %get_link_ksettings = getelementptr inbounds %struct.ethtool_ops, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %get_link_ksettings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_link_ksettings, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %4 = tail call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %9) #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %state.i = getelementptr i8, ptr %dev, i32 -1068
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end4.if.end14_crit_edge, label %if.then6

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then6:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %cmd) #16
  %12 = call ptr @memset(ptr %cmd, i32 255, i32 88)
  %call7 = call i32 @__ethtool_get_link_ksettings(ptr noundef %add.ptr, ptr noundef nonnull %cmd) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.then6.if.end13_crit_edge

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  %duplex10 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %13 = ptrtoint ptr %duplex10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %duplex10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %switch.selectcmp = icmp eq i8 %14, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.52, ptr @.str.53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %switch.selectcmp19 = icmp eq i8 %14, 0
  %switch.select20 = select i1 %switch.selectcmp19, ptr @.str.51, ptr %switch.select
  %call12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.54, ptr noundef nonnull %switch.select20)
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.then6.if.end13_crit_edge
  %ret.0 = phi i32 [ -22, %if.then6.if.end13_crit_edge ], [ %call12, %if.then9 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %cmd) #16
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end4.if.end14_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end13 ], [ -22, %if.end4.if.end14_crit_edge ]
  call void @rtnl_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end14 ], [ -513, %if.then2 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dormant_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %dev, i32 -1068
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = lshr i32 %3, 4
  %.lobit = and i32 %4, 1
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %.lobit)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @testing_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %dev, i32 -1068
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = lshr i32 %3, 5
  %.lobit = and i32 %4, 1
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %.lobit)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @operstate_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %operstate1 = getelementptr i8, ptr %dev, i32 -744
  %0 = ptrtoint ptr %operstate1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %operstate1, align 8
  %state.i = getelementptr i8, ptr %dev, i32 -1068
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %spec.select = select i1 %tobool.i.not, i8 2, i8 %1
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %spec.select)
  %cmp = icmp ugt i8 %spec.select, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i8 %spec.select to i32
  %arrayidx = getelementptr [7 x ptr], ptr @operstates, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.54, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carrier_changes_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %carrier_up_count = getelementptr i8, ptr %dev, i32 -784
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %carrier_up_count, i32 noundef 4) #16
  %0 = ptrtoint ptr %carrier_up_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %carrier_up_count, align 4
  %carrier_down_count = getelementptr i8, ptr %dev, i32 -780
  %call.i.i4 = tail call zeroext i1 @__kasan_check_read(ptr noundef %carrier_down_count, i32 noundef 4) #16
  %2 = ptrtoint ptr %carrier_down_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %carrier_down_count, align 4
  %add = add i32 %3, %1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %add)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifalias_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %tmp1 = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -1104
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tmp1) #16
  %0 = call ptr @memset(ptr %tmp1, i32 255, i32 256)
  %call = call i32 @dev_get_alias(ptr noundef %add.ptr, ptr noundef nonnull %tmp1, i32 noundef 256) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.54, ptr noundef nonnull %tmp1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then ], [ %call, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tmp1) #16
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifalias_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -1104
  %nd_net.i = getelementptr i8, ptr %dev, i32 -28
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ns, align 4
  %call1 = tail call zeroext i1 @ns_capable(ptr noundef %3, i32 noundef 12) #16
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not = icmp eq i32 %len, 0
  br i1 %cmp.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %sub = add i32 %len, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp2 = icmp eq i8 %5, 10
  %spec.select = select i1 %cmp2, i32 %sub, i32 %len
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end.if.end5_crit_edge
  %count.0 = phi i32 [ 0, %if.end.if.end5_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call6 = tail call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %6 = tail call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %11) #16
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %reg_state.i = getelementptr i8, ptr %dev, i32 -44
  %12 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i)
  %cmp.i = icmp ugt i8 %bf.load.i, 1
  br i1 %cmp.i, label %if.end9.err_crit_edge, label %if.then12

if.end9.err_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.then12:                                        ; preds = %if.end9
  %call13 = tail call i32 @dev_set_alias(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %count.0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then12.err_crit_edge, label %if.end17

if.then12.err_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.end17:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @netdev_state_change(ptr noundef %add.ptr) #16
  br label %err

err:                                              ; preds = %if.end17, %if.then12.err_crit_edge, %if.end9.err_crit_edge
  %ret.0 = phi i32 [ %call13, %if.then12.err_crit_edge ], [ %len, %if.end17 ], [ 0, %if.end9.err_crit_edge ]
  tail call void @rtnl_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -513, %if.then7 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_alias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_alias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_state_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carrier_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %dev, i32 -1068
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = lshr i32 %3, 2
  %.lobit = and i32 %4, 1
  %5 = xor i32 %.lobit, 1
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carrier_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %new.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr i8, ptr %dev, i32 -984
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %ndo_change_carrier = getelementptr inbounds %struct.net_device_ops, ptr %1, i32 0, i32 66
  %2 = ptrtoint ptr %ndo_change_carrier to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndo_change_carrier, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -1104
  %nd_net.i.i = getelementptr i8, ptr %dev, i32 -28
  %4 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new.i) #16
  %6 = ptrtoint ptr %new.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %new.i, align 4, !annotation !378
  %user_ns.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 11
  %7 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user_ns.i, align 4
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef %8, i32 noundef 12) #16
  br i1 %call1.i, label %if.end.i, label %if.end.netdev_store.exit_crit_edge

if.end.netdev_store.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_store.exit

if.end.i:                                         ; preds = %if.end
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %new.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.netdev_store.exit_crit_edge

if.end.i.netdev_store.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_store.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stack.i.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %14) #16
  br label %netdev_store.exit

if.end9.i:                                        ; preds = %if.end4.i
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %15 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %if.end9.i.if.end16.i_crit_edge, label %if.then12.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end9.i
  %16 = ptrtoint ptr %new.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %new.i, align 4
  %state.i.i = getelementptr i8, ptr %dev, i32 -1068
  %18 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then12.i.if.end16.i_crit_edge, label %change_carrier.exit

if.then12.i.if.end16.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

change_carrier.exit:                              ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i = icmp ne i32 %17, 0
  %call1.i2 = call i32 @dev_change_carrier(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %cmp.i = icmp eq i32 %call1.i2, 0
  %spec.select = select i1 %cmp.i, i32 %len, i32 %call1.i2
  br label %if.end16.i

if.end16.i:                                       ; preds = %change_carrier.exit, %if.then12.i.if.end16.i_crit_edge, %if.end9.i.if.end16.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end9.i.if.end16.i_crit_edge ], [ -22, %if.then12.i.if.end16.i_crit_edge ], [ %spec.select, %change_carrier.exit ]
  call void @rtnl_unlock() #16
  br label %netdev_store.exit

netdev_store.exit:                                ; preds = %if.end16.i, %if.then7.i, %if.end.i.netdev_store.exit_crit_edge, %if.end.netdev_store.exit_crit_edge
  %retval.0.i = phi i32 [ -513, %if.then7.i ], [ -1, %if.end.netdev_store.exit_crit_edge ], [ %call.i.i, %if.end.i.netdev_store.exit_crit_edge ], [ %ret.0.i, %if.end16.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new.i) #16
  br label %cleanup

cleanup:                                          ; preds = %netdev_store.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %netdev_store.exit ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_carrier(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netdev_show.exit_crit_edge, label %if.then.i

entry.netdev_show.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_show.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %mtu.i = getelementptr i8, ptr %dev, i32 -972
  %1 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mtu.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %2) #16
  br label %netdev_show.exit

netdev_show.exit:                                 ; preds = %if.then.i, %entry.netdev_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ -22, %entry.netdev_show.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %new.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -1104
  %nd_net.i.i = getelementptr i8, ptr %dev, i32 -28
  %0 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new.i) #16
  %2 = ptrtoint ptr %new.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %new.i, align 4, !annotation !378
  %user_ns.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user_ns.i, align 4
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef %4, i32 noundef 12) #16
  br i1 %call1.i, label %if.end.i, label %entry.netdev_store.exit_crit_edge

entry.netdev_store.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_store.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %new.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.netdev_store.exit_crit_edge

if.end.i.netdev_store.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_store.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %5 = call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stack.i.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %10) #16
  br label %netdev_store.exit

if.end9.i:                                        ; preds = %if.end4.i
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %11 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %if.end9.i.if.end16.i_crit_edge, label %if.then12.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %new.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new.i, align 4
  %call.i = call i32 @dev_set_mtu(ptr noundef %add.ptr.i, i32 noundef %13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  %spec.select.i = select i1 %cmp.i, i32 %len, i32 %call.i
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end16.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end9.i.if.end16.i_crit_edge ], [ %spec.select.i, %if.then12.i ]
  call void @rtnl_unlock() #16
  br label %netdev_store.exit

netdev_store.exit:                                ; preds = %if.end16.i, %if.then7.i, %if.end.i.netdev_store.exit_crit_edge, %entry.netdev_store.exit_crit_edge
  %retval.0.i = phi i32 [ -513, %if.then7.i ], [ -1, %entry.netdev_store.exit_crit_edge ], [ %call.i.i, %if.end.i.netdev_store.exit_crit_edge ], [ %ret.0.i, %if.end16.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new.i) #16
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flags_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netdev_show.exit_crit_edge, label %if.then.i

entry.netdev_show.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_show.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %flags.i = getelementptr i8, ptr %dev, i32 -1000
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 8
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_hex, i32 noundef %2) #16
  br label %netdev_show.exit

netdev_show.exit:                                 ; preds = %if.then.i, %entry.netdev_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ -22, %entry.netdev_show.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flags_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %new.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -1104
  %nd_net.i.i = getelementptr i8, ptr %dev, i32 -28
  %0 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new.i) #16
  %2 = ptrtoint ptr %new.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %new.i, align 4, !annotation !378
  %user_ns.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user_ns.i, align 4
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef %4, i32 noundef 12) #16
  br i1 %call1.i, label %if.end.i, label %entry.netdev_store.exit_crit_edge

entry.netdev_store.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_store.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %new.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.netdev_store.exit_crit_edge

if.end.i.netdev_store.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_store.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %5 = call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stack.i.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %10) #16
  br label %netdev_store.exit

if.end9.i:                                        ; preds = %if.end4.i
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %11 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %if.end9.i.if.end16.i_crit_edge, label %if.then12.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %new.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new.i, align 4
  %call.i = call i32 @dev_change_flags(ptr noundef %add.ptr.i, i32 noundef %13, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  %spec.select.i = select i1 %cmp.i, i32 %len, i32 %call.i
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end16.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end9.i.if.end16.i_crit_edge ], [ %spec.select.i, %if.then12.i ]
  call void @rtnl_unlock() #16
  br label %netdev_store.exit

netdev_store.exit:                                ; preds = %if.end16.i, %if.then7.i, %if.end.i.netdev_store.exit_crit_edge, %entry.netdev_store.exit_crit_edge
  %retval.0.i = phi i32 [ -513, %if.then7.i ], [ -1, %entry.netdev_store.exit_crit_edge ], [ %call.i.i, %if.end.i.netdev_store.exit_crit_edge ], [ %ret.0.i, %if.end16.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new.i) #16
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_flags(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_queue_len_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netdev_show.exit_crit_edge, label %if.then.i

entry.netdev_show.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_show.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %tx_queue_len.i = getelementptr i8, ptr %dev, i32 -320
  %1 = ptrtoint ptr %tx_queue_len.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tx_queue_len.i, align 16
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %2) #16
  br label %netdev_show.exit

netdev_show.exit:                                 ; preds = %if.then.i, %entry.netdev_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ -22, %entry.netdev_show.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_queue_len_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %new.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -1104
  %nd_net.i.i = getelementptr i8, ptr %dev, i32 -28
  %0 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new.i) #16
  %2 = ptrtoint ptr %new.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %new.i, align 4, !annotation !378
  %user_ns.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user_ns.i, align 4
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef %4, i32 noundef 12) #16
  br i1 %call1.i, label %if.end.i, label %if.end.netdev_store.exit_crit_edge

if.end.netdev_store.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_store.exit

if.end.i:                                         ; preds = %if.end
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %new.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.netdev_store.exit_crit_edge

if.end.i.netdev_store.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_store.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %5 = call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stack.i.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %10) #16
  br label %netdev_store.exit

if.end9.i:                                        ; preds = %if.end4.i
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %11 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %if.end9.i.if.end16.i_crit_edge, label %if.then12.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %new.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new.i, align 4
  %call13.i = call i32 @dev_change_tx_queue_len(ptr noundef %add.ptr.i, i32 noundef %13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp.i = icmp eq i32 %call13.i, 0
  %spec.select.i = select i1 %cmp.i, i32 %len, i32 %call13.i
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end16.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end9.i.if.end16.i_crit_edge ], [ %spec.select.i, %if.then12.i ]
  call void @rtnl_unlock() #16
  br label %netdev_store.exit

netdev_store.exit:                                ; preds = %if.end16.i, %if.then7.i, %if.end.i.netdev_store.exit_crit_edge, %if.end.netdev_store.exit_crit_edge
  %retval.0.i = phi i32 [ -513, %if.then7.i ], [ -1, %if.end.netdev_store.exit_crit_edge ], [ %call.i.i, %if.end.i.netdev_store.exit_crit_edge ], [ %ret.0.i, %if.end16.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new.i) #16
  br label %return

return:                                           ; preds = %netdev_store.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %netdev_store.exit ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_tx_queue_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gro_flush_timeout_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netdev_show.exit_crit_edge, label %if.then.i

entry.netdev_show.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_show.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %gro_flush_timeout.i = getelementptr i8, ptr %dev, i32 -508
  %1 = ptrtoint ptr %gro_flush_timeout.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %gro_flush_timeout.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_ulong, i32 noundef %2) #16
  br label %netdev_show.exit

netdev_show.exit:                                 ; preds = %if.then.i, %entry.netdev_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ -22, %entry.netdev_show.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gro_flush_timeout_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %new.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %nd_net.i.i = getelementptr i8, ptr %dev, i32 -28
  %0 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new.i) #16
  %2 = ptrtoint ptr %new.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %new.i, align 4, !annotation !378
  %user_ns.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user_ns.i, align 4
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef %4, i32 noundef 12) #16
  br i1 %call1.i, label %if.end.i, label %if.end.netdev_store.exit_crit_edge

if.end.netdev_store.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_store.exit

if.end.i:                                         ; preds = %if.end
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %new.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.netdev_store.exit_crit_edge

if.end.i.netdev_store.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_store.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %5 = call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stack.i.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %10) #16
  br label %netdev_store.exit

if.end9.i:                                        ; preds = %if.end4.i
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %11 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %if.end9.i.if.end16.i_crit_edge, label %if.then12.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %new.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new.i, align 4
  %gro_flush_timeout.i = getelementptr i8, ptr %dev, i32 -508
  %14 = ptrtoint ptr %gro_flush_timeout.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %13, ptr %gro_flush_timeout.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end16.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end9.i.if.end16.i_crit_edge ], [ %len, %if.then12.i ]
  call void @rtnl_unlock() #16
  br label %netdev_store.exit

netdev_store.exit:                                ; preds = %if.end16.i, %if.then7.i, %if.end.i.netdev_store.exit_crit_edge, %if.end.netdev_store.exit_crit_edge
  %retval.0.i = phi i32 [ -513, %if.then7.i ], [ -1, %if.end.netdev_store.exit_crit_edge ], [ %call.i.i, %if.end.i.netdev_store.exit_crit_edge ], [ %ret.0.i, %if.end16.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new.i) #16
  br label %return

return:                                           ; preds = %netdev_store.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %netdev_store.exit ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @napi_defer_hard_irqs_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netdev_show.exit_crit_edge, label %if.then.i

entry.netdev_show.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_show.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %napi_defer_hard_irqs.i = getelementptr i8, ptr %dev, i32 -504
  %1 = ptrtoint ptr %napi_defer_hard_irqs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %napi_defer_hard_irqs.i, align 8
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %2) #16
  br label %netdev_show.exit

netdev_show.exit:                                 ; preds = %if.then.i, %entry.netdev_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ -22, %entry.netdev_show.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @napi_defer_hard_irqs_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %new.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %nd_net.i.i = getelementptr i8, ptr %dev, i32 -28
  %0 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new.i) #16
  %2 = ptrtoint ptr %new.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %new.i, align 4, !annotation !378
  %user_ns.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user_ns.i, align 4
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef %4, i32 noundef 12) #16
  br i1 %call1.i, label %if.end.i, label %if.end.netdev_store.exit_crit_edge

if.end.netdev_store.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_store.exit

if.end.i:                                         ; preds = %if.end
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %new.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.netdev_store.exit_crit_edge

if.end.i.netdev_store.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_store.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %5 = call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stack.i.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %10) #16
  br label %netdev_store.exit

if.end9.i:                                        ; preds = %if.end4.i
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %11 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %if.end9.i.if.end16.i_crit_edge, label %if.then12.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %new.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new.i, align 4
  %napi_defer_hard_irqs.i = getelementptr i8, ptr %dev, i32 -504
  %14 = ptrtoint ptr %napi_defer_hard_irqs.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %13, ptr %napi_defer_hard_irqs.i, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end16.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end9.i.if.end16.i_crit_edge ], [ %len, %if.then12.i ]
  call void @rtnl_unlock() #16
  br label %netdev_store.exit

netdev_store.exit:                                ; preds = %if.end16.i, %if.then7.i, %if.end.i.netdev_store.exit_crit_edge, %if.end.netdev_store.exit_crit_edge
  %retval.0.i = phi i32 [ -513, %if.then7.i ], [ -1, %if.end.netdev_store.exit_crit_edge ], [ %call.i.i, %if.end.i.netdev_store.exit_crit_edge ], [ %ret.0.i, %if.end16.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new.i) #16
  br label %return

return:                                           ; preds = %netdev_store.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %netdev_store.exit ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phys_port_id_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %ppid = alloca %struct.netdev_phys_item_id, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -1104
  %netdev_ops = getelementptr i8, ptr %dev, i32 -984
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %ndo_get_phys_port_id = getelementptr inbounds %struct.net_device_ops, ptr %1, i32 0, i32 67
  %2 = ptrtoint ptr %ndo_get_phys_port_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndo_get_phys_port_id, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %4 = tail call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %9) #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %reg_state.i = getelementptr i8, ptr %dev, i32 -44
  %10 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i)
  %cmp.i = icmp ugt i8 %bf.load.i, 1
  br i1 %cmp.i, label %if.end4.if.end13_crit_edge, label %if.then7

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then7:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %ppid) #16
  %11 = call ptr @memset(ptr %ppid, i32 255, i32 33)
  %call8 = call i32 @dev_get_phys_port_id(ptr noundef %add.ptr, ptr noundef nonnull %ppid) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  %id_len = getelementptr inbounds %struct.netdev_phys_item_id, ptr %ppid, i32 0, i32 1
  %12 = ptrtoint ptr %id_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id_len, align 1
  %conv = zext i8 %13 to i32
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.71, i32 noundef %conv, ptr noundef nonnull %ppid)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then7.if.end12_crit_edge
  %ret.0 = phi i32 [ %call8, %if.then7.if.end12_crit_edge ], [ %call11, %if.then10 ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %ppid) #16
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end4.if.end13_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end12 ], [ -22, %if.end4.if.end13_crit_edge ]
  call void @rtnl_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end13 ], [ -513, %if.then2 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_phys_port_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phys_port_name_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -1104
  %netdev_ops = getelementptr i8, ptr %dev, i32 -984
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %ndo_get_phys_port_name = getelementptr inbounds %struct.net_device_ops, ptr %1, i32 0, i32 69
  %2 = ptrtoint ptr %ndo_get_phys_port_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndo_get_phys_port_name, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ndo_get_devlink_port = getelementptr inbounds %struct.net_device_ops, ptr %1, i32 0, i32 80
  %4 = ptrtoint ptr %ndo_get_devlink_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndo_get_devlink_port, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %6 = tail call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %11) #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %reg_state.i = getelementptr i8, ptr %dev, i32 -44
  %12 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i)
  %cmp.i = icmp ugt i8 %bf.load.i, 1
  br i1 %cmp.i, label %if.end6.if.end16_crit_edge, label %if.then9

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then9:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #16
  %13 = call ptr @memset(ptr %name, i32 255, i32 16)
  %call10 = call i32 @dev_get_phys_port_name(ptr noundef %add.ptr, ptr noundef nonnull %name, i32 noundef 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.then9.if.end15_crit_edge

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  %call14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.54, ptr noundef nonnull %name)
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9.if.end15_crit_edge
  %ret.0 = phi i32 [ %call10, %if.then9.if.end15_crit_edge ], [ %call14, %if.then12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #16
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end6.if.end16_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end15 ], [ -22, %if.end6.if.end16_crit_edge ]
  call void @rtnl_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then4, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end16 ], [ -513, %if.then4 ], [ -95, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_phys_port_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phys_switch_id_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %ppid = alloca %struct.netdev_phys_item_id, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -1104
  %netdev_ops = getelementptr i8, ptr %dev, i32 -984
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %ndo_get_port_parent_id = getelementptr inbounds %struct.net_device_ops, ptr %1, i32 0, i32 68
  %2 = ptrtoint ptr %ndo_get_port_parent_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndo_get_port_parent_id, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ndo_get_devlink_port = getelementptr inbounds %struct.net_device_ops, ptr %1, i32 0, i32 80
  %4 = ptrtoint ptr %ndo_get_devlink_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndo_get_devlink_port, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %6 = tail call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %11) #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %reg_state.i = getelementptr i8, ptr %dev, i32 -44
  %12 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i)
  %cmp.i = icmp ugt i8 %bf.load.i, 1
  br i1 %cmp.i, label %if.end6.if.end15_crit_edge, label %if.then9

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then9:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %ppid) #16
  %13 = call ptr @memset(ptr %ppid, i32 0, i32 33)
  %call10 = call i32 @dev_get_port_parent_id(ptr noundef %add.ptr, ptr noundef nonnull %ppid, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.then9.if.end14_crit_edge

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  %id_len = getelementptr inbounds %struct.netdev_phys_item_id, ptr %ppid, i32 0, i32 1
  %14 = ptrtoint ptr %id_len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %id_len, align 1
  %conv = zext i8 %15 to i32
  %call13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.71, i32 noundef %conv, ptr noundef nonnull %ppid)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then9.if.end14_crit_edge
  %ret.0 = phi i32 [ %call10, %if.then9.if.end14_crit_edge ], [ %call13, %if.then12 ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %ppid) #16
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end6.if.end15_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end14 ], [ -22, %if.end6.if.end15_crit_edge ]
  call void @rtnl_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then4, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end15 ], [ -513, %if.then4 ], [ -95, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_port_parent_id(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proto_down_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netdev_show.exit_crit_edge, label %if.then.i

entry.netdev_show.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_show.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %proto_down.i = getelementptr i8, ptr %dev, i32 1068
  %1 = ptrtoint ptr %proto_down.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %proto_down.i, align 4, !range !385
  %3 = zext i8 %2 to i32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %3) #16
  br label %netdev_show.exit

netdev_show.exit:                                 ; preds = %if.then.i, %entry.netdev_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ -22, %entry.netdev_show.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proto_down_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %new.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -1104
  %nd_net.i.i = getelementptr i8, ptr %dev, i32 -28
  %0 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new.i) #16
  %2 = ptrtoint ptr %new.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %new.i, align 4, !annotation !378
  %user_ns.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user_ns.i, align 4
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef %4, i32 noundef 12) #16
  br i1 %call1.i, label %if.end.i, label %entry.netdev_store.exit_crit_edge

entry.netdev_store.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_store.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %new.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.netdev_store.exit_crit_edge

if.end.i.netdev_store.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_store.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %5 = call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stack.i.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %10) #16
  br label %netdev_store.exit

if.end9.i:                                        ; preds = %if.end4.i
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %11 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %if.end9.i.if.end16.i_crit_edge, label %if.then12.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %new.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i = icmp ne i32 %13, 0
  %call.i = call i32 @dev_change_proto_down(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  %spec.select.i = select i1 %cmp.i, i32 %len, i32 %call.i
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end16.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end9.i.if.end16.i_crit_edge ], [ %spec.select.i, %if.then12.i ]
  call void @rtnl_unlock() #16
  br label %netdev_store.exit

netdev_store.exit:                                ; preds = %if.end16.i, %if.then7.i, %if.end.i.netdev_store.exit_crit_edge, %entry.netdev_store.exit_crit_edge
  %retval.0.i = phi i32 [ -513, %if.then7.i ], [ -1, %entry.netdev_store.exit_crit_edge ], [ %call.i.i, %if.end.i.netdev_store.exit_crit_edge ], [ %ret.0.i, %if.end16.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new.i) #16
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_proto_down(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carrier_up_count_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %carrier_up_count = getelementptr i8, ptr %dev, i32 -784
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %carrier_up_count, i32 noundef 4) #16
  %0 = ptrtoint ptr %carrier_up_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %carrier_up_count, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carrier_down_count_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %carrier_down_count = getelementptr i8, ptr %dev, i32 -780
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %carrier_down_count, i32 noundef 4) #16
  %0 = ptrtoint ptr %carrier_down_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %carrier_down_count, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @threaded_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %5) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_state.i = getelementptr i8, ptr %dev, i32 -44
  %6 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i)
  %cmp.i = icmp ugt i8 %bf.load.i, 1
  br i1 %cmp.i, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %threaded = getelementptr i8, ptr %dev, i32 1069
  %7 = ptrtoint ptr %threaded to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %threaded, align 1
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_dec, i32 noundef %bf.cast)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ %call5, %if.then4 ], [ -22, %if.end.if.end6_crit_edge ]
  tail call void @rtnl_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ -513, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @threaded_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %new.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -1104
  %nd_net.i.i = getelementptr i8, ptr %dev, i32 -28
  %0 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new.i) #16
  %2 = ptrtoint ptr %new.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %new.i, align 4, !annotation !378
  %user_ns.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user_ns.i, align 4
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef %4, i32 noundef 12) #16
  br i1 %call1.i, label %if.end.i, label %entry.netdev_store.exit_crit_edge

entry.netdev_store.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_store.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %new.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.netdev_store.exit_crit_edge

if.end.i.netdev_store.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_store.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @rtnl_trylock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %5 = call i32 @llvm.read_register.i32(metadata !362) #16
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stack.i.i.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %10) #16
  br label %netdev_store.exit

if.end9.i:                                        ; preds = %if.end4.i
  %reg_state.i.i = getelementptr i8, ptr %dev, i32 -44
  %11 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %if.end9.i.if.end16.i_crit_edge, label %if.then12.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end9.i
  %12 = ptrtoint ptr %new.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new.i, align 4
  %napi_list.i = getelementptr i8, ptr %dev, i32 -1056
  %14 = ptrtoint ptr %napi_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %napi_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %napi_list.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %16 = icmp ugt i32 %13, 1
  %or.cond.i = or i1 %16, %cmp.i.not.i
  br i1 %or.cond.i, label %if.then12.i.if.end16.i_crit_edge, label %modify_napi_threaded.exit

if.then12.i.if.end16.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

modify_napi_threaded.exit:                        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i1 = icmp ne i32 %13, 0
  %call5.i2 = call i32 @dev_set_threaded(ptr noundef %add.ptr.i, i1 noundef zeroext %cmp.i1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i2)
  %cmp.i = icmp eq i32 %call5.i2, 0
  %spec.select = select i1 %cmp.i, i32 %len, i32 %call5.i2
  br label %if.end16.i

if.end16.i:                                       ; preds = %modify_napi_threaded.exit, %if.then12.i.if.end16.i_crit_edge, %if.end9.i.if.end16.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end9.i.if.end16.i_crit_edge ], [ -95, %if.then12.i.if.end16.i_crit_edge ], [ %spec.select, %modify_napi_threaded.exit ]
  call void @rtnl_unlock() #16
  br label %netdev_store.exit

netdev_store.exit:                                ; preds = %if.end16.i, %if.then7.i, %if.end.i.netdev_store.exit_crit_edge, %entry.netdev_store.exit_crit_edge
  %retval.0.i = phi i32 [ -513, %if.then7.i ], [ -1, %entry.netdev_store.exit_crit_edge ], [ %call.i.i, %if.end.i.netdev_store.exit_crit_edge ], [ %ret.0.i, %if.end16.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new.i) #16
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_threaded(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_freemem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_packets_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %2 = ptrtoint ptr %call23.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %call23.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_packets_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 8
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_bytes_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 16
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_bytes_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 24
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_errors_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 32
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_errors_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 40
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_dropped_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 48
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_dropped_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 56
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multicast_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 64
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @collisions_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 72
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_length_errors_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 80
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_over_errors_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 88
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_crc_errors_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 96
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_frame_errors_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 104
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_fifo_errors_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 112
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_missed_errors_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 120
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_aborted_errors_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 128
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_carrier_errors_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 136
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_fifo_errors_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 144
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_heartbeat_errors_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 152
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_window_errors_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 160
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_compressed_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 168
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_compressed_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 176
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_nohandler_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp.i = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #16
  %reg_state.i.i = getelementptr i8, ptr %d, i32 -44
  %0 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %entry.netstat_show.exit_crit_edge, label %if.then22.i

entry.netstat_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netstat_show.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %d, i32 -1104
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp.i) #16
  %1 = call ptr @memset(ptr %temp.i, i32 255, i32 192)
  %call23.i = call ptr @dev_get_stats(ptr noundef %add.ptr.i, ptr noundef nonnull %temp.i) #16
  %add.ptr24.i = getelementptr i8, ptr %call23.i, i32 184
  %2 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr24.i, align 8
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @fmt_u64, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp.i) #16
  br label %netstat_show.exit

netstat_show.exit:                                ; preds = %if.then22.i, %entry.netstat_show.exit_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i ], [ -22, %entry.netstat_show.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #16
  ret i32 %ret.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_change_owner(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_group_change_owner(ptr noundef, ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 182)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 182)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !36, !38, !39, !41, !43, !44, !45, !47, !48, !50, !51, !53, !54, !55, !57, !58, !60, !62, !64, !66, !68, !69, !71, !73, !75, !77, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !121, !123, !125, !127, !129, !130, !132, !133, !135, !137, !139, !141, !143, !145, !147, !148, !150, !152, !153, !155, !157, !158, !160, !161, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !198, !200, !202, !204, !206, !207, !209, !210, !212, !213, !215, !217, !219, !221, !223, !225, !226, !228, !229, !231, !232, !234, !235, !237, !238, !240, !241, !243, !244, !246, !247, !249, !250, !252, !254, !255, !257, !258, !260, !261, !263, !264, !266, !267, !269, !270, !272, !274, !276, !278, !280, !282, !283, !285, !287, !288, !290, !291, !293, !294, !296, !297, !299, !300, !302, !303, !305, !306, !308, !309, !311, !312, !314, !315, !317, !318, !320, !321, !323, !324, !326, !327, !329, !330, !332, !333, !335, !336, !338, !339, !341, !342, !344, !345, !347, !348, !350, !351, !353, !354, !356, !358, !360}
!llvm.named.register.sp = !{!362}
!llvm.module.flags = !{!363, !364, !365, !366, !367, !368, !369, !370}
!llvm.ident = !{!371}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/core/net-sysfs.c", i32 1701, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @net_ns_type_operations, !4, !"net_ns_type_operations", i1 false, i1 false}
!4 = !{!"../net/core/net-sysfs.c", i32 1853, i32 38}
!5 = !{ptr @__ksymtab_net_ns_type_operations, !6, !"__ksymtab_net_ns_type_operations", i1 false, i1 false}
!6 = !{!"../net/core/net-sysfs.c", i32 1861, i32 1}
!7 = !{ptr @__ksymtab_of_find_net_device_by_node, !8, !"__ksymtab_of_find_net_device_by_node", i1 false, i1 false}
!8 = !{!"../net/core/net-sysfs.c", i32 1955, i32 1}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/core/net-sysfs.c", i32 1989, i32 20}
!11 = !{ptr @__ksymtab_netdev_class_create_file_ns, !12, !"__ksymtab_netdev_class_create_file_ns", i1 false, i1 false}
!12 = !{!"../net/core/net-sysfs.c", i32 2059, i32 1}
!13 = !{ptr @__ksymtab_netdev_class_remove_file_ns, !14, !"__ksymtab_netdev_class_remove_file_ns", i1 false, i1 false}
!14 = !{!"../net/core/net-sysfs.c", i32 2066, i32 1}
!15 = !{ptr @netdev_kobject_init.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../net/core/net-sysfs.c", i32 2071, i32 9}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/core/net-sysfs.c", i32 1051, i32 10}
!19 = !{ptr @rx_queue_ktype, !20, !"rx_queue_ktype", i1 false, i1 false}
!20 = !{!"../net/core/net-sysfs.c", i32 1030, i32 25}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/core/net-sysfs.c", i32 993, i32 8}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../net/core/net-sysfs.c", i32 999, i32 15}
!25 = !{ptr @rx_queue_sysfs_ops, !26, !"rx_queue_sysfs_ops", i1 false, i1 false}
!26 = !{!"../net/core/net-sysfs.c", i32 793, i32 31}
!27 = !{ptr @rx_queue_default_groups, !28, !"rx_queue_default_groups", i1 false, i1 false}
!28 = !{!"../net/core/net-sysfs.c", i32 984, i32 1}
!29 = !{ptr @rx_queue_default_group, !28, !"rx_queue_default_group", i1 false, i1 false}
!30 = !{ptr @rx_queue_default_attrs, !31, !"rx_queue_default_attrs", i1 false, i1 false}
!31 = !{!"../net/core/net-sysfs.c", i32 977, i32 26}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/core/net-sysfs.c", i32 970, i32 4}
!34 = !{ptr @rps_cpus_attribute, !35, !"rps_cpus_attribute", i1 false, i1 false}
!35 = !{!"../net/core/net-sysfs.c", i32 969, i32 34}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../net/core/net-sysfs.c", i32 809, i32 8}
!38 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/core/net-sysfs.c", i32 814, i32 33}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!43 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!47 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!50 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/core/net-sysfs.c", i32 827, i32 9}
!53 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @store_rps_map.rps_map_mutex, !52, !"rps_map_mutex", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../net/core/net-sysfs.c", i32 870, i32 12}
!57 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/core/net-sysfs.c", i32 973, i32 4}
!60 = !{ptr @rps_dev_flow_table_cnt_attribute, !61, !"rps_dev_flow_table_cnt_attribute", i1 false, i1 false}
!61 = !{!"../net/core/net-sysfs.c", i32 972, i32 34}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../net/core/net-sysfs.c", i32 895, i32 15}
!64 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/core/net-sysfs.c", i32 900, i32 22}
!66 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/core/net-sysfs.c", i32 915, i32 9}
!68 = !{ptr @store_rps_dev_flow_table_cnt.rps_dev_flow_lock, !67, !"rps_dev_flow_lock", i1 false, i1 false}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../net/core/net-sysfs.c", i32 958, i32 14}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/core/net-sysfs.c", i32 1654, i32 10}
!73 = !{ptr @netdev_queue_ktype, !74, !"netdev_queue_ktype", i1 false, i1 false}
!74 = !{!"../net/core/net-sysfs.c", i32 1633, i32 25}
!75 = !{ptr @netdev_queue_sysfs_ops, !76, !"netdev_queue_sysfs_ops", i1 false, i1 false}
!76 = !{!"../net/core/net-sysfs.c", i32 1189, i32 31}
!77 = !{ptr @netdev_queue_default_groups, !78, !"netdev_queue_default_groups", i1 false, i1 false}
!78 = !{!"../net/core/net-sysfs.c", i32 1603, i32 1}
!79 = !{ptr @netdev_queue_default_group, !78, !"netdev_queue_default_group", i1 false, i1 false}
!80 = !{ptr @netdev_queue_default_attrs, !81, !"netdev_queue_default_attrs", i1 false, i1 false}
!81 = !{!"../net/core/net-sysfs.c", i32 1593, i32 26}
!82 = !{ptr @.str.19, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/core/net-sysfs.c", i32 1296, i32 4}
!84 = !{ptr @queue_trans_timeout, !85, !"queue_trans_timeout", i1 false, i1 false}
!85 = !{!"../net/core/net-sysfs.c", i32 1295, i32 38}
!86 = !{ptr @fmt_ulong, !87, !"fmt_ulong", i1 false, i1 false}
!87 = !{!"../net/core/net-sysfs.c", i32 32, i32 19}
!88 = !{ptr @.str.20, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/core/net-sysfs.c", i32 1299, i32 4}
!90 = !{ptr @queue_traffic_class, !91, !"queue_traffic_class", i1 false, i1 false}
!91 = !{!"../net/core/net-sysfs.c", i32 1298, i32 38}
!92 = !{ptr @.str.21, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/core/net-sysfs.c", i32 1245, i32 35}
!94 = !{ptr @.str.22, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/core/net-sysfs.c", i32 1246, i32 21}
!96 = !{ptr @.str.23, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/core/net-sysfs.c", i32 1529, i32 4}
!98 = !{ptr @xps_cpus_attribute, !99, !"xps_cpus_attribute", i1 false, i1 false}
!99 = !{!"../net/core/net-sysfs.c", i32 1528, i32 38}
!100 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!101 = !{!"../net/core/net-sysfs.c", i32 1416, i32 13}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../net/core/net-sysfs.c", i32 1437, i32 9}
!104 = !{ptr @.str.25, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/core/net-sysfs.c", i32 1590, i32 4}
!106 = !{ptr @xps_rxqs_attribute, !107, !"xps_rxqs_attribute", i1 false, i1 false}
!107 = !{!"../net/core/net-sysfs.c", i32 1589, i32 38}
!108 = !{ptr @.str.26, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/core/net-sysfs.c", i32 1292, i32 4}
!110 = !{ptr @queue_tx_maxrate, !111, !"queue_tx_maxrate", i1 false, i1 false}
!111 = !{!"../net/core/net-sysfs.c", i32 1291, i32 38}
!112 = !{ptr @.str.27, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/core/net-sysfs.c", i32 1401, i32 11}
!114 = !{ptr @dql_group, !115, !"dql_group", i1 false, i1 false}
!115 = !{!"../net/core/net-sysfs.c", i32 1400, i32 37}
!116 = !{ptr @dql_attrs, !117, !"dql_attrs", i1 false, i1 false}
!117 = !{!"../net/core/net-sysfs.c", i32 1391, i32 26}
!118 = !{ptr @.str.28, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/core/net-sysfs.c", i32 1387, i32 1}
!120 = !{ptr @bql_limit_attribute, !119, !"bql_limit_attribute", i1 false, i1 false}
!121 = !{ptr @.str.29, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/core/net-sysfs.c", i32 1307, i32 22}
!123 = !{ptr @.str.30, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/core/net-sysfs.c", i32 1316, i32 19}
!125 = !{ptr @.str.31, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/core/net-sysfs.c", i32 1316, i32 42}
!127 = !{ptr @.str.32, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/core/net-sysfs.c", i32 1388, i32 1}
!129 = !{ptr @bql_limit_max_attribute, !128, !"bql_limit_max_attribute", i1 false, i1 false}
!130 = !{ptr @.str.33, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../net/core/net-sysfs.c", i32 1389, i32 1}
!132 = !{ptr @bql_limit_min_attribute, !131, !"bql_limit_min_attribute", i1 false, i1 false}
!133 = !{ptr @.str.34, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/core/net-sysfs.c", i32 1356, i32 4}
!135 = !{ptr @bql_hold_time_attribute, !136, !"bql_hold_time_attribute", i1 false, i1 false}
!136 = !{!"../net/core/net-sysfs.c", i32 1355, i32 38}
!137 = !{ptr @.str.35, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/core/net-sysfs.c", i32 1368, i32 2}
!139 = !{ptr @bql_inflight_attribute, !140, !"bql_inflight_attribute", i1 false, i1 false}
!140 = !{!"../net/core/net-sysfs.c", i32 1367, i32 38}
!141 = !{ptr @.str.36, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../net/core/net-sysfs.c", i32 1916, i32 10}
!143 = !{ptr @net_class, !144, !"net_class", i1 false, i1 false}
!144 = !{!"../net/core/net-sysfs.c", i32 1915, i32 21}
!145 = !{ptr @net_class_groups, !146, !"net_class_groups", i1 false, i1 false}
!146 = !{!"../net/core/net-sysfs.c", i32 656, i32 1}
!147 = !{ptr @net_class_group, !146, !"net_class_group", i1 false, i1 false}
!148 = !{ptr @net_class_attrs, !149, !"net_class_attrs", i1 false, i1 false}
!149 = !{!"../net/core/net-sysfs.c", i32 621, i32 26}
!150 = !{ptr @.str.37, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../net/core/net-sysfs.c", i32 480, i32 8}
!152 = !{ptr @dev_attr_netdev_group, !151, !"dev_attr_netdev_group", i1 false, i1 false}
!153 = !{ptr @fmt_dec, !154, !"fmt_dec", i1 false, i1 false}
!154 = !{!"../net/core/net-sysfs.c", i32 31, i32 19}
!155 = !{ptr @.str.38, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../net/core/net-sysfs.c", i32 111, i32 1}
!157 = !{ptr @dev_attr_type, !156, !"dev_attr_type", i1 false, i1 false}
!158 = !{ptr @.str.39, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../net/core/net-sysfs.c", i32 106, i32 1}
!160 = !{ptr @dev_attr_dev_id, !159, !"dev_attr_dev_id", i1 false, i1 false}
!161 = !{ptr @fmt_hex, !162, !"fmt_hex", i1 false, i1 false}
!162 = !{!"../net/core/net-sysfs.c", i32 30, i32 19}
!163 = !{ptr @.str.40, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../net/core/net-sysfs.c", i32 107, i32 1}
!165 = !{ptr @dev_attr_dev_port, !164, !"dev_attr_dev_port", i1 false, i1 false}
!166 = !{ptr @.str.41, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../net/core/net-sysfs.c", i32 121, i32 8}
!168 = !{ptr @dev_attr_iflink, !167, !"dev_attr_iflink", i1 false, i1 false}
!169 = !{ptr @.str.42, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../net/core/net-sysfs.c", i32 110, i32 1}
!171 = !{ptr @dev_attr_ifindex, !170, !"dev_attr_ifindex", i1 false, i1 false}
!172 = !{ptr @.str.43, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../net/core/net-sysfs.c", i32 140, i32 8}
!174 = !{ptr @dev_attr_name_assign_type, !173, !"dev_attr_name_assign_type", i1 false, i1 false}
!175 = !{ptr @.str.44, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../net/core/net-sysfs.c", i32 108, i32 1}
!177 = !{ptr @dev_attr_addr_assign_type, !176, !"dev_attr_addr_assign_type", i1 false, i1 false}
!178 = !{ptr @.str.45, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../net/core/net-sysfs.c", i32 109, i32 1}
!180 = !{ptr @dev_attr_addr_len, !179, !"dev_attr_addr_len", i1 false, i1 false}
!181 = !{ptr @.str.46, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../net/core/net-sysfs.c", i32 112, i32 1}
!183 = !{ptr @dev_attr_link_mode, !182, !"dev_attr_link_mode", i1 false, i1 false}
!184 = !{ptr @.str.47, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../net/core/net-sysfs.c", i32 155, i32 8}
!186 = !{ptr @dev_attr_address, !185, !"dev_attr_address", i1 false, i1 false}
!187 = !{ptr @.str.48, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../net/core/net-sysfs.c", i32 166, i32 8}
!189 = !{ptr @dev_attr_broadcast, !188, !"dev_attr_broadcast", i1 false, i1 false}
!190 = !{ptr @.str.49, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../net/core/net-sysfs.c", i32 225, i32 8}
!192 = !{ptr @dev_attr_speed, !191, !"dev_attr_speed", i1 false, i1 false}
!193 = !{ptr @.str.50, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../net/core/net-sysfs.c", i32 265, i32 8}
!195 = !{ptr @dev_attr_duplex, !194, !"dev_attr_duplex", i1 false, i1 false}
!196 = !{ptr @.str.51, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../net/core/net-sysfs.c", i32 250, i32 14}
!198 = !{ptr @.str.52, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../net/core/net-sysfs.c", i32 253, i32 14}
!200 = !{ptr @.str.53, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../net/core/net-sysfs.c", i32 256, i32 14}
!202 = !{ptr @.str.54, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../net/core/net-sysfs.c", i32 259, i32 23}
!204 = !{ptr @.str.55, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../net/core/net-sysfs.c", i32 289, i32 8}
!206 = !{ptr @dev_attr_dormant, !205, !"dev_attr_dormant", i1 false, i1 false}
!207 = !{ptr @.str.56, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../net/core/net-sysfs.c", i32 277, i32 8}
!209 = !{ptr @dev_attr_testing, !208, !"dev_attr_testing", i1 false, i1 false}
!210 = !{ptr @.str.57, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../net/core/net-sysfs.c", i32 318, i32 8}
!212 = !{ptr @dev_attr_operstate, !211, !"dev_attr_operstate", i1 false, i1 false}
!213 = !{ptr @.str.58, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../net/core/net-sysfs.c", i32 293, i32 2}
!215 = !{ptr @.str.59, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../net/core/net-sysfs.c", i32 294, i32 2}
!217 = !{ptr @.str.60, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../net/core/net-sysfs.c", i32 295, i32 2}
!219 = !{ptr @.str.61, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../net/core/net-sysfs.c", i32 298, i32 2}
!221 = !{ptr @operstates, !222, !"operstates", i1 false, i1 false}
!222 = !{!"../net/core/net-sysfs.c", i32 291, i32 26}
!223 = !{ptr @.str.62, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../net/core/net-sysfs.c", i32 330, i32 8}
!225 = !{ptr @dev_attr_carrier_changes, !224, !"dev_attr_carrier_changes", i1 false, i1 false}
!226 = !{ptr @.str.63, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../net/core/net-sysfs.c", i32 466, i32 8}
!228 = !{ptr @dev_attr_ifalias, !227, !"dev_attr_ifalias", i1 false, i1 false}
!229 = !{ptr @.str.64, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../net/core/net-sysfs.c", i32 199, i32 8}
!231 = !{ptr @dev_attr_carrier, !230, !"dev_attr_carrier", i1 false, i1 false}
!232 = !{ptr @.str.65, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../net/core/net-sysfs.c", i32 364, i32 1}
!234 = !{ptr @dev_attr_mtu, !233, !"dev_attr_mtu", i1 false, i1 false}
!235 = !{ptr @.str.66, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../net/core/net-sysfs.c", i32 376, i32 1}
!237 = !{ptr @dev_attr_flags, !236, !"dev_attr_flags", i1 false, i1 false}
!238 = !{ptr @.str.67, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../net/core/net-sysfs.c", i32 387, i32 1}
!240 = !{ptr @dev_attr_tx_queue_len, !239, !"dev_attr_tx_queue_len", i1 false, i1 false}
!241 = !{ptr @.str.68, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../net/core/net-sysfs.c", i32 404, i32 1}
!243 = !{ptr @dev_attr_gro_flush_timeout, !242, !"dev_attr_gro_flush_timeout", i1 false, i1 false}
!244 = !{ptr @.str.69, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../net/core/net-sysfs.c", i32 421, i32 1}
!246 = !{ptr @dev_attr_napi_defer_hard_irqs, !245, !"dev_attr_napi_defer_hard_irqs", i1 false, i1 false}
!247 = !{ptr @.str.70, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../net/core/net-sysfs.c", i32 521, i32 8}
!249 = !{ptr @dev_attr_phys_port_id, !248, !"dev_attr_phys_port_id", i1 false, i1 false}
!250 = !{ptr @.str.71, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../net/core/net-sysfs.c", i32 515, i32 23}
!252 = !{ptr @.str.72, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../net/core/net-sysfs.c", i32 550, i32 8}
!254 = !{ptr @dev_attr_phys_port_name, !253, !"dev_attr_phys_port_name", i1 false, i1 false}
!255 = !{ptr @.str.73, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../net/core/net-sysfs.c", i32 580, i32 8}
!257 = !{ptr @dev_attr_phys_switch_id, !256, !"dev_attr_phys_switch_id", i1 false, i1 false}
!258 = !{ptr @.str.74, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../net/core/net-sysfs.c", i32 493, i32 1}
!260 = !{ptr @dev_attr_proto_down, !259, !"dev_attr_proto_down", i1 false, i1 false}
!261 = !{ptr @.str.75, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../net/core/net-sysfs.c", i32 340, i32 8}
!263 = !{ptr @dev_attr_carrier_up_count, !262, !"dev_attr_carrier_up_count", i1 false, i1 false}
!264 = !{ptr @.str.76, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../net/core/net-sysfs.c", i32 350, i32 8}
!266 = !{ptr @dev_attr_carrier_down_count, !265, !"dev_attr_carrier_down_count", i1 false, i1 false}
!267 = !{ptr @.str.77, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../net/core/net-sysfs.c", i32 619, i32 8}
!269 = !{ptr @dev_attr_threaded, !268, !"dev_attr_threaded", i1 false, i1 false}
!270 = !{ptr @.str.78, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../net/core/net-sysfs.c", i32 1869, i32 31}
!272 = !{ptr @.str.79, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../net/core/net-sysfs.c", i32 1877, i32 31}
!274 = !{ptr @.str.80, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../net/core/net-sysfs.c", i32 744, i32 11}
!276 = !{ptr @netstat_group, !277, !"netstat_group", i1 false, i1 false}
!277 = !{!"../net/core/net-sysfs.c", i32 743, i32 37}
!278 = !{ptr @netstat_attrs, !279, !"netstat_attrs", i1 false, i1 false}
!279 = !{!"../net/core/net-sysfs.c", i32 715, i32 26}
!280 = !{ptr @.str.81, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../net/core/net-sysfs.c", i32 690, i32 1}
!282 = !{ptr @dev_attr_rx_packets, !281, !"dev_attr_rx_packets", i1 false, i1 false}
!283 = !{ptr @fmt_u64, !284, !"fmt_u64", i1 false, i1 false}
!284 = !{!"../net/core/net-sysfs.c", i32 33, i32 19}
!285 = !{ptr @.str.82, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../net/core/net-sysfs.c", i32 691, i32 1}
!287 = !{ptr @dev_attr_tx_packets, !286, !"dev_attr_tx_packets", i1 false, i1 false}
!288 = !{ptr @.str.83, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../net/core/net-sysfs.c", i32 692, i32 1}
!290 = !{ptr @dev_attr_rx_bytes, !289, !"dev_attr_rx_bytes", i1 false, i1 false}
!291 = !{ptr @.str.84, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../net/core/net-sysfs.c", i32 693, i32 1}
!293 = !{ptr @dev_attr_tx_bytes, !292, !"dev_attr_tx_bytes", i1 false, i1 false}
!294 = !{ptr @.str.85, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../net/core/net-sysfs.c", i32 694, i32 1}
!296 = !{ptr @dev_attr_rx_errors, !295, !"dev_attr_rx_errors", i1 false, i1 false}
!297 = !{ptr @.str.86, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../net/core/net-sysfs.c", i32 695, i32 1}
!299 = !{ptr @dev_attr_tx_errors, !298, !"dev_attr_tx_errors", i1 false, i1 false}
!300 = !{ptr @.str.87, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../net/core/net-sysfs.c", i32 696, i32 1}
!302 = !{ptr @dev_attr_rx_dropped, !301, !"dev_attr_rx_dropped", i1 false, i1 false}
!303 = !{ptr @.str.88, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../net/core/net-sysfs.c", i32 697, i32 1}
!305 = !{ptr @dev_attr_tx_dropped, !304, !"dev_attr_tx_dropped", i1 false, i1 false}
!306 = !{ptr @.str.89, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../net/core/net-sysfs.c", i32 698, i32 1}
!308 = !{ptr @dev_attr_multicast, !307, !"dev_attr_multicast", i1 false, i1 false}
!309 = !{ptr @.str.90, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../net/core/net-sysfs.c", i32 699, i32 1}
!311 = !{ptr @dev_attr_collisions, !310, !"dev_attr_collisions", i1 false, i1 false}
!312 = !{ptr @.str.91, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../net/core/net-sysfs.c", i32 700, i32 1}
!314 = !{ptr @dev_attr_rx_length_errors, !313, !"dev_attr_rx_length_errors", i1 false, i1 false}
!315 = !{ptr @.str.92, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../net/core/net-sysfs.c", i32 701, i32 1}
!317 = !{ptr @dev_attr_rx_over_errors, !316, !"dev_attr_rx_over_errors", i1 false, i1 false}
!318 = !{ptr @.str.93, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../net/core/net-sysfs.c", i32 702, i32 1}
!320 = !{ptr @dev_attr_rx_crc_errors, !319, !"dev_attr_rx_crc_errors", i1 false, i1 false}
!321 = !{ptr @.str.94, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../net/core/net-sysfs.c", i32 703, i32 1}
!323 = !{ptr @dev_attr_rx_frame_errors, !322, !"dev_attr_rx_frame_errors", i1 false, i1 false}
!324 = !{ptr @.str.95, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../net/core/net-sysfs.c", i32 704, i32 1}
!326 = !{ptr @dev_attr_rx_fifo_errors, !325, !"dev_attr_rx_fifo_errors", i1 false, i1 false}
!327 = !{ptr @.str.96, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../net/core/net-sysfs.c", i32 705, i32 1}
!329 = !{ptr @dev_attr_rx_missed_errors, !328, !"dev_attr_rx_missed_errors", i1 false, i1 false}
!330 = !{ptr @.str.97, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../net/core/net-sysfs.c", i32 706, i32 1}
!332 = !{ptr @dev_attr_tx_aborted_errors, !331, !"dev_attr_tx_aborted_errors", i1 false, i1 false}
!333 = !{ptr @.str.98, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../net/core/net-sysfs.c", i32 707, i32 1}
!335 = !{ptr @dev_attr_tx_carrier_errors, !334, !"dev_attr_tx_carrier_errors", i1 false, i1 false}
!336 = !{ptr @.str.99, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../net/core/net-sysfs.c", i32 708, i32 1}
!338 = !{ptr @dev_attr_tx_fifo_errors, !337, !"dev_attr_tx_fifo_errors", i1 false, i1 false}
!339 = !{ptr @.str.100, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../net/core/net-sysfs.c", i32 709, i32 1}
!341 = !{ptr @dev_attr_tx_heartbeat_errors, !340, !"dev_attr_tx_heartbeat_errors", i1 false, i1 false}
!342 = !{ptr @.str.101, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../net/core/net-sysfs.c", i32 710, i32 1}
!344 = !{ptr @dev_attr_tx_window_errors, !343, !"dev_attr_tx_window_errors", i1 false, i1 false}
!345 = !{ptr @.str.102, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../net/core/net-sysfs.c", i32 711, i32 1}
!347 = !{ptr @dev_attr_rx_compressed, !346, !"dev_attr_rx_compressed", i1 false, i1 false}
!348 = !{ptr @.str.103, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../net/core/net-sysfs.c", i32 712, i32 1}
!350 = !{ptr @dev_attr_tx_compressed, !349, !"dev_attr_tx_compressed", i1 false, i1 false}
!351 = !{ptr @.str.104, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../net/core/net-sysfs.c", i32 713, i32 1}
!353 = !{ptr @dev_attr_rx_nohandler, !352, !"dev_attr_rx_nohandler", i1 false, i1 false}
!354 = !{ptr @.str.105, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../net/core/net-sysfs.c", i32 754, i32 10}
!356 = !{ptr @wireless_group, !357, !"wireless_group", i1 false, i1 false}
!357 = !{!"../net/core/net-sysfs.c", i32 753, i32 37}
!358 = !{ptr @wireless_attrs, !359, !"wireless_attrs", i1 false, i1 false}
!359 = !{!"../net/core/net-sysfs.c", i32 749, i32 26}
!360 = !{ptr @.str.106, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../net/core/net-sysfs.c", i32 1753, i32 41}
!362 = !{!"sp"}
!363 = !{i32 1, !"wchar_size", i32 2}
!364 = !{i32 1, !"min_enum_size", i32 4}
!365 = !{i32 8, !"branch-target-enforcement", i32 0}
!366 = !{i32 8, !"sign-return-address", i32 0}
!367 = !{i32 8, !"sign-return-address-all", i32 0}
!368 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!369 = !{i32 7, !"uwtable", i32 1}
!370 = !{i32 7, !"frame-pointer", i32 2}
!371 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!372 = !{i64 688382, i64 688443}
!373 = !{i64 691114}
!374 = !{!"branch_weights", i32 1, i32 2000}
!375 = !{i64 691399}
!376 = !{i64 2148297431, i64 2148297463, i64 2148297492, i64 2148297526, i64 2148297557, i64 2148297580}
!377 = !{!"branch_weights", i32 2000, i32 1}
!378 = !{!"auto-init"}
!379 = !{i64 2149674285}
!380 = !{i64 2149674551}
!381 = !{i64 2157638039}
!382 = !{i64 2157655863}
!383 = !{i64 2157678731, i64 2157679217, i64 2157678768, i64 2157678824, i64 2157678858, i64 2157678882, i64 2157678923, i64 2157678944, i64 2157678972, i64 2157679006}
!384 = !{i64 2157715379, i64 2157715865, i64 2157715416, i64 2157715472, i64 2157715506, i64 2157715530, i64 2157715571, i64 2157715592, i64 2157715620, i64 2157715654}
!385 = !{i8 0, i8 2}
