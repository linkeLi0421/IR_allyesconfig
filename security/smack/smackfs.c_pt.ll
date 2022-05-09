; ModuleID = '/llk/IR_all_yes/security/smack/smackfs.c_pt.bc'
source_filename = "../security/smack/smackfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.smack_known = type { %struct.list_head, %struct.hlist_node, ptr, i32, %struct.netlbl_lsm_secattr, %struct.list_head, %struct.mutex }
%struct.netlbl_lsm_secattr = type { i32, i32, ptr, ptr, %struct.anon }
%struct.anon = type { %struct.anon.0, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_descr = type { ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.18, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.73, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.73 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.71, i32, %struct.spinlock }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { ptr, ptr }
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
%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.netlbl_audit = type { i32, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.116, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.94 }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.116 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.81 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.81 = type { %struct.callback_head }
%struct.cipso_v4_doi = type { i32, i32, %union.anon.158, [5 x i8], %struct.refcount_struct, %struct.list_head, %struct.callback_head }
%union.anon.158 = type { ptr }
%struct.smack_parsed_rule = type { ptr, ptr, i32, i32 }
%struct.smack_rule = type { %struct.list_head, ptr, ptr, i32 }
%struct.netlbl_lsm_catmap = type { i32, [4 x i64], ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.smk_net4addr = type { %struct.list_head, %struct.in_addr, %struct.in_addr, i32, ptr }
%struct.smack_known_list_elem = type { %struct.list_head, ptr }
%struct.task_smack = type { ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head }
%struct.in6_addr = type { %union.anon.67 }
%union.anon.67 = type { [4 x i32] }
%struct.smk_net6addr = type { %struct.list_head, %struct.in6_addr, %struct.in6_addr, i32, ptr }

@smack_cipso_direct = dso_local global { i32, [28 x i8] } { i32 250, [28 x i8] zeroinitializer }, align 32
@smack_cipso_mapped = dso_local global { i32, [28 x i8] } { i32 251, [28 x i8] zeroinitializer }, align 32
@smack_ptrace_rule = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@smk_net4addr_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @smk_net4addr_list, ptr @smk_net4addr_list }, [24 x i8] zeroinitializer }, align 32
@smk_net6addr_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @smk_net6addr_list, ptr @smk_net6addr_list }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_smack__541_3035_init_smk_fs6 = internal global ptr @init_smk_fs, section ".initcall6.init", align 4
@smack_net_ambient = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@smack_unconfined = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@smack_syslog_label = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@smack_enabled = external dso_local local_unnamed_addr global i32, section ".init.data", align 4
@init_smk_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 3001, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013smackfs: sysfs mountpoint problem.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"init_smk_fs\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"security/smack/smackfs.c\00", [39 x i8] zeroinitializer }, align 32
@init_smk_fs._entry_ptr = internal global ptr @init_smk_fs._entry, section ".printk_index", align 4
@smk_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.6, i32 0, ptr @smk_init_fs_context, ptr null, ptr null, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@smackfs_mount = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@init_smk_fs._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 3007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013smackfs:  could not mount!\0A\00", [34 x i8] zeroinitializer }, align 32
@init_smk_fs._entry_ptr.5 = internal global ptr @init_smk_fs._entry.3, section ".printk_index", align 4
@smack_known_floor = external dso_local global %struct.smack_known, align 4
@smack_known_hat = external dso_local global %struct.smack_known, align 4
@smack_known_huh = external dso_local global %struct.smack_known, align 4
@smack_known_star = external dso_local global %struct.smack_known, align 4
@smack_known_web = external dso_local global %struct.smack_known, align 4
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smackfs\00", [24 x i8] zeroinitializer }, align 32
@smk_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr null, ptr null, ptr null, ptr null, ptr @smk_get_tree, ptr null }, [40 x i8] zeroinitializer }, align 32
@smk_fill_super.smack_files = internal constant { [26 x %struct.tree_descr], [72 x i8] } { [26 x %struct.tree_descr] [%struct.tree_descr zeroinitializer, %struct.tree_descr zeroinitializer, %struct.tree_descr zeroinitializer, %struct.tree_descr { ptr @.str.7, ptr @smk_load_ops, i32 420 }, %struct.tree_descr { ptr @.str.8, ptr @smk_cipso_ops, i32 420 }, %struct.tree_descr { ptr @.str.9, ptr @smk_doi_ops, i32 420 }, %struct.tree_descr { ptr @.str.10, ptr @smk_direct_ops, i32 420 }, %struct.tree_descr { ptr @.str.11, ptr @smk_ambient_ops, i32 420 }, %struct.tree_descr { ptr @.str.12, ptr @smk_net4addr_ops, i32 420 }, %struct.tree_descr { ptr @.str.13, ptr @smk_onlycap_ops, i32 420 }, %struct.tree_descr { ptr @.str.14, ptr @smk_logging_ops, i32 420 }, %struct.tree_descr { ptr @.str.15, ptr @smk_load_self_ops, i32 438 }, %struct.tree_descr { ptr @.str.16, ptr @smk_access_ops, i32 438 }, %struct.tree_descr { ptr @.str.17, ptr @smk_mapped_ops, i32 420 }, %struct.tree_descr { ptr @.str.18, ptr @smk_load2_ops, i32 420 }, %struct.tree_descr { ptr @.str.19, ptr @smk_load_self2_ops, i32 438 }, %struct.tree_descr { ptr @.str.20, ptr @smk_access2_ops, i32 438 }, %struct.tree_descr { ptr @.str.21, ptr @smk_cipso2_ops, i32 420 }, %struct.tree_descr { ptr @.str.22, ptr @smk_revoke_subj_ops, i32 420 }, %struct.tree_descr { ptr @.str.23, ptr @smk_change_rule_ops, i32 420 }, %struct.tree_descr { ptr @.str.24, ptr @smk_syslog_ops, i32 420 }, %struct.tree_descr { ptr @.str.25, ptr @smk_ptrace_ops, i32 420 }, %struct.tree_descr { ptr @.str.26, ptr @smk_unconfined_ops, i32 420 }, %struct.tree_descr { ptr @.str.27, ptr @smk_net6addr_ops, i32 420 }, %struct.tree_descr { ptr @.str.28, ptr @smk_relabel_self_ops, i32 438 }, %struct.tree_descr { ptr @.str.29, ptr null, i32 0 }], [72 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"load\00", [27 x i8] zeroinitializer }, align 32
@smk_load_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @smk_write_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @smk_open_load, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cipso\00", [26 x i8] zeroinitializer }, align 32
@smk_cipso_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @smk_write_cipso, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @smk_open_cipso, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"doi\00", [28 x i8] zeroinitializer }, align 32
@smk_doi_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @smk_read_doi, ptr @smk_write_doi, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"direct\00", [25 x i8] zeroinitializer }, align 32
@smk_direct_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @smk_read_direct, ptr @smk_write_direct, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ambient\00", [24 x i8] zeroinitializer }, align 32
@smk_ambient_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @smk_read_ambient, ptr @smk_write_ambient, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"netlabel\00", [23 x i8] zeroinitializer }, align 32
@smk_net4addr_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @smk_write_net4addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @smk_open_net4addr, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"onlycap\00", [24 x i8] zeroinitializer }, align 32
@smk_onlycap_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @smk_write_onlycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @smk_open_onlycap, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"logging\00", [24 x i8] zeroinitializer }, align 32
@smk_logging_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @smk_read_logging, ptr @smk_write_logging, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"load-self\00", [22 x i8] zeroinitializer }, align 32
@smk_load_self_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @smk_write_load_self, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @smk_open_load_self, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"access\00", [25 x i8] zeroinitializer }, align 32
@smk_access_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @simple_transaction_read, ptr @smk_write_access, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @simple_transaction_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mapped\00", [25 x i8] zeroinitializer }, align 32
@smk_mapped_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @smk_read_mapped, ptr @smk_write_mapped, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"load2\00", [26 x i8] zeroinitializer }, align 32
@smk_load2_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @smk_write_load2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @smk_open_load2, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"load-self2\00", [21 x i8] zeroinitializer }, align 32
@smk_load_self2_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @smk_write_load_self2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @smk_open_load_self2, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"access2\00", [24 x i8] zeroinitializer }, align 32
@smk_access2_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @simple_transaction_read, ptr @smk_write_access2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @simple_transaction_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cipso2\00", [25 x i8] zeroinitializer }, align 32
@smk_cipso2_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @smk_write_cipso2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @smk_open_cipso2, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"revoke-subject\00", [17 x i8] zeroinitializer }, align 32
@smk_revoke_subj_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @simple_transaction_read, ptr @smk_write_revoke_subj, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @simple_transaction_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"change-rule\00", [20 x i8] zeroinitializer }, align 32
@smk_change_rule_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @simple_transaction_read, ptr @smk_write_change_rule, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @simple_transaction_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syslog\00", [25 x i8] zeroinitializer }, align 32
@smk_syslog_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @smk_read_syslog, ptr @smk_write_syslog, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ptrace\00", [25 x i8] zeroinitializer }, align 32
@smk_ptrace_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @smk_read_ptrace, ptr @smk_write_ptrace, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unconfined\00", [21 x i8] zeroinitializer }, align 32
@smk_unconfined_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @smk_read_unconfined, ptr @smk_write_unconfined, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipv6host\00", [23 x i8] zeroinitializer }, align 32
@smk_net6addr_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @smk_write_net6addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @smk_open_net6addr, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"relabel-self\00", [19 x i8] zeroinitializer }, align 32
@smk_relabel_self_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @smk_write_relabel_self, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @smk_open_relabel_self, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@smk_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 2936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s failed %d while creating inodes\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smk_fill_super\00", [17 x i8] zeroinitializer }, align 32
@smk_fill_super._entry_ptr = internal global ptr @smk_fill_super._entry, section ".printk_index", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@smk_set_access.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@smack_rule_cache = external dso_local local_unnamed_addr global ptr, align 4
@load_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @load2_seq_start, ptr @smk_seq_stop, ptr @load2_seq_next, ptr @load_seq_show }, [16 x i8] zeroinitializer }, align 32
@smack_known_list = external dso_local global %struct.list_head, align 4
@smk_seq_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@smk_seq_start.__warned.34 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@smk_seq_next.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@load_seq_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@smack_cipso_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.41, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @smack_cipso_lock, i64 52), ptr getelementptr (i8, ptr @smack_cipso_lock, i64 52) }, ptr @smack_cipso_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"smack_cipso_lock.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smack_cipso_lock\00", [47 x i8] zeroinitializer }, align 32
@cipso_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @cipso_seq_start, ptr @smk_seq_stop, ptr @cipso_seq_next, ptr @cipso_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %3d\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%c%d\00", [27 x i8] zeroinitializer }, align 32
@smk_cipso_doi_value = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@smack_known_lock = external dso_local global %struct.mutex, align 4
@smk_write_direct.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@smack_ambient_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @smack_ambient_lock, i64 52), ptr getelementptr (i8, ptr @smack_ambient_lock, i64 52) }, ptr @smack_ambient_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.49, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"smack_ambient_lock.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smack_ambient_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%hhd.%hhd.%hhd.%hhd/%u %s\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%hhd.%hhd.%hhd.%hhd %s\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"-CIPSO\00", [25 x i8] zeroinitializer }, align 32
@smk_net4addr_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @smk_net4addr_lock, i64 52), ptr getelementptr (i8, ptr @smk_net4addr_lock, i64 52) }, ptr @smk_net4addr_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.54, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@smk_write_net4addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@init_net = external dso_local global %struct.net, align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"smk_net4addr_lock.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smk_net4addr_lock\00", [46 x i8] zeroinitializer }, align 32
@smack_blob_sizes = external dso_local local_unnamed_addr global %struct.lsm_blob_sizes, align 4
@smk_net4addr_insert.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net4addr_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @net4addr_seq_start, ptr @smk_seq_stop, ptr @net4addr_seq_next, ptr @net4addr_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%pI4/%d %s\0A\00", [20 x i8] zeroinitializer }, align 32
@smack_onlycap_lock = external dso_local global %struct.mutex, align 4
@smack_onlycap_list = external dso_local global %struct.list_head, align 4
@.str.56 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@onlycap_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @onlycap_seq_start, ptr @smk_seq_stop, ptr @onlycap_seq_next, ptr @onlycap_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@log_policy = external dso_local local_unnamed_addr global i32, align 4
@load_self_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @load_self_seq_start, ptr @smk_seq_stop, ptr @load_self_seq_next, ptr @load_self_seq_show }, [16 x i8] zeroinitializer }, align 32
@smk_write_mapped.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@load2_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @load2_seq_start, ptr @smk_seq_stop, ptr @load2_seq_next, ptr @load2_seq_show }, [16 x i8] zeroinitializer }, align 32
@load2_seq_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@load_self2_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @load_self2_seq_start, ptr @smk_seq_stop, ptr @load_self2_seq_next, ptr @load_self2_seq_show }, [16 x i8] zeroinitializer }, align 32
@cipso2_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @cipso_seq_start, ptr @smk_seq_stop, ptr @cipso_seq_next, ptr @cipso2_seq_show }, [16 x i8] zeroinitializer }, align 32
@smk_write_revoke_subj.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%x:%x:%x:%x:%x:%x:%x:%x/%u %s\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%x:%x:%x:%x:%x:%x:%x:%x %s\00", [37 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"-DELETE\00", [24 x i8] zeroinitializer }, align 32
@smk_net6addr_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.61, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @smk_net6addr_lock, i64 52), ptr getelementptr (i8, ptr @smk_net6addr_lock, i64 52) }, ptr @smk_net6addr_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.62, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@smk_write_net6addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"smk_net6addr_lock.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smk_net6addr_lock\00", [46 x i8] zeroinitializer }, align 32
@smk_net6addr_insert.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net6addr_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @net6addr_seq_start, ptr @smk_seq_stop, ptr @net6addr_seq_next, ptr @net6addr_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%pI6/%d %s\0A\00", [20 x i8] zeroinitializer }, align 32
@relabel_self_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @relabel_self_seq_start, ptr @smk_seq_stop, ptr @relabel_self_seq_next, ptr @relabel_self_seq_show }, [16 x i8] zeroinitializer }, align 32
@smk_cipso_doi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014%s:%d remove rc = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smk_cipso_doi\00", [18 x i8] zeroinitializer }, align 32
@smk_cipso_doi._entry_ptr = internal global ptr @smk_cipso_doi._entry, section ".printk_index", align 4
@smk_cipso_doi._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s:%d cipso add rc = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@smk_cipso_doi._entry_ptr.68 = internal global ptr @smk_cipso_doi._entry.66, section ".printk_index", align 4
@smk_cipso_doi._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.2, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014%s:%d map add rc = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@smk_cipso_doi._entry_ptr.71 = internal global ptr @smk_cipso_doi._entry.69, section ".printk_index", align 4
@smk_unlbl_ambient._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.72, ptr @.str.2, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smk_unlbl_ambient\00", [46 x i8] zeroinitializer }, align 32
@smk_unlbl_ambient._entry_ptr = internal global ptr @smk_unlbl_ambient._entry, section ".printk_index", align 4
@smk_unlbl_ambient._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014%s:%d add rc = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@smk_unlbl_ambient._entry_ptr.75 = internal global ptr @smk_unlbl_ambient._entry.73, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 8, i64 45, i64 65, i64 66, i64 76, i64 82, i64 84, i64 87, i64 88, i64 97, i64 98, i64 108, i64 114, i64 116, i64 119, i64 120]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.78 = private unnamed_addr constant [19 x i8] c"smack_cipso_direct\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 86, i32 5 }
@___asan_gen_.81 = private unnamed_addr constant [19 x i8] c"smack_cipso_mapped\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 93, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"smack_ptrace_rule\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 118, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"smk_net4addr_list\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 126, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant [18 x i8] c"smk_net6addr_list\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 128, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant [18 x i8] c"smack_net_ambient\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 79, i32 21 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"smack_unconfined\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 102, i32 21 }
@___asan_gen_.99 = private unnamed_addr constant [19 x i8] c"smack_syslog_label\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 109, i32 21 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 3001, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [12 x i8] c"smk_fs_type\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2970, i32 32 }
@___asan_gen_.117 = private unnamed_addr constant [14 x i8] c"smackfs_mount\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2976, i32 25 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 3007, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2582, i32 43 }
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"smk_context_ops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2956, i32 43 }
@___asan_gen_.132 = private unnamed_addr constant [12 x i8] c"smack_files\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2878, i32 33 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2880, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant [13 x i8] c"smk_load_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 672, i32 37 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2882, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant [14 x i8] c"smk_cipso_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 956, i32 37 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2884, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant [12 x i8] c"smk_doi_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1621, i32 37 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2886, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant [15 x i8] c"smk_direct_ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1699, i32 37 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2888, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant [16 x i8] c"smk_ambient_ops\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1867, i32 37 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2890, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"smk_net4addr_ops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1295, i32 37 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2892, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant [16 x i8] c"smk_onlycap_ops\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2047, i32 37 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2894, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant [16 x i8] c"smk_logging_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2202, i32 37 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2896, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant [18 x i8] c"smk_load_self_ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2274, i32 37 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2898, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant [15 x i8] c"smk_access_ops\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2344, i32 37 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2900, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant [15 x i8] c"smk_mapped_ops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1777, i32 37 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2902, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant [14 x i8] c"smk_load2_ops\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2409, i32 37 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2904, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant [19 x i8] c"smk_load_self2_ops\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2482, i32 37 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2906, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant [16 x i8] c"smk_access2_ops\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2503, i32 37 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2908, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant [15 x i8] c"smk_cipso2_ops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1030, i32 37 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2910, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant [20 x i8] c"smk_revoke_subj_ops\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2569, i32 37 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2913, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant [20 x i8] c"smk_change_rule_ops\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2605, i32 37 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2915, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant [15 x i8] c"smk_syslog_ops\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2682, i32 37 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2917, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant [15 x i8] c"smk_ptrace_ops\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2859, i32 37 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2920, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant [19 x i8] c"smk_unconfined_ops\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2136, i32 37 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2924, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"smk_net6addr_ops\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1552, i32 37 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2927, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant [21 x i8] c"smk_relabel_self_ops\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2795, i32 37 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2930, i32 5 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2935, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 225, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [13 x i8] c"load_seq_ops\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 630, i32 36 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 538, i32 14 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 695, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 723, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 579, i32 16 }
@___asan_gen_.300 = private unnamed_addr constant [17 x i8] c"smack_cipso_lock\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 887, i32 21 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 913, i32 22 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 67, i32 8 }
@___asan_gen_.315 = private unnamed_addr constant [14 x i8] c"cipso_seq_ops\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 798, i32 36 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 785, i32 16 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 789, i32 17 }
@___asan_gen_.324 = private unnamed_addr constant [20 x i8] c"smk_cipso_doi_value\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 141, i32 12 }
@___asan_gen_.328 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 156, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [19 x i8] c"smack_ambient_lock\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 68, i32 8 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1186, i32 20 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1189, i32 21 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1216, i32 21 }
@___asan_gen_.348 = private unnamed_addr constant [18 x i8] c"smk_net4addr_lock\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 69, i32 8 }
@___asan_gen_.357 = private unnamed_addr constant [17 x i8] c"net4addr_seq_ops\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1070, i32 36 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1064, i32 16 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1962, i32 30 }
@___asan_gen_.366 = private unnamed_addr constant [16 x i8] c"onlycap_seq_ops\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1898, i32 36 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2161, i32 16 }
@___asan_gen_.372 = private unnamed_addr constant [18 x i8] c"load_self_seq_ops\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2237, i32 36 }
@___asan_gen_.375 = private unnamed_addr constant [14 x i8] c"load2_seq_ops\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2369, i32 36 }
@___asan_gen_.378 = private unnamed_addr constant [19 x i8] c"load_self2_seq_ops\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2446, i32 36 }
@___asan_gen_.381 = private unnamed_addr constant [15 x i8] c"cipso2_seq_ops\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 994, i32 36 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1446, i32 19 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1451, i32 20 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1485, i32 21 }
@___asan_gen_.393 = private unnamed_addr constant [18 x i8] c"smk_net6addr_lock\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 71, i32 8 }
@___asan_gen_.402 = private unnamed_addr constant [17 x i8] c"net6addr_seq_ops\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1334, i32 36 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1328, i32 17 }
@___asan_gen_.408 = private unnamed_addr constant [21 x i8] c"relabel_self_seq_ops\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 2718, i32 36 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 693, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 706, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 713, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 734, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.442 = private constant [28 x i8] c"../security/smack/smackfs.c\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 743, i32 3 }
@llvm.compiler.used = appending global [131 x ptr] [ptr @__initcall__kmod_smack__541_3035_init_smk_fs6, ptr @init_smk_fs._entry, ptr @init_smk_fs._entry.3, ptr @init_smk_fs._entry_ptr, ptr @init_smk_fs._entry_ptr.5, ptr @smk_cipso_doi._entry, ptr @smk_cipso_doi._entry.66, ptr @smk_cipso_doi._entry.69, ptr @smk_cipso_doi._entry_ptr, ptr @smk_cipso_doi._entry_ptr.68, ptr @smk_cipso_doi._entry_ptr.71, ptr @smk_fill_super._entry, ptr @smk_fill_super._entry_ptr, ptr @smk_unlbl_ambient._entry, ptr @smk_unlbl_ambient._entry.73, ptr @smk_unlbl_ambient._entry_ptr, ptr @smk_unlbl_ambient._entry_ptr.75, ptr @smack_cipso_direct, ptr @smack_cipso_mapped, ptr @smack_ptrace_rule, ptr @smk_net4addr_list, ptr @smk_net6addr_list, ptr @smack_net_ambient, ptr @smack_unconfined, ptr @smack_syslog_label, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @smk_fs_type, ptr @smackfs_mount, ptr @.str.4, ptr @.str.6, ptr @smk_context_ops, ptr @smk_fill_super.smack_files, ptr @.str.7, ptr @smk_load_ops, ptr @.str.8, ptr @smk_cipso_ops, ptr @.str.9, ptr @smk_doi_ops, ptr @.str.10, ptr @smk_direct_ops, ptr @.str.11, ptr @smk_ambient_ops, ptr @.str.12, ptr @smk_net4addr_ops, ptr @.str.13, ptr @smk_onlycap_ops, ptr @.str.14, ptr @smk_logging_ops, ptr @.str.15, ptr @smk_load_self_ops, ptr @.str.16, ptr @smk_access_ops, ptr @.str.17, ptr @smk_mapped_ops, ptr @.str.18, ptr @smk_load2_ops, ptr @.str.19, ptr @smk_load_self2_ops, ptr @.str.20, ptr @smk_access2_ops, ptr @.str.21, ptr @smk_cipso2_ops, ptr @.str.22, ptr @smk_revoke_subj_ops, ptr @.str.23, ptr @smk_change_rule_ops, ptr @.str.24, ptr @smk_syslog_ops, ptr @.str.25, ptr @smk_ptrace_ops, ptr @.str.26, ptr @smk_unconfined_ops, ptr @.str.27, ptr @smk_net6addr_ops, ptr @.str.28, ptr @smk_relabel_self_ops, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @load_seq_ops, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @smack_cipso_lock, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @cipso_seq_ops, ptr @.str.43, ptr @.str.44, ptr @smk_cipso_doi_value, ptr @.str.47, ptr @smack_ambient_lock, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @smk_net4addr_lock, ptr @.str.53, ptr @.str.54, ptr @net4addr_seq_ops, ptr @.str.55, ptr @.str.56, ptr @onlycap_seq_ops, ptr @.str.57, ptr @load_self_seq_ops, ptr @load2_seq_ops, ptr @load_self2_seq_ops, ptr @cipso2_seq_ops, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @smk_net6addr_lock, ptr @.str.61, ptr @.str.62, ptr @net6addr_seq_ops, ptr @.str.63, ptr @relabel_self_seq_ops, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.74], section "llvm.metadata"
@0 = internal global [122 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_cipso_direct to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_cipso_mapped to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_ptrace_rule to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_net4addr_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_net6addr_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_net_ambient to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_unconfined to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_syslog_label to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_smk_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smackfs_mount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_smk_fs._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_fill_super.smack_files to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_load_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_cipso_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_doi_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_direct_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_ambient_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_net4addr_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_onlycap_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_logging_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_load_self_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_access_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_mapped_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_load2_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_load_self2_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_access2_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_cipso2_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_revoke_subj_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_change_rule_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_syslog_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_ptrace_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_unconfined_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_net6addr_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_relabel_self_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_cipso_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cipso_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_cipso_doi_value to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_ambient_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_net4addr_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net4addr_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onlycap_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_self_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load2_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_self2_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cipso2_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_net6addr_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net6addr_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @relabel_self_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_cipso_doi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_cipso_doi._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_cipso_doi._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_unlbl_ambient._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smk_unlbl_ambient._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smk_destroy_label_list(ptr noundef %list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.not17 = icmp eq ptr %1, %list
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %sklep.018 = phi ptr [ %sklep2.0, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %sklep.018 to i32
  call void @__asan_load4_noabort(i32 %2)
  %sklep2.0 = load ptr, ptr %sklep.018, align 4
  tail call void @kfree(ptr noundef %sklep.018) #14
  %cmp.not = icmp eq ptr %sklep2.0, %list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_smk_fs() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_enabled to i32))
  %0 = load i32, ptr @smack_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %1 = load ptr, ptr @fs_kobj, align 4
  %call.i = tail call i32 @sysfs_create_mount_point(ptr noundef %1, ptr noundef nonnull @.str.6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %do.end

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #17
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.end.if.end3_crit_edge
  %call4 = tail call i32 @register_filesystem(ptr noundef nonnull @smk_fs_type) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end3.if.end17_crit_edge

if.end3.if.end17_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then6:                                         ; preds = %if.end3
  %call7 = tail call ptr @kern_mount(ptr noundef nonnull @smk_fs_type) #14
  store ptr %call7, ptr @smackfs_mount, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end12, label %if.then6.if.end17_crit_edge

if.then6.if.end17_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

do.end12:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #17
  %2 = load ptr, ptr @smackfs_mount, align 4
  %3 = ptrtoint ptr %2 to i32
  store ptr null, ptr @smackfs_mount, align 4
  br label %if.end17

if.end17:                                         ; preds = %do.end12, %if.then6.if.end17_crit_edge, %if.end3.if.end17_crit_edge
  %err.0 = phi i32 [ %call4, %if.end3.if.end17_crit_edge ], [ %3, %do.end12 ], [ 0, %if.then6.if.end17_crit_edge ]
  tail call fastcc void @smk_cipso_doi()
  tail call fastcc void @smk_unlbl_ambient(ptr noundef null)
  %call18 = tail call i32 @smack_populate_secattr(ptr noundef nonnull @smack_known_floor) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp19 = icmp eq i32 %err.0, 0
  %4 = tail call i32 @llvm.smin.i32(i32 %call18, i32 0)
  %spec.select69 = select i1 %cmp19, i32 %4, i32 %err.0
  %call23 = tail call i32 @smack_populate_secattr(ptr noundef nonnull @smack_known_hat) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select69)
  %cmp24 = icmp eq i32 %spec.select69, 0
  %5 = tail call i32 @llvm.smin.i32(i32 %call23, i32 0)
  %err.2 = select i1 %cmp24, i32 %5, i32 %spec.select69
  %call29 = tail call i32 @smack_populate_secattr(ptr noundef nonnull @smack_known_huh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %cmp30 = icmp eq i32 %err.2, 0
  %6 = tail call i32 @llvm.smin.i32(i32 %call29, i32 0)
  %err.3 = select i1 %cmp30, i32 %6, i32 %err.2
  %call35 = tail call i32 @smack_populate_secattr(ptr noundef nonnull @smack_known_star) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %cmp36 = icmp eq i32 %err.3, 0
  %7 = tail call i32 @llvm.smin.i32(i32 %call35, i32 0)
  %err.4 = select i1 %cmp36, i32 %7, i32 %err.3
  %call41 = tail call i32 @smack_populate_secattr(ptr noundef nonnull @smack_known_web) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4)
  %cmp42 = icmp eq i32 %err.4, 0
  %8 = tail call i32 @llvm.smin.i32(i32 %call41, i32 0)
  %spec.select = select i1 %cmp42, i32 %8, i32 %err.4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smk_cipso_doi() unnamed_addr #0 align 64 {
entry:
  %nai = alloca %struct.netlbl_audit, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nai) #14
  %0 = getelementptr inbounds %struct.netlbl_audit, ptr %nai, i32 0, i32 1
  %1 = getelementptr inbounds %struct.netlbl_audit, ptr %nai, i32 0, i32 2
  %2 = tail call i32 @llvm.read_register.i32(metadata !282) #14
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred.i.i, align 16
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %security.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_blob_sizes to i32))
  %10 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %10
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i.i, align 4
  %loginuid.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 121
  %13 = ptrtoint ptr %loginuid.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %loginuid.i.i, align 16
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.sroa.0.0.copyload.i.i, ptr %0, align 4
  %sessionid.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 122
  %15 = ptrtoint ptr %sessionid.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sessionid.i.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %1, align 4
  %smk_secid.i = getelementptr inbounds %struct.smack_known, ptr %12, i32 0, i32 3
  %18 = ptrtoint ptr %smk_secid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %smk_secid.i, align 4
  %20 = ptrtoint ptr %nai to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %nai, align 4
  %call = call i32 @netlbl_cfg_map_del(ptr noundef null, i16 noundef zeroext 2, ptr noundef null, ptr noundef null, ptr noundef nonnull %nai) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef 694, i32 noundef %call) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 36032, i32 noundef 40) #18
  %map = getelementptr inbounds %struct.cipso_v4_doi, ptr %call7.i, i32 0, i32 2
  %22 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %map, align 8
  %23 = load i32, ptr @smk_cipso_doi_value, align 4
  %24 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %call7.i, align 8
  %type = getelementptr inbounds %struct.cipso_v4_doi, ptr %call7.i, i32 0, i32 1
  %25 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %type, align 4
  %tags = getelementptr inbounds %struct.cipso_v4_doi, ptr %call7.i, i32 0, i32 3
  %26 = ptrtoint ptr %tags to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %tags, align 4
  %uglygep = getelementptr i8, ptr %call7.i, i32 13
  %27 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 0, ptr %uglygep, align 1
  %call6 = call i32 @netlbl_cfg_cipsov4_add(ptr noundef %call7.i, ptr noundef nonnull %nai) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.65, i32 noundef 707, i32 noundef %call6) #17
  call void @kfree(ptr noundef %call7.i) #14
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %28 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call7.i, align 8
  %call16 = call i32 @netlbl_cfg_cipsov4_map_add(i32 noundef %29, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %nai) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end14.cleanup_crit_edge, label %do.end21

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.65, i32 noundef 714, i32 noundef %call16) #17
  %30 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call7.i, align 8
  call void @netlbl_cfg_cipsov4_del(i32 noundef %31, ptr noundef nonnull %nai) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end14.cleanup_crit_edge, %do.end11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nai) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smk_unlbl_ambient(ptr noundef %oldambient) unnamed_addr #0 align 64 {
