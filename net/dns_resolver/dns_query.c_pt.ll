; ModuleID = '/llk/IR_all_yes/net/dns_resolver/dns_query.c_pt.bc'
source_filename = "../net/dns_resolver/dns_query.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dns_query\22, \22a\22\09"
module asm "\09.weak\09__crc_dns_query\09\09\09\09"
module asm "\09.long\09__crc_dns_query\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dns_query:\09\09\09\09\09"
module asm "\09.asciz \09\22dns_query\22\09\09\09\09\09"
module asm "__kstrtabns_dns_query:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.74, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.50 }
%struct.llist_node = type { ptr }
%union.anon.50 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.52 }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.74 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.2, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.26, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.26 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.27, i32, %struct.spinlock }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, ptr }
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
%struct.key = type { %struct.refcount_struct, i32, %union.anon.29, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.30, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.31, %union.anon.99, ptr }
%union.anon.29 = type { %struct.rb_node }
%union.anon.30 = type { i64 }
%union.anon.31 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.32, ptr, ptr, ptr }
%union.anon.32 = type { i32 }
%union.anon.99 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.user_key_payload = type { %struct.callback_head, i16, [6 x i8], [0 x i8] }

@dns_resolver_debug = external dso_local local_unnamed_addr global i32, align 4
@dns_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017[%-6.6s] ==> %s(%s,%*.*s,%zu,%s)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dns_query\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"net/dns_resolver/dns_query.c\00", [35 x i8] zeroinitializer }, align 32
@dns_query._entry_ptr = internal global ptr @dns_query._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@dns_query._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017[%-6.6s] call request_key(,%s,%s)\0A\00", [59 x i8] zeroinitializer }, align 32
@dns_query._entry_ptr.6 = internal global ptr @dns_query._entry.4, section ".printk_index", align 4
@dns_resolver_cache = external dso_local local_unnamed_addr global ptr, align 4
@key_type_dns_resolver = external dso_local global %struct.key_type, align 4
@dns_query._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017[%-6.6s] <== %s() = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dns_query._entry_ptr.9 = internal global ptr @dns_query._entry.7, section ".printk_index", align 4
@__kstrtab_dns_query = external dso_local constant [0 x i8], align 1
@__kstrtabns_dns_query = external dso_local constant [0 x i8], align 1
@__ksymtab_dns_query = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dns_query to i32), ptr @__kstrtab_dns_query, ptr @__kstrtabns_dns_query }, section "___ksymtab+dns_query", align 4
@user_key_payload_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/keys/user-type.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 86, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 121, i32 13 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 122, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private constant [32 x i8] c"../net/dns_resolver/dns_query.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 169, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [28 x i8] c"../include/keys/user-type.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 53, i32 36 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_dns_query, ptr @dns_query._entry, ptr @dns_query._entry.4, ptr @dns_query._entry.7, ptr @dns_query._entry_ptr, ptr @dns_query._entry_ptr.6, ptr @dns_query._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_query._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_query._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dns_query(ptr nocapture noundef readonly %net, ptr noundef %type, ptr noundef %name, i32 noundef %namelen, ptr noundef %options, ptr noundef writeonly %_result, ptr noundef writeonly %_expiry, i1 noundef zeroext %invalidate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dns_resolver_debug to i32))
  %0 = load i32, ptr @dns_resolver_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !32

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, ptr noundef %type, i32 noundef %namelen, i32 noundef %namelen, ptr noundef %name, i32 noundef %namelen, ptr noundef %options) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %tobool7.not = icmp eq ptr %name, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %namelen)
  %cmp = icmp eq i32 %namelen, 0
  %or.cond = or i1 %tobool7.not, %cmp
  br i1 %or.cond, label %do.end6.cleanup_crit_edge, label %if.end9

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %do.end6
  %tobool10.not = icmp eq ptr %type, null
  br i1 %tobool10.not, label %if.end9.if.end17_crit_edge, label %if.then11

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then11:                                        ; preds = %if.end9
  %call12 = tail call i32 @strlen(ptr noundef nonnull %type) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then11.cleanup_crit_edge, label %if.end15

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %call12, 1
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.end9.if.end17_crit_edge
  %typelen.0 = phi i32 [ %call12, %if.end15 ], [ 0, %if.end9.if.end17_crit_edge ]
  %desclen.0 = phi i32 [ %add, %if.end15 ], [ 0, %if.end9.if.end17_crit_edge ]
  %5 = add i32 %namelen, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -253, i32 %5)
  %6 = icmp ult i32 %5, -253
  br i1 %6, label %if.end17.cleanup_crit_edge, label %if.end8.i

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i:                                        ; preds = %if.end17
  %add23 = add i32 %desclen.0, %namelen
  %add24 = add i32 %add23, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add24, i32 noundef 3264) #12
  %tobool26.not = icmp eq ptr %call9.i, null
  br i1 %tobool26.not, label %if.end8.i.cleanup_crit_edge, label %if.end28

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end8.i
  br i1 %tobool10.not, label %if.end28.if.end31_crit_edge, label %if.then30

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %7 = call ptr @memcpy(ptr %call9.i, ptr %type, i32 %typelen.0)
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %typelen.0
  %incdec.ptr = getelementptr i8, ptr %add.ptr, i32 1
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 58, ptr %add.ptr, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28.if.end31_crit_edge
  %cp.0 = phi ptr [ %incdec.ptr, %if.then30 ], [ %call9.i, %if.end28.if.end31_crit_edge ]
  %9 = call ptr @memcpy(ptr %cp.0, ptr %name, i32 %namelen)
  %add.ptr32 = getelementptr i8, ptr %cp.0, i32 %namelen
  %10 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %add.ptr32, align 1
  %tobool33.not = icmp eq ptr %options, null
  %spec.store.select = select i1 %tobool33.not, ptr @.str.3, ptr %options
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dns_resolver_debug to i32))
  %11 = load i32, ptr @dns_resolver_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool37.not = icmp eq i32 %11, 0
  br i1 %tobool37.not, label %if.end31.do.end56_crit_edge, label %do.end47, !prof !32

