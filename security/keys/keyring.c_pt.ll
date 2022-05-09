; ModuleID = '/llk/IR_all_yes/security/keys/keyring.c_pt.bc'
source_filename = "../security/keys/keyring.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+key_type_keyring\22, \22a\22\09"
module asm "\09.weak\09__crc_key_type_keyring\09\09\09\09"
module asm "\09.long\09__crc_key_type_keyring\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_type_keyring:\09\09\09\09\09"
module asm "\09.asciz \09\22key_type_keyring\22\09\09\09\09\09"
module asm "__kstrtabns_key_type_keyring:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+keyring_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_keyring_alloc\09\09\09\09"
module asm "\09.long\09__crc_keyring_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_keyring_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22keyring_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_keyring_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+keyring_search\22, \22a\22\09"
module asm "\09.weak\09__crc_keyring_search\09\09\09\09"
module asm "\09.long\09__crc_keyring_search\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_keyring_search:\09\09\09\09\09"
module asm "\09.asciz \09\22keyring_search\22\09\09\09\09\09"
module asm "__kstrtabns_keyring_search:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+keyring_restrict\22, \22a\22\09"
module asm "\09.weak\09__crc_keyring_restrict\09\09\09\09"
module asm "\09.long\09__crc_keyring_restrict\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_keyring_restrict:\09\09\09\09\09"
module asm "\09.asciz \09\22keyring_restrict\22\09\09\09\09\09"
module asm "__kstrtabns_keyring_restrict:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+key_link\22, \22a\22\09"
module asm "\09.weak\09__crc_key_link\09\09\09\09"
module asm "\09.long\09__crc_key_link\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_link:\09\09\09\09\09"
module asm "\09.asciz \09\22key_link\22\09\09\09\09\09"
module asm "__kstrtabns_key_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+key_unlink\22, \22a\22\09"
module asm "\09.weak\09__crc_key_unlink\09\09\09\09"
module asm "\09.long\09__crc_key_unlink\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22key_unlink\22\09\09\09\09\09"
module asm "__kstrtabns_key_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+key_move\22, \22a\22\09"
module asm "\09.weak\09__crc_key_move\09\09\09\09"
module asm "\09.long\09__crc_key_move\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_move:\09\09\09\09\09"
module asm "\09.asciz \09\22key_move\22\09\09\09\09\09"
module asm "__kstrtabns_key_move:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+keyring_clear\22, \22a\22\09"
module asm "\09.weak\09__crc_keyring_clear\09\09\09\09"
module asm "\09.long\09__crc_keyring_clear\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_keyring_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22keyring_clear\22\09\09\09\09\09"
module asm "__kstrtabns_keyring_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.4 }
%union.anon.4 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.assoc_array_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.23, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%union.key_payload = type { [4 x ptr] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.0, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.94, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.95, %union.anon.100, ptr }
%union.anon.0 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.94 = type { i64 }
%union.anon.95 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.96, ptr, ptr, ptr }
%union.anon.96 = type { i32 }
%union.anon.100 = type { %union.key_payload }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.66, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15 }
%struct.llist_node = type { ptr }
%union.anon.15 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.66 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.22 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.22 = type { %struct.callback_head }
%struct.key_restriction = type { ptr, ptr, ptr }
%struct.keyring_read_iterator_context = type { i32, i32, ptr }
%struct.anon.97 = type { [2 x i8], i16 }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.47, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.47 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.48, i32, %struct.spinlock }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.key_match_data = type { ptr, ptr, ptr, i32 }
%struct.keyring_search_context = type { %struct.keyring_index_key, ptr, %struct.key_match_data, i32, ptr, i32, i8, ptr, i64 }
%struct.anon.108 = type { ptr, ptr, i32 }
%struct.assoc_array_shortcut = type { ptr, i32, i32, ptr, [0 x i32] }
%struct.assoc_array_node = type { ptr, i8, [16 x ptr], i32 }
%struct.key_notification = type { %struct.watch_notification, i32, i32 }
%struct.watch_notification = type { i32, i32 }
%struct.key_user = type { %struct.rb_node, %struct.mutex, %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.kuid_t, i32, i32 }
%struct.assoc_array_edit = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [1 x ptr], ptr, [16 x ptr], ptr, ptr, i32, [2 x %struct.anon.106], [1 x %struct.anon.107], [17 x i8] }
%struct.anon.106 = type { ptr, ptr }
%struct.anon.107 = type { ptr, i8 }

@keyring_name_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"keyring\00", [24 x i8] zeroinitializer }, align 32
@key_type_keyring = dso_local global { %struct.key_type, [36 x i8] } { %struct.key_type { ptr @.str, i32 0, i32 0, ptr null, ptr @keyring_preparse, ptr @keyring_free_preparse, ptr @keyring_instantiate, ptr null, ptr null, ptr null, ptr @keyring_revoke, ptr @keyring_destroy, ptr @keyring_describe, ptr @keyring_read, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_key_type_keyring = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_type_keyring = external dso_local constant [0 x i8], align 1
@__ksymtab_key_type_keyring = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_type_keyring to i32), ptr @__kstrtab_key_type_keyring, ptr @__kstrtabns_key_type_keyring }, section "___ksymtab+key_type_keyring", align 4
@key_set_index_key.default_domain_tag = internal global { %struct.key_tag, [16 x i8] } { %struct.key_tag { %struct.callback_head zeroinitializer, %struct.refcount_struct { %struct.atomic_t { i32 1 } }, i8 0 }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_keyring_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_keyring_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_keyring_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @keyring_alloc to i32), ptr @__kstrtab_keyring_alloc, ptr @__kstrtabns_keyring_alloc }, section "___ksymtab+keyring_alloc", align 4
@__kstrtab_keyring_search = external dso_local constant [0 x i8], align 1
@__kstrtabns_keyring_search = external dso_local constant [0 x i8], align 1
@__ksymtab_keyring_search = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @keyring_search to i32), ptr @__kstrtab_keyring_search, ptr @__kstrtabns_keyring_search }, section "___ksymtab+keyring_search", align 4
@keyring_serialise_restrict_sem = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @keyring_serialise_restrict_sem, i64 56), ptr getelementptr (i8, ptr @keyring_serialise_restrict_sem, i64 56) }, ptr @keyring_serialise_restrict_sem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_keyring_restrict = external dso_local constant [0 x i8], align 1
@__kstrtabns_keyring_restrict = external dso_local constant [0 x i8], align 1
@__ksymtab_keyring_restrict = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @keyring_restrict to i32), ptr @__kstrtab_keyring_restrict, ptr @__kstrtabns_keyring_restrict }, section "___ksymtab+keyring_restrict", align 4
@keyring_assoc_array_ops = internal constant { %struct.assoc_array_ops, [44 x i8] } { %struct.assoc_array_ops { ptr @keyring_get_key_chunk, ptr @keyring_get_object_key_chunk, ptr @keyring_compare_object, ptr @keyring_diff_objects, ptr @keyring_free_object }, [44 x i8] zeroinitializer }, align 32
@keyring_serialise_link_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @keyring_serialise_link_lock, i64 52), ptr getelementptr (i8, ptr @keyring_serialise_link_lock, i64 52) }, ptr @keyring_serialise_link_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_key_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_link = external dso_local constant [0 x i8], align 1
@__ksymtab_key_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_link to i32), ptr @__kstrtab_key_link, ptr @__kstrtabns_key_link }, section "___ksymtab+key_link", align 4
@__kstrtab_key_unlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_unlink = external dso_local constant [0 x i8], align 1
@__ksymtab_key_unlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_unlink to i32), ptr @__kstrtab_key_unlink, ptr @__kstrtabns_key_unlink }, section "___ksymtab+key_unlink", align 4
@__kstrtab_key_move = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_move = external dso_local constant [0 x i8], align 1
@__ksymtab_key_move = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_move to i32), ptr @__kstrtab_key_move, ptr @__kstrtabns_key_move }, section "___ksymtab+key_move", align 4
@__kstrtab_keyring_clear = external dso_local constant [0 x i8], align 1
@__kstrtabns_keyring_clear = external dso_local constant [0 x i8], align 1
@__ksymtab_keyring_clear = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @keyring_clear to i32), ptr @__kstrtab_keyring_clear, ptr @__kstrtabns_keyring_clear }, section "___ksymtab+keyring_clear", align 4
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"keyring_name_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[anon]\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c": %lu\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c": empty\00", [24 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"keyring_serialise_restrict_sem.wait_lock\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"keyring_serialise_restrict_sem\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"keyring_serialise_link_lock.wait_lock\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"keyring_serialise_link_lock\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 46]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"keyring_name_lock\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 85, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"key_type_keyring\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 84, i32 17 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"default_domain_tag\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 216, i32 24 }
@___asan_gen_.28 = private unnamed_addr constant [31 x i8] c"keyring_serialise_restrict_sem\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [24 x i8] c"keyring_assoc_array_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 395, i32 37 }
@___asan_gen_.34 = private unnamed_addr constant [28 x i8] c"keyring_serialise_link_lock\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 52, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 442, i32 15 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 446, i32 18 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 448, i32 16 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 695, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 723, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 991, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [27 x i8] c"../security/keys/keyring.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 101, i32 8 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab_key_link, ptr @__ksymtab_key_move, ptr @__ksymtab_key_type_keyring, ptr @__ksymtab_key_unlink, ptr @__ksymtab_keyring_alloc, ptr @__ksymtab_keyring_clear, ptr @__ksymtab_keyring_restrict, ptr @__ksymtab_keyring_search, ptr @keyring_name_lock, ptr @.str, ptr @key_type_keyring, ptr @key_set_index_key.default_domain_tag, ptr @keyring_serialise_restrict_sem, ptr @keyring_assoc_array_ops, ptr @keyring_serialise_link_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyring_name_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_type_keyring to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_set_index_key.default_domain_tag to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyring_serialise_restrict_sem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyring_assoc_array_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyring_serialise_link_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @key_free_user_ns(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock(ptr noundef nonnull @keyring_name_lock) #19
  %keyring_name_list = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %keyring_name_list) #19
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %keyring_name_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %keyring_name_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %keyring_name_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %keyring_name_list, ptr %keyring_name_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %keyring_name_list, ptr %prev.i3.i, align 4
  tail call void @_raw_write_unlock(ptr noundef nonnull @keyring_name_lock) #19
  %user_keyring_register = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 11
  %8 = ptrtoint ptr %user_keyring_register to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_keyring_register, align 4
  tail call void @key_put(ptr noundef %9) #19
  %persistent_keyring_register = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 13
  %10 = ptrtoint ptr %persistent_keyring_register to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %persistent_keyring_register, align 4
  tail call void @key_put(ptr noundef %11) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @keyring_preparse(ptr nocapture noundef readonly %prep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %datalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %0 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %cond = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @keyring_free_preparse(ptr nocapture noundef %prep) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keyring_instantiate(ptr noundef %keyring, ptr nocapture noundef readnone %prep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %keys = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 17, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %keys to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %keys, align 4
  %nr_leaves_on_tree.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 17, i32 0, i32 0, i32 3
  %1 = ptrtoint ptr %nr_leaves_on_tree.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %nr_leaves_on_tree.i, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !58) #19
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns.i, align 4
  %description.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 16, i32 0, i32 4
  %10 = ptrtoint ptr %description.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %description.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.keyring_publish_name.exit_crit_edge, label %land.lhs.true.i

entry.keyring_publish_name.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %keyring_publish_name.exit

land.lhs.true.i:                                  ; preds = %entry
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %if.then.i [
    i8 0, label %land.lhs.true.i.keyring_publish_name.exit_crit_edge
    i8 46, label %land.lhs.true.i.keyring_publish_name.exit_crit_edge2
  ]

land.lhs.true.i.keyring_publish_name.exit_crit_edge2: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %keyring_publish_name.exit

land.lhs.true.i.keyring_publish_name.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %keyring_publish_name.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  tail call void @_raw_write_lock(ptr noundef nonnull @keyring_name_lock) #19
  %15 = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 17
  %keyring_name_list.i = getelementptr inbounds %struct.user_namespace, ptr %9, i32 0, i32 10
  %prev.i.i = getelementptr inbounds %struct.user_namespace, ptr %9, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %15, ptr noundef %17, ptr noundef %keyring_name_list.i) #19
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_add_tail.exit.i_crit_edge

if.then.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %keyring_name_list.i, ptr %15, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 17, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %15, ptr %17, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_write_unlock(ptr noundef nonnull @keyring_name_lock) #19
  br label %keyring_publish_name.exit

keyring_publish_name.exit:                        ; preds = %list_add_tail.exit.i, %land.lhs.true.i.keyring_publish_name.exit_crit_edge, %land.lhs.true.i.keyring_publish_name.exit_crit_edge2, %entry.keyring_publish_name.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyring_revoke(ptr noundef %keyring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %keys = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 17, i32 0, i32 0, i32 2
  %call = tail call ptr @assoc_array_clear(ptr noundef %keys, ptr noundef nonnull @keyring_assoc_array_ops) #19
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @assoc_array_apply_edit(ptr noundef nonnull %call) #19
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %call3 = tail call i32 @key_payload_reserve(ptr noundef %keyring, i32 noundef 0) #19
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyring_destroy(ptr noundef %keyring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %description = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 16, i32 0, i32 4
  %0 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %description, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

if.then:                                          ; preds = %entry
  tail call void @_raw_write_lock(ptr noundef nonnull @keyring_name_lock) #19
  %2 = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %2, align 4
  %cmp.i.not = icmp eq ptr %6, %2
  br i1 %cmp.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then3:                                         ; preds = %land.lhs.true
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #19
  br i1 %call.i.i, label %if.end.i.i, label %if.then3.list_del.exit_crit_edge

if.then3.list_del.exit_crit_edge:                 ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 17, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then3.list_del.exit_crit_edge
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 17, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  tail call void @_raw_write_unlock(ptr noundef nonnull @keyring_name_lock) #19
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %restrict_link = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 18
  %15 = ptrtoint ptr %restrict_link to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %restrict_link, align 4
  %tobool6.not = icmp eq ptr %16, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  %key = getelementptr inbounds %struct.key_restriction, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %key, align 4
  tail call void @key_put(ptr noundef %18) #19
  tail call void @kfree(ptr noundef nonnull %16) #19
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %keys = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 17, i32 0, i32 0, i32 2
  tail call void @assoc_array_destroy(ptr noundef %keys, ptr noundef nonnull @keyring_assoc_array_ops) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyring_describe(ptr noundef %keyring, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %description = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 16, i32 0, i32 4
  %0 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %description, align 8
  %tobool.not = icmp eq ptr %1, null
  %.str.2. = select i1 %tobool.not, ptr @.str.2, ptr %1
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.2.) #19
  %state.i.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 14
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load volatile i16, ptr %state.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.i = icmp eq i16 %3, 1
  br i1 %cmp.i, label %if.then2, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.then2:                                         ; preds = %entry
  %nr_leaves_on_tree = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 17, i32 0, i32 0, i32 3
  %4 = ptrtoint ptr %nr_leaves_on_tree to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_leaves_on_tree, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.else6, label %if.then3

if.then3:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %5) #19
  br label %if.end8

if.else6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.4) #19
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.then3, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keyring_read(ptr noundef %keyring, ptr noundef %buffer, i32 noundef %buflen) #0 align 64 {
entry:
  %ctx = alloca %struct.keyring_read_iterator_context, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ctx) #19
  %0 = getelementptr inbounds %struct.keyring_read_iterator_context, ptr %ctx, i32 0, i32 1
  %1 = getelementptr inbounds %struct.keyring_read_iterator_context, ptr %ctx, i32 0, i32 2
  %and = and i32 %buflen, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %buffer, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %tobool2.not = icmp eq i32 %buflen, 0
  %or.cond = or i1 %tobool1.not, %tobool2.not
  br i1 %or.cond, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %buffer, ptr %1, align 4
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %buflen, ptr %ctx, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %0, align 4
  %keys = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 17, i32 0, i32 0, i32 2
  %call = call i32 @assoc_array_iterate(ptr noundef %keys, ptr noundef nonnull @keyring_read_iterator, ptr noundef nonnull %ctx) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then3.cleanup_crit_edge, label %if.then3.if.end9_crit_edge

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end9

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end9:                                          ; preds = %if.then3.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %nr_leaves_on_tree = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 17, i32 0, i32 0, i32 3
  %5 = ptrtoint ptr %nr_leaves_on_tree to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_leaves_on_tree, align 4
  %mul = shl i32 %6, 2
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ctx) #19
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @key_set_index_key(ptr nocapture noundef %index_key) local_unnamed_addr #4 align 64 {
entry:
  %piece.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 1
  %desc_len = getelementptr inbounds %struct.anon.97, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %desc_len to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %desc_len, align 2
  %3 = tail call i16 @llvm.umin.i16(i16 %2, i16 2)
  %cond = zext i16 %3 to i32
  %description = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 4
  %4 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %description, align 4
  %6 = call ptr @memcpy(ptr %0, ptr %5, i32 %cond)
  %domain_tag = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 3
  %7 = ptrtoint ptr %domain_tag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %domain_tag, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 2
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %type, align 4
  %flags = getelementptr inbounds %struct.key_type, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.if.end6.sink.split_crit_edge, label %if.then3

if.then.if.end6.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6.sink.split

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #19
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 110
  %17 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net_ns, align 4
  %key_domain = getelementptr inbounds %struct.net, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %key_domain to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %key_domain, align 128
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.then3, %if.then.if.end6.sink.split_crit_edge
  %.sink = phi ptr [ %22, %if.then3 ], [ @key_set_index_key.default_domain_tag, %if.then.if.end6.sink.split_crit_edge ]
  %23 = ptrtoint ptr %domain_tag to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %.sink, ptr %domain_tag, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %entry.if.end6_crit_edge
  %24 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %description, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %piece.i)
  %26 = ptrtoint ptr %desc_len to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %desc_len, align 2
  %conv.i = zext i16 %27 to i32
  %type3.i = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 2
  %28 = ptrtoint ptr %type3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %type3.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %conv4.i = zext i32 %30 to i64
  %add.i = add nuw nsw i32 %conv.i, 13
  %conv2.i.i = zext i32 %add.i to i64
  %mul6.i.i = mul nuw nsw i64 %conv4.i, %conv2.i.i
  %shr.i67.i = lshr i64 %mul6.i.i, 32
  %conv4.i69.i = and i64 %mul6.i.i, 4294967295
  %mul6.i70.i = mul nuw nsw i64 %conv4.i69.i, 9207
  %shl.i71.i = mul nuw nsw i64 %shr.i67.i, 39543763894272
  %add.i72.i = add nuw nsw i64 %shl.i71.i, %mul6.i70.i
  %31 = ptrtoint ptr %domain_tag to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %domain_tag, align 4
  %33 = ptrtoint ptr %32 to i32
  %shr.i75.i = lshr i64 %add.i72.i, 32
  %conv2.i76.i = zext i32 %33 to i64
  %mul.i77.i = mul nuw nsw i64 %shr.i75.i, %conv2.i76.i
  %conv4.i78.i = and i64 %add.i72.i, 4294967295
  %mul6.i79.i = mul nuw i64 %conv4.i78.i, %conv2.i76.i
  %shl.i80.i = shl i64 %mul.i77.i, 32
  %add.i81.i = add i64 %shl.i80.i, %mul6.i79.i
  %shr9.i82.i = lshr i64 %mul.i77.i, 32
  %add12.i83.i = add i64 %add.i81.i, %shr9.i82.i
  %shr.i84.i = lshr i64 %add12.i83.i, 32
  %mul.i85.i = mul nuw nsw i64 %shr.i84.i, 9207
  %conv4.i86.i = and i64 %add12.i83.i, 4294967295
  %mul6.i87.i = mul nuw nsw i64 %conv4.i86.i, 9207
  %shl.i88.i = mul i64 %shr.i84.i, 39543763894272
  %add.i89.i = add i64 %shl.i88.i, %mul6.i87.i
  %shr9.i90.i = lshr i64 %mul.i85.i, 32
  %add12.i91.i = add i64 %add.i89.i, %shr9.i90.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp109.i = icmp eq i16 %27, 0
  br i1 %cmp109.i, label %if.end6.for.end.i_crit_edge, label %if.end6.if.end.i_crit_edge