entry:
  %nai = alloca %struct.netlbl_audit, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nai) #14
  %0 = getelementptr inbounds %struct.netlbl_audit, ptr %nai, i32 0, i32 1
  %1 = getelementptr inbounds %struct.netlbl_audit, ptr %nai, i32 0, i32 2
  %2 = tail call i32 @llvm.read_register.i32(metadata !282) #14
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred.i.i, align 16
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %security.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_blob_sizes to i32))
  %10 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %10
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i.i, align 4
  %loginuid.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 121
  %13 = ptrtoint ptr %loginuid.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %loginuid.i.i, align 16
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.sroa.0.0.copyload.i.i, ptr %0, align 4
  %sessionid.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 122
  %15 = ptrtoint ptr %sessionid.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sessionid.i.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %1, align 4
  %smk_secid.i = getelementptr inbounds %struct.smack_known, ptr %12, i32 0, i32 3
  %18 = ptrtoint ptr %smk_secid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %smk_secid.i, align 4
  %20 = ptrtoint ptr %nai to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %nai, align 4
  %cmp.not = icmp eq ptr %oldambient, null
  br i1 %cmp.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = call i32 @netlbl_cfg_map_del(ptr noundef nonnull %oldambient, i16 noundef zeroext 2, ptr noundef null, ptr noundef null, ptr noundef nonnull %nai) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.then.if.end4_crit_edge, label %do.end

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.72, i32 noundef 735, i32 noundef %call) #17
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %21 = load ptr, ptr @smack_net_ambient, align 4
  %cmp5 = icmp eq ptr %21, null
  br i1 %cmp5, label %if.then6, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  store ptr @smack_known_floor, ptr @smack_net_ambient, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %22 = load ptr, ptr @smack_net_ambient, align 4
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %smk_known, align 4
  %call8 = call i32 @netlbl_cfg_unlbl_map_add(ptr noundef %24, i16 noundef zeroext 2, ptr noundef null, ptr noundef null, ptr noundef nonnull %nai) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end7.if.end16_crit_edge, label %do.end13

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72, i32 noundef 744, i32 noundef %call8) #17
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.end7.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nai) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smack_populate_secattr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @smk_init_fs_context(ptr nocapture noundef writeonly %fc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @smk_context_ops, ptr %fc, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_get_tree(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_tree_single(ptr noundef %fc, ptr noundef nonnull @smk_fill_super) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_single(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_fill_super(ptr noundef %sb, ptr nocapture noundef readnone %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_fill_super(ptr noundef %sb, i32 noundef 1128357203, ptr noundef nonnull @smk_fill_super.smack_files) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %call) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_fill_super(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_load(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @smack_privileged(i32 noundef 33) #14
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call fastcc i32 @smk_write_rules_list(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef null, ptr noundef null, i32 noundef 0)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_open_load(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @load_seq_ops) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smack_privileged(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smk_write_rules_list(ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos, ptr noundef %rule_list, ptr noundef %rule_lock, i32 noundef %format) unnamed_addr #0 align 64 {
entry:
  %rule = alloca %struct.smack_parsed_rule, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rule) #14
  %0 = getelementptr inbounds %struct.smack_parsed_rule, ptr %rule, i32 0, i32 1
  %1 = getelementptr inbounds %struct.smack_parsed_rule, ptr %rule, i32 0, i32 2
  %2 = getelementptr inbounds %struct.smack_parsed_rule, ptr %rule, i32 0, i32 3
  %3 = call ptr @memset(ptr %rule, i32 255, i32 16)
  %4 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp.not = icmp eq i64 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %format)
  %cmp1 = icmp eq i32 %format, 0
  br i1 %cmp1, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.end
  %6 = add i32 %count, -55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %6)
  %7 = icmp ult i32 %6, -3
  br i1 %7, label %if.then2.cleanup_crit_edge, label %if.end10.thread

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %8 = tail call i32 @llvm.umin.i32(i32 %count, i32 4095)
  %call = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %8) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end10.if.then12_crit_edge, label %if.end14

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

if.end10.thread:                                  ; preds = %if.then2
  %call6 = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %count) #14
  %cmp.i7 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i7, label %if.end10.thread.if.then12_crit_edge, label %if.end10.thread.if.end23_crit_edge

if.end10.thread.if.end23_crit_edge:               ; preds = %if.end10.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.end10.thread.if.then12_crit_edge:              ; preds = %if.end10.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

if.then12:                                        ; preds = %if.end10.thread.if.then12_crit_edge, %if.end10.if.then12_crit_edge
  %call13 = phi ptr [ %call6, %if.end10.thread.if.then12_crit_edge ], [ %call, %if.end10.if.then12_crit_edge ]
  %9 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %count)
  %cmp7 = icmp ult i32 %count, 4096
  br i1 %cmp7, label %if.end14.if.end23_crit_edge, label %if.end14.while.cond_crit_edge

if.end14.while.cond_crit_edge:                    ; preds = %if.end14
  br label %while.cond

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %if.end14.while.cond_crit_edge
  %count.addr.1 = phi i32 [ %sub, %land.rhs.while.cond_crit_edge ], [ %8, %if.end14.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.1)
  %cond2 = icmp eq i32 %count.addr.1, 0
  br i1 %cond2, label %while.cond.out_crit_edge, label %land.rhs

while.cond.out_crit_edge:                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

land.rhs:                                         ; preds = %while.cond
  %sub = add nsw i32 %count.addr.1, -1
  %arrayidx = getelementptr i8, ptr %call, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %cmp17.not = icmp eq i8 %11, 10
  br i1 %cmp17.not, label %land.rhs.if.end23_crit_edge, label %land.rhs.while.cond_crit_edge

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

land.rhs.if.end23_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.end23:                                         ; preds = %land.rhs.if.end23_crit_edge, %if.end14.if.end23_crit_edge, %if.end10.thread.if.end23_crit_edge
  %call12 = phi ptr [ %call, %if.end14.if.end23_crit_edge ], [ %call6, %if.end10.thread.if.end23_crit_edge ], [ %call, %land.rhs.if.end23_crit_edge ]
  %count.addr.2 = phi i32 [ %8, %if.end14.if.end23_crit_edge ], [ %count, %if.end10.thread.if.end23_crit_edge ], [ %count.addr.1, %land.rhs.if.end23_crit_edge ]
  %arrayidx24 = getelementptr i8, ptr %call12, i32 %count.addr.2
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx24, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %format)
  %cmp25 = icmp eq i32 %format, 2
  %cond = select i1 %cmp25, i32 4, i32 3
  %add.ptr2.i = getelementptr i8, ptr %call12, i32 48
  %add.ptr.i = getelementptr i8, ptr %call12, i32 24
  %cmp50 = icmp eq ptr %rule_list, null
  br label %while.cond27

while.cond27:                                     ; preds = %if.end57.while.cond27_crit_edge, %if.end23
  %cnt.0 = phi i32 [ 0, %if.end23 ], [ %cnt.1, %if.end57.while.cond27_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0, i32 %count.addr.2)
  %cmp28 = icmp ult i32 %cnt.0, %count.addr.2
  br i1 %cmp28, label %while.body30, label %while.cond27.out_crit_edge

while.cond27.out_crit_edge:                       ; preds = %while.cond27
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.body30:                                     ; preds = %while.cond27
  br i1 %cmp1, label %if.then33, label %if.else39

if.then33:                                        ; preds = %while.body30
  %call.i3 = tail call ptr @smk_import_entry(ptr noundef %call12, i32 noundef 24) #14
  %13 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i3, ptr %rule, align 4
  %cmp.i.i = icmp ugt ptr %call.i3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then33.smk_fill_rule.exit_crit_edge, label %if.end.i

if.then33.smk_fill_rule.exit_crit_edge:           ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_fill_rule.exit

if.end.i:                                         ; preds = %if.then33
  %call6.i = tail call ptr @smk_import_entry(ptr noundef %add.ptr.i, i32 noundef 24) #14
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call6.i, ptr %0, align 4
  %cmp.i69.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69.i, label %if.end.i.smk_fill_rule.exit_crit_edge, label %smk_fill_rule.exit.thread

if.end.i.smk_fill_rule.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_fill_rule.exit

smk_fill_rule.exit.thread:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call33.i = tail call fastcc i32 @smk_perm_from_str(ptr noundef %add.ptr2.i) #14
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call33.i, ptr %1, align 4
  %neg.i = xor i32 %call33.i, -1
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %neg.i, ptr %2, align 4
  br label %if.end49

smk_fill_rule.exit:                               ; preds = %if.end.i.smk_fill_rule.exit_crit_edge, %if.then33.smk_fill_rule.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call.i3, %if.then33.smk_fill_rule.exit_crit_edge ], [ %call6.i, %if.end.i.smk_fill_rule.exit_crit_edge ]
  %cmp35 = icmp slt ptr %retval.0.i.in, null
  br i1 %cmp35, label %out.loopexit.split.loop.exit, label %smk_fill_rule.exit.if.end49_crit_edge

smk_fill_rule.exit.if.end49_crit_edge:            ; preds = %smk_fill_rule.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.else39:                                        ; preds = %while.body30
  %add.ptr = getelementptr i8, ptr %call12, i32 %cnt.0
  %call40 = call fastcc i32 @smk_parse_long_rule(ptr noundef %add.ptr, ptr noundef nonnull %rule, i32 noundef 1, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.else39.out_crit_edge, label %if.end44

if.else39.out_crit_edge:                          ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end44:                                         ; preds = %if.else39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp45 = icmp eq i32 %call40, 0
  br i1 %cmp45, label %if.end44.out_crit_edge, label %if.end48

if.end44.out_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %add = add i32 %call40, %cnt.0
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %smk_fill_rule.exit.if.end49_crit_edge, %smk_fill_rule.exit.thread
  %cnt.1 = phi i32 [ %add, %if.end48 ], [ %count.addr.2, %smk_fill_rule.exit.if.end49_crit_edge ], [ %count.addr.2, %smk_fill_rule.exit.thread ]
  br i1 %cmp50, label %if.then52, label %if.else55

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rule, align 4
  %smk_rules = getelementptr inbounds %struct.smack_known, ptr %18, i32 0, i32 5
  %smk_rules_lock = getelementptr inbounds %struct.smack_known, ptr %18, i32 0, i32 6
  %call54 = call fastcc i32 @smk_set_access(ptr noundef nonnull %rule, ptr noundef %smk_rules, ptr noundef %smk_rules_lock)
  br label %if.end57

if.else55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %call56 = call fastcc i32 @smk_set_access(ptr noundef nonnull %rule, ptr noundef nonnull %rule_list, ptr noundef %rule_lock)
  br label %if.end57

if.end57:                                         ; preds = %if.else55, %if.then52
  %rc.0 = phi i32 [ %call54, %if.then52 ], [ %call56, %if.else55 ]
  %tobool58.not = icmp eq i32 %rc.0, 0
  br i1 %tobool58.not, label %if.end57.while.cond27_crit_edge, label %if.end57.out_crit_edge

if.end57.out_crit_edge:                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end57.while.cond27_crit_edge:                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond27

out.loopexit.split.loop.exit:                     ; preds = %smk_fill_rule.exit
  call void @__sanitizer_cov_trace_pc() #16
  %retval.0.i.le = ptrtoint ptr %retval.0.i.in to i32
  br label %out

out:                                              ; preds = %out.loopexit.split.loop.exit, %if.end57.out_crit_edge, %if.end44.out_crit_edge, %if.else39.out_crit_edge, %while.cond27.out_crit_edge, %while.cond.out_crit_edge
  %call11 = phi ptr [ %call12, %out.loopexit.split.loop.exit ], [ %call12, %while.cond27.out_crit_edge ], [ %call12, %if.end44.out_crit_edge ], [ %call12, %if.end57.out_crit_edge ], [ %call12, %if.else39.out_crit_edge ], [ %call, %while.cond.out_crit_edge ]
  %rc.1 = phi i32 [ %retval.0.i.le, %out.loopexit.split.loop.exit ], [ %call40, %if.else39.out_crit_edge ], [ %rc.0, %if.end57.out_crit_edge ], [ -22, %if.end44.out_crit_edge ], [ %cnt.0, %while.cond27.out_crit_edge ], [ -22, %while.cond.out_crit_edge ]
  tail call void @kfree(ptr noundef %call11) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then12, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then12 ], [ %rc.1, %out ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rule) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smk_parse_long_rule(ptr noundef %data, ptr nocapture noundef %rule, i32 noundef %import, i32 noundef %tokens) unnamed_addr #0 align 64 {
entry:
  %tok = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tok) #14
  %0 = getelementptr inbounds [4 x ptr], ptr %tok, i32 0, i32 1
  %1 = getelementptr inbounds [4 x ptr], ptr %tok, i32 0, i32 2
  %2 = getelementptr inbounds [4 x ptr], ptr %tok, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tokens)
  %cmp89 = icmp sgt i32 %tokens, 0
  %3 = call ptr @memset(ptr %tok, i32 255, i32 16)
  br i1 %cmp89, label %entry.while.cond.preheader_crit_edge, label %entry.while.cond25.preheader_crit_edge

entry.while.cond25.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond25.preheader

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %entry.while.cond.preheader_crit_edge
  %i.091 = phi i32 [ %inc24, %for.inc.while.cond.preheader_crit_edge ], [ 0, %entry.while.cond.preheader_crit_edge ]
  %cnt.090 = phi i32 [ %cnt.2.lcssa, %for.inc.while.cond.preheader_crit_edge ], [ 0, %entry.while.cond.preheader_crit_edge ]
  %arrayidx76 = getelementptr i8, ptr %data, i32 %cnt.090
  %4 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %5 to i32
  %arrayidx178 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv77
  %6 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx178, align 1
  %8 = and i8 %7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp3.not79 = icmp eq i8 %8, 0
  br i1 %cmp3.not79, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.cond25.preheader:                           ; preds = %for.inc.while.cond25.preheader_crit_edge, %entry.while.cond25.preheader_crit_edge
  %cnt.0.lcssa = phi i32 [ 0, %entry.while.cond25.preheader_crit_edge ], [ %cnt.2.lcssa, %for.inc.while.cond25.preheader_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %entry.while.cond25.preheader_crit_edge ], [ %tokens, %for.inc.while.cond25.preheader_crit_edge ]
  %arrayidx2694 = getelementptr i8, ptr %data, i32 %cnt.0.lcssa
  %9 = ptrtoint ptr %arrayidx2694 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx2694, align 1
  %conv2795 = zext i8 %10 to i32
  %arrayidx2896 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv2795
  %11 = ptrtoint ptr %arrayidx2896 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2896, align 1
  %13 = and i8 %12, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp31.not97 = icmp eq i8 %13, 0
  br i1 %cmp31.not97, label %while.cond25.preheader.while.cond37.preheader_crit_edge, label %while.cond25.preheader.while.body33_crit_edge

while.cond25.preheader.while.body33_crit_edge:    ; preds = %while.cond25.preheader
  br label %while.body33

while.cond25.preheader.while.cond37.preheader_crit_edge: ; preds = %while.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond37.preheader

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %arrayidx81 = phi ptr [ %arrayidx, %while.body.while.body_crit_edge ], [ %arrayidx76, %while.cond.preheader.while.body_crit_edge ]
  %cnt.180 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ %cnt.090, %while.cond.preheader.while.body_crit_edge ]
  %inc = add i32 %cnt.180, 1
  %14 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx81, align 1
  %arrayidx = getelementptr i8, ptr %data, i32 %inc
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %16 to i32
  %arrayidx1 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %17 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx1, align 1
  %19 = and i8 %18, 32
  %cmp3.not = icmp eq i8 %19, 0
  br i1 %cmp3.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %cnt.1.lcssa = phi i32 [ %cnt.090, %while.cond.preheader.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %arrayidx.lcssa = phi ptr [ %arrayidx76, %while.cond.preheader.while.end_crit_edge ], [ %arrayidx, %while.body.while.end_crit_edge ]
  %.lcssa = phi i8 [ %5, %while.cond.preheader.while.end_crit_edge ], [ %16, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lcssa)
  %cmp8 = icmp eq i8 %.lcssa, 0
  br i1 %cmp8, label %while.end.cleanup_crit_edge, label %if.end

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %while.end
  %arrayidx10 = getelementptr [4 x ptr], ptr %tok, i32 0, i32 %i.091
  %20 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx.lcssa, ptr %arrayidx10, align 4
  %arrayidx1284 = getelementptr i8, ptr %data, i32 %cnt.1.lcssa
  %21 = ptrtoint ptr %arrayidx1284 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx1284, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not85 = icmp eq i8 %22, 0
  br i1 %tobool.not85, label %if.end.for.inc_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.rhs:                                         ; preds = %while.body21.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %23 = phi i8 [ %28, %while.body21.land.rhs_crit_edge ], [ %22, %if.end.land.rhs_crit_edge ]
  %cnt.286 = phi i32 [ %inc22, %while.body21.land.rhs_crit_edge ], [ %cnt.1.lcssa, %if.end.land.rhs_crit_edge ]
  %conv13 = zext i8 %23 to i32
  %arrayidx16 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv13
  %24 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx16, align 1
  %26 = and i8 %25, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp19.not = icmp eq i8 %26, 0
  br i1 %cmp19.not, label %while.body21, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

while.body21:                                     ; preds = %land.rhs
  %inc22 = add i32 %cnt.286, 1
  %arrayidx12 = getelementptr i8, ptr %data, i32 %inc22
  %27 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx12, align 1
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %while.body21.for.inc_crit_edge, label %while.body21.land.rhs_crit_edge

while.body21.land.rhs_crit_edge:                  ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

while.body21.for.inc_crit_edge:                   ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %while.body21.for.inc_crit_edge, %land.rhs.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %cnt.2.lcssa = phi i32 [ %cnt.1.lcssa, %if.end.for.inc_crit_edge ], [ %cnt.286, %land.rhs.for.inc_crit_edge ], [ %inc22, %while.body21.for.inc_crit_edge ]
  %inc24 = add nuw nsw i32 %i.091, 1
  %exitcond.not = icmp eq i32 %inc24, %tokens
  br i1 %exitcond.not, label %for.inc.while.cond25.preheader_crit_edge, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader

for.inc.while.cond25.preheader_crit_edge:         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond25.preheader

while.cond37.preheader:                           ; preds = %while.body33.while.cond37.preheader_crit_edge, %while.cond25.preheader.while.cond37.preheader_crit_edge
  %cnt.3.lcssa = phi i32 [ %cnt.0.lcssa, %while.cond25.preheader.while.cond37.preheader_crit_edge ], [ %inc34, %while.body33.while.cond37.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0.lcssa)
  %cmp38101 = icmp slt i32 %i.0.lcssa, 4
  br i1 %cmp38101, label %while.body40.preheader, label %while.cond37.preheader.while.end43_crit_edge

while.cond37.preheader.while.end43_crit_edge:     ; preds = %while.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end43

while.body40.preheader:                           ; preds = %while.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #16
  %29 = shl i32 %i.0.lcssa, 2
  %uglygep = getelementptr i8, ptr %tok, i32 %29
  %30 = sub i32 16, %29
  %31 = call ptr @memset(ptr %uglygep, i32 0, i32 %30)
  br label %while.end43

while.body33:                                     ; preds = %while.body33.while.body33_crit_edge, %while.cond25.preheader.while.body33_crit_edge
  %arrayidx2699 = phi ptr [ %arrayidx26, %while.body33.while.body33_crit_edge ], [ %arrayidx2694, %while.cond25.preheader.while.body33_crit_edge ]
  %cnt.398 = phi i32 [ %inc34, %while.body33.while.body33_crit_edge ], [ %cnt.0.lcssa, %while.cond25.preheader.while.body33_crit_edge ]
  %inc34 = add i32 %cnt.398, 1
  %32 = ptrtoint ptr %arrayidx2699 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx2699, align 1
  %arrayidx26 = getelementptr i8, ptr %data, i32 %inc34
  %33 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %34 to i32
  %arrayidx28 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv27
  %35 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx28, align 1
  %37 = and i8 %36, 32
  %cmp31.not = icmp eq i8 %37, 0
  br i1 %cmp31.not, label %while.body33.while.cond37.preheader_crit_edge, label %while.body33.while.body33_crit_edge

while.body33.while.body33_crit_edge:              ; preds = %while.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body33

while.body33.while.cond37.preheader_crit_edge:    ; preds = %while.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond37.preheader

while.end43:                                      ; preds = %while.body40.preheader, %while.cond37.preheader.while.end43_crit_edge
  %38 = ptrtoint ptr %tok to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tok, align 4
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %0, align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %2, align 4
  %call = tail call fastcc i32 @smk_fill_rule(ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45, ptr noundef %rule, i32 noundef %import, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp48 = icmp eq i32 %call, 0
  %cnt.3.call = select i1 %cmp48, i32 %cnt.3.lcssa, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %while.end43, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %cnt.3.call, %while.end43 ], [ -22, %while.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tok) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smk_set_access(ptr nocapture noundef readonly %srp, ptr noundef %rule_list, ptr noundef %rule_lock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %rule_lock, i32 noundef 0) #14
  %call = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b63 = load i1, ptr @smk_set_access.__warned, align 1
  br i1 %.b63, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smk_set_access.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 225, ptr noundef nonnull @.str.32) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %rule_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %sp.065 = load volatile ptr, ptr %rule_list, align 4
  %cmp.not66 = icmp eq ptr %sp.065, %rule_list
  br i1 %cmp.not66, label %do.end.if.then27.critedge_crit_edge, label %for.body.lr.ph

