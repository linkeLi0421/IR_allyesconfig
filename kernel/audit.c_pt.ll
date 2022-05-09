; ModuleID = '/llk/IR_all_yes/kernel/audit.c_pt.bc'
source_filename = "../kernel/audit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+audit_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_audit_enabled\09\09\09\09"
module asm "\09.long\09__crc_audit_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_audit_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22audit_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_audit_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+audit_log_task_context\22, \22a\22\09"
module asm "\09.weak\09__crc_audit_log_task_context\09\09\09\09"
module asm "\09.long\09__crc_audit_log_task_context\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_audit_log_task_context:\09\09\09\09\09"
module asm "\09.asciz \09\22audit_log_task_context\22\09\09\09\09\09"
module asm "__kstrtabns_audit_log_task_context:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+audit_log_task_info\22, \22a\22\09"
module asm "\09.weak\09__crc_audit_log_task_info\09\09\09\09"
module asm "\09.long\09__crc_audit_log_task_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_audit_log_task_info:\09\09\09\09\09"
module asm "\09.asciz \09\22audit_log_task_info\22\09\09\09\09\09"
module asm "__kstrtabns_audit_log_task_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+audit_log_start\22, \22a\22\09"
module asm "\09.weak\09__crc_audit_log_start\09\09\09\09"
module asm "\09.long\09__crc_audit_log_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_audit_log_start:\09\09\09\09\09"
module asm "\09.asciz \09\22audit_log_start\22\09\09\09\09\09"
module asm "__kstrtabns_audit_log_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+audit_log_end\22, \22a\22\09"
module asm "\09.weak\09__crc_audit_log_end\09\09\09\09"
module asm "\09.long\09__crc_audit_log_end\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_audit_log_end:\09\09\09\09\09"
module asm "\09.asciz \09\22audit_log_end\22\09\09\09\09\09"
module asm "__kstrtabns_audit_log_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+audit_log_format\22, \22a\22\09"
module asm "\09.weak\09__crc_audit_log_format\09\09\09\09"
module asm "\09.long\09__crc_audit_log_format\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_audit_log_format:\09\09\09\09\09"
module asm "\09.asciz \09\22audit_log_format\22\09\09\09\09\09"
module asm "__kstrtabns_audit_log_format:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+audit_log\22, \22a\22\09"
module asm "\09.weak\09__crc_audit_log\09\09\09\09"
module asm "\09.long\09__crc_audit_log\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_audit_log:\09\09\09\09\09"
module asm "\09.asciz \09\22audit_log\22\09\09\09\09\09"
module asm "__kstrtabns_audit_log:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.audit_ctl_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.audit_features = type { i32, i32, i32, i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.47 }
%union.anon.47 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.57, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.netlink_kernel_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.70, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.70 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.149, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%union.anon = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.124 }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.149 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.audit_netlink_list = type { i32, ptr, %struct.sk_buff_head }
%struct.anon.27 = type { ptr, ptr, %union.anon.28 }
%union.anon.28 = type { ptr }
%struct.sk_buff = type { %union.anon.26, %union.anon.29, %union.anon.30, [48 x i8], %union.anon.31, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.33, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.26 = type { %struct.anon.27 }
%union.anon.29 = type { ptr }
%union.anon.30 = type { i64 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { i32, ptr }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.35, i32, i32, i32, i16, i16, %union.anon.37, i32, %union.anon.38, %union.anon.39, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.35 = type { i32 }
%union.anon.37 = type { i32 }
%union.anon.38 = type { i32 }
%union.anon.39 = type { i16 }
%struct.timespec64 = type { i64, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.audit_buffer = type { ptr, ptr, i32 }
%struct.__va_list = type { ptr }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.130, %struct.anon.131, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.130 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.131 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.80 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.80 = type { %struct.callback_head }
%struct.auditd_connection = type { ptr, i32, ptr, %struct.callback_head }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.77, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.78, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.79, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.16, %union.anon.18, %union.anon.19, i16, i8, i8, i32, %union.anon.21, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.73, [0 x i32], %union.anon.74, i16, i16, %union.anon.75, %struct.refcount_struct, [0 x i32], %union.anon.76 }
%union.anon.16 = type { i64 }
%union.anon.18 = type { i32 }
%union.anon.19 = type { i32 }
%union.anon.21 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.64 }
%union.anon.64 = type { [4 x i32] }
%union.anon.73 = type { i32 }
%union.anon.74 = type { %struct.hlist_node }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.77 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.78 = type { ptr }
%union.anon.79 = type { ptr }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.audit_status = type { i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.188, i32, i32 }
%union.anon.188 = type { i32 }
%struct.audit_tty_status = type { i32, i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.audit_sig_info = type { i32, i32, [0 x i8] }
%struct.audit_reply = type { i32, ptr, ptr }

@audit_enabled = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@audit_ever_enabled = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__kstrtab_audit_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_audit_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_audit_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @audit_enabled to i32), ptr @__kstrtab_audit_enabled, ptr @__kstrtabns_audit_enabled }, section "___ksymtab_gpl+audit_enabled", align 4
@auditd_conn = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@auditd_test_task.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kernel/audit.c\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@audit_cmd_mutex = internal global { %struct.audit_ctl_mutex, [32 x i8] } zeroinitializer, align 32
@audit_failure = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__func__.audit_panic = private unnamed_addr constant [12 x i8] c"audit_panic\00", align 1
@audit_panic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.audit_panic, ptr @.str, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\013audit: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@audit_panic._entry_ptr = internal global ptr @audit_panic._entry, section ".printk_index", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audit: %s\0A\00", [21 x i8] zeroinitializer }, align 32
@audit_log_lost.last_msg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@audit_log_lost.lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@audit_lost = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@audit_rate_limit = internal global { i32, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__func__.audit_log_lost = private unnamed_addr constant [15 x i8] c"audit_log_lost\00", align 1
@audit_log_lost._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.audit_log_lost, ptr @.str, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014audit: audit_lost=%u audit_rate_limit=%u audit_backlog_limit=%u\0A\00", [61 x i8] zeroinitializer }, align 32
@audit_log_lost._entry_ptr = internal global ptr @audit_log_lost._entry, section ".printk_index", align 4
@audit_backlog_limit = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@af = internal global { %struct.audit_features, [16 x i8] } { %struct.audit_features { i32 1, i32 -1, i32 0, i32 0 }, [16 x i8] zeroinitializer }, align 32
@__initcall__kmod_audit__493_1714_audit_init2 = internal global ptr @audit_init, section ".initcall2.init", align 4
@__setup_str_audit_enable = internal constant [7 x i8] c"audit=\00", section ".init.rodata", align 1
@__setup_audit_enable = internal global %struct.obs_kernel_param { ptr @__setup_str_audit_enable, ptr @audit_enable, i32 0 }, section ".init.setup", align 4
@__setup_str_audit_backlog_limit_set = internal constant [21 x i8] c"audit_backlog_limit=\00", section ".init.rodata", align 1
@__setup_audit_backlog_limit_set = internal global %struct.obs_kernel_param { ptr @__setup_str_audit_backlog_limit_set, ptr @audit_backlog_limit_set, i32 0 }, section ".init.setup", align 4
@audit_serial.serial = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@audit_initialized = internal global { i32, [28 x i8] } zeroinitializer, align 32
@audit_backlog_wait_time = internal global { i32, [28 x i8] } { i32 6000, [28 x i8] zeroinitializer }, align 32
@audit_queue = internal global { %struct.sk_buff_head, [40 x i8] } zeroinitializer, align 32
@kauditd_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.97, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @kauditd_wait, i64 44), ptr getelementptr (i8, ptr @kauditd_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@audit_backlog_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.98, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @audit_backlog_wait, i64 44), ptr getelementptr (i8, ptr @audit_backlog_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@audit_backlog_wait_time_actual = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__func__.audit_log_start = private unnamed_addr constant [16 x i8] c"audit_log_start\00", align 1
@audit_log_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.audit_log_start, ptr @.str, i32 1893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014audit: audit_backlog=%d > audit_backlog_limit=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@audit_log_start._entry_ptr = internal global ptr @audit_log_start._entry, section ".printk_index", align 4
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"backlog limit exceeded\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"out of memory in audit_log_start\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"audit(%llu.%03lu:%u): \00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\22<no_memory>\22\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\22<too_long>\22\00", [19 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"auid=%u ses=%u\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" key=\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" subj=%s\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error in audit_log_task_context\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_audit_log_task_context = external dso_local constant [0 x i8], align 1
@__kstrtabns_audit_log_task_context = external dso_local constant [0 x i8], align 1
@__ksymtab_audit_log_task_context = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @audit_log_task_context to i32), ptr @__kstrtab_audit_log_task_context, ptr @__kstrtabns_audit_log_task_context }, section "___ksymtab+audit_log_task_context", align 4
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" exe=\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" exe=(null)\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c" ppid=%d pid=%d auid=%u uid=%u gid=%u euid=%u suid=%u fsuid=%u egid=%u sgid=%u fsgid=%u tty=%s ses=%u\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(none)\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" comm=\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_audit_log_task_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_audit_log_task_info = external dso_local constant [0 x i8], align 1
@__ksymtab_audit_log_task_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @audit_log_task_info to i32), ptr @__kstrtab_audit_log_task_info, ptr @__kstrtabns_audit_log_task_info }, section "___ksymtab+audit_log_task_info", align 4
@session_id = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@audit_sig_pid = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@audit_sig_uid.0 = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@audit_sig_sid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rate limit exceeded\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_audit_log_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_audit_log_start = external dso_local constant [0 x i8], align 1
@__ksymtab_audit_log_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @audit_log_start to i32), ptr @__kstrtab_audit_log_start, ptr @__kstrtabns_audit_log_start }, section "___ksymtab+audit_log_start", align 4
@__kstrtab_audit_log_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_audit_log_end = external dso_local constant [0 x i8], align 1
@__ksymtab_audit_log_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @audit_log_end to i32), ptr @__kstrtab_audit_log_end, ptr @__kstrtabns_audit_log_end }, section "___ksymtab+audit_log_end", align 4
@__kstrtab_audit_log_format = external dso_local constant [0 x i8], align 1
@__kstrtabns_audit_log_format = external dso_local constant [0 x i8], align 1
@__ksymtab_audit_log_format = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @audit_log_format to i32), ptr @__kstrtab_audit_log_format, ptr @__kstrtabns_audit_log_format }, section "___ksymtab+audit_log_format", align 4
@__kstrtab_audit_log = external dso_local constant [0 x i8], align 1
@__kstrtabns_audit_log = external dso_local constant [0 x i8], align 1
@__ksymtab_audit_log = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @audit_log to i32), ptr @__kstrtab_audit_log, ptr @__kstrtabns_audit_log }, section "___ksymtab+audit_log", align 4
@audit_inode_hash = dso_local global { [32 x %struct.list_head], [64 x i8] } zeroinitializer, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@audit_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"audit_buffer\00", [19 x i8] zeroinitializer }, align 32
@audit_buffer_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@audit_retry_queue = internal global { %struct.sk_buff_head, [40 x i8] } zeroinitializer, align 32
@audit_hold_queue = internal global { %struct.sk_buff_head, [40 x i8] } zeroinitializer, align 32
@audit_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&audit_cmd_mutex.lock\00", [42 x i8] zeroinitializer }, align 32
@audit_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str, i32 1697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016audit: initializing netlink subsys (%s)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audit_init\00", [21 x i8] zeroinitializer }, align 32
@audit_init._entry_ptr = internal global ptr @audit_init._entry, section ".printk_index", align 4
@audit_default = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@audit_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @audit_net_init, ptr null, ptr @audit_net_exit, ptr null, ptr @audit_net_id, i32 4 }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kauditd\00", [24 x i8] zeroinitializer }, align 32
@kauditd_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"audit: failed to start the kauditd thread (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"state=initialized audit_enabled=%u res=1\00", [55 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__const.audit_net_init.cfg = private unnamed_addr constant %struct.netlink_kernel_cfg { i32 1, i32 1, ptr @audit_receive, ptr null, ptr @audit_multicast_bind, ptr @audit_multicast_unbind, ptr null }, align 4
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cannot initialize netlink socket in namespace\00", [50 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audit_pid\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lost\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"backlog_wait_time_actual\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" msg='%.*s'\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" data=\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c" op=%s audit_enabled=%d res=0\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"add_rule\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"remove_rule\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" op=trim res=1\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" op=make_equiv old=\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" new=\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" res=%d\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c" op=tty_set old-enabled=%d new-enabled=%d old-log_passwd=%d new-log_passwd=%d res=%d\00", [43 x i8] zeroinitializer }, align 32
@init_pid_ns = external dso_local global %struct.pid_namespace, align 4
@auditd_pid_vnr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"audit_send_reply\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audit_enabled\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audit_failure\00", [18 x i8] zeroinitializer }, align 32
@auditd_send_unicast_skb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"op=set %s=%u old=%u \00", [43 x i8] zeroinitializer }, align 32
@auditd_conn_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.59, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@auditd_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.58 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"auditd_conn_lock\00", [47 x i8] zeroinitializer }, align 32
@auditd_reset.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"kauditd retry queue overflow\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"kauditd hold queue overflow\00", [36 x i8] zeroinitializer }, align 32
@__func__.kauditd_printk_skb = private unnamed_addr constant [19 x i8] c"kauditd_printk_skb\00", align 1
@kauditd_printk_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @__func__.kauditd_printk_skb, ptr @.str, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\015audit: type=%d %s\0A\00", [43 x i8] zeroinitializer }, align 32
@kauditd_printk_skb._entry_ptr = internal global ptr @kauditd_printk_skb._entry, section ".printk_index", align 4
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"audit_rate_limit\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"audit_backlog_limit\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"audit_backlog_wait_time\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c" feature=%s old=%u new=%u old_lock=%u new_lock=%u res=%d\00", [39 x i8] zeroinitializer }, align 32
@audit_feature_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.67, ptr @.str.68], [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"only_unset_loginuid\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"loginuid_immutable\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pid=%d uid=%u \00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"connect\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pid=%u uid=%u auid=%u tty=%s ses=%u\00", [60 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" nl-mcgrp=%d op=%s res=%d\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disconnect\00", [21 x i8] zeroinitializer }, align 32
@kauditd_thread.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@init_net = external dso_local global %struct.net, align 128
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@audit_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str, i32 1727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013audit: audit: invalid 'audit' parameter value (%s)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"audit_enable\00", [19 x i8] zeroinitializer }, align 32
@audit_enable._entry_ptr = internal global ptr @audit_enable._entry, section ".printk_index", align 4
@audit_enable._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str, i32 1735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013audit: audit: error setting audit state (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@audit_enable._entry_ptr.83 = internal global ptr @audit_enable._entry.81, section ".printk_index", align 4
@audit_enable._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str, i32 1738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016audit: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@audit_enable._entry_ptr.86 = internal global ptr @audit_enable._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"enabled (after initialization)\00", [33 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"disabled (until reboot)\00", [40 x i8] zeroinitializer }, align 32
@audit_backlog_limit_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str, i32 1750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016audit: audit_backlog_limit: \00", [33 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"audit_backlog_limit_set\00", [40 x i8] zeroinitializer }, align 32
@audit_backlog_limit_set._entry_ptr = internal global ptr @audit_backlog_limit_set._entry, section ".printk_index", align 4
@audit_backlog_limit_set._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str, i32 1753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\01cusing default of %u, unable to parse %s\0A\00", [53 x i8] zeroinitializer }, align 32
@audit_backlog_limit_set._entry_ptr.93 = internal global ptr @audit_backlog_limit_set._entry.91, section ".printk_index", align 4
@audit_backlog_limit_set._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str, i32 1758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c%d\0A\00", [26 x i8] zeroinitializer }, align 32
@audit_backlog_limit_set._entry_ptr.96 = internal global ptr @audit_backlog_limit_set._entry.94, section ".printk_index", align 4
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kauditd_wait.lock\00", [46 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"audit_backlog_wait.lock\00", [40 x i8] zeroinitializer }, align 32
@audit_rate_check.last_check = internal global { i32, [28 x i8] } zeroinitializer, align 32
@audit_rate_check.messages = internal global { i32, [28 x i8] } zeroinitializer, align 32
@audit_rate_check.lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"out of memory in audit_expand\00", [34 x i8] zeroinitializer }, align 32
@hex_asc_upper = external dso_local local_unnamed_addr constant [0 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@task_ppid_nr_ns.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/linux/sched.h\00", [42 x i8] zeroinitializer }, align 32
@audit_log_set_loginuid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pid=%d uid=%u\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c" old-auid=%u auid=%u tty=%s old-ses=%u ses=%u res=%d\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.106 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 10, i64 12, i64 15]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 4294967185, i64 4294967295]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.109 = internal global [18 x i64] [i64 16, i64 16, i64 1000, i64 1001, i64 1002, i64 1003, i64 1004, i64 1005, i64 1010, i64 1011, i64 1012, i64 1013, i64 1014, i64 1015, i64 1016, i64 1017, i64 1018, i64 1019]
@__sancov_gen_cov_switch_values.110 = internal global [15 x i64] [i64 13, i64 16, i64 1000, i64 1001, i64 1005, i64 1010, i64 1011, i64 1012, i64 1013, i64 1014, i64 1015, i64 1016, i64 1017, i64 1018, i64 1019]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 4294967185, i64 4294967295]
@___asan_gen_.113 = private unnamed_addr constant [14 x i8] c"audit_enabled\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 72, i32 6 }
@___asan_gen_.116 = private unnamed_addr constant [19 x i8] c"audit_ever_enabled\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 73, i32 7 }
@___asan_gen_.119 = private unnamed_addr constant [12 x i8] c"auditd_conn\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 111, i32 40 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 224, i32 7 }
@___asan_gen_.128 = private unnamed_addr constant [16 x i8] c"audit_cmd_mutex\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 187, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [14 x i8] c"audit_failure\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 81, i32 12 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 309, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 312, i32 9 }
@___asan_gen_.143 = private unnamed_addr constant [9 x i8] c"last_msg\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 356, i32 23 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 357, i32 9 }
@___asan_gen_.152 = private unnamed_addr constant [11 x i8] c"audit_lost\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 137, i32 17 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"audit_rate_limit\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 117, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 378, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant [20 x i8] c"audit_backlog_limit\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 121, i32 12 }
@___asan_gen_.167 = private unnamed_addr constant [3 x i8] c"af\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 163, i32 30 }
@___asan_gen_.170 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1817, i32 18 }
@___asan_gen_.173 = private unnamed_addr constant [18 x i8] c"audit_initialized\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 70, i32 12 }
@___asan_gen_.176 = private unnamed_addr constant [24 x i8] c"audit_backlog_wait_time\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 123, i32 12 }
@___asan_gen_.179 = private unnamed_addr constant [12 x i8] c"audit_queue\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 150, i32 28 }
@___asan_gen_.182 = private unnamed_addr constant [13 x i8] c"kauditd_wait\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [19 x i8] c"audit_backlog_wait\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [31 x i8] c"audit_backlog_wait_time_actual\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 142, i32 17 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1891, i32 6 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1894, i32 20 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1902, i32 18 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1910, i32 23 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2133, i32 24 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2138, i32 24 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2144, i32 24 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2155, i32 23 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2160, i32 23 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2164, i32 24 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2185, i32 23 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2190, i32 14 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2207, i32 23 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2211, i32 23 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2243, i32 5 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2257, i32 27 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2260, i32 23 }
@___asan_gen_.245 = private unnamed_addr constant [11 x i8] c"session_id\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2290, i32 17 }
@___asan_gen_.248 = private unnamed_addr constant [14 x i8] c"audit_sig_pid\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 127, i32 15 }
@___asan_gen_.251 = private unnamed_addr constant [16 x i8] c"audit_sig_uid.0\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [14 x i8] c"audit_sig_sid\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 128, i32 13 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2431, i32 18 }
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"audit_inode_hash\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 145, i32 18 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 695, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 723, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [13 x i8] c"audit_net_id\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 84, i32 21 }
@___asan_gen_.274 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 45, i32 7 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1682, i32 41 }
@___asan_gen_.279 = private unnamed_addr constant [19 x i8] c"audit_buffer_cache\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 147, i32 27 }
@___asan_gen_.282 = private unnamed_addr constant [18 x i8] c"audit_retry_queue\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 152, i32 28 }
@___asan_gen_.285 = private unnamed_addr constant [17 x i8] c"audit_hold_queue\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 154, i32 28 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1693, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant [14 x i8] c"audit_default\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1696, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [14 x i8] c"audit_net_ops\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1667, i32 33 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1702, i32 17 }
@___asan_gen_.316 = private unnamed_addr constant [13 x i8] c"kauditd_task\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 157, i32 28 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1705, i32 9 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1709, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1984, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1645, i32 15 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1283, i32 30 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1342, i32 28 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1348, i32 28 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1388, i32 26 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1392, i32 26 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1407, i32 25 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1409, i32 7 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1409, i32 20 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1423, i32 24 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1454, i32 24 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1456, i32 24 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1458, i32 24 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1522, i32 24 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1008, i32 8 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 453, i32 31 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 467, i32 32 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 395, i32 23 }
@___asan_gen_.385 = private unnamed_addr constant [17 x i8] c"auditd_conn_lock\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 514, i32 11 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 112, i32 8 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 589, i32 18 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 601, i32 17 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 538, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 433, i32 32 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 438, i32 32 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 443, i32 32 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1132, i32 23 }
@___asan_gen_.418 = private unnamed_addr constant [20 x i8] c"audit_feature_names\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 168, i32 14 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 169, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 170, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1092, i32 24 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1622, i32 29 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1600, i32 23 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1611, i32 23 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1628, i32 29 }
@___asan_gen_.443 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 57, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1722, i32 23 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1722, i32 46 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1724, i32 28 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1724, i32 50 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1727, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1734, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1737, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1750, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1752, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1758, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 158, i32 8 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 161, i32 8 }
@___asan_gen_.511 = private unnamed_addr constant [11 x i8] c"last_check\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 319, i32 23 }
@___asan_gen_.514 = private unnamed_addr constant [9 x i8] c"messages\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 320, i32 14 }
@___asan_gen_.517 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 321, i32 9 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1932, i32 18 }
@___asan_gen_.524 = private unnamed_addr constant [25 x i8] c"../include/linux/sched.h\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1603, i32 25 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2330, i32 23 }
@___asan_gen_.529 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.530 = private constant [18 x i8] c"../kernel/audit.c\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2332, i32 23 }
@llvm.compiler.used = appending global [162 x ptr] [ptr @__initcall__kmod_audit__493_1714_audit_init2, ptr @__ksymtab_audit_enabled, ptr @__ksymtab_audit_log, ptr @__ksymtab_audit_log_end, ptr @__ksymtab_audit_log_format, ptr @__ksymtab_audit_log_start, ptr @__ksymtab_audit_log_task_context, ptr @__ksymtab_audit_log_task_info, ptr @__setup_audit_backlog_limit_set, ptr @__setup_audit_enable, ptr @audit_backlog_limit_set._entry, ptr @audit_backlog_limit_set._entry.91, ptr @audit_backlog_limit_set._entry.94, ptr @audit_backlog_limit_set._entry_ptr, ptr @audit_backlog_limit_set._entry_ptr.93, ptr @audit_backlog_limit_set._entry_ptr.96, ptr @audit_enable._entry, ptr @audit_enable._entry.81, ptr @audit_enable._entry.84, ptr @audit_enable._entry_ptr, ptr @audit_enable._entry_ptr.83, ptr @audit_enable._entry_ptr.86, ptr @audit_init._entry, ptr @audit_init._entry_ptr, ptr @audit_log_lost._entry, ptr @audit_log_lost._entry_ptr, ptr @audit_log_start._entry, ptr @audit_log_start._entry_ptr, ptr @audit_panic._entry, ptr @audit_panic._entry_ptr, ptr @kauditd_printk_skb._entry, ptr @kauditd_printk_skb._entry_ptr, ptr @audit_enabled, ptr @audit_ever_enabled, ptr @auditd_conn, ptr @.str, ptr @.str.1, ptr @audit_cmd_mutex, ptr @audit_failure, ptr @.str.2, ptr @.str.3, ptr @audit_log_lost.last_msg, ptr @audit_log_lost.lock, ptr @.str.4, ptr @audit_lost, ptr @audit_rate_limit, ptr @.str.5, ptr @audit_backlog_limit, ptr @af, ptr @audit_serial.serial, ptr @audit_initialized, ptr @audit_backlog_wait_time, ptr @audit_queue, ptr @kauditd_wait, ptr @audit_backlog_wait, ptr @audit_backlog_wait_time_actual, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @session_id, ptr @audit_sig_pid, ptr @audit_sig_uid.0, ptr @audit_sig_sid, ptr @.str.25, ptr @audit_inode_hash, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @audit_net_id, ptr @.str.29, ptr @.str.30, ptr @audit_buffer_cache, ptr @audit_retry_queue, ptr @audit_hold_queue, ptr @audit_init.__key, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @audit_default, ptr @.str.34, ptr @.str.35, ptr @audit_net_ops, ptr @.str.36, ptr @kauditd_task, ptr @.str.37, ptr @.str.38, ptr @skb_queue_head_init.__key, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @auditd_conn_lock, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @audit_feature_names, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @audit_rate_check.last_check, ptr @audit_rate_check.messages, ptr @audit_rate_check.lock, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102], section "llvm.metadata"
@0 = internal global [141 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_enabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_ever_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auditd_conn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_cmd_mutex to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_failure to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_panic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_log_lost.last_msg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_log_lost.lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_lost to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_rate_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_log_lost._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_backlog_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_serial.serial to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_initialized to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_backlog_wait_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_queue to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kauditd_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_backlog_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_backlog_wait_time_actual to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_log_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @session_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_sig_pid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_sig_uid.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_sig_sid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_inode_hash to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_buffer_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_retry_queue to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_hold_queue to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_default to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kauditd_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auditd_conn_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kauditd_printk_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_feature_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_enable._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_enable._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_backlog_limit_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_backlog_limit_set._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_backlog_limit_set._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_rate_check.last_check to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_rate_check.messages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_rate_check.lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @auditd_test_task(ptr nocapture noundef readonly %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !341
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = load volatile ptr, ptr @auditd_conn, align 4
  %call = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b12 = load i1, ptr @auditd_test_task.__warned, align 1
  br i1 %.b12, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @auditd_test_task.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 224, ptr noundef nonnull @.str.1) #18
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %4, null
  br i1 %tobool9.not, label %do.end7.land.end_crit_edge, label %land.rhs

do.end7.land.end_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.end

land.rhs:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #20
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %7 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %8, i32 0, i32 22, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %cmp = icmp eq ptr %6, %10
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end7.land.end_crit_edge
  %11 = phi i32 [ 0, %do.end7.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %call.i13 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i13, label %land.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i16

land.end.rcu_read_unlock.exit_crit_edge:          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i16:                                ; preds = %land.end
  %call1.i14 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool.not.i15, label %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i18

land.lhs.true.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i18:                               ; preds = %land.lhs.true.i16
  %.b4.i17 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17, label %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, label %if.then.i19

land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i19:                                      ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i19, %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, %land.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !342
  %12 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i.i.i.i20 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i20 to ptr
  %preempt_count.i.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i21, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i21, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @audit_ctl_lock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @audit_cmd_mutex, i32 noundef 0) #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  store ptr %3, ptr getelementptr inbounds (%struct.audit_ctl_mutex, ptr @audit_cmd_mutex, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @audit_ctl_unlock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr null, ptr getelementptr inbounds (%struct.audit_ctl_mutex, ptr @audit_cmd_mutex, i32 0, i32 1), align 4
  tail call void @mutex_unlock(ptr noundef nonnull @audit_cmd_mutex) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @audit_panic(ptr noundef %message) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @audit_failure, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb2
    i32 1, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.audit_panic) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %do.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %message) #21
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.3, ptr noundef %message) #22
  unreachable

sw.epilog:                                        ; preds = %do.end, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @audit_log_lost(ptr noundef %message) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @audit_lost, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr nonnull @audit_lost, i32 1, i32 3, i32 1) #18
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @audit_lost, ptr nonnull @audit_lost, i32 1, ptr nonnull elementtype(i32) @audit_lost) #18, !srcloc !343
  %1 = load i32, ptr @audit_failure, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %entry.if.then12_crit_edge, label %lor.end

entry.if.then12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then12

lor.end:                                          ; preds = %entry
  %2 = load i32, ptr @audit_rate_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.end.if.then12_crit_edge, label %do.body2

lor.end.if.then12_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then12

do.body2:                                         ; preds = %lor.end
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @audit_log_lost.lock) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %4 = load i32, ptr @audit_log_lost.last_msg, align 4
  %sub = sub i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub)
  %cmp7 = icmp ugt i32 %sub, 100
  br i1 %cmp7, label %if.end10, label %if.end10.thread30

if.end10.thread30:                                ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @audit_log_lost.lock, i32 noundef %call4) #18
  br label %if.end23

if.end10:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  store i32 %3, ptr @audit_log_lost.last_msg, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @audit_log_lost.lock, i32 noundef %call4) #18
  br label %if.then12

if.then12:                                        ; preds = %if.end10, %lor.end.if.then12_crit_edge, %entry.if.then12_crit_edge
  %call13 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.audit_log_lost) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end22_crit_edge, label %do.end18

if.then12.if.end22_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i26 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @audit_lost, i32 noundef 4) #18
  %5 = load volatile i32, ptr @audit_lost, align 4
  %6 = load i32, ptr @audit_rate_limit, align 4
  %7 = load i32, ptr @audit_backlog_limit, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %5, i32 noundef %6, i32 noundef %7) #21
  br label %if.end22

if.end22:                                         ; preds = %do.end18, %if.then12.if.end22_crit_edge
  %8 = load i32, ptr @audit_failure, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %8, label %if.end22.if.end23_crit_edge [
    i32 2, label %sw.bb2.i
    i32 1, label %sw.bb.i
  ]

if.end22.if.end23_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

sw.bb.i:                                          ; preds = %if.end22
  %call.i = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.audit_panic) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.if.end23_crit_edge, label %do.end.i

sw.bb.i.if.end23_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %message) #21
  br label %if.end23

sw.bb2.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.3, ptr noundef %message) #22
  unreachable

if.end23:                                         ; preds = %do.end.i, %sw.bb.i.if.end23_crit_edge, %if.end22.if.end23_crit_edge, %if.end10.thread30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @audit_send_list_thread(ptr noundef %_dest) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.audit_netlink_list, ptr %_dest, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.audit_get_sk.exit_crit_edge, label %if.end.i

entry.audit_get_sk.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_get_sk.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = load i32, ptr @audit_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef nonnull %1, i32 noundef %2) #18
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  br label %audit_get_sk.exit

audit_get_sk.exit:                                ; preds = %if.end.i, %entry.audit_get_sk.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ null, %entry.audit_get_sk.exit_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @audit_cmd_mutex, i32 noundef 0) #18
  store ptr null, ptr getelementptr inbounds (%struct.audit_ctl_mutex, ptr @audit_cmd_mutex, i32 0, i32 1), align 4
  tail call void @mutex_unlock(ptr noundef nonnull @audit_cmd_mutex) #18
  %q = getelementptr inbounds %struct.audit_netlink_list, ptr %_dest, i32 0, i32 2
  %5 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %q, align 4
  %cmp.i.i13 = icmp eq ptr %6, %q
  %tobool.not.i81214 = icmp eq ptr %6, null
  %tobool.not.i815 = or i1 %cmp.i.i13, %tobool.not.i81214
  br i1 %tobool.not.i815, label %audit_get_sk.exit.while.end_crit_edge, label %while.body.lr.ph

audit_get_sk.exit.while.end_crit_edge:            ; preds = %audit_get_sk.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body.lr.ph:                                 ; preds = %audit_get_sk.exit
  %qlen.i.i = getelementptr inbounds %struct.audit_netlink_list, ptr %_dest, i32 0, i32 2, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %7 = phi ptr [ %6, %while.body.lr.ph ], [ %19, %while.body.while.body_crit_edge ]
  %8 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.27, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %7, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.27, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %13, ptr %prev17.i.i, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %11, ptr %13, align 8
  %16 = ptrtoint ptr %_dest to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %_dest, align 4
  %call2 = tail call i32 @netlink_unicast(ptr noundef %retval.0.i, ptr noundef nonnull %7, i32 noundef %17, i32 noundef 0) #18
  %18 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %q, align 4
  %cmp.i.i = icmp eq ptr %19, %q
  %tobool.not.i812 = icmp eq ptr %19, null
  %tobool.not.i8 = or i1 %cmp.i.i, %tobool.not.i812
  br i1 %tobool.not.i8, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %audit_get_sk.exit.while.end_crit_edge
  %20 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %21, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !344
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #18
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #18, !srcloc !345
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i10, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_net.exit_crit_edge, label %if.then10.i.i.i.i, !prof !346

if.end5.i.i.i.i.put_net.exit_crit_edge:           ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %put_net.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #18
  br label %put_net.exit

if.then.i10:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !347
  tail call void @__put_net(ptr noundef %21) #18
  br label %put_net.exit

put_net.exit:                                     ; preds = %if.then.i10, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_net.exit_crit_edge
  tail call void @kfree(ptr noundef %_dest) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @audit_make_reply(i32 noundef %seq, i32 noundef %type, i32 noundef %done, i32 noundef %multi, ptr nocapture noundef readonly %payload, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %multi)
  %tobool.not = icmp eq i32 %multi, 0
  %cond = select i1 %tobool.not, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done)
  %tobool1.not = icmp eq i32 %done, 0
  %spec.select = select i1 %tobool1.not, i32 %type, i32 3
  %sub.i.i = add i32 %size, 19
  %and.i.i = and i32 %sub.i.i, -4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #18
  %tobool3.not = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %if.end.skb_tailroom.exit.i_crit_edge

if.end.skb_tailroom.exit.i_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %if.end.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %if.end.skb_tailroom.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %and.i.i)
  %cmp.i = icmp slt i32 %cond.i.i, %and.i.i
  br i1 %cmp.i, label %skb_tailroom.exit.i.out_kfree_skb_crit_edge, label %nlmsg_put.exit, !prof !348

skb_tailroom.exit.i.out_kfree_skb_crit_edge:      ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_kfree_skb

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %seq, i32 noundef %spec.select, i32 noundef %size, i32 noundef %cond) #18
  %tobool5.not = icmp eq ptr %call3.i, null
  br i1 %tobool5.not, label %nlmsg_put.exit.out_kfree_skb_crit_edge, label %if.end7

nlmsg_put.exit.out_kfree_skb_crit_edge:           ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_kfree_skb

if.end7:                                          ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %6 = call ptr @memcpy(ptr %add.ptr.i, ptr %payload, i32 %size)
  br label %cleanup

out_kfree_skb:                                    ; preds = %nlmsg_put.exit.out_kfree_skb_crit_edge, %skb_tailroom.exit.i.out_kfree_skb_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #18
  br label %cleanup

cleanup:                                          ; preds = %out_kfree_skb, %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.i, %if.end7 ], [ null, %out_kfree_skb ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @is_audit_feature_set(i32 noundef %i) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.audit_features, ptr @af, i32 0, i32 2), align 4
  %and = and i32 %i, 31
  %shl = shl nuw i32 1, %and
  %and1 = and i32 %0, %shl
  ret i32 %and1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @audit_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @audit_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.30, i32 noundef 12, i32 noundef 0, i32 noundef 262144, ptr noundef null) #18
  store ptr %call, ptr @audit_buffer_cache, align 4
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.sk_buff_head, ptr @audit_queue, i32 0, i32 2), ptr noundef nonnull @.str.39, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #18
  store ptr @audit_queue, ptr @audit_queue, align 4
  store ptr @audit_queue, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @audit_queue, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @audit_queue, i32 0, i32 1), align 4
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.sk_buff_head, ptr @audit_retry_queue, i32 0, i32 2), ptr noundef nonnull @.str.39, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #18
  store ptr @audit_retry_queue, ptr @audit_retry_queue, align 4
  store ptr @audit_retry_queue, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @audit_retry_queue, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @audit_retry_queue, i32 0, i32 1), align 4
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.sk_buff_head, ptr @audit_hold_queue, i32 0, i32 2), ptr noundef nonnull @.str.39, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #18
  store ptr @audit_hold_queue, ptr @audit_hold_queue, align 4
  store ptr @audit_hold_queue, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @audit_hold_queue, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @audit_hold_queue, i32 0, i32 1), align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.022 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x %struct.list_head], ptr @audit_inode_hash, i32 0, i32 %i.022
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr [32 x %struct.list_head], ptr @audit_inode_hash, i32 0, i32 %i.022, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx, ptr %prev.i, align 4
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %do.body, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

do.body:                                          ; preds = %for.body
  tail call void @__mutex_init(ptr noundef nonnull @audit_cmd_mutex, ptr noundef nonnull @.str.31, ptr noundef nonnull @audit_init.__key) #18
  store ptr null, ptr getelementptr inbounds (%struct.audit_ctl_mutex, ptr @audit_cmd_mutex, i32 0, i32 1), align 4
  %.b = load i1, ptr @audit_default, align 4
  %cond = select i1 %.b, ptr @.str.34, ptr @.str.35
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull %cond) #21
  %call6 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @audit_net_ops) #18
  store i32 1, ptr @audit_initialized, align 4
  %call7 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @kauditd_thread, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.36) #18
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  store ptr %call7, ptr @kauditd_task, align 4
  %3 = ptrtoint ptr %call7 to i32
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.37, i32 noundef %3) #22
  unreachable

if.end16:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %call10 = tail call i32 @wake_up_process(ptr noundef %call7) #18
  store ptr %call7, ptr @kauditd_task, align 4
  %4 = load i32, ptr @audit_enabled, align 4
  tail call void (ptr, i32, i32, ptr, ...) @audit_log(ptr noundef null, i32 noundef 3264, i32 noundef 2000, ptr noundef nonnull @.str.38, i32 noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @audit_enable(ptr noundef %str) #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcasecmp(ptr noundef %str, ptr noundef nonnull @.str.75)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.then12_crit_edge, label %lor.lhs.false

entry.if.then12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then12

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef %str, ptr noundef nonnull dereferenceable(2) @.str.76) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then12_crit_edge, label %if.else

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then12

if.else:                                          ; preds = %lor.lhs.false
  %call3 = tail call i32 @strcasecmp(ptr noundef %str, ptr noundef nonnull @.str.77)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else.if.then8_crit_edge, label %lor.lhs.false5

if.else.if.then8_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

lor.lhs.false5:                                   ; preds = %if.else
  %call6 = tail call i32 @strcmp(ptr noundef %str, ptr noundef nonnull dereferenceable(2) @.str.78) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false5.if.then8_crit_edge, label %do.end

lor.lhs.false5.if.then8_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false5.if.then8_crit_edge, %if.else.if.then8_crit_edge
  store i1 true, ptr @audit_default, align 4
  br label %if.end13

do.end:                                           ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #20
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %str) #21
  store i1 true, ptr @audit_default, align 4
  br label %if.end13

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %entry.if.then12_crit_edge
  store i1 false, ptr @audit_default, align 4
  store i32 -1, ptr @audit_initialized, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.end, %if.then8
  %.b3335 = phi i1 [ false, %if.then12 ], [ true, %if.then8 ], [ true, %do.end ]
  %0 = zext i1 %.b3335 to i32
  %1 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not.i.i = icmp eq i32 %1, 0
  br i1 %cmp1.not.i.i, label %if.end13.audit_set_enabled.exit_crit_edge, label %if.then2.i.i

if.end13.audit_set_enabled.exit_crit_edge:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_set_enabled.exit