if.end6.if.end.i_crit_edge:                       ; preds = %if.end6
  br label %if.end.i

if.end6.for.end.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.end6.if.end.i_crit_edge
  %desc_len.0112.i = phi i32 [ %sub.i, %if.end.i.if.end.i_crit_edge ], [ %conv.i, %if.end6.if.end.i_crit_edge ]
  %acc.0111.i = phi i64 [ %add12.i108.i, %if.end.i.if.end.i_crit_edge ], [ %add12.i91.i, %if.end6.if.end.i_crit_edge ]
  %description.0110.i = phi ptr [ %add.ptr.i, %if.end.i.if.end.i_crit_edge ], [ %25, %if.end6.if.end.i_crit_edge ]
  %34 = tail call i32 @llvm.smin.i32(i32 %desc_len.0112.i, i32 4) #19
  %35 = ptrtoint ptr %piece.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %piece.i, align 4
  %36 = call ptr @memcpy(ptr %piece.i, ptr %description.0110.i, i32 %34)
  %add.ptr.i = getelementptr i8, ptr %description.0110.i, i32 %34
  %sub.i = sub i32 %desc_len.0112.i, %34
  %piece.i.0.piece.i.0.piece.0.piece.0.piece.0.51.i = load i32, ptr %piece.i, align 4
  %shr.i92.i = lshr i64 %acc.0111.i, 32
  %conv2.i93.i = zext i32 %piece.i.0.piece.i.0.piece.0.piece.0.piece.0.51.i to i64
  %mul.i94.i = mul nuw i64 %shr.i92.i, %conv2.i93.i
  %conv4.i95.i = and i64 %acc.0111.i, 4294967295
  %mul6.i96.i = mul nuw i64 %conv4.i95.i, %conv2.i93.i
  %shl.i97.i = shl i64 %mul.i94.i, 32
  %add.i98.i = add i64 %shl.i97.i, %mul6.i96.i
  %shr9.i99.i = lshr i64 %mul.i94.i, 32
  %add12.i100.i = add i64 %add.i98.i, %shr9.i99.i
  %shr.i101.i = lshr i64 %add12.i100.i, 32
  %mul.i102.i = mul nuw nsw i64 %shr.i101.i, 9207
  %conv4.i103.i = and i64 %add12.i100.i, 4294967295
  %mul6.i104.i = mul nuw nsw i64 %conv4.i103.i, 9207
  %shl.i105.i = mul i64 %shr.i101.i, 39543763894272
  %add.i106.i = add i64 %shl.i105.i, %mul6.i104.i
  %shr9.i107.i = lshr i64 %mul.i102.i, 32
  %add12.i108.i = add i64 %add.i106.i, %shr9.i107.i
  %cmp.i = icmp slt i32 %sub.i, 1
  br i1 %cmp.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %if.end6.for.end.i_crit_edge
  %acc.0.lcssa.i = phi i64 [ %add12.i91.i, %if.end6.for.end.i_crit_edge ], [ %add12.i108.i, %if.end.i.for.end.i_crit_edge ]
  %shr.i = lshr i64 %acc.0.lcssa.i, 32
  %xor.i = xor i64 %shr.i, %acc.0.lcssa.i
  %conv17.i = trunc i64 %xor.i to i32
  %cmp19.not.i = icmp ne ptr %29, @key_type_keyring
  %and.i16 = and i32 %conv17.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16)
  %cmp21.i = icmp eq i32 %and.i16, 0
  %or.cond.i = select i1 %cmp19.not.i, i1 %cmp21.i, i1 false
  br i1 %or.cond.i, label %if.then23.i, label %if.else.i

if.then23.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %shr24.i = lshr i32 %conv17.i, 28
  %or.i = or i32 %shr24.i, %conv17.i
  %or25.i = or i32 %or.i, 1
  br label %hash_key_type_and_desc.exit

if.else.i:                                        ; preds = %for.end.i
  %or.cond66.i = select i1 %cmp19.not.i, i1 true, i1 %cmp21.i
  br i1 %or.cond66.i, label %if.else.i.hash_key_type_and_desc.exit_crit_edge, label %if.then33.i

if.else.i.hash_key_type_and_desc.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %hash_key_type_and_desc.exit

if.then33.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  %add34.i = mul i32 %conv17.i, 17
  %and35.i = and i32 %add34.i, -16
  br label %hash_key_type_and_desc.exit

hash_key_type_and_desc.exit:                      ; preds = %if.then33.i, %if.else.i.hash_key_type_and_desc.exit_crit_edge, %if.then23.i
  %hash.0.i = phi i32 [ %or25.i, %if.then23.i ], [ %and35.i, %if.then33.i ], [ %conv17.i, %if.else.i.hash_key_type_and_desc.exit_crit_edge ]
  %37 = ptrtoint ptr %index_key to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %hash.0.i, ptr %index_key, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %piece.i)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @key_put_tag(ptr noundef %tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %usage = getelementptr inbounds %struct.key_tag, ptr %tag, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #19
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #19, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %refcount_dec_and_test.exit, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !71

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef 3) #19
  br label %return

refcount_dec_and_test.exit:                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !72
  %tobool.not.not = icmp eq ptr %tag, null
  br i1 %tobool.not.not, label %refcount_dec_and_test.exit.return_crit_edge, label %do.end

refcount_dec_and_test.exit.return_crit_edge:      ; preds = %refcount_dec_and_test.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

do.end:                                           ; preds = %refcount_dec_and_test.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @kvfree_call_rcu(ptr noundef nonnull %tag, ptr noundef null) #19
  br label %return

return:                                           ; preds = %do.end, %refcount_dec_and_test.exit.return_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret i1 %cmp.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @key_remove_domain(ptr noundef %domain_tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %removed = getelementptr inbounds %struct.key_tag, ptr %domain_tag, i32 0, i32 2
  %0 = ptrtoint ptr %removed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %removed, align 4
  %usage.i = getelementptr inbounds %struct.key_tag, ptr %domain_tag, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #19
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #19, !srcloc !70
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %refcount_dec_and_test.exit.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.then_crit_edge, label %if.then10.i.i.i.i, !prof !71

if.end5.i.i.i.i.if.then_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #19
  br label %if.then

refcount_dec_and_test.exit.i:                     ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !72
  %tobool.not.not.i = icmp eq ptr %domain_tag, null
  br i1 %tobool.not.not.i, label %refcount_dec_and_test.exit.i.if.end_crit_edge, label %do.end.i

refcount_dec_and_test.exit.i.if.end_crit_edge:    ; preds = %refcount_dec_and_test.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

do.end.i:                                         ; preds = %refcount_dec_and_test.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @kvfree_call_rcu(ptr noundef nonnull %domain_tag, ptr noundef null) #19
  br label %if.end

if.then:                                          ; preds = %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.then_crit_edge
  tail call void @key_schedule_gc_links() #19
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.i, %refcount_dec_and_test.exit.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_schedule_gc_links() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @keyring_alloc(ptr noundef %description, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce, ptr noundef %cred, i32 noundef %perm, i32 noundef %flags, ptr noundef %restrict_link, ptr noundef %dest) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @key_alloc(ptr noundef nonnull @key_type_keyring, ptr noundef %description, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce, ptr noundef %cred, i32 noundef %perm, i32 noundef %flags, ptr noundef %restrict_link) #19
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.then:                                          ; preds = %entry
  %call5 = tail call i32 @key_instantiate_and_link(ptr noundef %call, ptr noundef null, i32 noundef 0, ptr noundef %dest, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @key_put(ptr noundef %call) #19
  %0 = inttoptr i32 %call5 to ptr
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %keyring.0 = phi ptr [ %call, %entry.if.end8_crit_edge ], [ %0, %if.then6 ], [ %call, %if.then.if.end8_crit_edge ]
  ret ptr %keyring.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_alloc(ptr noundef, ptr noundef, [1 x i32], [1 x i32], ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_instantiate_and_link(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @restrict_link_reject(ptr nocapture readnone %keyring, ptr nocapture readnone %type, ptr nocapture readnone %payload, ptr nocapture readnone %restriction_key) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @key_default_cmp(ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %match_data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %description = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 4
  %0 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %description, align 8
  %raw_data = getelementptr inbounds %struct.key_match_data, ptr %match_data, i32 0, i32 1
  %2 = ptrtoint ptr %raw_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %raw_data, align 4
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef %3) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @keyring_search_rcu(ptr noundef %keyring_ref, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %iterator = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %iterator to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @keyring_search_iterator, ptr %iterator, align 4
  %1 = ptrtoint ptr %keyring_ref to i32
  %possessed = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 6
  %2 = trunc i32 %1 to i8
  %3 = and i8 %2, 1
  %4 = ptrtoint ptr %possessed to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %possessed, align 4
  %result = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 7
  %5 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -11 to ptr), ptr %result, align 8
  %and.i32 = and i32 %1, -2
  %6 = inttoptr i32 %and.i32 to ptr
  %type = getelementptr inbounds %struct.key, ptr %6, i32 0, i32 16, i32 0, i32 2
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type, align 8
  %cmp.not = icmp eq ptr %8, @key_type_keyring
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then4, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %cred = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 1
  %11 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred, align 4
  %call5 = tail call i32 @key_task_permission(ptr noundef %keyring_ref, ptr noundef %12, i32 noundef 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.then4.if.end10_crit_edge

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #21
  %13 = inttoptr i32 %call5 to ptr
  br label %cleanup

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %call11 = tail call i64 @ktime_get_real_seconds() #19
  %now = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 8
  %14 = ptrtoint ptr %now to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call11, ptr %now, align 8
  %call12 = tail call fastcc zeroext i1 @search_nested_keyrings(ptr noundef %6, ptr noundef %ctx)
  br i1 %call12, label %if.then13, label %if.end10.if.end17_crit_edge

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

if.then13:                                        ; preds = %if.end10
  %15 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %result, align 8
  %17 = ptrtoint ptr %16 to i32
  %and.i33 = and i32 %17, -2
  %18 = inttoptr i32 %and.i33 to ptr
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #19
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #19, !srcloc !73
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then13.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !74

if.then13.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then13
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %20 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end17_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !71

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end17_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then13.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then13.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef %.sink.i.i.i.i) #19
  br label %if.end17

if.end17:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %21 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %result, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %22, %if.end17 ], [ %13, %if.then7 ], [ inttoptr (i32 -20 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keyring_search_iterator(ptr noundef %object, ptr noundef %iterator_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  %and.i = and i32 %0, -4
  %1 = inttoptr i32 %and.i to ptr
  %flags = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %state5 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %state5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load volatile i16, ptr %state5, align 8
  %type = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type, align 8
  %type7 = getelementptr inbounds %struct.keyring_index_key, ptr %iterator_data, i32 0, i32 2
  %8 = ptrtoint ptr %type7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type7, align 8
  %cmp.not = icmp eq ptr %7, %9
  br i1 %cmp.not, label %if.end, label %entry.cleanup71_crit_edge

entry.cleanup71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup71

if.end:                                           ; preds = %entry
  %flags9 = getelementptr inbounds %struct.keyring_search_context, ptr %iterator_data, i32 0, i32 3
  %10 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags9, align 8
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end33_crit_edge, label %if.then10

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end33

if.then10:                                        ; preds = %if.end
  %12 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load volatile i64, ptr %12, align 8
  %and15 = and i32 %3, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end20, label %if.then10.skipped.sink.split_crit_edge

if.then10.skipped.sink.split_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #21
  br label %skipped.sink.split

if.end20:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool21.not = icmp eq i64 %14, 0
  br i1 %tobool21.not, label %if.end20.if.end33_crit_edge, label %land.lhs.true

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end20
  %now = getelementptr inbounds %struct.keyring_search_context, ptr %iterator_data, i32 0, i32 8
  %15 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %now, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %14)
  %cmp22.not = icmp slt i64 %16, %14
  br i1 %cmp22.not, label %land.lhs.true.if.end33_crit_edge, label %if.then23

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end33

if.then23:                                        ; preds = %land.lhs.true
  %and25 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.then23.skipped.sink.split_crit_edge, label %if.then23.skipped_crit_edge

if.then23.skipped_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #21
  br label %skipped

if.then23.skipped.sink.split_crit_edge:           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #21
  br label %skipped.sink.split

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %if.end20.if.end33_crit_edge, %if.end.if.end33_crit_edge
  %match_data = getelementptr inbounds %struct.keyring_search_context, ptr %iterator_data, i32 0, i32 2
  %17 = ptrtoint ptr %match_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %match_data, align 8
  %call36 = tail call zeroext i1 %18(ptr noundef %1, ptr noundef %match_data) #19
  br i1 %call36, label %if.end39, label %if.end33.cleanup71_crit_edge

if.end33.cleanup71_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup71

if.end39:                                         ; preds = %if.end33
  %19 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags9, align 8
  %and41 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %land.lhs.true43, label %if.end39.if.end52_crit_edge

if.end39.if.end52_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end52

land.lhs.true43:                                  ; preds = %if.end39
  %possessed = getelementptr inbounds %struct.keyring_search_context, ptr %iterator_data, i32 0, i32 6
  %21 = ptrtoint ptr %possessed to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %possessed, align 4, !range !75
  %23 = zext i8 %22 to i32
  %or.i = or i32 %and.i, %23
  %24 = inttoptr i32 %or.i to ptr
  %cred = getelementptr inbounds %struct.keyring_search_context, ptr %iterator_data, i32 0, i32 1
  %25 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cred, align 4
  %call46 = tail call i32 @key_task_permission(ptr noundef %24, ptr noundef %26, i32 noundef 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %land.lhs.true43.skipped.sink.split_crit_edge, label %land.lhs.true43.if.end52_crit_edge

land.lhs.true43.if.end52_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end52

land.lhs.true43.skipped.sink.split_crit_edge:     ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #21
  br label %skipped.sink.split

if.end52:                                         ; preds = %land.lhs.true43.if.end52_crit_edge, %if.end39.if.end52_crit_edge
  %27 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags9, align 8
  %and54 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp ne i32 %and54, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp57 = icmp slt i16 %5, 0
  %or.cond = select i1 %tobool55.not, i1 %cmp57, i1 false
  br i1 %or.cond, label %if.then59, label %if.end65

if.then59:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #21
  %conv = sext i16 %5 to i32
  %29 = inttoptr i32 %conv to ptr
  br label %skipped.sink.split

if.end65:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #21
  %possessed66 = getelementptr inbounds %struct.keyring_search_context, ptr %iterator_data, i32 0, i32 6
  %30 = ptrtoint ptr %possessed66 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %possessed66, align 4, !range !75
  %32 = zext i8 %31 to i32
  %or.i101 = or i32 %and.i, %32
  %33 = inttoptr i32 %or.i101 to ptr
  %result69 = getelementptr inbounds %struct.keyring_search_context, ptr %iterator_data, i32 0, i32 7
  %34 = ptrtoint ptr %result69 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %result69, align 8
  br label %cleanup71

skipped.sink.split:                               ; preds = %if.then59, %land.lhs.true43.skipped.sink.split_crit_edge, %if.then23.skipped.sink.split_crit_edge, %if.then10.skipped.sink.split_crit_edge
  %.sink = phi ptr [ %29, %if.then59 ], [ inttoptr (i32 -128 to ptr), %if.then10.skipped.sink.split_crit_edge ], [ inttoptr (i32 -127 to ptr), %if.then23.skipped.sink.split_crit_edge ], [ inttoptr (i32 -13 to ptr), %land.lhs.true43.skipped.sink.split_crit_edge ]
  %result29 = getelementptr inbounds %struct.keyring_search_context, ptr %iterator_data, i32 0, i32 7
  %35 = ptrtoint ptr %result29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %.sink, ptr %result29, align 8
  br label %skipped

skipped:                                          ; preds = %skipped.sink.split, %if.then23.skipped_crit_edge
  %skipped_ret = getelementptr inbounds %struct.keyring_search_context, ptr %iterator_data, i32 0, i32 5
  %36 = ptrtoint ptr %skipped_ret to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %skipped_ret, align 8
  br label %cleanup71

cleanup71:                                        ; preds = %skipped, %if.end65, %if.end33.cleanup71_crit_edge, %entry.cleanup71_crit_edge
  %retval.0 = phi i32 [ %37, %skipped ], [ 1, %if.end65 ], [ 0, %entry.cleanup71_crit_edge ], [ 0, %if.end33.cleanup71_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_task_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @search_nested_keyrings(ptr noundef %keyring, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  %stack = alloca [6 x %struct.anon.108], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %stack) #19
  %0 = call ptr @memset(ptr %stack, i32 255, i32 72)
  %flags = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 3
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %and, label %do.end10 [
    i32 3, label %entry.do.body5_crit_edge
    i32 0, label %entry.do.body5_crit_edge428
  ]

entry.do.body5_crit_edge428:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body5

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body5

do.body5:                                         ; preds = %entry.do.body5_crit_edge, %entry.do.body5_crit_edge428
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 685, 0\0A.popsection", ""() #19, !srcloc !76
  unreachable

do.end10:                                         ; preds = %entry
  %description = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 4
  %4 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %description, align 8
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %do.end10.if.end14_crit_edge, label %if.then12

do.end10.if.end14_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end14

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @key_set_index_key(ptr noundef %ctx)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end10.if.end14_crit_edge
  %lookup_type = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %lookup_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lookup_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp15 = icmp eq i32 %7, 1
  %.pre = ptrtoint ptr %keyring to i32
  br i1 %cmp15, label %if.end14.if.then17_crit_edge, label %lor.lhs.false

if.end14.if.then17_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end14
  %and.i.i = and i32 %.pre, -4
  %8 = inttoptr i32 %and.i.i to ptr
  %type.i = getelementptr inbounds %struct.key, ptr %8, i32 0, i32 16, i32 0, i32 2
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %type.i, align 8
  %type1.i = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 2
  %11 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type1.i, align 4
  %cmp.i = icmp eq ptr %10, %12
  br i1 %cmp.i, label %land.lhs.true.i, label %lor.lhs.false.if.end21_crit_edge

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end21

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %domain_tag.i = getelementptr inbounds %struct.key, ptr %8, i32 0, i32 16, i32 0, i32 3
  %13 = ptrtoint ptr %domain_tag.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %domain_tag.i, align 4
  %domain_tag2.i = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 3
  %15 = ptrtoint ptr %domain_tag2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %domain_tag2.i, align 4
  %cmp3.i = icmp eq ptr %14, %16
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.end21_crit_edge

land.lhs.true.i.if.end21_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end21

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %17 = getelementptr inbounds %struct.key, ptr %8, i32 0, i32 16, i32 0, i32 1
  %desc_len.i = getelementptr inbounds %struct.anon.97, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %desc_len.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %desc_len.i, align 2
  %20 = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 1
  %desc_len5.i = getelementptr inbounds %struct.anon.97, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %desc_len5.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %desc_len5.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %22)
  %cmp7.i = icmp eq i16 %19, %22
  br i1 %cmp7.i, label %keyring_compare_object.exit, label %land.lhs.true4.i.if.end21_crit_edge

land.lhs.true4.i.if.end21_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end21

keyring_compare_object.exit:                      ; preds = %land.lhs.true4.i
  %conv6.i = zext i16 %19 to i32
  %description.i = getelementptr inbounds %struct.key, ptr %8, i32 0, i32 16, i32 0, i32 4
  %23 = ptrtoint ptr %description.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %description.i, align 8
  %25 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %description, align 4
  %bcmp.i = tail call i32 @bcmp(ptr %24, ptr %26, i32 %conv6.i) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp13.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp13.i, label %keyring_compare_object.exit.if.then17_crit_edge, label %keyring_compare_object.exit.if.end21_crit_edge

keyring_compare_object.exit.if.end21_crit_edge:   ; preds = %keyring_compare_object.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end21

keyring_compare_object.exit.if.then17_crit_edge:  ; preds = %keyring_compare_object.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then17

if.then17:                                        ; preds = %keyring_compare_object.exit.if.then17_crit_edge, %if.end14.if.then17_crit_edge
  %skipped_ret = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 5
  %27 = ptrtoint ptr %skipped_ret to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %skipped_ret, align 8
  %iterator = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 4
  %28 = ptrtoint ptr %iterator to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iterator, align 4
  %type.i276 = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 16, i32 0, i32 2
  %30 = ptrtoint ptr %type.i276 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %type.i276, align 8
  %cmp.i277 = icmp eq ptr %31, @key_type_keyring
  %or.i = or i32 %.pre, 2
  %32 = inttoptr i32 %or.i to ptr
  %retval.0.i = select i1 %cmp.i277, ptr %32, ptr %keyring
  %call19 = tail call i32 %29(ptr noundef %retval.0.i, ptr noundef %ctx) #19
  %33 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %call19, label %if.then17.if.end21_crit_edge [
    i32 1, label %if.then17.found_crit_edge
    i32 2, label %if.then17.cleanup_crit_edge
  ]

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then17.found_crit_edge:                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #21
  br label %found

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end21

if.end21:                                         ; preds = %if.then17.if.end21_crit_edge, %keyring_compare_object.exit.if.end21_crit_edge, %land.lhs.true4.i.if.end21_crit_edge, %land.lhs.true.i.if.end21_crit_edge, %lor.lhs.false.if.end21_crit_edge
  %skipped_ret22 = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 5
  %34 = ptrtoint ptr %skipped_ret22 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %skipped_ret22, align 8
  %iterator3.i = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 4
  %possessed = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 6
  %cred = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 1
  br label %descend_to_keyring

descend_to_keyring:                               ; preds = %if.end129, %if.end21
  %sp.0 = phi i32 [ 0, %if.end21 ], [ %inc, %if.end129 ]
  %keyring.addr.0 = phi ptr [ %keyring, %if.end21 ], [ %78, %if.end129 ]
  %flags24 = getelementptr inbounds %struct.key, ptr %keyring.addr.0, i32 0, i32 15
  %35 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags24, align 4
  %and25 = and i32 %36, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end28, label %descend_to_keyring.not_this_keyring_crit_edge

descend_to_keyring.not_this_keyring_crit_edge:    ; preds = %descend_to_keyring
  call void @__sanitizer_cov_trace_pc() #21
  br label %not_this_keyring

if.end28:                                         ; preds = %descend_to_keyring
  %37 = ptrtoint ptr %lookup_type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lookup_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i278 = icmp eq i32 %38, 0
  %keys.i = getelementptr inbounds %struct.key, ptr %keyring.addr.0, i32 0, i32 17, i32 0, i32 0, i32 2
  br i1 %cmp.i278, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end28
  %call.i = tail call ptr @assoc_array_find(ptr noundef %keys.i, ptr noundef nonnull @keyring_assoc_array_ops, ptr noundef %ctx) #19
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i.if.end32_crit_edge, label %cond.true.i

if.then.i.if.end32_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end32

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %39 = ptrtoint ptr %iterator3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iterator3.i, align 4
  %call1.i = tail call i32 %40(ptr noundef nonnull %call.i, ptr noundef %ctx) #19
  br label %search_keyring.exit

if.end.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #21
  %41 = ptrtoint ptr %iterator3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iterator3.i, align 4
  %call4.i = tail call i32 @assoc_array_iterate(ptr noundef %keys.i, ptr noundef %42, ptr noundef %ctx) #19
  br label %search_keyring.exit

search_keyring.exit:                              ; preds = %if.end.i, %cond.true.i
  %retval.0.i279 = phi i32 [ %call4.i, %if.end.i ], [ %call1.i, %cond.true.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i279)
  %tobool30.not = icmp eq i32 %retval.0.i279, 0
  br i1 %tobool30.not, label %search_keyring.exit.if.end32_crit_edge, label %search_keyring.exit.found_crit_edge

search_keyring.exit.found_crit_edge:              ; preds = %search_keyring.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %found

search_keyring.exit.if.end32_crit_edge:           ; preds = %search_keyring.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end32

if.end32:                                         ; preds = %search_keyring.exit.if.end32_crit_edge, %if.then.i.if.end32_crit_edge
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 8
  %and34 = and i32 %44, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.not_this_keyring_crit_edge, label %do.end40

if.end32.not_this_keyring_crit_edge:              ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #21
  br label %not_this_keyring

do.end40:                                         ; preds = %if.end32
  %45 = ptrtoint ptr %keys.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %keys.i, align 4
  %tobool42.not = icmp eq ptr %46, null
  br i1 %tobool42.not, label %do.end40.not_this_keyring_crit_edge, label %if.end44

do.end40.not_this_keyring_crit_edge:              ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #21
  br label %not_this_keyring

if.end44:                                         ; preds = %do.end40
  %47 = ptrtoint ptr %46 to i32
  %and.i = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %and.i.i282 = and i32 %47, -4
  %48 = inttoptr i32 %and.i.i282 to ptr
  br i1 %tobool.i.not, label %if.end58, label %if.then46

if.then46:                                        ; preds = %if.end44
  %index_key48 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %index_key48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index_key48, align 4
  %and49 = and i32 %50, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %cmp50.not = icmp eq i32 %and49, 0
  br i1 %cmp50.not, label %do.end55, label %if.then46.not_this_keyring_crit_edge

if.then46.not_this_keyring_crit_edge:             ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #21
  br label %not_this_keyring

do.end55:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #21
  %next_node = getelementptr inbounds %struct.assoc_array_shortcut, ptr %48, i32 0, i32 3
  %51 = ptrtoint ptr %next_node to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %next_node, align 4
  %53 = ptrtoint ptr %52 to i32
  %and.i.i281 = and i32 %53, -4
  %54 = inttoptr i32 %and.i.i281 to ptr
  br label %ascend_to_node.preheader

if.end58:                                         ; preds = %if.end44
  %slots = getelementptr inbounds %struct.assoc_array_node, ptr %48, i32 0, i32 2
  %55 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %slots, align 4
  %57 = ptrtoint ptr %56 to i32
  %and.i283 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i283)
  %tobool.i284.not = icmp eq i32 %and.i283, 0
  br i1 %tobool.i284.not, label %if.end58.ascend_to_node.preheader_crit_edge, label %if.end58.descend_to_node_crit_edge

if.end58.descend_to_node_crit_edge:               ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #21
  br label %descend_to_node

if.end58.ascend_to_node.preheader_crit_edge:      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #21
  br label %ascend_to_node.preheader

descend_to_node.loopexit:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %58 = ptrtoint ptr %65 to i32
  br label %descend_to_node

descend_to_node:                                  ; preds = %descend_to_node.loopexit, %if.end58.descend_to_node_crit_edge
  %.pre-phi = phi i32 [ %57, %if.end58.descend_to_node_crit_edge ], [ %58, %descend_to_node.loopexit ]
  %sp.1 = phi i32 [ %sp.0, %if.end58.descend_to_node_crit_edge ], [ %sp.3.ph, %descend_to_node.loopexit ]
  %keyring.addr.1 = phi ptr [ %keyring.addr.0, %if.end58.descend_to_node_crit_edge ], [ %keyring.addr.3.ph, %descend_to_node.loopexit ]
  %and.i285 = and i32 %.pre-phi, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i285)
  %tobool.i286.not = icmp eq i32 %and.i285, 0
  br i1 %tobool.i286.not, label %descend_to_node.if.end93_crit_edge, label %if.then66

descend_to_node.if.end93_crit_edge:               ; preds = %descend_to_node
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end93

if.then66:                                        ; preds = %descend_to_node
  %and.i.i287 = and i32 %.pre-phi, -4
  %59 = inttoptr i32 %and.i.i287 to ptr
  %next_node72 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %next_node72 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %next_node72, align 4
  %62 = ptrtoint ptr %61 to i32
  %and.i.i288 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i288)
  %tobool.i.not.i = icmp eq i32 %and.i.i288, 0
  br i1 %tobool.i.not.i, label %if.then66.if.end93_crit_edge, label %do.body84, !prof !71

if.then66.if.end93_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end93

do.body84:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 763, 0\0A.popsection", ""() #19, !srcloc !77
  unreachable

if.end93:                                         ; preds = %if.then66.if.end93_crit_edge, %descend_to_node.if.end93_crit_edge
  %.pre-phi347 = phi i32 [ %62, %if.then66.if.end93_crit_edge ], [ %.pre-phi, %descend_to_node.if.end93_crit_edge ]
  %and.i.i289 = and i32 %.pre-phi347, -4
  %63 = inttoptr i32 %and.i.i289 to ptr
  br label %ascend_to_node.preheader

ascend_to_node.preheader:                         ; preds = %if.end170, %if.end93, %if.end58.ascend_to_node.preheader_crit_edge, %do.end55
  %slot.0.ph = phi i32 [ %add, %if.end170 ], [ 0, %if.end58.ascend_to_node.preheader_crit_edge ], [ 0, %if.end93 ], [ 0, %do.end55 ]
  %sp.3.ph = phi i32 [ %dec, %if.end170 ], [ %sp.0, %if.end58.ascend_to_node.preheader_crit_edge ], [ %sp.1, %if.end93 ], [ %sp.0, %do.end55 ]
  %node.1.ph = phi ptr [ %98, %if.end170 ], [ %48, %if.end58.ascend_to_node.preheader_crit_edge ], [ %63, %if.end93 ], [ %54, %do.end55 ]
  %keyring.addr.3.ph = phi ptr [ %96, %if.end170 ], [ %keyring.addr.0, %if.end58.ascend_to_node.preheader_crit_edge ], [ %keyring.addr.1, %if.end93 ], [ %keyring.addr.0, %do.end55 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sp.3.ph)
  %cmp111 = icmp sgt i32 %sp.3.ph, 5
  br label %ascend_to_node

ascend_to_node:                                   ; preds = %if.end157.ascend_to_node_crit_edge, %ascend_to_node.preheader
  %slot.0 = phi i32 [ %inc159, %if.end157.ascend_to_node_crit_edge ], [ %slot.0.ph, %ascend_to_node.preheader ]
  %node.1 = phi ptr [ %92, %if.end157.ascend_to_node_crit_edge ], [ %node.1.ph, %ascend_to_node.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %slot.0)
  %cmp96325 = icmp slt i32 %slot.0, 16
  br i1 %cmp96325, label %ascend_to_node.do.end99_crit_edge, label %ascend_to_node.do.end139_crit_edge

ascend_to_node.do.end139_crit_edge:               ; preds = %ascend_to_node
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end139

ascend_to_node.do.end99_crit_edge:                ; preds = %ascend_to_node
  br label %do.end99

do.end99:                                         ; preds = %for.inc.do.end99_crit_edge, %ascend_to_node.do.end99_crit_edge
  %slot.1326 = phi i32 [ %inc136, %for.inc.do.end99_crit_edge ], [ %slot.0, %ascend_to_node.do.end99_crit_edge ]
  %arrayidx102 = getelementptr %struct.assoc_array_node, ptr %node.1, i32 0, i32 2, i32 %slot.1326
  %64 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %arrayidx102, align 4
  %66 = ptrtoint ptr %65 to i32
  %and.i290 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i290)
  %tobool.i291.not = icmp eq i32 %and.i290, 0
  br i1 %tobool.i291.not, label %do.end99.if.end106_crit_edge, label %land.lhs.true

do.end99.if.end106_crit_edge:                     ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end106

land.lhs.true:                                    ; preds = %do.end99
  %67 = ptrtoint ptr %node.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %node.1, align 4
  %tobool104.not = icmp eq ptr %68, null
  br i1 %tobool104.not, label %land.lhs.true.if.end106_crit_edge, label %descend_to_node.loopexit

land.lhs.true.if.end106_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end106

if.end106:                                        ; preds = %land.lhs.true.if.end106_crit_edge, %do.end99.if.end106_crit_edge
  %and.i292 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i292)
  %tobool.i293.not = icmp eq i32 %and.i292, 0
  br i1 %tobool.i293.not, label %if.end106.for.inc_crit_edge, label %if.end109

if.end106.for.inc_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end109:                                        ; preds = %if.end106
  %and.i294 = and i32 %66, -4
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags, align 8
  br i1 %cmp111, label %if.then112, label %if.end119

if.then112:                                       ; preds = %if.end109
  %and114 = and i32 %70, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.then112.not_this_keyring_crit_edge, label %if.then116

if.then112.not_this_keyring_crit_edge:            ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #21
  br label %not_this_keyring

if.then116:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #21
  %result = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 7
  %71 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 -40 to ptr), ptr %result, align 8
  br label %cleanup