do.end.if.then27.critedge_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27.critedge

for.body.lr.ph:                                   ; preds = %do.end
  %smk_object9 = getelementptr inbounds %struct.smack_parsed_rule, ptr %srp, i32 0, i32 1
  %1 = ptrtoint ptr %smk_object9 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smk_object9, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sp.067 = phi ptr [ %sp.065, %for.body.lr.ph ], [ %sp.0, %for.inc.for.body_crit_edge ]
  %smk_object = getelementptr inbounds %struct.smack_rule, ptr %sp.067, i32 0, i32 2
  %3 = ptrtoint ptr %smk_object to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smk_object, align 4
  %cmp10 = icmp eq ptr %4, %2
  br i1 %cmp10, label %land.lhs.true11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true11:                                  ; preds = %for.body
  %smk_subject = getelementptr inbounds %struct.smack_rule, ptr %sp.067, i32 0, i32 1
  %5 = ptrtoint ptr %smk_subject to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smk_subject, align 4
  %7 = ptrtoint ptr %srp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %srp, align 4
  %cmp13 = icmp eq ptr %6, %8
  br i1 %cmp13, label %if.then14, label %land.lhs.true11.for.inc_crit_edge

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  %smk_access1 = getelementptr inbounds %struct.smack_parsed_rule, ptr %srp, i32 0, i32 2
  %9 = ptrtoint ptr %smk_access1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %smk_access1, align 4
  %smk_access = getelementptr inbounds %struct.smack_rule, ptr %sp.067, i32 0, i32 3
  %11 = ptrtoint ptr %smk_access to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %smk_access, align 4
  %or = or i32 %12, %10
  store i32 %or, ptr %smk_access, align 4
  %smk_access2 = getelementptr inbounds %struct.smack_parsed_rule, ptr %srp, i32 0, i32 3
  %13 = ptrtoint ptr %smk_access2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %smk_access2, align 4
  %neg = xor i32 %14, -1
  %and = and i32 %or, %neg
  store i32 %and, ptr %smk_access, align 4
  br label %out

for.inc:                                          ; preds = %land.lhs.true11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %sp.067 to i32
  call void @__asan_load4_noabort(i32 %15)
  %sp.0 = load volatile ptr, ptr %sp.067, align 4
  %cmp.not = icmp eq ptr %sp.0, %rule_list
  br i1 %cmp.not, label %for.inc.if.then27.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.if.then27.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27.critedge

if.then27.critedge:                               ; preds = %for.inc.if.then27.critedge_crit_edge, %do.end.if.then27.critedge_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_rule_cache to i32))
  %16 = load ptr, ptr @smack_rule_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %16, i32 noundef 3520) #14
  %cmp29 = icmp eq ptr %call.i, null
  br i1 %cmp29, label %if.then27.critedge.out_crit_edge, label %if.end31

if.then27.critedge.out_crit_edge:                 ; preds = %if.then27.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end31:                                         ; preds = %if.then27.critedge
  %17 = ptrtoint ptr %srp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %srp, align 4
  %smk_subject33 = getelementptr inbounds %struct.smack_rule, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %smk_subject33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %smk_subject33, align 8
  %smk_object34 = getelementptr inbounds %struct.smack_parsed_rule, ptr %srp, i32 0, i32 1
  %20 = ptrtoint ptr %smk_object34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %smk_object34, align 4
  %smk_object35 = getelementptr inbounds %struct.smack_rule, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %smk_object35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %smk_object35, align 4
  %smk_access136 = getelementptr inbounds %struct.smack_parsed_rule, ptr %srp, i32 0, i32 2
  %23 = ptrtoint ptr %smk_access136 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %smk_access136, align 4
  %smk_access237 = getelementptr inbounds %struct.smack_parsed_rule, ptr %srp, i32 0, i32 3
  %25 = ptrtoint ptr %smk_access237 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %smk_access237, align 4
  %neg38 = xor i32 %26, -1
  %and39 = and i32 %24, %neg38
  %smk_access40 = getelementptr inbounds %struct.smack_rule, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %smk_access40 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and39, ptr %smk_access40, align 8
  %28 = ptrtoint ptr %rule_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rule_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %rule_list, ptr noundef %29) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end31.out_crit_edge

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i.i:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %call.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %rule_list, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !292
  %32 = ptrtoint ptr %rule_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call.i, ptr %rule_list, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %33 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %prev37.i.i, align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %if.end31.out_crit_edge, %if.then27.critedge.out_crit_edge, %if.then14
  %rc.0 = phi i32 [ 0, %if.then14 ], [ -12, %if.then27.critedge.out_crit_edge ], [ 0, %if.end31.out_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @mutex_unlock(ptr noundef %rule_lock) #14
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smk_fill_rule(ptr noundef %subject, ptr noundef %object, ptr nocapture noundef readonly %access1, ptr noundef readonly %access2, ptr nocapture noundef %rule, i32 noundef %import, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %import)
  %tobool.not = icmp eq i32 %import, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @smk_import_entry(ptr noundef %subject, i32 noundef %len) #14
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %rule, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call6 = tail call ptr @smk_import_entry(ptr noundef %object, i32 noundef %len) #14
  %smk_object = getelementptr inbounds %struct.smack_parsed_rule, ptr %rule, i32 0, i32 1
  %2 = ptrtoint ptr %smk_object to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %smk_object, align 4
  %cmp.i69 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %if.then9, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.else:                                          ; preds = %entry
  %call13 = tail call ptr @smk_parse_smack(ptr noundef %subject, i32 noundef %len) #14
  %cmp.i70 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.else
  %call18 = tail call ptr @smk_find_entry(ptr noundef %call13) #14
  tail call void @kfree(ptr noundef %call13) #14
  %cmp = icmp eq ptr %call18, null
  br i1 %cmp, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %5 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call18, ptr %rule, align 4
  %call22 = tail call ptr @smk_parse_smack(ptr noundef %object, i32 noundef %len) #14
  %cmp.i71 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %call27 = tail call ptr @smk_find_entry(ptr noundef %call22) #14
  tail call void @kfree(ptr noundef %call22) #14
  %cmp28 = icmp eq ptr %call27, null
  br i1 %cmp28, label %if.end26.cleanup_crit_edge, label %if.end30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %smk_object31 = getelementptr inbounds %struct.smack_parsed_rule, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %smk_object31 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call27, ptr %smk_object31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %if.end.if.end32_crit_edge
  %call33 = tail call fastcc i32 @smk_perm_from_str(ptr noundef %access1)
  %smk_access1 = getelementptr inbounds %struct.smack_parsed_rule, ptr %rule, i32 0, i32 2
  %8 = ptrtoint ptr %smk_access1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call33, ptr %smk_access1, align 4
  %tobool34.not = icmp eq ptr %access2, null
  br i1 %tobool34.not, label %if.else37, label %if.then35

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %call36 = tail call fastcc i32 @smk_perm_from_str(ptr noundef nonnull %access2)
  %smk_access2 = getelementptr inbounds %struct.smack_parsed_rule, ptr %rule, i32 0, i32 3
  %9 = ptrtoint ptr %smk_access2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call36, ptr %smk_access2, align 4
  br label %cleanup

if.else37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %neg = xor i32 %call33, -1
  %smk_access239 = getelementptr inbounds %struct.smack_parsed_rule, ptr %rule, i32 0, i32 3
  %10 = ptrtoint ptr %smk_access239 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %neg, ptr %smk_access239, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else37, %if.then35, %if.end26.cleanup_crit_edge, %if.then24, %if.end17.cleanup_crit_edge, %if.then15, %if.then9, %if.then3
  %retval.0 = phi i32 [ %1, %if.then3 ], [ %3, %if.then9 ], [ %4, %if.then15 ], [ %6, %if.then24 ], [ -2, %if.end17.cleanup_crit_edge ], [ -2, %if.end26.cleanup_crit_edge ], [ 0, %if.else37 ], [ 0, %if.then35 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smk_import_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smk_parse_smack(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smk_find_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smk_perm_from_str(ptr nocapture noundef readonly %string) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %perm.0 = phi i32 [ 0, %entry ], [ %perm.1, %for.inc ]
  %cp.0 = phi ptr [ %string, %entry ], [ %incdec.ptr, %for.inc ]
  %0 = ptrtoint ptr %cp.0 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cp.0, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %sw.default [
    i8 45, label %for.cond.for.inc_crit_edge
    i8 114, label %for.cond.sw.bb_crit_edge
    i8 82, label %for.cond.sw.bb_crit_edge21
    i8 119, label %for.cond.sw.bb1_crit_edge
    i8 87, label %for.cond.sw.bb1_crit_edge22
    i8 120, label %for.cond.sw.bb3_crit_edge
    i8 88, label %for.cond.sw.bb3_crit_edge23
    i8 97, label %for.cond.sw.bb5_crit_edge
    i8 65, label %for.cond.sw.bb5_crit_edge24
    i8 116, label %for.cond.sw.bb7_crit_edge
    i8 84, label %for.cond.sw.bb7_crit_edge25
    i8 108, label %for.cond.sw.bb9_crit_edge
    i8 76, label %for.cond.sw.bb9_crit_edge26
    i8 98, label %for.cond.sw.bb11_crit_edge
    i8 66, label %for.cond.sw.bb11_crit_edge27
  ]

for.cond.sw.bb11_crit_edge27:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb11

for.cond.sw.bb11_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb11

for.cond.sw.bb9_crit_edge26:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb9

for.cond.sw.bb9_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb9

for.cond.sw.bb7_crit_edge25:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

for.cond.sw.bb7_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

for.cond.sw.bb5_crit_edge24:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

for.cond.sw.bb5_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

for.cond.sw.bb3_crit_edge23:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb3

for.cond.sw.bb3_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb3

for.cond.sw.bb1_crit_edge22:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb1

for.cond.sw.bb1_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb1

for.cond.sw.bb_crit_edge21:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

for.cond.sw.bb_crit_edge:                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

for.cond.for.inc_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

sw.bb:                                            ; preds = %for.cond.sw.bb_crit_edge, %for.cond.sw.bb_crit_edge21
  %or = or i32 %perm.0, 4
  br label %for.inc

sw.bb1:                                           ; preds = %for.cond.sw.bb1_crit_edge, %for.cond.sw.bb1_crit_edge22
  %or2 = or i32 %perm.0, 2
  br label %for.inc

sw.bb3:                                           ; preds = %for.cond.sw.bb3_crit_edge, %for.cond.sw.bb3_crit_edge23
  %or4 = or i32 %perm.0, 1
  br label %for.inc

sw.bb5:                                           ; preds = %for.cond.sw.bb5_crit_edge, %for.cond.sw.bb5_crit_edge24
  %or6 = or i32 %perm.0, 8
  br label %for.inc

sw.bb7:                                           ; preds = %for.cond.sw.bb7_crit_edge, %for.cond.sw.bb7_crit_edge25
  %or8 = or i32 %perm.0, 4096
  br label %for.inc

sw.bb9:                                           ; preds = %for.cond.sw.bb9_crit_edge, %for.cond.sw.bb9_crit_edge26
  %or10 = or i32 %perm.0, 8192
  br label %for.inc

sw.bb11:                                          ; preds = %for.cond.sw.bb11_crit_edge, %for.cond.sw.bb11_crit_edge27
  %or12 = or i32 %perm.0, 16384
  br label %for.inc

sw.default:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  ret i32 %perm.0

for.inc:                                          ; preds = %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %for.cond.for.inc_crit_edge
  %perm.1 = phi i32 [ %or12, %sw.bb11 ], [ %or10, %sw.bb9 ], [ %or8, %sw.bb7 ], [ %or6, %sw.bb5 ], [ %or4, %sw.bb3 ], [ %or2, %sw.bb1 ], [ %or, %sw.bb ], [ %perm.0, %for.cond.for.inc_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %cp.0, i32 1
  br label %for.cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @load2_seq_start(ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @smk_seq_start(ptr noundef %pos, ptr noundef nonnull @smack_known_list)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smk_seq_stop(ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 724, ptr noundef nonnull @.str.37) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !293
  %0 = tail call i32 @llvm.read_register.i32(metadata !282) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @load2_seq_next(ptr nocapture noundef readnone %s, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc.i = add i64 %1, 1
  store i64 %inc.i, ptr %pos, align 8
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %v, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.smk_seq_next.exit_crit_edge

entry.smk_seq_next.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.smk_seq_next.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.smk_seq_next.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @smk_seq_next.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.smk_seq_next.exit_crit_edge, label %if.then.i

land.lhs.true4.i.smk_seq_next.exit_crit_edge:     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smk_seq_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 554, ptr noundef nonnull @.str.33) #14
  br label %smk_seq_next.exit

smk_seq_next.exit:                                ; preds = %if.then.i, %land.lhs.true4.i.smk_seq_next.exit_crit_edge, %land.lhs.true.i.smk_seq_next.exit_crit_edge, %entry.smk_seq_next.exit_crit_edge
  %cmp.i = icmp eq ptr %3, @smack_known_list
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %3
  ret ptr %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @load_seq_show(ptr noundef %s, ptr noundef %v) #0 align 64 {
entry:
  %list = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %list)
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %v, ptr %list, align 4
  %list.0.list.0.list.0. = load volatile ptr, ptr %list, align 4
  %call = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b30 = load i1, ptr @load_seq_show.__warned, align 1
  br i1 %.b30, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @load_seq_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 624, ptr noundef nonnull @.str.32) #14
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %smk_rules = getelementptr inbounds %struct.smack_known, ptr %list.0.list.0.list.0., i32 0, i32 5
  %1 = ptrtoint ptr %smk_rules to i32
  call void @__asan_load4_noabort(i32 %1)
  %srp.031 = load volatile ptr, ptr %smk_rules, align 4
  %cmp.not32 = icmp eq ptr %srp.031, %smk_rules
  br i1 %cmp.not32, label %do.end8.for.end_crit_edge, label %do.end8.for.body_crit_edge

do.end8.for.body_crit_edge:                       ; preds = %do.end8
  br label %for.body

do.end8.for.end_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end8.for.body_crit_edge
  %srp.033 = phi ptr [ %srp.0, %for.body.for.body_crit_edge ], [ %srp.031, %do.end8.for.body_crit_edge ]
  tail call fastcc void @smk_rule_show(ptr noundef %s, ptr noundef %srp.033, i32 noundef 24)
  %2 = ptrtoint ptr %srp.033 to i32
  call void @__asan_load4_noabort(i32 %2)
  %srp.0 = load volatile ptr, ptr %srp.033, align 4
  %cmp.not = icmp eq ptr %srp.0, %smk_rules
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end8.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %list)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @smk_seq_start(ptr nocapture noundef readonly %pos, ptr noundef %head) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %conv = trunc i64 %1 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !282) #14
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !294
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 696, ptr noundef nonnull @.str.36) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %head, align 4
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b2 = load i1, ptr @smk_seq_start.__warned, align 1
  br i1 %.b2, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smk_seq_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 538, ptr noundef nonnull @.str.33) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %cmp.not3 = icmp eq ptr %7, %head
  br i1 %cmp.not3, label %do.end7.cleanup_crit_edge, label %do.end7.for.body_crit_edge

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  br label %for.body

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %do.end30.for.body_crit_edge, %do.end7.for.body_crit_edge
  %list.05 = phi ptr [ %9, %do.end30.for.body_crit_edge ], [ %7, %do.end7.for.body_crit_edge ]
  %i.04 = phi i32 [ %dec, %do.end30.for.body_crit_edge ], [ %conv, %do.end7.for.body_crit_edge ]
  %dec = add i32 %i.04, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.04)
  %cmp10 = icmp eq i32 %i.04, 0
  br i1 %cmp10, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %8 = ptrtoint ptr %list.05 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %list.05, align 4
  %call20 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %for.inc.do.end30_crit_edge

for.inc.do.end30_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

land.lhs.true22:                                  ; preds = %for.inc
  %call23 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.end30_crit_edge, label %land.lhs.true25

land.lhs.true22.do.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b361 = load i1, ptr @smk_seq_start.__warned.34, align 1
  br i1 %.b361, label %land.lhs.true25.do.end30_crit_edge, label %if.then27

land.lhs.true25.do.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smk_seq_start.__warned.34, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 540, ptr noundef nonnull @.str.33) #14
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.lhs.true25.do.end30_crit_edge, %land.lhs.true22.do.end30_crit_edge, %for.inc.do.end30_crit_edge
  %cmp.not = icmp eq ptr %9, %head
  br i1 %cmp.not, label %do.end30.cleanup_crit_edge, label %do.end30.for.body_crit_edge

do.end30.for.body_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %do.end30.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end7.cleanup_crit_edge ], [ null, %do.end30.cleanup_crit_edge ], [ %list.05, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smk_rule_show(ptr noundef %s, ptr nocapture noundef readonly %srp, i32 noundef %max) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %smk_subject = getelementptr inbounds %struct.smack_rule, ptr %srp, i32 0, i32 1
  %0 = ptrtoint ptr %smk_subject to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smk_subject, align 4
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smk_known, align 4
  %call = tail call i32 @strlen(ptr noundef %3) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %max)
  %cmp.not = icmp ult i32 %call, %max
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %smk_object = getelementptr inbounds %struct.smack_rule, ptr %srp, i32 0, i32 2
  %4 = ptrtoint ptr %smk_object to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smk_object, align 4
  %smk_known1 = getelementptr inbounds %struct.smack_known, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %smk_known1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smk_known1, align 4
  %call2 = tail call i32 @strlen(ptr noundef %7) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %max)
  %cmp3.not = icmp ult i32 %call2, %max
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %smk_access = getelementptr inbounds %struct.smack_rule, ptr %srp, i32 0, i32 3
  %8 = ptrtoint ptr %smk_access to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smk_access, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4 = icmp eq i32 %9, 0
  br i1 %cmp4, label %if.end.return_crit_edge, label %if.end6

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end6:                                          ; preds = %if.end
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.38, ptr noundef %3, ptr noundef %7) #14
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 32) #14
  %10 = ptrtoint ptr %smk_access to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %smk_access, align 4
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6.if.end13_crit_edge, label %if.then12

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 114) #14
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end6.if.end13_crit_edge
  %12 = ptrtoint ptr %smk_access to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %smk_access, align 4
  %and15 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end18_crit_edge, label %if.then17

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 119) #14
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13.if.end18_crit_edge
  %14 = ptrtoint ptr %smk_access to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %smk_access, align 4
  %and20 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.if.end23_crit_edge, label %if.then22

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 120) #14
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18.if.end23_crit_edge
  %16 = ptrtoint ptr %smk_access to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %smk_access, align 4
  %and25 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end28_crit_edge, label %if.then27

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 97) #14
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end23.if.end28_crit_edge
  %18 = ptrtoint ptr %smk_access to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %smk_access, align 4
  %and30 = and i32 %19, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end28.if.end33_crit_edge, label %if.then32

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 116) #14
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28.if.end33_crit_edge
  %20 = ptrtoint ptr %smk_access to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %smk_access, align 4
  %and35 = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end33.if.end38_crit_edge, label %if.then37

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 108) #14
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end33.if.end38_crit_edge
  %22 = ptrtoint ptr %smk_access to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %smk_access, align 4
  %and40 = and i32 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.if.end43_crit_edge, label %if.then42

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 98) #14
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end38.if.end43_crit_edge
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #14
  br label %return

return:                                           ; preds = %if.end43, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_cipso(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @smk_set_cipso(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_open_cipso(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @cipso_seq_ops) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smk_set_cipso(ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos, i32 noundef %format) unnamed_addr #0 align 64 {
entry:
  %ncats = alloca %struct.netlbl_lsm_secattr, align 4
  %mapcatset = alloca [24 x i8], align 1
  %maplevel = alloca i32, align 4
  %cat = alloca i32, align 4
  %catlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ncats) #14
  %0 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %ncats, i32 0, i32 4
  %1 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %ncats, i32 0, i32 4, i32 0, i32 1
  %2 = call ptr @memset(ptr %ncats, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mapcatset) #14
  %3 = call ptr @memset(ptr %mapcatset, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maplevel) #14
  %4 = ptrtoint ptr %maplevel to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %maplevel, align 4, !annotation !295
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cat) #14
  %5 = ptrtoint ptr %cat to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %cat, align 4, !annotation !295
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %catlen) #14
  %6 = ptrtoint ptr %catlen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %catlen, align 4, !annotation !295
  %call = tail call zeroext i1 @smack_privileged(i32 noundef 33) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp.not = icmp eq i64 %8, 0
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %format)
  %cmp3 = icmp eq i32 %format, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end2
  %9 = add i32 %count, -769
  call void @__sanitizer_cov_trace_const_cmp4(i32 -737, i32 %9)
  %10 = icmp ult i32 %9, -737
  br i1 %10, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %count)
  %cmp8.old = icmp ugt i32 %count, 4096
  br i1 %cmp8.old, label %if.end7.cleanup_crit_edge, label %if.end7.if.end10_crit_edge

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end7.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge
  %call11 = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %count) #14
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  tail call void @mutex_lock_nested(ptr noundef nonnull @smack_cipso_lock, i32 noundef 0) #14
  %call16 = tail call ptr @smk_import_entry(ptr noundef %call11, i32 noundef 0) #14
  %cmp.i4 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i4, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %call16 to i32
  br label %out

if.end20:                                         ; preds = %if.end15
  br i1 %cmp3, label %if.end20.if.end25_crit_edge, label %if.else

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %call16, i32 0, i32 2
  %13 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smk_known, align 4
  %call23 = tail call i32 @strlen(ptr noundef %14) #19
  %add = add i32 %call23, 1
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.end20.if.end25_crit_edge
  %add.sink = phi i32 [ %add, %if.else ], [ 24, %if.end20.if.end25_crit_edge ]
  %add.ptr24 = getelementptr i8, ptr %call11, i32 %add.sink
  %add.ptr26 = getelementptr i8, ptr %call11, i32 %count
  %cmp27 = icmp ugt ptr %add.ptr24, %add.ptr26
  br i1 %cmp27, label %if.end25.out_crit_edge, label %if.end29

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end29:                                         ; preds = %if.end25
  %call30 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr24, ptr noundef nonnull @.str.39, ptr noundef nonnull %maplevel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 1
  br i1 %cmp31.not, label %lor.lhs.false32, label %if.end29.out_crit_edge

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false32:                                  ; preds = %if.end29
  %15 = ptrtoint ptr %maplevel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %maplevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %16)
  %17 = icmp ugt i32 %16, 255
  br i1 %17, label %lor.lhs.false32.out_crit_edge, label %if.end37

lor.lhs.false32.out_crit_edge:                    ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end37:                                         ; preds = %lor.lhs.false32
  %add.ptr38 = getelementptr i8, ptr %add.ptr24, i32 4
  %cmp40 = icmp ugt ptr %add.ptr38, %add.ptr26
  br i1 %cmp40, label %if.end37.out_crit_edge, label %if.end42

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end42:                                         ; preds = %if.end37
  %call43 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr38, ptr noundef nonnull @.str.39, ptr noundef nonnull %catlen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, 1
  br i1 %cmp44.not, label %lor.lhs.false45, label %if.end42.out_crit_edge

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false45:                                  ; preds = %if.end42
  %18 = ptrtoint ptr %catlen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %catlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 184, i32 %19)
  %cmp46 = icmp sgt i32 %19, 184
  br i1 %cmp46, label %lor.lhs.false45.out_crit_edge, label %if.end48

lor.lhs.false45.out_crit_edge:                    ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end48:                                         ; preds = %lor.lhs.false45
  %cmp3.not = xor i1 %cmp3, true
  %mul = shl i32 %19, 2
  %add51 = add i32 %mul, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %add51, i32 %count)
  %cmp52.not = icmp eq i32 %add51, %count
  %or.cond2 = select i1 %cmp3.not, i1 true, i1 %cmp52.not
  br i1 %or.cond2, label %if.end54, label %if.end48.out_crit_edge

if.end48.out_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end54:                                         ; preds = %if.end48
  %20 = call ptr @memset(ptr %mapcatset, i32 0, i32 24)
  %21 = ptrtoint ptr %catlen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %catlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp556 = icmp sgt i32 %22, 0
  br i1 %cmp556, label %if.end54.for.body_crit_edge, label %if.end54.for.end_crit_edge

if.end54.for.end_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end54.for.body_crit_edge:                      ; preds = %if.end54
  br label %for.body

for.body:                                         ; preds = %smack_catset_bit.exit.for.body_crit_edge, %if.end54.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %smack_catset_bit.exit.for.body_crit_edge ], [ 0, %if.end54.for.body_crit_edge ]
  %rule.17 = phi ptr [ %add.ptr56, %smack_catset_bit.exit.for.body_crit_edge ], [ %add.ptr38, %if.end54.for.body_crit_edge ]
  %add.ptr56 = getelementptr i8, ptr %rule.17, i32 4
  %cmp58 = icmp ugt ptr %add.ptr56, %add.ptr26
  br i1 %cmp58, label %for.body.out_crit_edge, label %if.end60

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end60:                                         ; preds = %for.body
  %call61 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr56, ptr noundef nonnull @.str.40, ptr noundef nonnull %cat)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call61)
  %cmp62.not = icmp eq i32 %call61, 1
  br i1 %cmp62.not, label %lor.lhs.false63, label %if.end60.out_crit_edge