if.then2.i.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.i = icmp ne i32 %1, 2
  %..i.i = zext i1 %cmp.i.i to i32
  %call.i.i = tail call fastcc i32 @audit_log_config_change(ptr noundef nonnull @.str.55, i32 noundef %0, i32 noundef %1, i32 noundef %..i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp ne i32 %call.i.i, 0
  %cmp.not.i.i = xor i1 %cmp.i.i, true
  %brmerge.i.i = select i1 %tobool.not.i.i, i1 true, i1 %cmp.not.i.i
  br i1 %brmerge.i.i, label %do.end18, label %if.then2.i.i.audit_set_enabled.exit_crit_edge

if.then2.i.i.audit_set_enabled.exit_crit_edge:    ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_set_enabled.exit

audit_set_enabled.exit:                           ; preds = %if.then2.i.i.audit_set_enabled.exit_crit_edge, %if.end13.audit_set_enabled.exit_crit_edge
  store i32 %0, ptr @audit_enabled, align 4
  %lnot.ext.i = zext i1 %.b3335 to i8
  %2 = load i8, ptr @audit_ever_enabled, align 1, !range !349
  %or.i = or i8 %2, %lnot.ext.i
  store i8 %or.i, ptr @audit_ever_enabled, align 1
  br label %do.end23

do.end18:                                         ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %.b31 = load i1, ptr @audit_default, align 4
  %3 = zext i1 %.b31 to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %3) #21
  br label %do.end23

do.end23:                                         ; preds = %do.end18, %audit_set_enabled.exit
  %.b = load i1, ptr @audit_default, align 4
  %cond = select i1 %.b, ptr @.str.87, ptr @.str.88
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull %cond) #21
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @audit_backlog_limit_set(ptr noundef %str) #6 section ".init.text" align 64 {
entry:
  %audit_backlog_limit_arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %audit_backlog_limit_arg) #18
  %0 = ptrtoint ptr %audit_backlog_limit_arg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %audit_backlog_limit_arg, align 4, !annotation !350
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #21
  %call1 = call i32 @kstrtouint(ptr noundef %str, i32 noundef 0, ptr noundef nonnull %audit_backlog_limit_arg) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end4

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %1 = load i32, ptr @audit_backlog_limit, align 4
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %1, ptr noundef %str) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = ptrtoint ptr %audit_backlog_limit_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audit_backlog_limit_arg, align 4
  store i32 %3, ptr @audit_backlog_limit, align 4
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %3) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %audit_backlog_limit_arg) #18
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @audit_serial() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @audit_serial.serial, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !351
  tail call void @llvm.prefetch.p0(ptr nonnull @audit_serial.serial, i32 1, i32 3, i32 1) #18
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @audit_serial.serial, ptr nonnull @audit_serial.serial, i32 1, ptr nonnull elementtype(i32) @audit_serial.serial) #18, !srcloc !352
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !353
  ret i32 %asmresult.i.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @audit_log_start(ptr noundef %ctx, i32 noundef %gfp_mask, i32 noundef %type) #0 align 64 {
entry:
  %t = alloca %struct.timespec64, align 8
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %t) #18
  %0 = call ptr @memset(ptr %t, i32 255, i32 16)
  %1 = load i32, ptr @audit_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup115_crit_edge

entry.cleanup115_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup115

if.end:                                           ; preds = %entry
  %call = tail call i32 @audit_filter(i32 noundef %type, i32 noundef 5) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup115_crit_edge, label %if.end5, !prof !348

if.end.cleanup115_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup115

if.end5:                                          ; preds = %if.end
  %2 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %call7 = tail call i32 @auditd_test_task(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end5.if.end106_crit_edge

if.end5.if.end106_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end106

lor.lhs.false:                                    ; preds = %if.end5
  %6 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %10 = load ptr, ptr getelementptr inbounds (%struct.audit_ctl_mutex, ptr @audit_cmd_mutex, i32 0, i32 1), align 4
  %cmp.i = icmp eq ptr %9, %10
  br i1 %cmp.i, label %lor.lhs.false.if.end106_crit_edge, label %if.then10

lor.lhs.false.if.end106_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end106

if.then10:                                        ; preds = %lor.lhs.false
  %11 = load i32, ptr @audit_backlog_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not140 = icmp eq i32 %11, 0
  br i1 %tobool11.not140, label %if.then10.if.end106_crit_edge, label %land.rhs.lr.ph

if.then10.if.end106_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end106

land.rhs.lr.ph:                                   ; preds = %if.then10
  %12 = load i32, ptr @audit_backlog_wait_time, align 4
  %and.i130 = and i32 %gfp_mask, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130)
  %tobool.i = icmp ne i32 %and.i130, 0
  %13 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %14 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %15 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %16 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %__here.land.rhs_crit_edge, %land.rhs.lr.ph
  %17 = phi i32 [ %11, %land.rhs.lr.ph ], [ %32, %__here.land.rhs_crit_edge ]
  %stime.0141 = phi i32 [ %12, %land.rhs.lr.ph ], [ %call91, %__here.land.rhs_crit_edge ]
  %18 = load i32, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @audit_queue, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %17)
  %cmp13 = icmp ugt i32 %18, %17
  br i1 %cmp13, label %while.body, label %land.rhs.if.end106_crit_edge

land.rhs.if.end106_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end106

while.body:                                       ; preds = %land.rhs
  call void @__wake_up(ptr noundef nonnull @kauditd_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stime.0141)
  %cmp15 = icmp sgt i32 %stime.0141, 0
  %or.cond = select i1 %tobool.i, i1 %cmp15, i1 false
  br i1 %or.cond, label %if.then16, label %if.else

if.then16:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #18
  %19 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %wait, align 4
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %13, align 4
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @default_wake_function, ptr %14, align 4
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %15, align 4
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %16, align 4
  call void @add_wait_queue_exclusive(ptr noundef nonnull @audit_backlog_wait, ptr noundef nonnull %wait) #18
  br label %__here

__here:                                           ; preds = %if.then16
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 212
  %28 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 ptrtoint (ptr blockaddress(@audit_log_start, %__here) to i32), ptr %task_state_change, align 4
  %29 = load ptr, ptr %task, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 2, ptr %29, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !354
  %call91 = call i32 @schedule_timeout(i32 noundef %stime.0141) #18
  %sub = sub i32 %stime.0141, %call91
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @audit_backlog_wait_time_actual, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr nonnull @audit_backlog_wait_time_actual, i32 1, i32 3, i32 1) #18
  %31 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @audit_backlog_wait_time_actual, ptr nonnull @audit_backlog_wait_time_actual, i32 %sub, ptr nonnull elementtype(i32) @audit_backlog_wait_time_actual) #18, !srcloc !343
  call void @remove_wait_queue(ptr noundef nonnull @audit_backlog_wait, ptr noundef nonnull %wait) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #18
  %32 = load i32, ptr @audit_backlog_limit, align 4
  %tobool11.not = icmp eq i32 %32, 0
  br i1 %tobool11.not, label %__here.if.end106_crit_edge, label %__here.land.rhs_crit_edge

__here.land.rhs_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs

__here.if.end106_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end106

if.else:                                          ; preds = %while.body
  %33 = load i32, ptr @audit_rate_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %if.else.land.lhs.true94_crit_edge, label %do.body2.i

if.else.land.lhs.true94_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true94

do.body2.i:                                       ; preds = %if.else
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @audit_rate_check.lock) #18
  %34 = load i32, ptr @audit_rate_check.messages, align 4
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr @audit_rate_check.messages, align 4
  %35 = load i32, ptr @audit_rate_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %35)
  %cmp6.i = icmp ult i32 %inc.i, %35
  br i1 %cmp6.i, label %do.body2.i.audit_rate_check.exit.thread135_crit_edge, label %if.else.i

do.body2.i.audit_rate_check.exit.thread135_crit_edge: ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_rate_check.exit.thread135

if.else.i:                                        ; preds = %do.body2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %37 = load i32, ptr @audit_rate_check.last_check, align 4
  %sub.i = sub i32 %36, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub.i)
  %cmp9.i = icmp ugt i32 %sub.i, 100
  br i1 %cmp9.i, label %if.then11.i, label %audit_rate_check.exit

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  store i32 %36, ptr @audit_rate_check.last_check, align 4
  store i32 0, ptr @audit_rate_check.messages, align 4
  br label %audit_rate_check.exit.thread135

audit_rate_check.exit.thread135:                  ; preds = %if.then11.i, %do.body2.i.audit_rate_check.exit.thread135_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @audit_rate_check.lock, i32 noundef %call3.i) #18
  br label %land.lhs.true94

audit_rate_check.exit:                            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @audit_rate_check.lock, i32 noundef %call3.i) #18
  br label %if.end104

land.lhs.true94:                                  ; preds = %audit_rate_check.exit.thread135, %if.else.land.lhs.true94_crit_edge
  %call95 = call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.audit_log_start) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %land.lhs.true94.if.end104_crit_edge, label %do.end100

land.lhs.true94.if.end104_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end104

do.end100:                                        ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #20
  %38 = load i32, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @audit_queue, i32 0, i32 1), align 4
  %39 = load i32, ptr @audit_backlog_limit, align 4
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %38, i32 noundef %39) #21
  br label %if.end104

if.end104:                                        ; preds = %do.end100, %land.lhs.true94.if.end104_crit_edge, %audit_rate_check.exit
  call void @audit_log_lost(ptr noundef nonnull @.str.7)
  br label %cleanup115

if.end106:                                        ; preds = %__here.if.end106_crit_edge, %land.rhs.if.end106_crit_edge, %if.then10.if.end106_crit_edge, %lor.lhs.false.if.end106_crit_edge, %if.end5.if.end106_crit_edge
  %40 = load ptr, ptr @audit_buffer_cache, align 4
  %call.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %40, i32 noundef %gfp_mask) #18
  %tobool.not.i131 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i131, label %if.end106.if.then109_crit_edge, label %if.end.i

if.end106.if.then109_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then109

if.end.i:                                         ; preds = %if.end106
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef 1040, i32 noundef %gfp_mask, i32 noundef 0, i32 noundef -1) #18
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i.i.i, ptr %call.i, align 8
  %tobool3.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.audit_buffer_free.exit.i_crit_edge, label %if.end5.i

if.end.i.audit_buffer_free.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_buffer_free.exit.i

if.end5.i:                                        ; preds = %if.end.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 7
  %42 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not.i.i.i = icmp eq i32 %43, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end5.i.audit_buffer_free.exit.i_crit_edge

if.end5.i.audit_buffer_free.exit.i_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_buffer_free.exit.i

skb_tailroom.exit.i.i:                            ; preds = %if.end5.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 17
  %44 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %46 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.audit_buffer_free.exit.i_crit_edge, label %nlmsg_put.exit.i, !prof !348

skb_tailroom.exit.i.i.audit_buffer_free.exit.i_crit_edge: ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_buffer_free.exit.i

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef %type, i32 noundef 0, i32 noundef 0) #18
  %tobool8.not.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool8.not.i, label %nlmsg_put.exit.i.audit_buffer_free.exit.i_crit_edge, label %if.end110

nlmsg_put.exit.i.audit_buffer_free.exit.i_crit_edge: ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_buffer_free.exit.i

audit_buffer_free.exit.i:                         ; preds = %nlmsg_put.exit.i.audit_buffer_free.exit.i_crit_edge, %skb_tailroom.exit.i.i.audit_buffer_free.exit.i_crit_edge, %if.end5.i.audit_buffer_free.exit.i_crit_edge, %if.end.i.audit_buffer_free.exit.i_crit_edge
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 8
  call void @kfree_skb_reason(ptr noundef %49, i32 noundef 0) #18
  %50 = load ptr, ptr @audit_buffer_cache, align 4
  call void @kmem_cache_free(ptr noundef %50, ptr noundef nonnull %call.i) #18
  br label %if.then109

if.then109:                                       ; preds = %audit_buffer_free.exit.i, %if.end106.if.then109_crit_edge
  call void @audit_log_lost(ptr noundef nonnull @.str.8)
  br label %cleanup115

if.end110:                                        ; preds = %nlmsg_put.exit.i
  %ctx11.i = getelementptr inbounds %struct.audit_buffer, ptr %call.i, i32 0, i32 1
  %51 = ptrtoint ptr %ctx11.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %ctx, ptr %ctx11.i, align 4
  %gfp_mask12.i = getelementptr inbounds %struct.audit_buffer, ptr %call.i, i32 0, i32 2
  %52 = ptrtoint ptr %gfp_mask12.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %gfp_mask, ptr %gfp_mask12.i, align 8
  call void @ktime_get_coarse_real_ts64(ptr noundef nonnull %t) #18
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @audit_serial.serial, i32 noundef 4) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !351
  call void @llvm.prefetch.p0(ptr nonnull @audit_serial.serial, i32 1, i32 3, i32 1) #18
  %53 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @audit_serial.serial, ptr nonnull @audit_serial.serial, i32 1, ptr nonnull elementtype(i32) @audit_serial.serial) #18, !srcloc !352
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %53, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !353
  %tobool112.not = icmp eq ptr %ctx, null
  br i1 %tobool112.not, label %if.end110.if.end114_crit_edge, label %if.then113

if.end110.if.end114_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end114

if.then113:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #20
  %54 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %ctx, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %if.end110.if.end114_crit_edge
  %55 = ptrtoint ptr %t to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %t, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %t, i32 0, i32 1
  %57 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tv_nsec, align 8
  %div = sdiv i32 %58, 1000000
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.9, i64 noundef %56, i32 noundef %div, i32 noundef %asmresult.i.i.i.i.i.i)
  br label %cleanup115

cleanup115:                                       ; preds = %if.end114, %if.then109, %if.end104, %if.end.cleanup115_crit_edge, %entry.cleanup115_crit_edge
  %retval.1 = phi ptr [ %call.i, %if.end114 ], [ null, %if.then109 ], [ null, %entry.cleanup115_crit_edge ], [ null, %if.end.cleanup115_crit_edge ], [ null, %if.end104 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %t) #18
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @audit_filter(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @audit_log_format(ptr noundef %ab, ptr nocapture noundef readonly %fmt, ...) #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #18
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !350
  %tobool.not = icmp eq ptr %ab, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  call fastcc void @audit_log_vformat(ptr noundef nonnull %ab, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @audit_log_vformat(ptr noundef readonly %ab, ptr nocapture noundef readonly %fmt, [1 x i32] %args.coerce) unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %args2 = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %args.coerce.fca.0.extract = extractvalue [1 x i32] %args.coerce, 0
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %args.coerce.fca.0.extract, ptr %args, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args2) #18
  %1 = ptrtoint ptr %args2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args2, align 4, !annotation !350
  %tobool.not = icmp eq ptr %ab, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = ptrtoint ptr %ab to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ab, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.body7, label %do.end13, !prof !348

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/audit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1956, 0\0A.popsection", ""() #18, !srcloc !355
  unreachable

do.end13:                                         ; preds = %do.body
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %do.end13.skb_tailroom.exit.i_crit_edge

do.end13.skb_tailroom.exit.i_crit_edge:           ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_tailroom.exit.i

skb_tailroom.exit:                                ; preds = %do.end13
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub.i)
  %cmp = icmp eq i32 %sub.ptr.sub.i, 0
  br i1 %cmp, label %cond.false.i.i, label %skb_tailroom.exit.if.end20_crit_edge

skb_tailroom.exit.if.end20_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

cond.false.i.i:                                   ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i, align 4
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %sub.ptr.rhs.cast.i.i, %sub.ptr.lhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %do.end13.skb_tailroom.exit.i_crit_edge
  %cond.i.neg.i = phi i32 [ %sub.ptr.sub.i.neg.i, %cond.false.i.i ], [ 0, %do.end13.skb_tailroom.exit.i_crit_edge ]
  %gfp_mask.i = getelementptr inbounds %struct.audit_buffer, ptr %ab, i32 0, i32 2
  %14 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gfp_mask.i, align 4
  %call2.i = tail call i32 @pskb_expand_head(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 1024, i32 noundef %15) #18
  %16 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i13.i = icmp eq i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %tobool.i.not.i13.i, label %skb_tailroom.exit21.i, label %skb_tailroom.exit21.i.thread

skb_tailroom.exit21.i:                            ; preds = %skb_tailroom.exit.i
  br i1 %cmp.i, label %skb_tailroom.exit21.i.audit_expand.exit.thread_crit_edge, label %audit_expand.exit

skb_tailroom.exit21.i.audit_expand.exit.thread_crit_edge: ; preds = %skb_tailroom.exit21.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_expand.exit.thread

skb_tailroom.exit21.i.thread:                     ; preds = %skb_tailroom.exit.i
  br i1 %cmp.i, label %skb_tailroom.exit21.i.thread.audit_expand.exit.thread_crit_edge, label %audit_expand.exit.thread102

skb_tailroom.exit21.i.thread.audit_expand.exit.thread_crit_edge: ; preds = %skb_tailroom.exit21.i.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_expand.exit.thread

audit_expand.exit.thread102:                      ; preds = %skb_tailroom.exit21.i.thread
  call void @__sanitizer_cov_trace_pc() #20
  %truesize.i105 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 20
  %18 = ptrtoint ptr %truesize.i105 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %truesize.i105, align 8
  %add.i106 = add i32 %19, %cond.i.neg.i
  store i32 %add.i106, ptr %truesize.i105, align 8
  br label %cleanup

audit_expand.exit.thread:                         ; preds = %skb_tailroom.exit21.i.thread.audit_expand.exit.thread_crit_edge, %skb_tailroom.exit21.i.audit_expand.exit.thread_crit_edge
  tail call void @audit_log_lost(ptr noundef nonnull @.str.99) #18
  br label %cleanup

audit_expand.exit:                                ; preds = %skb_tailroom.exit21.i
  %end.i14.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %20 = ptrtoint ptr %end.i14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i14.i, align 4
  %sub.ptr.lhs.cast.i16.i = ptrtoint ptr %21 to i32
  %tail.i15.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %22 = ptrtoint ptr %tail.i15.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i15.i, align 8
  %sub.ptr.rhs.cast.i17.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i18.i = sub i32 %sub.ptr.lhs.cast.i16.i, %sub.ptr.rhs.cast.i17.i
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 20
  %24 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %truesize.i, align 8
  %sub.i = add i32 %25, %cond.i.neg.i
  %add.i = add i32 %sub.i, %sub.ptr.sub.i18.i
  store i32 %add.i, ptr %truesize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub.i18.i)
  %tobool17.not = icmp eq i32 %sub.ptr.sub.i18.i, 0
  br i1 %tobool17.not, label %audit_expand.exit.cleanup_crit_edge, label %audit_expand.exit.if.end20_crit_edge

audit_expand.exit.if.end20_crit_edge:             ; preds = %audit_expand.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

audit_expand.exit.cleanup_crit_edge:              ; preds = %audit_expand.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end20:                                         ; preds = %audit_expand.exit.if.end20_crit_edge, %skb_tailroom.exit.if.end20_crit_edge
  %avail.0 = phi i32 [ %sub.ptr.sub.i18.i, %audit_expand.exit.if.end20_crit_edge ], [ %sub.ptr.sub.i, %skb_tailroom.exit.if.end20_crit_edge ]
  call void @llvm.va_copy(ptr nonnull %args2, ptr nonnull %args)
  %tail.i64 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %26 = ptrtoint ptr %tail.i64 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i64, align 8
  %28 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %28)
  %.fca.0.load62 = load i32, ptr %args, align 4
  %.fca.0.insert63 = insertvalue [1 x i32] poison, i32 %.fca.0.load62, 0
  %call23 = call i32 @vsnprintf(ptr noundef %27, i32 noundef %avail.0, ptr noundef %fmt, [1 x i32] %.fca.0.insert63)
  call void @__sanitizer_cov_trace_cmp4(i32 %call23, i32 %avail.0)
  %cmp24.not = icmp slt i32 %call23, %avail.0
  br i1 %cmp24.not, label %if.end20.if.end34_crit_edge, label %if.then25

if.end20.if.end34_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

if.then25:                                        ; preds = %if.end20
  %add = sub i32 1, %avail.0
  %sub = add i32 %add, %call23
  %29 = call i32 @llvm.umax.i32(i32 %sub, i32 1024)
  %30 = ptrtoint ptr %ab to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ab, align 4
  %data_len.i.i.i65 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %data_len.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len.i.i.i65, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i.not.i.i66 = icmp eq i32 %33, 0
  br i1 %tobool.i.not.i.i66, label %cond.false.i.i72, label %if.then25.skb_tailroom.exit.i77_crit_edge

if.then25.skb_tailroom.exit.i77_crit_edge:        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_tailroom.exit.i77

cond.false.i.i72:                                 ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #20
  %end.i.i67 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 17
  %34 = ptrtoint ptr %end.i.i67 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i.i67, align 4
  %tail.i.i68 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 16
  %36 = ptrtoint ptr %tail.i.i68 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tail.i.i68, align 8
  %sub.ptr.lhs.cast.i.i69 = ptrtoint ptr %35 to i32
  %sub.ptr.rhs.cast.i.i70 = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i.neg.i71 = sub i32 %sub.ptr.rhs.cast.i.i70, %sub.ptr.lhs.cast.i.i69
  br label %skb_tailroom.exit.i77

skb_tailroom.exit.i77:                            ; preds = %cond.false.i.i72, %if.then25.skb_tailroom.exit.i77_crit_edge
  %cond.i.neg.i73 = phi i32 [ %sub.ptr.sub.i.neg.i71, %cond.false.i.i72 ], [ 0, %if.then25.skb_tailroom.exit.i77_crit_edge ]
  %gfp_mask.i74 = getelementptr inbounds %struct.audit_buffer, ptr %ab, i32 0, i32 2
  %38 = ptrtoint ptr %gfp_mask.i74 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gfp_mask.i74, align 4
  %call2.i75 = call i32 @pskb_expand_head(ptr noundef %31, i32 noundef 0, i32 noundef %29, i32 noundef %39) #18
  %40 = ptrtoint ptr %data_len.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_len.i.i.i65, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not.i13.i76 = icmp eq i32 %41, 0
  br i1 %tobool.i.not.i13.i76, label %skb_tailroom.exit21.i86, label %skb_tailroom.exit21.i86.thread

skb_tailroom.exit21.i86:                          ; preds = %skb_tailroom.exit.i77
  %end.i14.i78 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 17
  %42 = ptrtoint ptr %end.i14.i78 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i14.i78, align 4
  %tail.i15.i79 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 16
  %44 = ptrtoint ptr %tail.i15.i79 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i15.i79, align 8
  %sub.ptr.lhs.cast.i16.i80 = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i17.i81 = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i18.i82 = sub i32 %sub.ptr.lhs.cast.i16.i80, %sub.ptr.rhs.cast.i17.i81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i75)
  %cmp.i85 = icmp slt i32 %call2.i75, 0
  br i1 %cmp.i85, label %skb_tailroom.exit21.i86.audit_expand.exit93.thread_crit_edge, label %audit_expand.exit93

skb_tailroom.exit21.i86.audit_expand.exit93.thread_crit_edge: ; preds = %skb_tailroom.exit21.i86
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_expand.exit93.thread

skb_tailroom.exit21.i86.thread:                   ; preds = %skb_tailroom.exit.i77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i75)
  %cmp.i85111 = icmp slt i32 %call2.i75, 0
  br i1 %cmp.i85111, label %skb_tailroom.exit21.i86.thread.audit_expand.exit93.thread_crit_edge, label %audit_expand.exit93.thread113

skb_tailroom.exit21.i86.thread.audit_expand.exit93.thread_crit_edge: ; preds = %skb_tailroom.exit21.i86.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_expand.exit93.thread

audit_expand.exit93.thread113:                    ; preds = %skb_tailroom.exit21.i86.thread
  call void @__sanitizer_cov_trace_pc() #20
  %truesize.i89116 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 20
  %46 = ptrtoint ptr %truesize.i89116 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %truesize.i89116, align 8
  %add.i90117 = add i32 %47, %cond.i.neg.i73
  store i32 %add.i90117, ptr %truesize.i89116, align 8
  br label %out_va_end

audit_expand.exit93.thread:                       ; preds = %skb_tailroom.exit21.i86.thread.audit_expand.exit93.thread_crit_edge, %skb_tailroom.exit21.i86.audit_expand.exit93.thread_crit_edge
  call void @audit_log_lost(ptr noundef nonnull @.str.99) #18
  br label %out_va_end

audit_expand.exit93:                              ; preds = %skb_tailroom.exit21.i86
  %sub.i88 = add i32 %sub.ptr.sub.i18.i82, %cond.i.neg.i73
  %truesize.i89 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 20
  %48 = ptrtoint ptr %truesize.i89 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %truesize.i89, align 8
  %add.i90 = add i32 %sub.i88, %49
  store i32 %add.i90, ptr %truesize.i89, align 8
  %tobool28.not = icmp eq ptr %43, %45
  br i1 %tobool28.not, label %audit_expand.exit93.out_va_end_crit_edge, label %if.end30

audit_expand.exit93.out_va_end_crit_edge:         ; preds = %audit_expand.exit93
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_va_end

if.end30:                                         ; preds = %audit_expand.exit93
  call void @__sanitizer_cov_trace_pc() #20
  %50 = ptrtoint ptr %tail.i64 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tail.i64, align 8
  %52 = ptrtoint ptr %args2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.fca.0.load = load i32, ptr %args2, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call33 = call i32 @vsnprintf(ptr noundef %51, i32 noundef %sub.ptr.sub.i18.i82, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  br label %if.end34

if.end34:                                         ; preds = %if.end30, %if.end20.if.end34_crit_edge
  %len.0 = phi i32 [ %call33, %if.end30 ], [ %call23, %if.end20.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %cmp35 = icmp sgt i32 %len.0, 0
  br i1 %cmp35, label %if.then36, label %if.end34.out_va_end_crit_edge

if.end34.out_va_end_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_va_end

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  %call37 = call ptr @skb_put(ptr noundef nonnull %3, i32 noundef %len.0) #18
  br label %out_va_end

out_va_end:                                       ; preds = %if.then36, %if.end34.out_va_end_crit_edge, %audit_expand.exit93.out_va_end_crit_edge, %audit_expand.exit93.thread, %audit_expand.exit93.thread113
  call void @llvm.va_end(ptr nonnull %args2)
  br label %cleanup

cleanup:                                          ; preds = %out_va_end, %audit_expand.exit.cleanup_crit_edge, %audit_expand.exit.thread, %audit_expand.exit.thread102, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args2) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @audit_log_n_hex(ptr noundef readonly %ab, ptr nocapture noundef readonly %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ab, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body:                                          ; preds = %entry
  %0 = ptrtoint ptr %ab to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ab, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %do.body7, label %do.end13, !prof !348

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/audit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2024, 0\0A.popsection", ""() #18, !srcloc !356
  unreachable

do.end13:                                         ; preds = %do.body
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %skb_tailroom.exit.thread

skb_tailroom.exit:                                ; preds = %do.end13
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %shl = shl i32 %len, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %sub.ptr.sub.i)
  %cmp.not = icmp slt i32 %shl, %sub.ptr.sub.i
  br i1 %cmp.not, label %skb_tailroom.exit.if.end20_crit_edge, label %cond.false.i.i

skb_tailroom.exit.if.end20_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

skb_tailroom.exit.thread:                         ; preds = %do.end13
  %shl46 = shl i32 %len, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl46)
  %cmp.not47 = icmp slt i32 %shl46, 0
  br i1 %cmp.not47, label %skb_tailroom.exit.thread.if.end20_crit_edge, label %if.then15.thread

skb_tailroom.exit.thread.if.end20_crit_edge:      ; preds = %skb_tailroom.exit.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then15.thread:                                 ; preds = %skb_tailroom.exit.thread
  call void @__sanitizer_cov_trace_pc() #20
  %8 = add nuw i32 %shl46, 1024
  %mul56 = and i32 %8, -1024
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #20
  %sub = sub i32 %shl, %sub.ptr.sub.i
  %div = sdiv i32 %sub, 1024
  %add = shl nsw i32 %div, 10
  %mul = add i32 %add, 1024
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i, align 4
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %sub.ptr.rhs.cast.i.i, %sub.ptr.lhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %if.then15.thread
  %mul58 = phi i32 [ %mul, %cond.false.i.i ], [ %mul56, %if.then15.thread ]
  %shl4957 = phi i32 [ %shl, %cond.false.i.i ], [ %shl46, %if.then15.thread ]
  %cond.i.neg.i = phi i32 [ %sub.ptr.sub.i.neg.i, %cond.false.i.i ], [ 0, %if.then15.thread ]
  %gfp_mask.i = getelementptr inbounds %struct.audit_buffer, ptr %ab, i32 0, i32 2
  %13 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gfp_mask.i, align 4
  %call2.i = tail call i32 @pskb_expand_head(ptr noundef nonnull %1, i32 noundef 0, i32 noundef %mul58, i32 noundef %14) #18
  %15 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i13.i = icmp eq i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %tobool.i.not.i13.i, label %skb_tailroom.exit21.i, label %skb_tailroom.exit21.i.thread

skb_tailroom.exit21.i:                            ; preds = %skb_tailroom.exit.i
  br i1 %cmp.i, label %skb_tailroom.exit21.i.audit_expand.exit.thread_crit_edge, label %audit_expand.exit

skb_tailroom.exit21.i.audit_expand.exit.thread_crit_edge: ; preds = %skb_tailroom.exit21.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_expand.exit.thread

skb_tailroom.exit21.i.thread:                     ; preds = %skb_tailroom.exit.i
  br i1 %cmp.i, label %skb_tailroom.exit21.i.thread.audit_expand.exit.thread_crit_edge, label %audit_expand.exit.thread64

skb_tailroom.exit21.i.thread.audit_expand.exit.thread_crit_edge: ; preds = %skb_tailroom.exit21.i.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_expand.exit.thread

audit_expand.exit.thread64:                       ; preds = %skb_tailroom.exit21.i.thread
  call void @__sanitizer_cov_trace_pc() #20
  %truesize.i67 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 20
  %17 = ptrtoint ptr %truesize.i67 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %truesize.i67, align 8
  %add.i68 = add i32 %18, %cond.i.neg.i
  store i32 %add.i68, ptr %truesize.i67, align 8
  br label %cleanup

audit_expand.exit.thread:                         ; preds = %skb_tailroom.exit21.i.thread.audit_expand.exit.thread_crit_edge, %skb_tailroom.exit21.i.audit_expand.exit.thread_crit_edge
  tail call void @audit_log_lost(ptr noundef nonnull @.str.99) #18
  br label %cleanup

audit_expand.exit:                                ; preds = %skb_tailroom.exit21.i
  %end.i14.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %end.i14.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i14.i, align 4
  %sub.ptr.lhs.cast.i16.i = ptrtoint ptr %20 to i32
  %tail.i15.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i15.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i15.i, align 8
  %sub.ptr.rhs.cast.i17.i = ptrtoint ptr %22 to i32
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 20
  %23 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %truesize.i, align 8
  %sub.ptr.sub.i18.i = add i32 %cond.i.neg.i, %sub.ptr.lhs.cast.i16.i
  %sub.i = sub i32 %sub.ptr.sub.i18.i, %sub.ptr.rhs.cast.i17.i
  %add.i = add i32 %sub.i, %24
  store i32 %add.i, ptr %truesize.i, align 8
  %tobool17.not = icmp eq ptr %20, %22
  br i1 %tobool17.not, label %audit_expand.exit.cleanup_crit_edge, label %audit_expand.exit.if.end20_crit_edge

audit_expand.exit.if.end20_crit_edge:             ; preds = %audit_expand.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

audit_expand.exit.cleanup_crit_edge:              ; preds = %audit_expand.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end20:                                         ; preds = %audit_expand.exit.if.end20_crit_edge, %skb_tailroom.exit.thread.if.end20_crit_edge, %skb_tailroom.exit.if.end20_crit_edge
  %shl50 = phi i32 [ %shl46, %skb_tailroom.exit.thread.if.end20_crit_edge ], [ %shl4957, %audit_expand.exit.if.end20_crit_edge ], [ %shl, %skb_tailroom.exit.if.end20_crit_edge ]
  %tail.i44 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %25 = ptrtoint ptr %tail.i44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i44, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp2272.not = icmp eq i32 %len, 0
  br i1 %cmp2272.not, label %if.end20.for.end_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  br label %for.body

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end20.for.body_crit_edge
  %ptr.074 = phi ptr [ %incdec.ptr4.i, %for.body.for.body_crit_edge ], [ %26, %if.end20.for.body_crit_edge ]
  %i.073 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end20.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.073
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %28 to i32
  %29 = lshr i32 %conv.i, 4
  %arrayidx.i = getelementptr [0 x i8], ptr @hex_asc_upper, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %ptr.074, i32 1
  %32 = ptrtoint ptr %ptr.074 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %ptr.074, align 1
  %and2.i = and i32 %conv.i, 15
  %arrayidx3.i = getelementptr [0 x i8], ptr @hex_asc_upper, i32 0, i32 %and2.i
  %33 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx3.i, align 1
  %incdec.ptr4.i = getelementptr i8, ptr %ptr.074, i32 2
  %35 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %incdec.ptr.i, align 1
  %inc = add nuw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end20.for.end_crit_edge
  %ptr.0.lcssa = phi ptr [ %26, %if.end20.for.end_crit_edge ], [ %incdec.ptr4.i, %for.body.for.end_crit_edge ]
  %36 = ptrtoint ptr %ptr.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %ptr.0.lcssa, align 1
  %call25 = tail call ptr @skb_put(ptr noundef nonnull %1, i32 noundef %shl50) #18
  br label %cleanup

cleanup:                                          ; preds = %for.end, %audit_expand.exit.cleanup_crit_edge, %audit_expand.exit.thread, %audit_expand.exit.thread64, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @audit_log_n_string(ptr noundef readonly %ab, ptr nocapture noundef readonly %string, i32 noundef %slen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ab, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body:                                          ; preds = %entry
  %0 = ptrtoint ptr %ab to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ab, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %do.body7, label %do.end13, !prof !348

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/audit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2057, 0\0A.popsection", ""() #18, !srcloc !357
  unreachable

do.end13:                                         ; preds = %do.body
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %skb_tailroom.exit.thread

skb_tailroom.exit:                                ; preds = %do.end13
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add = add i32 %slen, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.ptr.sub.i)
  %cmp = icmp sgt i32 %add, %sub.ptr.sub.i
  br i1 %cmp, label %cond.false.i.i, label %skb_tailroom.exit.if.end20_crit_edge

skb_tailroom.exit.if.end20_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

skb_tailroom.exit.thread:                         ; preds = %do.end13
  %add44 = add i32 %slen, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add44)
  %cmp45 = icmp sgt i32 %add44, 0
  br i1 %cmp45, label %skb_tailroom.exit.thread.skb_tailroom.exit.i_crit_edge, label %skb_tailroom.exit.thread.if.end20_crit_edge

skb_tailroom.exit.thread.if.end20_crit_edge:      ; preds = %skb_tailroom.exit.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

skb_tailroom.exit.thread.skb_tailroom.exit.i_crit_edge: ; preds = %skb_tailroom.exit.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #20
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %sub.ptr.rhs.cast.i.i, %sub.ptr.lhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %skb_tailroom.exit.thread.skb_tailroom.exit.i_crit_edge
  %add4648 = phi i32 [ %add, %cond.false.i.i ], [ %add44, %skb_tailroom.exit.thread.skb_tailroom.exit.i_crit_edge ]
  %cond.i.neg.i = phi i32 [ %sub.ptr.sub.i.neg.i, %cond.false.i.i ], [ 0, %skb_tailroom.exit.thread.skb_tailroom.exit.i_crit_edge ]
  %gfp_mask.i = getelementptr inbounds %struct.audit_buffer, ptr %ab, i32 0, i32 2
  %12 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gfp_mask.i, align 4
  %call2.i = tail call i32 @pskb_expand_head(ptr noundef nonnull %1, i32 noundef 0, i32 noundef %add4648, i32 noundef %13) #18
  %14 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i13.i = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %tobool.i.not.i13.i, label %skb_tailroom.exit21.i, label %skb_tailroom.exit21.i.thread

skb_tailroom.exit21.i:                            ; preds = %skb_tailroom.exit.i
  br i1 %cmp.i, label %skb_tailroom.exit21.i.audit_expand.exit.thread_crit_edge, label %audit_expand.exit

skb_tailroom.exit21.i.audit_expand.exit.thread_crit_edge: ; preds = %skb_tailroom.exit21.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_expand.exit.thread

skb_tailroom.exit21.i.thread:                     ; preds = %skb_tailroom.exit.i
  br i1 %cmp.i, label %skb_tailroom.exit21.i.thread.audit_expand.exit.thread_crit_edge, label %audit_expand.exit.thread54

skb_tailroom.exit21.i.thread.audit_expand.exit.thread_crit_edge: ; preds = %skb_tailroom.exit21.i.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_expand.exit.thread

audit_expand.exit.thread54:                       ; preds = %skb_tailroom.exit21.i.thread
  call void @__sanitizer_cov_trace_pc() #20
  %truesize.i57 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 20
  %16 = ptrtoint ptr %truesize.i57 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %truesize.i57, align 8
  %add.i58 = add i32 %17, %cond.i.neg.i
  store i32 %add.i58, ptr %truesize.i57, align 8
  br label %cleanup

audit_expand.exit.thread:                         ; preds = %skb_tailroom.exit21.i.thread.audit_expand.exit.thread_crit_edge, %skb_tailroom.exit21.i.audit_expand.exit.thread_crit_edge
  tail call void @audit_log_lost(ptr noundef nonnull @.str.99) #18
  br label %cleanup

audit_expand.exit:                                ; preds = %skb_tailroom.exit21.i
  %end.i14.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %18 = ptrtoint ptr %end.i14.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i14.i, align 4
  %sub.ptr.lhs.cast.i16.i = ptrtoint ptr %19 to i32
  %tail.i15.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i15.i, align 8
  %sub.ptr.rhs.cast.i17.i = ptrtoint ptr %21 to i32
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 20
  %22 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %truesize.i, align 8
  %sub.ptr.sub.i18.i = add i32 %cond.i.neg.i, %sub.ptr.lhs.cast.i16.i
  %sub.i = sub i32 %sub.ptr.sub.i18.i, %sub.ptr.rhs.cast.i17.i
  %add.i = add i32 %sub.i, %23
  store i32 %add.i, ptr %truesize.i, align 8
  %tobool17.not = icmp eq ptr %19, %21
  br i1 %tobool17.not, label %audit_expand.exit.cleanup_crit_edge, label %audit_expand.exit.if.end20_crit_edge

audit_expand.exit.if.end20_crit_edge:             ; preds = %audit_expand.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

audit_expand.exit.cleanup_crit_edge:              ; preds = %audit_expand.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end20:                                         ; preds = %audit_expand.exit.if.end20_crit_edge, %skb_tailroom.exit.thread.if.end20_crit_edge, %skb_tailroom.exit.if.end20_crit_edge
  %tail.i42 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i42, align 8
  %incdec.ptr = getelementptr i8, ptr %25, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 34, ptr %25, align 1
  %27 = call ptr @memcpy(ptr %incdec.ptr, ptr %string, i32 %slen)
  %add.ptr = getelementptr i8, ptr %incdec.ptr, i32 %slen
  %incdec.ptr22 = getelementptr i8, ptr %add.ptr, i32 1
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 34, ptr %add.ptr, align 1
  %29 = ptrtoint ptr %incdec.ptr22 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %incdec.ptr22, align 1
  %add23 = add i32 %slen, 2
  %call24 = tail call ptr @skb_put(ptr noundef nonnull %1, i32 noundef %add23) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %audit_expand.exit.cleanup_crit_edge, %audit_expand.exit.thread, %audit_expand.exit.thread54, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @audit_string_contains_control(ptr noundef readonly %string, i32 noundef %len) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %string, i32 %len
  %cmp16 = icmp ugt ptr %add.ptr, %string
  br i1 %cmp16, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %0 = ptrtoint ptr %string to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %string, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %1)
  %cmp120 = icmp eq i8 %1, 34
  %2 = add i8 %1, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %2)
  %3 = icmp ult i8 %2, -94
  %4 = or i1 %cmp120, %3
  br i1 %4, label %for.body.preheader.cleanup_crit_edge, label %for.body.preheader.for.cond_crit_edge

