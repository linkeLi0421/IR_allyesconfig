; ModuleID = '/llk/IR_all_yes/net/core/sysctl_net_core.c_pt.bc'
source_filename = "../net/core/sysctl_net_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sysctl_fb_tunnels_only_for_init_net\22, \22a\22\09"
module asm "\09.weak\09__crc_sysctl_fb_tunnels_only_for_init_net\09\09\09\09"
module asm "\09.long\09__crc_sysctl_fb_tunnels_only_for_init_net\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysctl_fb_tunnels_only_for_init_net:\09\09\09\09\09"
module asm "\09.asciz \09\22sysctl_fb_tunnels_only_for_init_net\22\09\09\09\09\09"
module asm "__kstrtabns_sysctl_fb_tunnels_only_for_init_net:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sysctl_devconf_inherit_init_net\22, \22a\22\09"
module asm "\09.weak\09__crc_sysctl_devconf_inherit_init_net\09\09\09\09"
module asm "\09.long\09__crc_sysctl_devconf_inherit_init_net\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysctl_devconf_inherit_init_net:\09\09\09\09\09"
module asm "\09.asciz \09\22sysctl_devconf_inherit_init_net\22\09\09\09\09\09"
module asm "__kstrtabns_sysctl_devconf_inherit_init_net:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
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
%struct.ctl_table_header = type { %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.181, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.181 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%union.anon.63 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.187, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.anon.187 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rps_sock_flow_table = type { i32, [124 x i8], [0 x i32] }
%struct.sd_flow_limit = type { i64, i32, i32, [128 x i16], [0 x i8] }

@sysctl_fb_tunnels_only_for_init_net = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_sysctl_fb_tunnels_only_for_init_net = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysctl_fb_tunnels_only_for_init_net = external dso_local constant [0 x i8], align 1
@__ksymtab_sysctl_fb_tunnels_only_for_init_net = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysctl_fb_tunnels_only_for_init_net to i32), ptr @__kstrtab_sysctl_fb_tunnels_only_for_init_net, ptr @__kstrtabns_sysctl_fb_tunnels_only_for_init_net }, section "___ksymtab+sysctl_fb_tunnels_only_for_init_net", align 4
@sysctl_devconf_inherit_init_net = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_sysctl_devconf_inherit_init_net = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysctl_devconf_inherit_init_net = external dso_local constant [0 x i8], align 1
@__ksymtab_sysctl_devconf_inherit_init_net = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysctl_devconf_inherit_init_net to i32), ptr @__kstrtab_sysctl_devconf_inherit_init_net, ptr @__kstrtabns_sysctl_devconf_inherit_init_net }, section "___ksymtab+sysctl_devconf_inherit_init_net", align 4
@__setup_str_fb_tunnels_only_for_init_net_sysctl_setup = internal constant [12 x i8] c"fb_tunnels=\00", section ".init.rodata", align 1
@__setup_fb_tunnels_only_for_init_net_sysctl_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_fb_tunnels_only_for_init_net_sysctl_setup, ptr @fb_tunnels_only_for_init_net_sysctl_setup, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_sysctl_net_core__569_664_sysctl_core_init5 = internal global ptr @sysctl_core_init, section ".initcall5.init", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"initns\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"net/core\00", [23 x i8] zeroinitializer }, align 32
@net_core_table = internal global { [34 x %struct.ctl_table], [312 x i8] } { [34 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.3, ptr @sysctl_wmem_max, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_sndbuf, ptr null }, %struct.ctl_table { ptr @.str.4, ptr @sysctl_rmem_max, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_rcvbuf, ptr null }, %struct.ctl_table { ptr @.str.5, ptr @sysctl_wmem_default, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_sndbuf, ptr null }, %struct.ctl_table { ptr @.str.6, ptr @sysctl_rmem_default, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_rcvbuf, ptr null }, %struct.ctl_table { ptr @.str.7, ptr @weight_p, i32 4, i16 420, ptr null, ptr @proc_do_dev_weight, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.8, ptr @dev_weight_rx_bias, i32 4, i16 420, ptr null, ptr @proc_do_dev_weight, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.9, ptr @dev_weight_tx_bias, i32 4, i16 420, ptr null, ptr @proc_do_dev_weight, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.10, ptr @netdev_max_backlog, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.11, ptr @netdev_rss_key, i32 4, i16 292, ptr null, ptr @proc_do_rss_key, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.12, ptr @bpf_jit_enable, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax_bpf_enable, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.13, ptr @bpf_jit_harden, i32 4, i16 384, ptr null, ptr @proc_dointvec_minmax_bpf_restricted, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @two }, %struct.ctl_table { ptr @.str.14, ptr @bpf_jit_kallsyms, i32 4, i16 384, ptr null, ptr @proc_dointvec_minmax_bpf_restricted, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.15, ptr @bpf_jit_limit, i32 4, i16 384, ptr null, ptr @proc_dolongvec_minmax_bpf_restricted, ptr null, ptr @long_one, ptr @bpf_jit_limit_max }, %struct.ctl_table { ptr @.str.16, ptr @netdev_tstamp_prequeue, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.17, ptr getelementptr (i8, ptr @net_ratelimit_state, i64 44), i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.18, ptr getelementptr (i8, ptr @net_ratelimit_state, i64 48), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.19, ptr @sysctl_optmem_max, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.20, ptr @sysctl_tstamp_allow_data, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.21, ptr null, i32 4, i16 420, ptr null, ptr @rps_sock_flow_sysctl, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.22, ptr null, i32 0, i16 420, ptr null, ptr @flow_limit_cpu_sysctl, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.23, ptr @netdev_flow_limit_table_len, i32 4, i16 420, ptr null, ptr @flow_limit_table_len_sysctl, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.24, ptr @sysctl_net_busy_poll, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.25, ptr @sysctl_net_busy_read, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.26, ptr null, i32 16, i16 420, ptr null, ptr @set_default_qdisc, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.27, ptr @netdev_budget, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.28, ptr @net_msg_warn, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.29, ptr @sysctl_max_skb_frags, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr @max_skb_frags }, %struct.ctl_table { ptr @.str.30, ptr @netdev_budget_usecs, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.31, ptr @sysctl_fb_tunnels_only_for_init_net, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @two }, %struct.ctl_table { ptr @.str.32, ptr @sysctl_devconf_inherit_init_net, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @three }, %struct.ctl_table { ptr @.str.33, ptr @net_high_order_alloc_disable_key, i32 8, i16 420, ptr null, ptr @proc_do_static_key, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.34, ptr @gro_normal_batch, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr null }, %struct.ctl_table { ptr @.str.35, ptr @netdev_unregister_timeout_secs, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr @int_3600 }, %struct.ctl_table zeroinitializer], [312 x i8] zeroinitializer }, align 32
@sysctl_core_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @sysctl_core_net_init, ptr null, ptr @sysctl_core_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wmem_max\00", [23 x i8] zeroinitializer }, align 32
@sysctl_wmem_max = external dso_local global i32, align 4
@min_sndbuf = internal global { i32, [28 x i8] } { i32 4608, [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rmem_max\00", [23 x i8] zeroinitializer }, align 32
@sysctl_rmem_max = external dso_local global i32, align 4
@min_rcvbuf = internal global { i32, [28 x i8] } { i32 2304, [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wmem_default\00", [19 x i8] zeroinitializer }, align 32
@sysctl_wmem_default = external dso_local global i32, align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rmem_default\00", [19 x i8] zeroinitializer }, align 32
@sysctl_rmem_default = external dso_local global i32, align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dev_weight\00", [21 x i8] zeroinitializer }, align 32
@weight_p = external dso_local global i32, align 4
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dev_weight_rx_bias\00", [45 x i8] zeroinitializer }, align 32
@dev_weight_rx_bias = external dso_local global i32, align 4
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dev_weight_tx_bias\00", [45 x i8] zeroinitializer }, align 32
@dev_weight_tx_bias = external dso_local global i32, align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"netdev_max_backlog\00", [45 x i8] zeroinitializer }, align 32
@netdev_max_backlog = external dso_local global i32, align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"netdev_rss_key\00", [17 x i8] zeroinitializer }, align 32
@netdev_rss_key = external dso_local global [52 x i8], section ".data..read_mostly", align 1
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bpf_jit_enable\00", [17 x i8] zeroinitializer }, align 32
@bpf_jit_enable = external dso_local global i32, align 4
@sysctl_vals = external dso_local constant [0 x i32], align 4
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bpf_jit_harden\00", [17 x i8] zeroinitializer }, align 32
@bpf_jit_harden = external dso_local global i32, align 4
@two = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bpf_jit_kallsyms\00", [47 x i8] zeroinitializer }, align 32
@bpf_jit_kallsyms = external dso_local global i32, align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bpf_jit_limit\00", [18 x i8] zeroinitializer }, align 32
@bpf_jit_limit = external dso_local global i32, align 4
@long_one = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@bpf_jit_limit_max = external dso_local global i32, align 4
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"netdev_tstamp_prequeue\00", [41 x i8] zeroinitializer }, align 32
@netdev_tstamp_prequeue = external dso_local global i32, align 4
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"message_cost\00", [19 x i8] zeroinitializer }, align 32
@net_ratelimit_state = external dso_local global %struct.ratelimit_state, align 4
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"message_burst\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"optmem_max\00", [21 x i8] zeroinitializer }, align 32
@sysctl_optmem_max = external dso_local global i32, align 4
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tstamp_allow_data\00", [46 x i8] zeroinitializer }, align 32
@sysctl_tstamp_allow_data = external dso_local global i32, align 4
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rps_sock_flow_entries\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"flow_limit_cpu_bitmap\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"flow_limit_table_len\00", [43 x i8] zeroinitializer }, align 32
@netdev_flow_limit_table_len = external dso_local global i32, align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"busy_poll\00", [22 x i8] zeroinitializer }, align 32
@sysctl_net_busy_poll = external dso_local global i32, section ".data..read_mostly", align 4
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"busy_read\00", [22 x i8] zeroinitializer }, align 32
@sysctl_net_busy_read = external dso_local global i32, section ".data..read_mostly", align 4
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"default_qdisc\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"netdev_budget\00", [18 x i8] zeroinitializer }, align 32
@netdev_budget = external dso_local global i32, align 4
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"warnings\00", [23 x i8] zeroinitializer }, align 32
@net_msg_warn = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max_skb_frags\00", [18 x i8] zeroinitializer }, align 32
@sysctl_max_skb_frags = external dso_local global i32, align 4
@max_skb_frags = internal global { i32, [28 x i8] } { i32 17, [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"netdev_budget_usecs\00", [44 x i8] zeroinitializer }, align 32
@netdev_budget_usecs = external dso_local global i32, align 4
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fb_tunnels_only_for_init_net\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"devconf_inherit_init_net\00", [39 x i8] zeroinitializer }, align 32
@three = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"high_order_alloc_disable\00", [39 x i8] zeroinitializer }, align 32
@net_high_order_alloc_disable_key = external dso_local global %struct.static_key_false, align 4
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gro_normal_batch\00", [47 x i8] zeroinitializer }, align 32
@gro_normal_batch = external dso_local global i32, align 4
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"netdev_unregister_timeout_secs\00", [33 x i8] zeroinitializer }, align 32
@netdev_unregister_timeout_secs = external dso_local global i32, align 4
@int_3600 = internal global { i32, [28 x i8] } { i32 3600, [28 x i8] zeroinitializer }, align 32
@dev_rx_weight = external dso_local local_unnamed_addr global i32, align 4
@dev_tx_weight = external dso_local local_unnamed_addr global i32, align 4
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*phC\00", [26 x i8] zeroinitializer }, align 32
@proc_dointvec_minmax_bpf_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.39, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\014bpf_jit_enable = 2 was set! NEVER use this in production, only for JIT debugging!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"proc_dointvec_minmax_bpf_enable\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/core/sysctl_net_core.c\00", [37 x i8] zeroinitializer }, align 32
@proc_dointvec_minmax_bpf_enable._entry_ptr = internal global ptr @proc_dointvec_minmax_bpf_enable._entry, section ".printk_index", align 4
@rps_sock_flow_sysctl.sock_flow_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.40, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rps_sock_flow_sysctl.sock_flow_mutex, i64 52), ptr getelementptr (i8, ptr @rps_sock_flow_sysctl.sock_flow_mutex, i64 52) }, ptr @rps_sock_flow_sysctl.sock_flow_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.41, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sock_flow_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sock_flow_mutex\00", [16 x i8] zeroinitializer }, align 32
@rps_sock_flow_sysctl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@rps_sock_flow_table = external dso_local global ptr, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@rps_cpu_mask = external dso_local local_unnamed_addr global i32, align 4
@rps_needed = external dso_local global %struct.static_key_false, align 4
@rfs_needed = external dso_local global %struct.static_key_false, align 4
@flow_limit_update_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.46, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @flow_limit_update_mutex, i64 52), ptr getelementptr (i8, ptr @flow_limit_update_mutex, i64 52) }, ptr @flow_limit_update_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.47, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@flow_limit_cpu_sysctl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@flow_limit_cpu_sysctl.__warned.43 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%*pb\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"flow_limit_update_mutex.wait_lock\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"flow_limit_update_mutex\00", [40 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.51 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@netns_core_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.52, ptr getelementptr (i8, ptr @init_net, i64 396), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"somaxconn\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 602, i32 20 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 605, i32 25 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 660, i32 33 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"net_core_table\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 313, i32 25 }
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"sysctl_core_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 653, i32 48 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 315, i32 15 }
@___asan_gen_.71 = private unnamed_addr constant [11 x i8] c"min_sndbuf\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 29, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 323, i32 15 }
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"min_rcvbuf\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 30, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 331, i32 15 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 339, i32 15 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 347, i32 15 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 354, i32 15 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 361, i32 15 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 368, i32 15 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 375, i32 15 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 383, i32 15 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 398, i32 15 }
@___asan_gen_.107 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 26, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 407, i32 15 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 417, i32 15 }
@___asan_gen_.116 = private unnamed_addr constant [9 x i8] c"long_one\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 32, i32 13 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 427, i32 15 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 434, i32 15 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 441, i32 15 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 448, i32 15 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 455, i32 15 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 465, i32 15 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 473, i32 15 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 478, i32 15 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 487, i32 15 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 495, i32 15 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 505, i32 15 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 512, i32 15 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 519, i32 15 }
@___asan_gen_.158 = private unnamed_addr constant [13 x i8] c"net_msg_warn\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 35, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 526, i32 15 }
@___asan_gen_.164 = private unnamed_addr constant [14 x i8] c"max_skb_frags\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 31, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 535, i32 15 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 543, i32 15 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 552, i32 15 }
@___asan_gen_.176 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 27, i32 12 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 561, i32 15 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 568, i32 15 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 576, i32 15 }
@___asan_gen_.188 = private unnamed_addr constant [9 x i8] c"int_3600\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 28, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 258, i32 29 }
@___asan_gen_.194 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 282, i32 5 }
@___asan_gen_.206 = private unnamed_addr constant [16 x i8] c"sock_flow_mutex\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 62, i32 9 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 66, i32 20 }
@___asan_gen_.218 = private unnamed_addr constant [24 x i8] c"flow_limit_update_mutex\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 173, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 179, i32 30 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 119, i32 8 }
@___asan_gen_.234 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 108, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 695, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 723, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"netns_core_table\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 587, i32 25 }
@___asan_gen_.248 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.249 = private constant [30 x i8] c"../net/core/sysctl_net_core.c\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 589, i32 15 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__initcall__kmod_sysctl_net_core__569_664_sysctl_core_init5, ptr @__ksymtab_sysctl_devconf_inherit_init_net, ptr @__ksymtab_sysctl_fb_tunnels_only_for_init_net, ptr @__setup_fb_tunnels_only_for_init_net_sysctl_setup, ptr @proc_dointvec_minmax_bpf_enable._entry, ptr @proc_dointvec_minmax_bpf_enable._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @net_core_table, ptr @sysctl_core_ops, ptr @.str.3, ptr @min_sndbuf, ptr @.str.4, ptr @min_rcvbuf, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @two, ptr @.str.14, ptr @.str.15, ptr @long_one, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @net_msg_warn, ptr @.str.29, ptr @max_skb_frags, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @three, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @int_3600, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @rps_sock_flow_sysctl.sock_flow_mutex, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @flow_limit_update_mutex, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @netns_core_table, ptr @.str.52], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_core_table to i32), i32 1224, i32 1536, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_core_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_sndbuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_rcvbuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @two to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @long_one to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_msg_warn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_skb_frags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @three to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_3600 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_dointvec_minmax_bpf_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rps_sock_flow_sysctl.sock_flow_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_limit_update_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netns_core_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fb_tunnels_only_for_init_net_sysctl_setup(ptr nocapture noundef readonly %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull dereferenceable(7) @.str, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end4.sink.split_crit_edge, label %if.else