if.end60.out_crit_edge:                           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false63:                                  ; preds = %if.end60
  %23 = ptrtoint ptr %cat to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 184, i32 %24)
  %cmp64 = icmp ugt i32 %24, 184
  br i1 %cmp64, label %lor.lhs.false63.out_crit_edge, label %if.end66

lor.lhs.false63.out_crit_edge:                    ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end66:                                         ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i5 = icmp eq i32 %24, 0
  br i1 %cmp.i5, label %if.end66.smack_catset_bit.exit_crit_edge, label %if.end.i

if.end66.smack_catset_bit.exit_crit_edge:         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %smack_catset_bit.exit

if.end.i:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = add nsw i32 %24, -1
  %rem.i = and i32 %sub.i, 7
  %shr.i = lshr i32 128, %rem.i
  %div7.i = lshr i32 %sub.i, 3
  %arrayidx.i = getelementptr i8, ptr %mapcatset, i32 %div7.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i, align 1
  %27 = trunc i32 %shr.i to i8
  %conv3.i = or i8 %26, %27
  store i8 %conv3.i, ptr %arrayidx.i, align 1
  br label %smack_catset_bit.exit

smack_catset_bit.exit:                            ; preds = %if.end.i, %if.end66.smack_catset_bit.exit_crit_edge
  %inc = add nuw nsw i32 %i.08, 1
  %28 = ptrtoint ptr %catlen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %catlen, align 4
  %cmp55 = icmp slt i32 %inc, %29
  br i1 %cmp55, label %smack_catset_bit.exit.for.body_crit_edge, label %smack_catset_bit.exit.for.end_crit_edge

smack_catset_bit.exit.for.end_crit_edge:          ; preds = %smack_catset_bit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

smack_catset_bit.exit.for.body_crit_edge:         ; preds = %smack_catset_bit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %smack_catset_bit.exit.for.end_crit_edge, %if.end54.for.end_crit_edge
  %30 = ptrtoint ptr %maplevel to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %maplevel, align 4
  %call69 = call i32 @smk_netlbl_mls(i32 noundef %31, ptr noundef nonnull %mapcatset, ptr noundef nonnull %ncats, i32 noundef 24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call69)
  %cmp70 = icmp sgt i32 %call69, -1
  br i1 %cmp70, label %if.then71, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then71:                                        ; preds = %for.end
  %attr = getelementptr inbounds %struct.smack_known, ptr %call16, i32 0, i32 4, i32 4
  %32 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %attr, align 4
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %0, align 4
  store ptr %35, ptr %attr, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 4
  %lvl85 = getelementptr inbounds %struct.smack_known, ptr %call16, i32 0, i32 4, i32 4, i32 0, i32 1
  %38 = ptrtoint ptr %lvl85 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %lvl85, align 4
  call void @synchronize_rcu() #14
  %tobool.not3.i = icmp eq ptr %33, null
  br i1 %tobool.not3.i, label %if.then71.netlbl_catmap_free.exit_crit_edge, label %if.then71.while.body.i_crit_edge

if.then71.while.body.i_crit_edge:                 ; preds = %if.then71
  br label %while.body.i

if.then71.netlbl_catmap_free.exit_crit_edge:      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #16
  br label %netlbl_catmap_free.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then71.while.body.i_crit_edge
  %catmap.addr.04.i = phi ptr [ %40, %while.body.i.while.body.i_crit_edge ], [ %33, %if.then71.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %catmap.addr.04.i, i32 0, i32 2
  %39 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %next.i, align 8
  call void @kfree(ptr noundef nonnull %catmap.addr.04.i) #14
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %while.body.i.netlbl_catmap_free.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.netlbl_catmap_free.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netlbl_catmap_free.exit

netlbl_catmap_free.exit:                          ; preds = %while.body.i.netlbl_catmap_free.exit_crit_edge, %if.then71.netlbl_catmap_free.exit_crit_edge
  call void @netlbl_cache_invalidate() #14
  br label %out

out:                                              ; preds = %netlbl_catmap_free.exit, %for.end.out_crit_edge, %lor.lhs.false63.out_crit_edge, %if.end60.out_crit_edge, %for.body.out_crit_edge, %if.end48.out_crit_edge, %lor.lhs.false45.out_crit_edge, %if.end42.out_crit_edge, %if.end37.out_crit_edge, %lor.lhs.false32.out_crit_edge, %if.end29.out_crit_edge, %if.end25.out_crit_edge, %if.then18
  %rc.0 = phi i32 [ %12, %if.then18 ], [ -22, %if.end29.out_crit_edge ], [ -22, %lor.lhs.false32.out_crit_edge ], [ -22, %if.end42.out_crit_edge ], [ -22, %lor.lhs.false45.out_crit_edge ], [ %count, %netlbl_catmap_free.exit ], [ %call69, %for.end.out_crit_edge ], [ -75, %if.end25.out_crit_edge ], [ -75, %if.end37.out_crit_edge ], [ -22, %if.end48.out_crit_edge ], [ -75, %for.body.out_crit_edge ], [ -22, %lor.lhs.false63.out_crit_edge ], [ -22, %if.end60.out_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @smack_cipso_lock) #14
  call void @kfree(ptr noundef %call11) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then13, %if.end7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then13 ], [ %rc.0, %out ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %catlen) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cat) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maplevel) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mapcatset) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ncats) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smk_netlbl_mls(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlbl_cache_invalidate() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cipso_seq_start(ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @smk_seq_start(ptr noundef %pos, ptr noundef nonnull @smack_known_list)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cipso_seq_next(ptr nocapture noundef readnone %s, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc.i = add i64 %1, 1
  store i64 %inc.i, ptr %pos, align 8
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %v, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.smk_seq_next.exit_crit_edge

entry.smk_seq_next.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.smk_seq_next.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.smk_seq_next.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @smk_seq_next.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.smk_seq_next.exit_crit_edge, label %if.then.i

land.lhs.true4.i.smk_seq_next.exit_crit_edge:     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smk_seq_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 554, ptr noundef nonnull @.str.33) #14
  br label %smk_seq_next.exit

smk_seq_next.exit:                                ; preds = %if.then.i, %land.lhs.true4.i.smk_seq_next.exit_crit_edge, %land.lhs.true.i.smk_seq_next.exit_crit_edge, %entry.smk_seq_next.exit_crit_edge
  %cmp.i = icmp eq ptr %3, @smack_known_list
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %3
  ret ptr %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cipso_seq_show(ptr noundef %s, ptr noundef %v) #0 align 64 {
entry:
  %list = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %list)
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %v, ptr %list, align 4
  %list.0.list.0.list.0. = load volatile ptr, ptr %list, align 4
  %attr = getelementptr inbounds %struct.smack_known, ptr %list.0.list.0.list.0., i32 0, i32 4, i32 4
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attr, align 4
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %list.0.list.0.list.0., i32 0, i32 2
  %3 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smk_known, align 4
  %call = tail call i32 @strlen(ptr noundef %4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %call)
  %cmp2 = icmp ugt i32 %call, 23
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %lvl = getelementptr inbounds %struct.smack_known, ptr %list.0.list.0.list.0., i32 0, i32 4, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %lvl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lvl, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.43, ptr noundef %4, i32 noundef %6) #14
  %call7 = tail call i32 @netlbl_catmap_walk(ptr noundef %2, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %cmp822 = icmp sgt i32 %call7, -1
  br i1 %cmp822, label %for.body.preheader, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.44, i32 noundef 47, i32 noundef %call7) #14
  %add.peel = add nuw i32 %call7, 1
  %call9.peel = tail call i32 @netlbl_catmap_walk(ptr noundef %2, i32 noundef %add.peel) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.peel)
  %cmp8.peel = icmp sgt i32 %call9.peel, -1
  br i1 %cmp8.peel, label %for.body.preheader.for.body_crit_edge, label %for.body.preheader.for.end_crit_edge

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader.for.body_crit_edge:            ; preds = %for.body.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader.for.body_crit_edge
  %i.024 = phi i32 [ %call9, %for.body.for.body_crit_edge ], [ %call9.peel, %for.body.preheader.for.body_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.44, i32 noundef 44, i32 noundef %i.024) #14
  %add = add nuw i32 %i.024, 1
  %call9 = tail call i32 @netlbl_catmap_walk(ptr noundef %2, i32 noundef %add) #14
  %cmp8 = icmp sgt i32 %call9, -1
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge, !llvm.loop !296

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.body.preheader.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %list)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_catmap_walk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_read_doi(ptr nocapture noundef readnone %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %temp = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %temp) #14
  %0 = call ptr @memset(ptr %temp, i32 255, i32 80)
  %1 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp.not = icmp eq i64 %2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = load i32, ptr @smk_cipso_doi_value, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %temp, ptr noundef nonnull @.str.39, i32 noundef %3)
  %call3 = call i32 @strlen(ptr noundef nonnull %temp) #19
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %temp, i32 noundef %call3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %temp) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_doi(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %temp = alloca [80 x i8], align 1
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %temp) #14
  %0 = call ptr @memset(ptr %temp, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #14
  %1 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %i, align 4, !annotation !295
  %call = tail call zeroext i1 @smack_privileged(i32 noundef 33) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = add i32 %count, -80
  call void @__sanitizer_cov_trace_const_cmp4(i32 -79, i32 %2)
  %3 = icmp ult i32 %2, -79
  br i1 %3, label %if.end.cleanup_crit_edge, label %if.then.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  call void @__check_object_size(ptr noundef nonnull %temp, i32 noundef %count, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.47, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #20, !srcloc !298
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !299

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %temp, i32 noundef %count) #14
  %5 = call i32 @llvm.read_register.i32(metadata !282) #14
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !300
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !301
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !302
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %temp, ptr noundef %buf, i32 noundef %count) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #14, !srcloc !301
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !302
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !299

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i20 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %count, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %count, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %count, %res.0.i.i20
  %add.ptr.i.i = getelementptr i8, ptr %temp, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i20)
  br label %cleanup

if.end7:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr [80 x i8], ptr %temp, i32 0, i32 %count
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  %call9 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %temp, ptr noundef nonnull @.str.39, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 1
  br i1 %cmp10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i, align 4
  store i32 %11, ptr @smk_cipso_doi_value, align 4
  call fastcc void @smk_cipso_doi()
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end7.cleanup_crit_edge, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end12 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %temp) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_read_direct(ptr nocapture noundef readnone %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %temp = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %temp) #14
  %0 = call ptr @memset(ptr %temp, i32 255, i32 80)
  %1 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp.not = icmp eq i64 %2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = load i32, ptr @smack_cipso_direct, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %temp, ptr noundef nonnull @.str.39, i32 noundef %3)
  %call3 = call i32 @strlen(ptr noundef nonnull %temp) #19
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %temp, i32 noundef %call3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %temp) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_direct(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %temp = alloca [80 x i8], align 1
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %temp) #14
  %0 = call ptr @memset(ptr %temp, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #14
  %1 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %i, align 4, !annotation !295
  %call = tail call zeroext i1 @smack_privileged(i32 noundef 33) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = add i32 %count, -80
  call void @__sanitizer_cov_trace_const_cmp4(i32 -79, i32 %2)
  %3 = icmp ult i32 %2, -79
  br i1 %3, label %if.end.cleanup_crit_edge, label %if.then.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  call void @__check_object_size(ptr noundef nonnull %temp, i32 noundef %count, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.47, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #20, !srcloc !298
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !299

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %temp, i32 noundef %count) #14
  %5 = call i32 @llvm.read_register.i32(metadata !282) #14
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !300
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !301
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !302
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %temp, ptr noundef %buf, i32 noundef %count) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #14, !srcloc !301
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !302
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !299

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i55 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %count, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %count, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %count, %res.0.i.i55
  %add.ptr.i.i = getelementptr i8, ptr %temp, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i55)
  br label %cleanup

if.end7:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr [80 x i8], ptr %temp, i32 0, i32 %count
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  %call9 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %temp, ptr noundef nonnull @.str.39, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 1
  br i1 %cmp10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %10 = load i32, ptr @smack_cipso_direct, align 4
  %11 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp13.not = icmp eq i32 %10, %12
  br i1 %cmp13.not, label %if.end12.cleanup_crit_edge, label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  call void @mutex_lock_nested(ptr noundef nonnull @smack_known_lock, i32 noundef 0) #14
  %call15 = call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then14.do.end_crit_edge

if.then14.do.end_crit_edge:                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %if.then14
  %call16 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true18

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true18:                                  ; preds = %land.lhs.true
  %.b52 = load i1, ptr @smk_write_direct.__warned, align 1
  br i1 %.b52, label %land.lhs.true18.do.end_crit_edge, label %if.then20

land.lhs.true18.do.end_crit_edge:                 ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smk_write_direct.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1688, ptr noundef nonnull @.str.32) #14
  br label %do.end

do.end:                                           ; preds = %if.then20, %land.lhs.true18.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.then14.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_known_list to i32))
  %skp.058 = load volatile ptr, ptr @smack_known_list, align 4
  %cmp26.not59 = icmp eq ptr %skp.058, @smack_known_list
  br i1 %cmp26.not59, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %13 = load i32, ptr @smack_cipso_direct, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %skp.060 = phi ptr [ %skp.058, %for.body.lr.ph ], [ %skp.0, %for.inc.for.body_crit_edge ]
  %lvl = getelementptr inbounds %struct.smack_known, ptr %skp.060, i32 0, i32 4, i32 4, i32 0, i32 1
  %14 = ptrtoint ptr %lvl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lvl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp27 = icmp eq i32 %15, %13
  br i1 %cmp27, label %if.then28, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then28:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i, align 4
  %18 = ptrtoint ptr %lvl to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %lvl, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then28, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %skp.060 to i32
  call void @__asan_load4_noabort(i32 %19)
  %skp.0 = load volatile ptr, ptr %skp.060, align 4
  %cmp26.not = icmp eq ptr %skp.0, @smack_known_list
  br i1 %cmp26.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %20 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i, align 4
  store i32 %21, ptr @smack_cipso_direct, align 4
  call void @mutex_unlock(ptr noundef nonnull @smack_known_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %count, %for.end ], [ %count, %if.end12.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %temp) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_read_ambient(ptr nocapture noundef readnone %filp, ptr noundef %buf, i32 noundef %cn, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @smack_ambient_lock, i32 noundef 0) #14
  %2 = load ptr, ptr @smack_net_ambient, align 4
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smk_known, align 4
  %call = tail call i32 @strlen(ptr noundef %4) #19
  %add = add i32 %call, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %cn)
  %cmp1.not = icmp ugt i32 %add, %cn
  br i1 %cmp1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %cn, ptr noundef %ppos, ptr noundef %4, i32 noundef %add) #14
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %rc.0 = phi i32 [ %call4, %if.then2 ], [ -22, %if.end.if.end5_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @smack_ambient_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_ambient(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @smack_privileged(i32 noundef 33) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = add i32 %count, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %0)
  %1 = icmp ult i32 %0, -4096
  br i1 %1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %count) #14
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call9 = tail call ptr @smk_import_entry(ptr noundef %call4, i32 noundef %count) #14
  %cmp.i26 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %call9 to i32
  br label %out

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_lock_nested(ptr noundef nonnull @smack_ambient_lock, i32 noundef 0) #14
  %4 = load ptr, ptr @smack_net_ambient, align 4
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smk_known, align 4
  store ptr %call9, ptr @smack_net_ambient, align 4
  tail call fastcc void @smk_unlbl_ambient(ptr noundef %6)
  tail call void @mutex_unlock(ptr noundef nonnull @smack_ambient_lock) #14
  br label %out

out:                                              ; preds = %if.end13, %if.then11
  %rc.0 = phi i32 [ %3, %if.then11 ], [ %count, %if.end13 ]
  tail call void @kfree(ptr noundef %call4) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %rc.0, %out ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_net4addr(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  %newname = alloca %struct.sockaddr_in, align 4
  %audit_info = alloca %struct.netlbl_audit, align 4
  %masks = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %newname) #14
  %0 = getelementptr inbounds %struct.sockaddr_in, ptr %newname, i32 0, i32 2
  %1 = call ptr @memset(ptr %newname, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %audit_info) #14
  %2 = ptrtoint ptr %audit_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %audit_info, align 4, !annotation !295
  %3 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !295
  %5 = getelementptr inbounds %struct.netlbl_audit, ptr %audit_info, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !295
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %masks) #14
  %7 = ptrtoint ptr %masks to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %masks, align 4, !annotation !295
  %call = tail call zeroext i1 @smack_privileged(i32 noundef 33) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp.not = icmp ne i64 %9, 0
  %10 = add i32 %count, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4087, i32 %10)
  %11 = icmp ult i32 %10, -4087
  %or.cond = or i1 %11, %cmp.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %count) #14
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end8.i.i

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end6
  %add = add nuw nsw i32 %count, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #21
  %cmp13 = icmp eq ptr %call9.i.i, null
  br i1 %cmp13, label %if.end8.i.i.free_data_out_crit_edge, label %if.end15

if.end8.i.i.free_data_out_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_data_out

if.end15:                                         ; preds = %if.end8.i.i
  %arrayidx16 = getelementptr inbounds i8, ptr %0, i32 1
  %arrayidx17 = getelementptr inbounds i8, ptr %0, i32 2
  %arrayidx18 = getelementptr inbounds i8, ptr %0, i32 3
  %call19 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call7, ptr noundef nonnull @.str.50, ptr noundef %0, ptr noundef %arrayidx16, ptr noundef %arrayidx17, ptr noundef %arrayidx18, ptr noundef nonnull %masks, ptr noundef nonnull %call9.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 6
  br i1 %cmp20.not, label %if.end30, label %if.then21

if.then21:                                        ; preds = %if.end15
  %call26 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call7, ptr noundef nonnull @.str.51, ptr noundef %0, ptr noundef %arrayidx16, ptr noundef %arrayidx17, ptr noundef %arrayidx18, ptr noundef nonnull %call9.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 5
  br i1 %cmp27.not, label %if.end30.thread, label %if.then21.free_out_crit_edge

if.then21.free_out_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_out

if.end30.thread:                                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %masks to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32, ptr %masks, align 4
  br label %if.end33

if.end30:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %masks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %.pr)
  %cmp31 = icmp ugt i32 %.pr, 32
  br i1 %cmp31, label %if.end30.free_out_crit_edge, label %if.end30.if.end33_crit_edge

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.end30.free_out_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_out

if.end33:                                         ; preds = %if.end30.if.end33_crit_edge, %if.end30.thread
  %15 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %16)
  %cmp35.not = icmp eq i8 %16, 45
  br i1 %cmp35.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end33
  %call38 = call ptr @smk_import_entry(ptr noundef nonnull %call9.i.i, i32 noundef 0) #14
  %cmp.i197 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %if.then40, label %if.then37.if.end48_crit_edge

if.then37.if.end48_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %call38 to i32
  br label %free_out

if.else:                                          ; preds = %if.end33
  %call43 = call i32 @strcmp(ptr noundef nonnull %call9.i.i, ptr noundef nonnull dereferenceable(7) @.str.52) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %if.else.if.end48_crit_edge, label %if.else.free_out_crit_edge

if.else.free_out_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_out

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.end48:                                         ; preds = %if.else.if.end48_crit_edge, %if.then37.if.end48_crit_edge
  %skp.0 = phi ptr [ %call38, %if.then37.if.end48_crit_edge ], [ null, %if.else.if.end48_crit_edge ]
  %18 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %masks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp49.not234 = icmp eq i32 %19, 0
  br i1 %cmp49.not234, label %if.end48.for.end_crit_edge, label %if.end48.for.body_crit_edge

if.end48.for.body_crit_edge:                      ; preds = %if.end48
  br label %for.body

if.end48.for.end_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end48.for.body_crit_edge
  %temp_mask.0237 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %if.end48.for.body_crit_edge ]
  %mask_bits.0236 = phi i32 [ %shr, %for.body.for.body_crit_edge ], [ -2147483648, %if.end48.for.body_crit_edge ]
  %m.0235 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %19, %if.end48.for.body_crit_edge ]
  %or = or i32 %temp_mask.0237, %mask_bits.0236
  %shr = lshr i32 %mask_bits.0236, 1
  %dec = add i32 %m.0235, -1
  %cmp49.not = icmp eq i32 %dec, 0
  br i1 %cmp49.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end48.for.end_crit_edge
  %temp_mask.0.lcssa = phi i32 [ 0, %if.end48.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %0, align 4
  %and = and i32 %21, %temp_mask.0.lcssa
  store i32 %and, ptr %0, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @smk_net4addr_lock, i32 noundef 0) #14
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %0, align 4
  %call57 = call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool.not = icmp eq i32 %call57, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.end.do.end_crit_edge

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %for.end
  %call58 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true60

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true60:                                  ; preds = %land.lhs.true
  %.b196 = load i1, ptr @smk_write_net4addr.__warned, align 1
  br i1 %.b196, label %land.lhs.true60.do.end_crit_edge, label %if.then62

land.lhs.true60.do.end_crit_edge:                 ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then62:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smk_write_net4addr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1238, ptr noundef nonnull @.str.32) #14
  br label %do.end

do.end:                                           ; preds = %if.then62, %land.lhs.true60.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.end.do.end_crit_edge
  %snp.0238 = load volatile ptr, ptr @smk_net4addr_list, align 4
  %cmp69.not239 = icmp eq ptr %snp.0238, @smk_net4addr_list
  br i1 %cmp69.not239, label %do.end.if.then92.critedge_crit_edge, label %do.end.for.body71_crit_edge

do.end.for.body71_crit_edge:                      ; preds = %do.end
  br label %for.body71

do.end.if.then92.critedge_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then92.critedge

for.body71:                                       ; preds = %for.inc80.for.body71_crit_edge, %do.end.for.body71_crit_edge
  %snp.0240 = phi ptr [ %snp.0, %for.inc80.for.body71_crit_edge ], [ %snp.0238, %do.end.for.body71_crit_edge ]
  %smk_host = getelementptr inbounds %struct.smk_net4addr, ptr %snp.0240, i32 0, i32 1
  %24 = ptrtoint ptr %smk_host to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %smk_host, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp73 = icmp eq i32 %25, %23
  br i1 %cmp73, label %land.lhs.true75, label %for.body71.for.inc80_crit_edge

for.body71.for.inc80_crit_edge:                   ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc80

land.lhs.true75:                                  ; preds = %for.body71
  %smk_masks = getelementptr inbounds %struct.smk_net4addr, ptr %snp.0240, i32 0, i32 3
  %26 = ptrtoint ptr %smk_masks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %smk_masks, align 4
  %28 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %masks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp76 = icmp eq i32 %27, %29
  br i1 %cmp76, label %if.else106.critedge, label %land.lhs.true75.for.inc80_crit_edge

land.lhs.true75.for.inc80_crit_edge:              ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc80

for.inc80:                                        ; preds = %land.lhs.true75.for.inc80_crit_edge, %for.body71.for.inc80_crit_edge
  %30 = ptrtoint ptr %snp.0240 to i32
  call void @__asan_load4_noabort(i32 %30)
  %snp.0 = load volatile ptr, ptr %snp.0240, align 4
  %cmp69.not = icmp eq ptr %snp.0, @smk_net4addr_list
  br i1 %cmp69.not, label %for.inc80.if.then92.critedge_crit_edge, label %for.inc80.for.body71_crit_edge

for.inc80.for.body71_crit_edge:                   ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body71

for.inc80.if.then92.critedge_crit_edge:           ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then92.critedge

if.then92.critedge:                               ; preds = %for.inc80.if.then92.critedge_crit_edge, %do.end.if.then92.critedge_crit_edge
  %31 = call i32 @llvm.read_register.i32(metadata !282) #14
  %and.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 99
  %35 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cred.i.i, align 16
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %36, i32 0, i32 23
  %37 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %security.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_blob_sizes to i32))
  %39 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 %39
  %40 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i.i.i, align 4
  %loginuid.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 121
  %42 = ptrtoint ptr %loginuid.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %loginuid.i.i, align 16
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.sroa.0.0.copyload.i.i, ptr %3, align 4
  %sessionid.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 122
  %44 = ptrtoint ptr %sessionid.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sessionid.i.i, align 4
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %5, align 4
  %smk_secid.i = getelementptr inbounds %struct.smack_known, ptr %41, i32 0, i32 3
  %47 = ptrtoint ptr %smk_secid.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %smk_secid.i, align 4
  %49 = ptrtoint ptr %audit_info to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %audit_info, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i201 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3520, i32 noundef 24) #18
  %cmp94 = icmp eq ptr %call7.i.i201, null
  br i1 %cmp94, label %if.then92.critedge.if.end128.thread_crit_edge, label %if.end117.thread

if.then92.critedge.if.end128.thread_crit_edge:    ; preds = %if.then92.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end128.thread

if.end117.thread:                                 ; preds = %if.then92.critedge
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %0, align 4
  %smk_host100 = getelementptr inbounds %struct.smk_net4addr, ptr %call7.i.i201, i32 0, i32 1
  %53 = ptrtoint ptr %smk_host100 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %smk_host100, align 8
  %smk_mask = getelementptr inbounds %struct.smk_net4addr, ptr %call7.i.i201, i32 0, i32 2
  %54 = ptrtoint ptr %smk_mask to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %temp_mask.0.lcssa, ptr %smk_mask, align 4
  %smk_label = getelementptr inbounds %struct.smk_net4addr, ptr %call7.i.i201, i32 0, i32 4
  %55 = ptrtoint ptr %smk_label to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %skp.0, ptr %smk_label, align 4
  %56 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %masks, align 4
  %smk_masks104 = getelementptr inbounds %struct.smk_net4addr, ptr %call7.i.i201, i32 0, i32 3
  %58 = ptrtoint ptr %smk_masks104 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %smk_masks104, align 8
  call fastcc void @smk_net4addr_insert(ptr noundef nonnull %call7.i.i201)
  br label %land.lhs.true120

