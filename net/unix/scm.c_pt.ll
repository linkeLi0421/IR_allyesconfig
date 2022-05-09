; ModuleID = '/llk/IR_all_yes/net/unix/scm.c_pt.bc'
source_filename = "../net/unix/scm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+unix_tot_inflight\22, \22a\22\09"
module asm "\09.weak\09__crc_unix_tot_inflight\09\09\09\09"
module asm "\09.long\09__crc_unix_tot_inflight\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_tot_inflight:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_tot_inflight\22\09\09\09\09\09"
module asm "__kstrtabns_unix_tot_inflight:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gc_inflight_list\22, \22a\22\09"
module asm "\09.weak\09__crc_gc_inflight_list\09\09\09\09"
module asm "\09.long\09__crc_gc_inflight_list\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gc_inflight_list:\09\09\09\09\09"
module asm "\09.asciz \09\22gc_inflight_list\22\09\09\09\09\09"
module asm "__kstrtabns_gc_inflight_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unix_gc_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_unix_gc_lock\09\09\09\09"
module asm "\09.long\09__crc_unix_gc_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_gc_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_gc_lock\22\09\09\09\09\09"
module asm "__kstrtabns_unix_gc_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unix_get_socket\22, \22a\22\09"
module asm "\09.weak\09__crc_unix_get_socket\09\09\09\09"
module asm "\09.long\09__crc_unix_get_socket\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_get_socket:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_get_socket\22\09\09\09\09\09"
module asm "__kstrtabns_unix_get_socket:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unix_attach_fds\22, \22a\22\09"
module asm "\09.weak\09__crc_unix_attach_fds\09\09\09\09"
module asm "\09.long\09__crc_unix_attach_fds\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_attach_fds:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_attach_fds\22\09\09\09\09\09"
module asm "__kstrtabns_unix_attach_fds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unix_detach_fds\22, \22a\22\09"
module asm "\09.weak\09__crc_unix_detach_fds\09\09\09\09"
module asm "\09.long\09__crc_unix_detach_fds\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_detach_fds:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_detach_fds\22\09\09\09\09\09"
module asm "__kstrtabns_unix_detach_fds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unix_destruct_scm\22, \22a\22\09"
module asm "\09.weak\09__crc_unix_destruct_scm\09\09\09\09"
module asm "\09.long\09__crc_unix_destruct_scm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_destruct_scm:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_destruct_scm\22\09\09\09\09\09"
module asm "__kstrtabns_unix_destruct_scm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.unix_sock = type { %struct.sock, ptr, %struct.path, %struct.mutex, %struct.mutex, ptr, %struct.list_head, %struct.atomic_t, %struct.spinlock, i32, [60 x i8], %struct.socket_wq, %struct.wait_queue_entry, %struct.scm_stat, ptr, [100 x i8] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.2, %union.anon.4, %union.anon.5, i16, i8, i8, i32, %union.anon.7, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon.2 = type { i64 }
%union.anon.4 = type { i32 }
%union.anon.5 = type { i32 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.121 = type { ptr }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.scm_stat = type { %struct.atomic_t }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.85, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.85 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.36 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.36 = type { %struct.callback_head }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.scm_cookie = type { ptr, ptr, %struct.scm_creds, i32 }
%struct.scm_creds = type { i32, %struct.kuid_t, %struct.kgid_t }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
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
%struct.scm_fp_list = type { i16, i16, ptr, [253 x ptr] }

@unix_tot_inflight = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_unix_tot_inflight = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_tot_inflight = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_tot_inflight = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_tot_inflight to i32), ptr @__kstrtab_unix_tot_inflight, ptr @__kstrtabns_unix_tot_inflight }, section "___ksymtab+unix_tot_inflight", align 4
@gc_inflight_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @gc_inflight_list, ptr @gc_inflight_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_gc_inflight_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_gc_inflight_list = external dso_local constant [0 x i8], align 1
@__ksymtab_gc_inflight_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gc_inflight_list to i32), ptr @__kstrtab_gc_inflight_list, ptr @__kstrtabns_gc_inflight_list }, section "___ksymtab+gc_inflight_list", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unix_gc_lock\00", [19 x i8] zeroinitializer }, align 32
@unix_gc_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_unix_gc_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_gc_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_gc_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_gc_lock to i32), ptr @__kstrtab_unix_gc_lock, ptr @__kstrtabns_unix_gc_lock }, section "___ksymtab+unix_gc_lock", align 4
@__kstrtab_unix_get_socket = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_get_socket = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_get_socket = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_get_socket to i32), ptr @__kstrtab_unix_get_socket, ptr @__kstrtabns_unix_get_socket }, section "___ksymtab+unix_get_socket", align 4
@__kstrtab_unix_attach_fds = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_attach_fds = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_attach_fds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_attach_fds to i32), ptr @__kstrtab_unix_attach_fds, ptr @__kstrtabns_unix_attach_fds }, section "___ksymtab+unix_attach_fds", align 4
@__kstrtab_unix_detach_fds = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_detach_fds = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_detach_fds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_detach_fds to i32), ptr @__kstrtab_unix_detach_fds, ptr @__kstrtabns_unix_detach_fds }, section "___ksymtab+unix_detach_fds", align 4
@__kstrtab_unix_destruct_scm = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_destruct_scm = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_destruct_scm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_destruct_scm to i32), ptr @__kstrtab_unix_destruct_scm, ptr @__kstrtabns_unix_destruct_scm }, section "___ksymtab+unix_destruct_scm", align 4
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"unix_tot_inflight\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 15, i32 14 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"gc_inflight_list\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 18, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"unix_gc_lock\00", align 1
@___asan_gen_.11 = private constant [18 x i8] c"../net/unix/scm.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 21, i32 1 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_gc_inflight_list, ptr @__ksymtab_unix_attach_fds, ptr @__ksymtab_unix_destruct_scm, ptr @__ksymtab_unix_detach_fds, ptr @__ksymtab_unix_gc_lock, ptr @__ksymtab_unix_get_socket, ptr @__ksymtab_unix_tot_inflight, ptr @unix_tot_inflight, ptr @gc_inflight_list, ptr @.str, ptr @unix_gc_lock], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_tot_inflight to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_inflight_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_gc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @unix_get_socket(ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %4)
  %cmp = icmp eq i16 %4, -16384
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %5 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_mode, align 8
  %and2 = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %sk = getelementptr i8, ptr %1, i32 -240
  %7 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk, align 16
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %if.then.if.end13_crit_edge, label %land.lhs.true5

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true5:                                   ; preds = %if.then
  %ops = getelementptr i8, ptr %1, i32 -236
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %land.lhs.true5.if.end13_crit_edge, label %land.lhs.true7