entry.if.end4.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.sink.split

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull dereferenceable(5) @.str.1, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else.if.end4.sink.split_crit_edge, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.else.if.end4.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.sink.split

if.end4.sink.split:                               ; preds = %if.else.if.end4.sink.split_crit_edge, %entry.if.end4.sink.split_crit_edge
  %.sink = phi i32 [ 1, %entry.if.end4.sink.split_crit_edge ], [ 2, %if.else.if.end4.sink.split_crit_edge ]
  store i32 %.sink, ptr @sysctl_fb_tunnels_only_for_init_net, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end4.sink.split, %if.else.if.end4_crit_edge
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sysctl_core_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.2, ptr noundef nonnull @net_core_table) #13
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @sysctl_core_ops) #13
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_do_dev_weight(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proc_dointvec(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @weight_p to i32))
  %0 = load i32, ptr @weight_p, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dev_weight_rx_bias to i32))
  %1 = load i32, ptr @dev_weight_rx_bias, align 4
  %mul = mul i32 %1, %0
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @dev_rx_weight to i32))
  store i32 %mul, ptr @dev_rx_weight, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dev_weight_tx_bias to i32))
  %2 = load i32, ptr @dev_weight_tx_bias, align 4
  %mul1 = mul i32 %2, %0
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @dev_tx_weight to i32))
  store i32 %mul1, ptr @dev_tx_weight, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_do_rss_key(ptr nocapture noundef readnone %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #4 align 64 {
entry:
  %fake_table = alloca %struct.ctl_table, align 4
  %buf = alloca [156 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fake_table) #13
  %0 = call ptr @memset(ptr %fake_table, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %buf) #13
  %1 = call ptr @memset(ptr %buf, i32 255, i32 156)
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 156, ptr noundef nonnull @.str.36, i32 noundef 52, ptr noundef nonnull @netdev_rss_key)
  %data = getelementptr inbounds %struct.ctl_table, ptr %fake_table, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %buf, ptr %data, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %fake_table, i32 0, i32 2
  %3 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 156, ptr %maxlen, align 4
  %call2 = call i32 @proc_dostring(ptr noundef nonnull %fake_table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #13
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %buf) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fake_table) #13
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_dointvec_minmax_bpf_enable(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #4 align 64 {
entry:
  %jit_enable = alloca i32, align 4
  %tmp = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jit_enable) #13
  %data = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = ptrtoint ptr %jit_enable to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %jit_enable, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tmp) #13
  %5 = call ptr @memcpy(ptr %tmp, ptr %table, i32 36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %data1 = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 1
  %6 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %jit_enable, ptr %data1, align 4
  %call2 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %tmp, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #13
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool5.not = icmp eq i32 %call2, 0
  %or.cond = select i1 %tobool.not.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %7 = ptrtoint ptr %jit_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %jit_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp slt i32 %8, 2
  br i1 %cmp, label %if.then6.if.then12_crit_edge, label %lor.lhs.false

if.then6.if.then12_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp7 = icmp eq i32 %8, 2
  br i1 %cmp7, label %do.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %9 = call i32 @llvm.read_register.i32(metadata !147) #13
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 99
  %13 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cred, align 16
  %call.i = call zeroext i1 @kallsyms_show_value(ptr noundef %14) #13
  br i1 %call.i, label %do.end.if.then12_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end.if.then12_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

if.then12:                                        ; preds = %do.end.if.then12_crit_edge, %if.then6.if.then12_crit_edge
  %15 = ptrtoint ptr %jit_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %jit_enable, align 4
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %18, align 4
  %20 = load i32, ptr %jit_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp14 = icmp eq i32 %20, 2
  br i1 %cmp14, label %do.end18, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.then12.cleanup_crit_edge, %do.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.end18 ], [ 0, %if.then12.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -1, %do.end.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jit_enable) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_dointvec_minmax_bpf_restricted(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 @proc_dointvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_dolongvec_minmax_bpf_restricted(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 @proc_doulongvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rps_sock_flow_sysctl(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #4 align 64 {
entry:
  %size = alloca i32, align 4
  %tmp = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #13
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %size, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tmp) #13
  %1 = getelementptr inbounds i8, ptr %tmp, i32 12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !157
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %tmp, align 4
  %data = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %size, ptr %data, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 2
  %5 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %maxlen, align 4
  %mode = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 3
  %mode1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 3
  %6 = ptrtoint ptr %mode1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode1, align 4
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %mode, align 4
  %child = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 4
  %9 = call ptr @memset(ptr %child, i32 0, i32 20)
  call void @mutex_lock_nested(ptr noundef nonnull @rps_sock_flow_sysctl.sock_flow_mutex, i32 noundef 0) #13
  %call.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @rps_sock_flow_sysctl.sock_flow_mutex, i32 0, i32 5), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b157 = load i1, ptr @rps_sock_flow_sysctl.__warned, align 1
  br i1 %.b157, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rps_sock_flow_sysctl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 67, ptr noundef nonnull @.str.42) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rps_sock_flow_table to i32))
  %10 = load ptr, ptr @rps_sock_flow_table, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 128
  %add = add i32 %12, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.true ], [ 0, %do.end.cond.end_crit_edge ]
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond, ptr %size, align 4
  %call8 = call i32 @proc_dointvec(ptr noundef nonnull %tmp, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool9.not = icmp eq i32 %write, 0
  br i1 %tobool9.not, label %cond.end.cleanup_crit_edge, label %if.then10

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10:                                        ; preds = %cond.end
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  br i1 %tobool11.not, label %if.then10.if.end85_crit_edge, label %if.then12

if.then10.if.end85_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %15)
  %cmp = icmp ugt i32 %15, 536870912
  br i1 %cmp, label %if.then12.cleanup_crit_edge, label %cond.false36

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.false36:                                     ; preds = %if.then12
  %sub.i158 = add nsw i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i158)
  %tobool.not.i.i.i = icmp eq i32 %sub.i158, 0
  %16 = call i32 @llvm.ctlz.i32(i32 %sub.i158, i1 true) #13, !range !158
  %sub.i.i.i = sub nuw nsw i32 32, %16
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  %17 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shl.i, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %cond)
  %cmp40.not = icmp eq i32 %shl.i, %cond
  br i1 %cmp40.not, label %cond.false36.for.body.preheader_crit_edge, label %if.then42