if.end119:                                        ; preds = %if.end109
  %and121 = and i32 %70, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %land.lhs.true123, label %if.end119.if.end129_crit_edge

if.end119.if.end129_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end129

land.lhs.true123:                                 ; preds = %if.end119
  %72 = ptrtoint ptr %possessed to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %possessed, align 4, !range !75
  %74 = zext i8 %73 to i32
  %or.i295 = or i32 %and.i294, %74
  %75 = inttoptr i32 %or.i295 to ptr
  %76 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cred, align 4
  %call126 = tail call i32 @key_task_permission(ptr noundef %75, ptr noundef %77, i32 noundef 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %land.lhs.true123.for.inc_crit_edge, label %land.lhs.true123.if.end129_crit_edge

land.lhs.true123.if.end129_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end129

land.lhs.true123.for.inc_crit_edge:               ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end129:                                        ; preds = %land.lhs.true123.if.end129_crit_edge, %if.end119.if.end129_crit_edge
  %78 = inttoptr i32 %and.i294 to ptr
  %arrayidx130 = getelementptr [6 x %struct.anon.108], ptr %stack, i32 0, i32 %sp.3.ph
  %79 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %keyring.addr.3.ph, ptr %arrayidx130, align 4
  %node133 = getelementptr [6 x %struct.anon.108], ptr %stack, i32 0, i32 %sp.3.ph, i32 1
  %80 = ptrtoint ptr %node133 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %node.1, ptr %node133, align 4
  %slot135 = getelementptr [6 x %struct.anon.108], ptr %stack, i32 0, i32 %sp.3.ph, i32 2
  %81 = ptrtoint ptr %slot135 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %slot.1326, ptr %slot135, align 4
  %inc = add nsw i32 %sp.3.ph, 1
  br label %descend_to_keyring

for.inc:                                          ; preds = %land.lhs.true123.for.inc_crit_edge, %if.end106.for.inc_crit_edge
  %inc136 = add i32 %slot.1326, 1
  %exitcond.not = icmp eq i32 %inc136, 16
  br i1 %exitcond.not, label %for.inc.do.end139_crit_edge, label %for.inc.do.end99_crit_edge

for.inc.do.end99_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end99

for.inc.do.end139_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end139

do.end139:                                        ; preds = %for.inc.do.end139_crit_edge, %ascend_to_node.do.end139_crit_edge
  %82 = ptrtoint ptr %node.1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %node.1, align 4
  %tobool142.not = icmp eq ptr %83, null
  br i1 %tobool142.not, label %do.end139.not_this_keyring.loopexit_crit_edge, label %land.lhs.true143

do.end139.not_this_keyring.loopexit_crit_edge:    ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #21
  br label %not_this_keyring.loopexit

land.lhs.true143:                                 ; preds = %do.end139
  %parent_slot = getelementptr inbounds %struct.assoc_array_node, ptr %node.1, i32 0, i32 1
  %84 = ptrtoint ptr %parent_slot to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %parent_slot, align 4
  %conv = zext i8 %85 to i32
  %86 = ptrtoint ptr %83 to i32
  %and.i296 = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i296)
  %tobool.i297.not = icmp eq i32 %and.i296, 0
  br i1 %tobool.i297.not, label %land.lhs.true143.if.end157_crit_edge, label %if.end154

land.lhs.true143.if.end157_crit_edge:             ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end157

if.end154:                                        ; preds = %land.lhs.true143
  %and.i.i298 = and i32 %86, -4
  %87 = inttoptr i32 %and.i.i298 to ptr
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %87, align 4
  %tobool155.not = icmp eq ptr %89, null
  br i1 %tobool155.not, label %if.end154.not_this_keyring.loopexit_crit_edge, label %if.end154.if.end157_crit_edge

if.end154.not_this_keyring.loopexit_crit_edge:    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #21
  br label %not_this_keyring.loopexit

if.end154.if.end157_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #21
  %parent_slot153 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %87, i32 0, i32 1
  %90 = ptrtoint ptr %parent_slot153 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %parent_slot153, align 4
  %.pre349 = ptrtoint ptr %89 to i32
  br label %if.end157

if.end157:                                        ; preds = %if.end154.if.end157_crit_edge, %land.lhs.true143.if.end157_crit_edge
  %.pre-phi350 = phi i32 [ %.pre349, %if.end154.if.end157_crit_edge ], [ %86, %land.lhs.true143.if.end157_crit_edge ]
  %slot.2306 = phi i32 [ %91, %if.end154.if.end157_crit_edge ], [ %conv, %land.lhs.true143.if.end157_crit_edge ]
  %and.i.i299 = and i32 %.pre-phi350, -4
  %92 = inttoptr i32 %and.i.i299 to ptr
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %tobool161.not = icmp eq ptr %94, null
  %inc159 = add i32 %slot.2306, 1
  br i1 %tobool161.not, label %if.end157.not_this_keyring.loopexit_crit_edge, label %if.end157.ascend_to_node_crit_edge

if.end157.ascend_to_node_crit_edge:               ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #21
  br label %ascend_to_node

if.end157.not_this_keyring.loopexit_crit_edge:    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #21
  br label %not_this_keyring.loopexit

not_this_keyring.loopexit:                        ; preds = %if.end157.not_this_keyring.loopexit_crit_edge, %if.end154.not_this_keyring.loopexit_crit_edge, %do.end139.not_this_keyring.loopexit_crit_edge
  br label %not_this_keyring

not_this_keyring:                                 ; preds = %not_this_keyring.loopexit, %if.then112.not_this_keyring_crit_edge, %if.then46.not_this_keyring_crit_edge, %do.end40.not_this_keyring_crit_edge, %if.end32.not_this_keyring_crit_edge, %descend_to_keyring.not_this_keyring_crit_edge
  %sp.4 = phi i32 [ %sp.0, %descend_to_keyring.not_this_keyring_crit_edge ], [ %sp.3.ph, %if.then112.not_this_keyring_crit_edge ], [ %sp.0, %if.then46.not_this_keyring_crit_edge ], [ %sp.0, %do.end40.not_this_keyring_crit_edge ], [ %sp.0, %if.end32.not_this_keyring_crit_edge ], [ %sp.3.ph, %not_this_keyring.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sp.4)
  %cmp166 = icmp slt i32 %sp.4, 1
  br i1 %cmp166, label %not_this_keyring.cleanup_crit_edge, label %if.end170

not_this_keyring.cleanup_crit_edge:               ; preds = %not_this_keyring
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end170:                                        ; preds = %not_this_keyring
  call void @__sanitizer_cov_trace_pc() #21
  %dec = add nsw i32 %sp.4, -1
  %arrayidx171 = getelementptr [6 x %struct.anon.108], ptr %stack, i32 0, i32 %dec
  %95 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx171, align 4
  %node174 = getelementptr [6 x %struct.anon.108], ptr %stack, i32 0, i32 %dec, i32 1
  %97 = ptrtoint ptr %node174 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %node174, align 4
  %slot176 = getelementptr [6 x %struct.anon.108], ptr %stack, i32 0, i32 %dec, i32 2
  %99 = ptrtoint ptr %slot176 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %slot176, align 4
  %add = add i32 %100, 1
  br label %ascend_to_node.preheader