for.body.preheader.for.cond_crit_edge:            ; preds = %for.body.preheader
  br label %for.cond

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.preheader.for.cond_crit_edge
  %p.01721 = phi ptr [ %incdec.ptr, %for.body.for.cond_crit_edge ], [ %string, %for.body.preheader.for.cond_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %p.01721, i32 1
  %exitcond.not = icmp eq ptr %incdec.ptr, %add.ptr
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit_crit_edge, label %for.body

for.cond.cleanup.loopexit_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.loopexit

for.body:                                         ; preds = %for.cond
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %6)
  %cmp1 = icmp eq i8 %6, 34
  %7 = add i8 %6, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %7)
  %8 = icmp ult i8 %7, -94
  %9 = or i1 %cmp1, %8
  br i1 %9, label %for.body.cleanup.loopexit_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

for.body.cleanup.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %for.body.cleanup.loopexit_crit_edge, %for.cond.cleanup.loopexit_crit_edge
  %cmp.le = icmp ult ptr %incdec.ptr, %add.ptr
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %for.body.preheader.cleanup_crit_edge ], [ %cmp.le, %cleanup.loopexit ]
  ret i1 %cmp.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @audit_log_n_untrustedstring(ptr noundef %ab, ptr noundef readonly %string, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %string, i32 %len
  %cmp16.i = icmp ugt ptr %add.ptr.i, %string
  br i1 %cmp16.i, label %for.body.i.preheader, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

for.body.i.preheader:                             ; preds = %entry
  %0 = ptrtoint ptr %string to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %string, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %1)
  %cmp1.i7 = icmp eq i8 %1, 34
  %2 = add i8 %1, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %2)
  %3 = icmp ult i8 %2, -94
  %4 = or i1 %cmp1.i7, %3
  br i1 %4, label %for.body.i.preheader.if.then_crit_edge, label %for.body.i.preheader.for.cond.i_crit_edge

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.body.i.preheader.if.then_crit_edge:           ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %p.017.i8 = phi ptr [ %incdec.ptr.i, %for.body.i.for.cond.i_crit_edge ], [ %string, %for.body.i.preheader.for.cond.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %p.017.i8, i32 1
  %exitcond.not.i = icmp eq ptr %incdec.ptr.i, %add.ptr.i
  br i1 %exitcond.not.i, label %for.cond.i.audit_string_contains_control.exit_crit_edge, label %for.body.i

for.cond.i.audit_string_contains_control.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_string_contains_control.exit

for.body.i:                                       ; preds = %for.cond.i
  %5 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %6)
  %cmp1.i = icmp eq i8 %6, 34
  %7 = add i8 %6, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %7)
  %8 = icmp ult i8 %7, -94
  %9 = or i1 %cmp1.i, %8
  br i1 %9, label %for.body.i.audit_string_contains_control.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i

for.body.i.audit_string_contains_control.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_string_contains_control.exit

audit_string_contains_control.exit:               ; preds = %for.body.i.audit_string_contains_control.exit_crit_edge, %for.cond.i.audit_string_contains_control.exit_crit_edge
  %cmp.i.le = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i.le, label %audit_string_contains_control.exit.if.then_crit_edge, label %audit_string_contains_control.exit.if.else_crit_edge

audit_string_contains_control.exit.if.else_crit_edge: ; preds = %audit_string_contains_control.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

audit_string_contains_control.exit.if.then_crit_edge: ; preds = %audit_string_contains_control.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then:                                          ; preds = %audit_string_contains_control.exit.if.then_crit_edge, %for.body.i.preheader.if.then_crit_edge
  tail call void @audit_log_n_hex(ptr noundef %ab, ptr noundef %string, i32 noundef %len)
  br label %if.end

if.else:                                          ; preds = %audit_string_contains_control.exit.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @audit_log_n_string(ptr noundef %ab, ptr noundef %string, i32 noundef %len)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @audit_log_untrustedstring(ptr noundef %ab, ptr noundef readonly %string) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %string) #23
  %add.ptr.i.i = getelementptr i8, ptr %string, i32 %call
  %cmp16.i.i = icmp ugt ptr %add.ptr.i.i, %string
  br i1 %cmp16.i.i, label %for.body.i.preheader.i, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i

for.body.i.preheader.i:                           ; preds = %entry
  %0 = ptrtoint ptr %string to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %string, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %1)
  %cmp1.i7.i = icmp eq i8 %1, 34
  %2 = add i8 %1, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %2)
  %3 = icmp ult i8 %2, -94
  %4 = or i1 %cmp1.i7.i, %3
  br i1 %4, label %for.body.i.preheader.i.if.then.i_crit_edge, label %for.body.i.preheader.i.for.cond.i.i_crit_edge

for.body.i.preheader.i.for.cond.i.i_crit_edge:    ; preds = %for.body.i.preheader.i
  br label %for.cond.i.i

for.body.i.preheader.i.if.then.i_crit_edge:       ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.preheader.i.for.cond.i.i_crit_edge
  %p.017.i8.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %string, %for.body.i.preheader.i.for.cond.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %p.017.i8.i, i32 1
  %exitcond.not.i.i = icmp eq ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.else.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.else.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %5 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %6)
  %cmp1.i.i = icmp eq i8 %6, 34
  %7 = add i8 %6, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %7)
  %8 = icmp ult i8 %7, -94
  %9 = or i1 %cmp1.i.i, %8
  br i1 %9, label %audit_string_contains_control.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.i

audit_string_contains_control.exit.i:             ; preds = %for.body.i.i
  %cmp.i.le.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.le.i, label %audit_string_contains_control.exit.i.if.then.i_crit_edge, label %audit_string_contains_control.exit.i.if.else.i_crit_edge

audit_string_contains_control.exit.i.if.else.i_crit_edge: ; preds = %audit_string_contains_control.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i

audit_string_contains_control.exit.i.if.then.i_crit_edge: ; preds = %audit_string_contains_control.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

if.then.i:                                        ; preds = %audit_string_contains_control.exit.i.if.then.i_crit_edge, %for.body.i.preheader.i.if.then.i_crit_edge
  tail call void @audit_log_n_hex(ptr noundef %ab, ptr noundef %string, i32 noundef %call) #18
  br label %audit_log_n_untrustedstring.exit

if.else.i:                                        ; preds = %audit_string_contains_control.exit.i.if.else.i_crit_edge, %for.cond.i.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  tail call void @audit_log_n_string(ptr noundef %ab, ptr noundef %string, i32 noundef %call) #18
  br label %audit_log_n_untrustedstring.exit

audit_log_n_untrustedstring.exit:                 ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @audit_log_d_path(ptr noundef %ab, ptr noundef %prefix, ptr noundef %path) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %prefix, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.10, ptr noundef nonnull %prefix)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %gfp_mask = getelementptr inbounds %struct.audit_buffer, ptr %ab, i32 0, i32 2
  %0 = ptrtoint ptr %gfp_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gfp_mask, align 4
  %and.i.i = and i32 %1, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i19.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i19.i, label %if.end.kmalloc.exit_crit_edge, label %if.end.i20.i, !prof !346

if.end.kmalloc.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %kmalloc.exit

if.end.i20.i:                                     ; preds = %if.end
  %and2.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i20.i.kmalloc.exit_crit_edge

if.end.i20.i.kmalloc.exit_crit_edge:              ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kmalloc.exit

if.end5.i.i:                                      ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #20
  %and6.i.i = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 1, i32 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.end5.i.i, %if.end.i20.i.kmalloc.exit_crit_edge, %if.end.kmalloc.exit_crit_edge
  %retval.0.i21.i = phi i32 [ 0, %if.end.kmalloc.exit_crit_edge ], [ 3, %if.end.i20.i.kmalloc.exit_crit_edge ], [ %..i.i, %if.end5.i.i ]
  %arrayidx6.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i, i32 13
  %2 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef %1, i32 noundef 4107) #24
  %tobool1.not = icmp eq ptr %call7.i, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.11)
  br label %cleanup

if.end3:                                          ; preds = %kmalloc.exit
  %call4 = tail call ptr @d_path(ptr noundef %path, ptr noundef nonnull %call7.i, i32 noundef 4107) #18
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.12)
  br label %if.end7

if.else:                                          ; preds = %if.end3
  %call.i = tail call i32 @strlen(ptr noundef %call4) #25
  %add.ptr.i.i.i = getelementptr i8, ptr %call4, i32 %call.i
  %cmp16.i.i.i = icmp ugt ptr %add.ptr.i.i.i, %call4
  br i1 %cmp16.i.i.i, label %for.body.i.preheader.i.i, label %if.else.if.else.i.i_crit_edge

if.else.if.else.i.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i.i

for.body.i.preheader.i.i:                         ; preds = %if.else
  %4 = ptrtoint ptr %call4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %5)
  %cmp1.i7.i.i = icmp eq i8 %5, 34
  %6 = add i8 %5, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %6)
  %7 = icmp ult i8 %6, -94
  %8 = or i1 %cmp1.i7.i.i, %7
  br i1 %8, label %for.body.i.preheader.i.i.if.then.i.i_crit_edge, label %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge

for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge: ; preds = %for.body.i.preheader.i.i
  br label %for.cond.i.i.i

for.body.i.preheader.i.i.if.then.i.i_crit_edge:   ; preds = %for.body.i.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge
  %p.017.i8.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ %call4, %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge ]
  %incdec.ptr.i.i.i = getelementptr i8, ptr %p.017.i8.i.i, i32 1
  %exitcond.not.i.i.i = icmp eq ptr %incdec.ptr.i.i.i, %add.ptr.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.if.else.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.else.i.i_crit_edge:             ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %9 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %10)
  %cmp1.i.i.i = icmp eq i8 %10, 34
  %11 = add i8 %10, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %11)
  %12 = icmp ult i8 %11, -94
  %13 = or i1 %cmp1.i.i.i, %12
  br i1 %13, label %audit_string_contains_control.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.i.i

audit_string_contains_control.exit.i.i:           ; preds = %for.body.i.i.i
  %cmp.i.le.i.i = icmp ult ptr %incdec.ptr.i.i.i, %add.ptr.i.i.i
  br i1 %cmp.i.le.i.i, label %audit_string_contains_control.exit.i.i.if.then.i.i_crit_edge, label %audit_string_contains_control.exit.i.i.if.else.i.i_crit_edge

audit_string_contains_control.exit.i.i.if.else.i.i_crit_edge: ; preds = %audit_string_contains_control.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i.i

audit_string_contains_control.exit.i.i.if.then.i.i_crit_edge: ; preds = %audit_string_contains_control.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %audit_string_contains_control.exit.i.i.if.then.i.i_crit_edge, %for.body.i.preheader.i.i.if.then.i.i_crit_edge
  tail call void @audit_log_n_hex(ptr noundef %ab, ptr noundef %call4, i32 noundef %call.i) #18
  br label %if.end7

if.else.i.i:                                      ; preds = %audit_string_contains_control.exit.i.i.if.else.i.i_crit_edge, %for.cond.i.i.i.if.else.i.i_crit_edge, %if.else.if.else.i.i_crit_edge
  tail call void @audit_log_n_string(ptr noundef %ab, ptr noundef %call4, i32 noundef %call.i) #18
  br label %if.end7

if.end7:                                          ; preds = %if.else.i.i, %if.then.i.i, %if.then6
  tail call void @kfree(ptr noundef nonnull %call7.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @audit_log_session_info(ptr noundef %ab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %sessionid.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 122
  %4 = ptrtoint ptr %sessionid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sessionid.i, align 4
  %loginuid.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 121
  %6 = ptrtoint ptr %loginuid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %retval.sroa.0.0.copyload.i = load i32, ptr %loginuid.i, align 16
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.copyload.i, 0
  %call6 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #18
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.13, i32 noundef %call6, i32 noundef %5)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @audit_log_key(ptr noundef %ab, ptr noundef readonly %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.14)
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @strlen(ptr noundef nonnull %key) #25
  %add.ptr.i.i.i = getelementptr i8, ptr %key, i32 %call.i
  %cmp16.i.i.i = icmp ugt ptr %add.ptr.i.i.i, %key
  br i1 %cmp16.i.i.i, label %for.body.i.preheader.i.i, label %if.then.if.else.i.i_crit_edge

if.then.if.else.i.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i.i

for.body.i.preheader.i.i:                         ; preds = %if.then
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %1)
  %cmp1.i7.i.i = icmp eq i8 %1, 34
  %2 = add i8 %1, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %2)
  %3 = icmp ult i8 %2, -94
  %4 = or i1 %cmp1.i7.i.i, %3
  br i1 %4, label %for.body.i.preheader.i.i.if.then.i.i_crit_edge, label %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge

for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge: ; preds = %for.body.i.preheader.i.i
  br label %for.cond.i.i.i

for.body.i.preheader.i.i.if.then.i.i_crit_edge:   ; preds = %for.body.i.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge
  %p.017.i8.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ %key, %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge ]
  %incdec.ptr.i.i.i = getelementptr i8, ptr %p.017.i8.i.i, i32 1
  %exitcond.not.i.i.i = icmp eq ptr %incdec.ptr.i.i.i, %add.ptr.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.if.else.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.else.i.i_crit_edge:             ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %5 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %6)
  %cmp1.i.i.i = icmp eq i8 %6, 34
  %7 = add i8 %6, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %7)
  %8 = icmp ult i8 %7, -94
  %9 = or i1 %cmp1.i.i.i, %8
  br i1 %9, label %audit_string_contains_control.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.i.i

audit_string_contains_control.exit.i.i:           ; preds = %for.body.i.i.i
  %cmp.i.le.i.i = icmp ult ptr %incdec.ptr.i.i.i, %add.ptr.i.i.i
  br i1 %cmp.i.le.i.i, label %audit_string_contains_control.exit.i.i.if.then.i.i_crit_edge, label %audit_string_contains_control.exit.i.i.if.else.i.i_crit_edge

audit_string_contains_control.exit.i.i.if.else.i.i_crit_edge: ; preds = %audit_string_contains_control.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i.i

audit_string_contains_control.exit.i.i.if.then.i.i_crit_edge: ; preds = %audit_string_contains_control.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %audit_string_contains_control.exit.i.i.if.then.i.i_crit_edge, %for.body.i.preheader.i.i.if.then.i.i_crit_edge
  tail call void @audit_log_n_hex(ptr noundef %ab, ptr noundef nonnull %key, i32 noundef %call.i) #18
  br label %if.end

if.else.i.i:                                      ; preds = %audit_string_contains_control.exit.i.i.if.else.i.i_crit_edge, %for.cond.i.i.i.if.else.i.i_crit_edge, %if.then.if.else.i.i_crit_edge
  tail call void @audit_log_n_string(ptr noundef %ab, ptr noundef nonnull %key, i32 noundef %call.i) #18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.else.i.i, %if.then.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @audit_log_task_context(ptr noundef %ab) #0 align 64 {
entry:
  %ctx = alloca ptr, align 4
  %len = alloca i32, align 4
  %sid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctx) #18
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ctx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #18
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %len, align 4, !annotation !350
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sid) #18
  %2 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sid, align 4, !annotation !350
  call void @security_current_getsecid_subj(ptr noundef nonnull %sid) #18
  %3 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @security_secid_to_secctx(i32 noundef %4, ptr noundef nonnull %ctx, ptr noundef nonnull %len) #18
  %5 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %call, label %error_path [
    i32 0, label %if.end5
    i32 -22, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.16, ptr noundef %7)
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @security_release_secctx(ptr noundef %9, i32 noundef %11) #18
  br label %cleanup

error_path:                                       ; preds = %if.end
  %12 = load i32, ptr @audit_failure, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %12, label %error_path.cleanup_crit_edge [
    i32 2, label %sw.bb2.i
    i32 1, label %sw.bb.i
  ]

error_path.cleanup_crit_edge:                     ; preds = %error_path
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb.i:                                          ; preds = %error_path
  %call.i = call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.audit_panic) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.cleanup_crit_edge, label %do.end.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.17) #21
  br label %cleanup

sw.bb2.i:                                         ; preds = %error_path
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17) #22
  unreachable

cleanup:                                          ; preds = %do.end.i, %sw.bb.i.cleanup_crit_edge, %error_path.cleanup_crit_edge, %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %error_path.cleanup_crit_edge ], [ %call, %sw.bb.i.cleanup_crit_edge ], [ %call, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sid) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctx) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_current_getsecid_subj(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_secid_to_secctx(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_release_secctx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @audit_log_d_path_exe(ptr noundef %ab, ptr noundef %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mm, null
  br i1 %tobool.not, label %entry.out_null_crit_edge, label %if.end

entry.out_null_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_null

if.end:                                           ; preds = %entry
  %call = tail call ptr @get_mm_exe_file(ptr noundef nonnull %mm) #18
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.out_null_crit_edge, label %if.end3

if.end.out_null_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_null

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %f_path = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 1
  tail call void @audit_log_d_path(ptr noundef %ab, ptr noundef nonnull @.str.18, ptr noundef %f_path)
  tail call void @fput(ptr noundef nonnull %call) #18
  br label %cleanup

out_null:                                         ; preds = %if.end.out_null_crit_edge, %entry.out_null_crit_edge
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.19)
  br label %cleanup

cleanup:                                          ; preds = %out_null, %if.end3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mm_exe_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @audit_get_tty() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %sighand = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 112
  %4 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sighand, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #18
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 111
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal, align 16
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  %tty11 = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %tty11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tty11, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %kref.i = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #18
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #18, !srcloc !358
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !348

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !346

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #18
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %tty.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ null, %if.then.if.end_crit_edge ], [ %11, %if.else.i.i.i.i.i.if.end_crit_edge ], [ %11, %if.end15.sink.split.i.i.i.i.i ]
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %sighand15 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 112
  %16 = ptrtoint ptr %sighand15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sighand15, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %call3) #18
  ret ptr %tty.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @audit_put_tty(ptr noundef %tty) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tty_kref_put(ptr noundef %tty) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @audit_log_task_info(ptr noundef %ab) #0 align 64 {
entry:
  %comm = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %comm) #18
  %tobool.not = icmp eq ptr %ab, null
  %0 = call ptr @memset(ptr %comm, i32 255, i32 16)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred1, align 16
  %call2 = tail call ptr @audit_get_tty()
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !341
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i.i.i, label %do.end.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

do.end.rcu_read_lock.exit.i.i_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.end
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #18
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %do.end.rcu_read_lock.exit.i.i_crit_edge
  %thread_pid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 78
  %13 = ptrtoint ptr %thread_pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %thread_pid.i.i.i, align 16
  %cmp.i.not.i.i = icmp eq ptr %14, null
  br i1 %cmp.i.not.i.i, label %rcu_read_lock.exit.i.i.if.end13.i.i_crit_edge, label %if.then.i.i

rcu_read_lock.exit.i.i.if.end13.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13.i.i

if.then.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  %real_parent.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 71
  %15 = ptrtoint ptr %real_parent.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %real_parent.i.i, align 4
  %call2.i.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i, label %if.then.i.i.do.end10.i.i_crit_edge

if.then.i.i.do.end10.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end10.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %call4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.do.end10.i.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i.do.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end10.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @task_ppid_nr_ns.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true6.i.i.do.end10.i.i_crit_edge, label %if.then8.i.i

land.lhs.true6.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end10.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @task_ppid_nr_ns.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.100, i32 noundef 1603, ptr noundef nonnull @.str.1) #18
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then8.i.i, %land.lhs.true6.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i.i.do.end10.i.i_crit_edge, %if.then.i.i.do.end10.i.i_crit_edge
  %call.i2.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %16, i32 noundef 1, ptr noundef nonnull @init_pid_ns) #18
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %do.end10.i.i, %rcu_read_lock.exit.i.i.if.end13.i.i_crit_edge
  %pid.0.i.i = phi i32 [ %call.i2.i.i, %do.end10.i.i ], [ 0, %rcu_read_lock.exit.i.i.if.end13.i.i_crit_edge ]
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i3.i.i, label %if.end13.i.i.task_ppid_nr.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end13.i.i.task_ppid_nr.exit_crit_edge:         ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %task_ppid_nr.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end13.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.task_ppid_nr.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.task_ppid_nr.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %task_ppid_nr.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.task_ppid_nr.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.task_ppid_nr.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %task_ppid_nr.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #18
  br label %task_ppid_nr.exit

task_ppid_nr.exit:                                ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.task_ppid_nr.exit_crit_edge, %land.lhs.true.i6.i.i.task_ppid_nr.exit_crit_edge, %if.end13.i.i.task_ppid_nr.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !342
  %17 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i.i.i.i10.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %tgid.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 69
  %23 = ptrtoint ptr %tgid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tgid.i, align 4
  %loginuid.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 121
  %25 = ptrtoint ptr %loginuid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %retval.sroa.0.0.copyload.i = load i32, ptr %loginuid.i, align 16
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.copyload.i, 0
  %call13 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #18
  %uid = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 4
  %26 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack = load i32, ptr %uid, align 4
  %27 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call15 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %27) #18
  %gid = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 5
  %28 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack61 = load i32, ptr %gid, align 4
  %29 = insertvalue [1 x i32] undef, i32 %.unpack61, 0
  %call17 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %29) #18
  %euid = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 8
  %30 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack62 = load i32, ptr %euid, align 4
  %31 = insertvalue [1 x i32] undef, i32 %.unpack62, 0
  %call19 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %31) #18
  %suid = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 6
  %32 = ptrtoint ptr %suid to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack63 = load i32, ptr %suid, align 4
  %33 = insertvalue [1 x i32] undef, i32 %.unpack63, 0
  %call21 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %33) #18
  %fsuid = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 10
  %34 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack64 = load i32, ptr %fsuid, align 4
  %35 = insertvalue [1 x i32] undef, i32 %.unpack64, 0
  %call23 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %35) #18
  %egid = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 9
  %36 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack65 = load i32, ptr %egid, align 4
  %37 = insertvalue [1 x i32] undef, i32 %.unpack65, 0
  %call25 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %37) #18
  %sgid = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 7
  %38 = ptrtoint ptr %sgid to i32
  call void @__asan_load4_noabort(i32 %38)
  %.unpack66 = load i32, ptr %sgid, align 4
  %39 = insertvalue [1 x i32] undef, i32 %.unpack66, 0
  %call27 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %39) #18
  %fsgid = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 11
  %40 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %40)
  %.unpack67 = load i32, ptr %fsgid, align 4
  %41 = insertvalue [1 x i32] undef, i32 %.unpack67, 0
  %call29 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %41) #18
  %tobool30.not = icmp eq ptr %call2, null
  br i1 %tobool30.not, label %task_ppid_nr.exit.cond.end_crit_edge, label %cond.true

task_ppid_nr.exit.cond.end_crit_edge:             ; preds = %task_ppid_nr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %task_ppid_nr.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call31 = tail call ptr @tty_name(ptr noundef nonnull %call2) #18
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %task_ppid_nr.exit.cond.end_crit_edge
  %cond = phi ptr [ %call31, %cond.true ], [ @.str.21, %task_ppid_nr.exit.cond.end_crit_edge ]
  %42 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task, align 8
  %sessionid.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 122
  %44 = ptrtoint ptr %sessionid.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sessionid.i, align 4
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %ab, ptr noundef nonnull @.str.20, i32 noundef %pid.0.i.i, i32 noundef %24, i32 noundef %call13, i32 noundef %call15, i32 noundef %call17, i32 noundef %call19, i32 noundef %call21, i32 noundef %call23, i32 noundef %call25, i32 noundef %call27, i32 noundef %call29, ptr noundef %cond, i32 noundef %45)
  tail call void @tty_kref_put(ptr noundef %call2) #18
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %ab, ptr noundef nonnull @.str.22)
  %46 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task, align 8
  %call41 = call ptr @__get_task_comm(ptr noundef nonnull %comm, i32 noundef 16, ptr noundef %47) #18
  %call.i = call i32 @strlen(ptr noundef %call41) #25
  %add.ptr.i.i.i = getelementptr i8, ptr %call41, i32 %call.i
  %cmp16.i.i.i = icmp ugt ptr %add.ptr.i.i.i, %call41
  br i1 %cmp16.i.i.i, label %for.body.i.preheader.i.i, label %cond.end.if.else.i.i_crit_edge

cond.end.if.else.i.i_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i.i

for.body.i.preheader.i.i:                         ; preds = %cond.end
  %48 = ptrtoint ptr %call41 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %call41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %49)
  %cmp1.i7.i.i = icmp eq i8 %49, 34
  %50 = add i8 %49, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %50)
  %51 = icmp ult i8 %50, -94
  %52 = or i1 %cmp1.i7.i.i, %51
  br i1 %52, label %for.body.i.preheader.i.i.if.then.i.i68_crit_edge, label %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge

for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge: ; preds = %for.body.i.preheader.i.i
  br label %for.cond.i.i.i

for.body.i.preheader.i.i.if.then.i.i68_crit_edge: ; preds = %for.body.i.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i68

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge
  %p.017.i8.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ %call41, %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge ]
  %incdec.ptr.i.i.i = getelementptr i8, ptr %p.017.i8.i.i, i32 1
  %exitcond.not.i.i.i = icmp eq ptr %incdec.ptr.i.i.i, %add.ptr.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.if.else.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.else.i.i_crit_edge:             ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %53 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %incdec.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %54)
  %cmp1.i.i.i = icmp eq i8 %54, 34
  %55 = add i8 %54, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %55)
  %56 = icmp ult i8 %55, -94
  %57 = or i1 %cmp1.i.i.i, %56
  br i1 %57, label %audit_string_contains_control.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.i.i

audit_string_contains_control.exit.i.i:           ; preds = %for.body.i.i.i
  %cmp.i.le.i.i = icmp ult ptr %incdec.ptr.i.i.i, %add.ptr.i.i.i
  br i1 %cmp.i.le.i.i, label %audit_string_contains_control.exit.i.i.if.then.i.i68_crit_edge, label %audit_string_contains_control.exit.i.i.if.else.i.i_crit_edge

audit_string_contains_control.exit.i.i.if.else.i.i_crit_edge: ; preds = %audit_string_contains_control.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i.i

audit_string_contains_control.exit.i.i.if.then.i.i68_crit_edge: ; preds = %audit_string_contains_control.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i68

if.then.i.i68:                                    ; preds = %audit_string_contains_control.exit.i.i.if.then.i.i68_crit_edge, %for.body.i.preheader.i.i.if.then.i.i68_crit_edge
  call void @audit_log_n_hex(ptr noundef nonnull %ab, ptr noundef %call41, i32 noundef %call.i) #18
  br label %audit_log_untrustedstring.exit

if.else.i.i:                                      ; preds = %audit_string_contains_control.exit.i.i.if.else.i.i_crit_edge, %for.cond.i.i.i.if.else.i.i_crit_edge, %cond.end.if.else.i.i_crit_edge
  call void @audit_log_n_string(ptr noundef nonnull %ab, ptr noundef %call41, i32 noundef %call.i) #18
  br label %audit_log_untrustedstring.exit

audit_log_untrustedstring.exit:                   ; preds = %if.else.i.i, %if.then.i.i68
  %58 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 53
  %60 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mm, align 8
  %tobool.not.i = icmp eq ptr %61, null
  br i1 %tobool.not.i, label %audit_log_untrustedstring.exit.out_null.i_crit_edge, label %if.end.i

audit_log_untrustedstring.exit.out_null.i_crit_edge: ; preds = %audit_log_untrustedstring.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_null.i

if.end.i:                                         ; preds = %audit_log_untrustedstring.exit
  %call.i69 = call ptr @get_mm_exe_file(ptr noundef nonnull %61) #18
  %tobool1.not.i = icmp eq ptr %call.i69, null
  br i1 %tobool1.not.i, label %if.end.i.out_null.i_crit_edge, label %if.end3.i

if.end.i.out_null.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_null.i

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %f_path.i = getelementptr inbounds %struct.file, ptr %call.i69, i32 0, i32 1
  call void @audit_log_d_path(ptr noundef nonnull %ab, ptr noundef nonnull @.str.18, ptr noundef %f_path.i) #18
  call void @fput(ptr noundef nonnull %call.i69) #18
  br label %audit_log_d_path_exe.exit

out_null.i:                                       ; preds = %if.end.i.out_null.i_crit_edge, %audit_log_untrustedstring.exit.out_null.i_crit_edge
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %ab, ptr noundef nonnull @.str.19) #18
  br label %audit_log_d_path_exe.exit

audit_log_d_path_exe.exit:                        ; preds = %out_null.i, %if.end3.i
  %call44 = call i32 @audit_log_task_context(ptr noundef nonnull %ab)
  br label %cleanup

cleanup:                                          ; preds = %audit_log_d_path_exe.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %comm) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @audit_log_path_denied(i32 noundef %type, ptr nocapture noundef %operation) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @audit_log_end(ptr noundef %ab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ab, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @audit_rate_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.if.then2_crit_edge, label %do.body2.i

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then2

do.body2.i:                                       ; preds = %if.end
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @audit_rate_check.lock) #18
  %1 = load i32, ptr @audit_rate_check.messages, align 4
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr @audit_rate_check.messages, align 4
  %2 = load i32, ptr @audit_rate_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %2)
  %cmp6.i = icmp ult i32 %inc.i, %2
  br i1 %cmp6.i, label %do.body2.i.audit_rate_check.exit.thread16_crit_edge, label %if.else.i

do.body2.i.audit_rate_check.exit.thread16_crit_edge: ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_rate_check.exit.thread16

if.else.i:                                        ; preds = %do.body2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %4 = load i32, ptr @audit_rate_check.last_check, align 4
  %sub.i = sub i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub.i)
  %cmp9.i = icmp ugt i32 %sub.i, 100
  br i1 %cmp9.i, label %if.then11.i, label %if.else

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  store i32 %3, ptr @audit_rate_check.last_check, align 4
  store i32 0, ptr @audit_rate_check.messages, align 4
  br label %audit_rate_check.exit.thread16

audit_rate_check.exit.thread16:                   ; preds = %if.then11.i, %do.body2.i.audit_rate_check.exit.thread16_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @audit_rate_check.lock, i32 noundef %call3.i) #18
  br label %if.then2

if.then2:                                         ; preds = %audit_rate_check.exit.thread16, %if.end.if.then2_crit_edge
  %5 = ptrtoint ptr %ab to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ab, align 4
  store ptr null, ptr %ab, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %sub = add i32 %10, -16
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %8, align 4
  tail call void @skb_queue_tail(ptr noundef nonnull @audit_queue, ptr noundef %6) #18
  tail call void @__wake_up(ptr noundef nonnull @kauditd_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #18
  br label %audit_buffer_free.exit

if.else:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @audit_rate_check.lock, i32 noundef %call3.i) #18
  tail call void @audit_log_lost(ptr noundef nonnull @.str.25)
  br label %audit_buffer_free.exit

audit_buffer_free.exit:                           ; preds = %if.else, %if.then2
  %12 = ptrtoint ptr %ab to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ab, align 4
  tail call void @kfree_skb_reason(ptr noundef %13, i32 noundef 0) #18
  %14 = load ptr, ptr @audit_buffer_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %14, ptr noundef nonnull %ab) #18
  br label %cleanup

cleanup:                                          ; preds = %audit_buffer_free.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @audit_set_loginuid([1 x i32] %loginuid.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %loginuid.coerce.fca.0.extract = extractvalue [1 x i32] %loginuid.coerce, 0
  %0 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %loginuid.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 121
  %4 = ptrtoint ptr %loginuid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %retval.sroa.0.0.copyload.i = load i32, ptr %loginuid.i, align 16
  %sessionid.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 122
  %5 = ptrtoint ptr %sessionid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sessionid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.sroa.0.0.copyload.i)
  %cmp.i.i.not.i = icmp eq i32 %retval.sroa.0.0.copyload.i, -1
  br i1 %cmp.i.i.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i:                                         ; preds = %entry
  %7 = load i32, ptr getelementptr inbounds (%struct.audit_features, ptr @af, i32 0, i32 2), align 4
  %and1.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call zeroext i1 @capable(i32 noundef 30) #18
  br i1 %call5.i, label %audit_set_loginuid_perm.exit, label %if.end4.i.out_crit_edge

if.end4.i.out_crit_edge:                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

audit_set_loginuid_perm.exit:                     ; preds = %if.end4.i
  %8 = load i32, ptr getelementptr inbounds (%struct.audit_features, ptr @af, i32 0, i32 2), align 4
  %and1.i14.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i14.i)
  %tobool9.not.i = icmp eq i32 %and1.i14.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %loginuid.coerce.fca.0.extract)
  %cmp.i.i = icmp eq i32 %loginuid.coerce.fca.0.extract, -1
  %or.cond.i = select i1 %tobool9.not.i, i1 true, i1 %cmp.i.i
  br i1 %or.cond.i, label %audit_set_loginuid_perm.exit.if.end_crit_edge, label %audit_set_loginuid_perm.exit.out_crit_edge

audit_set_loginuid_perm.exit.out_crit_edge:       ; preds = %audit_set_loginuid_perm.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

audit_set_loginuid_perm.exit.if.end_crit_edge:    ; preds = %audit_set_loginuid_perm.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %audit_set_loginuid_perm.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %loginuid.coerce.fca.0.extract)
  %cmp.i.not = icmp eq i32 %loginuid.coerce.fca.0.extract, -1
  br i1 %cmp.i.not, label %if.end.if.end17_crit_edge, label %if.then10

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.then10:                                        ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @session_id, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !351
  tail call void @llvm.prefetch.p0(ptr nonnull @session_id, i32 1, i32 3, i32 1) #18
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @session_id, ptr nonnull @session_id, i32 1, ptr nonnull elementtype(i32) @session_id) #18, !srcloc !352
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !353
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, -1
  br i1 %cmp, label %if.then14, label %if.then10.if.end17_crit_edge, !prof !348

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @session_id, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !351
  tail call void @llvm.prefetch.p0(ptr nonnull @session_id, i32 1, i32 3, i32 1) #18
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @session_id, ptr nonnull @session_id, i32 1, ptr nonnull elementtype(i32) @session_id) #18, !srcloc !352
  %asmresult.i.i.i.i40 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !353
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then10.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %sessionid.0 = phi i32 [ %asmresult.i.i.i.i40, %if.then14 ], [ %asmresult.i.i.i.i, %if.then10.if.end17_crit_edge ], [ -1, %if.end.if.end17_crit_edge ]
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %sessionid20 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 122
  %13 = ptrtoint ptr %sessionid20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sessionid.0, ptr %sessionid20, align 4
  %14 = load ptr, ptr %task, align 8
  %loginuid23 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 121
  %15 = ptrtoint ptr %loginuid23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %loginuid.coerce.fca.0.extract, ptr %loginuid23, align 16
  br label %out

out:                                              ; preds = %if.end17, %audit_set_loginuid_perm.exit.out_crit_edge, %if.end4.i.out_crit_edge, %if.end.i.out_crit_edge
  %tobool.not50 = phi i32 [ 0, %audit_set_loginuid_perm.exit.out_crit_edge ], [ 1, %if.end17 ], [ 0, %if.end.i.out_crit_edge ], [ 0, %if.end4.i.out_crit_edge ]
  %retval.0.i49 = phi i32 [ -1, %audit_set_loginuid_perm.exit.out_crit_edge ], [ 0, %if.end17 ], [ -1, %if.end.i.out_crit_edge ], [ -1, %if.end4.i.out_crit_edge ]
  %sessionid.1 = phi i32 [ -1, %audit_set_loginuid_perm.exit.out_crit_edge ], [ %sessionid.0, %if.end17 ], [ -1, %if.end.i.out_crit_edge ], [ -1, %if.end4.i.out_crit_edge ]
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.copyload.i, 0
  %16 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i41 = icmp eq i32 %16, 0
  br i1 %tobool.not.i41, label %out.audit_log_set_loginuid.exit_crit_edge, label %if.end.i42

out.audit_log_set_loginuid.exit_crit_edge:        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_log_set_loginuid.exit

if.end.i42:                                       ; preds = %out
  %call2.i = tail call ptr @audit_log_start(ptr noundef null, i32 noundef 3264, i32 noundef 1006) #18
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i42.audit_log_set_loginuid.exit_crit_edge, label %if.end5.i

if.end.i42.audit_log_set_loginuid.exit_crit_edge: ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_log_set_loginuid.exit

if.end5.i:                                        ; preds = %if.end.i42
  %17 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !341
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i.i43 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i.i43, label %if.end5.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end5.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end5.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #18
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end5.i.rcu_read_lock.exit.i_crit_edge
  %21 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i44 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i44 to ptr
  %task.i45 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i45, align 8
  %real_cred.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 98
  %25 = ptrtoint ptr %real_cred.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %real_cred.i, align 4
  %call8.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i46 = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i46, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end17.i_crit_edge

rcu_read_lock.exit.i.do.end17.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end17.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call10.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.do.end17.i_crit_edge, label %land.lhs.true12.i

land.lhs.true.i.do.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end17.i

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %.b47.i = load i1, ptr @audit_log_set_loginuid.__warned, align 1
  br i1 %.b47.i, label %land.lhs.true12.i.do.end17.i_crit_edge, label %if.then14.i

land.lhs.true12.i.do.end17.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end17.i

if.then14.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @audit_log_set_loginuid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2325, ptr noundef nonnull @.str.1) #18
  br label %do.end17.i

do.end17.i:                                       ; preds = %if.then14.i, %land.lhs.true12.i.do.end17.i_crit_edge, %land.lhs.true.i.do.end17.i_crit_edge, %rcu_read_lock.exit.i.do.end17.i_crit_edge
  %uid19.i = getelementptr inbounds %struct.cred, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %uid19.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %___val.sroa.0.0.copyload.i = load i32, ptr %uid19.i, align 4
  %call.i48.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i48.i, label %do.end17.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i51.i

do.end17.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit.i

land.lhs.true.i51.i:                              ; preds = %do.end17.i
  %call1.i49.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49.i)
  %tobool.not.i50.i = icmp eq i32 %call1.i49.i, 0
  br i1 %tobool.not.i50.i, label %land.lhs.true.i51.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i53.i

land.lhs.true.i51.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i51.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i53.i:                             ; preds = %land.lhs.true.i51.i
  %.b4.i52.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i52.i, label %land.lhs.true2.i53.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i54.i

land.lhs.true2.i53.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i53.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit.i

if.then.i54.i:                                    ; preds = %land.lhs.true2.i53.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #18
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i54.i, %land.lhs.true2.i53.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i51.i.rcu_read_unlock.exit.i_crit_edge, %do.end17.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !342
  %28 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i.i.i.i55.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i55.i to ptr
  %preempt_count.i.i.i.i56.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i56.i, align 4
  %sub.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i56.i, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %___val.sroa.0.0.copyload.i, 0
  %call21.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #18
  %call23.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #18
  %call25.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %loginuid.coerce) #18
  %call26.i = tail call ptr @audit_get_tty() #18
  %32 = ptrtoint ptr %task.i45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i45, align 8
  %tgid.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 69
  %34 = ptrtoint ptr %tgid.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tgid.i.i, align 4
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call2.i, ptr noundef nonnull @.str.101, i32 noundef %35, i32 noundef %call21.i) #18
  %call30.i = tail call i32 @audit_log_task_context(ptr noundef nonnull %call2.i) #18
  %tobool31.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool31.not.i, label %rcu_read_unlock.exit.i.cond.end.i_crit_edge, label %cond.true.i