cond.false36.for.body.preheader_crit_edge:        ; preds = %cond.false36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.preheader

if.then42:                                        ; preds = %cond.false36
  %18 = shl i32 %shl.i, 2
  %19 = add i32 %18, 128
  %call43 = call noalias ptr @vmalloc(i32 noundef %19) #17
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.then42.cleanup_crit_edge, label %if.end81

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end81:                                         ; preds = %if.then42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i162 = add i32 %20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i162)
  %tobool.not.i.i.i163 = icmp eq i32 %sub.i162, 0
  %21 = call i32 @llvm.ctlz.i32(i32 %sub.i162, i1 true) #13, !range !158
  %sub.i.i.i164 = sub nuw nsw i32 32, %21
  %notmask = shl nsw i32 -1, %sub.i.i.i164
  %sub.i.i.op.i165.op = xor i32 %notmask, -1
  %sub78 = select i1 %tobool.not.i.i.i163, i32 0, i32 %sub.i.i.op.i165.op
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rps_cpu_mask to i32))
  store i32 %sub78, ptr @rps_cpu_mask, align 4
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 4
  %sub79 = add i32 %23, -1
  %24 = ptrtoint ptr %call43 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub79, ptr %call43, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp82167.not = icmp eq i32 %23, 0
  br i1 %cmp82167.not, label %if.end81.if.end85_crit_edge, label %if.end81.for.body.preheader_crit_edge