land.lhs.true5.if.end13_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true7:                                   ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp9 = icmp eq i32 %12, 1
  %spec.select = select i1 %cmp9, ptr %8, ptr null
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call12 = tail call ptr @io_uring_get_socket(ptr noundef %filp) #5
  br label %if.end13

if.end13:                                         ; preds = %if.else, %land.lhs.true7, %land.lhs.true5.if.end13_crit_edge, %if.then.if.end13_crit_edge
  %u_sock.1 = phi ptr [ %call12, %if.else ], [ null, %land.lhs.true5.if.end13_crit_edge ], [ null, %if.then.if.end13_crit_edge ], [ %spec.select, %land.lhs.true7 ]
  ret ptr %u_sock.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @io_uring_get_socket(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unix_inflight(ptr nocapture noundef %user, ptr noundef %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %4)
  %cmp.i = icmp eq i16 %4, -16384
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.unix_get_socket.exit_crit_edge

entry.unix_get_socket.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %unix_get_socket.exit

land.lhs.true.i:                                  ; preds = %entry
  %f_mode.i = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 8
  %5 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_mode.i, align 8
  %and2.i = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.unix_get_socket.exit_crit_edge

land.lhs.true.i.unix_get_socket.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unix_get_socket.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %sk.i = getelementptr i8, ptr %1, i32 -240
  %7 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk.i, align 16
  %tobool4.not.i = icmp eq ptr %8, null
  br i1 %tobool4.not.i, label %if.then.i.unix_get_socket.exit.thread_crit_edge, label %land.lhs.true5.i

if.then.i.unix_get_socket.exit.thread_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unix_get_socket.exit.thread

land.lhs.true5.i:                                 ; preds = %if.then.i
  %ops.i = getelementptr i8, ptr %1, i32 -236
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %tobool6.not.i = icmp eq ptr %10, null
  br i1 %tobool6.not.i, label %land.lhs.true5.i.unix_get_socket.exit.thread_crit_edge, label %land.lhs.true7.i

land.lhs.true5.i.unix_get_socket.exit.thread_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unix_get_socket.exit.thread

land.lhs.true7.i:                                 ; preds = %land.lhs.true5.i
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp9.i = icmp eq i32 %12, 1
  br i1 %cmp9.i, label %unix_get_socket.exit.thread58, label %land.lhs.true7.i.unix_get_socket.exit.thread_crit_edge

land.lhs.true7.i.unix_get_socket.exit.thread_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unix_get_socket.exit.thread

unix_get_socket.exit.thread58:                    ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_lock(ptr noundef nonnull @unix_gc_lock) #5
  br label %if.then

unix_get_socket.exit.thread:                      ; preds = %land.lhs.true7.i.unix_get_socket.exit.thread_crit_edge, %land.lhs.true5.i.unix_get_socket.exit.thread_crit_edge, %if.then.i.unix_get_socket.exit.thread_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @unix_gc_lock) #5
  br label %if.end47