if.else106.critedge:                              ; preds = %land.lhs.true75
  %59 = call i32 @llvm.read_register.i32(metadata !282) #14
  %and.i.i.i204 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i204 to ptr
  %task.i.i205 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task.i.i205 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task.i.i205, align 8
  %cred.i.i206 = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 99
  %63 = ptrtoint ptr %cred.i.i206 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cred.i.i206, align 16
  %security.i.i.i207 = getelementptr inbounds %struct.cred, ptr %64, i32 0, i32 23
  %65 = ptrtoint ptr %security.i.i.i207 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %security.i.i.i207, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_blob_sizes to i32))
  %67 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i.i.i208 = getelementptr i8, ptr %66, i32 %67
  %68 = ptrtoint ptr %add.ptr.i.i.i208 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i.i.i208, align 4
  %loginuid.i.i210 = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 121
  %70 = ptrtoint ptr %loginuid.i.i210 to i32
  call void @__asan_load4_noabort(i32 %70)
  %retval.sroa.0.0.copyload.i.i211 = load i32, ptr %loginuid.i.i210, align 16
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %retval.sroa.0.0.copyload.i.i211, ptr %3, align 4
  %sessionid.i.i212 = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 122
  %72 = ptrtoint ptr %sessionid.i.i212 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sessionid.i.i212, align 4
  %74 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %5, align 4
  %smk_secid.i214 = getelementptr inbounds %struct.smack_known, ptr %69, i32 0, i32 3
  %75 = ptrtoint ptr %smk_secid.i214 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %smk_secid.i214, align 4
  %77 = ptrtoint ptr %audit_info to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %audit_info, align 4
  %smk_label107 = getelementptr inbounds %struct.smk_net4addr, ptr %snp.0240, i32 0, i32 4
  %78 = ptrtoint ptr %smk_label107 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %smk_label107, align 4
  %cmp108.not = icmp eq ptr %79, null
  br i1 %cmp108.not, label %if.end117.thread224, label %if.end117

if.end117.thread224:                              ; preds = %if.else106.critedge
  call void @__sanitizer_cov_trace_pc() #16
  %80 = ptrtoint ptr %smk_label107 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %skp.0, ptr %smk_label107, align 4
  br label %land.lhs.true120

if.end117:                                        ; preds = %if.else106.critedge
  %smk_mask112 = getelementptr inbounds %struct.smk_net4addr, ptr %snp.0240, i32 0, i32 2
  %call113 = call i32 @netlbl_cfg_unlbl_static_del(ptr noundef nonnull @init_net, ptr noundef null, ptr noundef %smk_host, ptr noundef %smk_mask112, i16 noundef zeroext 2, ptr noundef nonnull %audit_info) #14
  %81 = ptrtoint ptr %smk_label107 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %skp.0, ptr %smk_label107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp118 = icmp eq i32 %call113, 0
  br i1 %cmp118, label %if.end117.land.lhs.true120_crit_edge, label %if.end117.if.end128.thread_crit_edge

if.end117.if.end128.thread_crit_edge:             ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end128.thread

if.end117.land.lhs.true120_crit_edge:             ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true120

land.lhs.true120:                                 ; preds = %if.end117.land.lhs.true120_crit_edge, %if.end117.thread224, %if.end117.thread
  %snp.1219 = phi ptr [ %call7.i.i201, %if.end117.thread ], [ %snp.0240, %if.end117.land.lhs.true120_crit_edge ], [ %snp.0240, %if.end117.thread224 ]
  %cmp121.not = icmp eq ptr %skp.0, null
  br i1 %cmp121.not, label %land.lhs.true120.if.end128.thread229_crit_edge, label %if.end128

land.lhs.true120.if.end128.thread229_crit_edge:   ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end128.thread229

if.end128:                                        ; preds = %land.lhs.true120
  %smk_host124 = getelementptr inbounds %struct.smk_net4addr, ptr %snp.1219, i32 0, i32 1
  %smk_mask125 = getelementptr inbounds %struct.smk_net4addr, ptr %snp.1219, i32 0, i32 2
  %smk_label126 = getelementptr inbounds %struct.smk_net4addr, ptr %snp.1219, i32 0, i32 4
  %82 = ptrtoint ptr %smk_label126 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %smk_label126, align 4
  %smk_secid = getelementptr inbounds %struct.smack_known, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %smk_secid to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %smk_secid, align 4
  %call127 = call i32 @netlbl_cfg_unlbl_static_add(ptr noundef nonnull @init_net, ptr noundef null, ptr noundef %smk_host124, ptr noundef %smk_mask125, i16 noundef zeroext 2, i32 noundef %85, ptr noundef nonnull %audit_info) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp129 = icmp eq i32 %call127, 0
  br i1 %cmp129, label %if.end128.if.end128.thread229_crit_edge, label %if.end128.if.end128.thread_crit_edge

if.end128.if.end128.thread_crit_edge:             ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end128.thread

if.end128.if.end128.thread229_crit_edge:          ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end128.thread229

if.end128.thread229:                              ; preds = %if.end128.if.end128.thread229_crit_edge, %land.lhs.true120.if.end128.thread229_crit_edge
  br label %if.end128.thread

if.end128.thread:                                 ; preds = %if.end128.thread229, %if.end128.if.end128.thread_crit_edge, %if.end117.if.end128.thread_crit_edge, %if.then92.critedge.if.end128.thread_crit_edge
  %86 = phi i32 [ %count, %if.end128.thread229 ], [ %call127, %if.end128.if.end128.thread_crit_edge ], [ %call113, %if.end117.if.end128.thread_crit_edge ], [ -12, %if.then92.critedge.if.end128.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @smk_net4addr_lock) #14
  br label %free_out

free_out:                                         ; preds = %if.end128.thread, %if.else.free_out_crit_edge, %if.then40, %if.end30.free_out_crit_edge, %if.then21.free_out_crit_edge
  %rc.4 = phi i32 [ %17, %if.then40 ], [ %86, %if.end128.thread ], [ -22, %if.then21.free_out_crit_edge ], [ -22, %if.end30.free_out_crit_edge ], [ -22, %if.else.free_out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #14
  br label %free_data_out

free_data_out:                                    ; preds = %free_out, %if.end8.i.i.free_data_out_crit_edge
  %rc.5 = phi i32 [ %rc.4, %free_out ], [ -12, %if.end8.i.i.free_data_out_crit_edge ]
  call void @kfree(ptr noundef %call7) #14
  br label %cleanup

cleanup:                                          ; preds = %free_data_out, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then9 ], [ %rc.5, %free_data_out ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %masks) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %audit_info) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %newname) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_open_net4addr(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @net4addr_seq_ops) #14
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smk_net4addr_insert(ptr noundef %new) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @smk_net4addr_list, align 4
  %cmp.i.not = icmp eq ptr %0, @smk_net4addr_list
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef nonnull @smk_net4addr_list, ptr noundef nonnull @smk_net4addr_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @smk_net4addr_list, ptr %new, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %2 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @smk_net4addr_list, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !292
  store volatile ptr %new, ptr @smk_net4addr_list, align 4
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %3 = load volatile ptr, ptr @smk_net4addr_list, align 4
  %smk_masks = getelementptr inbounds %struct.smk_net4addr, ptr %new, i32 0, i32 3
  %4 = ptrtoint ptr %smk_masks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smk_masks, align 4
  %smk_masks2 = getelementptr inbounds %struct.smk_net4addr, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %smk_masks2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smk_masks2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp sgt i32 %5, %7
  br i1 %cmp, label %if.then3, label %do.body6

if.then3:                                         ; preds = %if.end
  %call.i.i70 = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef nonnull @smk_net4addr_list, ptr noundef %3) #14
  br i1 %call.i.i70, label %if.end.i.i73, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i73:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %new, align 4
  %prev2.i.i71 = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %9 = ptrtoint ptr %prev2.i.i71 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @smk_net4addr_list, ptr %prev2.i.i71, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !292
  store volatile ptr %new, ptr @smk_net4addr_list, align 4
  %prev37.i.i72 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  br label %cleanup.sink.split

do.body6:                                         ; preds = %if.end
  %call7 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %do.body6.for.cond.preheader_crit_edge

do.body6.for.cond.preheader_crit_edge:            ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %do.body6
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true11

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b69 = load i1, ptr @smk_net4addr_insert.__warned, align 1
  br i1 %.b69, label %land.lhs.true11.for.cond.preheader_crit_edge, label %if.then13

land.lhs.true11.for.cond.preheader_crit_edge:     ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smk_net4addr_insert.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1118, ptr noundef nonnull @.str.32) #14
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then13, %land.lhs.true11.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %do.body6.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %if.end32.for.cond_crit_edge, %for.cond.preheader
  %m.0.in = phi ptr [ %m.0, %if.end32.for.cond_crit_edge ], [ @smk_net4addr_list, %for.cond.preheader ]
  %10 = ptrtoint ptr %m.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %m.0 = load volatile ptr, ptr %m.0.in, align 4
  %cmp25.not = icmp eq ptr %m.0, @smk_net4addr_list
  br i1 %cmp25.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %11 = ptrtoint ptr %m.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m.0, align 4
  %cmp.i75.not = icmp eq ptr %12, @smk_net4addr_list
  br i1 %cmp.i75.not, label %if.then29, label %if.end32

if.then29:                                        ; preds = %for.body
  %call.i.i77 = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %m.0, ptr noundef nonnull @smk_net4addr_list) #14
  br i1 %call.i.i77, label %if.end.i.i80, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i80:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @smk_net4addr_list, ptr %new, align 4
  %prev2.i.i78 = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %14 = ptrtoint ptr %prev2.i.i78 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %m.0, ptr %prev2.i.i78, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !292
  %15 = ptrtoint ptr %m.0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %new, ptr %m.0, align 4
  br label %cleanup.sink.split

if.end32:                                         ; preds = %for.body
  %16 = ptrtoint ptr %m.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %m.0, align 4
  %18 = ptrtoint ptr %smk_masks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %smk_masks, align 4
  %smk_masks42 = getelementptr inbounds %struct.smk_net4addr, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %smk_masks42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %smk_masks42, align 4
  %cmp43 = icmp sgt i32 %19, %21
  br i1 %cmp43, label %if.then44, label %if.end32.for.cond_crit_edge

if.end32.for.cond_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then44:                                        ; preds = %if.end32
  %call.i.i82 = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %m.0, ptr noundef %17) #14
  br i1 %call.i.i82, label %if.end.i.i85, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i85:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %17, ptr %new, align 4
  %prev2.i.i83 = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %23 = ptrtoint ptr %prev2.i.i83 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %m.0, ptr %prev2.i.i83, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !292
  %24 = ptrtoint ptr %m.0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %new, ptr %m.0, align 4
  %prev37.i.i84 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i.i85, %if.end.i.i80, %if.end.i.i73, %if.end.i.i
  %prev37.i.i84.sink = phi ptr [ %prev37.i.i84, %if.end.i.i85 ], [ getelementptr inbounds (%struct.list_head, ptr @smk_net4addr_list, i32 0, i32 1), %if.end.i.i80 ], [ %prev37.i.i72, %if.end.i.i73 ], [ getelementptr inbounds (%struct.list_head, ptr @smk_net4addr_list, i32 0, i32 1), %if.end.i.i ]
  %25 = ptrtoint ptr %prev37.i.i84.sink to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %new, ptr %prev37.i.i84.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then44.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_cfg_unlbl_static_del(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_cfg_unlbl_static_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @net4addr_seq_start(ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @smk_seq_start(ptr noundef %pos, ptr noundef nonnull @smk_net4addr_list)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @net4addr_seq_next(ptr nocapture noundef readnone %s, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc.i = add i64 %1, 1
  store i64 %inc.i, ptr %pos, align 8
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %v, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.smk_seq_next.exit_crit_edge

entry.smk_seq_next.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.smk_seq_next.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.smk_seq_next.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @smk_seq_next.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.smk_seq_next.exit_crit_edge, label %if.then.i

land.lhs.true4.i.smk_seq_next.exit_crit_edge:     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smk_seq_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 554, ptr noundef nonnull @.str.33) #14
  br label %smk_seq_next.exit

smk_seq_next.exit:                                ; preds = %if.then.i, %land.lhs.true4.i.smk_seq_next.exit_crit_edge, %land.lhs.true.i.smk_seq_next.exit_crit_edge, %entry.smk_seq_next.exit_crit_edge
  %cmp.i = icmp eq ptr %3, @smk_net4addr_list
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %3
  ret ptr %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net4addr_seq_show(ptr noundef %s, ptr noundef %v) #0 align 64 {
entry:
  %list = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %list)
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %v, ptr %list, align 4
  %list.0.list.0.list.0. = load volatile ptr, ptr %list, align 4
  %smk_label = getelementptr inbounds %struct.smk_net4addr, ptr %list.0.list.0.list.0., i32 0, i32 4
  %1 = ptrtoint ptr %smk_label to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smk_label, align 4
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smk_known, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %kp.0 = phi ptr [ %4, %if.then ], [ @.str.52, %entry.if.end_crit_edge ]
  %smk_host = getelementptr inbounds %struct.smk_net4addr, ptr %list.0.list.0.list.0., i32 0, i32 1
  %smk_masks = getelementptr inbounds %struct.smk_net4addr, ptr %list.0.list.0.list.0., i32 0, i32 3
  %5 = ptrtoint ptr %smk_masks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %smk_masks, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.55, ptr noundef %smk_host, i32 noundef %6, ptr noundef %kp.0) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %list)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_onlycap(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %list_tmp = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list_tmp) #14
  %0 = getelementptr inbounds %struct.list_head, ptr %list_tmp, i32 0, i32 1
  %1 = ptrtoint ptr %list_tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list_tmp, ptr %list_tmp, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list_tmp, ptr %0, align 4
  %call = call zeroext i1 @smack_privileged(i32 noundef 33) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %count)
  %cmp = icmp ugt i32 %count, 4096
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %count) #14
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %call8 = call fastcc i32 @smk_parse_label_list(ptr noundef %call3, ptr noundef nonnull %list_tmp)
  call void @kfree(ptr noundef %call3) #14
  %4 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %call8, label %if.end7.if.end13_crit_edge [
    i32 0, label %if.end7.if.then12_crit_edge
    i32 -22, label %land.lhs.true
  ]

if.end7.if.then12_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %5 = ptrtoint ptr %list_tmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %list_tmp, align 4
  %cmp.i23.not = icmp eq ptr %6, %list_tmp
  br i1 %cmp.i23.not, label %land.lhs.true.if.then12_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

land.lhs.true.if.then12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

if.then12:                                        ; preds = %land.lhs.true.if.then12_crit_edge, %if.end7.if.then12_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @smack_onlycap_lock, i32 noundef 0) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_onlycap_list to i32))
  %7 = load volatile ptr, ptr @smack_onlycap_list, align 4
  %cmp.i.not.i = icmp eq ptr %7, @smack_onlycap_list
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then12
  %8 = ptrtoint ptr %list_tmp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %list_tmp, align 4
  %cmp.i.not.i.i = icmp eq ptr %9, %list_tmp
  br i1 %cmp.i.not.i.i, label %if.then.i.smk_list_swap_rcu.exit_crit_edge, label %if.then.i.i

if.then.i.smk_list_swap_rcu.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_list_swap_rcu.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %0, align 4
  %12 = ptrtoint ptr %list_tmp to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list_tmp, ptr %list_tmp, align 4
  store volatile ptr %list_tmp, ptr %0, align 4
  call void @synchronize_rcu() #14
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @smack_onlycap_list, ptr %11, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !303
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @smack_onlycap_list to i32))
  store volatile ptr %9, ptr @smack_onlycap_list, align 4
  %prev36.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev36.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @smack_onlycap_list, ptr %prev36.i.i.i, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @smack_onlycap_list, i32 0, i32 1) to i32))
  store ptr %11, ptr getelementptr inbounds (%struct.list_head, ptr @smack_onlycap_list, i32 0, i32 1), align 4
  br label %smk_list_swap_rcu.exit

if.else.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @smack_onlycap_list, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @smack_onlycap_list, i32 0, i32 1), align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %0, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @smack_onlycap_list, ptr %17, align 4
  %19 = ptrtoint ptr %list_tmp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list_tmp, align 4
  %prev4.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @smack_onlycap_list, ptr %prev4.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !304
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @smack_onlycap_list to i32))
  store volatile ptr %20, ptr @smack_onlycap_list, align 4
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %0, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @smack_onlycap_list, i32 0, i32 1) to i32))
  store ptr %23, ptr getelementptr inbounds (%struct.list_head, ptr @smack_onlycap_list, i32 0, i32 1), align 4
  call void @synchronize_rcu() #14
  %24 = ptrtoint ptr %list_tmp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %7, ptr %list_tmp, align 4
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %15, ptr %0, align 4
  %prev44.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %26 = ptrtoint ptr %prev44.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list_tmp, ptr %prev44.i, align 4
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %list_tmp, ptr %15, align 4
  br label %smk_list_swap_rcu.exit

smk_list_swap_rcu.exit:                           ; preds = %if.else.i, %if.then.i.i, %if.then.i.smk_list_swap_rcu.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @smack_onlycap_lock) #14
  br label %if.end13

if.end13:                                         ; preds = %smk_list_swap_rcu.exit, %land.lhs.true.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  %rc.0 = phi i32 [ %count, %smk_list_swap_rcu.exit ], [ -22, %land.lhs.true.if.end13_crit_edge ], [ %call8, %if.end7.if.end13_crit_edge ]
  %28 = ptrtoint ptr %list_tmp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %list_tmp, align 4
  %cmp.not17.i = icmp eq ptr %29, %list_tmp
  br i1 %cmp.not17.i, label %if.end13.smk_destroy_label_list.exit_crit_edge, label %if.end13.for.body.i_crit_edge

if.end13.for.body.i_crit_edge:                    ; preds = %if.end13
  br label %for.body.i

if.end13.smk_destroy_label_list.exit_crit_edge:   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_destroy_label_list.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end13.for.body.i_crit_edge
  %sklep.018.i = phi ptr [ %sklep2.0.i, %for.body.i.for.body.i_crit_edge ], [ %29, %if.end13.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %sklep.018.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %sklep2.0.i = load ptr, ptr %sklep.018.i, align 4
  call void @kfree(ptr noundef %sklep.018.i) #14
  %cmp.not.i = icmp eq ptr %sklep2.0.i, %list_tmp
  br i1 %cmp.not.i, label %for.body.i.smk_destroy_label_list.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.smk_destroy_label_list.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_destroy_label_list.exit

smk_destroy_label_list.exit:                      ; preds = %for.body.i.smk_destroy_label_list.exit_crit_edge, %if.end13.smk_destroy_label_list.exit_crit_edge
  %31 = ptrtoint ptr %list_tmp to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %list_tmp, ptr %list_tmp, align 4
  br label %cleanup

cleanup:                                          ; preds = %smk_destroy_label_list.exit, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ %rc.0, %smk_destroy_label_list.exit ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list_tmp) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_open_onlycap(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @onlycap_seq_ops) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smk_parse_label_list(ptr noundef %data, ptr noundef %list) unnamed_addr #0 align 64 {
entry:
  %data.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %data.addr, align 4
  %call18 = call ptr @strsep(ptr noundef nonnull %data.addr, ptr noundef nonnull @.str.56) #14
  %cmp.not19 = icmp eq ptr %call18, null
  br i1 %cmp.not19, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %call20 = phi ptr [ %call, %while.cond.backedge.while.body_crit_edge ], [ %call18, %entry.while.body_crit_edge ]
  %1 = ptrtoint ptr %call20 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %while.body.while.cond.backedge_crit_edge, label %if.end

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %call1 = call ptr @smk_import_entry(ptr noundef nonnull %call20, i32 noundef 0) #14
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #18
  %cmp7 = icmp eq ptr %call7.i.i, null
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %smk_label = getelementptr inbounds %struct.smack_known_list_elem, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %smk_label to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %smk_label, align 8
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %list, ptr noundef %7) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end9.while.cond.backedge_crit_edge

if.end9.while.cond.backedge_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call7.i.i, ptr %list, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end.i.i, %if.end9.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %data.addr, ptr noundef nonnull @.str.56) #14
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then3 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ 0, %while.cond.backedge.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @onlycap_seq_start(ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @smk_seq_start(ptr noundef %pos, ptr noundef nonnull @smack_onlycap_list)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @onlycap_seq_next(ptr nocapture noundef readnone %s, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc.i = add i64 %1, 1
  store i64 %inc.i, ptr %pos, align 8
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %v, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.smk_seq_next.exit_crit_edge

entry.smk_seq_next.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.smk_seq_next.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.smk_seq_next.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @smk_seq_next.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.smk_seq_next.exit_crit_edge, label %if.then.i

land.lhs.true4.i.smk_seq_next.exit_crit_edge:     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smk_seq_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 554, ptr noundef nonnull @.str.33) #14
  br label %smk_seq_next.exit

smk_seq_next.exit:                                ; preds = %if.then.i, %land.lhs.true4.i.smk_seq_next.exit_crit_edge, %land.lhs.true.i.smk_seq_next.exit_crit_edge, %entry.smk_seq_next.exit_crit_edge
  %cmp.i = icmp eq ptr %3, @smack_onlycap_list
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %3
  ret ptr %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onlycap_seq_show(ptr noundef %s, ptr noundef %v) #0 align 64 {
entry:
  %list = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %list)
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %v, ptr %list, align 4
  %list.0.list.0.list.0. = load volatile ptr, ptr %list, align 4
  %smk_label = getelementptr inbounds %struct.smack_known_list_elem, ptr %list.0.list.0.list.0., i32 0, i32 1
  %1 = ptrtoint ptr %smk_label to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smk_label, align 4
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smk_known, align 4
  tail call void @seq_puts(ptr noundef %s, ptr noundef %4) #14
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 32) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %list)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_read_logging(ptr nocapture noundef readnone %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %temp = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %temp) #14
  %0 = call ptr @memset(ptr %temp, i32 255, i32 32)
  %1 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp.not = icmp eq i64 %2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @log_policy to i32))
  %3 = load i32, ptr @log_policy, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %temp, ptr noundef nonnull @.str.57, i32 noundef %3)
  %call3 = call i32 @strlen(ptr noundef nonnull %temp) #19
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %temp, i32 noundef %call3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %temp) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_logging(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %temp = alloca [32 x i8], align 1
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %temp) #14
  %0 = call ptr @memset(ptr %temp, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #14
  %1 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %i, align 4, !annotation !295
  %call = tail call zeroext i1 @smack_privileged(i32 noundef 33) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = add i32 %count, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %2)
  %3 = icmp ult i32 %2, -31
  br i1 %3, label %if.end.cleanup_crit_edge, label %if.then.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  call void @__check_object_size(ptr noundef nonnull %temp, i32 noundef %count, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.47, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #20, !srcloc !298
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !299

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %temp, i32 noundef %count) #14
  %5 = call i32 @llvm.read_register.i32(metadata !282) #14
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !300
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !301
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !302
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %temp, ptr noundef %buf, i32 noundef %count) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #14, !srcloc !301
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !302
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !299

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i26 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %count, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %count, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %count, %res.0.i.i26
  %add.ptr.i.i = getelementptr i8, ptr %temp, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i26)
  br label %cleanup

if.end7:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %temp, i32 0, i32 %count
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  %call9 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %temp, ptr noundef nonnull @.str.39, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 1
  br i1 %cmp10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %12 = icmp ugt i32 %11, 3
  br i1 %12, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @log_policy to i32))
  store i32 %11, ptr @log_policy, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end17 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %temp) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_load_self(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !282) #14
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
  %security.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_blob_sizes to i32))
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %8
  %smk_rules = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 2
  %smk_rules_lock = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 3
  %call2 = tail call fastcc i32 @smk_write_rules_list(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %smk_rules, ptr noundef %smk_rules_lock, i32 noundef 0)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_open_load_self(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @load_self_seq_ops) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @load_self_seq_start(ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !282) #14
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
  %security.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_blob_sizes to i32))
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %8
  %smk_rules = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 2
  %call2 = tail call fastcc ptr @smk_seq_start(ptr noundef %pos, ptr noundef %smk_rules)
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @load_self_seq_next(ptr nocapture noundef readnone %s, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !282) #14
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
  %security.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_blob_sizes to i32))
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %9 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pos, align 8
  %inc.i = add i64 %10, 1
  store i64 %inc.i, ptr %pos, align 8
  %11 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %v, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.smk_seq_next.exit_crit_edge

entry.smk_seq_next.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.smk_seq_next.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.smk_seq_next.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @smk_seq_next.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.smk_seq_next.exit_crit_edge, label %if.then.i

land.lhs.true4.i.smk_seq_next.exit_crit_edge:     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smk_seq_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 554, ptr noundef nonnull @.str.33) #14
  br label %smk_seq_next.exit

smk_seq_next.exit:                                ; preds = %if.then.i, %land.lhs.true4.i.smk_seq_next.exit_crit_edge, %land.lhs.true.i.smk_seq_next.exit_crit_edge, %entry.smk_seq_next.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %7, i32 %8
  %smk_rules = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 2
  %cmp.i = icmp eq ptr %12, %smk_rules
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %12
  ret ptr %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @load_self_seq_show(ptr noundef %s, ptr noundef %v) #0 align 64 {
entry:
  %list = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %list)
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %v, ptr %list, align 4
  %list.0.list.0.list.0. = load volatile ptr, ptr %list, align 4
  tail call fastcc void @smk_rule_show(ptr noundef %s, ptr noundef %list.0.list.0.list.0., i32 noundef 24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %list)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_transaction_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_access(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %rule.i = alloca %struct.smack_parsed_rule, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rule.i) #14
  %0 = getelementptr inbounds %struct.smack_parsed_rule, ptr %rule.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.smack_parsed_rule, ptr %rule.i, i32 0, i32 2
  %2 = call ptr @memset(ptr %rule.i, i32 255, i32 16)
  %call.i = tail call ptr @simple_transaction_get(ptr noundef %file, ptr noundef %buf, i32 noundef %count) #14
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %call.i to i32
  br label %smk_user_access.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %count)
  %cmp4.i = icmp ult i32 %count, 54
  br i1 %cmp4.i, label %if.end.i.smk_user_access.exit_crit_edge, label %if.end6.i