if.end81.for.body.preheader_crit_edge:            ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.preheader

if.end81.if.end85_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

for.body.preheader:                               ; preds = %if.end81.for.body.preheader_crit_edge, %cond.false36.for.body.preheader_crit_edge
  %sock_table.0171 = phi ptr [ %call43, %if.end81.for.body.preheader_crit_edge ], [ %10, %cond.false36.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0168 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.rps_sock_flow_table, ptr %sock_table.0171, i32 0, i32 2, i32 %i.0168
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 65535, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0168, 1
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  %cmp82 = icmp ult i32 %inc, %27
  br i1 %cmp82, label %for.body.for.body_crit_edge, label %for.body.if.end85_crit_edge

for.body.if.end85_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end85:                                         ; preds = %for.body.if.end85_crit_edge, %if.end81.if.end85_crit_edge, %if.then10.if.end85_crit_edge
  %sock_table.1 = phi ptr [ null, %if.then10.if.end85_crit_edge ], [ %call43, %if.end81.if.end85_crit_edge ], [ %sock_table.0171, %for.body.if.end85_crit_edge ]
  %cmp86.not = icmp eq ptr %sock_table.1, %10
  br i1 %cmp86.not, label %if.end85.cleanup_crit_edge, label %do.body89

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body89:                                        ; preds = %if.end85
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !159
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rps_sock_flow_table to i32))
  store volatile ptr %sock_table.1, ptr @rps_sock_flow_table, align 4
  %tobool128.not = icmp eq ptr %sock_table.1, null
  br i1 %tobool128.not, label %do.body89.if.end130_crit_edge, label %if.then129

do.body89.if.end130_crit_edge:                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130

if.then129:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #15
  call void @static_key_slow_inc(ptr noundef nonnull @rps_needed) #13
  call void @static_key_slow_inc(ptr noundef nonnull @rfs_needed) #13
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %do.body89.if.end130_crit_edge
  br i1 %tobool7.not, label %if.end130.cleanup_crit_edge, label %if.then132

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then132:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  call void @static_key_slow_dec(ptr noundef nonnull @rps_needed) #13
  call void @static_key_slow_dec(ptr noundef nonnull @rfs_needed) #13
  call void @synchronize_rcu() #13
  call void @vfree(ptr noundef nonnull %10) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then132, %if.end130.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %if.then42.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then12.cleanup_crit_edge ], [ -12, %if.then42.cleanup_crit_edge ], [ %call8, %if.end85.cleanup_crit_edge ], [ %call8, %if.then132 ], [ %call8, %if.end130.cleanup_crit_edge ], [ %call8, %cond.end.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @rps_sock_flow_sysctl.sock_flow_mutex) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flow_limit_cpu_sysctl(ptr nocapture noundef readnone %table, i32 noundef %write, ptr noundef %buffer, ptr nocapture noundef %lenp, ptr nocapture noundef %ppos) #4 align 64 {