found:                                            ; preds = %search_keyring.exit.found_crit_edge, %if.then17.found_crit_edge
  %sp.5 = phi i32 [ 0, %if.then17.found_crit_edge ], [ %sp.0, %search_keyring.exit.found_crit_edge ]
  %keyring.addr.4 = phi ptr [ %keyring, %if.then17.found_crit_edge ], [ %keyring.addr.0, %search_keyring.exit.found_crit_edge ]
  %101 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags, align 8
  %and184 = and i32 %102, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %if.then186, label %found.cleanup_crit_edge

found.cleanup_crit_edge:                          ; preds = %found
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then186:                                       ; preds = %found
  %result178 = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 7
  %103 = ptrtoint ptr %result178 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %result178, align 8
  %105 = ptrtoint ptr %104 to i32
  %and.i300 = and i32 %105, -2
  %106 = inttoptr i32 %and.i300 to ptr
  %now = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 8
  %107 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %now, align 8
  %last_used_at = getelementptr inbounds %struct.key, ptr %106, i32 0, i32 8
  %109 = ptrtoint ptr %last_used_at to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %last_used_at, align 8
  %110 = load i64, ptr %now, align 8
  %last_used_at188 = getelementptr inbounds %struct.key, ptr %keyring.addr.4, i32 0, i32 8
  %111 = ptrtoint ptr %last_used_at188 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %110, ptr %last_used_at188, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sp.5)
  %cmp189328 = icmp sgt i32 %sp.5, 0
  br i1 %cmp189328, label %if.then186.while.body_crit_edge, label %if.then186.cleanup_crit_edge

if.then186.cleanup_crit_edge:                     ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then186.while.body_crit_edge:                  ; preds = %if.then186
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then186.while.body_crit_edge
  %sp.6329 = phi i32 [ %dec192, %while.body.while.body_crit_edge ], [ %sp.5, %if.then186.while.body_crit_edge ]
  %112 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %now, align 8
  %dec192 = add nsw i32 %sp.6329, -1
  %arrayidx193 = getelementptr [6 x %struct.anon.108], ptr %stack, i32 0, i32 %dec192
  %114 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx193, align 4
  %last_used_at195 = getelementptr inbounds %struct.key, ptr %115, i32 0, i32 8
  %116 = ptrtoint ptr %last_used_at195 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %113, ptr %last_used_at195, align 8
  %cmp189 = icmp ugt i32 %sp.6329, 1
  br i1 %cmp189, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.then186.cleanup_crit_edge, %found.cleanup_crit_edge, %not_this_keyring.cleanup_crit_edge, %if.then116, %if.then17.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then116 ], [ false, %if.then17.cleanup_crit_edge ], [ true, %found.cleanup_crit_edge ], [ true, %if.then186.cleanup_crit_edge ], [ true, %while.body.cleanup_crit_edge ], [ false, %not_this_keyring.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %stack) #19
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @keyring_search(ptr noundef %keyring, ptr noundef %type, ptr noundef %description, i1 noundef zeroext %recurse) #0 align 64 {
entry:
  %ctx = alloca %struct.keyring_search_context, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ctx) #19
  %0 = getelementptr inbounds i8, ptr %ctx, i32 48
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ctx, align 8
  %3 = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %3, align 4
  %desc_len = getelementptr inbounds %struct.anon.97, ptr %3, i32 0, i32 1
  %call = tail call i32 @strlen(ptr noundef %description) #22
  %conv = trunc i32 %call to i16
  %5 = ptrtoint ptr %desc_len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %desc_len, align 2
  %type1 = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 2
  %6 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %type, ptr %type1, align 8
  %domain_tag = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 3
  %7 = ptrtoint ptr %domain_tag to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %domain_tag, align 4
  %description2 = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 4
  %8 = ptrtoint ptr %description2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %description, ptr %description2, align 8
  %cred = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 1
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #19
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %cred4 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 99
  %13 = ptrtoint ptr %cred4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cred4, align 16
  %15 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %cred, align 4
  %match_data = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2
  %16 = ptrtoint ptr %match_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @key_default_cmp, ptr %match_data, align 8
  %raw_data = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %raw_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %description, ptr %raw_data, align 4
  %preparsed = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %preparsed to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %preparsed, align 8
  %lookup_type = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %lookup_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %lookup_type, align 4
  %flags = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 3
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %flags, align 8
  %iterator = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 4
  %21 = ptrtoint ptr %iterator to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %iterator, align 4
  %skipped_ret = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 5
  %22 = ptrtoint ptr %skipped_ret to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %skipped_ret, align 8
  %possessed = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 6
  %23 = ptrtoint ptr %possessed to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %possessed, align 4
  %result = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 7
  %24 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %result, align 8
  %now = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 8
  %25 = ptrtoint ptr %now to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %now, align 8
  br i1 %recurse, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 66, ptr %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %match_preparse = getelementptr inbounds %struct.key_type, ptr %type, i32 0, i32 8
  %27 = ptrtoint ptr %match_preparse to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %match_preparse, align 4
  %tobool6.not = icmp eq ptr %28, null
  br i1 %tobool6.not, label %if.end.if.end16_crit_edge, label %if.then7

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16

if.then7:                                         ; preds = %if.end
  %call10 = call i32 %28(ptr noundef %match_data) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.then7.if.end16_crit_edge

if.then7.if.end16_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16

if.then13:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #21
  %29 = inttoptr i32 %call10 to ptr
  br label %cleanup

if.end16:                                         ; preds = %if.then7.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %30 = call i32 @llvm.read_register.i32(metadata !58) #19
  %and.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !78
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #19
  %call.i = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i, label %if.end16.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end16.rcu_read_lock.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end16
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #19
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end16.rcu_read_lock.exit_crit_edge
  %call17 = call ptr @keyring_search_rcu(ptr noundef %keyring, ptr noundef nonnull %ctx)
  %call.i33 = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i33, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i36

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit

land.lhs.true.i36:                                ; preds = %rcu_read_lock.exit
  %call1.i34 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool.not.i35, label %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i38

land.lhs.true.i36.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit

land.lhs.true2.i38:                               ; preds = %land.lhs.true.i36
  %.b4.i37 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i37, label %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, label %if.then.i39

land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit

if.then.i39:                                      ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #19
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i39, %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !79
  %34 = call i32 @llvm.read_register.i32(metadata !58) #19
  %and.i.i.i.i.i40 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i40 to ptr
  %preempt_count.i.i.i.i41 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i41, align 4
  %sub.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i41, align 4
  call void @rcu_read_unlock_strict() #19
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  %match_free = getelementptr inbounds %struct.key_type, ptr %type, i32 0, i32 9
  %38 = ptrtoint ptr %match_free to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %match_free, align 4
  %tobool18.not = icmp eq ptr %39, null
  br i1 %tobool18.not, label %rcu_read_unlock.exit.cleanup_crit_edge, label %if.then19

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then19:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #21
  call void %39(ptr noundef %match_data) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %rcu_read_unlock.exit.cleanup_crit_edge, %if.then13
  %retval.0 = phi ptr [ %29, %if.then13 ], [ %call17, %if.then19 ], [ %call17, %rcu_read_unlock.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ctx) #19
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyring_restrict(ptr noundef %keyring_ref, ptr noundef %type, ptr noundef %restriction) #0 align 64 {
entry:
  %n.i = alloca %struct.key_notification, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %keyring_ref to i32
  %and.i = and i32 %0, -2
  %1 = inttoptr i32 %and.i to ptr
  %type1 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 2
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type1, align 8
  %cmp.not = icmp eq ptr %3, @key_type_keyring
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %type, null
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #24
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then2.if.then16_crit_edge, label %if.end.i

if.then2.if.then16_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then16

if.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #21
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @restrict_link_reject, ptr %call7.i.i.i, align 8
  br label %if.end14

if.else:                                          ; preds = %if.end
  %call4 = tail call ptr @key_type_lookup(ptr noundef nonnull %type) #19
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %6 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.else
  %lookup_restriction = getelementptr inbounds %struct.key_type, ptr %call4, i32 0, i32 15
  %7 = ptrtoint ptr %lookup_restriction to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lookup_restriction, align 4
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %if.end8.error_crit_edge, label %if.end11

if.end8.error_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %error

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  %call13 = tail call ptr %8(ptr noundef %restriction) #19
  br label %if.end14

if.end14:                                         ; preds = %if.end11, %if.end.i
  %restrict_type.0 = phi ptr [ %call4, %if.end11 ], [ null, %if.end.i ]
  %restrict_link.0 = phi ptr [ %call13, %if.end11 ], [ %call7.i.i.i, %if.end.i ]
  %cmp.i57 = icmp ugt ptr %restrict_link.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i57, label %if.end14.if.then16_crit_edge, label %if.end18

if.end14.if.then16_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then16

if.then16:                                        ; preds = %if.end14.if.then16_crit_edge, %if.then2.if.then16_crit_edge
  %restrict_link.066 = phi ptr [ %restrict_link.0, %if.end14.if.then16_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then2.if.then16_crit_edge ]
  %restrict_type.065 = phi ptr [ %restrict_type.0, %if.end14.if.then16_crit_edge ], [ null, %if.then2.if.then16_crit_edge ]
  %9 = ptrtoint ptr %restrict_link.066 to i32
  br label %error

if.end18:                                         ; preds = %if.end14
  %sem = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 4
  tail call void @down_write(ptr noundef %sem) #19
  tail call void @down_write(ptr noundef nonnull @keyring_serialise_restrict_sem) #19
  %restrict_link19 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %restrict_link19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %restrict_link19, align 4
  %tobool20.not = icmp eq ptr %11, null
  br i1 %tobool20.not, label %if.else22, label %if.end18.if.end28_crit_edge

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end28

if.else22:                                        ; preds = %if.end18
  %tobool.not11.i = icmp eq ptr %restrict_link.0, null
  br i1 %tobool.not11.i, label %if.else22.if.else25_crit_edge, label %if.else22.land.lhs.true.i_crit_edge

if.else22.land.lhs.true.i_crit_edge:              ; preds = %if.else22
  br label %land.lhs.true.i

if.else22.if.else25_crit_edge:                    ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else25

land.lhs.true.i:                                  ; preds = %if.end.i60.land.lhs.true.i_crit_edge, %if.else22.land.lhs.true.i_crit_edge
  %keyres.addr.012.i = phi ptr [ %17, %if.end.i60.land.lhs.true.i_crit_edge ], [ %restrict_link.0, %if.else22.land.lhs.true.i_crit_edge ]
  %key.i = getelementptr inbounds %struct.key_restriction, ptr %keyres.addr.012.i, i32 0, i32 1
  %12 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %key.i, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else25_crit_edge, label %land.rhs.i

land.lhs.true.i.if.else25_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else25

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %type.i = getelementptr inbounds %struct.key, ptr %13, i32 0, i32 16, i32 0, i32 2
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type.i, align 8
  %cmp.i58 = icmp eq ptr %15, @key_type_keyring
  br i1 %cmp.i58, label %while.body.i, label %land.rhs.i.if.else25_crit_edge

land.rhs.i.if.else25_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else25

while.body.i:                                     ; preds = %land.rhs.i
  %cmp4.i = icmp eq ptr %13, %1
  br i1 %cmp4.i, label %while.body.i.if.end28_crit_edge, label %if.end.i60

while.body.i.if.end28_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end28

if.end.i60:                                       ; preds = %while.body.i
  %restrict_link.i = getelementptr inbounds %struct.key, ptr %13, i32 0, i32 18
  %16 = ptrtoint ptr %restrict_link.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %restrict_link.i, align 4
  %tobool.not.i59 = icmp eq ptr %17, null
  br i1 %tobool.not.i59, label %if.end.i60.if.else25_crit_edge, label %if.end.i60.land.lhs.true.i_crit_edge

if.end.i60.land.lhs.true.i_crit_edge:             ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i

if.end.i60.if.else25_crit_edge:                   ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else25

if.else25:                                        ; preds = %if.end.i60.if.else25_crit_edge, %land.rhs.i.if.else25_crit_edge, %land.lhs.true.i.if.else25_crit_edge, %if.else22.if.else25_crit_edge
  %18 = ptrtoint ptr %restrict_link19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %restrict_link.0, ptr %restrict_link19, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %n.i) #19
  %19 = getelementptr inbounds %struct.watch_notification, ptr %n.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 1
  %21 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 2
  %22 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 263, ptr %n.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.i, label %if.else25.key_serial.exit.i_crit_edge, label %cond.true.i.i

if.else25.key_serial.exit.i_crit_edge:            ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #21
  br label %key_serial.exit.i

cond.true.i.i:                                    ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #21
  %serial.i.i = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %serial.i.i, align 4
  br label %key_serial.exit.i

key_serial.exit.i:                                ; preds = %cond.true.i.i, %if.else25.key_serial.exit.i_crit_edge
  %cond.i.i = phi i32 [ %25, %cond.true.i.i ], [ 0, %if.else25.key_serial.exit.i_crit_edge ]
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond.i.i, ptr %20, align 4
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %21, align 4
  %watchers.i = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %watchers.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %watchers.i, align 4
  %tobool.not.i9.i = icmp eq ptr %29, null
  br i1 %tobool.not.i9.i, label %key_serial.exit.i.notify_key.exit_crit_edge, label %if.then.i.i, !prof !71

key_serial.exit.i.notify_key.exit_crit_edge:      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %notify_key.exit

if.then.i.i:                                      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i = zext i32 %cond.i.i to i64
  %30 = tail call i32 @llvm.read_register.i32(metadata !58) #19
  %and.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 99
  %34 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cred.i, align 16
  call void @__post_watch_notification(ptr noundef nonnull %29, ptr noundef nonnull %n.i, ptr noundef %35, i64 noundef %conv.i) #19
  br label %notify_key.exit

notify_key.exit:                                  ; preds = %if.then.i.i, %key_serial.exit.i.notify_key.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %n.i) #19
  br label %if.end28

if.end28:                                         ; preds = %notify_key.exit, %while.body.i.if.end28_crit_edge, %if.end18.if.end28_crit_edge
  %cmp30 = phi i1 [ false, %notify_key.exit ], [ true, %if.end18.if.end28_crit_edge ], [ true, %while.body.i.if.end28_crit_edge ]
  %ret.0 = phi i32 [ 0, %notify_key.exit ], [ -17, %if.end18.if.end28_crit_edge ], [ -35, %while.body.i.if.end28_crit_edge ]
  call void @up_write(ptr noundef nonnull @keyring_serialise_restrict_sem) #19
  call void @up_write(ptr noundef %sem) #19
  br i1 %cmp30, label %if.then31, label %if.end28.error_crit_edge

if.end28.error_crit_edge:                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #21
  br label %error

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #21
  %key = getelementptr inbounds %struct.key_restriction, ptr %restrict_link.0, i32 0, i32 1
  %36 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %key, align 4
  call void @key_put(ptr noundef %37) #19
  call void @kfree(ptr noundef %restrict_link.0) #19
  br label %error

error:                                            ; preds = %if.then31, %if.end28.error_crit_edge, %if.then16, %if.end8.error_crit_edge
  %restrict_type.1 = phi ptr [ %restrict_type.065, %if.then16 ], [ %restrict_type.0, %if.then31 ], [ %restrict_type.0, %if.end28.error_crit_edge ], [ %call4, %if.end8.error_crit_edge ]
  %ret.1 = phi i32 [ %9, %if.then16 ], [ %ret.0, %if.then31 ], [ 0, %if.end28.error_crit_edge ], [ -2, %if.end8.error_crit_edge ]
  %tobool33.not = icmp eq ptr %restrict_type.1, null
  br i1 %tobool33.not, label %error.cleanup_crit_edge, label %if.then34

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then34:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #21
  call void @key_type_put(ptr noundef nonnull %restrict_type.1) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %error.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then6 ], [ -20, %entry.cleanup_crit_edge ], [ %ret.1, %if.then34 ], [ %ret.1, %error.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_type_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_type_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_key_to_update(ptr noundef %keyring_ref, ptr noundef %index_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %keyring_ref to i32
  %and.i = and i32 %0, -2
  %1 = inttoptr i32 %and.i to ptr
  %keys = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 2
  %call1 = tail call ptr @assoc_array_find(ptr noundef %keys, ptr noundef nonnull @keyring_assoc_array_ops, ptr noundef %index_key) #19
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %found

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

found:                                            ; preds = %entry
  %2 = ptrtoint ptr %call1 to i32
  %and.i18 = and i32 %2, -4
  %3 = inttoptr i32 %and.i18 to ptr
  %flags = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end7, label %found.cleanup_crit_edge

found.cleanup_crit_edge:                          ; preds = %found
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end7:                                          ; preds = %found
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #19
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #19, !srcloc !73
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end7.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !74

if.end7.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end7
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.__key_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !71

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.__key_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__key_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end7.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end7.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef %.sink.i.i.i.i) #19
  br label %__key_get.exit

__key_get.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.__key_get.exit_crit_edge
  %and.i19 = and i32 %0, 1
  %or.i = or i32 %and.i18, %and.i19
  %8 = inttoptr i32 %or.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %__key_get.exit, %found.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %8, %__key_get.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %found.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @assoc_array_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_keyring_by_name(ptr noundef readonly %name, i1 noundef zeroext %uid_keyring) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #19
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
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_read_lock(ptr noundef nonnull @keyring_name_lock) #19
  %keyring_name_list = getelementptr inbounds %struct.user_namespace, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %keyring_name_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn56 = load ptr, ptr %keyring_name_list, align 4
  %cmp.not58 = icmp eq ptr %.pn56, %keyring_name_list
  br i1 %cmp.not58, label %if.end.out_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn59 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn56, %if.end.for.body_crit_edge ]
  %keyring.060 = getelementptr i8, ptr %.pn59, i32 -188
  %user = getelementptr i8, ptr %.pn59, i32 -68
  %9 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %user, align 8
  %uid = getelementptr inbounds %struct.key_user, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack = load i32, ptr %uid, align 4
  %12 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call.i = call i32 @from_kuid(ptr noundef %7, [1 x i32] %12) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, -1
  br i1 %cmp.i.not, label %for.body.for.inc_crit_edge, label %if.end7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %flags = getelementptr i8, ptr %.pn59, i32 -24
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.for.inc_crit_edge

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end11:                                         ; preds = %if.end7
  %description = getelementptr i8, ptr %.pn59, i32 -4
  %16 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %description, align 8
  %call12 = call i32 @strcmp(ptr noundef %17, ptr noundef nonnull %name) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end15, label %if.end11.for.inc_crit_edge

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end15:                                         ; preds = %if.end11
  br i1 %uid_keyring, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool20.not = icmp eq i32 %20, 0
  br i1 %tobool20.not, label %if.then17.for.inc_crit_edge, label %if.then17.if.end28_crit_edge

if.then17.if.end28_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end28