if.end.i.smk_user_access.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_user_access.exit

if.end6.i:                                        ; preds = %if.end.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 24
  %add.ptr2.i.i = getelementptr i8, ptr %call.i, i32 48
  %call.i.i = call fastcc i32 @smk_fill_rule(ptr noundef %call.i, ptr noundef %add.ptr.i.i, ptr noundef %add.ptr2.i.i, ptr noundef null, ptr noundef nonnull %rule.i, i32 noundef 0, i32 noundef 24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp10.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp10.i, label %if.then11.i, label %if.else13.i

if.then11.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rule.i, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %call12.i = tail call i32 @smk_access(ptr noundef %5, ptr noundef %7, i32 noundef %9, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call12.i)
  %phi.cmp.i = icmp sgt i32 %call12.i, -1
  %phi.cast.i = select i1 %phi.cmp.i, i8 49, i8 48
  br label %if.end17.i

if.else13.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i.i)
  %cmp14.not.i = icmp eq i32 %call.i.i, -2
  br i1 %cmp14.not.i, label %if.else13.i.if.end17.i_crit_edge, label %if.else13.i.smk_user_access.exit_crit_edge

if.else13.i.smk_user_access.exit_crit_edge:       ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_user_access.exit

if.else13.i.if.end17.i_crit_edge:                 ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else13.i.if.end17.i_crit_edge, %if.then11.i
  %res.1.i = phi i8 [ %phi.cast.i, %if.then11.i ], [ 48, %if.else13.i.if.end17.i_crit_edge ]
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %res.1.i, ptr %call.i, align 1
  %arrayidx19.i = getelementptr i8, ptr %call.i, i32 1
  %11 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx19.i, align 1
  tail call void @simple_transaction_set(ptr noundef %file, i32 noundef 2) #14
  br label %smk_user_access.exit

smk_user_access.exit:                             ; preds = %if.end17.i, %if.else13.i.smk_user_access.exit_crit_edge, %if.end.i.smk_user_access.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %3, %if.then.i ], [ -22, %if.end.i.smk_user_access.exit_crit_edge ], [ %call.i.i, %if.else13.i.smk_user_access.exit_crit_edge ], [ 54, %if.end17.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rule.i) #14
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_transaction_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_transaction_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smk_access(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_transaction_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_read_mapped(ptr nocapture noundef readnone %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %temp = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %temp) #14
  %0 = call ptr @memset(ptr %temp, i32 255, i32 80)
  %1 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp.not = icmp eq i64 %2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = load i32, ptr @smack_cipso_mapped, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %temp, ptr noundef nonnull @.str.39, i32 noundef %3)
  %call3 = call i32 @strlen(ptr noundef nonnull %temp) #19
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %temp, i32 noundef %call3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %temp) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_mapped(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %temp = alloca [80 x i8], align 1
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %temp) #14
  %0 = call ptr @memset(ptr %temp, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #14
  %1 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %i, align 4, !annotation !295
  %call = tail call zeroext i1 @smack_privileged(i32 noundef 33) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = add i32 %count, -80
  call void @__sanitizer_cov_trace_const_cmp4(i32 -79, i32 %2)
  %3 = icmp ult i32 %2, -79
  br i1 %3, label %if.end.cleanup_crit_edge, label %if.then.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  call void @__check_object_size(ptr noundef nonnull %temp, i32 noundef %count, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.47, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #20, !srcloc !298
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !299

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %temp, i32 noundef %count) #14
  %5 = call i32 @llvm.read_register.i32(metadata !282) #14
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !300
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !301
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !302
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %temp, ptr noundef %buf, i32 noundef %count) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #14, !srcloc !301
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !302
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !299

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i55 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %count, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %count, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %count, %res.0.i.i55
  %add.ptr.i.i = getelementptr i8, ptr %temp, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i55)
  br label %cleanup

if.end7:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr [80 x i8], ptr %temp, i32 0, i32 %count
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  %call9 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %temp, ptr noundef nonnull @.str.39, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 1
  br i1 %cmp10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %10 = load i32, ptr @smack_cipso_mapped, align 4
  %11 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp13.not = icmp eq i32 %10, %12
  br i1 %cmp13.not, label %if.end12.cleanup_crit_edge, label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  call void @mutex_lock_nested(ptr noundef nonnull @smack_known_lock, i32 noundef 0) #14
  %call15 = call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then14.do.end_crit_edge

if.then14.do.end_crit_edge:                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %if.then14
  %call16 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true18

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true18:                                  ; preds = %land.lhs.true
  %.b52 = load i1, ptr @smk_write_mapped.__warned, align 1
  br i1 %.b52, label %land.lhs.true18.do.end_crit_edge, label %if.then20

land.lhs.true18.do.end_crit_edge:                 ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smk_write_mapped.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1766, ptr noundef nonnull @.str.32) #14
  br label %do.end

do.end:                                           ; preds = %if.then20, %land.lhs.true18.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.then14.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_known_list to i32))
  %skp.058 = load volatile ptr, ptr @smack_known_list, align 4
  %cmp26.not59 = icmp eq ptr %skp.058, @smack_known_list
  br i1 %cmp26.not59, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %13 = load i32, ptr @smack_cipso_mapped, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %skp.060 = phi ptr [ %skp.058, %for.body.lr.ph ], [ %skp.0, %for.inc.for.body_crit_edge ]
  %lvl = getelementptr inbounds %struct.smack_known, ptr %skp.060, i32 0, i32 4, i32 4, i32 0, i32 1
  %14 = ptrtoint ptr %lvl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lvl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp27 = icmp eq i32 %15, %13
  br i1 %cmp27, label %if.then28, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then28:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i, align 4
  %18 = ptrtoint ptr %lvl to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %lvl, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then28, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %skp.060 to i32
  call void @__asan_load4_noabort(i32 %19)
  %skp.0 = load volatile ptr, ptr %skp.060, align 4
  %cmp26.not = icmp eq ptr %skp.0, @smack_known_list
  br i1 %cmp26.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %20 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i, align 4
  store i32 %21, ptr @smack_cipso_mapped, align 4
  call void @mutex_unlock(ptr noundef nonnull @smack_known_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %count, %for.end ], [ %count, %if.end12.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %temp) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_load2(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @smack_privileged(i32 noundef 33) #14
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call fastcc i32 @smk_write_rules_list(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef null, ptr noundef null, i32 noundef 1)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_open_load2(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @load2_seq_ops) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @load2_seq_show(ptr noundef %s, ptr noundef %v) #0 align 64 {
entry:
  %list = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %list)
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %v, ptr %list, align 4
  %list.0.list.0.list.0. = load volatile ptr, ptr %list, align 4
  %call = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b30 = load i1, ptr @load2_seq_show.__warned, align 1
  br i1 %.b30, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @load2_seq_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2363, ptr noundef nonnull @.str.32) #14
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %smk_rules = getelementptr inbounds %struct.smack_known, ptr %list.0.list.0.list.0., i32 0, i32 5
  %1 = ptrtoint ptr %smk_rules to i32
  call void @__asan_load4_noabort(i32 %1)
  %srp.031 = load volatile ptr, ptr %smk_rules, align 4
  %cmp.not32 = icmp eq ptr %srp.031, %smk_rules
  br i1 %cmp.not32, label %do.end8.for.end_crit_edge, label %do.end8.for.body_crit_edge

do.end8.for.body_crit_edge:                       ; preds = %do.end8
  br label %for.body

do.end8.for.end_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end8.for.body_crit_edge
  %srp.033 = phi ptr [ %srp.0, %for.body.for.body_crit_edge ], [ %srp.031, %do.end8.for.body_crit_edge ]
  tail call fastcc void @smk_rule_show(ptr noundef %s, ptr noundef %srp.033, i32 noundef 256)
  %2 = ptrtoint ptr %srp.033 to i32
  call void @__asan_load4_noabort(i32 %2)
  %srp.0 = load volatile ptr, ptr %srp.033, align 4
  %cmp.not = icmp eq ptr %srp.0, %smk_rules
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end8.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %list)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_load_self2(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !282) #14
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
  %security.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_blob_sizes to i32))
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %8
  %smk_rules = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 2
  %smk_rules_lock = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 3
  %call2 = tail call fastcc i32 @smk_write_rules_list(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %smk_rules, ptr noundef %smk_rules_lock, i32 noundef 1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_open_load_self2(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @load_self2_seq_ops) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @load_self2_seq_start(ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !282) #14
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
  %security.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_blob_sizes to i32))
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %8
  %smk_rules = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 2
  %call2 = tail call fastcc ptr @smk_seq_start(ptr noundef %pos, ptr noundef %smk_rules)
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @load_self2_seq_next(ptr nocapture noundef readnone %s, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !282) #14
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
  %security.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_blob_sizes to i32))
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %9 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pos, align 8
  %inc.i = add i64 %10, 1
  store i64 %inc.i, ptr %pos, align 8
  %11 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %v, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.smk_seq_next.exit_crit_edge

entry.smk_seq_next.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.smk_seq_next.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.smk_seq_next.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @smk_seq_next.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.smk_seq_next.exit_crit_edge, label %if.then.i

land.lhs.true4.i.smk_seq_next.exit_crit_edge:     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smk_seq_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 554, ptr noundef nonnull @.str.33) #14
  br label %smk_seq_next.exit

smk_seq_next.exit:                                ; preds = %if.then.i, %land.lhs.true4.i.smk_seq_next.exit_crit_edge, %land.lhs.true.i.smk_seq_next.exit_crit_edge, %entry.smk_seq_next.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %7, i32 %8
  %smk_rules = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 2
  %cmp.i = icmp eq ptr %12, %smk_rules
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %12
  ret ptr %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @load_self2_seq_show(ptr noundef %s, ptr noundef %v) #0 align 64 {
entry:
  %list = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %list)
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %v, ptr %list, align 4
  %list.0.list.0.list.0. = load volatile ptr, ptr %list, align 4
  tail call fastcc void @smk_rule_show(ptr noundef %s, ptr noundef %list.0.list.0.list.0., i32 noundef 256)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %list)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_access2(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %rule.i = alloca %struct.smack_parsed_rule, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rule.i) #14
  %0 = getelementptr inbounds %struct.smack_parsed_rule, ptr %rule.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.smack_parsed_rule, ptr %rule.i, i32 0, i32 2
  %2 = call ptr @memset(ptr %rule.i, i32 255, i32 16)
  %call.i = tail call ptr @simple_transaction_get(ptr noundef %file, ptr noundef %buf, i32 noundef %count) #14
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %call.i to i32
  br label %smk_user_access.exit

if.end.i:                                         ; preds = %entry
  %call8.i = call fastcc i32 @smk_parse_long_rule(ptr noundef %call.i, ptr noundef nonnull %rule.i, i32 noundef 0, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.i)
  %cmp10.i = icmp sgt i32 %call8.i, -1
  br i1 %cmp10.i, label %if.then11.i, label %if.else13.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rule.i, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %call12.i = tail call i32 @smk_access(ptr noundef %5, ptr noundef %7, i32 noundef %9, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call12.i)
  %phi.cmp.i = icmp sgt i32 %call12.i, -1
  %phi.cast.i = select i1 %phi.cmp.i, i8 49, i8 48
  br label %if.end17.i

if.else13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call8.i)
  %cmp14.not.i = icmp eq i32 %call8.i, -2
  br i1 %cmp14.not.i, label %if.else13.i.if.end17.i_crit_edge, label %if.else13.i.smk_user_access.exit_crit_edge

if.else13.i.smk_user_access.exit_crit_edge:       ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_user_access.exit

if.else13.i.if.end17.i_crit_edge:                 ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else13.i.if.end17.i_crit_edge, %if.then11.i
  %res.1.i = phi i8 [ %phi.cast.i, %if.then11.i ], [ 48, %if.else13.i.if.end17.i_crit_edge ]
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %res.1.i, ptr %call.i, align 1
  %arrayidx19.i = getelementptr i8, ptr %call.i, i32 1
  %11 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx19.i, align 1
  tail call void @simple_transaction_set(ptr noundef %file, i32 noundef 2) #14
  br label %smk_user_access.exit

smk_user_access.exit:                             ; preds = %if.end17.i, %if.else13.i.smk_user_access.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %3, %if.then.i ], [ %call8.i, %if.else13.i.smk_user_access.exit_crit_edge ], [ %count, %if.end17.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rule.i) #14
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_cipso2(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @smk_set_cipso(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_open_cipso2(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @cipso2_seq_ops) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cipso2_seq_show(ptr noundef %s, ptr noundef %v) #0 align 64 {
entry:
  %list = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %list)
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %v, ptr %list, align 4
  %list.0.list.0.list.0. = load volatile ptr, ptr %list, align 4
  %attr = getelementptr inbounds %struct.smack_known, ptr %list.0.list.0.list.0., i32 0, i32 4, i32 4
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attr, align 4
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %list.0.list.0.list.0., i32 0, i32 2
  %3 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smk_known, align 4
  %lvl = getelementptr inbounds %struct.smack_known, ptr %list.0.list.0.list.0., i32 0, i32 4, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %lvl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lvl, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.43, ptr noundef %4, i32 noundef %6) #14
  %call = tail call i32 @netlbl_catmap_walk(ptr noundef %2, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp514 = icmp sgt i32 %call, -1
  br i1 %cmp514, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader:                               ; preds = %entry
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.44, i32 noundef 47, i32 noundef %call) #14
  %add.peel = add nuw i32 %call, 1
  %call6.peel = tail call i32 @netlbl_catmap_walk(ptr noundef %2, i32 noundef %add.peel) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6.peel)
  %cmp5.peel = icmp sgt i32 %call6.peel, -1
  br i1 %cmp5.peel, label %for.body.preheader.for.body_crit_edge, label %for.body.preheader.for.end_crit_edge

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader.for.body_crit_edge:            ; preds = %for.body.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader.for.body_crit_edge
  %i.016 = phi i32 [ %call6, %for.body.for.body_crit_edge ], [ %call6.peel, %for.body.preheader.for.body_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.44, i32 noundef 44, i32 noundef %i.016) #14
  %add = add nuw i32 %i.016, 1
  %call6 = tail call i32 @netlbl_catmap_walk(ptr noundef %2, i32 noundef %add) #14
  %cmp5 = icmp sgt i32 %call6, -1
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge, !llvm.loop !305

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.body.preheader.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %list)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_revoke_subj(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @smack_privileged(i32 noundef 33) #14
  br i1 %call, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %2 = add i32 %count, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %2)
  %3 = icmp ult i32 %2, -256
  br i1 %3, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %call7 = tail call ptr @memdup_user(ptr noundef %buf, i32 noundef %count) #14
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr @smk_parse_smack(ptr noundef %call7, i32 noundef %count) #14
  %cmp.i65 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %call12 to i32
  br label %out_data

if.end16:                                         ; preds = %if.end11
  %call17 = tail call ptr @smk_find_entry(ptr noundef %call12) #14
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %if.end16.out_cp_crit_edge, label %if.end20

if.end16.out_cp_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_cp

if.end20:                                         ; preds = %if.end16
  %smk_rules = getelementptr inbounds %struct.smack_known, ptr %call17, i32 0, i32 5
  %smk_rules_lock = getelementptr inbounds %struct.smack_known, ptr %call17, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %smk_rules_lock, i32 noundef 0) #14
  %call21 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end20.do.end_crit_edge

if.end20.do.end_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %if.end20
  %call22 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true24

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true24:                                  ; preds = %land.lhs.true
  %.b64 = load i1, ptr @smk_write_revoke_subj.__warned, align 1
  br i1 %.b64, label %land.lhs.true24.do.end_crit_edge, label %if.then26

land.lhs.true24.do.end_crit_edge:                 ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smk_write_revoke_subj.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2556, ptr noundef nonnull @.str.32) #14
  br label %do.end

do.end:                                           ; preds = %if.then26, %land.lhs.true24.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end20.do.end_crit_edge
  %6 = ptrtoint ptr %smk_rules to i32
  call void @__asan_load4_noabort(i32 %6)
  %sp.066 = load volatile ptr, ptr %smk_rules, align 4
  %cmp32.not67 = icmp eq ptr %sp.066, %smk_rules
  br i1 %cmp32.not67, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %sp.068 = phi ptr [ %sp.0, %for.body.for.body_crit_edge ], [ %sp.066, %do.end.for.body_crit_edge ]
  %smk_access = getelementptr inbounds %struct.smack_rule, ptr %sp.068, i32 0, i32 3
  %7 = ptrtoint ptr %smk_access to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %smk_access, align 4
  %8 = ptrtoint ptr %sp.068 to i32
  call void @__asan_load4_noabort(i32 %8)
  %sp.0 = load volatile ptr, ptr %sp.068, align 4
  %cmp32.not = icmp eq ptr %sp.0, %smk_rules
  br i1 %cmp32.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %smk_rules_lock) #14
  br label %out_cp

out_cp:                                           ; preds = %for.end, %if.end16.out_cp_crit_edge
  tail call void @kfree(ptr noundef %call12) #14
  br label %out_data

out_data:                                         ; preds = %out_cp, %if.then14
  %rc.0 = phi i32 [ %5, %if.then14 ], [ %count, %out_cp ]
  tail call void @kfree(ptr noundef %call7) #14
  br label %cleanup

cleanup:                                          ; preds = %out_data, %if.then9, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then9 ], [ %rc.0, %out_data ], [ -22, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_change_rule(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @smack_privileged(i32 noundef 33) #14
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call fastcc i32 @smk_write_rules_list(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef null, ptr noundef null, i32 noundef 2)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_read_syslog(ptr nocapture noundef readnone %filp, ptr noundef %buf, i32 noundef %cn, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @smack_syslog_label, align 4
  %cmp1 = icmp eq ptr %2, null
  %smack_known_star. = select i1 %cmp1, ptr @smack_known_star, ptr %2
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %smack_known_star., i32 0, i32 2
  %3 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smk_known, align 4
  %call = tail call i32 @strlen(ptr noundef %4) #19
  %add = add i32 %call, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %cn)
  %cmp4.not = icmp ugt i32 %add, %cn
  br i1 %cmp4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %cn, ptr noundef %ppos, ptr noundef %4, i32 noundef %add) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call7, %if.then5 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_syslog(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @smack_privileged(i32 noundef 33) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = add i32 %count, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %0)
  %1 = icmp ult i32 %0, -4096
  br i1 %1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %count) #14
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call9 = tail call ptr @smk_import_entry(ptr noundef %call4, i32 noundef %count) #14
  %cmp.i25 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %call9 to i32
  br label %if.end13

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %call9, ptr @smack_syslog_label, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %rc.0 = phi i32 [ %3, %if.then11 ], [ %count, %if.else ]
  tail call void @kfree(ptr noundef %call4) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %rc.0, %if.end13 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_read_ptrace(ptr nocapture noundef readnone %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %temp = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %temp) #14
  %0 = call ptr @memset(ptr %temp, i32 255, i32 32)
  %1 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp.not = icmp eq i64 %2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = load i32, ptr @smack_ptrace_rule, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %temp, ptr noundef nonnull @.str.57, i32 noundef %3)
  %call3 = call i32 @strlen(ptr noundef nonnull %temp) #19
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %temp, i32 noundef %call3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %temp) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_ptrace(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  %temp = alloca [32 x i8], align 1
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %temp) #14
  %0 = call ptr @memset(ptr %temp, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #14
  %1 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %i, align 4, !annotation !295
  %call = tail call zeroext i1 @smack_privileged(i32 noundef 33) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp.not = icmp ne i64 %3, 0
  %4 = add i32 %count, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %4)
  %5 = icmp ult i32 %4, -31
  %6 = or i1 %5, %cmp.not
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.then.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  call void @__check_object_size(ptr noundef nonnull %temp, i32 noundef %count, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.47, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #20, !srcloc !298
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !299

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %temp, i32 noundef %count) #14
  %8 = call i32 @llvm.read_register.i32(metadata !282) #14
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !300
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !301
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !302
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %temp, ptr noundef %buf, i32 noundef %count) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #14, !srcloc !301
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !302
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !299

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i29 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %count, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %count, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %count, %res.0.i.i29
  %add.ptr.i.i = getelementptr i8, ptr %temp, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i29)
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %temp, i32 0, i32 %count
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx, align 1
  %call11 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %temp, ptr noundef nonnull @.str.39, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 1
  br i1 %cmp12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %13 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %15 = icmp ugt i32 %14, 2
  br i1 %15, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  store i32 %14, ptr @smack_ptrace_rule, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end19 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %temp) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_read_unconfined(ptr nocapture noundef readnone %filp, ptr noundef %buf, i32 noundef %cn, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @smack_unconfined, align 4
  %cmp1.not = icmp eq ptr %2, null
  br i1 %cmp1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smk_known, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %smack.0 = phi ptr [ %4, %if.then2 ], [ @.str.29, %if.end.if.end3_crit_edge ]
  %call = tail call i32 @strlen(ptr noundef %smack.0) #19
  %add = add i32 %call, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %cn)
  %cmp4.not = icmp ugt i32 %add, %cn
  br i1 %cmp4.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %cn, ptr noundef %ppos, ptr noundef %smack.0, i32 noundef %add) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call6, %if.then5 ], [ -22, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_unconfined(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @smack_privileged(i32 noundef 33) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %count)
  %cmp = icmp ugt i32 %count, 4096
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %count) #14
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %call8 = tail call ptr @smk_import_entry(ptr noundef %call3, i32 noundef %count) #14
  %cmp10 = icmp eq ptr %call8, inttoptr (i32 -22 to ptr)
  br i1 %cmp10, label %if.end7.if.end16_crit_edge, label %if.else

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.else:                                          ; preds = %if.end7
  %1 = ptrtoint ptr %call8 to i32
  %cmp.i28 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i28, label %if.else.freeout_crit_edge, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.else.freeout_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %freeout

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %if.end7.if.end16_crit_edge
  %skp.0 = phi ptr [ %call8, %if.else.if.end16_crit_edge ], [ null, %if.end7.if.end16_crit_edge ]
  store ptr %skp.0, ptr @smack_unconfined, align 4
  br label %freeout

freeout:                                          ; preds = %if.end16, %if.else.freeout_crit_edge
  %rc.0 = phi i32 [ %count, %if.end16 ], [ %1, %if.else.freeout_crit_edge ]
  tail call void @kfree(ptr noundef %call3) #14
  br label %cleanup

cleanup:                                          ; preds = %freeout, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then5 ], [ %rc.0, %freeout ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_net6addr(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  %newname = alloca %struct.in6_addr, align 4
  %fullmask = alloca %struct.in6_addr, align 4
  %scanned = alloca [8 x i32], align 4
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %newname) #14
  %0 = getelementptr inbounds [4 x i32], ptr %newname, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %newname, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %newname, i32 0, i32 3
  %3 = getelementptr inbounds i8, ptr %newname, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fullmask) #14
  %5 = call ptr @memset(ptr %fullmask, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %scanned) #14
  %6 = getelementptr inbounds [8 x i32], ptr %scanned, i32 0, i32 1
  %7 = getelementptr inbounds [8 x i32], ptr %scanned, i32 0, i32 2
  %8 = getelementptr inbounds [8 x i32], ptr %scanned, i32 0, i32 3
  %9 = getelementptr inbounds [8 x i32], ptr %scanned, i32 0, i32 4
  %10 = getelementptr inbounds [8 x i32], ptr %scanned, i32 0, i32 5
  %11 = getelementptr inbounds [8 x i32], ptr %scanned, i32 0, i32 6
  %12 = getelementptr inbounds [8 x i32], ptr %scanned, i32 0, i32 7
  %13 = call ptr @memset(ptr %scanned, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #14
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 128, ptr %mask, align 4
  %call = tail call zeroext i1 @smack_privileged(i32 noundef 33) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %cmp.not = icmp ne i64 %16, 0
  %17 = add i32 %count, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4087, i32 %17)
  %18 = icmp ult i32 %17, -4087
  %or.cond = or i1 %18, %cmp.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %count) #14
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end8.i.i

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end6
  %add = add nuw nsw i32 %count, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #21
  %cmp13 = icmp eq ptr %call9.i.i, null
  br i1 %cmp13, label %if.end8.i.i.free_data_out_crit_edge, label %if.end15

if.end8.i.i.free_data_out_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_data_out

if.end15:                                         ; preds = %if.end8.i.i
  %call23 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call7, ptr noundef nonnull @.str.58, ptr noundef nonnull %scanned, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef nonnull %mask, ptr noundef nonnull %call9.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, 10
  br i1 %cmp24.not, label %if.end15.if.end38_crit_edge, label %if.then25

if.end15.if.end38_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then25:                                        ; preds = %if.end15
  %call34 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call7, ptr noundef nonnull @.str.59, ptr noundef nonnull %scanned, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef nonnull %call9.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 9
  br i1 %cmp35.not, label %if.then25.if.end38_crit_edge, label %if.then25.free_out_crit_edge

if.then25.free_out_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_out

if.then25.if.end38_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.end38:                                         ; preds = %if.then25.if.end38_crit_edge, %if.end15.if.end38_crit_edge
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %21)
  %cmp39 = icmp ugt i32 %21, 128
  br i1 %cmp39, label %if.end38.free_out_crit_edge, label %for.body.preheader

if.end38.free_out_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_out

for.body.preheader:                               ; preds = %if.end38
  %22 = ptrtoint ptr %scanned to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %scanned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %23)
  %cmp44 = icmp ugt i32 %23, 65535
  br i1 %cmp44, label %for.body.preheader.free_out_crit_edge, label %if.end46

for.body.preheader.free_out_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_out

if.end46:                                         ; preds = %for.body.preheader
  %conv = trunc i32 %23 to i16
  %24 = ptrtoint ptr %newname to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %newname, align 4
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %26)
  %cmp44.1 = icmp ugt i32 %26, 65535
  br i1 %cmp44.1, label %if.end46.free_out_crit_edge, label %if.end46.1