rcu_read_unlock.exit.i.cond.end.i_crit_edge:      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end.i

cond.true.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %call32.i = tail call ptr @tty_name(ptr noundef nonnull %call26.i) #18
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %rcu_read_unlock.exit.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %call32.i, %cond.true.i ], [ @.str.21, %rcu_read_unlock.exit.i.cond.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call2.i, ptr noundef nonnull @.str.102, i32 noundef %call23.i, i32 noundef %call25.i, ptr noundef %cond.i, i32 noundef %6, i32 noundef %sessionid.1, i32 noundef %tobool.not50) #18
  tail call void @tty_kref_put(ptr noundef %call26.i) #18
  tail call void @audit_log_end(ptr noundef nonnull %call2.i) #18
  br label %audit_log_set_loginuid.exit

audit_log_set_loginuid.exit:                      ; preds = %cond.end.i, %if.end.i42.audit_log_set_loginuid.exit_crit_edge, %out.audit_log_set_loginuid.exit_crit_edge
  ret i32 %retval.0.i49
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @audit_signal_info(i32 noundef %sig, ptr nocapture noundef readonly %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %uid1 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %uid1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %uid.sroa.0.0.copyload = load i32, ptr %uid1, align 4
  %call2 = tail call i32 @auditd_test_task(ptr noundef %t)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %land.lhs.true

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

land.lhs.true:                                    ; preds = %entry
  %7 = zext i32 %sig to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %sig, label %land.lhs.true.if.end18_crit_edge [
    i32 15, label %land.lhs.true.if.then_crit_edge
    i32 1, label %land.lhs.true.if.then_crit_edge25
    i32 10, label %land.lhs.true.if.then_crit_edge26
    i32 12, label %land.lhs.true.if.then_crit_edge27
  ]

land.lhs.true.if.then_crit_edge27:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

land.lhs.true.if.then_crit_edge26:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

land.lhs.true.if.then_crit_edge25:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge25, %land.lhs.true.if.then_crit_edge26, %land.lhs.true.if.then_crit_edge27
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %tgid.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 69
  %10 = ptrtoint ptr %tgid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tgid.i, align 4
  store i32 %11, ptr @audit_sig_pid, align 4
  %loginuid.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 121
  %12 = ptrtoint ptr %loginuid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %retval.sroa.0.0.copyload.i = load i32, ptr %loginuid.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.sroa.0.0.copyload.i)
  %cmp.i.not = icmp eq i32 %retval.sroa.0.0.copyload.i, -1
  %call14.uid.sroa.0.0.copyload = select i1 %cmp.i.not, i32 %uid.sroa.0.0.copyload, i32 %retval.sroa.0.0.copyload.i
  store i32 %call14.uid.sroa.0.0.copyload, ptr @audit_sig_uid.0, align 4
  tail call void @security_current_getsecid_subj(ptr noundef nonnull @audit_sig_sid) #18
  br label %if.end18

if.end18:                                         ; preds = %if.then, %land.lhs.true.if.end18_crit_edge, %entry.if.end18_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @audit_log(ptr noundef %ctx, i32 noundef %gfp_mask, i32 noundef %type, ptr nocapture noundef readonly %fmt, ...) #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #18
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !350
  %call = tail call ptr @audit_log_start(ptr noundef %ctx, i32 noundef %gfp_mask, i32 noundef %type)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  call fastcc void @audit_log_vformat(ptr noundef nonnull %call, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @audit_log_end(ptr noundef nonnull %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #18
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !341
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 45, ptr noundef nonnull @.str.1) #18
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !342
  %8 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kauditd_thread(ptr nocapture noundef readnone %dummy) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @set_freezable() #18
  %call1132 = call zeroext i1 @kthread_should_stop() #18
  br i1 %call1132, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %if.end56.while.body_crit_edge, %entry.while.body_crit_edge
  %portid.0133 = phi i32 [ %portid.1, %if.end56.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %0 = call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !341
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %while.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

while.body.rcu_read_lock.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %while.body
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %while.body.rcu_read_lock.exit_crit_edge
  %4 = load volatile ptr, ptr @auditd_conn, align 4
  %call3 = call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b79 = load i1, ptr @kauditd_thread.__warned, align 1
  br i1 %.b79, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @kauditd_thread.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 847, ptr noundef nonnull @.str.1) #18
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.end9
  %call.i80 = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i80, label %if.then12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i83

if.then12.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i83:                                ; preds = %if.then12
  %call1.i81 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81)
  %tobool.not.i82 = icmp eq i32 %call1.i81, 0
  br i1 %tobool.not.i82, label %land.lhs.true.i83.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i85

land.lhs.true.i83.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i85:                               ; preds = %land.lhs.true.i83
  %.b4.i84 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i84, label %land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge, label %if.then.i86

land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i86:                                      ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i86, %land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i83.rcu_read_unlock.exit_crit_edge, %if.then12.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !342
  %5 = call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i.i.i.i87 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i87 to ptr
  %preempt_count.i.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i88, align 4
  %sub.i.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i88, align 4
  call void @rcu_read_unlock_strict() #18
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  br label %main_queue

if.end13:                                         ; preds = %do.end9
  %net14 = getelementptr inbounds %struct.auditd_connection, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %net14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net14, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #18
  %11 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #18, !srcloc !358
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end13.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !348

if.end13.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end13
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_net.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !346

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_net.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_net.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end13.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end13.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #18
  br label %get_net.exit

get_net.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_net.exit_crit_edge
  %tobool.not.i89 = icmp eq ptr %10, null
  br i1 %tobool.not.i89, label %get_net.exit.audit_get_sk.exit_crit_edge, label %if.end.i

get_net.exit.audit_get_sk.exit_crit_edge:         ; preds = %get_net.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_get_sk.exit

if.end.i:                                         ; preds = %get_net.exit
  call void @__sanitizer_cov_trace_pc() #20
  %13 = load i32, ptr @audit_net_id, align 4
  %call.i90 = call fastcc ptr @net_generic(ptr noundef nonnull %10, i32 noundef %13) #18
  %14 = ptrtoint ptr %call.i90 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i90, align 4
  br label %audit_get_sk.exit

audit_get_sk.exit:                                ; preds = %if.end.i, %get_net.exit.audit_get_sk.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ null, %get_net.exit.audit_get_sk.exit_crit_edge ]
  %portid17 = getelementptr inbounds %struct.auditd_connection, ptr %4, i32 0, i32 1
  %16 = ptrtoint ptr %portid17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %portid17, align 4
  %call.i91 = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i91, label %audit_get_sk.exit.rcu_read_unlock.exit101_crit_edge, label %land.lhs.true.i94

audit_get_sk.exit.rcu_read_unlock.exit101_crit_edge: ; preds = %audit_get_sk.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit101

land.lhs.true.i94:                                ; preds = %audit_get_sk.exit
  %call1.i92 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92)
  %tobool.not.i93 = icmp eq i32 %call1.i92, 0
  br i1 %tobool.not.i93, label %land.lhs.true.i94.rcu_read_unlock.exit101_crit_edge, label %land.lhs.true2.i96

land.lhs.true.i94.rcu_read_unlock.exit101_crit_edge: ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit101

land.lhs.true2.i96:                               ; preds = %land.lhs.true.i94
  %.b4.i95 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i95, label %land.lhs.true2.i96.rcu_read_unlock.exit101_crit_edge, label %if.then.i97

land.lhs.true2.i96.rcu_read_unlock.exit101_crit_edge: ; preds = %land.lhs.true2.i96
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit101

if.then.i97:                                      ; preds = %land.lhs.true2.i96
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #18
  br label %rcu_read_unlock.exit101

rcu_read_unlock.exit101:                          ; preds = %if.then.i97, %land.lhs.true2.i96.rcu_read_unlock.exit101_crit_edge, %land.lhs.true.i94.rcu_read_unlock.exit101_crit_edge, %audit_get_sk.exit.rcu_read_unlock.exit101_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !342
  %18 = call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i.i.i.i98 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i98 to ptr
  %preempt_count.i.i.i.i99 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i99, align 4
  %sub.i.i.i100 = add i32 %21, -1
  store volatile i32 %sub.i.i.i100, ptr %preempt_count.i.i.i.i99, align 4
  call void @rcu_read_unlock_strict() #18
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  %22 = load volatile ptr, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @audit_hold_queue, i32 0, i32 0, i32 0, i32 1), align 4
  %cmp.i.i = icmp eq ptr %22, @audit_hold_queue
  %cmp.not545964.i = icmp eq ptr %22, null
  %cmp.not5459.i = or i1 %cmp.i.i, %cmp.not545964.i
  br i1 %cmp.not5459.i, label %rcu_read_unlock.exit101.if.end20_crit_edge, label %rcu_read_unlock.exit101.land.rhs.lr.ph.i_crit_edge

rcu_read_unlock.exit101.land.rhs.lr.ph.i_crit_edge: ; preds = %rcu_read_unlock.exit101
  br label %land.rhs.lr.ph.i

rcu_read_unlock.exit101.if.end20_crit_edge:       ; preds = %rcu_read_unlock.exit101
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

land.rhs.lr.ph.i:                                 ; preds = %while.cond.outer.backedge.i.land.rhs.lr.ph.i_crit_edge, %rcu_read_unlock.exit101.land.rhs.lr.ph.i_crit_edge
  %failed.0.ph62.i = phi i32 [ %failed.0.ph.be.i, %while.cond.outer.backedge.i.land.rhs.lr.ph.i_crit_edge ], [ 0, %rcu_read_unlock.exit101.land.rhs.lr.ph.i_crit_edge ]
  %rc.0.ph61.i = phi i32 [ %rc.0.ph.be.i, %while.cond.outer.backedge.i.land.rhs.lr.ph.i_crit_edge ], [ 0, %rcu_read_unlock.exit101.land.rhs.lr.ph.i_crit_edge ]
  %sk.addr.0.ph60.i = phi ptr [ null, %while.cond.outer.backedge.i.land.rhs.lr.ph.i_crit_edge ], [ %retval.0.i, %rcu_read_unlock.exit101.land.rhs.lr.ph.i_crit_edge ]
  %tobool3.not.i = icmp eq ptr %sk.addr.0.ph60.i, null
  %call1.i102123 = call ptr @skb_dequeue(ptr noundef nonnull @audit_hold_queue) #18
  %tobool.not.i103124 = icmp eq ptr %call1.i102123, null
  br i1 %tobool.not.i103124, label %land.rhs.lr.ph.i.kauditd_send_queue.exit_crit_edge, label %land.rhs.lr.ph.i.while.body.i_crit_edge

land.rhs.lr.ph.i.while.body.i_crit_edge:          ; preds = %land.rhs.lr.ph.i
  br label %while.body.i

land.rhs.lr.ph.i.kauditd_send_queue.exit_crit_edge: ; preds = %land.rhs.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kauditd_send_queue.exit

land.rhs.i:                                       ; preds = %if.else24.i
  %call1.i102 = call ptr @skb_dequeue(ptr noundef nonnull @audit_hold_queue) #18
  %tobool.not.i103 = icmp eq ptr %call1.i102, null
  br i1 %tobool.not.i103, label %land.rhs.i.if.end20_crit_edge, label %land.rhs.i.while.body.i_crit_edge

land.rhs.i.while.body.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

land.rhs.i.if.end20_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

while.body.i:                                     ; preds = %land.rhs.i.while.body.i_crit_edge, %land.rhs.lr.ph.i.while.body.i_crit_edge
  %call1.i102126 = phi ptr [ %call1.i102, %land.rhs.i.while.body.i_crit_edge ], [ %call1.i102123, %land.rhs.lr.ph.i.while.body.i_crit_edge ]
  %failed.056.i125 = phi i32 [ 0, %land.rhs.i.while.body.i_crit_edge ], [ %failed.0.ph62.i, %land.rhs.lr.ph.i.while.body.i_crit_edge ]
  br i1 %tobool3.not.i, label %if.then4.i, label %retry.preheader.i

retry.preheader.i:                                ; preds = %while.body.i
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i102126, i32 0, i32 21
  br label %retry.i

if.then4.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @skb_queue_tail(ptr noundef nonnull @audit_hold_queue, ptr noundef nonnull %call1.i102123) #18
  br label %while.cond.outer.backedge.i

retry.i:                                          ; preds = %switch.early.test.i.retry.i_crit_edge, %retry.preheader.i
  %failed.1.i = phi i32 [ %inc.i, %switch.early.test.i.retry.i_crit_edge ], [ %failed.056.i125, %retry.preheader.i ]
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #18
  %23 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #18, !srcloc !358
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %retry.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !348

retry.i.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %retry.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %24 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !346

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.skb_get.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %retry.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %retry.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef %.sink.i.i.i.i.i) #18
  br label %skb_get.exit.i

skb_get.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge
  %call10.i = call i32 @netlink_unicast(ptr noundef nonnull %sk.addr.0.ph60.i, ptr noundef nonnull %call1.i102126, i32 noundef %17, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.else24.i

if.then12.i:                                      ; preds = %skb_get.exit.i
  %failed.1.fr.i = freeze i32 %failed.1.i
  %inc.i = add i32 %failed.1.fr.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc.i)
  %cmp13.not.not.i = icmp ult i32 %inc.i, 5
  br i1 %cmp13.not.not.i, label %switch.early.test.i, label %if.then12.i.if.then17.i_crit_edge

if.then12.i.if.then17.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then17.i

switch.early.test.i:                              ; preds = %if.then12.i
  %25 = zext i32 %call10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %call10.i, label %switch.early.test.i.retry.i_crit_edge [
    i32 -1, label %switch.early.test.i.if.then17.i_crit_edge
    i32 -111, label %switch.early.test.i.if.then17.i_crit_edge153
  ]

switch.early.test.i.if.then17.i_crit_edge153:     ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then17.i

switch.early.test.i.if.then17.i_crit_edge:        ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then17.i

switch.early.test.i.retry.i_crit_edge:            ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %retry.i

if.then17.i:                                      ; preds = %switch.early.test.i.if.then17.i_crit_edge, %switch.early.test.i.if.then17.i_crit_edge153, %if.then12.i.if.then17.i_crit_edge
  call void @skb_queue_tail(ptr noundef nonnull @audit_hold_queue, ptr noundef nonnull %call1.i102126) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call10.i)
  %cmp21.i = icmp eq i32 %call10.i, -11
  %spec.store.select.i = select i1 %cmp21.i, i32 0, i32 %call10.i
  br label %while.cond.outer.backedge.i

while.cond.outer.backedge.i:                      ; preds = %if.then17.i, %if.then4.i
  %call1.i102126138 = phi ptr [ %call1.i102126, %if.then17.i ], [ %call1.i102123, %if.then4.i ]
  %rc.0.ph.be.i = phi i32 [ %spec.store.select.i, %if.then17.i ], [ %rc.0.ph61.i, %if.then4.i ]
  %failed.0.ph.be.i = phi i32 [ %inc.i, %if.then17.i ], [ %failed.0.ph62.i, %if.then4.i ]
  %cmp.not54.i = icmp eq ptr %call1.i102126138, %22
  br i1 %cmp.not54.i, label %while.cond.outer.backedge.i.kauditd_send_queue.exit_crit_edge, label %while.cond.outer.backedge.i.land.rhs.lr.ph.i_crit_edge

while.cond.outer.backedge.i.land.rhs.lr.ph.i_crit_edge: ; preds = %while.cond.outer.backedge.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs.lr.ph.i

while.cond.outer.backedge.i.kauditd_send_queue.exit_crit_edge: ; preds = %while.cond.outer.backedge.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kauditd_send_queue.exit

if.else24.i:                                      ; preds = %skb_get.exit.i
  call void @consume_skb(ptr noundef nonnull %call1.i102126) #18
  %cmp.not.i = icmp eq ptr %call1.i102126, %22
  br i1 %cmp.not.i, label %if.else24.i.if.end20_crit_edge, label %land.rhs.i

if.else24.i.if.end20_crit_edge:                   ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

kauditd_send_queue.exit:                          ; preds = %while.cond.outer.backedge.i.kauditd_send_queue.exit_crit_edge, %land.rhs.lr.ph.i.kauditd_send_queue.exit_crit_edge
  %rc.0.lcssa.i = phi i32 [ %rc.0.ph.be.i, %while.cond.outer.backedge.i.kauditd_send_queue.exit_crit_edge ], [ %rc.0.ph61.i, %land.rhs.lr.ph.i.kauditd_send_queue.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.lcssa.i)
  %cmp = icmp slt i32 %rc.0.lcssa.i, 0
  br i1 %cmp, label %if.then19, label %kauditd_send_queue.exit.if.end20_crit_edge

kauditd_send_queue.exit.if.end20_crit_edge:       ; preds = %kauditd_send_queue.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then19:                                        ; preds = %kauditd_send_queue.exit
  call void @__sanitizer_cov_trace_pc() #20
  call fastcc void @auditd_reset(ptr noundef nonnull %4)
  br label %main_queue

if.end20:                                         ; preds = %kauditd_send_queue.exit.if.end20_crit_edge, %if.else24.i.if.end20_crit_edge, %land.rhs.i.if.end20_crit_edge, %rcu_read_unlock.exit101.if.end20_crit_edge
  %call21 = call fastcc i32 @kauditd_send_queue(ptr noundef %retval.0.i, i32 noundef %17, ptr noundef nonnull @audit_retry_queue, i32 noundef 5, ptr noundef null, ptr noundef nonnull @kauditd_hold_skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end20.main_queue_crit_edge

if.end20.main_queue_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %main_queue

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  call fastcc void @auditd_reset(ptr noundef nonnull %4)
  br label %main_queue

main_queue:                                       ; preds = %if.then23, %if.end20.main_queue_crit_edge, %if.then19, %rcu_read_unlock.exit
  %sk.1 = phi ptr [ null, %if.then19 ], [ null, %if.then23 ], [ %retval.0.i, %if.end20.main_queue_crit_edge ], [ null, %rcu_read_unlock.exit ]
  %net.1 = phi ptr [ %10, %if.then19 ], [ %10, %if.then23 ], [ %10, %if.end20.main_queue_crit_edge ], [ null, %rcu_read_unlock.exit ]
  %portid.1 = phi i32 [ %17, %if.then19 ], [ %17, %if.then23 ], [ %17, %if.end20.main_queue_crit_edge ], [ %portid.0133, %rcu_read_unlock.exit ]
  %tobool25.not = icmp eq ptr %sk.1, null
  %cond = select i1 %tobool25.not, ptr @kauditd_hold_skb, ptr @kauditd_retry_skb
  %call26 = call fastcc i32 @kauditd_send_queue(ptr noundef %sk.1, i32 noundef %portid.1, ptr noundef nonnull @audit_queue, i32 noundef 1, ptr noundef nonnull @kauditd_send_multicast_skb, ptr noundef nonnull %cond)
  %tobool11.not.not = xor i1 %tobool11.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp29 = icmp slt i32 %call26, 0
  %or.cond = select i1 %tobool11.not.not, i1 %cmp29, i1 false
  br i1 %or.cond, label %if.then30, label %main_queue.if.end31_crit_edge

main_queue.if.end31_crit_edge:                    ; preds = %main_queue
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31

if.then30:                                        ; preds = %main_queue
  call void @__sanitizer_cov_trace_pc() #20
  call fastcc void @auditd_reset(ptr noundef nonnull %4)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %main_queue.if.end31_crit_edge
  %tobool32.not = icmp eq ptr %net.1, null
  br i1 %tobool32.not, label %if.end31.if.end34_crit_edge, label %if.then33

if.end31.if.end34_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

if.then33:                                        ; preds = %if.end31
  %count.i105 = getelementptr inbounds %struct.net, ptr %net.1, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i106 = call zeroext i1 @__kasan_check_write(ptr noundef %count.i105, i32 noundef 4) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !344
  call void @llvm.prefetch.p0(ptr %count.i105, i32 1, i32 3, i32 1) #18
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i105, ptr %count.i105, i32 1, ptr elementtype(i32) %count.i105) #18, !srcloc !345
  %asmresult.i.i.i.i.i.i.i107 = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i107)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i107, 1
  br i1 %cmp.i.i.i.i, label %if.then.i109, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i107)
  %.not.i.i.i.i108 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i107, 0
  br i1 %.not.i.i.i.i108, label %if.end5.i.i.i.i.if.end34_crit_edge, label %if.then10.i.i.i.i, !prof !346

if.end5.i.i.i.i.if.end34_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @refcount_warn_saturate(ptr noundef %count.i105, i32 noundef 3) #18
  br label %if.end34

if.then.i109:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !347
  call void @__put_net(ptr noundef nonnull %net.1) #18
  br label %if.end34

if.end34:                                         ; preds = %if.then.i109, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end34_crit_edge, %if.end31.if.end34_crit_edge
  call void @__wake_up(ptr noundef nonnull @audit_backlog_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 904) #18
  %27 = load i32, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @audit_queue, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool42.not = icmp eq i32 %27, 0
  br i1 %tobool42.not, label %if.then43, label %if.end34.if.end56_crit_edge

if.end34.if.end56_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end56

if.then43:                                        ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #18
  %28 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #18
  %call45129 = call i32 @prepare_to_wait_event(ptr noundef nonnull @kauditd_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #18
  %29 = load i32, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @audit_queue, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool47.not130 = icmp eq i32 %29, 0
  br i1 %tobool47.not130, label %if.then43.if.end51_crit_edge, label %if.then43.for.end_crit_edge

if.then43.for.end_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.then43.if.end51_crit_edge:                     ; preds = %if.then43
  br label %if.end51

if.end51:                                         ; preds = %cleanup.if.end51_crit_edge, %if.then43.if.end51_crit_edge
  %call45131 = phi i32 [ %call45, %cleanup.if.end51_crit_edge ], [ %call45129, %if.then43.if.end51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45131)
  %tobool52.not = icmp eq i32 %call45131, 0
  br i1 %tobool52.not, label %if.end54, label %if.end51.__out_crit_edge

if.end51.__out_crit_edge:                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  br label %__out

if.end54:                                         ; preds = %if.end51
  %30 = call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %35, 1073741824
  store i32 %or.i.i, ptr %flags.i.i, align 4
  call void @schedule() #18
  %36 = call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i1.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i1.i to ptr
  %task.i2.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i2.i, align 8
  %flags.i3.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i3.i, align 4
  %and.i.i = and i32 %41, -1073741825
  store i32 %and.i.i, ptr %flags.i3.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !359
  %42 = call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i.i.i, align 4
  %and.i4.i.i = and i32 %47, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i4.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end54.if.end.i.i.i_crit_edge

if.end54.if.end.i.i.i_crit_edge:                  ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #20
  call void @debug_check_no_locks_held() #18
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end54.if.end.i.i.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.74, i32 noundef 57) #18
  %48 = call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i.i.i.i111 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i111 to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i.i.i.i, align 8
  %call.i.i.i.i.i.i.i112 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %52 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i.i.i.i.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.cleanup_crit_edge, label %freezing.exit.i.i.i.i, !prof !346

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

freezing.exit.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call4.i.i.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %51) #18
  br i1 %call4.i.i.i.i.i, label %if.end.i.i.i.i, label %freezing.exit.i.i.i.i.cleanup_crit_edge, !prof !348

freezing.exit.i.i.i.i.cleanup_crit_edge:          ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i.i.i.i:                                   ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %call6.i.i.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i.i, %freezing.exit.i.i.i.i.cleanup_crit_edge, %if.end.i.i.i.cleanup_crit_edge
  %call45 = call i32 @prepare_to_wait_event(ptr noundef nonnull @kauditd_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #18
  %53 = load i32, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @audit_queue, i32 0, i32 1), align 4
  %tobool47.not = icmp eq i32 %53, 0
  br i1 %tobool47.not, label %cleanup.if.end51_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

cleanup.if.end51_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then43.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @kauditd_wait, ptr noundef nonnull %__wq_entry) #18
  br label %__out

__out:                                            ; preds = %for.end, %if.end51.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #18
  br label %if.end56

if.end56:                                         ; preds = %__out, %if.end34.if.end56_crit_edge
  %call1 = call zeroext i1 @kthread_should_stop() #18
  br i1 %call1, label %if.end56.while.end_crit_edge, label %if.end56.while.body_crit_edge

if.end56.while.body_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

if.end56.while.end_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %if.end56.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audit_net_init(ptr noundef %net) #0 align 64 {
entry:
  %cfg = alloca %struct.netlink_kernel_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cfg) #18
  %0 = call ptr @memcpy(ptr %cfg, ptr @__const.audit_net_init.cfg, i32 28)
  %1 = load i32, ptr @audit_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %1)
  %call.i = call ptr @__netlink_kernel_create(ptr noundef %net, i32 noundef 9, ptr noundef null, ptr noundef nonnull %cfg) #18
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %call, align 4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @audit_failure, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %3, label %if.then.cleanup_crit_edge [
    i32 2, label %sw.bb2.i
    i32 1, label %sw.bb.i
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then
  %call.i8 = call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.audit_panic) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool.not.i = icmp eq i32 %call.i8, 0
  br i1 %tobool.not.i, label %sw.bb.i.cleanup_crit_edge, label %do.end.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.40) #21
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.40) #22
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %sk_sndtimeo = getelementptr inbounds %struct.sock, ptr %call.i, i32 0, i32 31
  %5 = ptrtoint ptr %sk_sndtimeo to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %sk_sndtimeo, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end.i, %sw.bb.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %if.then.cleanup_crit_edge ], [ -12, %sw.bb.i.cleanup_crit_edge ], [ -12, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cfg) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @audit_net_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @audit_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  tail call void @netlink_kernel_release(ptr noundef %2) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @audit_receive(ptr noundef %skb) #0 align 64 {
entry:
  %ab.i = alloca ptr, align 4
  %ctx.i = alloca ptr, align 4
  %len.i = alloca i32, align 4
  %s.i = alloca %struct.audit_status, align 4
  %s8.i = alloca %struct.audit_status, align 4
  %bufp.i = alloca ptr, align 4
  %msglen.i = alloca i32, align 4
  %s277.i = alloca %struct.audit_tty_status, align 4
  %s295.sroa.0.i = alloca i64, align 8
  %ab297.i = alloca ptr, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @audit_cmd_mutex, i32 noundef 0) #18
  %4 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  store ptr %7, ptr getelementptr inbounds (%struct.audit_ctl_mutex, ptr @audit_cmd_mutex, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %3)
  %cmp.i251 = icmp sgt i32 %3, 15
  br i1 %cmp.i251, label %land.lhs.true.i.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

land.lhs.true.i.lr.ph:                            ; preds = %entry
  %8 = getelementptr inbounds %struct.audit_tty_status, ptr %s277.i, i32 0, i32 1
  %s8.4.s8.4.s8.4.enabled12.sroa_idx.i = getelementptr inbounds i8, ptr %s8.i, i32 4
  %s8.8.s8.8.s8.8.failure23.sroa_idx.i = getelementptr inbounds i8, ptr %s8.i, i32 8
  %s8.12.s8.12.s8.12.pid34.sroa_idx.i = getelementptr inbounds i8, ptr %s8.i, i32 12
  %portid.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %sk.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %s8.16.s8.16.s8.16.rate_limit86.sroa_idx.i = getelementptr inbounds i8, ptr %s8.i, i32 16
  %s8.20.s8.20.s8.20.backlog_limit97.sroa_idx.i = getelementptr inbounds i8, ptr %s8.i, i32 20
  %s8.36.s8.36.s8.36.backlog_wait_time112.sroa_idx.i = getelementptr inbounds i8, ptr %s8.i, i32 36
  %enabled.i = getelementptr inbounds %struct.audit_status, ptr %s.i, i32 0, i32 1
  %failure.i = getelementptr inbounds %struct.audit_status, ptr %s.i, i32 0, i32 2
  %pid.i = getelementptr inbounds %struct.audit_status, ptr %s.i, i32 0, i32 3
  %rate_limit.i = getelementptr inbounds %struct.audit_status, ptr %s.i, i32 0, i32 4
  %backlog_limit.i = getelementptr inbounds %struct.audit_status, ptr %s.i, i32 0, i32 5
  %lost.i = getelementptr inbounds %struct.audit_status, ptr %s.i, i32 0, i32 6
  %backlog.i = getelementptr inbounds %struct.audit_status, ptr %s.i, i32 0, i32 7
  %9 = getelementptr inbounds %struct.audit_status, ptr %s.i, i32 0, i32 8
  %backlog_wait_time.i = getelementptr inbounds %struct.audit_status, ptr %s.i, i32 0, i32 9
  %backlog_wait_time_actual.i = getelementptr inbounds %struct.audit_status, ptr %s.i, i32 0, i32 10
  %s295.sroa.0.i.4.i.4.s295.4..sroa_idx262 = getelementptr inbounds i8, ptr %s295.sroa.0.i, i32 4
  %s295.sroa.0.i.4.i.4.s295.4..sroa_idx = getelementptr inbounds i8, ptr %s295.sroa.0.i, i32 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %nlh.0253 = phi ptr [ %1, %land.lhs.true.i.lr.ph ], [ %add.ptr.i95, %if.end.land.lhs.true.i_crit_edge ]
  %len.0252 = phi i32 [ %3, %land.lhs.true.i.lr.ph ], [ %sub1.i, %if.end.land.lhs.true.i_crit_edge ]
  %10 = ptrtoint ptr %nlh.0253 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nlh.0253, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp1.i = icmp ult i32 %11, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %len.0252)
  %cmp3.i.not = icmp ugt i32 %11, %len.0252
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp3.i.not
  br i1 %or.cond, label %land.lhs.true.i.while.end_crit_edge, label %while.body

land.lhs.true.i.while.end_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ab.i) #18
  %12 = ptrtoint ptr %ab.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %ab.i, align 4, !annotation !350
  %nlmsg_type.i = getelementptr inbounds %struct.nlmsghdr, ptr %nlh.0253, i32 0, i32 1
  %13 = ptrtoint ptr %nlmsg_type.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nlmsg_type.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctx.i) #18
  %15 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %ctx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #18
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %len.i, align 4, !annotation !350
  %17 = call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 99
  %21 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cred.i.i, align 16
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 25
  %23 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %user_ns.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %24, @init_user_ns
  br i1 %cmp.not.i.i, label %if.end.i527.i, label %while.body.audit_receive_msg.exit.thread_crit_edge

while.body.audit_receive_msg.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread

if.end.i527.i:                                    ; preds = %while.body
  %25 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.109)
  switch i16 %14, label %sw.caserange19.i.i [
    i16 1002, label %if.end.i527.i.audit_receive_msg.exit.thread_crit_edge
    i16 1003, label %if.end.i527.i.audit_receive_msg.exit.thread_crit_edge277
    i16 1004, label %if.end.i527.i.audit_receive_msg.exit.thread_crit_edge278
    i16 1000, label %if.end.i527.i.sw.bb2.i.i_crit_edge
    i16 1001, label %if.end.i527.i.sw.bb2.i.i_crit_edge279
    i16 1019, label %if.end.i527.i.sw.bb2.i.i_crit_edge280
    i16 1018, label %if.end.i527.i.sw.bb2.i.i_crit_edge281
    i16 1013, label %if.end.i527.i.sw.bb2.i.i_crit_edge282
    i16 1011, label %if.end.i527.i.sw.bb2.i.i_crit_edge283
    i16 1012, label %if.end.i527.i.sw.bb2.i.i_crit_edge284
    i16 1010, label %if.end.i527.i.sw.bb2.i.i_crit_edge285
    i16 1016, label %if.end.i527.i.sw.bb2.i.i_crit_edge286
    i16 1017, label %if.end.i527.i.sw.bb2.i.i_crit_edge287
    i16 1014, label %if.end.i527.i.sw.bb2.i.i_crit_edge288
    i16 1015, label %if.end.i527.i.sw.bb2.i.i_crit_edge289
    i16 1005, label %if.end.i527.i.audit_netlink_ok.exit.i_crit_edge
  ]

if.end.i527.i.audit_netlink_ok.exit.i_crit_edge:  ; preds = %if.end.i527.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_netlink_ok.exit.i

if.end.i527.i.sw.bb2.i.i_crit_edge289:            ; preds = %if.end.i527.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2.i.i

if.end.i527.i.sw.bb2.i.i_crit_edge288:            ; preds = %if.end.i527.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2.i.i

if.end.i527.i.sw.bb2.i.i_crit_edge287:            ; preds = %if.end.i527.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2.i.i

if.end.i527.i.sw.bb2.i.i_crit_edge286:            ; preds = %if.end.i527.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2.i.i

if.end.i527.i.sw.bb2.i.i_crit_edge285:            ; preds = %if.end.i527.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2.i.i

if.end.i527.i.sw.bb2.i.i_crit_edge284:            ; preds = %if.end.i527.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2.i.i

if.end.i527.i.sw.bb2.i.i_crit_edge283:            ; preds = %if.end.i527.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2.i.i

if.end.i527.i.sw.bb2.i.i_crit_edge282:            ; preds = %if.end.i527.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2.i.i

if.end.i527.i.sw.bb2.i.i_crit_edge281:            ; preds = %if.end.i527.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2.i.i

if.end.i527.i.sw.bb2.i.i_crit_edge280:            ; preds = %if.end.i527.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2.i.i

if.end.i527.i.sw.bb2.i.i_crit_edge279:            ; preds = %if.end.i527.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2.i.i

if.end.i527.i.sw.bb2.i.i_crit_edge:               ; preds = %if.end.i527.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2.i.i

if.end.i527.i.audit_receive_msg.exit.thread_crit_edge278: ; preds = %if.end.i527.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread

if.end.i527.i.audit_receive_msg.exit.thread_crit_edge277: ; preds = %if.end.i527.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread

if.end.i527.i.audit_receive_msg.exit.thread_crit_edge: ; preds = %if.end.i527.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread

sw.bb2.i.i:                                       ; preds = %if.end.i527.i.sw.bb2.i.i_crit_edge, %if.end.i527.i.sw.bb2.i.i_crit_edge279, %if.end.i527.i.sw.bb2.i.i_crit_edge280, %if.end.i527.i.sw.bb2.i.i_crit_edge281, %if.end.i527.i.sw.bb2.i.i_crit_edge282, %if.end.i527.i.sw.bb2.i.i_crit_edge283, %if.end.i527.i.sw.bb2.i.i_crit_edge284, %if.end.i527.i.sw.bb2.i.i_crit_edge285, %if.end.i527.i.sw.bb2.i.i_crit_edge286, %if.end.i527.i.sw.bb2.i.i_crit_edge287, %if.end.i527.i.sw.bb2.i.i_crit_edge288, %if.end.i527.i.sw.bb2.i.i_crit_edge289
  %call5.i.i = call ptr @task_active_pid_ns(ptr noundef %20) #18
  %cmp6.not.i.i = icmp eq ptr %call5.i.i, @init_pid_ns
  br i1 %cmp6.not.i.i, label %sw.bb2.i.i.audit_netlink_ok.exit.i_crit_edge, label %sw.bb2.i.i.audit_receive_msg.exit.thread_crit_edge

sw.bb2.i.i.audit_receive_msg.exit.thread_crit_edge: ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread

sw.bb2.i.i.audit_netlink_ok.exit.i_crit_edge:     ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_netlink_ok.exit.i

sw.caserange19.i.i:                               ; preds = %if.end.i527.i
  %conv.i.i = zext i16 %14 to i32
  %26 = add nsw i32 %conv.i.i, -1100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %26)
  %inbounds20.i.i = icmp ult i32 %26, 100
  %27 = add nsw i32 %conv.i.i, -2100
  call void @__sanitizer_cov_trace_const_cmp4(i32 900, i32 %27)
  %inbounds.i.i = icmp ult i32 %27, 900
  %or.cond.i.i = or i1 %inbounds20.i.i, %inbounds.i.i
  br i1 %or.cond.i.i, label %sw.caserange19.i.i.audit_netlink_ok.exit.i_crit_edge, label %sw.caserange19.i.i.audit_receive_msg.exit.thread_crit_edge

sw.caserange19.i.i.audit_receive_msg.exit.thread_crit_edge: ; preds = %sw.caserange19.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread

sw.caserange19.i.i.audit_netlink_ok.exit.i_crit_edge: ; preds = %sw.caserange19.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_netlink_ok.exit.i

audit_netlink_ok.exit.i:                          ; preds = %sw.caserange19.i.i.audit_netlink_ok.exit.i_crit_edge, %sw.bb2.i.i.audit_netlink_ok.exit.i_crit_edge, %if.end.i527.i.audit_netlink_ok.exit.i_crit_edge
  %.sink.i.i = phi i32 [ 30, %sw.bb2.i.i.audit_netlink_ok.exit.i_crit_edge ], [ 29, %sw.caserange19.i.i.audit_netlink_ok.exit.i_crit_edge ], [ 29, %if.end.i527.i.audit_netlink_ok.exit.i_crit_edge ]
  %call16.i.i = call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef %.sink.i.i) #18
  br i1 %call16.i.i, label %if.end.i, label %audit_netlink_ok.exit.i.audit_receive_msg.exit.thread_crit_edge

audit_netlink_ok.exit.i.audit_receive_msg.exit.thread_crit_edge: ; preds = %audit_netlink_ok.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread

if.end.i:                                         ; preds = %audit_netlink_ok.exit.i
  %nlmsg_seq.i = getelementptr inbounds %struct.nlmsghdr, ptr %nlh.0253, i32 0, i32 3
  %28 = ptrtoint ptr %nlmsg_seq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nlmsg_seq.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %nlh.0253, i32 16
  %30 = ptrtoint ptr %nlh.0253 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nlh.0253, align 4
  %sub.i.i = add i32 %31, -16
  %conv.i = zext i16 %14 to i32
  %32 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.110)
  switch i16 %14, label %sw.caserange167.i [
    i16 1000, label %sw.bb.i
    i16 1001, label %sw.bb7.i
    i16 1019, label %sw.bb143.i
    i16 1018, label %sw.bb148.i
    i16 1005, label %if.end.i.sw.bb159.i_crit_edge
    i16 1011, label %if.end.i.sw.bb207.i_crit_edge
    i16 1012, label %if.end.i.sw.bb207.i_crit_edge290
    i16 1013, label %sw.bb223.i
    i16 1014, label %do.end.i
    i16 1015, label %sw.bb227.i
    i16 1010, label %sw.bb252.i
    i16 1016, label %sw.bb276.i
    i16 1017, label %sw.bb294.i
  ]

if.end.i.sw.bb207.i_crit_edge290:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb207.i

if.end.i.sw.bb207.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb207.i