entry:
  %mask = alloca ptr, align 4
  %kbuf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #13
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mask, align 4, !annotation !157
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef nonnull %mask, i32 noundef 3264) #13
  br i1 %call, label %if.end, label %entry.cleanup144_crit_edge

entry.cleanup144_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup144

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.else90, label %if.then1

if.then1:                                         ; preds = %if.end
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call.i188 = call i32 @bitmap_parse(ptr noundef %buffer, i32 noundef -1, ptr noundef %2, i32 noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool3.not = icmp eq i32 %call.i188, 0
  br i1 %tobool3.not, label %if.end5, label %if.then1.done_crit_edge

if.then1.done_crit_edge:                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end5:                                          ; preds = %if.then1
  call void @mutex_lock_nested(ptr noundef nonnull @flow_limit_update_mutex, i32 noundef 0) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @netdev_flow_limit_table_len to i32))
  %4 = load i32, ptr @netdev_flow_limit_table_len, align 4
  %add = add i32 %4, 272
  %call6216 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6216, i32 %5)
  %cmp217 = icmp ult i32 %call6216, %5
  br i1 %cmp217, label %if.end5.do.body_crit_edge, label %if.end5.write_unlock_crit_edge

if.end5.write_unlock_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %write_unlock

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  br label %do.body

do.body:                                          ; preds = %if.end89.do.body_crit_edge, %if.end5.do.body_crit_edge
  %call6218 = phi i32 [ %call6, %if.end89.do.body_crit_edge ], [ %call6216, %if.end5.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call6218
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add8 = add i32 %7, ptrtoint (ptr @softnet_data to i32)
  %8 = inttoptr i32 %add8 to ptr
  %call.i189 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @flow_limit_update_mutex, i32 0, i32 5), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool11.not = icmp eq i32 %call.i189, 0
  br i1 %tobool11.not, label %land.lhs.true, label %do.body.do.end19_crit_edge

do.body.do.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end19

land.lhs.true:                                    ; preds = %do.body
  %call12 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end19_crit_edge, label %land.lhs.true14

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end19

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b187 = load i1, ptr @flow_limit_cpu_sysctl.__warned, align 1
  br i1 %.b187, label %land.lhs.true14.do.end19_crit_edge, label %if.then16

land.lhs.true14.do.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end19

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @flow_limit_cpu_sysctl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 142, ptr noundef nonnull @.str.42) #13
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %land.lhs.true14.do.end19_crit_edge, %land.lhs.true.do.end19_crit_edge, %do.body.do.end19_crit_edge
  %flow_limit = getelementptr inbounds %struct.softnet_data, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %flow_limit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %flow_limit, align 16
  %tobool21.not = icmp eq ptr %10, null
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %call6218)
  %cmp.not.i.i.i190 = icmp ugt i32 %13, %call6218
  br i1 %tobool21.not, label %land.lhs.true40.critedge, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %do.end19
  br i1 %cmp.not.i.i.i190, label %land.lhs.true22.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

land.lhs.true22.cpumask_test_cpu.exit_crit_edge:  ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true22
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !160

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %land.lhs.true22.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %call6218, 5
  %arrayidx.i.i = getelementptr i32, ptr %12, i32 %div3.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %call6218, 31
  %16 = shl nuw i32 1, %and.i.i
  %17 = and i32 %15, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool24.not = icmp eq i32 %17, 0
  br i1 %tobool24.not, label %do.body31, label %cpumask_test_cpu.exit.if.end89_crit_edge

cpumask_test_cpu.exit.if.end89_crit_edge:         ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

do.body31:                                        ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %flow_limit to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr null, ptr %flow_limit, align 16
  call void @synchronize_rcu() #13
  call void @kfree(ptr noundef nonnull %10) #13
  br label %if.end89

land.lhs.true40.critedge:                         ; preds = %do.end19
  br i1 %cmp.not.i.i.i190, label %land.lhs.true40.critedge.cpumask_test_cpu.exit199_crit_edge, label %land.rhs.i.i.i192

land.lhs.true40.critedge.cpumask_test_cpu.exit199_crit_edge: ; preds = %land.lhs.true40.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_test_cpu.exit199

land.rhs.i.i.i192:                                ; preds = %land.lhs.true40.critedge
  %.b37.i.i.i191 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i191, label %land.rhs.i.i.i192.cpumask_test_cpu.exit199_crit_edge, label %if.then.i.i.i193, !prof !160

land.rhs.i.i.i192.cpumask_test_cpu.exit199_crit_edge: ; preds = %land.rhs.i.i.i192
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_test_cpu.exit199

if.then.i.i.i193:                                 ; preds = %land.rhs.i.i.i192
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_test_cpu.exit199

cpumask_test_cpu.exit199:                         ; preds = %if.then.i.i.i193, %land.rhs.i.i.i192.cpumask_test_cpu.exit199_crit_edge, %land.lhs.true40.critedge.cpumask_test_cpu.exit199_crit_edge
  %div3.i.i194 = lshr i32 %call6218, 5
  %arrayidx.i.i195 = getelementptr i32, ptr %12, i32 %div3.i.i194
  %19 = ptrtoint ptr %arrayidx.i.i195 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx.i.i195, align 4
  %and.i.i196 = and i32 %call6218, 31
  %21 = shl nuw i32 1, %and.i.i196
  %22 = and i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool42.not = icmp eq i32 %22, 0
  br i1 %tobool42.not, label %cpumask_test_cpu.exit199.if.end89_crit_edge, label %if.end5.i.i

cpumask_test_cpu.exit199.if.end89_crit_edge:      ; preds = %cpumask_test_cpu.exit199
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.end5.i.i:                                      ; preds = %cpumask_test_cpu.exit199
  %call.i1.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #17
  %tobool45.not = icmp eq ptr %call.i1.i.i, null
  br i1 %tobool45.not, label %if.end5.i.i.write_unlock_crit_edge, label %if.end47

if.end5.i.i.write_unlock_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %write_unlock

if.end47:                                         ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @netdev_flow_limit_table_len to i32))
  %23 = load i32, ptr @netdev_flow_limit_table_len, align 4
  %num_buckets = getelementptr inbounds %struct.sd_flow_limit, ptr %call.i1.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %num_buckets to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %num_buckets, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !161
  %25 = ptrtoint ptr %flow_limit to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call.i1.i.i, ptr %flow_limit, align 16
  br label %if.end89