if.then17.for.inc_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.else:                                          ; preds = %if.end15
  %21 = call i32 @llvm.read_register.i32(metadata !58) #19
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 99
  %25 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cred.i, align 16
  %call1.i = call i32 @key_task_permission(ptr noundef %keyring.060, ptr noundef %26, i32 noundef 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp25 = icmp slt i32 %call1.i, 0
  br i1 %cmp25, label %if.else.for.inc_crit_edge, label %if.else.if.end28_crit_edge

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end28

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end28:                                         ; preds = %if.else.if.end28_crit_edge, %if.then17.if.end28_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %keyring.060, i32 noundef 4) #19
  %27 = ptrtoint ptr %keyring.060 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %keyring.060, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end28
  %29 = phi i32 [ %28, %if.end28 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %30 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %29, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %keyring.060, i32 noundef 4) #19
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #19
  %31 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %keyring.060, i32 1, i32 3, i32 1) #19
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %33 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %keyring.060, ptr %keyring.060, i32 %32, i32 %add.i.i.i, ptr elementtype(i32) %keyring.060) #19, !srcloc !80
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %32
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !71

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %34 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %35, 1
  %36 = or i32 %add5.i.i.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %.not.i.i.i = icmp sgt i32 %36, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !71

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @refcount_warn_saturate(ptr noundef %keyring.060, i32 noundef 0) #19
  %37 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %38 = phi i32 [ %35, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool12.i.i.i.not = icmp eq i32 %38, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #19
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.for.inc_crit_edge, label %if.end31

refcount_inc_not_zero.exit.for.inc_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end31:                                         ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call32 = call i64 @ktime_get_real_seconds() #19
  %last_used_at = getelementptr i8, ptr %.pn59, i32 -52
  %39 = ptrtoint ptr %last_used_at to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %call32, ptr %last_used_at, align 8
  br label %out

for.inc:                                          ; preds = %refcount_inc_not_zero.exit.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.then17.for.inc_crit_edge, %if.end11.for.inc_crit_edge, %if.end7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %40 = ptrtoint ptr %.pn59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn = load ptr, ptr %.pn59, align 4
  %cmp.not = icmp eq ptr %.pn, %keyring_name_list
  br i1 %cmp.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.end31, %if.end.out_crit_edge
  %keyring.1 = phi ptr [ %keyring.060, %if.end31 ], [ inttoptr (i32 -126 to ptr), %if.end.out_crit_edge ], [ inttoptr (i32 -126 to ptr), %for.inc.out_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @keyring_name_lock) #19
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %keyring.1, %out ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__key_link_lock(ptr noundef %keyring, ptr nocapture noundef readonly %index_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 16, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 8
  %cmp.not = icmp eq ptr %1, @key_type_keyring
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end:                                           ; preds = %entry
  %sem = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 4
  tail call void @down_write(ptr noundef %sem) #19
  %type1 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 2
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type1, align 4
  %cmp2 = icmp eq ptr %3, @key_type_keyring
  br i1 %cmp2, label %if.then3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @mutex_lock_nested(ptr noundef nonnull @keyring_serialise_link_lock, i32 noundef 0) #19
  br label %return

return:                                           ; preds = %if.then3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -20, %entry.return_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__key_move_lock(ptr noundef %l_keyring, ptr noundef %u_keyring, ptr nocapture noundef readonly %index_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.key, ptr %l_keyring, i32 0, i32 16, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 8
  %cmp.not = icmp eq ptr %1, @key_type_keyring
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %type1 = getelementptr inbounds %struct.key, ptr %u_keyring, i32 0, i32 16, i32 0, i32 2
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type1, align 8
  %cmp2.not = icmp eq ptr %3, @key_type_keyring
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %cmp3 = icmp ult ptr %l_keyring, %u_keyring
  %l_keyring.u_keyring = select i1 %cmp3, ptr %l_keyring, ptr %u_keyring
  %u_keyring.l_keyring = select i1 %cmp3, ptr %u_keyring, ptr %l_keyring
  %sem6 = getelementptr inbounds %struct.key, ptr %l_keyring.u_keyring, i32 0, i32 4
  tail call void @down_write(ptr noundef %sem6) #19
  %sem7 = getelementptr inbounds %struct.key, ptr %u_keyring.l_keyring, i32 0, i32 4
  tail call void @down_write_nested(ptr noundef %sem7, i32 noundef 1) #19
  %type9 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 2
  %4 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type9, align 4
  %cmp10 = icmp eq ptr %5, @key_type_keyring
  br i1 %cmp10, label %if.then11, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @mutex_lock_nested(ptr noundef nonnull @keyring_serialise_link_lock, i32 noundef 0) #19
  br label %return

return:                                           ; preds = %if.then11, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -20, %lor.lhs.false.return_crit_edge ], [ -20, %entry.return_crit_edge ], [ 0, %if.then11 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__key_link_begin(ptr noundef %keyring, ptr noundef %index_key, ptr nocapture noundef %_edit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 1
  %desc_len = getelementptr inbounds %struct.anon.97, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %desc_len to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %desc_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp = icmp eq i16 %2, 0
  br i1 %cmp, label %do.body3, label %do.body9, !prof !74

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1302, 0\0A.popsection", ""() #19, !srcloc !81
  unreachable

do.body9:                                         ; preds = %entry
  %3 = ptrtoint ptr %_edit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_edit, align 4
  %cmp10.not = icmp eq ptr %4, null
  br i1 %cmp10.not, label %do.end27, label %do.body19, !prof !71

do.body19:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1303, 0\0A.popsection", ""() #19, !srcloc !82
  unreachable

do.end27:                                         ; preds = %do.body9
  %5 = ptrtoint ptr %_edit to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %_edit, align 4
  %flags = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 15
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool28.not = icmp eq i32 %8, 0
  br i1 %tobool28.not, label %if.end30, label %do.end27.cleanup_crit_edge

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end30:                                         ; preds = %do.end27
  %keys = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 17, i32 0, i32 0, i32 2
  %call31 = tail call ptr @assoc_array_insert(ptr noundef %keys, ptr noundef nonnull @keyring_assoc_array_ops, ptr noundef %index_key, ptr noundef null) #19
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  %9 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %dead_leaf = getelementptr inbounds %struct.assoc_array_edit, ptr %call31, i32 0, i32 6
  %10 = ptrtoint ptr %dead_leaf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dead_leaf, align 4
  %tobool36.not = icmp eq ptr %11, null
  br i1 %tobool36.not, label %if.then37, label %if.end35.if.end44_crit_edge

if.end35.if.end44_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end44

if.then37:                                        ; preds = %if.end35
  %datalen = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 13
  %12 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %datalen, align 2
  %conv38 = zext i16 %13 to i32
  %add = add nuw nsw i32 %conv38, 4
  %call39 = tail call i32 @key_payload_reserve(ptr noundef %keyring, i32 noundef %add) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %error_cancel, label %if.then37.if.end44_crit_edge

if.then37.if.end44_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end44

if.end44:                                         ; preds = %if.then37.if.end44_crit_edge, %if.end35.if.end44_crit_edge
  %14 = ptrtoint ptr %_edit to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call31, ptr %_edit, align 4
  br label %cleanup

error_cancel:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @assoc_array_cancel_edit(ptr noundef %call31) #19
  br label %cleanup

cleanup:                                          ; preds = %error_cancel, %if.end44, %if.then33, %do.end27.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ -128, %do.end27.cleanup_crit_edge ], [ %9, %if.then33 ], [ %call39, %error_cancel ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @assoc_array_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_payload_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assoc_array_cancel_edit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__key_link_check_live_key(ptr noundef %keyring, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  %ctx.i = alloca %struct.keyring_search_context, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 8
  %cmp = icmp eq ptr %1, @key_type_keyring
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ctx.i) #19
  %2 = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 16
  %3 = getelementptr inbounds i8, ptr %ctx.i, i32 52
  %4 = call ptr @memset(ptr %3, i32 255, i32 12)
  %5 = call ptr @memcpy(ptr %ctx.i, ptr %2, i32 20)
  %cred.i = getelementptr inbounds %struct.keyring_search_context, ptr %ctx.i, i32 0, i32 1
  %6 = ptrtoint ptr %cred.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %cred.i, align 4
  %match_data.i = getelementptr inbounds %struct.keyring_search_context, ptr %ctx.i, i32 0, i32 2
  %7 = ptrtoint ptr %match_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %match_data.i, align 8
  %raw_data.i = getelementptr inbounds %struct.keyring_search_context, ptr %ctx.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %raw_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %keyring, ptr %raw_data.i, align 4
  %preparsed.i = getelementptr inbounds %struct.keyring_search_context, ptr %ctx.i, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %preparsed.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %preparsed.i, align 8
  %lookup_type.i = getelementptr inbounds %struct.keyring_search_context, ptr %ctx.i, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %lookup_type.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %lookup_type.i, align 4
  %flags.i = getelementptr inbounds %struct.keyring_search_context, ptr %ctx.i, i32 0, i32 3
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 93, ptr %flags.i, align 8
  %iterator.i = getelementptr inbounds %struct.keyring_search_context, ptr %ctx.i, i32 0, i32 4
  %12 = ptrtoint ptr %iterator.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @keyring_detect_cycle_iterator, ptr %iterator.i, align 4
  %skipped_ret.i = getelementptr inbounds %struct.keyring_search_context, ptr %ctx.i, i32 0, i32 5
  %13 = ptrtoint ptr %skipped_ret.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %skipped_ret.i, align 8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %3, align 4
  %result.i = getelementptr inbounds %struct.keyring_search_context, ptr %ctx.i, i32 0, i32 7
  %15 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %result.i, align 8
  %now.i = getelementptr inbounds %struct.keyring_search_context, ptr %ctx.i, i32 0, i32 8
  %16 = ptrtoint ptr %now.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %now.i, align 8
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #19
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !78
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #19
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i.i, label %if.then.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #19
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.rcu_read_lock.exit.i_crit_edge
  %call.i = call fastcc zeroext i1 @search_nested_keyrings(ptr noundef %key, ptr noundef nonnull %ctx.i) #19
  %call.i7.i = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i7.i, label %rcu_read_lock.exit.i.keyring_detect_cycle.exit_crit_edge, label %land.lhs.true.i10.i

rcu_read_lock.exit.i.keyring_detect_cycle.exit_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %keyring_detect_cycle.exit

land.lhs.true.i10.i:                              ; preds = %rcu_read_lock.exit.i
  %call1.i8.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8.i)
  %tobool.not.i9.i = icmp eq i32 %call1.i8.i, 0
  br i1 %tobool.not.i9.i, label %land.lhs.true.i10.i.keyring_detect_cycle.exit_crit_edge, label %land.lhs.true2.i12.i

land.lhs.true.i10.i.keyring_detect_cycle.exit_crit_edge: ; preds = %land.lhs.true.i10.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %keyring_detect_cycle.exit

land.lhs.true2.i12.i:                             ; preds = %land.lhs.true.i10.i
  %.b4.i11.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11.i, label %land.lhs.true2.i12.i.keyring_detect_cycle.exit_crit_edge, label %if.then.i13.i

land.lhs.true2.i12.i.keyring_detect_cycle.exit_crit_edge: ; preds = %land.lhs.true2.i12.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %keyring_detect_cycle.exit

if.then.i13.i:                                    ; preds = %land.lhs.true2.i12.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #19
  br label %keyring_detect_cycle.exit

keyring_detect_cycle.exit:                        ; preds = %if.then.i13.i, %land.lhs.true2.i12.i.keyring_detect_cycle.exit_crit_edge, %land.lhs.true.i10.i.keyring_detect_cycle.exit_crit_edge, %rcu_read_lock.exit.i.keyring_detect_cycle.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !79
  %21 = call i32 @llvm.read_register.i32(metadata !58) #19
  %and.i.i.i.i.i14.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i14.i to ptr
  %preempt_count.i.i.i.i15.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i15.i, align 4
  %sub.i.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i15.i, align 4
  call void @rcu_read_unlock_strict() #19
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  %25 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %result.i, align 8
  %27 = ptrtoint ptr %26 to i32
  %cmp3.i = icmp eq ptr %26, inttoptr (i32 -11 to ptr)
  %spec.select.i = select i1 %cmp3.i, i32 0, i32 %27
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ctx.i) #19
  br label %return

return:                                           ; preds = %keyring_detect_cycle.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %keyring_detect_cycle.exit ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__key_link(ptr noundef readonly %keyring, ptr noundef %key, ptr nocapture noundef %_edit) local_unnamed_addr #0 align 64 {
entry:
  %n.i = alloca %struct.key_notification, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %key, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %key, i32 1, i32 3, i32 1) #19
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %key, ptr %key, i32 1, ptr elementtype(i32) %key) #19, !srcloc !73
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !74

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.__key_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !71

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.__key_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__key_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %key, i32 noundef %.sink.i.i.i.i) #19
  br label %__key_get.exit

__key_get.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.__key_get.exit_crit_edge
  %2 = ptrtoint ptr %_edit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_edit, align 4
  %type.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 2
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type.i, align 8
  %cmp.i = icmp eq ptr %5, @key_type_keyring
  %6 = ptrtoint ptr %key to i32
  %or.i = or i32 %6, 2
  %7 = inttoptr i32 %or.i to ptr
  %retval.0.i = select i1 %cmp.i, ptr %7, ptr %key
  tail call void @assoc_array_insert_set_object(ptr noundef %3, ptr noundef %retval.0.i) #19
  %8 = ptrtoint ptr %_edit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_edit, align 4
  tail call void @assoc_array_apply_edit(ptr noundef %9) #19
  %10 = ptrtoint ptr %_edit to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %_edit, align 4
  %tobool.not.i = icmp eq ptr %key, null
  br i1 %tobool.not.i, label %__key_get.exit.key_serial.exit_crit_edge, label %cond.true.i

__key_get.exit.key_serial.exit_crit_edge:         ; preds = %__key_get.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %key_serial.exit

cond.true.i:                                      ; preds = %__key_get.exit
  call void @__sanitizer_cov_trace_pc() #21
  %serial.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 1
  %11 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %__key_get.exit.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %12, %cond.true.i ], [ 0, %__key_get.exit.key_serial.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %n.i) #19
  %13 = getelementptr inbounds %struct.watch_notification, ptr %n.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 2
  %16 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 258, ptr %n.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %13, align 4
  %tobool.not.i.i = icmp eq ptr %keyring, null
  br i1 %tobool.not.i.i, label %key_serial.exit.key_serial.exit.i_crit_edge, label %cond.true.i.i

key_serial.exit.key_serial.exit.i_crit_edge:      ; preds = %key_serial.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %key_serial.exit.i

cond.true.i.i:                                    ; preds = %key_serial.exit
  call void @__sanitizer_cov_trace_pc() #21
  %serial.i.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 1
  %18 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %serial.i.i, align 4
  br label %key_serial.exit.i

key_serial.exit.i:                                ; preds = %cond.true.i.i, %key_serial.exit.key_serial.exit.i_crit_edge
  %cond.i.i = phi i32 [ %19, %cond.true.i.i ], [ 0, %key_serial.exit.key_serial.exit.i_crit_edge ]
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond.i.i, ptr %14, align 4
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond.i, ptr %15, align 4
  %watchers.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 3
  %22 = ptrtoint ptr %watchers.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %watchers.i, align 4
  %tobool.not.i9.i = icmp eq ptr %23, null
  br i1 %tobool.not.i9.i, label %key_serial.exit.i.notify_key.exit_crit_edge, label %if.then.i.i, !prof !71

key_serial.exit.i.notify_key.exit_crit_edge:      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %notify_key.exit

if.then.i.i:                                      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i = zext i32 %cond.i.i to i64
  %24 = tail call i32 @llvm.read_register.i32(metadata !58) #19
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 99
  %28 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cred.i, align 16
  call void @__post_watch_notification(ptr noundef nonnull %23, ptr noundef nonnull %n.i, ptr noundef %29, i64 noundef %conv.i) #19
  br label %notify_key.exit