if.end.i.sw.bb159.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb159.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %s.i) #18
  %33 = ptrtoint ptr %s.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %s.i, align 4
  %34 = load i32, ptr @audit_enabled, align 4
  %35 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %enabled.i, align 4
  %36 = load i32, ptr @audit_failure, align 4
  %37 = ptrtoint ptr %failure.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %failure.i, align 4
  %call3.i = call fastcc i32 @auditd_pid_vnr() #18
  %38 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call3.i, ptr %pid.i, align 4
  %39 = load i32, ptr @audit_rate_limit, align 4
  %40 = ptrtoint ptr %rate_limit.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %rate_limit.i, align 4
  %41 = load i32, ptr @audit_backlog_limit, align 4
  %42 = ptrtoint ptr %backlog_limit.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %backlog_limit.i, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @audit_lost, i32 noundef 4) #18
  %43 = load volatile i32, ptr @audit_lost, align 4
  %44 = ptrtoint ptr %lost.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %lost.i, align 4
  %45 = load i32, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @audit_queue, i32 0, i32 1), align 4
  %46 = ptrtoint ptr %backlog.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %backlog.i, align 4
  %47 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 127, ptr %9, align 4
  %48 = load i32, ptr @audit_backlog_wait_time, align 4
  %49 = ptrtoint ptr %backlog_wait_time.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %backlog_wait_time.i, align 4
  %call.i.i523.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @audit_backlog_wait_time_actual, i32 noundef 4) #18
  %50 = load volatile i32, ptr @audit_backlog_wait_time_actual, align 4
  %51 = ptrtoint ptr %backlog_wait_time_actual.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %backlog_wait_time_actual.i, align 4
  call fastcc void @audit_send_reply(ptr noundef %skb, i32 noundef %29, i32 noundef 1000, ptr noundef nonnull %s.i, i32 noundef 44) #18
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %s.i) #18
  br label %audit_receive_msg.exit.thread241

sw.bb7.i:                                         ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %s8.i) #18
  %52 = call ptr @memset(ptr %s8.i, i32 255, i32 44)
  %53 = call i32 @llvm.umin.i32(i32 %sub.i.i, i32 44) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %53)
  %54 = icmp ugt i32 %53, 43
  %55 = sub nuw nsw i32 44, %53
  %56 = select i1 %54, i32 0, i32 %55
  %57 = getelementptr i8, ptr %s8.i, i32 %53
  %58 = call ptr @memset(ptr %57, i32 0, i32 %56)
  %59 = call ptr @memcpy(ptr %s8.i, ptr %add.ptr.i.i, i32 %53)
  %60 = ptrtoint ptr %s8.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %s8.0.s8.0.s8.0..i = load i32, ptr %s8.i, align 4
  %and.i = and i32 %s8.0.s8.0.s8.0..i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %sw.bb7.i.if.end18.i_crit_edge, label %if.then11.i

sw.bb7.i.if.end18.i_crit_edge:                    ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18.i

if.then11.i:                                      ; preds = %sw.bb7.i
  %61 = ptrtoint ptr %s8.4.s8.4.s8.4.enabled12.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %s8.4.s8.4.s8.4..i = load i32, ptr %s8.4.s8.4.s8.4.enabled12.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %s8.4.s8.4.s8.4..i)
  %cmp.i188 = icmp ugt i32 %s8.4.s8.4.s8.4..i, 2
  br i1 %cmp.i188, label %if.then11.i.audit_receive_msg.exit.thread246_crit_edge, label %if.end.i190

if.then11.i.audit_receive_msg.exit.thread246_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread246

if.end.i190:                                      ; preds = %if.then11.i
  %62 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp1.not.i.i189 = icmp eq i32 %62, 0
  br i1 %cmp1.not.i.i189, label %if.end.i190.audit_set_enabled.exit.thread208_crit_edge, label %if.then2.i.i197

if.end.i190.audit_set_enabled.exit.thread208_crit_edge: ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_set_enabled.exit.thread208

if.then2.i.i197:                                  ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp.i.i191 = icmp ne i32 %62, 2
  %..i.i192 = zext i1 %cmp.i.i191 to i32
  %call.i.i193 = call fastcc i32 @audit_log_config_change(ptr noundef nonnull @.str.55, i32 noundef %s8.4.s8.4.s8.4..i, i32 noundef %62, i32 noundef %..i.i192) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i193)
  %tobool.not.i.i194 = icmp ne i32 %call.i.i193, 0
  %cmp.not.i.i195 = xor i1 %cmp.i.i191, true
  %brmerge.i.i196 = select i1 %tobool.not.i.i194, i1 true, i1 %cmp.not.i.i195
  br i1 %brmerge.i.i196, label %if.else8.i.i199, label %if.then2.i.i197.audit_set_enabled.exit.thread208_crit_edge

if.then2.i.i197.audit_set_enabled.exit.thread208_crit_edge: ; preds = %if.then2.i.i197
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_set_enabled.exit.thread208

if.else8.i.i199:                                  ; preds = %if.then2.i.i197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i193)
  %cmp9.i.i198 = icmp eq i32 %call.i.i193, 0
  br i1 %cmp9.i.i198, label %if.else8.i.i199.audit_receive_msg.exit.thread246_crit_edge, label %audit_set_enabled.exit

if.else8.i.i199.audit_receive_msg.exit.thread246_crit_edge: ; preds = %if.else8.i.i199
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread246

audit_set_enabled.exit.thread208:                 ; preds = %if.then2.i.i197.audit_set_enabled.exit.thread208_crit_edge, %if.end.i190.audit_set_enabled.exit.thread208_crit_edge
  store i32 %s8.4.s8.4.s8.4..i, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s8.4.s8.4.s8.4..i)
  %tobool2.i = icmp ne i32 %s8.4.s8.4.s8.4..i, 0
  %lnot.ext.i = zext i1 %tobool2.i to i8
  %63 = load i8, ptr @audit_ever_enabled, align 1, !range !349
  %or.i200 = or i8 %63, %lnot.ext.i
  store i8 %or.i200, ptr @audit_ever_enabled, align 1
  br label %if.end18.i

audit_set_enabled.exit:                           ; preds = %if.else8.i.i199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i193)
  %cmp14.i = icmp slt i32 %call.i.i193, 0
  br i1 %cmp14.i, label %audit_set_enabled.exit.audit_receive_msg.exit.thread246_crit_edge, label %audit_set_enabled.exit.if.end18.i_crit_edge

audit_set_enabled.exit.if.end18.i_crit_edge:      ; preds = %audit_set_enabled.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18.i

audit_set_enabled.exit.audit_receive_msg.exit.thread246_crit_edge: ; preds = %audit_set_enabled.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread246

if.end18.i:                                       ; preds = %audit_set_enabled.exit.if.end18.i_crit_edge, %audit_set_enabled.exit.thread208, %sw.bb7.i.if.end18.i_crit_edge
  %and20.i = and i32 %s8.0.s8.0.s8.0..i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end18.i.if.end29.i_crit_edge, label %if.then22.i

if.end18.i.if.end29.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29.i

if.then22.i:                                      ; preds = %if.end18.i
  %64 = ptrtoint ptr %s8.8.s8.8.s8.8.failure23.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %s8.8.s8.8.s8.8..i = load i32, ptr %s8.8.s8.8.s8.8.failure23.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %s8.8.s8.8.s8.8..i)
  %switch.i173 = icmp ult i32 %s8.8.s8.8.s8.8..i, 3
  br i1 %switch.i173, label %if.end.i175, label %if.then22.i.audit_receive_msg.exit.thread246_crit_edge

if.then22.i.audit_receive_msg.exit.thread246_crit_edge: ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread246

if.end.i175:                                      ; preds = %if.then22.i
  %65 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp1.not.i.i174 = icmp eq i32 %65, 0
  br i1 %cmp1.not.i.i174, label %if.end.i175.audit_set_failure.exit.thread214_crit_edge, label %if.then2.i.i182

if.end.i175.audit_set_failure.exit.thread214_crit_edge: ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_set_failure.exit.thread214

if.then2.i.i182:                                  ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp.i.i176 = icmp ne i32 %65, 2
  %..i.i177 = zext i1 %cmp.i.i176 to i32
  %66 = load i32, ptr @audit_failure, align 4
  %call.i.i178 = call fastcc i32 @audit_log_config_change(ptr noundef nonnull @.str.56, i32 noundef %s8.8.s8.8.s8.8..i, i32 noundef %66, i32 noundef %..i.i177) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i178)
  %tobool.not.i.i179 = icmp ne i32 %call.i.i178, 0
  %cmp.not.i.i180 = xor i1 %cmp.i.i176, true
  %brmerge.i.i181 = select i1 %tobool.not.i.i179, i1 true, i1 %cmp.not.i.i180
  br i1 %brmerge.i.i181, label %if.else8.i.i186, label %if.then2.i.i182.audit_set_failure.exit.thread214_crit_edge

if.then2.i.i182.audit_set_failure.exit.thread214_crit_edge: ; preds = %if.then2.i.i182
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_set_failure.exit.thread214

audit_set_failure.exit.thread214:                 ; preds = %if.then2.i.i182.audit_set_failure.exit.thread214_crit_edge, %if.end.i175.audit_set_failure.exit.thread214_crit_edge
  store i32 %s8.8.s8.8.s8.8..i, ptr @audit_failure, align 4
  br label %if.end29.i

if.else8.i.i186:                                  ; preds = %if.then2.i.i182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i178)
  %cmp9.i.i184 = icmp eq i32 %call.i.i178, 0
  br i1 %cmp9.i.i184, label %if.else8.i.i186.audit_receive_msg.exit.thread246_crit_edge, label %audit_set_failure.exit

if.else8.i.i186.audit_receive_msg.exit.thread246_crit_edge: ; preds = %if.else8.i.i186
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread246

audit_set_failure.exit:                           ; preds = %if.else8.i.i186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i178)
  %cmp25.i = icmp slt i32 %call.i.i178, 0
  br i1 %cmp25.i, label %audit_set_failure.exit.audit_receive_msg.exit.thread246_crit_edge, label %audit_set_failure.exit.if.end29.i_crit_edge

audit_set_failure.exit.if.end29.i_crit_edge:      ; preds = %audit_set_failure.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29.i

audit_set_failure.exit.audit_receive_msg.exit.thread246_crit_edge: ; preds = %audit_set_failure.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread246

if.end29.i:                                       ; preds = %audit_set_failure.exit.if.end29.i_crit_edge, %audit_set_failure.exit.thread214, %if.end18.i.if.end29.i_crit_edge
  %and31.i = and i32 %s8.0.s8.0.s8.0..i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.end29.i.if.end81.i_crit_edge, label %if.then33.i

if.end29.i.if.end81.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end81.i

if.then33.i:                                      ; preds = %if.end29.i
  %67 = ptrtoint ptr %s8.12.s8.12.s8.12.pid34.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %s8.12.s8.12.s8.12..i = load i32, ptr %s8.12.s8.12.s8.12.pid34.sroa_idx.i, align 4
  %68 = call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i90 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i90 to ptr
  %task.i91 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %task.i91 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task.i91, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 111
  %72 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %73, i32 0, i32 22, i32 1
  %74 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s8.12.s8.12.s8.12..i)
  %tobool37.not.i = icmp eq i32 %s8.12.s8.12.s8.12..i, 0
  br i1 %tobool37.not.i, label %if.then33.i.if.end42.i_crit_edge, label %land.lhs.true.i92

if.then33.i.if.end42.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42.i

land.lhs.true.i92:                                ; preds = %if.then33.i
  %call38.i = call i32 @pid_vnr(ptr noundef %75) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %s8.12.s8.12.s8.12..i, i32 %call38.i)
  %cmp39.not.i = icmp eq i32 %s8.12.s8.12.s8.12..i, %call38.i
  br i1 %cmp39.not.i, label %land.lhs.true.i92.if.end42.i_crit_edge, label %land.lhs.true.i92.audit_receive_msg.exit.thread246_crit_edge

land.lhs.true.i92.audit_receive_msg.exit.thread246_crit_edge: ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread246

land.lhs.true.i92.if.end42.i_crit_edge:           ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42.i

if.end42.i:                                       ; preds = %land.lhs.true.i92.if.end42.i_crit_edge, %if.then33.i.if.end42.i_crit_edge
  %call.i159 = call i32 @pid_vnr(ptr noundef %75) #18
  %call.i.i.i.i = call ptr @__alloc_skb(i32 noundef 20, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #18
  %tobool3.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool3.not.i.i, label %if.end42.i.audit_replace.exit_crit_edge, label %if.end.i.i160

if.end42.i.audit_replace.exit_crit_edge:          ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_replace.exit

if.end.i.i160:                                    ; preds = %if.end42.i
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 7
  %76 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.i.not.i.i.i.i = icmp eq i32 %77, 0
  br i1 %tobool.i.not.i.i.i.i, label %skb_tailroom.exit.i.i.i, label %if.end.i.i160.out_kfree_skb.i.i_crit_edge

if.end.i.i160.out_kfree_skb.i.i_crit_edge:        ; preds = %if.end.i.i160
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_kfree_skb.i.i

skb_tailroom.exit.i.i.i:                          ; preds = %if.end.i.i160
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 17
  %78 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %end.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %80 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %79 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %81 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i.i)
  %cmp.i.i.i161 = icmp slt i32 %sub.ptr.sub.i.i.i.i, 20
  br i1 %cmp.i.i.i161, label %skb_tailroom.exit.i.i.i.out_kfree_skb.i.i_crit_edge, label %nlmsg_put.exit.i.i, !prof !348

skb_tailroom.exit.i.i.i.out_kfree_skb.i.i_crit_edge: ; preds = %skb_tailroom.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_kfree_skb.i.i

nlmsg_put.exit.i.i:                               ; preds = %skb_tailroom.exit.i.i.i
  %call3.i.i.i = call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1329, i32 noundef 4, i32 noundef 0) #18
  %tobool5.not.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %tobool5.not.i.i, label %nlmsg_put.exit.i.i.out_kfree_skb.i.i_crit_edge, label %if.end.i165

nlmsg_put.exit.i.i.out_kfree_skb.i.i_crit_edge:   ; preds = %nlmsg_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_kfree_skb.i.i

out_kfree_skb.i.i:                                ; preds = %nlmsg_put.exit.i.i.out_kfree_skb.i.i_crit_edge, %skb_tailroom.exit.i.i.i.out_kfree_skb.i.i_crit_edge, %if.end.i.i160.out_kfree_skb.i.i_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #18
  br label %audit_replace.exit

if.end.i165:                                      ; preds = %nlmsg_put.exit.i.i
  %add.ptr.i.i.i162 = getelementptr i8, ptr %call3.i.i.i, i32 16
  %82 = ptrtoint ptr %add.ptr.i.i.i162 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %call.i159, ptr %add.ptr.i.i.i162, align 1
  %83 = call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i.i.i.i.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i163 = add i32 %86, 1
  store volatile i32 %add.i.i.i.i.i163, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !341
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i.i.i164 = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i.i.i164, label %if.end.i165.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i165.rcu_read_lock.exit.i.i_crit_edge:     ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i165
  %call1.i.i.i166 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i166)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i166, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #18
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.i165.rcu_read_lock.exit.i.i_crit_edge
  %87 = load volatile ptr, ptr @auditd_conn, align 4
  %call.i.i167 = call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i167)
  %tobool.not.i.i168 = icmp eq i32 %call.i.i167, 0
  br i1 %tobool.not.i.i168, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i1.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i1.i, label %land.lhs.true.i.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b37.i.i = load i1, ptr @auditd_send_unicast_skb.__warned, align 1
  br i1 %.b37.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i.i169

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7.i.i

if.then.i.i169:                                   ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @auditd_send_unicast_skb.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 695, ptr noundef nonnull @.str.1) #18
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i169, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i.i.do.end7.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge
  %tobool9.not.i.i = icmp eq ptr %87, null
  br i1 %tobool9.not.i.i, label %if.then10.i.i, label %if.end11.i.i

if.then10.i.i:                                    ; preds = %do.end7.i.i
  %call.i38.i.i = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i38.i.i, label %if.then10.i.i.err.thread.i.i_crit_edge, label %land.lhs.true.i41.i.i

if.then10.i.i.err.thread.i.i_crit_edge:           ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err.thread.i.i

land.lhs.true.i41.i.i:                            ; preds = %if.then10.i.i
  %call1.i39.i.i = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39.i.i)
  %tobool.not.i40.i.i = icmp eq i32 %call1.i39.i.i, 0
  br i1 %tobool.not.i40.i.i, label %land.lhs.true.i41.i.i.err.thread.i.i_crit_edge, label %land.lhs.true2.i43.i.i

land.lhs.true.i41.i.i.err.thread.i.i_crit_edge:   ; preds = %land.lhs.true.i41.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err.thread.i.i

land.lhs.true2.i43.i.i:                           ; preds = %land.lhs.true.i41.i.i
  %.b4.i42.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i42.i.i, label %land.lhs.true2.i43.i.i.err.thread.i.i_crit_edge, label %if.then.i44.i.i

land.lhs.true2.i43.i.i.err.thread.i.i_crit_edge:  ; preds = %land.lhs.true2.i43.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err.thread.i.i

if.then.i44.i.i:                                  ; preds = %land.lhs.true2.i43.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #18
  br label %err.thread.i.i

err.thread.i.i:                                   ; preds = %if.then.i44.i.i, %land.lhs.true2.i43.i.i.err.thread.i.i_crit_edge, %land.lhs.true.i41.i.i.err.thread.i.i_crit_edge, %if.then10.i.i.err.thread.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !342
  %88 = call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i.i.i.i45.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i.i.i45.i.i to ptr
  %preempt_count.i.i.i.i46.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %preempt_count.i.i.i.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %preempt_count.i.i.i.i46.i.i, align 4
  %sub.i.i.i.i.i170 = add i32 %91, -1
  store volatile i32 %sub.i.i.i.i.i170, ptr %preempt_count.i.i.i.i46.i.i, align 4
  call void @rcu_read_unlock_strict() #18
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #18
  br label %audit_replace.exit

if.end11.i.i:                                     ; preds = %do.end7.i.i
  %net12.i.i = getelementptr inbounds %struct.auditd_connection, ptr %87, i32 0, i32 2
  %92 = ptrtoint ptr %net12.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %net12.i.i, align 4
  %count.i.i.i = getelementptr inbounds %struct.net, ptr %93, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #18
  %94 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #18, !srcloc !358
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end11.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !348

if.end11.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end11.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %95 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %.not.i.i.i.i.i.i = icmp sgt i32 %95, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.get_net.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !346

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.get_net.exit.i.i_crit_edge:   ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_net.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end11.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end11.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #18
  br label %get_net.exit.i.i

get_net.exit.i.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.get_net.exit.i.i_crit_edge
  %tobool.not.i47.i.i = icmp eq ptr %93, null
  br i1 %tobool.not.i47.i.i, label %get_net.exit.i.i.audit_get_sk.exit.i.i_crit_edge, label %if.end.i.i.i171

get_net.exit.i.i.audit_get_sk.exit.i.i_crit_edge: ; preds = %get_net.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_get_sk.exit.i.i

if.end.i.i.i171:                                  ; preds = %get_net.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %96 = load i32, ptr @audit_net_id, align 4
  %call.i48.i.i = call fastcc ptr @net_generic(ptr noundef nonnull %93, i32 noundef %96) #18
  %97 = ptrtoint ptr %call.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %call.i48.i.i, align 4
  br label %audit_get_sk.exit.i.i

audit_get_sk.exit.i.i:                            ; preds = %if.end.i.i.i171, %get_net.exit.i.i.audit_get_sk.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %98, %if.end.i.i.i171 ], [ null, %get_net.exit.i.i.audit_get_sk.exit.i.i_crit_edge ]
  %portid15.i.i = getelementptr inbounds %struct.auditd_connection, ptr %87, i32 0, i32 1
  %99 = ptrtoint ptr %portid15.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %portid15.i.i, align 4
  %call.i49.i.i = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i49.i.i, label %audit_get_sk.exit.i.i.rcu_read_unlock.exit59.i.i_crit_edge, label %land.lhs.true.i52.i.i

audit_get_sk.exit.i.i.rcu_read_unlock.exit59.i.i_crit_edge: ; preds = %audit_get_sk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit59.i.i

land.lhs.true.i52.i.i:                            ; preds = %audit_get_sk.exit.i.i
  %call1.i50.i.i = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50.i.i)
  %tobool.not.i51.i.i = icmp eq i32 %call1.i50.i.i, 0
  br i1 %tobool.not.i51.i.i, label %land.lhs.true.i52.i.i.rcu_read_unlock.exit59.i.i_crit_edge, label %land.lhs.true2.i54.i.i

land.lhs.true.i52.i.i.rcu_read_unlock.exit59.i.i_crit_edge: ; preds = %land.lhs.true.i52.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit59.i.i

land.lhs.true2.i54.i.i:                           ; preds = %land.lhs.true.i52.i.i
  %.b4.i53.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i53.i.i, label %land.lhs.true2.i54.i.i.rcu_read_unlock.exit59.i.i_crit_edge, label %if.then.i55.i.i

land.lhs.true2.i54.i.i.rcu_read_unlock.exit59.i.i_crit_edge: ; preds = %land.lhs.true2.i54.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit59.i.i

if.then.i55.i.i:                                  ; preds = %land.lhs.true2.i54.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #18
  br label %rcu_read_unlock.exit59.i.i

rcu_read_unlock.exit59.i.i:                       ; preds = %if.then.i55.i.i, %land.lhs.true2.i54.i.i.rcu_read_unlock.exit59.i.i_crit_edge, %land.lhs.true.i52.i.i.rcu_read_unlock.exit59.i.i_crit_edge, %audit_get_sk.exit.i.i.rcu_read_unlock.exit59.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !342
  %101 = call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i.i.i.i56.i.i = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i.i.i56.i.i to ptr
  %preempt_count.i.i.i.i57.i.i = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %preempt_count.i.i.i.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %preempt_count.i.i.i.i57.i.i, align 4
  %sub.i.i.i58.i.i = add i32 %104, -1
  store volatile i32 %sub.i.i.i58.i.i, ptr %preempt_count.i.i.i.i57.i.i, align 4
  call void @rcu_read_unlock_strict() #18
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  %call16.i.i172 = call i32 @netlink_unicast(ptr noundef %retval.0.i.i.i, ptr noundef nonnull %call.i.i.i.i, i32 noundef %100, i32 noundef 0) #18
  %call.i.i.i.i.i.i61.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !344
  call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #18
  %105 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #18, !srcloc !345
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %105, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i63.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %rcu_read_unlock.exit59.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i62.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i62.i.i, label %if.end5.i.i.i.i.i.i.put_net.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !346

if.end5.i.i.i.i.i.i.put_net.exit.i.i_crit_edge:   ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %put_net.exit.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef 3) #18
  br label %put_net.exit.i.i

if.then.i63.i.i:                                  ; preds = %rcu_read_unlock.exit59.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !347
  call void @__put_net(ptr noundef %93) #18
  br label %put_net.exit.i.i

put_net.exit.i.i:                                 ; preds = %if.then.i63.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.put_net.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -111, i32 %call16.i.i172)
  %cmp21.i.i = icmp eq i32 %call16.i.i172, -111
  br i1 %cmp21.i.i, label %if.then22.i.i, label %put_net.exit.i.i.audit_replace.exit_crit_edge

put_net.exit.i.i.audit_replace.exit_crit_edge:    ; preds = %put_net.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_replace.exit

if.then22.i.i:                                    ; preds = %put_net.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call fastcc void @auditd_reset(ptr noundef nonnull %87) #18
  br label %audit_replace.exit

audit_replace.exit:                               ; preds = %if.then22.i.i, %put_net.exit.i.i.audit_replace.exit_crit_edge, %err.thread.i.i, %out_kfree_skb.i.i, %if.end42.i.audit_replace.exit_crit_edge
  %call44.i = call fastcc i32 @auditd_pid_vnr() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end57.i, label %if.then46.i

if.then46.i:                                      ; preds = %audit_replace.exit
  br i1 %tobool37.not.i, label %if.end50.i, label %if.then46.i.audit_receive_msg.exit.thread246.sink.split_crit_edge

if.then46.i.audit_receive_msg.exit.thread246.sink.split_crit_edge: ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread246.sink.split

if.end50.i:                                       ; preds = %if.then46.i
  %call51.i = call i32 @pid_vnr(ptr noundef %75) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call51.i, i32 %call44.i)
  %cmp52.not.i = icmp eq i32 %call51.i, %call44.i
  br i1 %cmp52.not.i, label %if.end50.i.if.else.i_crit_edge, label %if.end50.i.audit_receive_msg.exit.thread246.sink.split_crit_edge

if.end50.i.audit_receive_msg.exit.thread246.sink.split_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread246.sink.split

if.end50.i.if.else.i_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i

if.end57.i:                                       ; preds = %audit_replace.exit
  br i1 %tobool37.not.i, label %if.end57.i.if.else.i_crit_edge, label %if.then59.i

if.end57.i.if.else.i_crit_edge:                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i

if.then59.i:                                      ; preds = %if.end57.i
  %106 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %portid.i, align 4
  %108 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sk.i, align 8
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %109, i32 0, i32 9
  %110 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %skc_net.i.i, align 4
  %tobool.not.i152 = icmp eq ptr %75, null
  %tobool1.not.i = icmp eq ptr %111, null
  %or.cond.i153 = or i1 %tobool.not.i152, %tobool1.not.i
  br i1 %or.cond.i153, label %if.then59.i.auditd_set.exit_crit_edge, label %if.end.i154

if.then59.i.auditd_set.exit_crit_edge:            ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %auditd_set.exit

if.end.i154:                                      ; preds = %if.then59.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %112 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %112, i32 noundef 3520, i32 noundef 20) #24
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i154.auditd_set.exit_crit_edge, label %if.then.i.i155

if.end.i154.auditd_set.exit_crit_edge:            ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #20
  br label %auditd_set.exit

if.then.i.i155:                                   ; preds = %if.end.i154
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %75, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr nonnull %75, i32 1, i32 3, i32 1) #18
  %113 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %75, ptr nonnull %75, i32 1, ptr nonnull elementtype(i32) %75) #18, !srcloc !358
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %113, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i155.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !348

if.then.i.i155.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i155
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i155
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %114 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %114)
  %.not.i.i.i.i.i = icmp sgt i32 %114, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_pid.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !346

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_pid.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_pid.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i155.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i155.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %75, i32 noundef %.sink.i.i.i.i.i) #18
  br label %get_pid.exit.i

get_pid.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_pid.exit.i_crit_edge
  %115 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %75, ptr %call7.i.i.i, align 8
  %portid7.i = getelementptr inbounds %struct.auditd_connection, ptr %call7.i.i.i, i32 0, i32 1
  %116 = ptrtoint ptr %portid7.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %107, ptr %portid7.i, align 4
  %count.i.i = getelementptr inbounds %struct.net, ptr %111, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i78.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #18
  %117 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #18, !srcloc !358
  %asmresult.i.i.i.i.i.i79.i = extractvalue { i32, i32, i32 } %117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i79.i)
  %tobool1.not.i.i.i.i80.i = icmp eq i32 %asmresult.i.i.i.i.i.i79.i, 0
  br i1 %tobool1.not.i.i.i.i80.i, label %get_pid.exit.i.if.end15.sink.split.i.i.i.i85.i_crit_edge, label %if.else.i.i.i.i83.i, !prof !348

get_pid.exit.i.if.end15.sink.split.i.i.i.i85.i_crit_edge: ; preds = %get_pid.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i85.i

if.else.i.i.i.i83.i:                              ; preds = %get_pid.exit.i
  %add.i.i.i.i81.i = add i32 %asmresult.i.i.i.i.i.i79.i, 1
  %118 = or i32 %add.i.i.i.i81.i, %asmresult.i.i.i.i.i.i79.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %118)
  %.not.i.i.i.i82.i = icmp sgt i32 %118, -1
  br i1 %.not.i.i.i.i82.i, label %if.else.i.i.i.i83.i.get_net.exit.i_crit_edge, label %if.else.i.i.i.i83.i.if.end15.sink.split.i.i.i.i85.i_crit_edge, !prof !346

if.else.i.i.i.i83.i.if.end15.sink.split.i.i.i.i85.i_crit_edge: ; preds = %if.else.i.i.i.i83.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i85.i

if.else.i.i.i.i83.i.get_net.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i83.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_net.exit.i

if.end15.sink.split.i.i.i.i85.i:                  ; preds = %if.else.i.i.i.i83.i.if.end15.sink.split.i.i.i.i85.i_crit_edge, %get_pid.exit.i.if.end15.sink.split.i.i.i.i85.i_crit_edge
  %.sink.i.i.i.i84.i = phi i32 [ 2, %get_pid.exit.i.if.end15.sink.split.i.i.i.i85.i_crit_edge ], [ 1, %if.else.i.i.i.i83.i.if.end15.sink.split.i.i.i.i85.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef %.sink.i.i.i.i84.i) #18
  br label %get_net.exit.i

get_net.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i85.i, %if.else.i.i.i.i83.i.get_net.exit.i_crit_edge
  %net9.i = getelementptr inbounds %struct.auditd_connection, ptr %call7.i.i.i, i32 0, i32 2
  %119 = ptrtoint ptr %net9.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %111, ptr %net9.i, align 8
  %call12.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @auditd_conn_lock) #18
  %call.i.i156 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @auditd_conn_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i156)
  %tobool17.not.i = icmp eq i32 %call.i.i156, 0
  br i1 %tobool17.not.i, label %land.lhs.true.i157, label %get_net.exit.i.do.end25.i_crit_edge

get_net.exit.i.do.end25.i_crit_edge:              ; preds = %get_net.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end25.i

land.lhs.true.i157:                               ; preds = %get_net.exit.i
  %call18.i = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %land.lhs.true.i157.do.end25.i_crit_edge, label %land.lhs.true20.i

land.lhs.true.i157.do.end25.i_crit_edge:          ; preds = %land.lhs.true.i157
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end25.i

land.lhs.true20.i:                                ; preds = %land.lhs.true.i157
  %.b77.i = load i1, ptr @auditd_set.__warned, align 1
  br i1 %.b77.i, label %land.lhs.true20.i.do.end25.i_crit_edge, label %if.then22.i158

land.lhs.true20.i.do.end25.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end25.i

if.then22.i158:                                   ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @auditd_set.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 515, ptr noundef nonnull @.str.58) #18
  br label %do.end25.i

do.end25.i:                                       ; preds = %if.then22.i158, %land.lhs.true20.i.do.end25.i_crit_edge, %land.lhs.true.i157.do.end25.i_crit_edge, %get_net.exit.i.do.end25.i_crit_edge
  %120 = load ptr, ptr @auditd_conn, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !360
  store volatile ptr %call7.i.i.i, ptr @auditd_conn, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @auditd_conn_lock, i32 noundef %call12.i) #18
  %tobool65.not.i = icmp eq ptr %120, null
  br i1 %tobool65.not.i, label %do.end25.i.auditd_set.exit_crit_edge, label %if.then66.i

do.end25.i.auditd_set.exit_crit_edge:             ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %auditd_set.exit

if.then66.i:                                      ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #20
  %rcu.i = getelementptr inbounds %struct.auditd_connection, ptr %120, i32 0, i32 3
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @auditd_conn_free) #18
  br label %auditd_set.exit

auditd_set.exit:                                  ; preds = %if.then66.i, %do.end25.i.auditd_set.exit_crit_edge, %if.end.i154.auditd_set.exit_crit_edge, %if.then59.i.auditd_set.exit_crit_edge
  %tobool66.not.i = phi i32 [ 0, %if.then59.i.auditd_set.exit_crit_edge ], [ 0, %if.end.i154.auditd_set.exit_crit_edge ], [ 1, %do.end25.i.auditd_set.exit_crit_edge ], [ 1, %if.then66.i ]
  %tobool70.not.i = phi i1 [ false, %if.then59.i.auditd_set.exit_crit_edge ], [ false, %if.end.i154.auditd_set.exit_crit_edge ], [ true, %do.end25.i.auditd_set.exit_crit_edge ], [ true, %if.then66.i ]
  %retval.0.i = phi i32 [ -22, %if.then59.i.auditd_set.exit_crit_edge ], [ -12, %if.end.i154.auditd_set.exit_crit_edge ], [ 0, %do.end25.i.auditd_set.exit_crit_edge ], [ 0, %if.then66.i ]
  %121 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp63.not.i = icmp eq i32 %121, 0
  br i1 %cmp63.not.i, label %auditd_set.exit.if.end69.i_crit_edge, label %if.then65.i

auditd_set.exit.if.end69.i_crit_edge:             ; preds = %auditd_set.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69.i

if.then65.i:                                      ; preds = %auditd_set.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call68.i = call fastcc i32 @audit_log_config_change(ptr noundef nonnull @.str.41, i32 noundef %s8.12.s8.12.s8.12..i, i32 noundef 0, i32 noundef %tobool66.not.i) #18
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then65.i, %auditd_set.exit.if.end69.i_crit_edge
  br i1 %tobool70.not.i, label %if.end72.i, label %if.end69.i.audit_receive_msg.exit.thread246_crit_edge

if.end69.i.audit_receive_msg.exit.thread246_crit_edge: ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread246

if.end72.i:                                       ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @__wake_up(ptr noundef nonnull @kauditd_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #18
  br label %if.end81.i

if.else.i:                                        ; preds = %if.end57.i.if.else.i_crit_edge, %if.end50.i.if.else.i_crit_edge
  %122 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp73.not.i = icmp eq i32 %122, 0
  br i1 %cmp73.not.i, label %if.else.i.if.end77.i_crit_edge, label %if.then75.i

if.else.i.if.end77.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end77.i

if.then75.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %call76.i = call fastcc i32 @audit_log_config_change(ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef %call44.i, i32 noundef 1) #18
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then75.i, %if.else.i.if.end77.i_crit_edge
  call fastcc void @auditd_reset(ptr noundef null) #18
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.end77.i, %if.end72.i, %if.end29.i.if.end81.i_crit_edge
  %and83.i = and i32 %s8.0.s8.0.s8.0..i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  br i1 %tobool84.not.i, label %if.end81.i.if.end92.i_crit_edge, label %if.then85.i

if.end81.i.if.end92.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end92.i

if.then85.i:                                      ; preds = %if.end81.i
  %123 = ptrtoint ptr %s8.16.s8.16.s8.16.rate_limit86.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %s8.16.s8.16.s8.16..i = load i32, ptr %s8.16.s8.16.s8.16.rate_limit86.sroa_idx.i, align 4
  %124 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp1.not.i.i139 = icmp eq i32 %124, 0
  br i1 %cmp1.not.i.i139, label %if.then85.i.audit_set_rate_limit.exit.thread220_crit_edge, label %if.then2.i.i146

if.then85.i.audit_set_rate_limit.exit.thread220_crit_edge: ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_set_rate_limit.exit.thread220

if.then2.i.i146:                                  ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %124)
  %cmp.i.i140 = icmp ne i32 %124, 2
  %..i.i141 = zext i1 %cmp.i.i140 to i32
  %125 = load i32, ptr @audit_rate_limit, align 4
  %call.i.i142 = call fastcc i32 @audit_log_config_change(ptr noundef nonnull @.str.63, i32 noundef %s8.16.s8.16.s8.16..i, i32 noundef %125, i32 noundef %..i.i141) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i142)
  %tobool.not.i.i143 = icmp ne i32 %call.i.i142, 0
  %cmp.not.i.i144 = xor i1 %cmp.i.i140, true
  %brmerge.i.i145 = select i1 %tobool.not.i.i143, i1 true, i1 %cmp.not.i.i144
  br i1 %brmerge.i.i145, label %if.else8.i.i150, label %if.then2.i.i146.audit_set_rate_limit.exit.thread220_crit_edge

if.then2.i.i146.audit_set_rate_limit.exit.thread220_crit_edge: ; preds = %if.then2.i.i146
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_set_rate_limit.exit.thread220

audit_set_rate_limit.exit.thread220:              ; preds = %if.then2.i.i146.audit_set_rate_limit.exit.thread220_crit_edge, %if.then85.i.audit_set_rate_limit.exit.thread220_crit_edge
  store i32 %s8.16.s8.16.s8.16..i, ptr @audit_rate_limit, align 4
  br label %if.end92.i

if.else8.i.i150:                                  ; preds = %if.then2.i.i146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i142)
  %cmp9.i.i148 = icmp eq i32 %call.i.i142, 0
  br i1 %cmp9.i.i148, label %if.else8.i.i150.audit_receive_msg.exit.thread246_crit_edge, label %audit_set_rate_limit.exit

if.else8.i.i150.audit_receive_msg.exit.thread246_crit_edge: ; preds = %if.else8.i.i150
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread246

audit_set_rate_limit.exit:                        ; preds = %if.else8.i.i150
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i142)
  %cmp88.i = icmp slt i32 %call.i.i142, 0
  br i1 %cmp88.i, label %audit_set_rate_limit.exit.audit_receive_msg.exit.thread246_crit_edge, label %audit_set_rate_limit.exit.if.end92.i_crit_edge

audit_set_rate_limit.exit.if.end92.i_crit_edge:   ; preds = %audit_set_rate_limit.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end92.i

audit_set_rate_limit.exit.audit_receive_msg.exit.thread246_crit_edge: ; preds = %audit_set_rate_limit.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread246

if.end92.i:                                       ; preds = %audit_set_rate_limit.exit.if.end92.i_crit_edge, %audit_set_rate_limit.exit.thread220, %if.end81.i.if.end92.i_crit_edge
  %and94.i = and i32 %s8.0.s8.0.s8.0..i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i)
  %tobool95.not.i = icmp eq i32 %and94.i, 0
  br i1 %tobool95.not.i, label %if.end92.i.if.end103.i_crit_edge, label %if.then96.i

if.end92.i.if.end103.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end103.i

if.then96.i:                                      ; preds = %if.end92.i
  %126 = ptrtoint ptr %s8.20.s8.20.s8.20.backlog_limit97.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %s8.20.s8.20.s8.20..i = load i32, ptr %s8.20.s8.20.s8.20.backlog_limit97.sroa_idx.i, align 4
  %127 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp1.not.i.i126 = icmp eq i32 %127, 0
  br i1 %cmp1.not.i.i126, label %if.then96.i.audit_set_backlog_limit.exit.thread226_crit_edge, label %if.then2.i.i133

if.then96.i.audit_set_backlog_limit.exit.thread226_crit_edge: ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_set_backlog_limit.exit.thread226

if.then2.i.i133:                                  ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %127)
  %cmp.i.i127 = icmp ne i32 %127, 2
  %..i.i128 = zext i1 %cmp.i.i127 to i32
  %128 = load i32, ptr @audit_backlog_limit, align 4
  %call.i.i129 = call fastcc i32 @audit_log_config_change(ptr noundef nonnull @.str.64, i32 noundef %s8.20.s8.20.s8.20..i, i32 noundef %128, i32 noundef %..i.i128) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i129)
  %tobool.not.i.i130 = icmp ne i32 %call.i.i129, 0
  %cmp.not.i.i131 = xor i1 %cmp.i.i127, true
  %brmerge.i.i132 = select i1 %tobool.not.i.i130, i1 true, i1 %cmp.not.i.i131
  br i1 %brmerge.i.i132, label %if.else8.i.i137, label %if.then2.i.i133.audit_set_backlog_limit.exit.thread226_crit_edge

if.then2.i.i133.audit_set_backlog_limit.exit.thread226_crit_edge: ; preds = %if.then2.i.i133
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_set_backlog_limit.exit.thread226

audit_set_backlog_limit.exit.thread226:           ; preds = %if.then2.i.i133.audit_set_backlog_limit.exit.thread226_crit_edge, %if.then96.i.audit_set_backlog_limit.exit.thread226_crit_edge
  store i32 %s8.20.s8.20.s8.20..i, ptr @audit_backlog_limit, align 4
  br label %if.end103.i

if.else8.i.i137:                                  ; preds = %if.then2.i.i133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i129)
  %cmp9.i.i135 = icmp eq i32 %call.i.i129, 0
  br i1 %cmp9.i.i135, label %if.else8.i.i137.audit_receive_msg.exit.thread246_crit_edge, label %audit_set_backlog_limit.exit

if.else8.i.i137.audit_receive_msg.exit.thread246_crit_edge: ; preds = %if.else8.i.i137
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread246