if.end89:                                         ; preds = %if.end47, %cpumask_test_cpu.exit199.if.end89_crit_edge, %do.body31, %cpumask_test_cpu.exit.if.end89_crit_edge
  %call6 = call i32 @cpumask_next(i32 noundef %call6218, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call6, %26
  br i1 %cmp, label %if.end89.do.body_crit_edge, label %if.end89.write_unlock_crit_edge

if.end89.write_unlock_crit_edge:                  ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %write_unlock

if.end89.do.body_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

write_unlock:                                     ; preds = %if.end89.write_unlock_crit_edge, %if.end5.i.i.write_unlock_crit_edge, %if.end5.write_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.end5.write_unlock_crit_edge ], [ -12, %if.end5.i.i.write_unlock_crit_edge ], [ 0, %if.end89.write_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @flow_limit_update_mutex) #13
  br label %done

if.else90:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %kbuf) #13
  %27 = call ptr @memset(ptr %kbuf, i32 255, i32 128)
  %28 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool91.not = icmp eq i64 %29, 0
  br i1 %tobool91.not, label %lor.lhs.false, label %if.else90.if.then93_crit_edge

if.else90.if.then93_crit_edge:                    ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then93

lor.lhs.false:                                    ; preds = %if.else90
  %30 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lenp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool92.not = icmp eq i32 %31, 0
  br i1 %tobool92.not, label %lor.lhs.false.if.then93_crit_edge, label %if.end94

lor.lhs.false.if.then93_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then93

if.then93:                                        ; preds = %lor.lhs.false.if.then93_crit_edge, %if.else90.if.then93_crit_edge
  %32 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %lenp, align 4
  br label %cleanup

if.end94:                                         ; preds = %lor.lhs.false
  %33 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %35 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %35, 31
  %36 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %36, 536870908
  %37 = call ptr @memset(ptr %34, i32 0, i32 %mul.i.i)
  %38 = call i32 @llvm.read_register.i32(metadata !147) #13
  %and.i.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %41, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !162
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end94.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end94.rcu_read_lock.exit_crit_edge:            ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end94
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 696, ptr noundef nonnull @.str.50) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end94.rcu_read_lock.exit_crit_edge
  %call96220 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %42 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call96220, i32 %42)
  %cmp97221 = icmp ult i32 %call96220, %42
  br i1 %cmp97221, label %rcu_read_lock.exit.do.body99_crit_edge, label %rcu_read_lock.exit.for.end129_crit_edge

rcu_read_lock.exit.for.end129_crit_edge:          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end129

rcu_read_lock.exit.do.body99_crit_edge:           ; preds = %rcu_read_lock.exit
  br label %do.body99

do.body99:                                        ; preds = %if.end128.do.body99_crit_edge, %rcu_read_lock.exit.do.body99_crit_edge
  %call96222 = phi i32 [ %call96, %if.end128.do.body99_crit_edge ], [ %call96220, %rcu_read_lock.exit.do.body99_crit_edge ]
  %arrayidx106 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call96222
  %43 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx106, align 4
  %add107 = add i32 %44, ptrtoint (ptr @softnet_data to i32)
  %45 = inttoptr i32 %add107 to ptr
  %flow_limit112 = getelementptr inbounds %struct.softnet_data, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %flow_limit112 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %flow_limit112, align 16
  %call114 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %land.lhs.true116, label %do.body99.do.end124_crit_edge

do.body99.do.end124_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end124

land.lhs.true116:                                 ; preds = %do.body99
  %call117 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %land.lhs.true116.do.end124_crit_edge, label %land.lhs.true119

land.lhs.true116.do.end124_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end124

land.lhs.true119:                                 ; preds = %land.lhs.true116
  %.b185186 = load i1, ptr @flow_limit_cpu_sysctl.__warned.43, align 1
  br i1 %.b185186, label %land.lhs.true119.do.end124_crit_edge, label %if.then121

land.lhs.true119.do.end124_crit_edge:             ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end124

if.then121:                                       ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @flow_limit_cpu_sysctl.__warned.43, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 173, ptr noundef nonnull @.str.44) #13
  br label %do.end124

do.end124:                                        ; preds = %if.then121, %land.lhs.true119.do.end124_crit_edge, %land.lhs.true116.do.end124_crit_edge, %do.body99.do.end124_crit_edge
  %tobool126.not = icmp eq ptr %47, null
  br i1 %tobool126.not, label %do.end124.if.end128_crit_edge, label %if.then127

do.end124.if.end128_crit_edge:                    ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end128

if.then127:                                       ; preds = %do.end124
  %48 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %50 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %call96222)
  %cmp.not.i.i.i200 = icmp ugt i32 %50, %call96222
  br i1 %cmp.not.i.i.i200, label %if.then127.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i202

if.then127.cpumask_set_cpu.exit_crit_edge:        ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i202:                                ; preds = %if.then127
  %.b37.i.i.i201 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i201, label %land.rhs.i.i.i202.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i203, !prof !160

land.rhs.i.i.i202.cpumask_set_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i202
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_set_cpu.exit

if.then.i.i.i203:                                 ; preds = %land.rhs.i.i.i202
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i203, %land.rhs.i.i.i202.cpumask_set_cpu.exit_crit_edge, %if.then127.cpumask_set_cpu.exit_crit_edge
  call void @_set_bit(i32 noundef %call96222, ptr noundef %49) #13
  br label %if.end128

if.end128:                                        ; preds = %cpumask_set_cpu.exit, %do.end124.if.end128_crit_edge
  %call96 = call i32 @cpumask_next(i32 noundef %call96222, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %51 = load i32, ptr @nr_cpu_ids, align 4
  %cmp97 = icmp ult i32 %call96, %51
  br i1 %cmp97, label %if.end128.do.body99_crit_edge, label %if.end128.for.end129_crit_edge

if.end128.for.end129_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end129

if.end128.do.body99_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body99

for.end129:                                       ; preds = %if.end128.for.end129_crit_edge, %rcu_read_lock.exit.for.end129_crit_edge
  %call.i204 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i204, label %for.end129.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i207

for.end129.rcu_read_unlock.exit_crit_edge:        ; preds = %for.end129
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i207:                               ; preds = %for.end129
  %call1.i205 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i205)
  %tobool.not.i206 = icmp eq i32 %call1.i205, 0
  br i1 %tobool.not.i206, label %land.lhs.true.i207.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i209

land.lhs.true.i207.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i207
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i209:                              ; preds = %land.lhs.true.i207
  %.b4.i208 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i208, label %land.lhs.true2.i209.rcu_read_unlock.exit_crit_edge, label %if.then.i210