unix_get_socket.exit:                             ; preds = %land.lhs.true.i.unix_get_socket.exit_crit_edge, %entry.unix_get_socket.exit_crit_edge
  %call12.i = tail call ptr @io_uring_get_socket(ptr noundef %fp) #5
  tail call void @_raw_spin_lock(ptr noundef nonnull @unix_gc_lock) #5
  %tobool.not = icmp eq ptr %call12.i, null
  br i1 %tobool.not, label %unix_get_socket.exit.if.end47_crit_edge, label %unix_get_socket.exit.if.then_crit_edge

unix_get_socket.exit.if.then_crit_edge:           ; preds = %unix_get_socket.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

unix_get_socket.exit.if.end47_crit_edge:          ; preds = %unix_get_socket.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then:                                          ; preds = %unix_get_socket.exit.if.then_crit_edge, %unix_get_socket.exit.thread58
  %u_sock.1.i61 = phi ptr [ %8, %unix_get_socket.exit.thread58 ], [ %call12.i, %unix_get_socket.exit.if.then_crit_edge ]
  %inflight = getelementptr inbounds %struct.unix_sock, ptr %u_sock.1.i61, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %inflight, i32 1, i32 3, i32 1) #5
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight, ptr %inflight, i32 1, ptr elementtype(i32) %inflight) #5, !srcloc !34
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i.i, 1
  %link = getelementptr inbounds %struct.unix_sock, ptr %u_sock.1.i61, i32 0, i32 6
  %14 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %link, align 4
  %cmp.i52.not = icmp eq ptr %15, %link
  br i1 %cmp, label %do.body, label %do.body17

do.body:                                          ; preds = %if.then
  br i1 %cmp.i52.not, label %do.end15, label %do.body10, !prof !36

do.body10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/unix/scm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 58, 0\0A.popsection", ""() #5, !srcloc !37
  unreachable

do.end15:                                         ; preds = %do.body
  %16 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gc_inflight_list, i32 0, i32 1), align 4
  %call.i.i53 = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %16, ptr noundef nonnull @gc_inflight_list) #5
  br i1 %call.i.i53, label %if.end.i.i, label %do.end15.do.body42_crit_edge