notify_key.exit:                                  ; preds = %if.then.i.i, %key_serial.exit.i.notify_key.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %n.i) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assoc_array_insert_set_object(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assoc_array_apply_edit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__key_link_end(ptr noundef %keyring, ptr nocapture noundef readonly %index_key, ptr noundef %edit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.body2, label %do.end5, !prof !74

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1388, 0\0A.popsection", ""() #19, !srcloc !83
  unreachable

do.end5:                                          ; preds = %entry
  %tobool6.not = icmp eq ptr %edit, null
  br i1 %tobool6.not, label %do.end5.if.end11_crit_edge, label %if.then7

do.end5.if.end11_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11

if.then7:                                         ; preds = %do.end5
  %dead_leaf = getelementptr inbounds %struct.assoc_array_edit, ptr %edit, i32 0, i32 6
  %2 = ptrtoint ptr %dead_leaf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dead_leaf, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %if.then9, label %if.then7.if.end10_crit_edge

if.then7.if.end10_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #21
  %datalen = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 13
  %4 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %datalen, align 2
  %conv = zext i16 %5 to i32
  %sub = add nsw i32 %conv, -4
  %call = tail call i32 @key_payload_reserve(ptr noundef %keyring, i32 noundef %sub) #19
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then7.if.end10_crit_edge
  tail call void @assoc_array_cancel_edit(ptr noundef nonnull %edit) #19
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %do.end5.if.end11_crit_edge
  %sem = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 4
  tail call void @up_write(ptr noundef %sem) #19
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type, align 4
  %cmp13 = icmp eq ptr %7, @key_type_keyring
  br i1 %cmp13, label %if.then15, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @mutex_unlock(ptr noundef nonnull @keyring_serialise_link_lock) #19
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @key_link(ptr noundef %keyring, ptr noundef %key) #0 align 64 {
entry:
  %edit = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %edit) #19
  %0 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16
  %type.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 16, i32 0, i32 2
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %type.i, align 8
  %cmp.not.i = icmp eq ptr %2, @key_type_keyring
  br i1 %cmp.not.i, label %if.end.i, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %error

if.end.i:                                         ; preds = %entry
  %sem.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 4
  tail call void @down_write(ptr noundef %sem.i) #19
  %type1.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 2
  %3 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type1.i, align 4
  %cmp2.i = icmp eq ptr %4, @key_type_keyring
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @mutex_lock_nested(ptr noundef nonnull @keyring_serialise_link_lock, i32 noundef 0) #19
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge
  %5 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 1
  %desc_len.i = getelementptr inbounds %struct.anon.97, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %desc_len.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %desc_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.i = icmp eq i16 %7, 0
  br i1 %cmp.i, label %do.body3.i, label %do.end27.i, !prof !74

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1302, 0\0A.popsection", ""() #19, !srcloc !81
  unreachable

do.end27.i:                                       ; preds = %if.end
  %8 = ptrtoint ptr %edit to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %edit, align 4
  %flags.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 15
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool28.not.i = icmp eq i32 %11, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %error_end.thread

if.end30.i:                                       ; preds = %do.end27.i
  %keys.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 17, i32 0, i32 0, i32 2
  %call31.i = tail call ptr @assoc_array_insert(ptr noundef %keys.i, ptr noundef nonnull @keyring_assoc_array_ops, ptr noundef %0, ptr noundef null) #19
  %cmp.i.i = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %__key_link_begin.exit, label %if.end35.i

if.end35.i:                                       ; preds = %if.end30.i
  %dead_leaf.i = getelementptr inbounds %struct.assoc_array_edit, ptr %call31.i, i32 0, i32 6
  %12 = ptrtoint ptr %dead_leaf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dead_leaf.i, align 4
  %tobool36.not.i = icmp eq ptr %13, null
  br i1 %tobool36.not.i, label %if.then37.i, label %if.end35.i.__key_link_begin.exit.thread46_crit_edge

if.end35.i.__key_link_begin.exit.thread46_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__key_link_begin.exit.thread46

if.then37.i:                                      ; preds = %if.end35.i
  %datalen.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 13
  %14 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %datalen.i, align 2
  %conv38.i = zext i16 %15 to i32
  %add.i = add nuw nsw i32 %conv38.i, 4
  %call39.i = tail call i32 @key_payload_reserve(ptr noundef %keyring, i32 noundef %add.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.i = icmp slt i32 %call39.i, 0
  br i1 %cmp40.i, label %error_cancel.i, label %if.then37.i.__key_link_begin.exit.thread46_crit_edge

if.then37.i.__key_link_begin.exit.thread46_crit_edge: ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__key_link_begin.exit.thread46

__key_link_begin.exit.thread46:                   ; preds = %if.then37.i.__key_link_begin.exit.thread46_crit_edge, %if.end35.i.__key_link_begin.exit.thread46_crit_edge
  %16 = ptrtoint ptr %edit to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call31.i, ptr %edit, align 4
  br label %if.end7

error_cancel.i:                                   ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @assoc_array_cancel_edit(ptr noundef %call31.i) #19
  br label %error_end

__key_link_begin.exit:                            ; preds = %if.end30.i
  %17 = ptrtoint ptr %call31.i to i32
  %cmp5 = icmp slt ptr %call31.i, null
  br i1 %cmp5, label %__key_link_begin.exit.error_end_crit_edge, label %__key_link_begin.exit.if.end7_crit_edge

__key_link_begin.exit.if.end7_crit_edge:          ; preds = %__key_link_begin.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end7

__key_link_begin.exit.error_end_crit_edge:        ; preds = %__key_link_begin.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %error_end

if.end7:                                          ; preds = %__key_link_begin.exit.if.end7_crit_edge, %__key_link_begin.exit.thread46
  %restrict_link.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 18
  %18 = ptrtoint ptr %restrict_link.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %restrict_link.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end7.if.end13_crit_edge, label %lor.lhs.false.i

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

lor.lhs.false.i:                                  ; preds = %if.end7
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool2.not.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end13_crit_edge, label %__key_link_check_restriction.exit

lor.lhs.false.i.if.end13_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

__key_link_check_restriction.exit:                ; preds = %lor.lhs.false.i
  %22 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %type1.i, align 8
  %24 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %key6.i = getelementptr inbounds %struct.key_restriction, ptr %19, i32 0, i32 1
  %25 = ptrtoint ptr %key6.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %key6.i, align 4
  %call.i = tail call i32 %21(ptr noundef %keyring, ptr noundef %23, ptr noundef %24, ptr noundef %26) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp eq i32 %call.i, 0
  br i1 %cmp10, label %__key_link_check_restriction.exit.if.end13_crit_edge, label %__key_link_check_restriction.exit.error_end_crit_edge

__key_link_check_restriction.exit.error_end_crit_edge: ; preds = %__key_link_check_restriction.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %error_end

__key_link_check_restriction.exit.if.end13_crit_edge: ; preds = %__key_link_check_restriction.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

if.end13:                                         ; preds = %__key_link_check_restriction.exit.if.end13_crit_edge, %lor.lhs.false.i.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  %call12 = tail call i32 @__key_link_check_live_key(ptr noundef %keyring, ptr noundef %key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp14 = icmp eq i32 %call12, 0
  br i1 %cmp14, label %if.then15, label %if.end13.error_end_crit_edge

if.end13.error_end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %error_end

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  call void @__key_link(ptr noundef %keyring, ptr noundef %key, ptr noundef nonnull %edit)
  br label %error_end

error_end:                                        ; preds = %if.then15, %if.end13.error_end_crit_edge, %__key_link_check_restriction.exit.error_end_crit_edge, %__key_link_begin.exit.error_end_crit_edge, %error_cancel.i
  %ret.1.ph = phi i32 [ %call.i, %__key_link_check_restriction.exit.error_end_crit_edge ], [ %call39.i, %error_cancel.i ], [ %call12, %if.end13.error_end_crit_edge ], [ 0, %if.then15 ], [ %17, %__key_link_begin.exit.error_end_crit_edge ]
  %27 = ptrtoint ptr %edit to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load ptr, ptr %edit, align 4
  %28 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %type1.i, align 4
  %cmp.i37 = icmp eq ptr %29, null
  br i1 %cmp.i37, label %error_end.do.body2.i_crit_edge, label %do.end5.i, !prof !74

error_end.do.body2.i_crit_edge:                   ; preds = %error_end
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body2.i

error_end.thread:                                 ; preds = %do.end27.i
  %30 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %type1.i, align 4
  %cmp.i3755 = icmp eq ptr %31, null
  br i1 %cmp.i3755, label %error_end.thread.do.body2.i_crit_edge, label %error_end.thread.if.end11.i_crit_edge, !prof !74

error_end.thread.if.end11.i_crit_edge:            ; preds = %error_end.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11.i

error_end.thread.do.body2.i_crit_edge:            ; preds = %error_end.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body2.i

do.body2.i:                                       ; preds = %error_end.thread.do.body2.i_crit_edge, %error_end.do.body2.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1388, 0\0A.popsection", ""() #19, !srcloc !83
  unreachable

do.end5.i:                                        ; preds = %error_end
  %tobool6.not.i = icmp eq ptr %.pr, null
  br i1 %tobool6.not.i, label %do.end5.i.if.end11.i_crit_edge, label %if.then7.i

do.end5.i.if.end11.i_crit_edge:                   ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11.i

if.then7.i:                                       ; preds = %do.end5.i
  %dead_leaf.i38 = getelementptr inbounds %struct.assoc_array_edit, ptr %.pr, i32 0, i32 6
  %32 = ptrtoint ptr %dead_leaf.i38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dead_leaf.i38, align 4
  %tobool8.not.i = icmp eq ptr %33, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.then7.i.if.end10.i_crit_edge

if.then7.i.if.end10.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #21
  %datalen.i39 = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 13
  %34 = ptrtoint ptr %datalen.i39 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %datalen.i39, align 2
  %conv.i = zext i16 %35 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %call.i40 = tail call i32 @key_payload_reserve(ptr noundef %keyring, i32 noundef %sub.i) #19
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.then7.i.if.end10.i_crit_edge
  tail call void @assoc_array_cancel_edit(ptr noundef nonnull %.pr) #19
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end10.i, %do.end5.i.if.end11.i_crit_edge, %error_end.thread.if.end11.i_crit_edge
  %ret.15662 = phi i32 [ %ret.1.ph, %if.end10.i ], [ %ret.1.ph, %do.end5.i.if.end11.i_crit_edge ], [ -128, %error_end.thread.if.end11.i_crit_edge ]
  tail call void @up_write(ptr noundef %sem.i) #19
  %36 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %type1.i, align 4
  %cmp13.i = icmp eq ptr %37, @key_type_keyring
  br i1 %cmp13.i, label %if.then15.i, label %if.end11.i.error_crit_edge

if.end11.i.error_crit_edge:                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %error

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @mutex_unlock(ptr noundef nonnull @keyring_serialise_link_lock) #19
  br label %error

error:                                            ; preds = %if.then15.i, %if.end11.i.error_crit_edge, %entry.error_crit_edge
  %ret.2 = phi i32 [ -20, %entry.error_crit_edge ], [ %ret.15662, %if.end11.i.error_crit_edge ], [ %ret.15662, %if.then15.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %edit) #19
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @key_unlink(ptr noundef %keyring, ptr noundef %key) #0 align 64 {
entry:
  %n.i.i = alloca %struct.key_notification, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 16, i32 0, i32 2
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 8
  %cmp.not.i = icmp eq ptr %1, @key_type_keyring
  br i1 %cmp.not.i, label %do.end7.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end7.i:                                        ; preds = %entry
  %sem.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 4
  tail call void @down_write(ptr noundef %sem.i) #19
  %keys.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 17, i32 0, i32 0, i32 2
  %2 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16
  %call.i = tail call ptr @assoc_array_delete(ptr noundef %keys.i, ptr noundef nonnull @keyring_assoc_array_ops, ptr noundef %2) #19
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %__key_unlink_begin.exit, label %if.end11.i

if.end11.i:                                       ; preds = %do.end7.i
  %tobool12.not.i = icmp eq ptr %call.i, null
  br i1 %tobool12.not.i, label %if.end11.i.__key_unlink_end.exit_crit_edge, label %if.then6

if.end11.i.__key_unlink_end.exit_crit_edge:       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__key_unlink_end.exit

__key_unlink_begin.exit:                          ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #21
  %3 = ptrtoint ptr %call.i to i32
  br label %__key_unlink_end.exit

if.then6:                                         ; preds = %if.end11.i
  tail call void @assoc_array_apply_edit(ptr noundef nonnull %call.i) #19
  %tobool.not.i.i = icmp eq ptr %key, null
  br i1 %tobool.not.i.i, label %if.then6.key_serial.exit.i_crit_edge, label %cond.true.i.i

if.then6.key_serial.exit.i_crit_edge:             ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %key_serial.exit.i

cond.true.i.i:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  %serial.i.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 1
  %4 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %serial.i.i, align 4
  br label %key_serial.exit.i

key_serial.exit.i:                                ; preds = %cond.true.i.i, %if.then6.key_serial.exit.i_crit_edge
  %cond.i.i = phi i32 [ %5, %cond.true.i.i ], [ 0, %if.then6.key_serial.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %n.i.i) #19
  %6 = getelementptr inbounds %struct.watch_notification, ptr %n.i.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.key_notification, ptr %n.i.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.key_notification, ptr %n.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %n.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 259, ptr %n.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %6, align 4
  %tobool.not.i.i.i = icmp eq ptr %keyring, null
  br i1 %tobool.not.i.i.i, label %key_serial.exit.i.key_serial.exit.i.i_crit_edge, label %cond.true.i.i.i

key_serial.exit.i.key_serial.exit.i.i_crit_edge:  ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %key_serial.exit.i.i

cond.true.i.i.i:                                  ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %serial.i.i.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 1
  %11 = ptrtoint ptr %serial.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %serial.i.i.i, align 4
  br label %key_serial.exit.i.i

key_serial.exit.i.i:                              ; preds = %cond.true.i.i.i, %key_serial.exit.i.key_serial.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %12, %cond.true.i.i.i ], [ 0, %key_serial.exit.i.key_serial.exit.i.i_crit_edge ]
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond.i.i.i, ptr %7, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond.i.i, ptr %8, align 4
  %watchers.i.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 3
  %15 = ptrtoint ptr %watchers.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %watchers.i.i, align 4
  %tobool.not.i9.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i9.i.i, label %key_serial.exit.i.i.__key_unlink.exit_crit_edge, label %if.then.i.i.i, !prof !71

key_serial.exit.i.i.__key_unlink.exit_crit_edge:  ; preds = %key_serial.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__key_unlink.exit

if.then.i.i.i:                                    ; preds = %key_serial.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i = zext i32 %cond.i.i.i to i64
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #19
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
  call void @__post_watch_notification(ptr noundef nonnull %16, ptr noundef nonnull %n.i.i, ptr noundef %22, i64 noundef %conv.i.i) #19
  br label %__key_unlink.exit

__key_unlink.exit:                                ; preds = %if.then.i.i.i, %key_serial.exit.i.i.__key_unlink.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %n.i.i) #19
  %datalen.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 13
  %23 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %datalen.i, align 2
  %conv.i = zext i16 %24 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %call1.i = call i32 @key_payload_reserve(ptr noundef %keyring, i32 noundef %sub.i) #19
  br label %__key_unlink_end.exit

__key_unlink_end.exit:                            ; preds = %__key_unlink.exit, %__key_unlink_begin.exit, %if.end11.i.__key_unlink_end.exit_crit_edge
  %retval.0.i1829 = phi i32 [ 0, %__key_unlink.exit ], [ %3, %__key_unlink_begin.exit ], [ -2, %if.end11.i.__key_unlink_end.exit_crit_edge ]
  call void @up_write(ptr noundef %sem.i) #19
  br label %cleanup

cleanup:                                          ; preds = %__key_unlink_end.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i1829, %__key_unlink_end.exit ], [ -20, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @key_move(ptr noundef %key, ptr noundef %from_keyring, ptr noundef %to_keyring, i32 noundef %flags) #0 align 64 {
entry:
  %n.i.i = alloca %struct.key_notification, align 4
  %to_edit = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %to_edit) #19
  %0 = ptrtoint ptr %to_edit to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %to_edit, align 4
  %cmp = icmp eq ptr %from_keyring, %to_keyring
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end6:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16
  %type.i = getelementptr inbounds %struct.key, ptr %from_keyring, i32 0, i32 16, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 8
  %cmp.not.i = icmp eq ptr %3, @key_type_keyring
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %do.end6.cleanup_crit_edge

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %do.end6
  %type1.i = getelementptr inbounds %struct.key, ptr %to_keyring, i32 0, i32 16, i32 0, i32 2
  %4 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type1.i, align 8
  %cmp2.not.i = icmp eq ptr %5, @key_type_keyring
  br i1 %cmp2.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %cmp3.i = icmp ult ptr %from_keyring, %to_keyring
  %l_keyring.u_keyring.i = select i1 %cmp3.i, ptr %from_keyring, ptr %to_keyring
  %u_keyring.l_keyring.i = select i1 %cmp3.i, ptr %to_keyring, ptr %from_keyring
  %sem6.i = getelementptr inbounds %struct.key, ptr %l_keyring.u_keyring.i, i32 0, i32 4
  tail call void @down_write(ptr noundef %sem6.i) #19
  %sem7.i = getelementptr inbounds %struct.key, ptr %u_keyring.l_keyring.i, i32 0, i32 4
  tail call void @down_write_nested(ptr noundef %sem7.i, i32 noundef 1) #19
  %type9.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 2
  %6 = ptrtoint ptr %type9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type9.i, align 4
  %cmp10.i = icmp eq ptr %7, @key_type_keyring
  br i1 %cmp10.i, label %if.then11.i, label %if.end.i.do.end7.i_crit_edge

if.end.i.do.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end7.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @mutex_lock_nested(ptr noundef nonnull @keyring_serialise_link_lock, i32 noundef 0) #19
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then11.i, %if.end.i.do.end7.i_crit_edge
  %keys.i = getelementptr inbounds %struct.key, ptr %from_keyring, i32 0, i32 17, i32 0, i32 0, i32 2
  %call.i = tail call ptr @assoc_array_delete(ptr noundef %keys.i, ptr noundef nonnull @keyring_assoc_array_ops, ptr noundef %1) #19
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %__key_unlink_begin.exit, label %if.end11.i

if.end11.i:                                       ; preds = %do.end7.i
  %tobool12.not.i = icmp eq ptr %call.i, null
  br i1 %tobool12.not.i, label %if.end11.i.error_crit_edge, label %if.end11.i.if.end13_crit_edge

if.end11.i.if.end13_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

if.end11.i.error_crit_edge:                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %error

__key_unlink_begin.exit:                          ; preds = %do.end7.i
  %8 = ptrtoint ptr %call.i to i32
  %cmp11 = icmp slt ptr %call.i, null
  br i1 %cmp11, label %__key_unlink_begin.exit.error_crit_edge, label %__key_unlink_begin.exit.if.end13_crit_edge

__key_unlink_begin.exit.if.end13_crit_edge:       ; preds = %__key_unlink_begin.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

__key_unlink_begin.exit.error_crit_edge:          ; preds = %__key_unlink_begin.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %error

if.end13:                                         ; preds = %__key_unlink_begin.exit.if.end13_crit_edge, %if.end11.i.if.end13_crit_edge
  %from_edit.090 = phi ptr [ null, %__key_unlink_begin.exit.if.end13_crit_edge ], [ %call.i, %if.end11.i.if.end13_crit_edge ]
  %9 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 1
  %desc_len.i = getelementptr inbounds %struct.anon.97, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %desc_len.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %desc_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.i = icmp eq i16 %11, 0
  br i1 %cmp.i, label %do.body3.i, label %do.end27.i, !prof !74

do.body3.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1302, 0\0A.popsection", ""() #19, !srcloc !81
  unreachable

do.end27.i:                                       ; preds = %if.end13
  %12 = ptrtoint ptr %to_edit to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %to_edit, align 4
  %flags.i = getelementptr inbounds %struct.key, ptr %to_keyring, i32 0, i32 15
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool28.not.i = icmp eq i32 %15, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %error.thread

if.end30.i:                                       ; preds = %do.end27.i
  %keys.i57 = getelementptr inbounds %struct.key, ptr %to_keyring, i32 0, i32 17, i32 0, i32 0, i32 2
  %call31.i = tail call ptr @assoc_array_insert(ptr noundef %keys.i57, ptr noundef nonnull @keyring_assoc_array_ops, ptr noundef %1, ptr noundef null) #19
  %cmp.i.i58 = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i58, label %__key_link_begin.exit, label %if.end35.i

if.end35.i:                                       ; preds = %if.end30.i
  %dead_leaf.i = getelementptr inbounds %struct.assoc_array_edit, ptr %call31.i, i32 0, i32 6
  %16 = ptrtoint ptr %dead_leaf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dead_leaf.i, align 4
  %tobool36.not.i = icmp eq ptr %17, null
  br i1 %tobool36.not.i, label %if.then37.i, label %if.end35.i.__key_link_begin.exit.thread93_crit_edge

if.end35.i.__key_link_begin.exit.thread93_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__key_link_begin.exit.thread93