audit_set_backlog_limit.exit:                     ; preds = %if.else8.i.i137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i129)
  %cmp99.i = icmp slt i32 %call.i.i129, 0
  br i1 %cmp99.i, label %audit_set_backlog_limit.exit.audit_receive_msg.exit.thread246_crit_edge, label %audit_set_backlog_limit.exit.if.end103.i_crit_edge

audit_set_backlog_limit.exit.if.end103.i_crit_edge: ; preds = %audit_set_backlog_limit.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end103.i

audit_set_backlog_limit.exit.audit_receive_msg.exit.thread246_crit_edge: ; preds = %audit_set_backlog_limit.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread246

if.end103.i:                                      ; preds = %audit_set_backlog_limit.exit.if.end103.i_crit_edge, %audit_set_backlog_limit.exit.thread226, %if.end92.i.if.end103.i_crit_edge
  %and105.i = and i32 %s8.0.s8.0.s8.0..i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i)
  %tobool106.not.i = icmp eq i32 %and105.i, 0
  br i1 %tobool106.not.i, label %if.end103.i.if.end123.i_crit_edge, label %if.then107.i

if.end103.i.if.end123.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end123.i

if.then107.i:                                     ; preds = %if.end103.i
  %129 = ptrtoint ptr %nlh.0253 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %nlh.0253, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %130)
  %cmp108.i = icmp ult i32 %130, 44
  br i1 %cmp108.i, label %if.then107.i.audit_receive_msg.exit.thread246_crit_edge, label %if.end111.i

if.then107.i.audit_receive_msg.exit.thread246_crit_edge: ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread246

if.end111.i:                                      ; preds = %if.then107.i
  %131 = ptrtoint ptr %s8.36.s8.36.s8.36.backlog_wait_time112.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %s8.36.s8.36.s8.36..i = load i32, ptr %s8.36.s8.36.s8.36.backlog_wait_time112.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000, i32 %s8.36.s8.36.s8.36..i)
  %cmp113.i = icmp ugt i32 %s8.36.s8.36.s8.36..i, 60000
  br i1 %cmp113.i, label %if.end111.i.audit_receive_msg.exit.thread246_crit_edge, label %if.end116.i

if.end111.i.audit_receive_msg.exit.thread246_crit_edge: ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread246

if.end116.i:                                      ; preds = %if.end111.i
  %132 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp1.not.i.i = icmp eq i32 %132, 0
  br i1 %cmp1.not.i.i, label %if.end116.i.audit_set_backlog_wait_time.exit.thread232_crit_edge, label %if.then2.i.i

if.end116.i.audit_set_backlog_wait_time.exit.thread232_crit_edge: ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_set_backlog_wait_time.exit.thread232

if.then2.i.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %132)
  %cmp.i.i122 = icmp ne i32 %132, 2
  %..i.i = zext i1 %cmp.i.i122 to i32
  %133 = load i32, ptr @audit_backlog_wait_time, align 4
  %call.i.i123 = call fastcc i32 @audit_log_config_change(ptr noundef nonnull @.str.65, i32 noundef %s8.36.s8.36.s8.36..i, i32 noundef %133, i32 noundef %..i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i123)
  %tobool.not.i.i124 = icmp ne i32 %call.i.i123, 0
  %cmp.not.i.i125 = xor i1 %cmp.i.i122, true
  %brmerge.i.i = select i1 %tobool.not.i.i124, i1 true, i1 %cmp.not.i.i125
  br i1 %brmerge.i.i, label %if.else8.i.i, label %if.then2.i.i.audit_set_backlog_wait_time.exit.thread232_crit_edge

if.then2.i.i.audit_set_backlog_wait_time.exit.thread232_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_set_backlog_wait_time.exit.thread232

audit_set_backlog_wait_time.exit.thread232:       ; preds = %if.then2.i.i.audit_set_backlog_wait_time.exit.thread232_crit_edge, %if.end116.i.audit_set_backlog_wait_time.exit.thread232_crit_edge
  store i32 %s8.36.s8.36.s8.36..i, ptr @audit_backlog_wait_time, align 4
  br label %if.end123.i

if.else8.i.i:                                     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i123)
  %cmp9.i.i = icmp eq i32 %call.i.i123, 0
  br i1 %cmp9.i.i, label %if.else8.i.i.audit_receive_msg.exit.thread246_crit_edge, label %audit_set_backlog_wait_time.exit

if.else8.i.i.audit_receive_msg.exit.thread246_crit_edge: ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread246

audit_set_backlog_wait_time.exit:                 ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i123)
  %cmp119.i = icmp slt i32 %call.i.i123, 0
  br i1 %cmp119.i, label %audit_set_backlog_wait_time.exit.audit_receive_msg.exit.thread246_crit_edge, label %audit_set_backlog_wait_time.exit.if.end123.i_crit_edge

audit_set_backlog_wait_time.exit.if.end123.i_crit_edge: ; preds = %audit_set_backlog_wait_time.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end123.i

audit_set_backlog_wait_time.exit.audit_receive_msg.exit.thread246_crit_edge: ; preds = %audit_set_backlog_wait_time.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread246

if.end123.i:                                      ; preds = %audit_set_backlog_wait_time.exit.if.end123.i_crit_edge, %audit_set_backlog_wait_time.exit.thread232, %if.end103.i.if.end123.i_crit_edge
  %134 = zext i32 %s8.0.s8.0.s8.0..i to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %s8.0.s8.0.s8.0..i, label %cleanup141.i [
    i32 64, label %if.then127.i
    i32 128, label %if.then136.i
  ]

if.then127.i:                                     ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i524.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @audit_lost, i32 noundef 4) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !361
  call void @llvm.prefetch.p0(ptr nonnull @audit_lost, i32 1, i32 3, i32 1) #18
  %135 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @audit_lost) #18, !srcloc !362
  %asmresult.i.i.i = extractvalue { i32, i32 } %135, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !363
  %call130.i = call fastcc i32 @audit_log_config_change(ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef %asmresult.i.i.i, i32 noundef 1) #18
  br label %audit_receive_msg.exit

if.then136.i:                                     ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i525.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @audit_backlog_wait_time_actual, i32 noundef 4) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !361
  call void @llvm.prefetch.p0(ptr nonnull @audit_backlog_wait_time_actual, i32 1, i32 3, i32 1) #18
  %136 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @audit_backlog_wait_time_actual) #18, !srcloc !362
  %asmresult.i.i526.i = extractvalue { i32, i32 } %136, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !363
  %call138.i = call fastcc i32 @audit_log_config_change(ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef %asmresult.i.i526.i, i32 noundef 1) #18
  br label %audit_receive_msg.exit

cleanup141.i:                                     ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %s8.i) #18
  br label %audit_receive_msg.exit.thread241

sw.bb143.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %137 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data.i, align 4
  %nlmsg_seq.i.i = getelementptr inbounds %struct.nlmsghdr, ptr %138, i32 0, i32 3
  %139 = ptrtoint ptr %nlmsg_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %nlmsg_seq.i.i, align 4
  call fastcc void @audit_send_reply(ptr noundef %skb, i32 noundef %140, i32 noundef 1019, ptr noundef nonnull @af, i32 noundef 16) #18
  br label %audit_receive_msg.exit.thread241

sw.bb148.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i.i)
  %cmp149.i = icmp ult i32 %sub.i.i, 16
  br i1 %cmp149.i, label %sw.bb148.i.audit_receive_msg.exit.thread_crit_edge, label %if.end152.i

sw.bb148.i.audit_receive_msg.exit.thread_crit_edge: ; preds = %sw.bb148.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread

if.end152.i:                                      ; preds = %sw.bb148.i
  %mask.i = getelementptr i8, ptr %nlh.0253, i32 20
  %141 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %mask.i, align 4
  %features.i = getelementptr i8, ptr %nlh.0253, i32 24
  %and1.i = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.end152.i.for.inc.i_crit_edge, label %if.end.i118

if.end152.i.for.inc.i_crit_edge:                  ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.end.i118:                                      ; preds = %if.end152.i
  %143 = load i32, ptr getelementptr inbounds (%struct.audit_features, ptr @af, i32 0, i32 2), align 4
  %and2.i = and i32 %143, 1
  %144 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %features.i, align 4
  %and3.i = and i32 %145, 1
  %146 = load i32, ptr getelementptr inbounds (%struct.audit_features, ptr @af, i32 0, i32 3), align 4
  %and5.i = and i32 %146, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %and2.i)
  %cmp7.not.i = icmp eq i32 %and3.i, %and2.i
  %or.cond.i117 = select i1 %tobool6.not.i, i1 true, i1 %cmp7.not.i
  br i1 %or.cond.i117, label %if.end.i118.for.inc.i_crit_edge, label %if.end.i118.if.then8.i_crit_edge

if.end.i118.if.then8.i_crit_edge:                 ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8.i

if.end.i118.for.inc.i_crit_edge:                  ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.then8.i:                                       ; preds = %if.end.1.i.if.then8.i_crit_edge, %if.end.i118.if.then8.i_crit_edge
  %i.0103.lcssa.i = phi i32 [ 0, %if.end.i118.if.then8.i_crit_edge ], [ 1, %if.end.1.i.if.then8.i_crit_edge ]
  %and2.lcssa.i = phi i32 [ %and2.i, %if.end.i118.if.then8.i_crit_edge ], [ %and2.1.i, %if.end.1.i.if.then8.i_crit_edge ]
  %and3.lcssa.i = phi i32 [ %and3.i, %if.end.i118.if.then8.i_crit_edge ], [ %and3.1.i, %if.end.1.i.if.then8.i_crit_edge ]
  %.lcssa.i = phi i32 [ %146, %if.end.i118.if.then8.i_crit_edge ], [ %157, %if.end.1.i.if.then8.i_crit_edge ]
  %lock.le.i = getelementptr i8, ptr %nlh.0253, i32 28
  %147 = ptrtoint ptr %lock.le.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %lock.le.i, align 4
  %or.le.i = or i32 %148, %.lcssa.i
  %149 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp.i.i119 = icmp eq i32 %149, 0
  br i1 %cmp.i.i119, label %if.then8.i.audit_receive_msg.exit.thread_crit_edge, label %if.end.i.i

if.then8.i.audit_receive_msg.exit.thread_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread

if.end.i.i:                                       ; preds = %if.then8.i
  %call1.i.i = call ptr @audit_log_start(ptr noundef null, i32 noundef 3264, i32 noundef 1328) #18
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.audit_receive_msg.exit.thread_crit_edge, label %if.end3.i.i

if.end.i.i.audit_receive_msg.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @audit_log_task_info(ptr noundef nonnull %call1.i.i) #18
  %arrayidx.i.i120 = getelementptr [2 x ptr], ptr @audit_feature_names, i32 0, i32 %i.0103.lcssa.i
  %150 = ptrtoint ptr %arrayidx.i.i120 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx.i.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.lcssa.i)
  %tobool4.i.i = icmp ne i32 %and2.lcssa.i, 0
  %lnot.ext.i.i = zext i1 %tobool4.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.lcssa.i)
  %tobool6.i.i = icmp ne i32 %and3.lcssa.i, 0
  %lnot.ext10.i.i = zext i1 %tobool6.i.i to i32
  %152 = lshr i32 %or.le.i, %i.0103.lcssa.i
  %153 = and i32 %152, 1
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1.i.i, ptr noundef nonnull @.str.66, ptr noundef %151, i32 noundef %lnot.ext.i.i, i32 noundef %lnot.ext10.i.i, i32 noundef 1, i32 noundef %153, i32 noundef 0) #18
  call void @audit_log_end(ptr noundef nonnull %call1.i.i) #18
  br label %audit_receive_msg.exit.thread

for.inc.i:                                        ; preds = %if.end.i118.for.inc.i_crit_edge, %if.end152.i.for.inc.i_crit_edge
  %and1.1.i = and i32 %142, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.1.i)
  %tobool.not.1.i = icmp eq i32 %and1.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %154 = load i32, ptr getelementptr inbounds (%struct.audit_features, ptr @af, i32 0, i32 2), align 4
  %and2.1.i = and i32 %154, 2
  %155 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %features.i, align 4
  %and3.1.i = and i32 %156, 2
  %157 = load i32, ptr getelementptr inbounds (%struct.audit_features, ptr @af, i32 0, i32 3), align 4
  %and5.1.i = and i32 %157, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.1.i)
  %tobool6.not.1.i = icmp eq i32 %and5.1.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.1.i, i32 %and2.1.i)
  %cmp7.not.1.i = icmp eq i32 %and3.1.i, %and2.1.i
  %or.cond.1.i = select i1 %tobool6.not.1.i, i1 true, i1 %cmp7.not.1.i
  br i1 %or.cond.1.i, label %if.end.1.i.for.inc.1.i_crit_edge, label %if.end.1.i.if.then8.i_crit_edge

if.end.1.i.if.then8.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8.i

if.end.1.i.for.inc.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %lock33.i = getelementptr i8, ptr %nlh.0253, i32 28
  br i1 %tobool.not.i, label %for.inc.1.i.cleanup45.i_crit_edge, label %if.end28.i

for.inc.1.i.cleanup45.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup45.i

if.end28.i:                                       ; preds = %for.inc.1.i
  %158 = load i32, ptr getelementptr inbounds (%struct.audit_features, ptr @af, i32 0, i32 2), align 4
  %and29.i = and i32 %158, 1
  %159 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %features.i, align 4
  %and31.i121 = and i32 %160, 1
  %161 = load i32, ptr getelementptr inbounds (%struct.audit_features, ptr @af, i32 0, i32 3), align 4
  %162 = ptrtoint ptr %lock33.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %lock33.i, align 4
  %or34.i = or i32 %163, %161
  %and35.i = and i32 %or34.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and31.i121, i32 %and29.i)
  %cmp36.not.i = icmp eq i32 %and31.i121, %and29.i
  br i1 %cmp36.not.i, label %if.end28.i.if.end38.i_crit_edge, label %if.then37.i

if.end28.i.if.end38.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38.i

if.then37.i:                                      ; preds = %if.end28.i
  %164 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %cmp.i85.i = icmp eq i32 %164, 0
  br i1 %cmp.i85.i, label %if.then37.i.if.end38.i_crit_edge, label %if.end.i88.i

if.then37.i.if.end38.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38.i

if.end.i88.i:                                     ; preds = %if.then37.i
  %call1.i86.i = call ptr @audit_log_start(ptr noundef null, i32 noundef 3264, i32 noundef 1328) #18
  %tobool.not.i87.i = icmp eq ptr %call1.i86.i, null
  br i1 %tobool.not.i87.i, label %if.end.i88.i.if.end38.i_crit_edge, label %if.end3.i98.i

if.end.i88.i.if.end38.i_crit_edge:                ; preds = %if.end.i88.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38.i

if.end3.i98.i:                                    ; preds = %if.end.i88.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @audit_log_task_info(ptr noundef nonnull %call1.i86.i) #18
  %165 = and i32 %161, 1
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1.i86.i, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef %and29.i, i32 noundef %and31.i121, i32 noundef %165, i32 noundef %and35.i, i32 noundef 1) #18
  call void @audit_log_end(ptr noundef nonnull %call1.i86.i) #18
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end3.i98.i, %if.end.i88.i.if.end38.i_crit_edge, %if.then37.i.if.end38.i_crit_edge, %if.end28.i.if.end38.i_crit_edge
  %166 = load i32, ptr getelementptr inbounds (%struct.audit_features, ptr @af, i32 0, i32 2), align 4
  %and42.i = and i32 %166, -2
  %storemerge.i = or i32 %and42.i, %and31.i121
  store i32 %storemerge.i, ptr getelementptr inbounds (%struct.audit_features, ptr @af, i32 0, i32 2), align 4
  %167 = load i32, ptr getelementptr inbounds (%struct.audit_features, ptr @af, i32 0, i32 3), align 4
  %or44.i = or i32 %167, %and35.i
  store i32 %or44.i, ptr getelementptr inbounds (%struct.audit_features, ptr @af, i32 0, i32 3), align 4
  br label %cleanup45.i

cleanup45.i:                                      ; preds = %if.end38.i, %for.inc.1.i.cleanup45.i_crit_edge
  %168 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %mask.i, align 4
  %and25.1.i = and i32 %169, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.1.i)
  %tobool26.not.1.i = icmp eq i32 %and25.1.i, 0
  br i1 %tobool26.not.1.i, label %cleanup45.i.audit_receive_msg.exit.thread241_crit_edge, label %if.end28.1.i

cleanup45.i.audit_receive_msg.exit.thread241_crit_edge: ; preds = %cleanup45.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread241

if.end28.1.i:                                     ; preds = %cleanup45.i
  %170 = load i32, ptr getelementptr inbounds (%struct.audit_features, ptr @af, i32 0, i32 2), align 4
  %and29.1.i = and i32 %170, 2
  %171 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %features.i, align 4
  %and31.1.i = and i32 %172, 2
  %173 = load i32, ptr getelementptr inbounds (%struct.audit_features, ptr @af, i32 0, i32 3), align 4
  %174 = ptrtoint ptr %lock33.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %lock33.i, align 4
  %or34.1.i = or i32 %175, %173
  %and35.1.i = and i32 %or34.1.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and31.1.i, i32 %and29.1.i)
  %cmp36.not.1.i = icmp eq i32 %and31.1.i, %and29.1.i
  br i1 %cmp36.not.1.i, label %if.end28.1.i.if.end38.1.i_crit_edge, label %if.then37.1.i

if.end28.1.i.if.end38.1.i_crit_edge:              ; preds = %if.end28.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38.1.i

if.then37.1.i:                                    ; preds = %if.end28.1.i
  %176 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp.i85.1.i = icmp eq i32 %176, 0
  br i1 %cmp.i85.1.i, label %if.then37.1.i.if.end38.1.i_crit_edge, label %if.end.i88.1.i

if.then37.1.i.if.end38.1.i_crit_edge:             ; preds = %if.then37.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38.1.i

if.end.i88.1.i:                                   ; preds = %if.then37.1.i
  %call1.i86.1.i = call ptr @audit_log_start(ptr noundef null, i32 noundef 3264, i32 noundef 1328) #18
  %tobool.not.i87.1.i = icmp eq ptr %call1.i86.1.i, null
  br i1 %tobool.not.i87.1.i, label %if.end.i88.1.i.if.end38.1.i_crit_edge, label %if.end3.i98.1.i

if.end.i88.1.i.if.end38.1.i_crit_edge:            ; preds = %if.end.i88.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38.1.i

if.end3.i98.1.i:                                  ; preds = %if.end.i88.1.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @audit_log_task_info(ptr noundef nonnull %call1.i86.1.i) #18
  %and29.1.lobit.i = lshr exact i32 %and29.1.i, 1
  %and31.1.lobit.i = lshr exact i32 %and31.1.i, 1
  %177 = lshr i32 %173, 1
  %178 = and i32 %177, 1
  %and35.1.lobit.i = lshr exact i32 %and35.1.i, 1
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1.i86.1.i, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.68, i32 noundef %and29.1.lobit.i, i32 noundef %and31.1.lobit.i, i32 noundef %178, i32 noundef %and35.1.lobit.i, i32 noundef 1) #18
  call void @audit_log_end(ptr noundef nonnull %call1.i86.1.i) #18
  br label %if.end38.1.i

if.end38.1.i:                                     ; preds = %if.end3.i98.1.i, %if.end.i88.1.i.if.end38.1.i_crit_edge, %if.then37.1.i.if.end38.1.i_crit_edge, %if.end28.1.i.if.end38.1.i_crit_edge
  %179 = load i32, ptr getelementptr inbounds (%struct.audit_features, ptr @af, i32 0, i32 2), align 4
  %and42.1.i = and i32 %179, -3
  %storemerge.1.i = or i32 %and42.1.i, %and31.1.i
  store i32 %storemerge.1.i, ptr getelementptr inbounds (%struct.audit_features, ptr @af, i32 0, i32 2), align 4
  %180 = load i32, ptr getelementptr inbounds (%struct.audit_features, ptr @af, i32 0, i32 3), align 4
  %or44.1.i = or i32 %180, %and35.1.i
  store i32 %or44.1.i, ptr getelementptr inbounds (%struct.audit_features, ptr @af, i32 0, i32 3), align 4
  br label %audit_receive_msg.exit.thread241

sw.bb159.i:                                       ; preds = %sw.caserange167.i.sw.bb159.i_crit_edge, %if.end.i.sw.bb159.i_crit_edge
  %181 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool160.not.i = icmp ne i32 %181, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1107, i16 %14)
  %cmp163.not.i = icmp eq i16 %14, 1107
  %or.cond520.i = or i1 %cmp163.not.i, %tobool160.not.i
  br i1 %or.cond520.i, label %if.end166.i, label %sw.bb159.i.audit_receive_msg.exit.thread241_crit_edge

sw.bb159.i.audit_receive_msg.exit.thread241_crit_edge: ; preds = %sw.bb159.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread241

if.end166.i:                                      ; preds = %sw.bb159.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i)
  %cmp169.i = icmp slt i32 %sub.i.i, 2
  br i1 %cmp169.i, label %if.end166.i.audit_receive_msg.exit.thread_crit_edge, label %if.end172.i

if.end166.i.audit_receive_msg.exit.thread_crit_edge: ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread

sw.caserange167.i:                                ; preds = %if.end.i
  %182 = add nsw i32 %conv.i, -1100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %182)
  %inbounds168.i = icmp ult i32 %182, 100
  %183 = add nsw i32 %conv.i, -2100
  call void @__sanitizer_cov_trace_const_cmp4(i32 900, i32 %183)
  %inbounds.i = icmp ult i32 %183, 900
  %or.cond.i = or i1 %inbounds168.i, %inbounds.i
  br i1 %or.cond.i, label %sw.caserange167.i.sw.bb159.i_crit_edge, label %sw.caserange167.i.audit_receive_msg.exit.thread_crit_edge

sw.caserange167.i.audit_receive_msg.exit.thread_crit_edge: ; preds = %sw.caserange167.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread

sw.caserange167.i.sw.bb159.i_crit_edge:           ; preds = %sw.caserange167.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb159.i

if.end172.i:                                      ; preds = %if.end166.i
  %call174.i = call i32 @audit_filter(i32 noundef %conv.i, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call174.i)
  %cmp175.i = icmp eq i32 %call174.i, 1
  br i1 %cmp175.i, label %if.then177.i, label %if.end172.i.sw.epilog.i_crit_edge

if.end172.i.sw.epilog.i_crit_edge:                ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i

if.then177.i:                                     ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1124, i16 %14)
  %cmp179.i = icmp eq i16 %14, 1124
  br i1 %cmp179.i, label %if.then181.i, label %if.then190.i

if.then181.i:                                     ; preds = %if.then177.i
  %call182.i = call i32 @tty_audit_push() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182.i)
  %tobool183.not.i = icmp eq i32 %call182.i, 0
  br i1 %tobool183.not.i, label %if.else191.i, label %if.then181.i.sw.epilog.i_crit_edge

if.then181.i.sw.epilog.i_crit_edge:               ; preds = %if.then181.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i

if.then190.i:                                     ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #20
  call fastcc void @audit_log_common_recv_msg(ptr noundef nonnull %ab.i, i16 noundef zeroext %14) #18
  %sub.i = add i32 %31, -17
  %arrayidx.i = getelementptr i8, ptr %add.ptr.i.i, i32 %sub.i
  %184 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 0, ptr %arrayidx.i, align 1
  %185 = ptrtoint ptr %ab.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %ab.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %186, ptr noundef nonnull @.str.44, i32 noundef 8560, ptr noundef %add.ptr.i.i) #18
  br label %if.end202.i

if.else191.i:                                     ; preds = %if.then181.i
  call fastcc void @audit_log_common_recv_msg(ptr noundef nonnull %ab.i, i16 noundef zeroext 1124) #18
  %187 = ptrtoint ptr %ab.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %ab.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %188, ptr noundef nonnull @.str.45) #18
  %sub195.i = add i32 %31, -17
  %arrayidx196.i = getelementptr i8, ptr %add.ptr.i.i, i32 %sub195.i
  %189 = ptrtoint ptr %arrayidx196.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx196.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %cmp198.i = icmp eq i8 %190, 0
  %data_len.0.i = select i1 %cmp198.i, i32 %sub195.i, i32 %sub.i.i
  %add.ptr.i.i114 = getelementptr i8, ptr %add.ptr.i.i, i32 %data_len.0.i
  %cmp16.i.i = icmp ugt ptr %add.ptr.i.i114, %add.ptr.i.i
  br i1 %cmp16.i.i, label %for.body.i.preheader.i, label %if.else191.i.if.else.i115_crit_edge

if.else191.i.if.else.i115_crit_edge:              ; preds = %if.else191.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i115

for.body.i.preheader.i:                           ; preds = %if.else191.i
  %191 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %192)
  %cmp1.i7.i = icmp eq i8 %192, 34
  %193 = add i8 %192, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %193)
  %194 = icmp ult i8 %193, -94
  %195 = or i1 %cmp1.i7.i, %194
  br i1 %195, label %for.body.i.preheader.i.if.then.i_crit_edge, label %for.body.i.preheader.i.for.cond.i.i_crit_edge

for.body.i.preheader.i.for.cond.i.i_crit_edge:    ; preds = %for.body.i.preheader.i
  br label %for.cond.i.i

for.body.i.preheader.i.if.then.i_crit_edge:       ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.preheader.i.for.cond.i.i_crit_edge
  %p.017.i8.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %add.ptr.i.i, %for.body.i.preheader.i.for.cond.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %p.017.i8.i, i32 1
  %exitcond.not.i.i = icmp eq ptr %incdec.ptr.i.i, %add.ptr.i.i114
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.else.i115_crit_edge, label %for.body.i.i

for.cond.i.i.if.else.i115_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i115

for.body.i.i:                                     ; preds = %for.cond.i.i
  %196 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %incdec.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %197)
  %cmp1.i.i = icmp eq i8 %197, 34
  %198 = add i8 %197, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %198)
  %199 = icmp ult i8 %198, -94
  %200 = or i1 %cmp1.i.i, %199
  br i1 %200, label %audit_string_contains_control.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.i

audit_string_contains_control.exit.i:             ; preds = %for.body.i.i
  %cmp.i.le.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i114
  br i1 %cmp.i.le.i, label %audit_string_contains_control.exit.i.if.then.i_crit_edge, label %audit_string_contains_control.exit.i.if.else.i115_crit_edge

audit_string_contains_control.exit.i.if.else.i115_crit_edge: ; preds = %audit_string_contains_control.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i115

audit_string_contains_control.exit.i.if.then.i_crit_edge: ; preds = %audit_string_contains_control.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

if.then.i:                                        ; preds = %audit_string_contains_control.exit.i.if.then.i_crit_edge, %for.body.i.preheader.i.if.then.i_crit_edge
  call void @audit_log_n_hex(ptr noundef %188, ptr noundef %add.ptr.i.i, i32 noundef %data_len.0.i) #18
  br label %if.end202.i

if.else.i115:                                     ; preds = %audit_string_contains_control.exit.i.if.else.i115_crit_edge, %for.cond.i.i.if.else.i115_crit_edge, %if.else191.i.if.else.i115_crit_edge
  call void @audit_log_n_string(ptr noundef %188, ptr noundef %add.ptr.i.i, i32 noundef %data_len.0.i) #18
  br label %if.end202.i

if.end202.i:                                      ; preds = %if.else.i115, %if.then.i, %if.then190.i
  %201 = ptrtoint ptr %ab.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %ab.i, align 4
  call void @audit_log_end(ptr noundef %202) #18
  br label %audit_receive_msg.exit.thread241

sw.bb207.i:                                       ; preds = %if.end.i.sw.bb207.i_crit_edge, %if.end.i.sw.bb207.i_crit_edge290
  call void @__sanitizer_cov_trace_const_cmp4(i32 1040, i32 %sub.i.i)
  %cmp208.i = icmp ult i32 %sub.i.i, 1040
  br i1 %cmp208.i, label %sw.bb207.i.audit_receive_msg.exit.thread_crit_edge, label %if.end211.i

sw.bb207.i.audit_receive_msg.exit.thread_crit_edge: ; preds = %sw.bb207.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread

if.end211.i:                                      ; preds = %sw.bb207.i
  %203 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %203)
  %cmp212.i = icmp eq i32 %203, 2
  br i1 %cmp212.i, label %if.then214.i, label %if.end220.i

if.then214.i:                                     ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #20
  call fastcc void @audit_log_common_recv_msg(ptr noundef nonnull %ab.i, i16 noundef zeroext 1305) #18
  %204 = ptrtoint ptr %ab.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ab.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1011, i16 %14)
  %cmp217.i = icmp eq i16 %14, 1011
  %cond219.i = select i1 %cmp217.i, ptr @.str.47, ptr @.str.48
  %206 = load i32, ptr @audit_enabled, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %205, ptr noundef nonnull @.str.46, ptr noundef nonnull %cond219.i, i32 noundef %206) #18
  call void @audit_log_end(ptr noundef %205) #18
  br label %audit_receive_msg.exit.thread

if.end220.i:                                      ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #20
  %call222.i = call i32 @audit_rule_change(i32 noundef %conv.i, i32 noundef %29, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i) #18
  br label %sw.epilog.i

sw.bb223.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %call224.i = call i32 @audit_list_rules_send(ptr noundef %skb, i32 noundef %29) #18
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  call fastcc void @audit_log_common_recv_msg(ptr noundef nonnull %ab.i, i16 noundef zeroext 1305) #18
  %207 = ptrtoint ptr %ab.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %ab.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %208, ptr noundef nonnull @.str.49) #18
  call void @audit_log_end(ptr noundef %208) #18
  br label %audit_receive_msg.exit.thread241

sw.bb227.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bufp.i) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msglen.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i)
  %cmp228.i = icmp ult i32 %sub.i.i, 8
  br i1 %cmp228.i, label %sw.bb227.i.cleanup247.i_crit_edge, label %if.end231.i

sw.bb227.i.cleanup247.i_crit_edge:                ; preds = %sw.bb227.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup247.i

if.end231.i:                                      ; preds = %sw.bb227.i
  %209 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %209, i32 4)
  %sizes.sroa.0.0.copyload.i = load i32, ptr %add.ptr.i.i, align 1
  %sizes.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %nlh.0253, i32 20
  %210 = ptrtoint ptr %sizes.sroa.5.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %210, i32 4)
  %sizes.sroa.5.0.copyload.i = load i32, ptr %sizes.sroa.5.0..sroa_idx.i, align 1
  %add.ptr.i = getelementptr i8, ptr %nlh.0253, i32 24
  %211 = ptrtoint ptr %bufp.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %add.ptr.i, ptr %bufp.i, align 4
  %sub232.i = add i32 %31, -24
  %212 = ptrtoint ptr %msglen.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %sub232.i, ptr %msglen.i, align 4
  %call234.i = call ptr @audit_unpack_string(ptr noundef nonnull %bufp.i, ptr noundef nonnull %msglen.i, i32 noundef %sizes.sroa.0.0.copyload.i) #18
  %cmp.i528.i = icmp ugt ptr %call234.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i528.i, label %if.then236.i, label %if.end238.i

if.then236.i:                                     ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #20
  %213 = ptrtoint ptr %call234.i to i32
  br label %cleanup247.i

if.end238.i:                                      ; preds = %if.end231.i
  %call240.i = call ptr @audit_unpack_string(ptr noundef nonnull %bufp.i, ptr noundef nonnull %msglen.i, i32 noundef %sizes.sroa.5.0.copyload.i) #18
  %cmp.i529.i = icmp ugt ptr %call240.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i529.i, label %if.then242.i, label %if.end244.i

if.then242.i:                                     ; preds = %if.end238.i
  call void @__sanitizer_cov_trace_pc() #20
  %214 = ptrtoint ptr %call240.i to i32
  call void @kfree(ptr noundef %call234.i) #18
  br label %cleanup247.i

if.end244.i:                                      ; preds = %if.end238.i
  call fastcc void @audit_log_common_recv_msg(ptr noundef nonnull %ab.i, i16 noundef zeroext 1305) #18
  %215 = ptrtoint ptr %ab.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %ab.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %216, ptr noundef nonnull @.str.50) #18
  %call.i98 = call i32 @strlen(ptr noundef %call234.i) #25
  %add.ptr.i.i.i99 = getelementptr i8, ptr %call234.i, i32 %call.i98
  %cmp16.i.i.i100 = icmp ugt ptr %add.ptr.i.i.i99, %call234.i
  br i1 %cmp16.i.i.i100, label %for.body.i.preheader.i.i102, label %if.end244.i.if.else.i.i112_crit_edge

if.end244.i.if.else.i.i112_crit_edge:             ; preds = %if.end244.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i.i112

for.body.i.preheader.i.i102:                      ; preds = %if.end244.i
  %217 = ptrtoint ptr %call234.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %call234.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %218)
  %cmp1.i7.i.i101 = icmp eq i8 %218, 34
  %219 = add i8 %218, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %219)
  %220 = icmp ult i8 %219, -94
  %221 = or i1 %cmp1.i7.i.i101, %220
  br i1 %221, label %for.body.i.preheader.i.i102.if.then.i.i111_crit_edge, label %for.body.i.preheader.i.i102.for.cond.i.i.i106_crit_edge

for.body.i.preheader.i.i102.for.cond.i.i.i106_crit_edge: ; preds = %for.body.i.preheader.i.i102
  br label %for.cond.i.i.i106

for.body.i.preheader.i.i102.if.then.i.i111_crit_edge: ; preds = %for.body.i.preheader.i.i102
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i111

for.cond.i.i.i106:                                ; preds = %for.body.i.i.i108.for.cond.i.i.i106_crit_edge, %for.body.i.preheader.i.i102.for.cond.i.i.i106_crit_edge
  %p.017.i8.i.i103 = phi ptr [ %incdec.ptr.i.i.i104, %for.body.i.i.i108.for.cond.i.i.i106_crit_edge ], [ %call234.i, %for.body.i.preheader.i.i102.for.cond.i.i.i106_crit_edge ]
  %incdec.ptr.i.i.i104 = getelementptr i8, ptr %p.017.i8.i.i103, i32 1
  %exitcond.not.i.i.i105 = icmp eq ptr %incdec.ptr.i.i.i104, %add.ptr.i.i.i99
  br i1 %exitcond.not.i.i.i105, label %for.cond.i.i.i106.if.else.i.i112_crit_edge, label %for.body.i.i.i108

for.cond.i.i.i106.if.else.i.i112_crit_edge:       ; preds = %for.cond.i.i.i106
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i.i112

for.body.i.i.i108:                                ; preds = %for.cond.i.i.i106
  %222 = ptrtoint ptr %incdec.ptr.i.i.i104 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %incdec.ptr.i.i.i104, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %223)
  %cmp1.i.i.i107 = icmp eq i8 %223, 34
  %224 = add i8 %223, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %224)
  %225 = icmp ult i8 %224, -94
  %226 = or i1 %cmp1.i.i.i107, %225
  br i1 %226, label %audit_string_contains_control.exit.i.i110, label %for.body.i.i.i108.for.cond.i.i.i106_crit_edge

for.body.i.i.i108.for.cond.i.i.i106_crit_edge:    ; preds = %for.body.i.i.i108
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.i.i106

audit_string_contains_control.exit.i.i110:        ; preds = %for.body.i.i.i108
  %cmp.i.le.i.i109 = icmp ult ptr %incdec.ptr.i.i.i104, %add.ptr.i.i.i99
  br i1 %cmp.i.le.i.i109, label %audit_string_contains_control.exit.i.i110.if.then.i.i111_crit_edge, label %audit_string_contains_control.exit.i.i110.if.else.i.i112_crit_edge

audit_string_contains_control.exit.i.i110.if.else.i.i112_crit_edge: ; preds = %audit_string_contains_control.exit.i.i110
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i.i112

audit_string_contains_control.exit.i.i110.if.then.i.i111_crit_edge: ; preds = %audit_string_contains_control.exit.i.i110
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i111

if.then.i.i111:                                   ; preds = %audit_string_contains_control.exit.i.i110.if.then.i.i111_crit_edge, %for.body.i.preheader.i.i102.if.then.i.i111_crit_edge
  call void @audit_log_n_hex(ptr noundef %216, ptr noundef %call234.i, i32 noundef %call.i98) #18
  br label %audit_log_untrustedstring.exit113

if.else.i.i112:                                   ; preds = %audit_string_contains_control.exit.i.i110.if.else.i.i112_crit_edge, %for.cond.i.i.i106.if.else.i.i112_crit_edge, %if.end244.i.if.else.i.i112_crit_edge
  call void @audit_log_n_string(ptr noundef %216, ptr noundef %call234.i, i32 noundef %call.i98) #18
  br label %audit_log_untrustedstring.exit113

audit_log_untrustedstring.exit113:                ; preds = %if.else.i.i112, %if.then.i.i111
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %216, ptr noundef nonnull @.str.51) #18
  %call.i = call i32 @strlen(ptr noundef %call240.i) #25
  %add.ptr.i.i.i = getelementptr i8, ptr %call240.i, i32 %call.i
  %cmp16.i.i.i = icmp ugt ptr %add.ptr.i.i.i, %call240.i
  br i1 %cmp16.i.i.i, label %for.body.i.preheader.i.i, label %audit_log_untrustedstring.exit113.if.else.i.i_crit_edge

audit_log_untrustedstring.exit113.if.else.i.i_crit_edge: ; preds = %audit_log_untrustedstring.exit113
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i.i

for.body.i.preheader.i.i:                         ; preds = %audit_log_untrustedstring.exit113
  %227 = ptrtoint ptr %call240.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %call240.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %228)
  %cmp1.i7.i.i = icmp eq i8 %228, 34
  %229 = add i8 %228, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %229)
  %230 = icmp ult i8 %229, -94
  %231 = or i1 %cmp1.i7.i.i, %230
  br i1 %231, label %for.body.i.preheader.i.i.if.then.i.i97_crit_edge, label %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge

for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge: ; preds = %for.body.i.preheader.i.i
  br label %for.cond.i.i.i

for.body.i.preheader.i.i.if.then.i.i97_crit_edge: ; preds = %for.body.i.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i97

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge
  %p.017.i8.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ %call240.i, %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge ]
  %incdec.ptr.i.i.i = getelementptr i8, ptr %p.017.i8.i.i, i32 1
  %exitcond.not.i.i.i = icmp eq ptr %incdec.ptr.i.i.i, %add.ptr.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.if.else.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.else.i.i_crit_edge:             ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %232 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %incdec.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %233)
  %cmp1.i.i.i = icmp eq i8 %233, 34
  %234 = add i8 %233, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %234)
  %235 = icmp ult i8 %234, -94
  %236 = or i1 %cmp1.i.i.i, %235
  br i1 %236, label %audit_string_contains_control.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.i.i

audit_string_contains_control.exit.i.i:           ; preds = %for.body.i.i.i
  %cmp.i.le.i.i = icmp ult ptr %incdec.ptr.i.i.i, %add.ptr.i.i.i
  br i1 %cmp.i.le.i.i, label %audit_string_contains_control.exit.i.i.if.then.i.i97_crit_edge, label %audit_string_contains_control.exit.i.i.if.else.i.i_crit_edge

audit_string_contains_control.exit.i.i.if.else.i.i_crit_edge: ; preds = %audit_string_contains_control.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i.i

audit_string_contains_control.exit.i.i.if.then.i.i97_crit_edge: ; preds = %audit_string_contains_control.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i97

if.then.i.i97:                                    ; preds = %audit_string_contains_control.exit.i.i.if.then.i.i97_crit_edge, %for.body.i.preheader.i.i.if.then.i.i97_crit_edge
  call void @audit_log_n_hex(ptr noundef %216, ptr noundef %call240.i, i32 noundef %call.i) #18
  br label %audit_log_untrustedstring.exit