do.end15.do.body42_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body42

if.end.i.i:                                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %link, ptr getelementptr inbounds (%struct.list_head, ptr @gc_inflight_list, i32 0, i32 1), align 4
  %17 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @gc_inflight_list, ptr %link, align 4
  %prev3.i.i = getelementptr inbounds %struct.unix_sock, ptr %u_sock.1.i61, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %link, ptr %16, align 4
  br label %do.body42

do.body17:                                        ; preds = %if.then
  br i1 %cmp.i52.not, label %do.body28, label %do.body17.do.body42_crit_edge, !prof !38

do.body17.do.body42_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body42

do.body28:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/unix/scm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 61, 0\0A.popsection", ""() #5, !srcloc !39
  unreachable

do.body42:                                        ; preds = %do.body17.do.body42_crit_edge, %if.end.i.i, %do.end15.do.body42_crit_edge
  %20 = load i32, ptr @unix_tot_inflight, align 4
  %add = add i32 %20, 1
  store volatile i32 %add, ptr @unix_tot_inflight, align 4
  br label %if.end47

if.end47:                                         ; preds = %do.body42, %unix_get_socket.exit.if.end47_crit_edge, %unix_get_socket.exit.thread
  %unix_inflight = getelementptr inbounds %struct.user_struct, ptr %user, i32 0, i32 2
  %21 = ptrtoint ptr %unix_inflight to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %unix_inflight, align 8
  %inc = add i32 %22, 1
  store i32 %inc, ptr %unix_inflight, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @unix_gc_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unix_notinflight(ptr nocapture noundef %user, ptr noundef %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %4)
  %cmp.i = icmp eq i16 %4, -16384
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.unix_get_socket.exit_crit_edge

entry.unix_get_socket.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %unix_get_socket.exit

land.lhs.true.i:                                  ; preds = %entry
  %f_mode.i = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 8
  %5 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_mode.i, align 8
  %and2.i = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.unix_get_socket.exit_crit_edge

land.lhs.true.i.unix_get_socket.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unix_get_socket.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %sk.i = getelementptr i8, ptr %1, i32 -240
  %7 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk.i, align 16
  %tobool4.not.i = icmp eq ptr %8, null
  br i1 %tobool4.not.i, label %if.then.i.unix_get_socket.exit.thread_crit_edge, label %land.lhs.true5.i

if.then.i.unix_get_socket.exit.thread_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unix_get_socket.exit.thread

land.lhs.true5.i:                                 ; preds = %if.then.i
  %ops.i = getelementptr i8, ptr %1, i32 -236
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %tobool6.not.i = icmp eq ptr %10, null
  br i1 %tobool6.not.i, label %land.lhs.true5.i.unix_get_socket.exit.thread_crit_edge, label %land.lhs.true7.i

land.lhs.true5.i.unix_get_socket.exit.thread_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unix_get_socket.exit.thread

land.lhs.true7.i:                                 ; preds = %land.lhs.true5.i
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp9.i = icmp eq i32 %12, 1
  br i1 %cmp9.i, label %unix_get_socket.exit.thread57, label %land.lhs.true7.i.unix_get_socket.exit.thread_crit_edge

land.lhs.true7.i.unix_get_socket.exit.thread_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unix_get_socket.exit.thread

unix_get_socket.exit.thread57:                    ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_lock(ptr noundef nonnull @unix_gc_lock) #5
  br label %if.then

unix_get_socket.exit.thread:                      ; preds = %land.lhs.true7.i.unix_get_socket.exit.thread_crit_edge, %land.lhs.true5.i.unix_get_socket.exit.thread_crit_edge, %if.then.i.unix_get_socket.exit.thread_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @unix_gc_lock) #5
  br label %if.end47