if.end31.do.end56_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

do.end47:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %12 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i167 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i167 to ptr
  %task50 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task50 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task50, align 8
  %comm51 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %comm51, ptr noundef nonnull %call9.i, ptr noundef %spec.store.select) #10
  br label %do.end56

do.end56:                                         ; preds = %do.end47, %if.end31.do.end56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dns_resolver_cache to i32))
  %16 = load ptr, ptr @dns_resolver_cache, align 4
  %call57 = tail call ptr @override_creds(ptr noundef %16) #7
  %key_domain = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 10
  %17 = ptrtoint ptr %key_domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %key_domain, align 128
  %call58 = tail call ptr @request_key_tag(ptr noundef nonnull @key_type_dns_resolver, ptr noundef nonnull %call9.i, ptr noundef %18, ptr noundef %spec.store.select) #7
  tail call void @revert_creds(ptr noundef %call57) #7
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  %cmp.i168 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %if.then60, label %if.end62

if.then60:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call58 to i32
  br label %do.body87

if.end62:                                         ; preds = %do.end56
  %sem = getelementptr inbounds %struct.key, ptr %call58, i32 0, i32 4
  tail call void @down_read(ptr noundef %sem) #7
  %flags = getelementptr inbounds %struct.key, ptr %call58, i32 0, i32 15
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #7
  %perm = getelementptr inbounds %struct.key, ptr %call58, i32 0, i32 11
  %20 = ptrtoint ptr %perm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %perm, align 8
  %or = or i32 %21, 65536
  store i32 %or, ptr %perm, align 8
  %call63 = tail call i32 @key_validate(ptr noundef %call58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end62.put_crit_edge, label %if.end66

if.end62.put_crit_edge:                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %put

if.end66:                                         ; preds = %if.end62
  %arrayidx = getelementptr %struct.key, ptr %call58, i32 0, i32 17, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %24 = ptrtoint ptr %23 to i32
  %tobool68.not = icmp eq ptr %23, null
  br i1 %tobool68.not, label %if.end70, label %if.end66.put_crit_edge

if.end66.put_crit_edge:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %put

if.end70:                                         ; preds = %if.end66
  %call71 = tail call fastcc ptr @user_key_payload_locked(ptr noundef %call58)
  %datalen = getelementptr inbounds %struct.user_key_payload, ptr %call71, i32 0, i32 1
  %25 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %datalen, align 8
  %conv = zext i16 %26 to i32
  %tobool72.not = icmp eq ptr %_result, null
  br i1 %tobool72.not, label %if.end70.if.end79_crit_edge, label %if.then73

if.end70.if.end79_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then73:                                        ; preds = %if.end70
  %data = getelementptr inbounds %struct.user_key_payload, ptr %call71, i32 0, i32 3
  %call75 = tail call ptr @kmemdup_nul(ptr noundef %data, i32 noundef %conv, i32 noundef 3264) #7
  %27 = ptrtoint ptr %_result to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call75, ptr %_result, align 4
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %if.then73.put_crit_edge, label %if.then73.if.end79_crit_edge

if.then73.if.end79_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then73.put_crit_edge:                          ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %put

if.end79:                                         ; preds = %if.then73.if.end79_crit_edge, %if.end70.if.end79_crit_edge
  %tobool80.not = icmp eq ptr %_expiry, null
  br i1 %tobool80.not, label %if.end79.put_crit_edge, label %if.then81

if.end79.put_crit_edge:                           ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %put

if.then81:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %28 = getelementptr inbounds %struct.key, ptr %call58, i32 0, i32 7
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %28, align 8
  %31 = ptrtoint ptr %_expiry to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %_expiry, align 8
  br label %put

put:                                              ; preds = %if.then81, %if.end79.put_crit_edge, %if.then73.put_crit_edge, %if.end66.put_crit_edge, %if.end62.put_crit_edge
  %ret.0 = phi i32 [ %call63, %if.end62.put_crit_edge ], [ %24, %if.end66.put_crit_edge ], [ -12, %if.then73.put_crit_edge ], [ %conv, %if.then81 ], [ %conv, %if.end79.put_crit_edge ]
  tail call void @up_read(ptr noundef %sem) #7
  br i1 %invalidate, label %if.then85, label %put.if.end86_crit_edge

put.if.end86_crit_edge:                           ; preds = %put
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then85:                                        ; preds = %put
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @key_invalidate(ptr noundef %call58) #7
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %put.if.end86_crit_edge
  tail call void @key_put(ptr noundef %call58) #7
  br label %do.body87

do.body87:                                        ; preds = %if.end86, %if.then60
  %ret.1 = phi i32 [ %19, %if.then60 ], [ %ret.0, %if.end86 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dns_resolver_debug to i32))
  %32 = load i32, ptr @dns_resolver_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool88.not = icmp eq i32 %32, 0
  br i1 %tobool88.not, label %do.body87.cleanup_crit_edge, label %do.end98, !prof !32