if.else.i.i:                                      ; preds = %audit_string_contains_control.exit.i.i.if.else.i.i_crit_edge, %for.cond.i.i.i.if.else.i.i_crit_edge, %audit_log_untrustedstring.exit113.if.else.i.i_crit_edge
  call void @audit_log_n_string(ptr noundef %216, ptr noundef %call240.i, i32 noundef %call.i) #18
  br label %audit_log_untrustedstring.exit

audit_log_untrustedstring.exit:                   ; preds = %if.else.i.i, %if.then.i.i97
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %216, ptr noundef nonnull @.str.52, i32 noundef 0) #18
  call void @audit_log_end(ptr noundef %216) #18
  call void @kfree(ptr noundef %call234.i) #18
  call void @kfree(ptr noundef %call240.i) #18
  br label %cleanup247.i

cleanup247.i:                                     ; preds = %audit_log_untrustedstring.exit, %if.then242.i, %if.then236.i, %sw.bb227.i.cleanup247.i_crit_edge
  %err.11.i = phi i32 [ %213, %if.then236.i ], [ %214, %if.then242.i ], [ -22, %audit_log_untrustedstring.exit ], [ -22, %sw.bb227.i.cleanup247.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msglen.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bufp.i) #18
  br label %sw.epilog.i

sw.bb252.i:                                       ; preds = %if.end.i
  %237 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 0, ptr %len.i, align 4
  %238 = load i32, ptr @audit_sig_sid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool253.not.i = icmp eq i32 %238, 0
  br i1 %tobool253.not.i, label %sw.bb252.i.if.end8.i.i_crit_edge, label %if.then254.i

sw.bb252.i.if.end8.i.i_crit_edge:                 ; preds = %sw.bb252.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8.i.i

if.then254.i:                                     ; preds = %sw.bb252.i
  %call255.i = call i32 @security_secid_to_secctx(i32 noundef %238, ptr noundef nonnull %ctx.i, ptr noundef nonnull %len.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call255.i)
  %tobool256.not.i = icmp eq i32 %call255.i, 0
  br i1 %tobool256.not.i, label %if.then254.i.if.end8.i.i_crit_edge, label %if.then254.i.audit_receive_msg.exit.thread_crit_edge

if.then254.i.audit_receive_msg.exit.thread_crit_edge: ; preds = %if.then254.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread

if.then254.i.if.end8.i.i_crit_edge:               ; preds = %if.then254.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then254.i.if.end8.i.i_crit_edge, %sw.bb252.i.if.end8.i.i_crit_edge
  %239 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %len.i, align 4
  %spec.select.i.i = call i32 @llvm.uadd.sat.i32(i32 %240, i32 8) #18
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i.i, i32 noundef 3264) #26
  %tobool262.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool262.not.i, label %if.then263.i, label %if.end267.i

if.then263.i:                                     ; preds = %if.end8.i.i
  %241 = load i32, ptr @audit_sig_sid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool264.not.i = icmp eq i32 %241, 0
  br i1 %tobool264.not.i, label %if.then263.i.audit_receive_msg.exit.thread_crit_edge, label %if.then265.i

if.then263.i.audit_receive_msg.exit.thread_crit_edge: ; preds = %if.then263.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread

if.then265.i:                                     ; preds = %if.then263.i
  call void @__sanitizer_cov_trace_pc() #20
  %242 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ctx.i, align 4
  %244 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %len.i, align 4
  call void @security_release_secctx(ptr noundef %243, i32 noundef %245) #18
  br label %audit_receive_msg.exit.thread

if.end267.i:                                      ; preds = %if.end8.i.i
  %.unpack.i = load i32, ptr @audit_sig_uid.0, align 4
  %246 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call268.i = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %246) #18
  %247 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %call268.i, ptr %call9.i.i, align 128
  %248 = load i32, ptr @audit_sig_pid, align 4
  %pid269.i = getelementptr inbounds %struct.audit_sig_info, ptr %call9.i.i, i32 0, i32 1
  %249 = ptrtoint ptr %pid269.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %pid269.i, align 4
  %250 = load i32, ptr @audit_sig_sid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool270.not.i = icmp eq i32 %250, 0
  br i1 %tobool270.not.i, label %if.end267.i.if.end274.i_crit_edge, label %if.then271.i

if.end267.i.if.end274.i_crit_edge:                ; preds = %if.end267.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end274.i

if.then271.i:                                     ; preds = %if.end267.i
  call void @__sanitizer_cov_trace_pc() #20
  %ctx272.i = getelementptr inbounds %struct.audit_sig_info, ptr %call9.i.i, i32 0, i32 2
  %251 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %ctx.i, align 4
  %253 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %len.i, align 4
  %255 = call ptr @memcpy(ptr %ctx272.i, ptr %252, i32 %254)
  call void @security_release_secctx(ptr noundef %252, i32 noundef %254) #18
  br label %if.end274.i

if.end274.i:                                      ; preds = %if.then271.i, %if.end267.i.if.end274.i_crit_edge
  %256 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %len.i, align 4
  %spec.select.i530.i = call i32 @llvm.uadd.sat.i32(i32 %257, i32 8) #18
  call fastcc void @audit_send_reply(ptr noundef %skb, i32 noundef %29, i32 noundef 1010, ptr noundef nonnull %call9.i.i, i32 noundef %spec.select.i530.i) #18
  call void @kfree(ptr noundef nonnull %call9.i.i) #18
  br label %audit_receive_msg.exit.thread241

sw.bb276.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s277.i) #18
  %258 = call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i531.i = and i32 %258, -16384
  %259 = inttoptr i32 %and.i531.i to ptr
  %task283.i = getelementptr inbounds %struct.thread_info, ptr %259, i32 0, i32 2
  %260 = ptrtoint ptr %task283.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %task283.i, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %261, i32 0, i32 111
  %262 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %signal.i, align 16
  %audit_tty.i = getelementptr inbounds %struct.signal_struct, ptr %263, i32 0, i32 54
  %264 = ptrtoint ptr %audit_tty.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load volatile i32, ptr %audit_tty.i, align 4
  %and284.i = and i32 %265, 1
  %266 = ptrtoint ptr %s277.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %and284.i, ptr %s277.i, align 4
  %and286.i = lshr i32 %265, 1
  %and286.lobit.i = and i32 %and286.i, 1
  %267 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %and286.lobit.i, ptr %8, align 4
  call fastcc void @audit_send_reply(ptr noundef %skb, i32 noundef %29, i32 noundef 1016, ptr noundef nonnull %s277.i, i32 noundef 8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s277.i) #18
  br label %audit_receive_msg.exit.thread241

sw.bb294.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s295.sroa.0.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ab297.i) #18
  %268 = ptrtoint ptr %ab297.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr inttoptr (i32 -1 to ptr), ptr %ab297.i, align 4, !annotation !350
  %269 = ptrtoint ptr %s295.sroa.0.i to i32
  call void @__asan_store8_noabort(i32 %269)
  store i64 0, ptr %s295.sroa.0.i, align 8
  %270 = call i32 @llvm.umin.i32(i32 %sub.i.i, i32 8) #18
  %271 = call ptr @memcpy(ptr %s295.sroa.0.i, ptr %add.ptr.i.i, i32 %270)
  %272 = ptrtoint ptr %s295.sroa.0.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %s295.sroa.0.i.0.s295.sroa.0.i.0.s295.sroa.0.0.s295.sroa.0.0.s295.sroa.0.0.s295.0..i = load i32, ptr %s295.sroa.0.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %s295.sroa.0.i.0.s295.sroa.0.i.0.s295.sroa.0.0.s295.sroa.0.0.s295.sroa.0.0.s295.0..i)
  %switch.i = icmp ult i32 %s295.sroa.0.i.0.s295.sroa.0.i.0.s295.sroa.0.0.s295.sroa.0.0.s295.sroa.0.0.s295.0..i, 2
  br i1 %switch.i, label %lor.lhs.false.i, label %sw.bb294.i.do.end326.i_crit_edge

sw.bb294.i.do.end326.i_crit_edge:                 ; preds = %sw.bb294.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end326.i

lor.lhs.false.i:                                  ; preds = %sw.bb294.i
  %273 = ptrtoint ptr %s295.sroa.0.i.4.i.4.s295.4..sroa_idx262 to i32
  call void @__asan_load4_noabort(i32 %273)
  %s295.sroa.0.i.4.s295.sroa.0.i.4.s295.sroa.0.4.s295.sroa.0.4.s295.sroa.0.4.s295.4..i = load i32, ptr %s295.sroa.0.i.4.i.4.s295.4..sroa_idx262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %s295.sroa.0.i.4.s295.sroa.0.i.4.s295.sroa.0.4.s295.sroa.0.4.s295.sroa.0.4.s295.4..i)
  %switch522.i = icmp ult i32 %s295.sroa.0.i.4.s295.sroa.0.i.4.s295.sroa.0.4.s295.sroa.0.4.s295.sroa.0.4.s295.4..i, 2
  br i1 %switch522.i, label %if.else332.i, label %lor.lhs.false.i.do.end326.i_crit_edge

lor.lhs.false.i.do.end326.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end326.i

do.end326.i:                                      ; preds = %lor.lhs.false.i.do.end326.i_crit_edge, %sw.bb294.i.do.end326.i_crit_edge
  %274 = call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i532.i = and i32 %274, -16384
  %275 = inttoptr i32 %and.i532.i to ptr
  %task329.i = getelementptr inbounds %struct.thread_info, ptr %275, i32 0, i32 2
  %276 = ptrtoint ptr %task329.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %task329.i, align 8
  %signal330.i = getelementptr inbounds %struct.task_struct, ptr %277, i32 0, i32 111
  %278 = ptrtoint ptr %signal330.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %signal330.i, align 16
  %audit_tty331.i = getelementptr inbounds %struct.signal_struct, ptr %279, i32 0, i32 54
  %280 = ptrtoint ptr %audit_tty331.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load volatile i32, ptr %audit_tty331.i, align 4
  br label %if.end360.i

if.else332.i:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub335.i = sub nsw i32 0, %s295.sroa.0.i.4.s295.sroa.0.i.4.s295.sroa.0.4.s295.sroa.0.4.s295.sroa.0.4.s295.4..i
  %and336.i = and i32 %sub335.i, 2
  %or.i = or i32 %and336.i, %s295.sroa.0.i.0.s295.sroa.0.i.0.s295.sroa.0.0.s295.sroa.0.0.s295.sroa.0.0.s295.0..i
  %282 = call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i533.i = and i32 %282, -16384
  %283 = inttoptr i32 %and.i533.i to ptr
  %task338.i = getelementptr inbounds %struct.thread_info, ptr %283, i32 0, i32 2
  %284 = ptrtoint ptr %task338.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %task338.i, align 8
  %signal339.i = getelementptr inbounds %struct.task_struct, ptr %285, i32 0, i32 111
  %286 = ptrtoint ptr %signal339.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %signal339.i, align 16
  %audit_tty340.i = getelementptr inbounds %struct.signal_struct, ptr %287, i32 0, i32 54
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %audit_tty340.i, i32 noundef 4) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !364
  call void @llvm.prefetch.p0(ptr %audit_tty340.i, i32 1, i32 3, i32 1) #18
  %288 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %or.i, ptr %audit_tty340.i) #18, !srcloc !362
  %asmresult.i.i = extractvalue { i32, i32 } %288, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !365
  br label %if.end360.i

if.end360.i:                                      ; preds = %if.else332.i, %do.end326.i
  %err.13553.i = phi i32 [ -22, %do.end326.i ], [ 0, %if.else332.i ]
  %tobool322.not551.i = phi i32 [ 0, %do.end326.i ], [ 1, %if.else332.i ]
  %t298.0.i = phi i32 [ %281, %do.end326.i ], [ %asmresult.i.i, %if.else332.i ]
  %and361.i = and i32 %t298.0.i, 1
  %and363.i = lshr i32 %t298.0.i, 1
  %and363.lobit.i = and i32 %and363.i, 1
  call fastcc void @audit_log_common_recv_msg(ptr noundef nonnull %ab297.i, i16 noundef zeroext 1305) #18
  %289 = ptrtoint ptr %ab297.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %ab297.i, align 4
  %291 = ptrtoint ptr %s295.sroa.0.i.4.i.4.s295.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %291)
  %s295.sroa.0.i.4.s295.sroa.0.i.4.s295.sroa.0.4.s295.sroa.0.4.s295.sroa.0.4.s295.4.409.i = load i32, ptr %s295.sroa.0.i.4.i.4.s295.4..sroa_idx, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %290, ptr noundef nonnull @.str.53, i32 noundef %and361.i, i32 noundef %s295.sroa.0.i.0.s295.sroa.0.i.0.s295.sroa.0.0.s295.sroa.0.0.s295.sroa.0.0.s295.0..i, i32 noundef %and363.lobit.i, i32 noundef %s295.sroa.0.i.4.s295.sroa.0.i.4.s295.sroa.0.4.s295.sroa.0.4.s295.sroa.0.4.s295.4.409.i, i32 noundef %tobool322.not551.i) #18
  call void @audit_log_end(ptr noundef %290) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ab297.i) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s295.sroa.0.i)
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end360.i, %cleanup247.i, %sw.bb223.i, %if.end220.i, %if.then181.i.sw.epilog.i_crit_edge, %if.end172.i.sw.epilog.i_crit_edge
  %err.14.i = phi i32 [ %call174.i, %if.end172.i.sw.epilog.i_crit_edge ], [ %err.13553.i, %if.end360.i ], [ %err.11.i, %cleanup247.i ], [ %call224.i, %sw.bb223.i ], [ %call222.i, %if.end220.i ], [ %call182.i, %if.then181.i.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.14.i)
  %cmp382.i = icmp slt i32 %err.14.i, 0
  br i1 %cmp382.i, label %sw.epilog.i.audit_receive_msg.exit.thread_crit_edge, label %sw.epilog.i.audit_receive_msg.exit.thread241_crit_edge

sw.epilog.i.audit_receive_msg.exit.thread241_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread241

sw.epilog.i.audit_receive_msg.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_receive_msg.exit.thread

audit_receive_msg.exit.thread:                    ; preds = %sw.epilog.i.audit_receive_msg.exit.thread_crit_edge, %if.then265.i, %if.then263.i.audit_receive_msg.exit.thread_crit_edge, %if.then254.i.audit_receive_msg.exit.thread_crit_edge, %if.then214.i, %sw.bb207.i.audit_receive_msg.exit.thread_crit_edge, %sw.caserange167.i.audit_receive_msg.exit.thread_crit_edge, %if.end166.i.audit_receive_msg.exit.thread_crit_edge, %if.end3.i.i, %if.end.i.i.audit_receive_msg.exit.thread_crit_edge, %if.then8.i.audit_receive_msg.exit.thread_crit_edge, %sw.bb148.i.audit_receive_msg.exit.thread_crit_edge, %audit_netlink_ok.exit.i.audit_receive_msg.exit.thread_crit_edge, %sw.caserange19.i.i.audit_receive_msg.exit.thread_crit_edge, %sw.bb2.i.i.audit_receive_msg.exit.thread_crit_edge, %if.end.i527.i.audit_receive_msg.exit.thread_crit_edge, %if.end.i527.i.audit_receive_msg.exit.thread_crit_edge277, %if.end.i527.i.audit_receive_msg.exit.thread_crit_edge278, %while.body.audit_receive_msg.exit.thread_crit_edge
  %retval.3.i.ph = phi i32 [ -111, %while.body.audit_receive_msg.exit.thread_crit_edge ], [ -95, %if.end.i527.i.audit_receive_msg.exit.thread_crit_edge ], [ -95, %if.end.i527.i.audit_receive_msg.exit.thread_crit_edge277 ], [ -95, %if.end.i527.i.audit_receive_msg.exit.thread_crit_edge278 ], [ -1, %sw.bb2.i.i.audit_receive_msg.exit.thread_crit_edge ], [ -22, %sw.caserange19.i.i.audit_receive_msg.exit.thread_crit_edge ], [ -12, %if.then263.i.audit_receive_msg.exit.thread_crit_edge ], [ -12, %if.then265.i ], [ %call255.i, %if.then254.i.audit_receive_msg.exit.thread_crit_edge ], [ -22, %sw.bb207.i.audit_receive_msg.exit.thread_crit_edge ], [ -22, %if.end166.i.audit_receive_msg.exit.thread_crit_edge ], [ -22, %sw.bb148.i.audit_receive_msg.exit.thread_crit_edge ], [ -1, %audit_netlink_ok.exit.i.audit_receive_msg.exit.thread_crit_edge ], [ -1, %if.then214.i ], [ -1, %if.then8.i.audit_receive_msg.exit.thread_crit_edge ], [ -1, %if.end.i.i.audit_receive_msg.exit.thread_crit_edge ], [ -1, %if.end3.i.i ], [ %err.14.i, %sw.epilog.i.audit_receive_msg.exit.thread_crit_edge ], [ -22, %sw.caserange167.i.audit_receive_msg.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctx.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ab.i) #18
  br label %if.then

audit_receive_msg.exit.thread241:                 ; preds = %sw.epilog.i.audit_receive_msg.exit.thread241_crit_edge, %sw.bb276.i, %if.end274.i, %do.end.i, %if.end202.i, %sw.bb159.i.audit_receive_msg.exit.thread241_crit_edge, %if.end38.1.i, %cleanup45.i.audit_receive_msg.exit.thread241_crit_edge, %sw.bb143.i, %cleanup141.i, %sw.bb.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctx.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ab.i) #18
  br label %lor.lhs.false

audit_receive_msg.exit.thread246.sink.split:      ; preds = %if.end50.i.audit_receive_msg.exit.thread246.sink.split_crit_edge, %if.then46.i.audit_receive_msg.exit.thread246.sink.split_crit_edge
  %s8.12.s8.12.s8.12..i.sink = phi i32 [ %s8.12.s8.12.s8.12..i, %if.then46.i.audit_receive_msg.exit.thread246.sink.split_crit_edge ], [ 0, %if.end50.i.audit_receive_msg.exit.thread246.sink.split_crit_edge ]
  %retval.2.ph.i.ph.ph = phi i32 [ -17, %if.then46.i.audit_receive_msg.exit.thread246.sink.split_crit_edge ], [ -13, %if.end50.i.audit_receive_msg.exit.thread246.sink.split_crit_edge ]
  %call49.i = call fastcc i32 @audit_log_config_change(ptr noundef nonnull @.str.41, i32 noundef %s8.12.s8.12.s8.12..i.sink, i32 noundef %call44.i, i32 noundef 0) #18
  br label %audit_receive_msg.exit.thread246

audit_receive_msg.exit.thread246:                 ; preds = %audit_receive_msg.exit.thread246.sink.split, %audit_set_backlog_wait_time.exit.audit_receive_msg.exit.thread246_crit_edge, %if.else8.i.i.audit_receive_msg.exit.thread246_crit_edge, %if.end111.i.audit_receive_msg.exit.thread246_crit_edge, %if.then107.i.audit_receive_msg.exit.thread246_crit_edge, %audit_set_backlog_limit.exit.audit_receive_msg.exit.thread246_crit_edge, %if.else8.i.i137.audit_receive_msg.exit.thread246_crit_edge, %audit_set_rate_limit.exit.audit_receive_msg.exit.thread246_crit_edge, %if.else8.i.i150.audit_receive_msg.exit.thread246_crit_edge, %if.end69.i.audit_receive_msg.exit.thread246_crit_edge, %land.lhs.true.i92.audit_receive_msg.exit.thread246_crit_edge, %audit_set_failure.exit.audit_receive_msg.exit.thread246_crit_edge, %if.else8.i.i186.audit_receive_msg.exit.thread246_crit_edge, %if.then22.i.audit_receive_msg.exit.thread246_crit_edge, %audit_set_enabled.exit.audit_receive_msg.exit.thread246_crit_edge, %if.else8.i.i199.audit_receive_msg.exit.thread246_crit_edge, %if.then11.i.audit_receive_msg.exit.thread246_crit_edge
  %retval.2.ph.i.ph = phi i32 [ -22, %land.lhs.true.i92.audit_receive_msg.exit.thread246_crit_edge ], [ %retval.0.i, %if.end69.i.audit_receive_msg.exit.thread246_crit_edge ], [ %call.i.i193, %audit_set_enabled.exit.audit_receive_msg.exit.thread246_crit_edge ], [ %call.i.i178, %audit_set_failure.exit.audit_receive_msg.exit.thread246_crit_edge ], [ %call.i.i142, %audit_set_rate_limit.exit.audit_receive_msg.exit.thread246_crit_edge ], [ %call.i.i129, %audit_set_backlog_limit.exit.audit_receive_msg.exit.thread246_crit_edge ], [ -22, %if.then107.i.audit_receive_msg.exit.thread246_crit_edge ], [ -22, %if.end111.i.audit_receive_msg.exit.thread246_crit_edge ], [ %call.i.i123, %audit_set_backlog_wait_time.exit.audit_receive_msg.exit.thread246_crit_edge ], [ -22, %if.then11.i.audit_receive_msg.exit.thread246_crit_edge ], [ -1, %if.else8.i.i199.audit_receive_msg.exit.thread246_crit_edge ], [ -22, %if.then22.i.audit_receive_msg.exit.thread246_crit_edge ], [ -1, %if.else8.i.i186.audit_receive_msg.exit.thread246_crit_edge ], [ -1, %if.else8.i.i150.audit_receive_msg.exit.thread246_crit_edge ], [ -1, %if.else8.i.i137.audit_receive_msg.exit.thread246_crit_edge ], [ -1, %if.else8.i.i.audit_receive_msg.exit.thread246_crit_edge ], [ %retval.2.ph.i.ph.ph, %audit_receive_msg.exit.thread246.sink.split ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %s8.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctx.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ab.i) #18
  br label %if.then

audit_receive_msg.exit:                           ; preds = %if.then136.i, %if.then127.i
  %retval.2.ph.i = phi i32 [ %asmresult.i.i.i, %if.then127.i ], [ %asmresult.i.i526.i, %if.then136.i ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %s8.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctx.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ab.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.ph.i)
  %tobool4.not = icmp eq i32 %retval.2.ph.i, 0
  br i1 %tobool4.not, label %audit_receive_msg.exit.lor.lhs.false_crit_edge, label %audit_receive_msg.exit.if.then_crit_edge

audit_receive_msg.exit.if.then_crit_edge:         ; preds = %audit_receive_msg.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

audit_receive_msg.exit.lor.lhs.false_crit_edge:   ; preds = %audit_receive_msg.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %audit_receive_msg.exit.lor.lhs.false_crit_edge, %audit_receive_msg.exit.thread241
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %nlh.0253, i32 0, i32 2
  %292 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %nlmsg_flags, align 2
  %294 = and i16 %293, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %294)
  %tobool5.not = icmp eq i16 %294, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %audit_receive_msg.exit.if.then_crit_edge, %audit_receive_msg.exit.thread246, %audit_receive_msg.exit.thread
  %retval.3.i239 = phi i32 [ %retval.3.i.ph, %audit_receive_msg.exit.thread ], [ 0, %lor.lhs.false.if.then_crit_edge ], [ %retval.2.ph.i, %audit_receive_msg.exit.if.then_crit_edge ], [ %retval.2.ph.i.ph, %audit_receive_msg.exit.thread246 ]
  call void @netlink_ack(ptr noundef %skb, ptr noundef %nlh.0253, i32 noundef %retval.3.i239, ptr noundef null) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %295 = ptrtoint ptr %nlh.0253 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %nlh.0253, align 4
  %sub.i93 = add i32 %296, 3
  %and.i94 = and i32 %sub.i93, -4
  %sub1.i = sub i32 %len.0252, %and.i94
  %add.ptr.i95 = getelementptr i8, ptr %nlh.0253, i32 %and.i94
  %cmp.i = icmp sgt i32 %sub1.i, 15
  br i1 %cmp.i, label %if.end.land.lhs.true.i_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.i

while.end:                                        ; preds = %if.end.while.end_crit_edge, %land.lhs.true.i.while.end_crit_edge, %entry.while.end_crit_edge
  store ptr null, ptr getelementptr inbounds (%struct.audit_ctl_mutex, ptr @audit_cmd_mutex, i32 0, i32 1), align 4
  call void @mutex_unlock(ptr noundef nonnull @audit_cmd_mutex) #18
  %297 = load i32, ptr @audit_backlog_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %tobool7.not = icmp eq i32 %297, 0
  br i1 %tobool7.not, label %while.end.if.end79_crit_edge, label %land.lhs.true

while.end.if.end79_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end79

land.lhs.true:                                    ; preds = %while.end
  %298 = load i32, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @audit_queue, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %298, i32 %297)
  %cmp = icmp ugt i32 %298, %297
  br i1 %cmp, label %if.then10, label %land.lhs.true.if.end79_crit_edge

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end79

if.then10:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #18
  %299 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %300 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %301 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %302 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %303 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 0, ptr %wait, align 4
  %304 = call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i96 = and i32 %304, -16384
  %305 = inttoptr i32 %and.i96 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %305, i32 0, i32 2
  %306 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %task, align 8
  %308 = ptrtoint ptr %299 to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %307, ptr %299, align 4
  %309 = ptrtoint ptr %300 to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr @default_wake_function, ptr %300, align 4
  %310 = ptrtoint ptr %301 to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr null, ptr %301, align 4
  %311 = ptrtoint ptr %302 to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr null, ptr %302, align 4
  call void @__wake_up(ptr noundef nonnull @kauditd_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #18
  call void @add_wait_queue_exclusive(ptr noundef nonnull @audit_backlog_wait, ptr noundef nonnull %wait) #18
  br label %__here

__here:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  %312 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %313, i32 0, i32 212
  %314 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 ptrtoint (ptr blockaddress(@audit_receive, %__here) to i32), ptr %task_state_change, align 4
  %315 = load ptr, ptr %task, align 8
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_store4_noabort(i32 %316)
  store volatile i32 2, ptr %315, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !366
  %317 = load i32, ptr @audit_backlog_wait_time, align 4
  %call78 = call i32 @schedule_timeout(i32 noundef %317) #18
  call void @remove_wait_queue(ptr noundef nonnull @audit_backlog_wait, ptr noundef nonnull %wait) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #18
  br label %if.end79

if.end79:                                         ; preds = %__here, %land.lhs.true.if.end79_crit_edge, %while.end.if.end79_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audit_multicast_bind(ptr nocapture noundef readnone %net, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 37) #18
  %not.call = xor i1 %call, true
  %spec.select = sext i1 %not.call to i32
  tail call fastcc void @audit_log_multicast(i32 noundef %group, ptr noundef nonnull @.str.70, i32 noundef %spec.select)
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @audit_multicast_unbind(ptr nocapture noundef readnone %net, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @audit_log_multicast(i32 noundef %group, ptr noundef nonnull @.str.73, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_ack(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @auditd_pid_vnr() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !341
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = load volatile ptr, ptr @auditd_conn, align 4
  %call = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b19 = load i1, ptr @auditd_pid_vnr.__warned, align 1
  br i1 %.b19, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @auditd_pid_vnr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 273, ptr noundef nonnull @.str.1) #18
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %4, null
  br i1 %tobool9.not, label %do.end7.if.end15_crit_edge, label %lor.lhs.false

do.end7.if.end15_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

lor.lhs.false:                                    ; preds = %do.end7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %lor.lhs.false.if.end15_crit_edge, label %if.else

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  %call14 = tail call i32 @pid_vnr(ptr noundef nonnull %6) #18
  br label %if.end15

if.end15:                                         ; preds = %if.else, %lor.lhs.false.if.end15_crit_edge, %do.end7.if.end15_crit_edge
  %pid.0 = phi i32 [ %call14, %if.else ], [ 0, %lor.lhs.false.if.end15_crit_edge ], [ 0, %do.end7.if.end15_crit_edge ]
  %call.i20 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i20, label %if.end15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i23

if.end15.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i23:                                ; preds = %if.end15
  %call1.i21 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i23
  %.b4.i24 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24, label %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, label %if.then.i26

land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i26:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i26, %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, %if.end15.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !342
  %7 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i.i.i.i27 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i27 to ptr
  %preempt_count.i.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i28, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i28, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  ret i32 %pid.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @audit_send_reply(ptr nocapture noundef readonly %request_skb, i32 noundef %seq, i32 noundef %type, ptr nocapture noundef readonly %payload, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #24
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub.i.i.i = add i32 %size, 19
  %and.i.i.i = and i32 %sub.i.i.i, -4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #18
  %tobool3.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.audit_make_reply.exit.thread_crit_edge, label %if.end.i

if.end.audit_make_reply.exit.thread_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_make_reply.exit.thread

if.end.i:                                         ; preds = %if.end
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 7
  %1 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %if.end.i.skb_tailroom.exit.i.i_crit_edge

if.end.i.skb_tailroom.exit.i.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_tailroom.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 17
  %3 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %skb_tailroom.exit.i.i

skb_tailroom.exit.i.i:                            ; preds = %cond.false.i.i.i, %if.end.i.skb_tailroom.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %cond.false.i.i.i ], [ 0, %if.end.i.skb_tailroom.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i, i32 %and.i.i.i)
  %cmp.i.i = icmp slt i32 %cond.i.i.i, %and.i.i.i
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.out_kfree_skb.i_crit_edge, label %nlmsg_put.exit.i, !prof !348

skb_tailroom.exit.i.i.out_kfree_skb.i_crit_edge:  ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_kfree_skb.i

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef %seq, i32 noundef %type, i32 noundef %size, i32 noundef 0) #18
  %tobool5.not.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool5.not.i, label %nlmsg_put.exit.i.out_kfree_skb.i_crit_edge, label %if.end5

nlmsg_put.exit.i.out_kfree_skb.i_crit_edge:       ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_kfree_skb.i

out_kfree_skb.i:                                  ; preds = %nlmsg_put.exit.i.out_kfree_skb.i_crit_edge, %skb_tailroom.exit.i.i.out_kfree_skb.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #18
  br label %audit_make_reply.exit.thread

audit_make_reply.exit.thread:                     ; preds = %out_kfree_skb.i, %if.end.audit_make_reply.exit.thread_crit_edge
  %skb3 = getelementptr inbounds %struct.audit_reply, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %skb3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %skb3, align 8
  br label %err

if.end5:                                          ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %8 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %payload, i32 %size)
  %skb = getelementptr inbounds %struct.audit_reply, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i.i, ptr %skb, align 8
  %sk = getelementptr inbounds %struct.sk_buff, ptr %request_skb, i32 0, i32 3, i32 24
  %10 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk, align 8
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_net.i, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #18
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #18, !srcloc !358
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end5.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !348

if.end5.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end5
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_net.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !346

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_net.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_net.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end5.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end5.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #18
  br label %get_net.exit

get_net.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_net.exit_crit_edge
  %net = getelementptr inbounds %struct.audit_reply, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %net, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %request_skb, i32 0, i32 3, i32 12
  %17 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %portid, align 4
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %call7.i.i, align 8
  %call10 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @audit_send_reply_thread, ptr noundef nonnull %call7.i.i, i32 noundef -1, ptr noundef nonnull @.str.54) #18
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %get_net.exit.err_crit_edge, label %if.end14

get_net.exit.err_crit_edge:                       ; preds = %get_net.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end14:                                         ; preds = %get_net.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call13 = tail call i32 @wake_up_process(ptr noundef %call10) #18
  br label %cleanup

err:                                              ; preds = %get_net.exit.err_crit_edge, %audit_make_reply.exit.thread
  tail call fastcc void @audit_free_reply(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @audit_log_config_change(ptr noundef %function_name, i32 noundef %new, i32 noundef %old, i32 noundef %allow_changes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @audit_log_start(ptr noundef null, i32 noundef 3264, i32 noundef 1305)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !348

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.57, ptr noundef %function_name, i32 noundef %new, i32 noundef %old)
  %0 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %sessionid.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 122
  %4 = ptrtoint ptr %sessionid.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sessionid.i.i, align 4
  %loginuid.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 121
  %6 = ptrtoint ptr %loginuid.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %loginuid.i.i, align 16
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.copyload.i.i, 0
  %call6.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #18
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.13, i32 noundef %call6.i, i32 noundef %5) #18
  %call5 = tail call i32 @audit_log_task_context(ptr noundef nonnull %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %spec.select = select i1 %tobool6.not, i32 %allow_changes, i32 0
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.52, i32 noundef %spec.select)
  tail call void @audit_log_end(ptr noundef nonnull %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @auditd_reset(ptr noundef readnone %ac) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @auditd_conn_lock) #18
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @auditd_conn_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end12

land.lhs.true:                                    ; preds = %entry
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true9

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end12

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b70 = load i1, ptr @auditd_reset.__warned, align 1
  br i1 %.b70, label %land.lhs.true9.do.end12_crit_edge, label %if.then

land.lhs.true9.do.end12_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end12

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @auditd_reset.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 650, ptr noundef nonnull @.str.58) #18
  br label %do.end12

do.end12:                                         ; preds = %if.then, %land.lhs.true9.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %entry.do.end12_crit_edge
  %0 = load ptr, ptr @auditd_conn, align 4
  %tobool14.not = icmp eq ptr %ac, null
  %cmp16.not = icmp eq ptr %0, %ac
  %or.cond = select i1 %tobool14.not, i1 true, i1 %cmp16.not
  br i1 %or.cond, label %do.body28, label %if.then18

if.then18:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @auditd_conn_lock, i32 noundef %call2) #18
  br label %cleanup

do.body28:                                        ; preds = %do.end12
  store volatile ptr null, ptr @auditd_conn, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @auditd_conn_lock, i32 noundef %call2) #18
  %tobool57.not = icmp eq ptr %0, null
  br i1 %tobool57.not, label %do.body28.if.end59_crit_edge, label %if.then58

do.body28.if.end59_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end59

if.then58:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #20
  %rcu = getelementptr inbounds %struct.auditd_connection, ptr %0, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @auditd_conn_free) #18
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %do.body28.if.end59_crit_edge
  %call6071 = tail call ptr @skb_dequeue(ptr noundef nonnull @audit_retry_queue) #18
  %tobool61.not72 = icmp eq ptr %call6071, null
  br i1 %tobool61.not72, label %if.end59.cleanup_crit_edge, label %if.end59.while.body_crit_edge

if.end59.while.body_crit_edge:                    ; preds = %if.end59
  br label %while.body

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end59.while.body_crit_edge
  %call6073 = phi ptr [ %call60, %while.body.while.body_crit_edge ], [ %call6071, %if.end59.while.body_crit_edge ]
  tail call void @kauditd_hold_skb(ptr noundef nonnull %call6073, i32 noundef -111)
  %call60 = tail call ptr @skb_dequeue(ptr noundef nonnull @audit_retry_queue) #18
  %tobool61.not = icmp eq ptr %call60, null
  br i1 %tobool61.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.then18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_audit_push() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @audit_log_common_recv_msg(ptr nocapture noundef %ab, i16 noundef zeroext %msg_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %uid1 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %uid1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %uid1, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call2 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #18
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %tgid.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 69
  %9 = ptrtoint ptr %tgid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tgid.i, align 4
  %11 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp ne i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1107, i16 %msg_type)
  %cmp.not = icmp eq i16 %msg_type, 1107
  %or.cond = or i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %ab to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ab, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv7 = zext i16 %msg_type to i32
  %call8 = tail call ptr @audit_log_start(ptr noundef null, i32 noundef 3264, i32 noundef %conv7)
  %13 = ptrtoint ptr %ab to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8, ptr %ab, align 4
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end14, !prof !348

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call8, ptr noundef nonnull @.str.69, i32 noundef %10, i32 noundef %call2)
  %14 = ptrtoint ptr %ab to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ab, align 4
  %16 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i, align 8
  %sessionid.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 122
  %20 = ptrtoint ptr %sessionid.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sessionid.i.i, align 4
  %loginuid.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 121
  %22 = ptrtoint ptr %loginuid.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %loginuid.i.i, align 16
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.copyload.i.i, 0
  %call6.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #18
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %15, ptr noundef nonnull @.str.13, i32 noundef %call6.i, i32 noundef %21) #18
  %23 = ptrtoint ptr %ab to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ab, align 4
  %call15 = tail call i32 @audit_log_task_context(ptr noundef %24)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @audit_rule_change(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @audit_list_rules_send(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @audit_unpack_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audit_send_reply_thread(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @audit_cmd_mutex, i32 noundef 0) #18
  store ptr null, ptr getelementptr inbounds (%struct.audit_ctl_mutex, ptr @audit_cmd_mutex, i32 0, i32 1), align 4
  tail call void @mutex_unlock(ptr noundef nonnull @audit_cmd_mutex) #18
  %net = getelementptr inbounds %struct.audit_reply, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.audit_get_sk.exit_crit_edge, label %if.end.i

entry.audit_get_sk.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %audit_get_sk.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = load i32, ptr @audit_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef nonnull %1, i32 noundef %2) #18
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  br label %audit_get_sk.exit

audit_get_sk.exit:                                ; preds = %if.end.i, %entry.audit_get_sk.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ null, %entry.audit_get_sk.exit_crit_edge ]
  %skb = getelementptr inbounds %struct.audit_reply, ptr %arg, i32 0, i32 2
  %5 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skb, align 4
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arg, align 4
  %call1 = tail call i32 @netlink_unicast(ptr noundef %retval.0.i, ptr noundef %6, i32 noundef %8, i32 noundef 0) #18
  %9 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %skb, align 4
  tail call fastcc void @audit_free_reply(ptr noundef %arg)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @audit_free_reply(ptr noundef %reply) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %reply, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %skb = getelementptr inbounds %struct.audit_reply, ptr %reply, i32 0, i32 2
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #18
  %net = getelementptr inbounds %struct.audit_reply, ptr %reply, i32 0, i32 1
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.then2:                                         ; preds = %if.end
  %count.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !344
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #18
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #18, !srcloc !345
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end4_crit_edge, label %if.then10.i.i.i.i, !prof !346

if.end5.i.i.i.i.if.end4_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #18
  br label %if.end4

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !347
  tail call void @__put_net(ptr noundef nonnull %3) #18
  br label %if.end4

if.end4:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  tail call void @kfree(ptr noundef nonnull %reply) #18
  br label %return

return:                                           ; preds = %if.end4, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @auditd_conn_free(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @put_pid(ptr noundef %1) #18
  %net = getelementptr i8, ptr %rcu, i32 -4
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !344
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #18
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #18, !srcloc !345
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_net.exit_crit_edge, label %if.then10.i.i.i.i, !prof !346

if.end5.i.i.i.i.put_net.exit_crit_edge:           ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %put_net.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #18
  br label %put_net.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !347
  tail call void @__put_net(ptr noundef %3) #18
  br label %put_net.exit

put_net.exit:                                     ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_net.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kauditd_hold_skb(ptr noundef %skb, i32 noundef %error) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 16
  %nlmsg_type.i = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nlmsg_type.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nlmsg_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1320, i16 %3)
  %cmp.not.i = icmp eq i16 %3, 1320
  br i1 %cmp.not.i, label %entry.kauditd_printk_skb.exit_crit_edge, label %land.lhs.true.i

entry.kauditd_printk_skb.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %kauditd_printk_skb.exit

land.lhs.true.i:                                  ; preds = %entry
  %call3.i = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.kauditd_printk_skb) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.kauditd_printk_skb.exit_crit_edge, label %do.end.i

land.lhs.true.i.kauditd_printk_skb.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kauditd_printk_skb.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %nlmsg_type.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nlmsg_type.i, align 4
  %conv5.i = zext i16 %5 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %conv5.i, ptr noundef %add.ptr.i.i) #21
  br label %kauditd_printk_skb.exit