unix_get_socket.exit:                             ; preds = %land.lhs.true.i.unix_get_socket.exit_crit_edge, %entry.unix_get_socket.exit_crit_edge
  %call12.i = tail call ptr @io_uring_get_socket(ptr noundef %fp) #5
  tail call void @_raw_spin_lock(ptr noundef nonnull @unix_gc_lock) #5
  %tobool.not = icmp eq ptr %call12.i, null
  br i1 %tobool.not, label %unix_get_socket.exit.if.end47_crit_edge, label %unix_get_socket.exit.if.then_crit_edge

unix_get_socket.exit.if.then_crit_edge:           ; preds = %unix_get_socket.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

unix_get_socket.exit.if.end47_crit_edge:          ; preds = %unix_get_socket.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then:                                          ; preds = %unix_get_socket.exit.if.then_crit_edge, %unix_get_socket.exit.thread57
  %u_sock.1.i60 = phi ptr [ %8, %unix_get_socket.exit.thread57 ], [ %call12.i, %unix_get_socket.exit.if.then_crit_edge ]
  %inflight = getelementptr inbounds %struct.unix_sock, ptr %u_sock.1.i60, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inflight, i32 noundef 4) #5
  %13 = ptrtoint ptr %inflight to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %inflight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not = icmp eq i32 %14, 0
  br i1 %tobool3.not, label %do.body8, label %do.body14, !prof !38

do.body8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/unix/scm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #5, !srcloc !40
  unreachable

do.body14:                                        ; preds = %if.then
  %link = getelementptr inbounds %struct.unix_sock, ptr %u_sock.1.i60, i32 0, i32 6
  %15 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %link, align 4
  %cmp.i53.not = icmp eq ptr %16, %link
  br i1 %cmp.i53.not, label %do.body24, label %do.end32, !prof !38

do.body24:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/unix/scm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 80, 0\0A.popsection", ""() #5, !srcloc !41
  unreachable

do.end32:                                         ; preds = %do.body14
  %call.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %inflight, i32 1, i32 3, i32 1) #5
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight, ptr %inflight, i32 1, ptr elementtype(i32) %inflight) #5, !srcloc !43
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then35, label %do.end32.do.body42_crit_edge

do.end32.do.body42_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body42

if.then35:                                        ; preds = %do.end32
  %call.i.i54 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link) #5
  br i1 %call.i.i54, label %if.end.i.i, label %if.then35.list_del_init.exit_crit_edge

if.then35.list_del_init.exit_crit_edge:           ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.unix_sock, ptr %u_sock.1.i60, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then35.list_del_init.exit_crit_edge
  %24 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %link, ptr %link, align 4
  %prev.i3.i = getelementptr inbounds %struct.unix_sock, ptr %u_sock.1.i60, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %link, ptr %prev.i3.i, align 4
  br label %do.body42

do.body42:                                        ; preds = %list_del_init.exit, %do.end32.do.body42_crit_edge
  %26 = load i32, ptr @unix_tot_inflight, align 4
  %sub = add i32 %26, -1
  store volatile i32 %sub, ptr @unix_tot_inflight, align 4
  br label %if.end47

if.end47:                                         ; preds = %do.body42, %unix_get_socket.exit.if.end47_crit_edge, %unix_get_socket.exit.thread
  %unix_inflight = getelementptr inbounds %struct.user_struct, ptr %user, i32 0, i32 2
  %27 = ptrtoint ptr %unix_inflight to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %unix_inflight, align 8
  %dec = add i32 %28, -1
  store i32 %dec, ptr %unix_inflight, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @unix_gc_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unix_attach_fds(ptr nocapture noundef readonly %scm, ptr nocapture noundef writeonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !23) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i, align 16
  %user2.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %user2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user2.i, align 4
  %unix_inflight.i = getelementptr inbounds %struct.user_struct, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %unix_inflight.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %unix_inflight.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %10 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %11, i32 0, i32 51, i32 7
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp.i = icmp ugt i32 %9, %13
  br i1 %cmp.i, label %if.then.i, label %entry.if.end_crit_edge, !prof !38

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call5.i = tail call zeroext i1 @capable(i32 noundef 24) #5
  br i1 %call5.i, label %if.then.i.if.end_crit_edge, label %too_many_unix_fds.exit

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