land.lhs.true2.i209.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i209
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i210:                                     ; preds = %land.lhs.true2.i209
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 724, ptr noundef nonnull @.str.51) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i210, %land.lhs.true2.i209.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i207.rcu_read_unlock.exit_crit_edge, %for.end129.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !163
  %52 = call i32 @llvm.read_register.i32(metadata !147) #13
  %and.i.i.i.i.i211 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i211 to ptr
  %preempt_count.i.i.i.i212 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i212 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i212, align 4
  %sub.i.i.i = add i32 %55, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i212, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %56 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %lenp, align 4
  %58 = call i32 @llvm.umin.i32(i32 %57, i32 127)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %59 = load i32, ptr @nr_cpu_ids, align 4
  %60 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mask, align 4
  %call133 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %kbuf, i32 noundef %58, ptr noundef nonnull @.str.45, i32 noundef %59, ptr noundef %61) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then135, label %if.end136

if.then135:                                       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %lenp, align 4
  br label %cleanup

if.end136:                                        ; preds = %rcu_read_unlock.exit
  %63 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %lenp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call133, i32 %64)
  %cmp137 = icmp ult i32 %call133, %64
  br i1 %cmp137, label %if.then138, label %if.end136.if.end140_crit_edge

if.end136.if.end140_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end140

if.then138:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add nuw i32 %call133, 1
  %arrayidx139 = getelementptr [128 x i8], ptr %kbuf, i32 0, i32 %call133
  %65 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 10, ptr %arrayidx139, align 1
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.end136.if.end140_crit_edge
  %len.0 = phi i32 [ %inc, %if.then138 ], [ %call133, %if.end136.if.end140_crit_edge ]
  %66 = call ptr @memcpy(ptr %buffer, ptr %kbuf, i32 %len.0)
  %67 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %len.0, ptr %lenp, align 4
  %conv = sext i32 %len.0 to i64
  %68 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %ppos, align 8
  %add142 = add i64 %69, %conv
  store i64 %add142, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end140, %if.then135, %if.then93
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %kbuf) #13
  br label %done

done:                                             ; preds = %cleanup, %write_unlock, %if.then1.done_crit_edge
  %ret.1 = phi i32 [ %call.i188, %if.then1.done_crit_edge ], [ %ret.0, %write_unlock ], [ 0, %cleanup ]
  %70 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mask, align 4
  call void @free_cpumask_var(ptr noundef %71) #13
  br label %cleanup144