if.end46.free_out_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_out

if.end46.1:                                       ; preds = %if.end46
  %conv.1 = trunc i32 %26 to i16
  %arrayidx48.1 = getelementptr inbounds [8 x i16], ptr %newname, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.1, ptr %arrayidx48.1, align 2
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %29)
  %cmp44.2 = icmp ugt i32 %29, 65535
  br i1 %cmp44.2, label %if.end46.1.free_out_crit_edge, label %if.end46.2

if.end46.1.free_out_crit_edge:                    ; preds = %if.end46.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_out

if.end46.2:                                       ; preds = %if.end46.1
  %conv.2 = trunc i32 %29 to i16
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.2, ptr %0, align 4
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %32)
  %cmp44.3 = icmp ugt i32 %32, 65535
  br i1 %cmp44.3, label %if.end46.2.free_out_crit_edge, label %if.end46.3

if.end46.2.free_out_crit_edge:                    ; preds = %if.end46.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_out

if.end46.3:                                       ; preds = %if.end46.2
  %conv.3 = trunc i32 %32 to i16
  %arrayidx48.3 = getelementptr inbounds [8 x i16], ptr %newname, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.3, ptr %arrayidx48.3, align 2
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %35)
  %cmp44.4 = icmp ugt i32 %35, 65535
  br i1 %cmp44.4, label %if.end46.3.free_out_crit_edge, label %if.end46.4

if.end46.3.free_out_crit_edge:                    ; preds = %if.end46.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_out

if.end46.4:                                       ; preds = %if.end46.3
  %conv.4 = trunc i32 %35 to i16
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.4, ptr %1, align 4
  %37 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %38)
  %cmp44.5 = icmp ugt i32 %38, 65535
  br i1 %cmp44.5, label %if.end46.4.free_out_crit_edge, label %if.end46.5

if.end46.4.free_out_crit_edge:                    ; preds = %if.end46.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_out

if.end46.5:                                       ; preds = %if.end46.4
  %conv.5 = trunc i32 %38 to i16
  %arrayidx48.5 = getelementptr inbounds [8 x i16], ptr %newname, i32 0, i32 5
  %39 = ptrtoint ptr %arrayidx48.5 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.5, ptr %arrayidx48.5, align 2
  %40 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %41)
  %cmp44.6 = icmp ugt i32 %41, 65535
  br i1 %cmp44.6, label %if.end46.5.free_out_crit_edge, label %if.end46.6

if.end46.5.free_out_crit_edge:                    ; preds = %if.end46.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_out

if.end46.6:                                       ; preds = %if.end46.5
  %conv.6 = trunc i32 %41 to i16
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.6, ptr %2, align 4
  %43 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %44)
  %cmp44.7 = icmp ugt i32 %44, 65535
  br i1 %cmp44.7, label %if.end46.6.free_out_crit_edge, label %if.end46.7

if.end46.6.free_out_crit_edge:                    ; preds = %if.end46.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_out

if.end46.7:                                       ; preds = %if.end46.6
  %conv.7 = trunc i32 %44 to i16
  %arrayidx48.7 = getelementptr inbounds [8 x i16], ptr %newname, i32 0, i32 7
  %45 = ptrtoint ptr %arrayidx48.7 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.7, ptr %arrayidx48.7, align 2
  %46 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %47)
  %cmp51.not = icmp eq i8 %47, 45
  br i1 %cmp51.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %if.end46.7
  %call54 = call ptr @smk_import_entry(ptr noundef nonnull %call9.i.i, i32 noundef 0) #14
  %cmp.i227 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i227, label %if.then56, label %if.then53.if.end64_crit_edge

if.then53.if.end64_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

if.then56:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %call54 to i32
  br label %free_out

if.else:                                          ; preds = %if.end46.7
  %call59 = call i32 @strcmp(ptr noundef nonnull %call9.i.i, ptr noundef nonnull dereferenceable(8) @.str.60) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60.not = icmp eq i32 %call59, 0
  br i1 %cmp60.not, label %if.else.if.end64_crit_edge, label %if.else.free_out_crit_edge

if.else.free_out_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_out

if.else.if.end64_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

if.end64:                                         ; preds = %if.else.if.end64_crit_edge, %if.then53.if.end64_crit_edge
  %skp.0 = phi ptr [ %call54, %if.then53.if.end64_crit_edge ], [ null, %if.else.if.end64_crit_edge ]
  %49 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mask, align 4
  br label %for.body68

for.body68:                                       ; preds = %if.end86.for.body68_crit_edge, %if.end64
  %m.0241 = phi i32 [ %50, %if.end64 ], [ %m.1, %if.end86.for.body68_crit_edge ]
  %i.1239 = phi i32 [ 0, %if.end64 ], [ %inc95, %if.end86.for.body68_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %m.0241)
  %cmp69 = icmp ugt i32 %m.0241, 15
  br i1 %cmp69, label %if.then71, label %if.else74

if.then71:                                        ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx73 = getelementptr [8 x i16], ptr %fullmask, i32 0, i32 %i.1239
  %51 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -1, ptr %arrayidx73, align 2
  %sub = add i32 %m.0241, -16
  br label %if.end86

if.else74:                                        ; preds = %for.body68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %m.0241)
  %cmp75.not = icmp eq i32 %m.0241, 0
  br i1 %cmp75.not, label %if.else82, label %if.then77

if.then77:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #16
  %notmask = shl nsw i32 -1, %m.0241
  %52 = trunc i32 %notmask to i16
  %conv79 = xor i16 %52, -1
  %arrayidx81 = getelementptr [8 x i16], ptr %fullmask, i32 0, i32 %i.1239
  %53 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv79, ptr %arrayidx81, align 2
  br label %if.end86

if.else82:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx84 = getelementptr [8 x i16], ptr %fullmask, i32 0, i32 %i.1239
  %54 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %arrayidx84, align 2
  br label %if.end86

if.end86:                                         ; preds = %if.else82, %if.then77, %if.then71
  %m.1 = phi i32 [ %sub, %if.then71 ], [ 0, %if.then77 ], [ 0, %if.else82 ]
  %arrayidx88 = getelementptr [8 x i16], ptr %fullmask, i32 0, i32 %i.1239
  %55 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx88, align 2
  %arrayidx91 = getelementptr [8 x i16], ptr %newname, i32 0, i32 %i.1239
  %57 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx91, align 2
  %and226 = and i16 %58, %56
  store i16 %and226, ptr %arrayidx91, align 2
  %inc95 = add nuw nsw i32 %i.1239, 1
  %exitcond.not = icmp eq i32 %inc95, 8
  br i1 %exitcond.not, label %for.end96, label %if.end86.for.body68_crit_edge

if.end86.for.body68_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body68

for.end96:                                        ; preds = %if.end86
  call void @mutex_lock_nested(ptr noundef nonnull @smk_net6addr_lock, i32 noundef 0) #14
  %call97 = call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool.not = icmp eq i32 %call97, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.end96.do.end_crit_edge

for.end96.do.end_crit_edge:                       ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %for.end96
  %call98 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true100

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true100:                                 ; preds = %land.lhs.true
  %.b225 = load i1, ptr @smk_write_net6addr.__warned, align 1
  br i1 %.b225, label %land.lhs.true100.do.end_crit_edge, label %if.then102

land.lhs.true100.do.end_crit_edge:                ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then102:                                       ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smk_write_net6addr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1511, ptr noundef nonnull @.str.32) #14
  br label %do.end

do.end:                                           ; preds = %if.then102, %land.lhs.true100.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.end96.do.end_crit_edge
  %snp.0243 = load volatile ptr, ptr @smk_net6addr_list, align 4
  %cmp109.not244 = icmp eq ptr %snp.0243, @smk_net6addr_list
  br i1 %cmp109.not244, label %do.end.if.then149_crit_edge, label %for.body111.lr.ph

do.end.if.then149_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then149

for.body111.lr.ph:                                ; preds = %do.end
  %59 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mask, align 4
  br label %for.body111

for.body111:                                      ; preds = %for.inc137.for.body111_crit_edge, %for.body111.lr.ph
  %snp.0245 = phi ptr [ %snp.0243, %for.body111.lr.ph ], [ %snp.0, %for.inc137.for.body111_crit_edge ]
  %smk_masks = getelementptr inbounds %struct.smk_net6addr, ptr %snp.0245, i32 0, i32 3
  %61 = ptrtoint ptr %smk_masks to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %smk_masks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp112.not = icmp eq i32 %60, %62
  br i1 %cmp112.not, label %for.cond116.preheader, label %for.body111.for.inc137_crit_edge

for.body111.for.inc137_crit_edge:                 ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc137

for.cond116.preheader:                            ; preds = %for.body111
  %smk_host = getelementptr inbounds %struct.smk_net6addr, ptr %snp.0245, i32 0, i32 1
  %63 = ptrtoint ptr %newname to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %newname, align 4
  %65 = ptrtoint ptr %smk_host to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %smk_host, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %66)
  %cmp126.not = icmp eq i16 %64, %66
  br i1 %cmp126.not, label %for.cond116, label %for.cond116.preheader.for.inc137_crit_edge

for.cond116.preheader.for.inc137_crit_edge:       ; preds = %for.cond116.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc137

for.cond116:                                      ; preds = %for.cond116.preheader
  %67 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx48.1, align 2
  %arrayidx124.1 = getelementptr [8 x i16], ptr %smk_host, i32 0, i32 1
  %69 = ptrtoint ptr %arrayidx124.1 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx124.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %68, i16 %70)
  %cmp126.not.1 = icmp eq i16 %68, %70
  br i1 %cmp126.not.1, label %for.cond116.1, label %for.cond116.for.inc137_crit_edge

for.cond116.for.inc137_crit_edge:                 ; preds = %for.cond116
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc137

for.cond116.1:                                    ; preds = %for.cond116
  %71 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %0, align 4
  %arrayidx124.2 = getelementptr %struct.smk_net6addr, ptr %snp.0245, i32 0, i32 1, i32 0, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx124.2 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx124.2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %72, i16 %74)
  %cmp126.not.2 = icmp eq i16 %72, %74
  br i1 %cmp126.not.2, label %for.cond116.2, label %for.cond116.1.for.inc137_crit_edge

for.cond116.1.for.inc137_crit_edge:               ; preds = %for.cond116.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc137

for.cond116.2:                                    ; preds = %for.cond116.1
  %75 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx48.3, align 2
  %arrayidx124.3 = getelementptr [8 x i16], ptr %smk_host, i32 0, i32 3
  %77 = ptrtoint ptr %arrayidx124.3 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx124.3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %76, i16 %78)
  %cmp126.not.3 = icmp eq i16 %76, %78
  br i1 %cmp126.not.3, label %for.cond116.3, label %for.cond116.2.for.inc137_crit_edge

for.cond116.2.for.inc137_crit_edge:               ; preds = %for.cond116.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc137

for.cond116.3:                                    ; preds = %for.cond116.2
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %1, align 4
  %arrayidx124.4 = getelementptr %struct.smk_net6addr, ptr %snp.0245, i32 0, i32 1, i32 0, i32 0, i32 2
  %81 = ptrtoint ptr %arrayidx124.4 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx124.4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %80, i16 %82)
  %cmp126.not.4 = icmp eq i16 %80, %82
  br i1 %cmp126.not.4, label %for.cond116.4, label %for.cond116.3.for.inc137_crit_edge

for.cond116.3.for.inc137_crit_edge:               ; preds = %for.cond116.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc137

for.cond116.4:                                    ; preds = %for.cond116.3
  %83 = ptrtoint ptr %arrayidx48.5 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx48.5, align 2
  %arrayidx124.5 = getelementptr [8 x i16], ptr %smk_host, i32 0, i32 5
  %85 = ptrtoint ptr %arrayidx124.5 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx124.5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %84, i16 %86)
  %cmp126.not.5 = icmp eq i16 %84, %86
  br i1 %cmp126.not.5, label %for.cond116.5, label %for.cond116.4.for.inc137_crit_edge

for.cond116.4.for.inc137_crit_edge:               ; preds = %for.cond116.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc137

for.cond116.5:                                    ; preds = %for.cond116.4
  %87 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %2, align 4
  %arrayidx124.6 = getelementptr %struct.smk_net6addr, ptr %snp.0245, i32 0, i32 1, i32 0, i32 0, i32 3
  %89 = ptrtoint ptr %arrayidx124.6 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx124.6, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %88, i16 %90)
  %cmp126.not.6 = icmp eq i16 %88, %90
  br i1 %cmp126.not.6, label %for.cond116.6, label %for.cond116.5.for.inc137_crit_edge

for.cond116.5.for.inc137_crit_edge:               ; preds = %for.cond116.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc137

for.cond116.6:                                    ; preds = %for.cond116.5
  %91 = ptrtoint ptr %arrayidx48.7 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %arrayidx48.7, align 2
  %arrayidx124.7 = getelementptr [8 x i16], ptr %smk_host, i32 0, i32 7
  %93 = ptrtoint ptr %arrayidx124.7 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx124.7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %92, i16 %94)
  %cmp126.not.7 = icmp eq i16 %92, %94
  br i1 %cmp126.not.7, label %for.cond116.7, label %for.cond116.6.for.inc137_crit_edge

for.cond116.6.for.inc137_crit_edge:               ; preds = %for.cond116.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc137

for.cond116.7:                                    ; preds = %for.cond116.6
  call void @__sanitizer_cov_trace_pc() #16
  %smk_label159 = getelementptr inbounds %struct.smk_net6addr, ptr %snp.0245, i32 0, i32 4
  %95 = ptrtoint ptr %smk_label159 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %skp.0, ptr %smk_label159, align 4
  br label %if.end160

for.inc137:                                       ; preds = %for.cond116.6.for.inc137_crit_edge, %for.cond116.5.for.inc137_crit_edge, %for.cond116.4.for.inc137_crit_edge, %for.cond116.3.for.inc137_crit_edge, %for.cond116.2.for.inc137_crit_edge, %for.cond116.1.for.inc137_crit_edge, %for.cond116.for.inc137_crit_edge, %for.cond116.preheader.for.inc137_crit_edge, %for.body111.for.inc137_crit_edge
  %96 = ptrtoint ptr %snp.0245 to i32
  call void @__asan_load4_noabort(i32 %96)
  %snp.0 = load volatile ptr, ptr %snp.0245, align 4
  %cmp109.not = icmp eq ptr %snp.0, @smk_net6addr_list
  br i1 %cmp109.not, label %for.inc137.if.then149_crit_edge, label %for.inc137.for.body111_crit_edge

for.inc137.for.body111_crit_edge:                 ; preds = %for.inc137
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body111

for.inc137.if.then149_crit_edge:                  ; preds = %for.inc137
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then149

if.then149:                                       ; preds = %for.inc137.if.then149_crit_edge, %do.end.if.then149_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %97 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i231 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %97, i32 noundef 3520, i32 noundef 48) #18
  %cmp151 = icmp eq ptr %call7.i.i231, null
  br i1 %cmp151, label %if.then149.if.end160_crit_edge, label %if.else154

if.then149.if.end160_crit_edge:                   ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end160

if.else154:                                       ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #16
  %smk_host155 = getelementptr inbounds %struct.smk_net6addr, ptr %call7.i.i231, i32 0, i32 1
  %98 = call ptr @memcpy(ptr %smk_host155, ptr %newname, i32 16)
  %smk_mask = getelementptr inbounds %struct.smk_net6addr, ptr %call7.i.i231, i32 0, i32 2
  %99 = call ptr @memcpy(ptr %smk_mask, ptr %fullmask, i32 16)
  %100 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mask, align 4
  %smk_masks156 = getelementptr inbounds %struct.smk_net6addr, ptr %call7.i.i231, i32 0, i32 3
  %102 = ptrtoint ptr %smk_masks156 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %smk_masks156, align 8
  %smk_label = getelementptr inbounds %struct.smk_net6addr, ptr %call7.i.i231, i32 0, i32 4
  %103 = ptrtoint ptr %smk_label to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %skp.0, ptr %smk_label, align 4
  call fastcc void @smk_net6addr_insert(ptr noundef nonnull %call7.i.i231)
  br label %if.end160

if.end160:                                        ; preds = %if.else154, %if.then149.if.end160_crit_edge, %for.cond116.7
  %104 = phi i32 [ -12, %if.then149.if.end160_crit_edge ], [ %count, %if.else154 ], [ %count, %for.cond116.7 ]
  call void @mutex_unlock(ptr noundef nonnull @smk_net6addr_lock) #14
  br label %free_out

free_out:                                         ; preds = %if.end160, %if.else.free_out_crit_edge, %if.then56, %if.end46.6.free_out_crit_edge, %if.end46.5.free_out_crit_edge, %if.end46.4.free_out_crit_edge, %if.end46.3.free_out_crit_edge, %if.end46.2.free_out_crit_edge, %if.end46.1.free_out_crit_edge, %if.end46.free_out_crit_edge, %for.body.preheader.free_out_crit_edge, %if.end38.free_out_crit_edge, %if.then25.free_out_crit_edge
  %rc.2 = phi i32 [ %48, %if.then56 ], [ %104, %if.end160 ], [ -22, %if.then25.free_out_crit_edge ], [ -22, %if.end38.free_out_crit_edge ], [ -22, %if.else.free_out_crit_edge ], [ -22, %if.end46.6.free_out_crit_edge ], [ -22, %if.end46.5.free_out_crit_edge ], [ -22, %if.end46.4.free_out_crit_edge ], [ -22, %if.end46.3.free_out_crit_edge ], [ -22, %if.end46.2.free_out_crit_edge ], [ -22, %if.end46.1.free_out_crit_edge ], [ -22, %if.end46.free_out_crit_edge ], [ -22, %for.body.preheader.free_out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #14
  br label %free_data_out

free_data_out:                                    ; preds = %free_out, %if.end8.i.i.free_data_out_crit_edge
  %rc.3 = phi i32 [ %rc.2, %free_out ], [ -12, %if.end8.i.i.free_data_out_crit_edge ]
  call void @kfree(ptr noundef %call7) #14
  br label %cleanup

cleanup:                                          ; preds = %free_data_out, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.then9 ], [ %rc.3, %free_data_out ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %scanned) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fullmask) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %newname) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_open_net6addr(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @net6addr_seq_ops) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smk_net6addr_insert(ptr noundef %new) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @smk_net6addr_list, align 4
  %cmp.i.not = icmp eq ptr %0, @smk_net6addr_list
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef nonnull @smk_net6addr_list, ptr noundef nonnull @smk_net6addr_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @smk_net6addr_list, ptr %new, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %2 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @smk_net6addr_list, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !292
  store volatile ptr %new, ptr @smk_net6addr_list, align 4
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %3 = load volatile ptr, ptr @smk_net6addr_list, align 4
  %smk_masks = getelementptr inbounds %struct.smk_net6addr, ptr %new, i32 0, i32 3
  %4 = ptrtoint ptr %smk_masks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smk_masks, align 4
  %smk_masks2 = getelementptr inbounds %struct.smk_net6addr, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %smk_masks2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smk_masks2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp sgt i32 %5, %7
  br i1 %cmp, label %if.then3, label %do.body6

if.then3:                                         ; preds = %if.end
  %call.i.i70 = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef nonnull @smk_net6addr_list, ptr noundef %3) #14
  br i1 %call.i.i70, label %if.end.i.i73, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i73:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %new, align 4
  %prev2.i.i71 = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %9 = ptrtoint ptr %prev2.i.i71 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @smk_net6addr_list, ptr %prev2.i.i71, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !292
  store volatile ptr %new, ptr @smk_net6addr_list, align 4
  %prev37.i.i72 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  br label %cleanup.sink.split

do.body6:                                         ; preds = %if.end
  %call7 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %do.body6.for.cond.preheader_crit_edge

do.body6.for.cond.preheader_crit_edge:            ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %do.body6
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true11

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b69 = load i1, ptr @smk_net6addr_insert.__warned, align 1
  br i1 %.b69, label %land.lhs.true11.for.cond.preheader_crit_edge, label %if.then13

land.lhs.true11.for.cond.preheader_crit_edge:     ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smk_net6addr_insert.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1381, ptr noundef nonnull @.str.32) #14
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then13, %land.lhs.true11.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %do.body6.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %if.end32.for.cond_crit_edge, %for.cond.preheader
  %m.0.in = phi ptr [ %m.0, %if.end32.for.cond_crit_edge ], [ @smk_net6addr_list, %for.cond.preheader ]
  %10 = ptrtoint ptr %m.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %m.0 = load volatile ptr, ptr %m.0.in, align 4
  %cmp25.not = icmp eq ptr %m.0, @smk_net6addr_list
  br i1 %cmp25.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %11 = ptrtoint ptr %m.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m.0, align 4
  %cmp.i75.not = icmp eq ptr %12, @smk_net6addr_list
  br i1 %cmp.i75.not, label %if.then29, label %if.end32

if.then29:                                        ; preds = %for.body
  %call.i.i77 = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %m.0, ptr noundef nonnull @smk_net6addr_list) #14
  br i1 %call.i.i77, label %if.end.i.i80, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i80:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @smk_net6addr_list, ptr %new, align 4
  %prev2.i.i78 = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %14 = ptrtoint ptr %prev2.i.i78 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %m.0, ptr %prev2.i.i78, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !292
  %15 = ptrtoint ptr %m.0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %new, ptr %m.0, align 4
  br label %cleanup.sink.split

if.end32:                                         ; preds = %for.body
  %16 = ptrtoint ptr %m.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %m.0, align 4
  %18 = ptrtoint ptr %smk_masks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %smk_masks, align 4
  %smk_masks42 = getelementptr inbounds %struct.smk_net6addr, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %smk_masks42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %smk_masks42, align 4
  %cmp43 = icmp sgt i32 %19, %21
  br i1 %cmp43, label %if.then44, label %if.end32.for.cond_crit_edge

if.end32.for.cond_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then44:                                        ; preds = %if.end32
  %call.i.i82 = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %m.0, ptr noundef %17) #14
  br i1 %call.i.i82, label %if.end.i.i85, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i85:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %17, ptr %new, align 4
  %prev2.i.i83 = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %23 = ptrtoint ptr %prev2.i.i83 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %m.0, ptr %prev2.i.i83, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !292
  %24 = ptrtoint ptr %m.0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %new, ptr %m.0, align 4
  %prev37.i.i84 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i.i85, %if.end.i.i80, %if.end.i.i73, %if.end.i.i
  %prev37.i.i84.sink = phi ptr [ %prev37.i.i84, %if.end.i.i85 ], [ getelementptr inbounds (%struct.list_head, ptr @smk_net6addr_list, i32 0, i32 1), %if.end.i.i80 ], [ %prev37.i.i72, %if.end.i.i73 ], [ getelementptr inbounds (%struct.list_head, ptr @smk_net6addr_list, i32 0, i32 1), %if.end.i.i ]
  %25 = ptrtoint ptr %prev37.i.i84.sink to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %new, ptr %prev37.i.i84.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then44.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @net6addr_seq_start(ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @smk_seq_start(ptr noundef %pos, ptr noundef nonnull @smk_net6addr_list)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @net6addr_seq_next(ptr nocapture noundef readnone %s, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc.i = add i64 %1, 1
  store i64 %inc.i, ptr %pos, align 8
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %v, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.smk_seq_next.exit_crit_edge

entry.smk_seq_next.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.smk_seq_next.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.smk_seq_next.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @smk_seq_next.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.smk_seq_next.exit_crit_edge, label %if.then.i

land.lhs.true4.i.smk_seq_next.exit_crit_edge:     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smk_seq_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 554, ptr noundef nonnull @.str.33) #14
  br label %smk_seq_next.exit

smk_seq_next.exit:                                ; preds = %if.then.i, %land.lhs.true4.i.smk_seq_next.exit_crit_edge, %land.lhs.true.i.smk_seq_next.exit_crit_edge, %entry.smk_seq_next.exit_crit_edge
  %cmp.i = icmp eq ptr %3, @smk_net6addr_list
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %3
  ret ptr %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net6addr_seq_show(ptr noundef %s, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %smk_label = getelementptr inbounds %struct.smk_net6addr, ptr %v, i32 0, i32 4
  %0 = ptrtoint ptr %smk_label to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smk_label, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %smk_host = getelementptr inbounds %struct.smk_net6addr, ptr %v, i32 0, i32 1
  %smk_masks = getelementptr inbounds %struct.smk_net6addr, ptr %v, i32 0, i32 3
  %2 = ptrtoint ptr %smk_masks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smk_masks, align 4
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smk_known, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63, ptr noundef %smk_host, i32 noundef %3, ptr noundef %5) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_write_relabel_self(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  %list_tmp = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list_tmp) #14
  %0 = getelementptr inbounds %struct.list_head, ptr %list_tmp, i32 0, i32 1
  %1 = ptrtoint ptr %list_tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list_tmp, ptr %list_tmp, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list_tmp, ptr %0, align 4
  %call = call zeroext i1 @smack_privileged(i32 noundef 33) #14
  br i1 %call, label %if.end, label %entry.cleanup27_crit_edge

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup27

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.not = icmp ne i64 %4, 0
  %5 = add i32 %count, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %5)
  %6 = icmp ult i32 %5, -4096
  %or.cond = or i1 %6, %cmp.not
  br i1 %or.cond, label %if.end.cleanup27_crit_edge, label %if.end6

if.end.cleanup27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup27

if.end6:                                          ; preds = %if.end
  %call7 = call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %count) #14
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %call7 to i32
  br label %cleanup27

if.end11:                                         ; preds = %if.end6
  %call12 = call fastcc i32 @smk_parse_label_list(ptr noundef %call7, ptr noundef nonnull %list_tmp)
  call void @kfree(ptr noundef %call7) #14
  %8 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %call12, label %if.end11.out_crit_edge [
    i32 0, label %if.end11.if.then17_crit_edge
    i32 -22, label %land.lhs.true
  ]

if.end11.if.then17_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then17

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