if.then37.i:                                      ; preds = %if.end35.i
  %datalen.i = getelementptr inbounds %struct.key, ptr %to_keyring, i32 0, i32 13
  %18 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %datalen.i, align 2
  %conv38.i = zext i16 %19 to i32
  %add.i = add nuw nsw i32 %conv38.i, 4
  %call39.i = tail call i32 @key_payload_reserve(ptr noundef %to_keyring, i32 noundef %add.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.i = icmp slt i32 %call39.i, 0
  br i1 %cmp40.i, label %error_cancel.i, label %if.then37.i.__key_link_begin.exit.thread93_crit_edge

if.then37.i.__key_link_begin.exit.thread93_crit_edge: ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__key_link_begin.exit.thread93

__key_link_begin.exit.thread93:                   ; preds = %if.then37.i.__key_link_begin.exit.thread93_crit_edge, %if.end35.i.__key_link_begin.exit.thread93_crit_edge
  %20 = ptrtoint ptr %to_edit to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call31.i, ptr %to_edit, align 4
  br label %if.end17

error_cancel.i:                                   ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @assoc_array_cancel_edit(ptr noundef %call31.i) #19
  br label %error

__key_link_begin.exit:                            ; preds = %if.end30.i
  %21 = ptrtoint ptr %call31.i to i32
  %cmp15 = icmp slt ptr %call31.i, null
  br i1 %cmp15, label %__key_link_begin.exit.error_crit_edge, label %__key_link_begin.exit.if.end17_crit_edge

__key_link_begin.exit.if.end17_crit_edge:         ; preds = %__key_link_begin.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

__key_link_begin.exit.error_crit_edge:            ; preds = %__key_link_begin.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %error

if.end17:                                         ; preds = %__key_link_begin.exit.if.end17_crit_edge, %__key_link_begin.exit.thread93
  %22 = ptrtoint ptr %to_edit to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %to_edit, align 4
  %dead_leaf = getelementptr inbounds %struct.assoc_array_edit, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %dead_leaf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dead_leaf, align 4
  %tobool.not = icmp eq ptr %25, null
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool18.not, %tobool.not
  br i1 %or.cond, label %if.end20, label %if.end17.error_crit_edge

if.end17.error_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #21
  br label %error

if.end20:                                         ; preds = %if.end17
  %restrict_link.i = getelementptr inbounds %struct.key, ptr %to_keyring, i32 0, i32 18
  %26 = ptrtoint ptr %restrict_link.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %restrict_link.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end20.if.end24_crit_edge, label %lor.lhs.false.i60

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

lor.lhs.false.i60:                                ; preds = %if.end20
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool2.not.i = icmp eq ptr %29, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i60.if.end24_crit_edge, label %__key_link_check_restriction.exit

lor.lhs.false.i60.if.end24_crit_edge:             ; preds = %lor.lhs.false.i60
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

__key_link_check_restriction.exit:                ; preds = %lor.lhs.false.i60
  %30 = ptrtoint ptr %type9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %type9.i, align 8
  %32 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %key6.i = getelementptr inbounds %struct.key_restriction, ptr %27, i32 0, i32 1
  %33 = ptrtoint ptr %key6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %key6.i, align 4
  %call.i62 = tail call i32 %29(ptr noundef %to_keyring, ptr noundef %31, ptr noundef %32, ptr noundef %34) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp22 = icmp slt i32 %call.i62, 0
  br i1 %cmp22, label %__key_link_check_restriction.exit.error_crit_edge, label %__key_link_check_restriction.exit.if.end24_crit_edge

__key_link_check_restriction.exit.if.end24_crit_edge: ; preds = %__key_link_check_restriction.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

__key_link_check_restriction.exit.error_crit_edge: ; preds = %__key_link_check_restriction.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %error

if.end24:                                         ; preds = %__key_link_check_restriction.exit.if.end24_crit_edge, %lor.lhs.false.i60.if.end24_crit_edge, %if.end20.if.end24_crit_edge
  %call25 = tail call i32 @__key_link_check_live_key(ptr noundef %to_keyring, ptr noundef %key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.error_crit_edge, label %if.end28

if.end24.error_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #21
  br label %error

if.end28:                                         ; preds = %if.end24
  tail call void @assoc_array_apply_edit(ptr noundef %from_edit.090) #19
  %tobool.not.i.i = icmp eq ptr %key, null
  br i1 %tobool.not.i.i, label %if.end28.key_serial.exit.i_crit_edge, label %cond.true.i.i

if.end28.key_serial.exit.i_crit_edge:             ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #21
  br label %key_serial.exit.i

cond.true.i.i:                                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #21
  %serial.i.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 1
  %35 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %serial.i.i, align 4
  br label %key_serial.exit.i

key_serial.exit.i:                                ; preds = %cond.true.i.i, %if.end28.key_serial.exit.i_crit_edge
  %cond.i.i = phi i32 [ %36, %cond.true.i.i ], [ 0, %if.end28.key_serial.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %n.i.i) #19
  %37 = getelementptr inbounds %struct.watch_notification, ptr %n.i.i, i32 0, i32 1
  %38 = getelementptr inbounds %struct.key_notification, ptr %n.i.i, i32 0, i32 1
  %39 = getelementptr inbounds %struct.key_notification, ptr %n.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %n.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 259, ptr %n.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 16, ptr %37, align 4
  %tobool.not.i.i.i = icmp eq ptr %from_keyring, null
  br i1 %tobool.not.i.i.i, label %key_serial.exit.i.key_serial.exit.i.i_crit_edge, label %cond.true.i.i.i

key_serial.exit.i.key_serial.exit.i.i_crit_edge:  ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %key_serial.exit.i.i

cond.true.i.i.i:                                  ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %serial.i.i.i = getelementptr inbounds %struct.key, ptr %from_keyring, i32 0, i32 1
  %42 = ptrtoint ptr %serial.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %serial.i.i.i, align 4
  br label %key_serial.exit.i.i

key_serial.exit.i.i:                              ; preds = %cond.true.i.i.i, %key_serial.exit.i.key_serial.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %43, %cond.true.i.i.i ], [ 0, %key_serial.exit.i.key_serial.exit.i.i_crit_edge ]
  %44 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %cond.i.i.i, ptr %38, align 4
  %45 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %cond.i.i, ptr %39, align 4
  %watchers.i.i = getelementptr inbounds %struct.key, ptr %from_keyring, i32 0, i32 3
  %46 = ptrtoint ptr %watchers.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %watchers.i.i, align 4
  %tobool.not.i9.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i9.i.i, label %key_serial.exit.i.i.__key_unlink.exit_crit_edge, label %if.then.i.i.i, !prof !71

key_serial.exit.i.i.__key_unlink.exit_crit_edge:  ; preds = %key_serial.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__key_unlink.exit

if.then.i.i.i:                                    ; preds = %key_serial.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i = zext i32 %cond.i.i.i to i64
  %48 = tail call i32 @llvm.read_register.i32(metadata !58) #19
  %and.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 99
  %52 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cred.i.i, align 16
  call void @__post_watch_notification(ptr noundef nonnull %47, ptr noundef nonnull %n.i.i, ptr noundef %53, i64 noundef %conv.i.i) #19
  br label %__key_unlink.exit

__key_unlink.exit:                                ; preds = %if.then.i.i.i, %key_serial.exit.i.i.__key_unlink.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %n.i.i) #19
  %datalen.i65 = getelementptr inbounds %struct.key, ptr %from_keyring, i32 0, i32 13
  %54 = ptrtoint ptr %datalen.i65 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %datalen.i65, align 2
  %conv.i = zext i16 %55 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %call1.i = call i32 @key_payload_reserve(ptr noundef %from_keyring, i32 noundef %sub.i) #19
  call void @__key_link(ptr noundef %to_keyring, ptr noundef %key, ptr noundef nonnull %to_edit)
  br label %error

error:                                            ; preds = %__key_unlink.exit, %if.end24.error_crit_edge, %__key_link_check_restriction.exit.error_crit_edge, %if.end17.error_crit_edge, %__key_link_begin.exit.error_crit_edge, %error_cancel.i, %__key_unlink_begin.exit.error_crit_edge, %if.end11.i.error_crit_edge
  %from_edit.1.ph = phi ptr [ %from_edit.090, %error_cancel.i ], [ null, %if.end11.i.error_crit_edge ], [ %from_edit.090, %if.end17.error_crit_edge ], [ null, %__key_unlink.exit ], [ %from_edit.090, %if.end24.error_crit_edge ], [ %from_edit.090, %__key_link_check_restriction.exit.error_crit_edge ], [ %from_edit.090, %__key_link_begin.exit.error_crit_edge ], [ null, %__key_unlink_begin.exit.error_crit_edge ]
  %ret.0.ph = phi i32 [ %call39.i, %error_cancel.i ], [ -2, %if.end11.i.error_crit_edge ], [ -17, %if.end17.error_crit_edge ], [ %call25, %__key_unlink.exit ], [ %call25, %if.end24.error_crit_edge ], [ %call.i62, %__key_link_check_restriction.exit.error_crit_edge ], [ %21, %__key_link_begin.exit.error_crit_edge ], [ %8, %__key_unlink_begin.exit.error_crit_edge ]
  %56 = ptrtoint ptr %to_edit to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr = load ptr, ptr %to_edit, align 4
  %57 = ptrtoint ptr %type9.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %type9.i, align 4
  %cmp.i67 = icmp eq ptr %58, null
  br i1 %cmp.i67, label %error.do.body2.i68_crit_edge, label %do.end5.i, !prof !74

error.do.body2.i68_crit_edge:                     ; preds = %error
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body2.i68

error.thread:                                     ; preds = %do.end27.i
  %59 = ptrtoint ptr %type9.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %type9.i, align 4
  %cmp.i67101 = icmp eq ptr %60, null
  br i1 %cmp.i67101, label %error.thread.do.body2.i68_crit_edge, label %error.thread.if.end11.i75_crit_edge, !prof !74

error.thread.if.end11.i75_crit_edge:              ; preds = %error.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11.i75

error.thread.do.body2.i68_crit_edge:              ; preds = %error.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body2.i68

do.body2.i68:                                     ; preds = %error.thread.do.body2.i68_crit_edge, %error.do.body2.i68_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyring.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1388, 0\0A.popsection", ""() #19, !srcloc !83
  unreachable

do.end5.i:                                        ; preds = %error
  %tobool6.not.i = icmp eq ptr %.pr, null
  br i1 %tobool6.not.i, label %do.end5.i.if.end11.i75_crit_edge, label %if.then7.i

do.end5.i.if.end11.i75_crit_edge:                 ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11.i75

if.then7.i:                                       ; preds = %do.end5.i
  %dead_leaf.i69 = getelementptr inbounds %struct.assoc_array_edit, ptr %.pr, i32 0, i32 6
  %61 = ptrtoint ptr %dead_leaf.i69 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dead_leaf.i69, align 4
  %tobool8.not.i = icmp eq ptr %62, null
  br i1 %tobool8.not.i, label %if.then9.i74, label %if.then7.i.if.end10.i_crit_edge

if.then7.i.if.end10.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10.i

if.then9.i74:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #21
  %datalen.i70 = getelementptr inbounds %struct.key, ptr %to_keyring, i32 0, i32 13
  %63 = ptrtoint ptr %datalen.i70 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %datalen.i70, align 2
  %conv.i71 = zext i16 %64 to i32
  %sub.i72 = add nsw i32 %conv.i71, -4
  %call.i73 = call i32 @key_payload_reserve(ptr noundef %to_keyring, i32 noundef %sub.i72) #19
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i74, %if.then7.i.if.end10.i_crit_edge
  call void @assoc_array_cancel_edit(ptr noundef nonnull %.pr) #19
  br label %if.end11.i75

if.end11.i75:                                     ; preds = %if.end10.i, %do.end5.i.if.end11.i75_crit_edge, %error.thread.if.end11.i75_crit_edge
  %from_edit.1102111 = phi ptr [ %from_edit.1.ph, %if.end10.i ], [ %from_edit.1.ph, %do.end5.i.if.end11.i75_crit_edge ], [ %from_edit.090, %error.thread.if.end11.i75_crit_edge ]
  %ret.0103110 = phi i32 [ %ret.0.ph, %if.end10.i ], [ %ret.0.ph, %do.end5.i.if.end11.i75_crit_edge ], [ -128, %error.thread.if.end11.i75_crit_edge ]
  %sem.i = getelementptr inbounds %struct.key, ptr %to_keyring, i32 0, i32 4
  call void @up_write(ptr noundef %sem.i) #19
  %65 = ptrtoint ptr %type9.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %type9.i, align 4
  %cmp13.i = icmp eq ptr %66, @key_type_keyring
  br i1 %cmp13.i, label %if.then15.i, label %if.end11.i75.__key_link_end.exit_crit_edge

if.end11.i75.__key_link_end.exit_crit_edge:       ; preds = %if.end11.i75
  call void @__sanitizer_cov_trace_pc() #21
  br label %__key_link_end.exit

if.then15.i:                                      ; preds = %if.end11.i75
  call void @__sanitizer_cov_trace_pc() #21
  call void @mutex_unlock(ptr noundef nonnull @keyring_serialise_link_lock) #19
  br label %__key_link_end.exit

__key_link_end.exit:                              ; preds = %if.then15.i, %if.end11.i75.__key_link_end.exit_crit_edge
  %tobool.not.i76 = icmp eq ptr %from_edit.1102111, null
  br i1 %tobool.not.i76, label %__key_link_end.exit.__key_unlink_end.exit_crit_edge, label %if.then.i

__key_link_end.exit.__key_unlink_end.exit_crit_edge: ; preds = %__key_link_end.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %__key_unlink_end.exit

if.then.i:                                        ; preds = %__key_link_end.exit
  call void @__sanitizer_cov_trace_pc() #21
  call void @assoc_array_cancel_edit(ptr noundef nonnull %from_edit.1102111) #19
  br label %__key_unlink_end.exit

__key_unlink_end.exit:                            ; preds = %if.then.i, %__key_link_end.exit.__key_unlink_end.exit_crit_edge
  %sem.i77 = getelementptr inbounds %struct.key, ptr %from_keyring, i32 0, i32 4
  call void @up_write(ptr noundef %sem.i77) #19
  br label %cleanup

cleanup:                                          ; preds = %__key_unlink_end.exit, %lor.lhs.false.i.cleanup_crit_edge, %do.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.0103110, %__key_unlink_end.exit ], [ -20, %lor.lhs.false.i.cleanup_crit_edge ], [ -20, %do.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %to_edit) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyring_clear(ptr noundef %keyring) #0 align 64 {
entry:
  %n.i = alloca %struct.key_notification, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 16, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 8
  %cmp.not = icmp eq ptr %1, @key_type_keyring
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %sem = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 4
  tail call void @down_write(ptr noundef %sem) #19
  %keys = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 17, i32 0, i32 0, i32 2
  %call = tail call ptr @assoc_array_clear(ptr noundef %keys, ptr noundef nonnull @keyring_assoc_array_ops) #19
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %2 = ptrtoint ptr %call to i32
  br label %if.end7

if.else:                                          ; preds = %if.end
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else.if.end5_crit_edge, label %if.then4

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @assoc_array_apply_edit(ptr noundef nonnull %call) #19
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else.if.end5_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %n.i) #19
  %3 = getelementptr inbounds %struct.watch_notification, ptr %n.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 2
  %6 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 260, ptr %n.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %3, align 4
  %tobool.not.i.i = icmp eq ptr %keyring, null
  br i1 %tobool.not.i.i, label %if.end5.key_serial.exit.i_crit_edge, label %cond.true.i.i

if.end5.key_serial.exit.i_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %key_serial.exit.i

cond.true.i.i:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  %serial.i.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 1
  %8 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %serial.i.i, align 4
  br label %key_serial.exit.i

key_serial.exit.i:                                ; preds = %cond.true.i.i, %if.end5.key_serial.exit.i_crit_edge
  %cond.i.i = phi i32 [ %9, %cond.true.i.i ], [ 0, %if.end5.key_serial.exit.i_crit_edge ]
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond.i.i, ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %5, align 4
  %watchers.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 3
  %12 = ptrtoint ptr %watchers.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %watchers.i, align 4
  %tobool.not.i9.i = icmp eq ptr %13, null
  br i1 %tobool.not.i9.i, label %key_serial.exit.i.notify_key.exit_crit_edge, label %if.then.i.i, !prof !71

key_serial.exit.i.notify_key.exit_crit_edge:      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %notify_key.exit

if.then.i.i:                                      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i = zext i32 %cond.i.i to i64
  %14 = tail call i32 @llvm.read_register.i32(metadata !58) #19
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 99
  %18 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cred.i, align 16
  call void @__post_watch_notification(ptr noundef nonnull %13, ptr noundef nonnull %n.i, ptr noundef %19, i64 noundef %conv.i) #19
  br label %notify_key.exit

notify_key.exit:                                  ; preds = %if.then.i.i, %key_serial.exit.i.notify_key.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %n.i) #19
  %call6 = call i32 @key_payload_reserve(ptr noundef %keyring, i32 noundef 0) #19
  br label %if.end7

if.end7:                                          ; preds = %notify_key.exit, %if.then2
  %ret.0 = phi i32 [ %2, %if.then2 ], [ 0, %notify_key.exit ]
  call void @up_write(ptr noundef %sem) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end7 ], [ -20, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @assoc_array_clear(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @keyring_gc(ptr noundef %keyring, i64 noundef %limit) local_unnamed_addr #0 align 64 {
entry:
  %limit.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %limit.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %limit, ptr %limit.addr, align 8
  %flags = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 15
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !58) #19
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !78
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #19
  %call.i = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #19
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %keys = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 17, i32 0, i32 0, i32 2
  %call = call i32 @assoc_array_iterate(ptr noundef %keys, ptr noundef nonnull @keyring_gc_check_iterator, ptr noundef nonnull %limit.addr) #19
  %call.i12 = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i12, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i15

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit

land.lhs.true.i15:                                ; preds = %rcu_read_lock.exit
  %call1.i13 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool.not.i14, label %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i17

land.lhs.true.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit

land.lhs.true2.i17:                               ; preds = %land.lhs.true.i15
  %.b4.i16 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16, label %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, label %if.then.i18

land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit

if.then.i18:                                      ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #19
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i18, %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !79
  %7 = call i32 @llvm.read_register.i32(metadata !58) #19
  %and.i.i.i.i.i19 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i19 to ptr
  %preempt_count.i.i.i.i20 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i20, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i20, align 4
  call void @rcu_read_unlock_strict() #19
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %do_gc, label %rcu_read_unlock.exit.cleanup_crit_edge

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do_gc:                                            ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #21
  %sem = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 4
  call void @down_write(ptr noundef %sem) #19
  %call5 = call i32 @assoc_array_gc(ptr noundef %keys, ptr noundef nonnull @keyring_assoc_array_ops, ptr noundef nonnull @keyring_gc_select_iterator, ptr noundef nonnull %limit.addr) #19
  call void @up_write(ptr noundef %sem) #19
  br label %cleanup

cleanup:                                          ; preds = %do_gc, %rcu_read_unlock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @assoc_array_iterate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @keyring_gc_check_iterator(ptr noundef %object, ptr nocapture noundef readonly %iterator_data) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  %and.i = and i32 %0, -4
  %1 = inttoptr i32 %and.i to ptr
  %flags.i = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i2 = and i32 %3, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2)
  %tobool.not.i = icmp eq i32 %and.i2, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.key_is_dead.exit_crit_edge

entry.key_is_dead.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %key_is_dead.exit

lor.lhs.false.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %iterator_data to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %iterator_data, align 8
  %6 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %8)
  %cmp.i = icmp slt i64 %8, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %5)
  %cmp1.not.i = icmp sgt i64 %8, %5
  %or.cond.i = or i1 %cmp.i, %cmp1.not.i
  br i1 %or.cond.i, label %lor.rhs.i, label %lor.lhs.false.i.key_is_dead.exit_crit_edge

lor.lhs.false.i.key_is_dead.exit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %key_is_dead.exit

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  %domain_tag.i = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 3
  %9 = ptrtoint ptr %domain_tag.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %domain_tag.i, align 4
  %removed.i = getelementptr inbounds %struct.key_tag, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %removed.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %removed.i, align 4, !range !75
  %13 = zext i8 %12 to i32
  br label %key_is_dead.exit

key_is_dead.exit:                                 ; preds = %lor.rhs.i, %lor.lhs.false.i.key_is_dead.exit_crit_edge, %entry.key_is_dead.exit_crit_edge
  %14 = phi i32 [ 1, %entry.key_is_dead.exit_crit_edge ], [ %13, %lor.rhs.i ], [ 1, %lor.lhs.false.i.key_is_dead.exit_crit_edge ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @assoc_array_gc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @keyring_gc_select_iterator(ptr noundef %object, ptr nocapture noundef readonly %iterator_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  %and.i = and i32 %0, -4
  %1 = inttoptr i32 %and.i to ptr
  %flags.i = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i5 = and i32 %3, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5)
  %tobool.not.i = icmp eq i32 %and.i5, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %iterator_data to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %iterator_data, align 8
  %6 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %8)
  %cmp.i = icmp slt i64 %8, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %5)
  %cmp1.not.i = icmp sgt i64 %8, %5
  %or.cond.i = or i1 %cmp.i, %cmp1.not.i
  br i1 %or.cond.i, label %key_is_dead.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

key_is_dead.exit:                                 ; preds = %lor.lhs.false.i
  %domain_tag.i = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 3
  %9 = ptrtoint ptr %domain_tag.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %domain_tag.i, align 4
  %removed.i = getelementptr inbounds %struct.key_tag, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %removed.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %removed.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.i.not = icmp eq i8 %12, 0
  br i1 %tobool2.i.not, label %if.end, label %key_is_dead.exit.cleanup_crit_edge

key_is_dead.exit.cleanup_crit_edge:               ; preds = %key_is_dead.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %key_is_dead.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i6 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i6, label %if.end.cleanup_crit_edge, label %cond.true.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cond.true.i:                                      ; preds = %if.end
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #19
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #19, !srcloc !73
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !74

cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %cond.true.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !71

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef %.sink.i.i.i.i.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %key_is_dead.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %15 = phi i1 [ false, %key_is_dead.exit.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ true, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ true, %if.end15.sink.split.i.i.i.i.i ], [ false, %entry.cleanup_crit_edge ], [ false, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @keyring_restriction_gc(ptr noundef %keyring, ptr noundef readnone %dead_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dead_type, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %restrict_link = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 18
  %0 = ptrtoint ptr %restrict_link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %restrict_link, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %keytype = getelementptr inbounds %struct.key_restriction, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %keytype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %keytype, align 4
  %cmp.not = icmp eq ptr %3, %dead_type
  br i1 %cmp.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #21
  %sem = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 4
  tail call void @down_write(ptr noundef %sem) #19
  %4 = ptrtoint ptr %restrict_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %restrict_link, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @restrict_link_reject, ptr %5, align 4
  %key = getelementptr inbounds %struct.key_restriction, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %key, align 4
  tail call void @key_put(ptr noundef %8) #19
  %9 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %key, align 4
  %keytype7 = getelementptr inbounds %struct.key_restriction, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %keytype7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %keytype7, align 4
  tail call void @up_write(ptr noundef %sem) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @assoc_array_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @keyring_read_iterator(ptr noundef %object, ptr nocapture noundef %data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.keyring_read_iterator_context, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %4 = ptrtoint ptr %object to i32
  %and.i = and i32 %4, -4
  %5 = inttoptr i32 %and.i to ptr
  %serial = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %serial, align 4
  %buffer = getelementptr inbounds %struct.keyring_read_iterator_context, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %incdec.ptr = getelementptr i32, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %buffer, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %9, align 4
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  %add = add i32 %12, 4
  store i32 %add, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @keyring_compare_object(ptr noundef %object, ptr nocapture noundef readonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  %and.i = and i32 %0, -4
  %1 = inttoptr i32 %and.i to ptr
  %type = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 8
  %type1 = getelementptr inbounds %struct.keyring_index_key, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type1, align 4
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %domain_tag = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 3
  %6 = ptrtoint ptr %domain_tag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain_tag, align 4
  %domain_tag2 = getelementptr inbounds %struct.keyring_index_key, ptr %data, i32 0, i32 3
  %8 = ptrtoint ptr %domain_tag2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %domain_tag2, align 4
  %cmp3 = icmp eq ptr %7, %9
  br i1 %cmp3, label %land.lhs.true4, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %10 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 1
  %desc_len = getelementptr inbounds %struct.anon.97, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %desc_len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %desc_len, align 2
  %13 = getelementptr inbounds %struct.keyring_index_key, ptr %data, i32 0, i32 1
  %desc_len5 = getelementptr inbounds %struct.anon.97, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %desc_len5 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %desc_len5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %15)
  %cmp7 = icmp eq i16 %12, %15
  br i1 %cmp7, label %land.rhs, label %land.lhs.true4.land.end_crit_edge

land.lhs.true4.land.end_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21
  %conv6 = zext i16 %12 to i32
  %description = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 4
  %16 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %description, align 8
  %description9 = getelementptr inbounds %struct.keyring_index_key, ptr %data, i32 0, i32 4
  %18 = ptrtoint ptr %description9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %description9, align 4
  %bcmp = tail call i32 @bcmp(ptr %17, ptr %19, i32 %conv6) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp13 = icmp eq i32 %bcmp, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %20 = phi i1 [ false, %land.lhs.true4.land.end_crit_edge ], [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %cmp13, %land.rhs ]
  ret i1 %20
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__post_watch_notification(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @keyring_get_key_chunk(ptr nocapture noundef readonly %data, i32 noundef %level) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.keyring_index_key, ptr %data, i32 0, i32 1
  %desc_len1 = getelementptr inbounds %struct.anon.97, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %desc_len1 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %desc_len1, align 2
  %conv = zext i16 %2 to i32
  %div = sdiv i32 %level, 32
  %3 = zext i32 %div to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %div, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %0, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %type = getelementptr inbounds %struct.keyring_index_key, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %domain_tag = getelementptr inbounds %struct.keyring_index_key, ptr %data, i32 0, i32 3
  %11 = ptrtoint ptr %domain_tag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %domain_tag, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %2)
  %cmp = icmp ult i16 %2, 3
  br i1 %cmp, label %sw.default.cleanup_crit_edge, label %do.body

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %2)
  %cmp8 = icmp ugt i16 %2, 6
  %sub7 = add nsw i32 %conv, -2
  %spec.select = select i1 %cmp8, i32 4, i32 %sub7
  %description = getelementptr inbounds %struct.keyring_index_key, ptr %data, i32 0, i32 4
  %14 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %description, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 2
  %sub = shl nsw i32 %div, 2
  %mul = add nsw i32 %sub, -16
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 %mul
  %16 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr6, align 1
  %conv12 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %cmp13 = icmp sgt i32 %spec.select, 1
  br i1 %cmp13, label %do.body.1, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body.1:                                        ; preds = %do.body
  %incdec.ptr = getelementptr i8, ptr %add.ptr6, i32 1
  %shl.1 = shl nuw nsw i32 %conv12, 8
  %18 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr, align 1
  %conv12.1 = zext i8 %19 to i32
  %or.1 = or i32 %shl.1, %conv12.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select)
  %cmp13.1.not = icmp eq i32 %spec.select, 2
  br i1 %cmp13.1.not, label %do.body.1.cleanup_crit_edge, label %do.body.2

do.body.1.cleanup_crit_edge:                      ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body.2:                                        ; preds = %do.body.1
  %incdec.ptr.1 = getelementptr i8, ptr %incdec.ptr, i32 1
  %shl.2 = shl nuw nsw i32 %or.1, 8
  %20 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr.1, align 1
  %conv12.2 = zext i8 %21 to i32
  %or.2 = or i32 %shl.2, %conv12.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.select)
  %cmp13.2 = icmp sgt i32 %spec.select, 3
  br i1 %cmp13.2, label %do.body.3, label %do.body.2.cleanup_crit_edge

do.body.2.cleanup_crit_edge:                      ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body.3:                                        ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #21
  %incdec.ptr.2 = getelementptr i8, ptr %incdec.ptr.1, i32 1
  %shl.3 = shl nuw i32 %or.2, 8
  %22 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr.2, align 1
  %conv12.3 = zext i8 %23 to i32
  %or.3 = or i32 %shl.3, %conv12.3
  br label %cleanup

cleanup:                                          ; preds = %do.body.3, %do.body.2.cleanup_crit_edge, %do.body.1.cleanup_crit_edge, %do.body.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ %13, %sw.bb4 ], [ %10, %sw.bb3 ], [ %7, %sw.bb2 ], [ %5, %sw.bb ], [ 0, %sw.default.cleanup_crit_edge ], [ %conv12, %do.body.cleanup_crit_edge ], [ %or.1, %do.body.1.cleanup_crit_edge ], [ %or.2, %do.body.2.cleanup_crit_edge ], [ %or.3, %do.body.3 ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @keyring_get_object_key_chunk(ptr noundef %object, i32 noundef %level) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  %and.i = and i32 %0, -4
  %1 = inttoptr i32 %and.i to ptr
  %2 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 1
  %desc_len1.i = getelementptr inbounds %struct.anon.97, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %desc_len1.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %desc_len1.i, align 2
  %conv.i = zext i16 %4 to i32
  %div.i = sdiv i32 %level, 32
  %5 = zext i32 %div.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %div.i, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %6 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  br label %keyring_get_key_chunk.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %2, align 4
  br label %keyring_get_key_chunk.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %type.i = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 2
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type.i, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %keyring_get_key_chunk.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %domain_tag.i = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 3
  %14 = ptrtoint ptr %domain_tag.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %domain_tag.i, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %keyring_get_key_chunk.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %4)
  %cmp.i = icmp ult i16 %4, 3
  br i1 %cmp.i, label %sw.default.i.keyring_get_key_chunk.exit_crit_edge, label %do.body.i

sw.default.i.keyring_get_key_chunk.exit_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %keyring_get_key_chunk.exit

do.body.i:                                        ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %4)
  %cmp8.i = icmp ugt i16 %4, 6
  %sub7.i = add nsw i32 %conv.i, -2
  %spec.select = select i1 %cmp8.i, i32 4, i32 %sub7.i
  %description.i = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 4
  %17 = ptrtoint ptr %description.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %description.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 2
  %sub.i = shl nsw i32 %div.i, 2
  %mul.i = add nsw i32 %sub.i, -16
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %19 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr6.i, align 1
  %conv12.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %cmp13.i = icmp sgt i32 %spec.select, 1
  br i1 %cmp13.i, label %do.body.i.1, label %do.body.i.keyring_get_key_chunk.exit_crit_edge

do.body.i.keyring_get_key_chunk.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %keyring_get_key_chunk.exit

do.body.i.1:                                      ; preds = %do.body.i
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr6.i, i32 1
  %shl.i.1 = shl nuw nsw i32 %conv12.i, 8
  %21 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr.i, align 1
  %conv12.i.1 = zext i8 %22 to i32
  %or.i.1 = or i32 %shl.i.1, %conv12.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select)
  %cmp13.i.1.not = icmp eq i32 %spec.select, 2
  br i1 %cmp13.i.1.not, label %do.body.i.1.keyring_get_key_chunk.exit_crit_edge, label %do.body.i.2

do.body.i.1.keyring_get_key_chunk.exit_crit_edge: ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %keyring_get_key_chunk.exit

do.body.i.2:                                      ; preds = %do.body.i.1
  %incdec.ptr.i.1 = getelementptr i8, ptr %incdec.ptr.i, i32 1
  %shl.i.2 = shl nuw nsw i32 %or.i.1, 8
  %23 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %incdec.ptr.i.1, align 1
  %conv12.i.2 = zext i8 %24 to i32
  %or.i.2 = or i32 %shl.i.2, %conv12.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.select)
  %cmp13.i.2 = icmp sgt i32 %spec.select, 3
  br i1 %cmp13.i.2, label %do.body.i.3, label %do.body.i.2.keyring_get_key_chunk.exit_crit_edge

do.body.i.2.keyring_get_key_chunk.exit_crit_edge: ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #21
  br label %keyring_get_key_chunk.exit

do.body.i.3:                                      ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #21
  %incdec.ptr.i.2 = getelementptr i8, ptr %incdec.ptr.i.1, i32 1
  %shl.i.3 = shl nuw i32 %or.i.2, 8
  %25 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %incdec.ptr.i.2, align 1
  %conv12.i.3 = zext i8 %26 to i32
  %or.i.3 = or i32 %shl.i.3, %conv12.i.3
  br label %keyring_get_key_chunk.exit

keyring_get_key_chunk.exit:                       ; preds = %do.body.i.3, %do.body.i.2.keyring_get_key_chunk.exit_crit_edge, %do.body.i.1.keyring_get_key_chunk.exit_crit_edge, %do.body.i.keyring_get_key_chunk.exit_crit_edge, %sw.default.i.keyring_get_key_chunk.exit_crit_edge, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi i32 [ %16, %sw.bb4.i ], [ %13, %sw.bb3.i ], [ %10, %sw.bb2.i ], [ %8, %sw.bb.i ], [ 0, %sw.default.i.keyring_get_key_chunk.exit_crit_edge ], [ %conv12.i, %do.body.i.keyring_get_key_chunk.exit_crit_edge ], [ %or.i.1, %do.body.i.1.keyring_get_key_chunk.exit_crit_edge ], [ %or.i.2, %do.body.i.2.keyring_get_key_chunk.exit_crit_edge ], [ %or.i.3, %do.body.i.3 ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @keyring_diff_objects(ptr noundef %object, ptr nocapture noundef readonly %data) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  %and.i = and i32 %0, -4
  %1 = inttoptr i32 %and.i to ptr
  %2 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp eq i32 %4, %6
  br i1 %cmp.not, label %if.end, label %entry.differ_crit_edge

entry.differ_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %differ

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = getelementptr inbounds %struct.keyring_index_key, ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %12)
  %cmp3.not = icmp eq i32 %9, %12
  br i1 %cmp3.not, label %if.end5, label %if.end.differ_crit_edge

if.end.differ_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %differ

if.end5:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 2
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %type, align 4
  %15 = ptrtoint ptr %14 to i32
  %type7 = getelementptr inbounds %struct.keyring_index_key, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %type7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type7, align 4
  %18 = ptrtoint ptr %17 to i32
  %cmp9.not = icmp eq ptr %14, %17
  br i1 %cmp9.not, label %if.end11, label %if.end5.differ_crit_edge

if.end5.differ_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %differ

if.end11:                                         ; preds = %if.end5
  %domain_tag = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 3
  %19 = ptrtoint ptr %domain_tag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %domain_tag, align 4
  %21 = ptrtoint ptr %20 to i32
  %domain_tag13 = getelementptr inbounds %struct.keyring_index_key, ptr %data, i32 0, i32 3
  %22 = ptrtoint ptr %domain_tag13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %domain_tag13, align 4
  %24 = ptrtoint ptr %23 to i32
  %cmp15.not = icmp eq ptr %20, %23
  br i1 %cmp15.not, label %if.end17, label %if.end11.differ_crit_edge

if.end11.differ_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %differ

if.end17:                                         ; preds = %if.end11
  %desc_len = getelementptr inbounds %struct.anon.97, ptr %7, i32 0, i32 1
  %25 = ptrtoint ptr %desc_len to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %desc_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %26)
  %cmp19 = icmp ult i16 %26, 3
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %for.body.lr.ph

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end17
  %conv24 = zext i16 %26 to i32
  %description = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 4
  %27 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %description, align 4
  %description28 = getelementptr inbounds %struct.keyring_index_key, ptr %data, i32 0, i32 4
  %29 = ptrtoint ptr %description28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %description28, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.081 = phi i32 [ 2, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %28, i32 %i.081
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %add.ptr, align 1
  %add.ptr29 = getelementptr i8, ptr %30, i32 %i.081
  %33 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr29, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %34)
  %cmp32.not = icmp eq i8 %32, %34
  br i1 %cmp32.not, label %for.inc, label %differ_plus_i

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc, %conv24
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

differ_plus_i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %conv30 = zext i8 %34 to i32
  %conv27 = zext i8 %32 to i32
  %add36 = shl i32 %i.081, 3
  %phi.bo = add i32 %add36, 128
  br label %differ

differ:                                           ; preds = %differ_plus_i, %if.end11.differ_crit_edge, %if.end5.differ_crit_edge, %if.end.differ_crit_edge, %entry.differ_crit_edge
  %seg_a.0 = phi i32 [ %4, %entry.differ_crit_edge ], [ %9, %if.end.differ_crit_edge ], [ %15, %if.end5.differ_crit_edge ], [ %21, %if.end11.differ_crit_edge ], [ %conv27, %differ_plus_i ]
  %seg_b.0 = phi i32 [ %6, %entry.differ_crit_edge ], [ %12, %if.end.differ_crit_edge ], [ %18, %if.end5.differ_crit_edge ], [ %24, %if.end11.differ_crit_edge ], [ %conv30, %differ_plus_i ]
  %level.0 = phi i32 [ 0, %entry.differ_crit_edge ], [ 32, %if.end.differ_crit_edge ], [ 64, %if.end5.differ_crit_edge ], [ 96, %if.end11.differ_crit_edge ], [ %phi.bo, %differ_plus_i ]
  %xor37 = xor i32 %seg_b.0, %seg_a.0
  %35 = tail call i32 @llvm.cttz.i32(i32 %xor37, i1 false) #19, !range !84
  %add39 = add i32 %35, %level.0
  br label %cleanup

cleanup:                                          ; preds = %differ, %for.inc.cleanup_crit_edge, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ %add39, %differ ], [ -1, %if.end17.cleanup_crit_edge ], [ -1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyring_free_object(ptr noundef %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  %and.i = and i32 %0, -4
  %1 = inttoptr i32 %and.i to ptr
  tail call void @key_put(ptr noundef %1) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @keyring_detect_cycle_iterator(ptr noundef %object, ptr nocapture noundef %iterator_data) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  %and.i = and i32 %0, -4
  %1 = inttoptr i32 %and.i to ptr
  %raw_data = getelementptr inbounds %struct.keyring_search_context, ptr %iterator_data, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %raw_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %raw_data, align 4
  %cmp.not = icmp eq ptr %3, %1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %result = getelementptr inbounds %struct.keyring_search_context, ptr %iterator_data, i32 0, i32 7
  %4 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -35 to ptr), ptr %result, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @assoc_array_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #16

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #19

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #20 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #20 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #21 = { nomerge }
attributes #22 = { nobuiltin }
attributes #23 = { nobuiltin nounwind }
attributes #24 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !52, !54, !56, !57}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/keys/keyring.c", i32 85, i32 11}
!2 = !{ptr @key_type_keyring, !3, !"key_type_keyring", i1 false, i1 false}
!3 = !{!"../security/keys/keyring.c", i32 84, i32 17}
!4 = !{ptr @__ksymtab_key_type_keyring, !5, !"__ksymtab_key_type_keyring", i1 false, i1 false}
!5 = !{!"../security/keys/keyring.c", i32 95, i32 1}
!6 = !{ptr @key_set_index_key.default_domain_tag, !7, !"default_domain_tag", i1 false, i1 false}
!7 = !{!"../security/keys/keyring.c", i32 216, i32 24}
!8 = !{ptr @__ksymtab_keyring_alloc, !9, !"__ksymtab_keyring_alloc", i1 false, i1 false}
!9 = !{!"../security/keys/keyring.c", i32 538, i32 1}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../security/keys/keyring.c", i32 946, i32 13}
!12 = !{ptr @__ksymtab_keyring_search, !13, !"__ksymtab_keyring_search", i1 false, i1 false}
!13 = !{!"../security/keys/keyring.c", i32 971, i32 1}
!14 = !{ptr @__ksymtab_keyring_restrict, !15, !"__ksymtab_keyring_restrict", i1 false, i1 false}
!15 = !{!"../security/keys/keyring.c", i32 1082, i32 1}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../security/keys/keyring.c", i32 1143, i32 30}
!18 = !{ptr @__ksymtab_key_link, !19, !"__ksymtab_key_link", i1 false, i1 false}
!19 = !{!"../security/keys/keyring.c", i32 1466, i32 1}
!20 = !{ptr @__ksymtab_key_unlink, !21, !"__ksymtab_key_unlink", i1 false, i1 false}
!21 = !{!"../security/keys/keyring.c", i32 1563, i32 1}
!22 = !{ptr @__ksymtab_key_move, !23, !"__ksymtab_key_move", i1 false, i1 false}
!23 = !{!"../security/keys/keyring.c", i32 1637, i32 1}
!24 = !{ptr @__ksymtab_keyring_clear, !25, !"__ksymtab_keyring_clear", i1 false, i1 false}
!25 = !{!"../security/keys/keyring.c", i32 1671, i32 1}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/keys/keyring.c", i32 52, i32 8}
!28 = !{ptr @keyring_name_lock, !27, !"keyring_name_lock", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../security/keys/keyring.c", i32 109, i32 30}
!31 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../security/keys/keyring.c", i32 442, i32 15}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../security/keys/keyring.c", i32 446, i32 18}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../security/keys/keyring.c", i32 448, i32 16}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!39 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!43 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../security/keys/keyring.c", i32 991, i32 8}
!46 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @keyring_serialise_restrict_sem, !45, !"keyring_serialise_restrict_sem", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../security/keys/internal.h", i32 199, i32 51}
!50 = !{ptr @keyring_assoc_array_ops, !51, !"keyring_assoc_array_ops", i1 false, i1 false}
!51 = !{!"../security/keys/keyring.c", i32 395, i32 37}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../security/keys/internal.h", i32 210, i32 38}
!54 = !{ptr @.str.10, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../security/keys/keyring.c", i32 101, i32 8}
!56 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @keyring_serialise_link_lock, !55, !"keyring_serialise_link_lock", i1 false, i1 false}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2152207139}
!69 = !{i64 2148555717}
!70 = !{i64 2148470181, i64 2148470213, i64 2148470242, i64 2148470276, i64 2148470307, i64 2148470330}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 2149601687}
!73 = !{i64 2148467716, i64 2148467748, i64 2148467777, i64 2148467811, i64 2148467842, i64 2148467865}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{i8 0, i8 2}
!76 = !{i64 2155132032, i64 2155132520, i64 2155132069, i64 2155132125, i64 2155132159, i64 2155132183, i64 2155132224, i64 2155132245, i64 2155132273, i64 2155132307}
!77 = !{i64 2155145807, i64 2155146295, i64 2155145844, i64 2155145900, i64 2155145934, i64 2155145958, i64 2155145999, i64 2155146020, i64 2155146048, i64 2155146082}
!78 = !{i64 2149293700}
!79 = !{i64 2149293966}
!80 = !{i64 951699, i64 951723, i64 951744, i64 951761, i64 951778}
!81 = !{i64 2155190962, i64 2155191451, i64 2155190999, i64 2155191055, i64 2155191089, i64 2155191113, i64 2155191154, i64 2155191175, i64 2155191203, i64 2155191237}
!82 = !{i64 2155192587, i64 2155193076, i64 2155192624, i64 2155192680, i64 2155192714, i64 2155192738, i64 2155192779, i64 2155192800, i64 2155192828, i64 2155192862}
!83 = !{i64 2155197501, i64 2155197990, i64 2155197538, i64 2155197594, i64 2155197628, i64 2155197652, i64 2155197693, i64 2155197714, i64 2155197742, i64 2155197776}
!84 = !{i32 0, i32 33}