too_many_unix_fds.exit:                           ; preds = %if.then.i
  %call6.i = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %call6.i, label %too_many_unix_fds.exit.if.end_crit_edge, label %too_many_unix_fds.exit.cleanup_crit_edge

too_many_unix_fds.exit.cleanup_crit_edge:         ; preds = %too_many_unix_fds.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

too_many_unix_fds.exit.if.end_crit_edge:          ; preds = %too_many_unix_fds.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %too_many_unix_fds.exit.if.end_crit_edge, %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %fp = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 1
  %14 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fp, align 4
  %call2 = tail call ptr @scm_fp_dup(ptr noundef %15) #5
  %fp3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %16 = ptrtoint ptr %fp3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call2, ptr %fp3, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %17 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fp, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp21 = icmp sgt i16 %20, 0
  br i1 %cmp21, label %for.body.preheader, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %if.end7
  %conv23 = zext i16 %20 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.022.in = phi i32 [ %i.022, %for.body.for.body_crit_edge ], [ %conv23, %for.body.preheader ]
  %i.022 = add nsw i32 %i.022.in, -1
  %21 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fp, align 4
  %user = getelementptr inbounds %struct.scm_fp_list, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %user, align 4
  %arrayidx = getelementptr %struct.scm_fp_list, ptr %22, i32 0, i32 3, i32 %i.022
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  tail call void @unix_inflight(ptr noundef %24, ptr noundef %26)
  %cmp = icmp ugt i32 %i.022.in, 1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %too_many_unix_fds.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -109, %too_many_unix_fds.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scm_fp_dup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unix_detach_fds(ptr nocapture noundef %scm, ptr nocapture noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fp = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %0 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp, align 4
  %fp1 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 1
  %2 = ptrtoint ptr %fp1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %fp1, align 4
  store ptr null, ptr %fp, align 4
  %3 = load ptr, ptr %fp1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp16 = icmp sgt i16 %5, 0
  br i1 %cmp16, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %conv18 = zext i16 %5 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.017.in = phi i32 [ %i.017, %for.body.for.body_crit_edge ], [ %conv18, %for.body.preheader ]
  %i.017 = add nsw i32 %i.017.in, -1
  %6 = ptrtoint ptr %fp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fp1, align 4
  %user = getelementptr inbounds %struct.scm_fp_list, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user, align 4
  %arrayidx = getelementptr %struct.scm_fp_list, ptr %7, i32 0, i32 3, i32 %i.017
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void @unix_notinflight(ptr noundef %9, ptr noundef %11)
  %cmp = icmp ugt i32 %i.017.in, 1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unix_destruct_scm(ptr noundef %skb) #0 align 64 {
entry:
  %scm = alloca %struct.scm_cookie, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %scm) #5
  %0 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %scm, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 20)
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %3 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cb, align 8
  %5 = ptrtoint ptr %scm to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %scm, align 4
  %fp = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fp, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %0, align 4
  %9 = ptrtoint ptr %fp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %fp, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp16.i = icmp sgt i16 %11, 0
  br i1 %cmp16.i, label %for.body.preheader.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.preheader.i:                             ; preds = %if.then
  %conv18.i = zext i16 %11 to i32
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %0, align 4
  %user.i = getelementptr inbounds %struct.scm_fp_list, ptr %13, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.017.in.i = phi i32 [ %i.017.i, %for.body.i.for.body.i_crit_edge ], [ %conv18.i, %for.body.preheader.i ]
  %i.017.i = add nsw i32 %i.017.in.i, -1
  %14 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user.i, align 4
  %arrayidx.i = getelementptr %struct.scm_fp_list, ptr %13, i32 0, i32 3, i32 %i.017.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  tail call void @unix_notinflight(ptr noundef %15, ptr noundef %17) #5
  %cmp.i = icmp ugt i32 %i.017.in.i, 1
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %scm, align 4
  tail call void @put_pid(ptr noundef %19) #5
  %20 = ptrtoint ptr %scm to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %scm, align 4
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %0, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.scm_destroy.exit_crit_edge, label %if.then.i