land.lhs.true:                                    ; preds = %if.end11
  %9 = ptrtoint ptr %list_tmp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %list_tmp, align 4
  %cmp.i41.not = icmp eq ptr %10, %list_tmp
  br i1 %cmp.i41.not, label %land.lhs.true.if.then17_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

land.lhs.true.if.then17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then17

if.then17:                                        ; preds = %land.lhs.true.if.then17_crit_edge, %if.end11.if.then17_crit_edge
  %call18 = call ptr @prepare_creds() #14
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then17.out_crit_edge, label %if.end21

if.then17.out_crit_edge:                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end21:                                         ; preds = %if.then17
  %security.i = getelementptr inbounds %struct.cred, ptr %call18, i32 0, i32 23
  %11 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_blob_sizes to i32))
  %13 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %13
  %smk_relabel = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 4
  %14 = ptrtoint ptr %smk_relabel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %smk_relabel, align 4
  %cmp.not17.i = icmp eq ptr %15, %smk_relabel
  br i1 %cmp.not17.i, label %if.end21.smk_destroy_label_list.exit_crit_edge, label %if.end21.for.body.i_crit_edge

if.end21.for.body.i_crit_edge:                    ; preds = %if.end21
  br label %for.body.i

if.end21.smk_destroy_label_list.exit_crit_edge:   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_destroy_label_list.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end21.for.body.i_crit_edge
  %sklep.018.i = phi ptr [ %sklep2.0.i, %for.body.i.for.body.i_crit_edge ], [ %15, %if.end21.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %sklep.018.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %sklep2.0.i = load ptr, ptr %sklep.018.i, align 4
  call void @kfree(ptr noundef %sklep.018.i) #14
  %cmp.not.i = icmp eq ptr %sklep2.0.i, %smk_relabel
  br i1 %cmp.not.i, label %for.body.i.smk_destroy_label_list.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.smk_destroy_label_list.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_destroy_label_list.exit

smk_destroy_label_list.exit:                      ; preds = %for.body.i.smk_destroy_label_list.exit_crit_edge, %if.end21.smk_destroy_label_list.exit_crit_edge
  %17 = ptrtoint ptr %smk_relabel to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %smk_relabel, ptr %smk_relabel, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %smk_relabel, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %smk_relabel, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %list_tmp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %list_tmp, align 4
  %cmp.i.not.i = icmp eq ptr %20, %list_tmp
  br i1 %cmp.i.not.i, label %smk_destroy_label_list.exit.cleanup_crit_edge, label %if.then.i

smk_destroy_label_list.exit.cleanup_crit_edge:    ; preds = %smk_destroy_label_list.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %smk_destroy_label_list.exit
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %0, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %smk_relabel, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %smk_relabel to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %20, ptr %smk_relabel, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %smk_relabel, ptr %22, align 4
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %22, ptr %prev.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %smk_destroy_label_list.exit.cleanup_crit_edge
  %call24 = call i32 @commit_creds(ptr noundef nonnull %call18) #14
  br label %cleanup27

out:                                              ; preds = %if.then17.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end11.out_crit_edge
  %rc.1 = phi i32 [ -22, %land.lhs.true.out_crit_edge ], [ %call12, %if.end11.out_crit_edge ], [ -12, %if.then17.out_crit_edge ]
  %27 = ptrtoint ptr %list_tmp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %list_tmp, align 4
  %cmp.not17.i42 = icmp eq ptr %28, %list_tmp
  br i1 %cmp.not17.i42, label %out.smk_destroy_label_list.exit48_crit_edge, label %out.for.body.i46_crit_edge

out.for.body.i46_crit_edge:                       ; preds = %out
  br label %for.body.i46

out.smk_destroy_label_list.exit48_crit_edge:      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_destroy_label_list.exit48

for.body.i46:                                     ; preds = %for.body.i46.for.body.i46_crit_edge, %out.for.body.i46_crit_edge
  %sklep.018.i43 = phi ptr [ %sklep2.0.i44, %for.body.i46.for.body.i46_crit_edge ], [ %28, %out.for.body.i46_crit_edge ]
  %29 = ptrtoint ptr %sklep.018.i43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %sklep2.0.i44 = load ptr, ptr %sklep.018.i43, align 4
  call void @kfree(ptr noundef %sklep.018.i43) #14
  %cmp.not.i45 = icmp eq ptr %sklep2.0.i44, %list_tmp
  br i1 %cmp.not.i45, label %for.body.i46.smk_destroy_label_list.exit48_crit_edge, label %for.body.i46.for.body.i46_crit_edge

for.body.i46.for.body.i46_crit_edge:              ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i46

for.body.i46.smk_destroy_label_list.exit48_crit_edge: ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_destroy_label_list.exit48

smk_destroy_label_list.exit48:                    ; preds = %for.body.i46.smk_destroy_label_list.exit48_crit_edge, %out.smk_destroy_label_list.exit48_crit_edge
  %30 = ptrtoint ptr %list_tmp to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %list_tmp, ptr %list_tmp, align 4
  br label %cleanup27

cleanup27:                                        ; preds = %smk_destroy_label_list.exit48, %cleanup, %if.then9, %if.end.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %retval.1 = phi i32 [ %7, %if.then9 ], [ %rc.1, %smk_destroy_label_list.exit48 ], [ %count, %cleanup ], [ -1, %entry.cleanup27_crit_edge ], [ -22, %if.end.cleanup27_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list_tmp) #14
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smk_open_relabel_self(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @relabel_self_seq_ops) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @relabel_self_seq_start(ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !282) #14
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
  %security.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_blob_sizes to i32))
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %8
  %smk_relabel = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 4
  %call2 = tail call fastcc ptr @smk_seq_start(ptr noundef %pos, ptr noundef %smk_relabel)
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @relabel_self_seq_next(ptr nocapture noundef readnone %s, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !282) #14
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
  %security.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_blob_sizes to i32))
  %8 = load i32, ptr @smack_blob_sizes, align 4
  %9 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pos, align 8
  %inc.i = add i64 %10, 1
  store i64 %inc.i, ptr %pos, align 8
  %11 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %v, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.smk_seq_next.exit_crit_edge

entry.smk_seq_next.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.smk_seq_next.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.smk_seq_next.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @smk_seq_next.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.smk_seq_next.exit_crit_edge, label %if.then.i

land.lhs.true4.i.smk_seq_next.exit_crit_edge:     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smk_seq_next.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smk_seq_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 554, ptr noundef nonnull @.str.33) #14
  br label %smk_seq_next.exit

smk_seq_next.exit:                                ; preds = %if.then.i, %land.lhs.true4.i.smk_seq_next.exit_crit_edge, %land.lhs.true.i.smk_seq_next.exit_crit_edge, %entry.smk_seq_next.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %7, i32 %8
  %smk_relabel = getelementptr inbounds %struct.task_smack, ptr %add.ptr.i, i32 0, i32 4
  %cmp.i = icmp eq ptr %12, %smk_relabel
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %12
  ret ptr %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @relabel_self_seq_show(ptr noundef %s, ptr nocapture noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %smk_label = getelementptr inbounds %struct.smack_known_list_elem, ptr %v, i32 0, i32 1
  %0 = ptrtoint ptr %smk_label to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smk_label, align 4
  %smk_known = getelementptr inbounds %struct.smack_known, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %smk_known to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smk_known, align 4
  tail call void @seq_puts(ptr noundef %s, ptr noundef %3) #14
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 32) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_cfg_map_del(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_cfg_cipsov4_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_cfg_cipsov4_map_add(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlbl_cfg_cipsov4_del(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_cfg_unlbl_map_add(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !89, !91, !92, !94, !96, !97, !99, !101, !102, !103, !105, !106, !108, !110, !112, !114, !116, !118, !120, !121, !122, !124, !126, !128, !130, !132, !134, !135, !137, !139, !141, !143, !145, !147, !148, !149, !151, !153, !155, !157, !159, !161, !162, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !244, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !281}
!llvm.named.register.sp = !{!282}
!llvm.module.flags = !{!283, !284, !285, !286, !287, !288, !289, !290}
!llvm.ident = !{!291}

!0 = !{ptr @smack_cipso_direct, !1, !"smack_cipso_direct", i1 false, i1 false}
!1 = !{!"../security/smack/smackfs.c", i32 86, i32 5}
!2 = !{ptr @smack_cipso_mapped, !3, !"smack_cipso_mapped", i1 false, i1 false}
!3 = !{!"../security/smack/smackfs.c", i32 93, i32 5}
!4 = !{ptr @smack_ptrace_rule, !5, !"smack_ptrace_rule", i1 false, i1 false}
!5 = !{!"../security/smack/smackfs.c", i32 118, i32 5}
!6 = !{ptr @smk_net4addr_list, !7, !"smk_net4addr_list", i1 false, i1 false}
!7 = !{!"../security/smack/smackfs.c", i32 126, i32 1}
!8 = !{ptr @smk_net6addr_list, !9, !"smk_net6addr_list", i1 false, i1 false}
!9 = !{!"../security/smack/smackfs.c", i32 128, i32 1}
!10 = !{ptr @__initcall__kmod_smack__541_3035_init_smk_fs6, !11, !"__initcall__kmod_smack__541_3035_init_smk_fs6", i1 false, i1 false}
!11 = !{!"../security/smack/smackfs.c", i32 3035, i32 1}
!12 = !{ptr @smack_net_ambient, !13, !"smack_net_ambient", i1 false, i1 false}
!13 = !{!"../security/smack/smackfs.c", i32 79, i32 21}
!14 = !{ptr @smack_unconfined, !15, !"smack_unconfined", i1 false, i1 false}
!15 = !{!"../security/smack/smackfs.c", i32 102, i32 21}
!16 = !{ptr @smack_syslog_label, !17, !"smack_syslog_label", i1 false, i1 false}
!17 = !{!"../security/smack/smackfs.c", i32 109, i32 21}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/smack/smackfs.c", i32 3001, i32 3}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @init_smk_fs._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @init_smk_fs._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/smack/smackfs.c", i32 3007, i32 4}
!26 = !{ptr @init_smk_fs._entry.3, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @init_smk_fs._entry_ptr.5, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../security/smack/smackfs.c", i32 2582, i32 43}
!30 = !{ptr @smk_fs_type, !31, !"smk_fs_type", i1 false, i1 false}
!31 = !{!"../security/smack/smackfs.c", i32 2970, i32 32}
!32 = !{ptr @smk_context_ops, !33, !"smk_context_ops", i1 false, i1 false}
!33 = !{!"../security/smack/smackfs.c", i32 2956, i32 43}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/smack/smackfs.c", i32 2880, i32 4}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../security/smack/smackfs.c", i32 2882, i32 4}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/smack/smackfs.c", i32 2884, i32 4}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../security/smack/smackfs.c", i32 2886, i32 4}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../security/smack/smackfs.c", i32 2888, i32 4}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../security/smack/smackfs.c", i32 2890, i32 4}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../security/smack/smackfs.c", i32 2892, i32 4}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../security/smack/smackfs.c", i32 2894, i32 4}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../security/smack/smackfs.c", i32 2896, i32 4}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../security/smack/smackfs.c", i32 2898, i32 4}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../security/smack/smackfs.c", i32 2900, i32 4}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../security/smack/smackfs.c", i32 2902, i32 4}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../security/smack/smackfs.c", i32 2904, i32 4}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../security/smack/smackfs.c", i32 2906, i32 4}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../security/smack/smackfs.c", i32 2908, i32 4}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../security/smack/smackfs.c", i32 2910, i32 4}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/smack/smackfs.c", i32 2913, i32 4}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../security/smack/smackfs.c", i32 2915, i32 4}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../security/smack/smackfs.c", i32 2917, i32 4}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../security/smack/smackfs.c", i32 2920, i32 4}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../security/smack/smackfs.c", i32 2924, i32 4}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../security/smack/smackfs.c", i32 2927, i32 4}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../security/smack/smackfs.c", i32 2930, i32 5}
!80 = !{ptr @smk_fill_super.smack_files, !81, !"smack_files", i1 false, i1 false}
!81 = !{!"../security/smack/smackfs.c", i32 2878, i32 33}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../security/smack/smackfs.c", i32 2935, i32 3}
!84 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @smk_fill_super._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @smk_fill_super._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @smk_load_ops, !88, !"smk_load_ops", i1 false, i1 false}
!88 = !{!"../security/smack/smackfs.c", i32 672, i32 37}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../security/smack/smackfs.c", i32 225, i32 2}
!91 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @load_seq_ops, !93, !"load_seq_ops", i1 false, i1 false}
!93 = !{!"../security/smack/smackfs.c", i32 630, i32 36}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../security/smack/smackfs.c", i32 538, i32 14}
!96 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../security/smack/smackfs.c", i32 540, i32 10}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!101 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!105 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../security/smack/smackfs.c", i32 554, i32 9}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../security/smack/smackfs.c", i32 624, i32 2}
!110 = !{ptr @.str.38, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../security/smack/smackfs.c", i32 579, i32 16}
!112 = !{ptr @smk_cipso_ops, !113, !"smk_cipso_ops", i1 false, i1 false}
!113 = !{!"../security/smack/smackfs.c", i32 956, i32 37}
!114 = !{ptr @.str.39, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../security/smack/smackfs.c", i32 887, i32 21}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../security/smack/smackfs.c", i32 913, i32 22}
!118 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../security/smack/smackfs.c", i32 67, i32 8}
!120 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @smack_cipso_lock, !119, !"smack_cipso_lock", i1 false, i1 false}
!122 = !{ptr @cipso_seq_ops, !123, !"cipso_seq_ops", i1 false, i1 false}
!123 = !{!"../security/smack/smackfs.c", i32 798, i32 36}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../security/smack/smackfs.c", i32 785, i32 16}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../security/smack/smackfs.c", i32 789, i32 17}
!128 = !{ptr @smk_doi_ops, !129, !"smk_doi_ops", i1 false, i1 false}
!129 = !{!"../security/smack/smackfs.c", i32 1621, i32 37}
!130 = !{ptr @smk_cipso_doi_value, !131, !"smk_cipso_doi_value", i1 false, i1 false}
!131 = !{!"../security/smack/smackfs.c", i32 141, i32 12}
!132 = distinct !{null, !133, !"__already_done", i1 false, i1 false}
!133 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!134 = distinct !{null, !133, !"<string literal>", i1 false, i1 false}
!135 = distinct !{null, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!137 = !{ptr @.str.47, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!139 = !{ptr @smk_direct_ops, !140, !"smk_direct_ops", i1 false, i1 false}
!140 = !{!"../security/smack/smackfs.c", i32 1699, i32 37}
!141 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!142 = !{!"../security/smack/smackfs.c", i32 1688, i32 3}
!143 = !{ptr @smk_ambient_ops, !144, !"smk_ambient_ops", i1 false, i1 false}
!144 = !{!"../security/smack/smackfs.c", i32 1867, i32 37}
!145 = !{ptr @.str.48, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../security/smack/smackfs.c", i32 68, i32 8}
!147 = !{ptr @.str.49, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @smack_ambient_lock, !146, !"smack_ambient_lock", i1 false, i1 false}
!149 = !{ptr @smk_net4addr_ops, !150, !"smk_net4addr_ops", i1 false, i1 false}
!150 = !{!"../security/smack/smackfs.c", i32 1295, i32 37}
!151 = !{ptr @.str.50, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../security/smack/smackfs.c", i32 1186, i32 20}
!153 = !{ptr @.str.51, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../security/smack/smackfs.c", i32 1189, i32 21}
!155 = !{ptr @.str.52, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../security/smack/smackfs.c", i32 1216, i32 21}
!157 = distinct !{null, !158, !"__warned", i1 false, i1 false}
!158 = !{!"../security/smack/smackfs.c", i32 1238, i32 2}
!159 = !{ptr @.str.53, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../security/smack/smackfs.c", i32 69, i32 8}
!161 = !{ptr @.str.54, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @smk_net4addr_lock, !160, !"smk_net4addr_lock", i1 false, i1 false}
!163 = distinct !{null, !164, !"__warned", i1 false, i1 false}
!164 = !{!"../security/smack/smack.h", i32 421, i32 32}
!165 = distinct !{null, !166, !"__warned", i1 false, i1 false}
!166 = !{!"../security/smack/smackfs.c", i32 1118, i32 2}
!167 = !{ptr @net4addr_seq_ops, !168, !"net4addr_seq_ops", i1 false, i1 false}
!168 = !{!"../security/smack/smackfs.c", i32 1070, i32 36}
!169 = !{ptr @.str.55, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../security/smack/smackfs.c", i32 1064, i32 16}
!171 = !{ptr @smk_onlycap_ops, !172, !"smk_onlycap_ops", i1 false, i1 false}
!172 = !{!"../security/smack/smackfs.c", i32 2047, i32 37}
!173 = !{ptr @.str.56, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../security/smack/smackfs.c", i32 1962, i32 30}
!175 = !{ptr @onlycap_seq_ops, !176, !"onlycap_seq_ops", i1 false, i1 false}
!176 = !{!"../security/smack/smackfs.c", i32 1898, i32 36}
!177 = !{ptr @smk_logging_ops, !178, !"smk_logging_ops", i1 false, i1 false}
!178 = !{!"../security/smack/smackfs.c", i32 2202, i32 37}
!179 = !{ptr @.str.57, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../security/smack/smackfs.c", i32 2161, i32 16}
!181 = !{ptr @smk_load_self_ops, !182, !"smk_load_self_ops", i1 false, i1 false}
!182 = !{!"../security/smack/smackfs.c", i32 2274, i32 37}
!183 = distinct !{null, !184, !"__warned", i1 false, i1 false}
!184 = !{!"../security/smack/smackfs.c", i32 2268, i32 38}
!185 = !{ptr @load_self_seq_ops, !186, !"load_self_seq_ops", i1 false, i1 false}
!186 = !{!"../security/smack/smackfs.c", i32 2237, i32 36}
!187 = distinct !{null, !188, !"__warned", i1 false, i1 false}
!188 = !{!"../security/smack/smackfs.c", i32 2214, i32 38}
!189 = distinct !{null, !190, !"__warned", i1 false, i1 false}
!190 = !{!"../security/smack/smackfs.c", i32 2221, i32 38}
!191 = !{ptr @smk_access_ops, !192, !"smk_access_ops", i1 false, i1 false}
!192 = !{!"../security/smack/smackfs.c", i32 2344, i32 37}
!193 = !{ptr @smk_mapped_ops, !194, !"smk_mapped_ops", i1 false, i1 false}
!194 = !{!"../security/smack/smackfs.c", i32 1777, i32 37}
!195 = distinct !{null, !196, !"__warned", i1 false, i1 false}
!196 = !{!"../security/smack/smackfs.c", i32 1766, i32 3}
!197 = !{ptr @smk_load2_ops, !198, !"smk_load2_ops", i1 false, i1 false}
!198 = !{!"../security/smack/smackfs.c", i32 2409, i32 37}
!199 = !{ptr @load2_seq_ops, !200, !"load2_seq_ops", i1 false, i1 false}
!200 = !{!"../security/smack/smackfs.c", i32 2369, i32 36}
!201 = distinct !{null, !202, !"__warned", i1 false, i1 false}
!202 = !{!"../security/smack/smackfs.c", i32 2363, i32 2}
!203 = !{ptr @smk_load_self2_ops, !204, !"smk_load_self2_ops", i1 false, i1 false}
!204 = !{!"../security/smack/smackfs.c", i32 2482, i32 37}
!205 = distinct !{null, !206, !"__warned", i1 false, i1 false}
!206 = !{!"../security/smack/smackfs.c", i32 2476, i32 38}
!207 = !{ptr @load_self2_seq_ops, !208, !"load_self2_seq_ops", i1 false, i1 false}
!208 = !{!"../security/smack/smackfs.c", i32 2446, i32 36}
!209 = distinct !{null, !210, !"__warned", i1 false, i1 false}
!210 = !{!"../security/smack/smackfs.c", i32 2423, i32 38}
!211 = distinct !{null, !212, !"__warned", i1 false, i1 false}
!212 = !{!"../security/smack/smackfs.c", i32 2430, i32 38}
!213 = !{ptr @smk_access2_ops, !214, !"smk_access2_ops", i1 false, i1 false}
!214 = !{!"../security/smack/smackfs.c", i32 2503, i32 37}
!215 = !{ptr @smk_cipso2_ops, !216, !"smk_cipso2_ops", i1 false, i1 false}
!216 = !{!"../security/smack/smackfs.c", i32 1030, i32 37}
!217 = !{ptr @cipso2_seq_ops, !218, !"cipso2_seq_ops", i1 false, i1 false}
!218 = !{!"../security/smack/smackfs.c", i32 994, i32 36}
!219 = !{ptr @smk_revoke_subj_ops, !220, !"smk_revoke_subj_ops", i1 false, i1 false}
!220 = !{!"../security/smack/smackfs.c", i32 2569, i32 37}
!221 = distinct !{null, !222, !"__warned", i1 false, i1 false}
!222 = !{!"../security/smack/smackfs.c", i32 2556, i32 2}
!223 = !{ptr @smk_change_rule_ops, !224, !"smk_change_rule_ops", i1 false, i1 false}
!224 = !{!"../security/smack/smackfs.c", i32 2605, i32 37}
!225 = !{ptr @smk_syslog_ops, !226, !"smk_syslog_ops", i1 false, i1 false}
!226 = !{!"../security/smack/smackfs.c", i32 2682, i32 37}
!227 = !{ptr @smk_ptrace_ops, !228, !"smk_ptrace_ops", i1 false, i1 false}
!228 = !{!"../security/smack/smackfs.c", i32 2859, i32 37}
!229 = !{ptr @smk_unconfined_ops, !230, !"smk_unconfined_ops", i1 false, i1 false}
!230 = !{!"../security/smack/smackfs.c", i32 2136, i32 37}
!231 = !{ptr @smk_net6addr_ops, !232, !"smk_net6addr_ops", i1 false, i1 false}
!232 = !{!"../security/smack/smackfs.c", i32 1552, i32 37}
!233 = !{ptr @.str.58, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../security/smack/smackfs.c", i32 1446, i32 19}
!235 = !{ptr @.str.59, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../security/smack/smackfs.c", i32 1451, i32 20}
!237 = !{ptr @.str.60, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../security/smack/smackfs.c", i32 1485, i32 21}
!239 = distinct !{null, !240, !"__warned", i1 false, i1 false}
!240 = !{!"../security/smack/smackfs.c", i32 1511, i32 2}
!241 = !{ptr @.str.61, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../security/smack/smackfs.c", i32 71, i32 8}
!243 = !{ptr @.str.62, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @smk_net6addr_lock, !242, !"smk_net6addr_lock", i1 false, i1 false}
!245 = distinct !{null, !246, !"__warned", i1 false, i1 false}
!246 = !{!"../security/smack/smackfs.c", i32 1381, i32 2}
!247 = !{ptr @net6addr_seq_ops, !248, !"net6addr_seq_ops", i1 false, i1 false}
!248 = !{!"../security/smack/smackfs.c", i32 1334, i32 36}
!249 = !{ptr @.str.63, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../security/smack/smackfs.c", i32 1328, i32 17}
!251 = !{ptr @smk_relabel_self_ops, !252, !"smk_relabel_self_ops", i1 false, i1 false}
!252 = !{!"../security/smack/smackfs.c", i32 2795, i32 37}
!253 = !{ptr @relabel_self_seq_ops, !254, !"relabel_self_seq_ops", i1 false, i1 false}
!254 = !{!"../security/smack/smackfs.c", i32 2718, i32 36}
!255 = distinct !{null, !256, !"__warned", i1 false, i1 false}
!256 = !{!"../security/smack/smackfs.c", i32 2694, i32 38}
!257 = distinct !{null, !258, !"__warned", i1 false, i1 false}
!258 = !{!"../security/smack/smackfs.c", i32 2701, i32 38}
!259 = !{ptr @smackfs_mount, !260, !"smackfs_mount", i1 false, i1 false}
!260 = !{!"../security/smack/smackfs.c", i32 2976, i32 25}
!261 = !{ptr @.str.64, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../security/smack/smackfs.c", i32 693, i32 3}
!263 = !{ptr @.str.65, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @smk_cipso_doi._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @smk_cipso_doi._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.67, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../security/smack/smackfs.c", i32 706, i32 3}
!268 = !{ptr @smk_cipso_doi._entry.66, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @smk_cipso_doi._entry_ptr.68, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.70, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../security/smack/smackfs.c", i32 713, i32 3}
!272 = !{ptr @smk_cipso_doi._entry.69, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @smk_cipso_doi._entry_ptr.71, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.72, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../security/smack/smackfs.c", i32 734, i32 4}
!276 = !{ptr @smk_unlbl_ambient._entry, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @smk_unlbl_ambient._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.74, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../security/smack/smackfs.c", i32 743, i32 3}
!280 = !{ptr @smk_unlbl_ambient._entry.73, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @smk_unlbl_ambient._entry_ptr.75, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{!"sp"}
!283 = !{i32 1, !"wchar_size", i32 2}
!284 = !{i32 1, !"min_enum_size", i32 4}
!285 = !{i32 8, !"branch-target-enforcement", i32 0}
!286 = !{i32 8, !"sign-return-address", i32 0}
!287 = !{i32 8, !"sign-return-address-all", i32 0}
!288 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!289 = !{i32 7, !"uwtable", i32 1}
!290 = !{i32 7, !"frame-pointer", i32 2}
!291 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!292 = !{i64 2149790473}
!293 = !{i64 2149313406}
!294 = !{i64 2149313140}
!295 = !{!"auto-init"}
!296 = distinct !{!296, !297}
!297 = !{!"llvm.loop.peeled.count", i32 1}
!298 = !{i64 2152381824, i64 2152381849}
!299 = !{!"branch_weights", i32 2000, i32 1}
!300 = !{i64 4877379}
!301 = !{i64 4877576}
!302 = !{i64 2152362809}
!303 = !{i64 2149815723}
!304 = !{i64 2158620416}
!305 = distinct !{!305, !297}