kauditd_printk_skb.exit:                          ; preds = %do.end.i, %land.lhs.true.i.kauditd_printk_skb.exit_crit_edge, %entry.kauditd_printk_skb.exit_crit_edge
  %.b = load i1, ptr @audit_default, align 4
  br i1 %.b, label %if.end, label %kauditd_printk_skb.exit.drop_crit_edge

kauditd_printk_skb.exit.drop_crit_edge:           ; preds = %kauditd_printk_skb.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end:                                           ; preds = %kauditd_printk_skb.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %error)
  %cmp = icmp eq i32 %error, -11
  %6 = load i32, ptr @audit_backlog_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then1, label %if.end6

if.then1:                                         ; preds = %if.end
  br i1 %tobool2.not, label %if.then1.if.then4_crit_edge, label %lor.lhs.false

if.then1.if.then4_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.then1
  %7 = load i32, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @audit_retry_queue, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %6)
  %cmp3 = icmp ult i32 %7, %6
  br i1 %cmp3, label %lor.lhs.false.if.then4_crit_edge, label %lor.lhs.false.drop.sink.split_crit_edge

lor.lhs.false.drop.sink.split_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop.sink.split

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.then1.if.then4_crit_edge
  tail call void @skb_queue_tail(ptr noundef nonnull @audit_retry_queue, ptr noundef %skb) #18
  br label %return

if.end6:                                          ; preds = %if.end
  br i1 %tobool2.not, label %if.end6.if.then11_crit_edge, label %lor.lhs.false8

if.end6.if.then11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11

lor.lhs.false8:                                   ; preds = %if.end6
  %8 = load i32, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @audit_hold_queue, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp10 = icmp ult i32 %8, %6
  br i1 %cmp10, label %lor.lhs.false8.if.then11_crit_edge, label %lor.lhs.false8.drop.sink.split_crit_edge

lor.lhs.false8.drop.sink.split_crit_edge:         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop.sink.split

lor.lhs.false8.if.then11_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false8.if.then11_crit_edge, %if.end6.if.then11_crit_edge
  tail call void @skb_queue_tail(ptr noundef nonnull @audit_hold_queue, ptr noundef %skb) #18
  br label %return

drop.sink.split:                                  ; preds = %lor.lhs.false8.drop.sink.split_crit_edge, %lor.lhs.false.drop.sink.split_crit_edge
  %.str.61.sink = phi ptr [ @.str.60, %lor.lhs.false.drop.sink.split_crit_edge ], [ @.str.61, %lor.lhs.false8.drop.sink.split_crit_edge ]
  tail call void @audit_log_lost(ptr noundef nonnull %.str.61.sink)
  br label %drop

drop:                                             ; preds = %drop.sink.split, %kauditd_printk_skb.exit.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  br label %return

return:                                           ; preds = %drop, %if.then11, %if.then4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @audit_log_multicast(i32 noundef %group, ptr noundef %op, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  %comm = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %comm) #18
  %0 = call ptr @memset(ptr %comm, i32 255, i32 16)
  %1 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @audit_log_start(ptr noundef null, i32 noundef 3264, i32 noundef 1335)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %if.end
  %2 = tail call i32 @llvm.read_register.i32(metadata !331) #18
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %cred6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred6, align 16
  %call7 = tail call ptr @audit_get_tty()
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid.i, align 8
  %uid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack = load i32, ptr %uid, align 4
  %13 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call11 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %13) #18
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %loginuid.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 121
  %16 = ptrtoint ptr %loginuid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %retval.sroa.0.0.copyload.i = load i32, ptr %loginuid.i, align 16
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.copyload.i, 0
  %call17 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #18
  %tobool18.not = icmp eq ptr %call7, null
  br i1 %tobool18.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call19 = tail call ptr @tty_name(ptr noundef nonnull %call7) #18
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi ptr [ %call19, %cond.true ], [ @.str.21, %do.end.cond.end_crit_edge ]
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %sessionid.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 122
  %19 = ptrtoint ptr %sessionid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sessionid.i, align 4
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.71, i32 noundef %11, i32 noundef %call11, i32 noundef %call17, ptr noundef %cond, i32 noundef %20)
  tail call void @tty_kref_put(ptr noundef %call7) #18
  %call23 = tail call i32 @audit_log_task_context(ptr noundef nonnull %call1)
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.22)
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %call30 = call ptr @__get_task_comm(ptr noundef nonnull %comm, i32 noundef 16, ptr noundef %22) #18
  %call.i = call i32 @strlen(ptr noundef %call30) #25
  %add.ptr.i.i.i = getelementptr i8, ptr %call30, i32 %call.i
  %cmp16.i.i.i = icmp ugt ptr %add.ptr.i.i.i, %call30
  br i1 %cmp16.i.i.i, label %for.body.i.preheader.i.i, label %cond.end.if.else.i.i_crit_edge

cond.end.if.else.i.i_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i.i

for.body.i.preheader.i.i:                         ; preds = %cond.end
  %23 = ptrtoint ptr %call30 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %call30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %24)
  %cmp1.i7.i.i = icmp eq i8 %24, 34
  %25 = add i8 %24, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %25)
  %26 = icmp ult i8 %25, -94
  %27 = or i1 %cmp1.i7.i.i, %26
  br i1 %27, label %for.body.i.preheader.i.i.if.then.i.i_crit_edge, label %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge

for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge: ; preds = %for.body.i.preheader.i.i
  br label %for.cond.i.i.i

for.body.i.preheader.i.i.if.then.i.i_crit_edge:   ; preds = %for.body.i.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge
  %p.017.i8.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ %call30, %for.body.i.preheader.i.i.for.cond.i.i.i_crit_edge ]
  %incdec.ptr.i.i.i = getelementptr i8, ptr %p.017.i8.i.i, i32 1
  %exitcond.not.i.i.i = icmp eq ptr %incdec.ptr.i.i.i, %add.ptr.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.if.else.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.else.i.i_crit_edge:             ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %28 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %29)
  %cmp1.i.i.i = icmp eq i8 %29, 34
  %30 = add i8 %29, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %30)
  %31 = icmp ult i8 %30, -94
  %32 = or i1 %cmp1.i.i.i, %31
  br i1 %32, label %audit_string_contains_control.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.i.i

audit_string_contains_control.exit.i.i:           ; preds = %for.body.i.i.i
  %cmp.i.le.i.i = icmp ult ptr %incdec.ptr.i.i.i, %add.ptr.i.i.i
  br i1 %cmp.i.le.i.i, label %audit_string_contains_control.exit.i.i.if.then.i.i_crit_edge, label %audit_string_contains_control.exit.i.i.if.else.i.i_crit_edge

audit_string_contains_control.exit.i.i.if.else.i.i_crit_edge: ; preds = %audit_string_contains_control.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i.i

audit_string_contains_control.exit.i.i.if.then.i.i_crit_edge: ; preds = %audit_string_contains_control.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %audit_string_contains_control.exit.i.i.if.then.i.i_crit_edge, %for.body.i.preheader.i.i.if.then.i.i_crit_edge
  call void @audit_log_n_hex(ptr noundef nonnull %call1, ptr noundef %call30, i32 noundef %call.i) #18
  br label %audit_log_untrustedstring.exit

if.else.i.i:                                      ; preds = %audit_string_contains_control.exit.i.i.if.else.i.i_crit_edge, %for.cond.i.i.i.if.else.i.i_crit_edge, %cond.end.if.else.i.i_crit_edge
  call void @audit_log_n_string(ptr noundef nonnull %call1, ptr noundef %call30, i32 noundef %call.i) #18
  br label %audit_log_untrustedstring.exit

audit_log_untrustedstring.exit:                   ; preds = %if.else.i.i, %if.then.i.i
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 53
  %35 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mm, align 8
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %audit_log_untrustedstring.exit.out_null.i_crit_edge, label %if.end.i

audit_log_untrustedstring.exit.out_null.i_crit_edge: ; preds = %audit_log_untrustedstring.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_null.i

if.end.i:                                         ; preds = %audit_log_untrustedstring.exit
  %call.i46 = call ptr @get_mm_exe_file(ptr noundef nonnull %36) #18
  %tobool1.not.i = icmp eq ptr %call.i46, null
  br i1 %tobool1.not.i, label %if.end.i.out_null.i_crit_edge, label %if.end3.i

if.end.i.out_null.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_null.i

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %f_path.i = getelementptr inbounds %struct.file, ptr %call.i46, i32 0, i32 1
  call void @audit_log_d_path(ptr noundef nonnull %call1, ptr noundef nonnull @.str.18, ptr noundef %f_path.i) #18
  call void @fput(ptr noundef nonnull %call.i46) #18
  br label %audit_log_d_path_exe.exit

out_null.i:                                       ; preds = %if.end.i.out_null.i_crit_edge, %audit_log_untrustedstring.exit.out_null.i_crit_edge
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.19) #18
  br label %audit_log_d_path_exe.exit

audit_log_d_path_exe.exit:                        ; preds = %out_null.i, %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool33.not = icmp eq i32 %err, 0
  %lnot.ext = zext i1 %tobool33.not to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.72, i32 noundef %group, ptr noundef %op, i32 noundef %lnot.ext)
  call void @audit_log_end(ptr noundef nonnull %call1)
  br label %cleanup

cleanup:                                          ; preds = %audit_log_d_path_exe.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %comm) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netlink_kernel_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_kernel_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kauditd_send_queue(ptr noundef %sk, i32 noundef %portid, ptr noundef %queue, i32 noundef %retry_limit, ptr noundef readonly %skb_hook, ptr noundef readonly %err_hook) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %prev.i = getelementptr inbounds %struct.anon.69, ptr %queue, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i = icmp eq ptr %1, %queue
  %cmp.not545964 = icmp eq ptr %1, null
  %cmp.not5459 = or i1 %cmp.i, %cmp.not545964
  br i1 %cmp.not5459, label %entry.while.end_crit_edge, label %land.rhs.lr.ph.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

land.rhs.lr.ph.lr.ph:                             ; preds = %entry
  %tobool2.not = icmp eq ptr %skb_hook, null
  %tobool18.not = icmp eq ptr %err_hook, null
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %while.cond.outer.backedge.land.rhs.lr.ph_crit_edge, %land.rhs.lr.ph.lr.ph
  %failed.0.ph62 = phi i32 [ 0, %land.rhs.lr.ph.lr.ph ], [ %failed.0.ph.be, %while.cond.outer.backedge.land.rhs.lr.ph_crit_edge ]
  %rc.0.ph61 = phi i32 [ 0, %land.rhs.lr.ph.lr.ph ], [ %rc.0.ph.be, %while.cond.outer.backedge.land.rhs.lr.ph_crit_edge ]
  %sk.addr.0.ph60 = phi ptr [ %sk, %land.rhs.lr.ph.lr.ph ], [ null, %while.cond.outer.backedge.land.rhs.lr.ph_crit_edge ]
  %tobool3.not = icmp eq ptr %sk.addr.0.ph60, null
  %call185 = tail call ptr @skb_dequeue(ptr noundef %queue) #18
  %tobool.not86 = icmp eq ptr %call185, null
  br i1 %tobool.not86, label %land.rhs.lr.ph.while.end_crit_edge, label %land.rhs.lr.ph.while.body_crit_edge

land.rhs.lr.ph.while.body_crit_edge:              ; preds = %land.rhs.lr.ph
  br label %while.body

land.rhs.lr.ph.while.end_crit_edge:               ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

land.rhs:                                         ; preds = %if.else24
  %call1 = tail call ptr @skb_dequeue(ptr noundef %queue) #18
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %land.rhs.while.end_crit_edge, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %land.rhs.lr.ph.while.body_crit_edge
  %call188 = phi ptr [ %call1, %land.rhs.while.body_crit_edge ], [ %call185, %land.rhs.lr.ph.while.body_crit_edge ]
  %failed.05687 = phi i32 [ 0, %land.rhs.while.body_crit_edge ], [ %failed.0.ph62, %land.rhs.lr.ph.while.body_crit_edge ]
  br i1 %tobool2.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %skb_hook(ptr noundef nonnull %call188) #18, !callees !367
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  br i1 %tobool3.not, label %if.then4, label %retry.preheader

retry.preheader:                                  ; preds = %if.end
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %call188, i32 0, i32 21
  br label %retry

if.then4:                                         ; preds = %if.end
  br i1 %tobool18.not, label %if.then4.while.cond.outer.backedge_crit_edge, label %if.then6

if.then4.while.cond.outer.backedge_crit_edge:     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.outer.backedge

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %err_hook(ptr noundef nonnull %call188, i32 noundef -111) #18, !callees !368
  br label %while.cond.outer.backedge

retry:                                            ; preds = %switch.early.test.retry_crit_edge, %retry.preheader
  %failed.1 = phi i32 [ %inc, %switch.early.test.retry_crit_edge ], [ %failed.05687, %retry.preheader ]
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #18
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #18, !srcloc !358
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %retry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !348

retry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %retry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !346

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %retry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %retry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #18
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %call10 = tail call i32 @netlink_unicast(ptr noundef nonnull %sk.addr.0.ph60, ptr noundef nonnull %call188, i32 noundef %portid, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else24

if.then12:                                        ; preds = %skb_get.exit
  %failed.1.fr = freeze i32 %failed.1
  %inc = add i32 %failed.1.fr, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %retry_limit)
  %cmp13.not.not = icmp ult i32 %inc, %retry_limit
  br i1 %cmp13.not.not, label %switch.early.test, label %if.then12.if.then17_crit_edge

if.then12.if.then17_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then17

switch.early.test:                                ; preds = %if.then12
  %4 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %call10, label %switch.early.test.retry_crit_edge [
    i32 -1, label %switch.early.test.if.then17_crit_edge
    i32 -111, label %switch.early.test.if.then17_crit_edge100
  ]

switch.early.test.if.then17_crit_edge100:         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then17

switch.early.test.if.then17_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then17

switch.early.test.retry_crit_edge:                ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #20
  br label %retry

if.then17:                                        ; preds = %switch.early.test.if.then17_crit_edge, %switch.early.test.if.then17_crit_edge100, %if.then12.if.then17_crit_edge
  br i1 %tobool18.not, label %if.then17.if.end20_crit_edge, label %if.then19

if.then17.if.end20_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %err_hook(ptr noundef nonnull %call188, i32 noundef %call10) #18, !callees !368
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then17.if.end20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call10)
  %cmp21 = icmp eq i32 %call10, -11
  %spec.store.select = select i1 %cmp21, i32 0, i32 %call10
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.end20, %if.then6, %if.then4.while.cond.outer.backedge_crit_edge
  %rc.0.ph.be = phi i32 [ %spec.store.select, %if.end20 ], [ %rc.0.ph61, %if.then6 ], [ %rc.0.ph61, %if.then4.while.cond.outer.backedge_crit_edge ]
  %failed.0.ph.be = phi i32 [ %inc, %if.end20 ], [ %failed.0.ph62, %if.then6 ], [ %failed.0.ph62, %if.then4.while.cond.outer.backedge_crit_edge ]
  %cmp.not54 = icmp eq ptr %call188, %1
  br i1 %cmp.not54, label %while.cond.outer.backedge.while.end_crit_edge, label %while.cond.outer.backedge.land.rhs.lr.ph_crit_edge

while.cond.outer.backedge.land.rhs.lr.ph_crit_edge: ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs.lr.ph

while.cond.outer.backedge.while.end_crit_edge:    ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.else24:                                        ; preds = %skb_get.exit
  tail call void @consume_skb(ptr noundef nonnull %call188) #18
  %cmp.not = icmp eq ptr %call188, %1
  br i1 %cmp.not, label %if.else24.while.end_crit_edge, label %land.rhs

if.else24.while.end_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %if.else24.while.end_crit_edge, %while.cond.outer.backedge.while.end_crit_edge, %land.rhs.while.end_crit_edge, %land.rhs.lr.ph.while.end_crit_edge, %entry.while.end_crit_edge
  %rc.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %call10, %land.rhs.while.end_crit_edge ], [ %call10, %if.else24.while.end_crit_edge ], [ %rc.0.ph.be, %while.cond.outer.backedge.while.end_crit_edge ], [ %rc.0.ph61, %land.rhs.lr.ph.while.end_crit_edge ]
  %5 = tail call i32 @llvm.smin.i32(i32 %rc.0.lcssa, i32 0)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kauditd_send_multicast_skb(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @audit_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef nonnull @init_net, i32 noundef %0) #18
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call.i, align 4
  %call1 = tail call i32 @netlink_has_listeners(ptr noundef %2, i32 noundef 1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 3264) #18
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 19
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %4, align 4
  %dst_group.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 3, i32 16
  %8 = ptrtoint ptr %dst_group.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %dst_group.i, align 8
  %call.i14 = tail call i32 @netlink_broadcast(ptr noundef %2, ptr noundef nonnull %call2, i32 noundef 0, i32 noundef 1, i32 noundef 3264) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kauditd_retry_skb(ptr noundef %skb, i32 noundef %error) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @audit_backlog_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @audit_retry_queue, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %0)
  %cmp = icmp ult i32 %1, %0
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @skb_queue_tail(ptr noundef nonnull @audit_retry_queue, ptr noundef %skb) #18
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 16
  %nlmsg_type.i = getelementptr inbounds %struct.nlmsghdr, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nlmsg_type.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nlmsg_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1320, i16 %5)
  %cmp.not.i = icmp eq i16 %5, 1320
  br i1 %cmp.not.i, label %if.end.kauditd_printk_skb.exit_crit_edge, label %land.lhs.true.i

if.end.kauditd_printk_skb.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %kauditd_printk_skb.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call3.i = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.kauditd_printk_skb) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.kauditd_printk_skb.exit_crit_edge, label %do.end.i

land.lhs.true.i.kauditd_printk_skb.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kauditd_printk_skb.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %nlmsg_type.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nlmsg_type.i, align 4
  %conv5.i = zext i16 %7 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %conv5.i, ptr noundef %add.ptr.i.i) #21
  br label %kauditd_printk_skb.exit

kauditd_printk_skb.exit:                          ; preds = %do.end.i, %land.lhs.true.i.kauditd_printk_skb.exit_crit_edge, %if.end.kauditd_printk_skb.exit_crit_edge
  tail call void @audit_log_lost(ptr noundef nonnull @.str.60)
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  br label %return

return:                                           ; preds = %kauditd_printk_skb.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_has_listeners(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { nobuiltin }
attributes #24 = { nounwind allocsize(2) }
attributes #25 = { nobuiltin nounwind }
attributes #26 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !15, !16, !18, !20, !22, !23, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114, !115, !117, !118, !120, !122, !124, !126, !127, !129, !131, !133, !135, !136, !138, !139, !140, !141, !142, !143, !145, !147, !149, !151, !153, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !209, !211, !212, !214, !216, !218, !220, !222, !223, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !259, !261, !263, !265, !267, !269, !270, !271, !272, !274, !275, !276, !278, !279, !280, !281, !282, !283, !285, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !300, !302, !303, !305, !306, !308, !310, !312, !314, !316, !318, !319, !321, !323, !325, !327, !329}
!llvm.named.register.sp = !{!331}
!llvm.module.flags = !{!332, !333, !334, !335, !336, !337, !338, !339}
!llvm.ident = !{!340}

!0 = !{ptr @audit_enabled, !1, !"audit_enabled", i1 false, i1 false}
!1 = !{!"../kernel/audit.c", i32 72, i32 6}
!2 = !{ptr @audit_ever_enabled, !3, !"audit_ever_enabled", i1 false, i1 false}
!3 = !{!"../kernel/audit.c", i32 73, i32 7}
!4 = !{ptr @__ksymtab_audit_enabled, !5, !"__ksymtab_audit_enabled", i1 false, i1 false}
!5 = !{!"../kernel/audit.c", i32 75, i32 1}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../kernel/audit.c", i32 224, i32 7}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__func__.audit_panic, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/audit.c", i32 308, i32 7}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/audit.c", i32 309, i32 4}
!14 = !{ptr @audit_panic._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @audit_panic._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/audit.c", i32 312, i32 9}
!18 = !{ptr @audit_log_lost.last_msg, !19, !"last_msg", i1 false, i1 false}
!19 = !{!"../kernel/audit.c", i32 356, i32 23}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/audit.c", i32 357, i32 9}
!22 = !{ptr @audit_log_lost.lock, !21, !"lock", i1 false, i1 false}
!23 = !{ptr @__func__.audit_log_lost, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../kernel/audit.c", i32 377, i32 7}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/audit.c", i32 378, i32 4}
!27 = !{ptr @audit_log_lost._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @audit_log_lost._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__initcall__kmod_audit__493_1714_audit_init2, !30, !"__initcall__kmod_audit__493_1714_audit_init2", i1 false, i1 false}
!30 = !{!"../kernel/audit.c", i32 1714, i32 1}
!31 = !{ptr @__setup_audit_enable, !32, !"__setup_audit_enable", i1 false, i1 false}
!32 = !{!"../kernel/audit.c", i32 1742, i32 1}
!33 = !{ptr @__setup_audit_backlog_limit_set, !34, !"__setup_audit_backlog_limit_set", i1 false, i1 false}
!34 = !{!"../kernel/audit.c", i32 1762, i32 1}
!35 = !{ptr @audit_serial.serial, !36, !"serial", i1 false, i1 false}
!36 = !{!"../kernel/audit.c", i32 1817, i32 18}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../kernel/audit.c", i32 1885, i32 5}
!39 = !{ptr @__func__.audit_log_start, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/audit.c", i32 1890, i32 31}
!41 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/audit.c", i32 1891, i32 6}
!43 = !{ptr @audit_log_start._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @audit_log_start._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.7, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/audit.c", i32 1894, i32 20}
!47 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/audit.c", i32 1902, i32 18}
!49 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/audit.c", i32 1910, i32 23}
!51 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/audit.c", i32 2133, i32 24}
!53 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../kernel/audit.c", i32 2138, i32 24}
!55 = !{ptr @.str.12, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../kernel/audit.c", i32 2144, i32 24}
!57 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../kernel/audit.c", i32 2155, i32 23}
!59 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../kernel/audit.c", i32 2160, i32 23}
!61 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../kernel/audit.c", i32 2164, i32 24}
!63 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../kernel/audit.c", i32 2185, i32 23}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../kernel/audit.c", i32 2190, i32 14}
!67 = !{ptr @__ksymtab_audit_log_task_context, !68, !"__ksymtab_audit_log_task_context", i1 false, i1 false}
!68 = !{!"../kernel/audit.c", i32 2193, i32 1}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../kernel/audit.c", i32 2207, i32 23}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../kernel/audit.c", i32 2211, i32 23}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../kernel/audit.c", i32 2240, i32 9}
!75 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../kernel/audit.c", i32 2243, i32 5}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../kernel/audit.c", i32 2257, i32 27}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../kernel/audit.c", i32 2260, i32 23}
!81 = !{ptr @__ksymtab_audit_log_task_info, !82, !"__ksymtab_audit_log_task_info", i1 false, i1 false}
!82 = !{!"../kernel/audit.c", i32 2265, i32 1}
!83 = distinct !{null, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../kernel/audit.c", i32 2283, i32 23}
!85 = distinct !{null, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../kernel/audit.c", i32 2285, i32 23}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../kernel/audit.c", i32 2384, i32 15}
!89 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../kernel/audit.c", i32 2431, i32 18}
!91 = !{ptr @__ksymtab_audit_log_start, !92, !"__ksymtab_audit_log_start", i1 false, i1 false}
!92 = !{!"../kernel/audit.c", i32 2463, i32 1}
!93 = !{ptr @__ksymtab_audit_log_end, !94, !"__ksymtab_audit_log_end", i1 false, i1 false}
!94 = !{!"../kernel/audit.c", i32 2464, i32 1}
!95 = !{ptr @__ksymtab_audit_log_format, !96, !"__ksymtab_audit_log_format", i1 false, i1 false}
!96 = !{!"../kernel/audit.c", i32 2465, i32 1}
!97 = !{ptr @__ksymtab_audit_log, !98, !"__ksymtab_audit_log", i1 false, i1 false}
!98 = !{!"../kernel/audit.c", i32 2466, i32 1}
!99 = !{ptr @auditd_conn, !100, !"auditd_conn", i1 false, i1 false}
!100 = !{!"../kernel/audit.c", i32 111, i32 40}
!101 = !{ptr @audit_rate_limit, !102, !"audit_rate_limit", i1 false, i1 false}
!102 = !{!"../kernel/audit.c", i32 117, i32 12}
!103 = !{ptr @audit_sig_sid, !104, !"audit_sig_sid", i1 false, i1 false}
!104 = !{!"../kernel/audit.c", i32 128, i32 13}
!105 = !{ptr @audit_inode_hash, !106, !"audit_inode_hash", i1 false, i1 false}
!106 = !{!"../kernel/audit.c", i32 145, i32 18}
!107 = !{ptr @audit_queue, !108, !"audit_queue", i1 false, i1 false}
!108 = !{!"../kernel/audit.c", i32 150, i32 28}
!109 = !{ptr @audit_cmd_mutex, !110, !"audit_cmd_mutex", i1 false, i1 false}
!110 = !{!"../kernel/audit.c", i32 187, i32 3}
!111 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!112 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!113 = !{ptr @.str.26, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.27, !112, !"<string literal>", i1 false, i1 false}
!115 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!116 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!117 = !{ptr @.str.28, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @audit_failure, !119, !"audit_failure", i1 false, i1 false}
!119 = !{!"../kernel/audit.c", i32 81, i32 12}
!120 = !{ptr @audit_lost, !121, !"audit_lost", i1 false, i1 false}
!121 = !{!"../kernel/audit.c", i32 137, i32 17}
!122 = !{ptr @audit_backlog_limit, !123, !"audit_backlog_limit", i1 false, i1 false}
!123 = !{!"../kernel/audit.c", i32 121, i32 12}
!124 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!125 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!126 = !{ptr @.str.29, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @audit_net_id, !128, !"audit_net_id", i1 false, i1 false}
!128 = !{!"../kernel/audit.c", i32 84, i32 21}
!129 = !{ptr @af, !130, !"af", i1 false, i1 false}
!130 = !{!"../kernel/audit.c", i32 163, i32 30}
!131 = !{ptr @.str.30, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../kernel/audit.c", i32 1682, i32 41}
!133 = !{ptr @audit_init.__key, !134, !"__key", i1 false, i1 false}
!134 = !{!"../kernel/audit.c", i32 1693, i32 2}
!135 = !{ptr @.str.31, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.32, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../kernel/audit.c", i32 1696, i32 2}
!138 = !{ptr @.str.33, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @audit_init._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @audit_init._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.34, !137, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.35, !137, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.36, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../kernel/audit.c", i32 1702, i32 17}
!145 = !{ptr @.str.37, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../kernel/audit.c", i32 1705, i32 9}
!147 = !{ptr @.str.38, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../kernel/audit.c", i32 1709, i32 3}
!149 = !{ptr @audit_buffer_cache, !150, !"audit_buffer_cache", i1 false, i1 false}
!150 = !{!"../kernel/audit.c", i32 147, i32 27}
!151 = !{ptr @skb_queue_head_init.__key, !152, !"__key", i1 false, i1 false}
!152 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!153 = !{ptr @.str.39, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @audit_retry_queue, !155, !"audit_retry_queue", i1 false, i1 false}
!155 = !{!"../kernel/audit.c", i32 152, i32 28}
!156 = !{ptr @audit_hold_queue, !157, !"audit_hold_queue", i1 false, i1 false}
!157 = !{!"../kernel/audit.c", i32 154, i32 28}
!158 = distinct !{null, !159, !"audit_default", i1 false, i1 false}
!159 = !{!"../kernel/audit.c", i32 78, i32 12}
!160 = !{ptr @audit_net_ops, !161, !"audit_net_ops", i1 false, i1 false}
!161 = !{!"../kernel/audit.c", i32 1667, i32 33}
!162 = !{ptr @.str.40, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../kernel/audit.c", i32 1645, i32 15}
!164 = distinct !{null, !165, !"__already_done", i1 false, i1 false}
!165 = !{!"../kernel/audit.c", i32 1577, i32 3}
!166 = !{ptr @.str.41, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../kernel/audit.c", i32 1283, i32 30}
!168 = !{ptr @.str.42, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../kernel/audit.c", i32 1342, i32 28}
!170 = !{ptr @.str.43, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../kernel/audit.c", i32 1348, i32 28}
!172 = !{ptr @.str.44, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../kernel/audit.c", i32 1388, i32 26}
!174 = !{ptr @.str.45, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../kernel/audit.c", i32 1392, i32 26}
!176 = !{ptr @.str.46, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../kernel/audit.c", i32 1407, i32 25}
!178 = !{ptr @.str.47, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../kernel/audit.c", i32 1409, i32 7}
!180 = !{ptr @.str.48, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../kernel/audit.c", i32 1409, i32 20}
!182 = !{ptr @.str.49, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../kernel/audit.c", i32 1423, i32 24}
!184 = !{ptr @.str.50, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../kernel/audit.c", i32 1454, i32 24}
!186 = !{ptr @.str.51, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../kernel/audit.c", i32 1456, i32 24}
!188 = !{ptr @.str.52, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../kernel/audit.c", i32 1458, i32 24}
!190 = !{ptr @.str.53, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../kernel/audit.c", i32 1522, i32 24}
!192 = distinct !{null, !193, !"__warned", i1 false, i1 false}
!193 = !{!"../kernel/audit.c", i32 1037, i32 6}
!194 = distinct !{null, !195, !"__warned", i1 false, i1 false}
!195 = !{!"../kernel/audit.c", i32 273, i32 7}
!196 = !{ptr @.str.54, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../kernel/audit.c", i32 1008, i32 8}
!198 = !{ptr @.str.55, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../kernel/audit.c", i32 453, i32 31}
!200 = !{ptr @.str.56, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../kernel/audit.c", i32 467, i32 32}
!202 = distinct !{null, !203, !"__warned", i1 false, i1 false}
!203 = !{!"../kernel/audit.c", i32 695, i32 7}
!204 = !{ptr @.str.57, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../kernel/audit.c", i32 395, i32 23}
!206 = distinct !{null, !207, !"__warned", i1 false, i1 false}
!207 = !{!"../kernel/audit.c", i32 514, i32 11}
!208 = !{ptr @.str.58, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.59, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../kernel/audit.c", i32 112, i32 8}
!211 = !{ptr @auditd_conn_lock, !210, !"auditd_conn_lock", i1 false, i1 false}
!212 = distinct !{null, !213, !"__warned", i1 false, i1 false}
!213 = !{!"../kernel/audit.c", i32 649, i32 11}
!214 = !{ptr @.str.60, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../kernel/audit.c", i32 589, i32 18}
!216 = !{ptr @.str.61, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../kernel/audit.c", i32 601, i32 17}
!218 = !{ptr @__func__.kauditd_printk_skb, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../kernel/audit.c", i32 537, i32 38}
!220 = !{ptr @.str.62, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../kernel/audit.c", i32 538, i32 3}
!222 = !{ptr @kauditd_printk_skb._entry, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @kauditd_printk_skb._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.63, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../kernel/audit.c", i32 433, i32 32}
!226 = !{ptr @.str.64, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../kernel/audit.c", i32 438, i32 32}
!228 = !{ptr @.str.65, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../kernel/audit.c", i32 443, i32 32}
!230 = !{ptr @.str.66, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../kernel/audit.c", i32 1132, i32 23}
!232 = !{ptr @.str.67, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../kernel/audit.c", i32 169, i32 2}
!234 = !{ptr @.str.68, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../kernel/audit.c", i32 170, i32 2}
!236 = !{ptr @audit_feature_names, !237, !"audit_feature_names", i1 false, i1 false}
!237 = !{!"../kernel/audit.c", i32 168, i32 14}
!238 = distinct !{null, !239, !"__warned", i1 false, i1 false}
!239 = !{!"../kernel/audit.c", i32 1081, i32 39}
!240 = !{ptr @.str.69, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../kernel/audit.c", i32 1092, i32 24}
!242 = !{ptr @.str.70, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../kernel/audit.c", i32 1622, i32 29}
!244 = distinct !{null, !245, !"__warned", i1 false, i1 false}
!245 = !{!"../kernel/audit.c", i32 1598, i32 9}
!246 = !{ptr @.str.71, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../kernel/audit.c", i32 1600, i32 23}
!248 = !{ptr @.str.72, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../kernel/audit.c", i32 1611, i32 23}
!250 = !{ptr @.str.73, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../kernel/audit.c", i32 1628, i32 29}
!252 = distinct !{null, !253, !"__warned", i1 false, i1 false}
!253 = !{!"../kernel/audit.c", i32 847, i32 8}
!254 = !{ptr @.str.74, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!256 = !{ptr @kauditd_task, !257, !"kauditd_task", i1 false, i1 false}
!257 = !{!"../kernel/audit.c", i32 157, i32 28}
!258 = !{ptr @__setup_str_audit_enable, !32, !"__setup_str_audit_enable", i1 false, i1 false}
!259 = !{ptr @.str.75, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../kernel/audit.c", i32 1722, i32 23}
!261 = !{ptr @.str.76, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../kernel/audit.c", i32 1722, i32 46}
!263 = !{ptr @.str.77, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../kernel/audit.c", i32 1724, i32 28}
!265 = !{ptr @.str.78, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../kernel/audit.c", i32 1724, i32 50}
!267 = !{ptr @.str.79, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../kernel/audit.c", i32 1727, i32 3}
!269 = !{ptr @.str.80, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @audit_enable._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @audit_enable._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.82, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../kernel/audit.c", i32 1734, i32 3}
!274 = !{ptr @audit_enable._entry.81, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @audit_enable._entry_ptr.83, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.85, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../kernel/audit.c", i32 1737, i32 2}
!278 = !{ptr @audit_enable._entry.84, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @audit_enable._entry_ptr.86, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.87, !277, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.88, !277, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @__setup_str_audit_backlog_limit_set, !34, !"__setup_str_audit_backlog_limit_set", i1 false, i1 false}
!283 = !{ptr @.str.89, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../kernel/audit.c", i32 1750, i32 2}
!285 = !{ptr @.str.90, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @audit_backlog_limit_set._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @audit_backlog_limit_set._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.92, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../kernel/audit.c", i32 1752, i32 3}
!290 = !{ptr @audit_backlog_limit_set._entry.91, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @audit_backlog_limit_set._entry_ptr.93, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.95, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../kernel/audit.c", i32 1758, i32 2}
!294 = !{ptr @audit_backlog_limit_set._entry.94, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @audit_backlog_limit_set._entry_ptr.96, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @audit_initialized, !297, !"audit_initialized", i1 false, i1 false}
!297 = !{!"../kernel/audit.c", i32 70, i32 12}
!298 = !{ptr @audit_backlog_wait_time, !299, !"audit_backlog_wait_time", i1 false, i1 false}
!299 = !{!"../kernel/audit.c", i32 123, i32 12}
!300 = !{ptr @.str.97, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../kernel/audit.c", i32 158, i32 8}
!302 = !{ptr @kauditd_wait, !301, !"kauditd_wait", i1 false, i1 false}
!303 = !{ptr @.str.98, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../kernel/audit.c", i32 161, i32 8}
!305 = !{ptr @audit_backlog_wait, !304, !"audit_backlog_wait", i1 false, i1 false}
!306 = !{ptr @audit_backlog_wait_time_actual, !307, !"audit_backlog_wait_time_actual", i1 false, i1 false}
!307 = !{!"../kernel/audit.c", i32 142, i32 17}
!308 = !{ptr @audit_rate_check.last_check, !309, !"last_check", i1 false, i1 false}
!309 = !{!"../kernel/audit.c", i32 319, i32 23}
!310 = !{ptr @audit_rate_check.messages, !311, !"messages", i1 false, i1 false}
!311 = !{!"../kernel/audit.c", i32 320, i32 14}
!312 = !{ptr @audit_rate_check.lock, !313, !"lock", i1 false, i1 false}
!313 = !{!"../kernel/audit.c", i32 321, i32 9}
!314 = !{ptr @.str.99, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../kernel/audit.c", i32 1932, i32 18}
!316 = distinct !{null, !317, !"__warned", i1 false, i1 false}
!317 = !{!"../include/linux/sched.h", i32 1603, i32 25}
!318 = !{ptr @.str.100, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @session_id, !320, !"session_id", i1 false, i1 false}
!320 = !{!"../kernel/audit.c", i32 2290, i32 17}
!321 = distinct !{null, !322, !"__warned", i1 false, i1 false}
!322 = !{!"../kernel/audit.c", i32 2325, i32 33}
!323 = !{ptr @.str.101, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../kernel/audit.c", i32 2330, i32 23}
!325 = !{ptr @.str.102, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../kernel/audit.c", i32 2332, i32 23}
!327 = !{ptr @audit_sig_pid, !328, !"audit_sig_pid", i1 false, i1 false}
!328 = !{!"../kernel/audit.c", i32 127, i32 15}
!329 = distinct !{null, !330, !"audit_sig_uid", i1 false, i1 false}
!330 = !{!"../kernel/audit.c", i32 126, i32 16}
!331 = !{!"sp"}
!332 = !{i32 1, !"wchar_size", i32 2}
!333 = !{i32 1, !"min_enum_size", i32 4}
!334 = !{i32 8, !"branch-target-enforcement", i32 0}
!335 = !{i32 8, !"sign-return-address", i32 0}
!336 = !{i32 8, !"sign-return-address-all", i32 0}
!337 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!338 = !{i32 7, !"uwtable", i32 1}
!339 = !{i32 7, !"frame-pointer", i32 2}
!340 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!341 = !{i64 2150069284}
!342 = !{i64 2150069550}
!343 = !{i64 2148208406, i64 2148208432, i64 2148208461, i64 2148208495, i64 2148208526, i64 2148208549}
!344 = !{i64 2148297937}
!345 = !{i64 2148212401, i64 2148212433, i64 2148212462, i64 2148212496, i64 2148212527, i64 2148212550}
!346 = !{!"branch_weights", i32 2000, i32 1}
!347 = !{i64 2150019741}
!348 = !{!"branch_weights", i32 1, i32 2000}
!349 = !{i8 0, i8 2}
!350 = !{!"auto-init"}
!351 = !{i64 2148293817}
!352 = !{i64 2148209126, i64 2148209158, i64 2148209187, i64 2148209221, i64 2148209252, i64 2148209275}
!353 = !{i64 2148294046}
!354 = !{i64 2157844614}
!355 = !{i64 2157847085, i64 2157847565, i64 2157847122, i64 2157847178, i64 2157847212, i64 2157847236, i64 2157847277, i64 2157847298, i64 2157847326, i64 2157847360}
!356 = !{i64 2157850564, i64 2157855105, i64 2157850601, i64 2157850657, i64 2157850691, i64 2157850715, i64 2157850756, i64 2157850777, i64 2157850805, i64 2157850839}
!357 = !{i64 2157856195, i64 2157856675, i64 2157856232, i64 2157856288, i64 2157856322, i64 2157856346, i64 2157856387, i64 2157856408, i64 2157856436, i64 2157856470}
!358 = !{i64 2148209936, i64 2148209968, i64 2148209997, i64 2148210031, i64 2148210062, i64 2148210085}
!359 = !{i64 2157522882}
!360 = !{i64 2157770299}
!361 = !{i64 2148471070}
!362 = !{i64 715174, i64 715191, i64 715215, i64 715241, i64 715259}
!363 = !{i64 2148471440}
!364 = !{i64 2157814094}
!365 = !{i64 2157814437}
!366 = !{i64 2157819724}
!367 = !{ptr @kauditd_send_multicast_skb}
!368 = distinct !{ptr @kauditd_hold_skb, null, ptr @kauditd_retry_skb}