cleanup144:                                       ; preds = %done, %entry.cleanup144_crit_edge
  %retval.0 = phi i32 [ %ret.1, %done ], [ -12, %entry.cleanup144_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flow_limit_table_len_sysctl(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @flow_limit_update_mutex, i32 noundef 0) #13
  %data = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call = tail call i32 @proc_dointvec(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool1.not = icmp eq i32 %write, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #13, !range !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ -22, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %land.lhs.true2.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @flow_limit_update_mutex) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_default_qdisc(ptr nocapture noundef readnone %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #4 align 64 {
entry:
  %id = alloca [16 x i8], align 1
  %tbl = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %id) #13
  %0 = call ptr @memset(ptr %id, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tbl) #13
  %1 = call ptr @memset(ptr %tbl, i32 0, i32 36)
  %data = getelementptr inbounds %struct.ctl_table, ptr %tbl, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %id, ptr %data, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %tbl, i32 0, i32 2
  %3 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16, ptr %maxlen, align 4
  call void @qdisc_get_default(ptr noundef nonnull %id, i32 noundef 16) #13
  %call = call i32 @proc_dostring(ptr noundef nonnull %tbl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp ne i32 %write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = call i32 @qdisc_set_default(ptr noundef nonnull %id) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then ], [ %call, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tbl) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %id) #13
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_do_static_key(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kallsyms_show_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_inc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_dec(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @alloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_get_default(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qdisc_set_default(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysctl_core_net_init(ptr noundef %net) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @kmemdup(ptr noundef nonnull @netns_core_table, i32 noundef 72, i32 noundef 3264) #13
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %sysctl_somaxconn = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 29, i32 1
  %data = getelementptr inbounds %struct.ctl_table, ptr %call1, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %sysctl_somaxconn, ptr %data, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %1 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %user_ns, align 4
  %cmp3.not = icmp eq ptr %2, @init_user_ns
  br i1 %cmp3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call1, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  %tbl.0 = phi ptr [ @netns_core_table, %entry.if.end7_crit_edge ], [ %call1, %if.then4 ], [ %call1, %if.end.if.end7_crit_edge ]
  %call8 = tail call ptr @register_net_sysctl(ptr noundef %net, ptr noundef nonnull @.str.2, ptr noundef nonnull %tbl.0) #13
  %core9 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 29
  %4 = ptrtoint ptr %core9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %core9, align 8
  %cmp12 = icmp eq ptr %call8, null
  br i1 %cmp12, label %err_reg, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_reg:                                          ; preds = %if.end7
  %cmp15.not = icmp eq ptr %tbl.0, @netns_core_table
  br i1 %cmp15.not, label %err_reg.cleanup_crit_edge, label %if.then16

err_reg.cleanup_crit_edge:                        ; preds = %err_reg
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then16:                                        ; preds = %err_reg
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %tbl.0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %err_reg.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7.cleanup_crit_edge ], [ -12, %err_reg.cleanup_crit_edge ], [ -12, %if.then16 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysctl_core_net_exit(ptr nocapture noundef readonly %net) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 29
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %ctl_table_arg = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctl_table_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_table_arg, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %1) #13
  %cmp = icmp eq ptr %3, @netns_core_table
  br i1 %cmp, label %do.body4, label %do.end9, !prof !164

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/sysctl_net_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 649, 0\0A.popsection", ""() #13, !srcloc !165
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !98, !99, !100, !101, !103, !105, !107, !108, !109, !111, !112, !114, !116, !117, !119, !121, !122, !123, !125, !126, !128, !129, !130, !132, !133, !135, !137, !139, !141, !143, !145}
!llvm.named.register.sp = !{!147}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @sysctl_fb_tunnels_only_for_init_net, !1, !"sysctl_fb_tunnels_only_for_init_net", i1 false, i1 false}
!1 = !{!"../net/core/sysctl_net_core.c", i32 37, i32 5}
!2 = !{ptr @__ksymtab_sysctl_fb_tunnels_only_for_init_net, !3, !"__ksymtab_sysctl_fb_tunnels_only_for_init_net", i1 false, i1 false}
!3 = !{!"../net/core/sysctl_net_core.c", i32 38, i32 1}
!4 = !{ptr @__ksymtab_sysctl_devconf_inherit_init_net, !5, !"__ksymtab_sysctl_devconf_inherit_init_net", i1 false, i1 false}
!5 = !{!"../net/core/sysctl_net_core.c", i32 48, i32 1}
!6 = !{ptr @__setup_fb_tunnels_only_for_init_net_sysctl_setup, !7, !"__setup_fb_tunnels_only_for_init_net_sysctl_setup", i1 false, i1 false}
!7 = !{!"../net/core/sysctl_net_core.c", i32 610, i32 1}
!8 = !{ptr @__initcall__kmod_sysctl_net_core__569_664_sysctl_core_init5, !9, !"__initcall__kmod_sysctl_net_core__569_664_sysctl_core_init5", i1 false, i1 false}
!9 = !{!"../net/core/sysctl_net_core.c", i32 664, i32 1}
!10 = !{ptr @sysctl_devconf_inherit_init_net, !11, !"sysctl_devconf_inherit_init_net", i1 false, i1 false}
!11 = !{!"../net/core/sysctl_net_core.c", i32 47, i32 5}
!12 = !{ptr @__setup_str_fb_tunnels_only_for_init_net_sysctl_setup, !7, !"__setup_str_fb_tunnels_only_for_init_net_sysctl_setup", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/core/sysctl_net_core.c", i32 602, i32 20}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/core/sysctl_net_core.c", i32 605, i32 25}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/core/sysctl_net_core.c", i32 660, i32 33}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/core/sysctl_net_core.c", i32 315, i32 15}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/core/sysctl_net_core.c", i32 323, i32 15}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/core/sysctl_net_core.c", i32 331, i32 15}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/core/sysctl_net_core.c", i32 339, i32 15}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/core/sysctl_net_core.c", i32 347, i32 15}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/core/sysctl_net_core.c", i32 354, i32 15}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/core/sysctl_net_core.c", i32 361, i32 15}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/core/sysctl_net_core.c", i32 368, i32 15}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/core/sysctl_net_core.c", i32 375, i32 15}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/core/sysctl_net_core.c", i32 383, i32 15}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/core/sysctl_net_core.c", i32 398, i32 15}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/core/sysctl_net_core.c", i32 407, i32 15}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/core/sysctl_net_core.c", i32 417, i32 15}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/core/sysctl_net_core.c", i32 427, i32 15}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/core/sysctl_net_core.c", i32 434, i32 15}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/core/sysctl_net_core.c", i32 441, i32 15}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/core/sysctl_net_core.c", i32 448, i32 15}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/core/sysctl_net_core.c", i32 455, i32 15}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/core/sysctl_net_core.c", i32 465, i32 15}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/core/sysctl_net_core.c", i32 473, i32 15}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/core/sysctl_net_core.c", i32 478, i32 15}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/core/sysctl_net_core.c", i32 487, i32 15}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/core/sysctl_net_core.c", i32 495, i32 15}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/core/sysctl_net_core.c", i32 505, i32 15}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/core/sysctl_net_core.c", i32 512, i32 15}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/core/sysctl_net_core.c", i32 519, i32 15}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/core/sysctl_net_core.c", i32 526, i32 15}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/core/sysctl_net_core.c", i32 535, i32 15}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/core/sysctl_net_core.c", i32 543, i32 15}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/core/sysctl_net_core.c", i32 552, i32 15}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/core/sysctl_net_core.c", i32 561, i32 15}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/core/sysctl_net_core.c", i32 568, i32 15}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/core/sysctl_net_core.c", i32 576, i32 15}
!85 = !{ptr @net_core_table, !86, !"net_core_table", i1 false, i1 false}
!86 = !{!"../net/core/sysctl_net_core.c", i32 313, i32 25}
!87 = !{ptr @min_sndbuf, !88, !"min_sndbuf", i1 false, i1 false}
!88 = !{!"../net/core/sysctl_net_core.c", i32 29, i32 12}
!89 = !{ptr @min_rcvbuf, !90, !"min_rcvbuf", i1 false, i1 false}
!90 = !{!"../net/core/sysctl_net_core.c", i32 30, i32 12}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/core/sysctl_net_core.c", i32 258, i32 29}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../net/core/sysctl_net_core.c", i32 279, i32 43}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/core/sysctl_net_core.c", i32 282, i32 5}
!97 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @proc_dointvec_minmax_bpf_enable._entry, !96, !"_entry", i1 false, i1 false}
!100 = !{ptr @proc_dointvec_minmax_bpf_enable._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @two, !102, !"two", i1 false, i1 false}
!102 = !{!"../net/core/sysctl_net_core.c", i32 26, i32 12}
!103 = !{ptr @long_one, !104, !"long_one", i1 false, i1 false}
!104 = !{!"../net/core/sysctl_net_core.c", i32 32, i32 13}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/core/sysctl_net_core.c", i32 62, i32 9}
!107 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @rps_sock_flow_sysctl.sock_flow_mutex, !106, !"sock_flow_mutex", i1 false, i1 false}
!109 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!110 = !{!"../net/core/sysctl_net_core.c", i32 66, i32 20}
!111 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!112 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!113 = !{!"../net/core/sysctl_net_core.c", i32 141, i32 10}
!114 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!115 = !{!"../net/core/sysctl_net_core.c", i32 173, i32 8}
!116 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/core/sysctl_net_core.c", i32 179, i32 30}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/core/sysctl_net_core.c", i32 119, i32 8}
!121 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @flow_limit_update_mutex, !120, !"flow_limit_update_mutex", i1 false, i1 false}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!125 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!126 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!127 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!128 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!130 = distinct !{null, !131, !"__warned", i1 false, i1 false}
!131 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!132 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @net_msg_warn, !134, !"net_msg_warn", i1 false, i1 false}
!134 = !{!"../net/core/sysctl_net_core.c", i32 35, i32 12}
!135 = !{ptr @max_skb_frags, !136, !"max_skb_frags", i1 false, i1 false}
!136 = !{!"../net/core/sysctl_net_core.c", i32 31, i32 12}
!137 = !{ptr @three, !138, !"three", i1 false, i1 false}
!138 = !{!"../net/core/sysctl_net_core.c", i32 27, i32 12}
!139 = !{ptr @int_3600, !140, !"int_3600", i1 false, i1 false}
!140 = !{!"../net/core/sysctl_net_core.c", i32 28, i32 12}
!141 = !{ptr @sysctl_core_ops, !142, !"sysctl_core_ops", i1 false, i1 false}
!142 = !{!"../net/core/sysctl_net_core.c", i32 653, i32 48}
!143 = !{ptr @.str.52, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../net/core/sysctl_net_core.c", i32 589, i32 15}
!145 = !{ptr @netns_core_table, !146, !"netns_core_table", i1 false, i1 false}
!146 = !{!"../net/core/sysctl_net_core.c", i32 587, i32 25}
!147 = !{!"sp"}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{!"auto-init"}
!158 = !{i32 0, i32 33}
!159 = !{i64 2158295485}
!160 = !{!"branch_weights", i32 2000, i32 1}
!161 = !{i64 2158309503}
!162 = !{i64 2149732803}
!163 = !{i64 2149733069}
!164 = !{!"branch_weights", i32 1, i32 2000}
!165 = !{i64 2158323794, i64 2158324285, i64 2158323831, i64 2158323887, i64 2158323921, i64 2158323945, i64 2158323986, i64 2158324007, i64 2158324035, i64 2158324069}