if.end.scm_destroy.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %scm_destroy.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__scm_destroy(ptr noundef nonnull %scm) #5
  br label %scm_destroy.exit

scm_destroy.exit:                                 ; preds = %if.then.i, %if.end.scm_destroy.exit_crit_edge
  call void @sock_wfree(ptr noundef %skb) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %scm) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_wfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__scm_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21}
!llvm.named.register.sp = !{!23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__ksymtab_unix_tot_inflight, !1, !"__ksymtab_unix_tot_inflight", i1 false, i1 false}
!1 = !{!"../net/unix/scm.c", i32 16, i32 1}
!2 = !{ptr @gc_inflight_list, !3, !"gc_inflight_list", i1 false, i1 false}
!3 = !{!"../net/unix/scm.c", i32 18, i32 1}
!4 = !{ptr @__ksymtab_gc_inflight_list, !5, !"__ksymtab_gc_inflight_list", i1 false, i1 false}
!5 = !{!"../net/unix/scm.c", i32 19, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/unix/scm.c", i32 21, i32 1}
!8 = !{ptr @unix_gc_lock, !7, !"unix_gc_lock", i1 false, i1 false}
!9 = !{ptr @__ksymtab_unix_gc_lock, !10, !"__ksymtab_unix_gc_lock", i1 false, i1 false}
!10 = !{!"../net/unix/scm.c", i32 22, i32 1}
!11 = !{ptr @__ksymtab_unix_get_socket, !12, !"__ksymtab_unix_get_socket", i1 false, i1 false}
!12 = !{!"../net/unix/scm.c", i32 43, i32 1}
!13 = !{ptr @__ksymtab_unix_attach_fds, !14, !"__ksymtab_unix_attach_fds", i1 false, i1 false}
!14 = !{!"../net/unix/scm.c", i32 126, i32 1}
!15 = !{ptr @__ksymtab_unix_detach_fds, !16, !"__ksymtab_unix_detach_fds", i1 false, i1 false}
!16 = !{!"../net/unix/scm.c", i32 138, i32 1}
!17 = !{ptr @__ksymtab_unix_destruct_scm, !18, !"__ksymtab_unix_destruct_scm", i1 false, i1 false}
!18 = !{!"../net/unix/scm.c", i32 154, i32 1}
!19 = !{ptr @unix_tot_inflight, !20, !"unix_tot_inflight", i1 false, i1 false}
!20 = !{!"../net/unix/scm.c", i32 15, i32 14}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/unix/scm.c", i32 99, i32 29}
!23 = !{!"sp"}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2148427264}
!34 = !{i64 2148342549, i64 2148342581, i64 2148342610, i64 2148342644, i64 2148342675, i64 2148342698}
!35 = !{i64 2148427493}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2156822719, i64 2156823197, i64 2156822756, i64 2156822812, i64 2156822846, i64 2156822870, i64 2156822911, i64 2156822932, i64 2156822960, i64 2156822994}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 2156824297, i64 2156824775, i64 2156824334, i64 2156824390, i64 2156824424, i64 2156824448, i64 2156824489, i64 2156824510, i64 2156824538, i64 2156824572}
!40 = !{i64 2156828150, i64 2156828628, i64 2156828187, i64 2156828243, i64 2156828277, i64 2156828301, i64 2156828342, i64 2156828363, i64 2156828391, i64 2156828425}
!41 = !{i64 2156829728, i64 2156830206, i64 2156829765, i64 2156829821, i64 2156829855, i64 2156829879, i64 2156829920, i64 2156829941, i64 2156829969, i64 2156830003}
!42 = !{i64 2148430305}
!43 = !{i64 2148345014, i64 2148345046, i64 2148345075, i64 2148345109, i64 2148345140, i64 2148345163}
!44 = !{i64 2148430534}