do.body87.cleanup_crit_edge:                      ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end98:                                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #9
  %33 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i169 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i169 to ptr
  %task101 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task101 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task101, align 8
  %comm102 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 101
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm102, ptr noundef nonnull @.str.1, i32 noundef %ret.1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end98, %do.body87.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end6.cleanup_crit_edge ], [ -22, %if.then11.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ %ret.1, %do.end98 ], [ %ret.1, %do.body87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_validate(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @user_key_payload_locked(ptr noundef %key) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %sem = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #7
  %0 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 0
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b6 = load i1, ptr @user_key_payload_locked.__warned, align 1
  br i1 %.b6, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @user_key_payload_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 53, ptr noundef nonnull @.str.11) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %2 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_invalidate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !16, !18, !20, !21}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/dns_resolver/dns_query.c", i32 86, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dns_query._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dns_query._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/dns_resolver/dns_query.c", i32 121, i32 13}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/dns_resolver/dns_query.c", i32 122, i32 2}
!10 = !{ptr @dns_query._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @dns_query._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/dns_resolver/dns_query.c", i32 169, i32 2}
!14 = !{ptr @dns_query._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @dns_query._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_dns_query, !17, !"__ksymtab_dns_query", i1 false, i1 false}
!17 = !{!"../net/dns_resolver/dns_query.c", i32 172, i32 1}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/keys/user-type.h", i32 53, i32 36}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{!"sp"}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 2000, i32 1}
