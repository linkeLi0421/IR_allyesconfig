; ModuleID = '/llk/IR_all_yes/mm/swapfile.c_pt.bc'
source_filename = "../mm/swapfile.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nr_swap_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_nr_swap_pages\09\09\09\09"
module asm "\09.long\09__crc_nr_swap_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nr_swap_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22nr_swap_pages\22\09\09\09\09\09"
module asm "__kstrtabns_nr_swap_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+add_swap_extent\22, \22a\22\09"
module asm "\09.weak\09__crc_add_swap_extent\09\09\09\09"
module asm "\09.long\09__crc_add_swap_extent\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_swap_extent:\09\09\09\09\09"
module asm "\09.asciz \09\22add_swap_extent\22\09\09\09\09\09"
module asm "__kstrtabns_add_swap_extent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+swapcache_mapping\22, \22a\22\09"
module asm "\09.weak\09__crc_swapcache_mapping\09\09\09\09"
module asm "\09.long\09__crc_swapcache_mapping\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_swapcache_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22swapcache_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_swapcache_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__page_file_index\22, \22a\22\09"
module asm "\09.weak\09__crc___page_file_index\09\09\09\09"
module asm "\09.long\09__crc___page_file_index\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___page_file_index:\09\09\09\09\09"
module asm "\09.asciz \09\22__page_file_index\22\09\09\09\09\09"
module asm "__kstrtabns___page_file_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.67, %struct.trace_event, ptr, ptr, %union.anon.69, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.67 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.69 = type { ptr }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.68 }
%union.anon.68 = type { i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_struct = type { %struct.anon.23, [0 x i32] }
%struct.anon.23 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.cpumask = type { [1 x i32] }
%struct.page = type { i32, %union.anon, %union.anon.101, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.101 = type { %struct.atomic_t }
%struct.swap_info_struct = type { %struct.percpu_ref, i32, i16, %struct.plist_node, i8, i32, ptr, ptr, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.rb_root, ptr, ptr, i32, %struct.completion, ptr, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.percpu_ref = type { i32, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.swap_extent = type { %struct.rb_node, i32, i32, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.swp_entry_t = type { i32 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.73, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.24 }
%struct.llist_node = type { ptr }
%union.anon.24 = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.73 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.107 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.102, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.103, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.104, ptr, %struct.address_space, %struct.list_head, %union.anon.105, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.102 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.103 = type { %struct.callback_head }
%union.anon.104 = type { ptr }
%union.anon.105 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.85, %struct.list_head, %struct.list_head, %union.anon.86 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.85 = type { %struct.list_head }
%union.anon.86 = type { %struct.hlist_node }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.77, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.vm_fault = type { %struct.anon.79, i32, ptr, ptr, %union.anon.80, ptr, ptr, ptr, ptr, ptr }
%struct.anon.79 = type { ptr, i32, i32, i32 }
%union.anon.80 = type { i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.anon.111 = type { [4086 x i8], [10 x i8] }
%struct.anon.112 = type { [1024 x i8], i32, i32, i32, [16 x i8], [16 x i8], [117 x i32], [1 x i32] }

@nr_swap_pages = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__kstrtab_nr_swap_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_nr_swap_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_nr_swap_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nr_swap_pages to i32), ptr @__kstrtab_nr_swap_pages, ptr @__kstrtabns_nr_swap_pages }, section "___ksymtab_gpl+nr_swap_pages", align 4
@nr_rotate_swap = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mm/swapfile.c\00", [18 x i8] zeroinitializer }, align 32
@swap_avail_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@swap_avail_heads = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"swap_info %d in list but !highest_bit\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"swap_info %d in list but !SWP_WRITEOK\0A\00", [57 x i8] zeroinitializer }, align 32
@get_swap_pages.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str, ptr @.str.5, i8 1, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"swapfile\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get_swap_pages\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"scan_swap_map of si %d failed to find offset\0A\00", [50 x i8] zeroinitializer }, align 32
@get_swap_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 1291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013%s: %s%08lx\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_swap_device\00", [16 x i8] zeroinitializer }, align 32
@get_swap_device._entry_ptr = internal global ptr @get_swap_device._entry, section ".printk_index", align 4
@Bad_file = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bad swap file entry \00", [43 x i8] zeroinitializer }, align 32
@nr_swapfiles = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VM_BUG_ON_PAGE(!PageLocked(page))\00", [62 x i8] zeroinitializer }, align 32
@swap_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@swap_info = dso_local global { [30 x ptr], [40 x i8] } zeroinitializer, align 32
@__kstrtab_add_swap_extent = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_swap_extent = external dso_local constant [0 x i8], align 1
@__ksymtab_add_swap_extent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_swap_extent to i32), ptr @__kstrtab_add_swap_extent, ptr @__kstrtabns_add_swap_extent }, section "___ksymtab_gpl+add_swap_extent", align 4
@swap_active_head = internal global { %struct.plist_head, [24 x i8] } { %struct.plist_head { %struct.list_head { ptr @swap_active_head, ptr @swap_active_head } }, [24 x i8] zeroinitializer }, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_swapoff\00", [46 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__swapoff = internal global %struct.syscall_metadata { ptr @.str.11, i32 -1, i32 1, ptr @types__swapoff, ptr @args__swapoff, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__swapoff, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__swapoff, i64 20) }, ptr @event_enter__swapoff, ptr @event_exit__swapoff }, align 4
@event_enter__swapoff = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.67 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.69 zeroinitializer, ptr @__syscall_meta__swapoff, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__swapoff = internal global ptr @event_enter__swapoff, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_swapoff\00", [47 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__swapoff = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.67 { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.69 zeroinitializer, ptr @__syscall_meta__swapoff, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__swapoff = internal global ptr @event_exit__swapoff, section "_ftrace_events", align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_swapoff\00", [20 x i8] zeroinitializer }, align 32
@types__swapoff = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.32], [28 x i8] zeroinitializer }, align 32
@args__swapoff = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.33], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__swapoff = internal global ptr @__syscall_meta__swapoff, section "__syscalls_metadata", align 4
@__initcall__kmod_swapfile__374_2773_procswaps_init6 = internal global ptr @procswaps_init, section ".initcall6.init", align 4
@__initcall__kmod_swapfile__376_2782_max_swapfiles_check7 = internal global ptr @max_swapfiles_check, section ".initcall7.init", align 4
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_swapon\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__swapon = internal global %struct.syscall_metadata { ptr @.str.14, i32 -1, i32 2, ptr @types__swapon, ptr @args__swapon, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__swapon, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__swapon, i64 20) }, ptr @event_enter__swapon, ptr @event_exit__swapon }, align 4
@event_enter__swapon = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.67 { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.69 zeroinitializer, ptr @__syscall_meta__swapon, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__swapon = internal global ptr @event_enter__swapon, section "_ftrace_events", align 4
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_swapon\00", [16 x i8] zeroinitializer }, align 32
@event_exit__swapon = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.67 { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.69 zeroinitializer, ptr @__syscall_meta__swapon, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__swapon = internal global ptr @event_exit__swapon, section "_ftrace_events", align 4
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_swapon\00", [21 x i8] zeroinitializer }, align 32
@types__swapon = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.32, ptr @.str.48], [24 x i8] zeroinitializer }, align 32
@args__swapon = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.33, ptr @.str.49], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__swapon = internal global ptr @__syscall_meta__swapon, section "__syscalls_metadata", align 4
@total_swap_pages = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_swapcache_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_swapcache_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_swapcache_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @swapcache_mapping to i32), ptr @__kstrtab_swapcache_mapping, ptr @__kstrtabns_swapcache_mapping }, section "___ksymtab_gpl+swapcache_mapping", align 4
@__kstrtab___page_file_index = external dso_local constant [0 x i8], align 1
@__kstrtabns___page_file_index = external dso_local constant [0 x i8], align 1
@__ksymtab___page_file_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__page_file_index to i32), ptr @__kstrtab___page_file_index, ptr @__kstrtabns___page_file_index }, section "___ksymtab_gpl+__page_file_index", align 4
@__initcall__kmod_swapfile__398_3778_swapfile_init4 = internal global ptr @swapfile_init, section ".initcall4.init", align 4
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"swap_avail_lock\00", [16 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@percpu_ref_tryget_live_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/linux/percpu-refcount.h\00", [32 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@_swap_info_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.20, ptr @.str, i32 1165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_swap_info_get\00", [17 x i8] zeroinitializer }, align 32
@_swap_info_get._entry_ptr = internal global ptr @_swap_info_get._entry, section ".printk_index", align 4
@Unused_offset = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unused swap offset entry \00", [38 x i8] zeroinitializer }, align 32
@__swap_info_get._entry = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.21, ptr @.str, i32 1142, ptr null, ptr null }, align 1
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__swap_info_get\00", [16 x i8] zeroinitializer }, align 32
@__swap_info_get._entry_ptr = internal global ptr @__swap_info_get._entry, section ".printk_index", align 4
@Bad_offset = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bad swap offset entry \00", [41 x i8] zeroinitializer }, align 32
@__swap_info_get._entry.22 = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.21, ptr @.str, i32 1145, ptr null, ptr null }, align 1
@__swap_info_get._entry_ptr.23 = internal global ptr @__swap_info_get._entry.22, section ".printk_index", align 4
@Unused_file = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unused swap file entry \00", [40 x i8] zeroinitializer }, align 32
@__swap_info_get._entry.24 = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.21, ptr @.str, i32 1148, ptr null, ptr null }, align 1
@__swap_info_get._entry_ptr.25 = internal global ptr @__swap_info_get._entry.24, section ".printk_index", align 4
@memory_cgrp_subsys_enabled_key = external dso_local global %struct.static_key_true, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@frontswap_enabled_key = external dso_local global %struct.static_key_false, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.26 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@swapper_spaces = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"swap_lock\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"specialfile\00", [20 x i8] zeroinitializer }, align 32
@least_priority = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@swapon_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @swapon_mutex, i64 52), ptr getelementptr (i8, ptr @swapon_mutex, i64 52) }, ptr @swapon_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@proc_poll_event = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@proc_poll_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @proc_poll_wait, i64 44), ptr getelementptr (i8, ptr @proc_poll_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@vm_committed_as = external dso_local global %struct.percpu_counter, align 8
@vm_committed_as_batch = external dso_local local_unnamed_addr global i32, align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@mmlist_lock = external dso_local global %struct.spinlock, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.34 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"swapon_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"swapon_mutex\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"proc_poll_wait.lock\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"swaps\00", [26 x i8] zeroinitializer }, align 32
@swaps_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 1, ptr @swaps_open, ptr @seq_read, ptr null, ptr null, ptr @seq_lseek, ptr @seq_release, ptr @swaps_poll, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@swaps_op = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @swap_start, ptr @swap_stop, ptr @swap_next, ptr @swap_show }, [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Filename\09\09\09\09Type\09\09Size\09\09Used\09\09Priority\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" \09\0A\\\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%*s%s\09%lu\09%s%lu\09%s%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"partition\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"file\09\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\09\00", [30 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"swap_flags\00", [21 x i8] zeroinitializer }, align 32
@__do_sys_swapon.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&p->discard_work)\00", [60 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__do_sys_swapon.__key.51 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&((cluster_info + ci)->lock)\00", [35 x i8] zeroinitializer }, align 32
@__do_sys_swapon._entry = internal constant %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str, i32 3264, ptr null, ptr null }, align 1
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013swapon: discard_swap(%p): %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__do_sys_swapon\00", [16 x i8] zeroinitializer }, align 32
@__do_sys_swapon._entry_ptr = internal global ptr @__do_sys_swapon._entry, section ".printk_index", align 4
@__do_sys_swapon._entry.55 = internal constant %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str, i32 3297, ptr null, ptr null }, align 1
@.str.56 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016Adding %uk swap on %s.  Priority:%d extents:%d across:%lluk %s%s%s%s%s\0A\00", [54 x i8] zeroinitializer }, align 32
@__do_sys_swapon._entry_ptr.57 = internal global ptr @__do_sys_swapon._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SS\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"c\00", [30 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FS\00", [29 x i8] zeroinitializer }, align 32
@alloc_swap_info.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&p->lock\00", [23 x i8] zeroinitializer }, align 32
@alloc_swap_info.__key.64 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&p->cont_lock\00", [18 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SWAPSPACE2\00", [21 x i8] zeroinitializer }, align 32
@read_swap_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str, i32 2916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Unable to find swap-space signature\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"read_swap_header\00", [47 x i8] zeroinitializer }, align 32
@read_swap_header._entry_ptr = internal global ptr @read_swap_header._entry, section ".printk_index", align 4
@read_swap_header._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str, i32 2933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014Unable to handle swap header version %d\0A\00", [53 x i8] zeroinitializer }, align 32
@read_swap_header._entry_ptr.73 = internal global ptr @read_swap_header._entry.71, section ".printk_index", align 4
@read_swap_header._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str, i32 2944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\014Empty swap-file\0A\00", [45 x i8] zeroinitializer }, align 32
@read_swap_header._entry_ptr.76 = internal global ptr @read_swap_header._entry.74, section ".printk_index", align 4
@read_swap_header._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.70, ptr @.str, i32 2950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014Truncating oversized swap area, only using %luk out of %luk\0A\00", [33 x i8] zeroinitializer }, align 32
@read_swap_header._entry_ptr.79 = internal global ptr @read_swap_header._entry.77, section ".printk_index", align 4
@read_swap_header._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.70, ptr @.str, i32 2964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014Swap area shorter than signature indicates\0A\00", [50 x i8] zeroinitializer }, align 32
@read_swap_header._entry_ptr.82 = internal global ptr @read_swap_header._entry.80, section ".printk_index", align 4
@setup_swap_map_and_extents._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.83, ptr @.str, i32 3035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"setup_swap_map_and_extents\00", [37 x i8] zeroinitializer }, align 32
@setup_swap_map_and_extents._entry_ptr = internal global ptr @setup_swap_map_and_extents._entry, section ".printk_index", align 4
@.str.85 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@task_css.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/cgroup.h\00", [41 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@swapfile_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str, i32 3769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\010Not enough memory for swap heads, swap is disabled\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"swapfile_init\00", [18 x i8] zeroinitializer }, align 32
@swapfile_init._entry_ptr = internal global ptr @swapfile_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 8, i64 62, i64 128, i64 190]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 8, i64 127, i64 255]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 63, i64 127]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 16, i64 24576, i64 32768]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.96 = private unnamed_addr constant [14 x i8] c"nr_swap_pages\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 54, i32 15 }
@___asan_gen_.99 = private unnamed_addr constant [15 x i8] c"nr_rotate_swap\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 99, i32 10 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1048, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [16 x i8] c"swap_avail_lock\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"swap_avail_heads\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 88, i32 27 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1075, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1078, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1094, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1291, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [9 x i8] c"Bad_file\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 65, i32 19 }
@___asan_gen_.138 = private unnamed_addr constant [13 x i8] c"nr_swapfiles\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 53, i32 21 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1669, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [10 x i8] c"swap_lock\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [10 x i8] c"swap_info\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 91, i32 26 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"swap_active_head\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 74, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant [21 x i8] c"event_enter__swapoff\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [20 x i8] c"event_exit__swapoff\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [15 x i8] c"types__swapoff\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [14 x i8] c"args__swapoff\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [20 x i8] c"event_enter__swapon\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [19 x i8] c"event_exit__swapon\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [14 x i8] c"types__swapon\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [13 x i8] c"args__swapon\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"total_swap_pages\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 62, i32 6 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 89, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 695, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [35 x i8] c"../include/linux/percpu-refcount.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 280, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 723, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1165, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [14 x i8] c"Unused_offset\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 68, i32 19 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1142, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [11 x i8] c"Bad_offset\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 67, i32 19 }
@___asan_gen_.228 = private unnamed_addr constant [12 x i8] c"Unused_file\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 66, i32 19 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 414, i32 1 }
@___asan_gen_.235 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 260, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 717, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 52, i32 8 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2468, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant [15 x i8] c"least_priority\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 63, i32 12 }
@___asan_gen_.252 = private unnamed_addr constant [13 x i8] c"swapon_mutex\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [16 x i8] c"proc_poll_event\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 97, i32 17 }
@___asan_gen_.258 = private unnamed_addr constant [15 x i8] c"proc_poll_wait\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1160, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 788, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 93, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 95, i32 8 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2770, i32 14 }
@___asan_gen_.279 = private unnamed_addr constant [15 x i8] c"swaps_proc_ops\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2759, i32 30 }
@___asan_gen_.282 = private unnamed_addr constant [9 x i8] c"swaps_op\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2738, i32 36 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2719, i32 18 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2727, i32 34 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2728, i32 19 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2729, i32 29 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2731, i32 5 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2731, i32 19 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2732, i32 30 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2732, i32 37 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 3077, i32 1 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 3110, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 3205, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 3263, i32 5 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 3290, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2839, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2840, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 87, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 44, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2915, i32 13 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2916, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2932, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2944, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2948, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2964, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 3035, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1368, i32 10 }
@___asan_gen_.415 = private unnamed_addr constant [26 x i8] c"../include/linux/cgroup.h\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 494, i32 9 }
@___asan_gen_.417 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.424 = private constant [17 x i8] c"../mm/swapfile.c\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 3769, i32 3 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @__do_sys_swapon._entry, ptr @__do_sys_swapon._entry.55, ptr @__do_sys_swapon._entry_ptr, ptr @__do_sys_swapon._entry_ptr.57, ptr @__event_enter__swapoff, ptr @__event_enter__swapon, ptr @__event_exit__swapoff, ptr @__event_exit__swapon, ptr @__initcall__kmod_swapfile__374_2773_procswaps_init6, ptr @__initcall__kmod_swapfile__376_2782_max_swapfiles_check7, ptr @__initcall__kmod_swapfile__398_3778_swapfile_init4, ptr @__ksymtab___page_file_index, ptr @__ksymtab_add_swap_extent, ptr @__ksymtab_nr_swap_pages, ptr @__ksymtab_swapcache_mapping, ptr @__p_syscall_meta__swapoff, ptr @__p_syscall_meta__swapon, ptr @__swap_info_get._entry, ptr @__swap_info_get._entry.22, ptr @__swap_info_get._entry.24, ptr @__swap_info_get._entry_ptr, ptr @__swap_info_get._entry_ptr.23, ptr @__swap_info_get._entry_ptr.25, ptr @__syscall_meta__swapoff, ptr @__syscall_meta__swapon, ptr @_swap_info_get._entry, ptr @_swap_info_get._entry_ptr, ptr @event_enter__swapoff, ptr @event_enter__swapon, ptr @event_exit__swapoff, ptr @event_exit__swapon, ptr @get_swap_device._entry, ptr @get_swap_device._entry_ptr, ptr @read_swap_header._entry, ptr @read_swap_header._entry.71, ptr @read_swap_header._entry.74, ptr @read_swap_header._entry.77, ptr @read_swap_header._entry.80, ptr @read_swap_header._entry_ptr, ptr @read_swap_header._entry_ptr.73, ptr @read_swap_header._entry_ptr.76, ptr @read_swap_header._entry_ptr.79, ptr @read_swap_header._entry_ptr.82, ptr @setup_swap_map_and_extents._entry, ptr @setup_swap_map_and_extents._entry_ptr, ptr @swapfile_init._entry, ptr @swapfile_init._entry_ptr, ptr @nr_swap_pages, ptr @nr_rotate_swap, ptr @.str, ptr @swap_avail_lock, ptr @swap_avail_heads, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @Bad_file, ptr @nr_swapfiles, ptr @.str.8, ptr @swap_lock, ptr @swap_info, ptr @swap_active_head, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @types__swapoff, ptr @args__swapoff, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @types__swapon, ptr @args__swapon, ptr @total_swap_pages, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @Unused_offset, ptr @.str.21, ptr @Bad_offset, ptr @Unused_file, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @least_priority, ptr @swapon_mutex, ptr @proc_poll_event, ptr @proc_poll_wait, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @swaps_proc_ops, ptr @swaps_op, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @alloc_swap_info.__key, ptr @.str.63, ptr @alloc_swap_info.__key.64, ptr @.str.65, ptr @init_completion.__key, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89], section "llvm.metadata"
@0 = internal global [110 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_swap_pages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_rotate_swap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_avail_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_avail_heads to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_swap_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Bad_file to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_swapfiles to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_info to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_active_head to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__swapoff to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__swapoff to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__swapoff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__swapoff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__swapon to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__swapon to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__swapon to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__swapon to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @total_swap_pages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_swap_info_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Unused_offset to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Bad_offset to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Unused_file to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @least_priority to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swapon_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_poll_event to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_poll_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swaps_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swaps_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_swap_info.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_swap_info.__key.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_swap_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_swap_header._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_swap_header._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_swap_header._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_swap_header._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_swap_map_and_extents._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swapfile_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_swapoff = dso_local alias i32 (ptr), ptr @__se_sys_swapoff
@sys_swapon = dso_local alias i32 (ptr, i32), ptr @__se_sys_swapon

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @swap_page_sector(ptr nocapture noundef readonly %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2013265919, i32 %1)
  %cmp.i.i.i = icmp ugt i32 %1, 2013265919
  br i1 %cmp.i.i.i, label %entry.page_swap_info.exit_crit_edge, label %do.end.i.i.i

entry.page_swap_info.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %page_swap_info.exit

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %shr.i.i.i = lshr i32 %1, 26
  %arrayidx.i.i.i = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %shr.i.i.i
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  br label %page_swap_info.exit

page_swap_info.exit:                              ; preds = %do.end.i.i.i, %entry.page_swap_info.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %3, %do.end.i.i.i ], [ null, %entry.page_swap_info.exit_crit_edge ]
  %and.i.i = and i32 %1, 67108863
  %swap_extent_root.i = getelementptr inbounds %struct.swap_info_struct, ptr %retval.0.i.i.i, i32 0, i32 17
  %4 = ptrtoint ptr %swap_extent_root.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %rb.018.i = load ptr, ptr %swap_extent_root.i, align 4
  %tobool.not19.i = icmp eq ptr %rb.018.i, null
  br i1 %tobool.not19.i, label %page_swap_info.exit.do.body.i_crit_edge, label %page_swap_info.exit.while.body.i_crit_edge

page_swap_info.exit.while.body.i_crit_edge:       ; preds = %page_swap_info.exit
  br label %while.body.i

page_swap_info.exit.do.body.i_crit_edge:          ; preds = %page_swap_info.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %page_swap_info.exit.while.body.i_crit_edge
  %rb.020.i = phi ptr [ %rb.0.i, %if.end5.i.while.body.i_crit_edge ], [ %rb.018.i, %page_swap_info.exit.while.body.i_crit_edge ]
  %start_page.i = getelementptr inbounds %struct.swap_extent, ptr %rb.020.i, i32 0, i32 1
  %5 = ptrtoint ptr %start_page.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %start_page.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %6)
  %cmp.i = icmp ult i32 %and.i.i, %6
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %rb.020.i, i32 0, i32 2
  br label %if.end5.i

if.else.i:                                        ; preds = %while.body.i
  %nr_pages.i = getelementptr inbounds %struct.swap_extent, ptr %rb.020.i, i32 0, i32 2
  %7 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_pages.i, align 8
  %add.i = add i32 %8, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %and.i.i)
  %cmp2.not.i = icmp ugt i32 %add.i, %and.i.i
  br i1 %cmp2.not.i, label %offset_to_swap_extent.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %rb.020.i, i32 0, i32 1
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.then.i
  %rb.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %9 = ptrtoint ptr %rb.1.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %rb.0.i = load ptr, ptr %rb.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %rb.0.i, null
  br i1 %tobool.not.i, label %if.end5.i.do.body.i_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i

if.end5.i.do.body.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i

do.body.i:                                        ; preds = %if.end5.i.do.body.i_crit_edge, %page_swap_info.exit.do.body.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #19, !srcloc !243
  unreachable

offset_to_swap_extent.exit:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  %start_block = getelementptr inbounds %struct.swap_extent, ptr %rb.020.i, i32 0, i32 3
  %10 = ptrtoint ptr %start_block to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %start_block, align 8
  %sub = sub i32 %and.i.i, %6
  %conv = zext i32 %sub to i64
  %add = add i64 %11, %conv
  %shl = shl i64 %add, 3
  ret i64 %shl
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @page_swap_info(ptr nocapture noundef readonly %page) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2013265919, i32 %1)
  %cmp.i.i = icmp ugt i32 %1, 2013265919
  br i1 %cmp.i.i, label %entry.swp_swap_info.exit_crit_edge, label %do.end.i.i

entry.swp_swap_info.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %swp_swap_info.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %shr.i.i = lshr i32 %1, 26
  %arrayidx.i.i = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %shr.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx.i.i, align 4
  br label %swp_swap_info.exit

swp_swap_info.exit:                               ; preds = %do.end.i.i, %entry.swp_swap_info.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %do.end.i.i ], [ null, %entry.swp_swap_info.exit_crit_edge ]
  ret ptr %retval.0.i.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @__page_file_index(ptr nocapture noundef readonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %and.i = and i32 %1, 67108863
  ret i32 %and.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_swap_pages(i32 noundef %n_goal, ptr nocapture noundef writeonly %swp_entries, i32 noundef %entry_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_avail_lock) #19
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nr_swap_pages, i32 noundef 4) #19
  %0 = load volatile i32, ptr @nr_swap_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp38 = icmp slt i32 %0, 1
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_avail_lock) #19
  br label %noswap

if.end40:                                         ; preds = %entry
  %1 = tail call i32 @llvm.smin.i32(i32 %n_goal, i32 %0)
  %2 = tail call i32 @llvm.smin.i32(i32 %1, i32 64)
  %call.i.i262 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nr_swap_pages, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr nonnull @nr_swap_pages, i32 1, i32 3, i32 1) #19
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_swap_pages, ptr nonnull @nr_swap_pages, i32 %2, ptr nonnull elementtype(i32) @nr_swap_pages) #19, !srcloc !244
  br label %start_over

start_over:                                       ; preds = %nextsi.start_over_crit_edge, %if.end40
  %4 = load ptr, ptr @swap_avail_heads, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  br label %for.cond

for.cond:                                         ; preds = %nextsi.for.cond_crit_edge, %start_over
  %.pn.in = phi ptr [ %6, %start_over ], [ %.pn, %nextsi.for.cond_crit_edge ]
  %si.0 = getelementptr i8, ptr %.pn.in, i32 -500
  %7 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn.in, align 4
  %8 = load ptr, ptr @swap_avail_heads, align 4
  %cmp64.not = icmp eq ptr %.pn.in, %8
  br i1 %cmp64.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %avail_lists59 = getelementptr i8, ptr %.pn.in, i32 -12
  tail call void @plist_requeue(ptr noundef %avail_lists59, ptr noundef %8) #19
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_avail_lock) #19
  %lock = getelementptr i8, ptr %.pn.in, i32 -240
  tail call void @_raw_spin_lock(ptr noundef %lock) #19
  %highest_bit = getelementptr i8, ptr %.pn.in, i32 -348
  %9 = ptrtoint ptr %highest_bit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %highest_bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool70.not = icmp eq i32 %10, 0
  br i1 %tobool70.not, label %for.body.if.then72_crit_edge, label %lor.lhs.false

for.body.if.then72_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then72

lor.lhs.false:                                    ; preds = %for.body
  %flags = getelementptr i8, ptr %.pn.in, i32 -492
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool71.not = icmp eq i32 %and, 0
  br i1 %tobool71.not, label %lor.lhs.false.if.then72_crit_edge, label %if.else

lor.lhs.false.if.then72_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then72

if.then72:                                        ; preds = %lor.lhs.false.if.then72_crit_edge, %for.body.if.then72_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_avail_lock) #19
  %13 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %.pn.in, align 4
  %cmp.i.i.not = icmp eq ptr %14, %.pn.in
  br i1 %cmp.i.i.not, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock(ptr noundef %lock) #19
  br label %nextsi

if.end79:                                         ; preds = %if.then72
  %15 = ptrtoint ptr %highest_bit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %highest_bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool82.not = icmp eq i32 %16, 0
  br i1 %tobool82.not, label %do.end100, label %if.end79.if.end106_crit_edge, !prof !245

if.end79.if.end106_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end106

do.end100:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #21
  %type = getelementptr i8, ptr %.pn.in, i32 -464
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type, align 4
  %conv = sext i8 %18 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1077, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %conv) #19
  br label %if.end106

if.end106:                                        ; preds = %do.end100, %if.end79.if.end106_crit_edge
  %flags115 = getelementptr i8, ptr %.pn.in, i32 -492
  %19 = ptrtoint ptr %flags115 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags115, align 4
  %and116 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %do.end135, label %if.end106.if.end143_crit_edge, !prof !245

if.end106.if.end143_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end143

do.end135:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #21
  %type136 = getelementptr i8, ptr %.pn.in, i32 -464
  %21 = ptrtoint ptr %type136 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type136, align 4
  %conv137 = sext i8 %22 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1080, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %conv137) #19
  br label %if.end143

if.end143:                                        ; preds = %do.end135, %if.end106.if.end143_crit_edge
  %23 = load ptr, ptr @swap_avail_heads, align 4
  tail call void @plist_del(ptr noundef %avail_lists59, ptr noundef %23) #19
  tail call void @_raw_spin_unlock(ptr noundef %lock) #19
  br label %nextsi

if.else:                                          ; preds = %lor.lhs.false
  %call162 = tail call fastcc i32 @scan_swap_map_slots(ptr noundef %si.0, i8 noundef zeroext 64, i32 noundef %2, ptr noundef %swp_entries)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool165.not = icmp eq i32 %call162, 0
  br i1 %tobool165.not, label %do.body171, label %if.else.check_out_crit_edge

if.else.check_out_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %check_out

do.body171:                                       ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_swap_pages.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_swap_pages, %if.then182)) #19
          to label %do.end187 [label %if.then182], !srcloc !246

if.then182:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #21
  %type183 = getelementptr i8, ptr %.pn.in, i32 -464
  %24 = ptrtoint ptr %type183 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %type183, align 4
  %conv184 = sext i8 %25 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_swap_pages.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.5, i32 noundef %conv184) #19
  br label %do.end187

do.end187:                                        ; preds = %if.then182, %do.body171
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_avail_lock) #19
  br label %nextsi

nextsi:                                           ; preds = %do.end187, %if.end143, %if.then77
  %26 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %.pn, align 4
  %cmp.i.i265.not = icmp eq ptr %27, %.pn
  br i1 %cmp.i.i265.not, label %nextsi.start_over_crit_edge, label %nextsi.for.cond_crit_edge

nextsi.for.cond_crit_edge:                        ; preds = %nextsi
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond

nextsi.start_over_crit_edge:                      ; preds = %nextsi
  call void @__sanitizer_cov_trace_pc() #21
  br label %start_over

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_avail_lock) #19
  br label %check_out

check_out:                                        ; preds = %for.end, %if.else.check_out_crit_edge
  %n_ret.4 = phi i32 [ 0, %for.end ], [ %call162, %if.else.check_out_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %n_ret.4)
  %cmp202 = icmp sgt i32 %2, %n_ret.4
  br i1 %cmp202, label %if.then204, label %check_out.noswap_crit_edge

check_out.noswap_crit_edge:                       ; preds = %check_out
  call void @__sanitizer_cov_trace_pc() #21
  br label %noswap

if.then204:                                       ; preds = %check_out
  call void @__sanitizer_cov_trace_pc() #21
  %sub = sub i32 %2, %n_ret.4
  %call.i.i263 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nr_swap_pages, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr nonnull @nr_swap_pages, i32 1, i32 3, i32 1) #19
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_swap_pages, ptr nonnull @nr_swap_pages, i32 %sub, ptr nonnull elementtype(i32) @nr_swap_pages) #19, !srcloc !247
  br label %noswap

noswap:                                           ; preds = %if.then204, %check_out.noswap_crit_edge, %if.then39
  %n_ret.5 = phi i32 [ 0, %if.then39 ], [ %n_ret.4, %if.then204 ], [ %n_ret.4, %check_out.noswap_crit_edge ]
  ret i32 %n_ret.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_requeue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scan_swap_map_slots(ptr noundef %si, i8 noundef zeroext %usage, i32 noundef %nr, ptr nocapture noundef writeonly %slots) unnamed_addr #0 align 64 {
entry:
  %offset = alloca i32, align 4
  %scan_base = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #19
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %offset, align 4, !annotation !248
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scan_base) #19
  %flags = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 1
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %add = add i32 %2, 16384
  store i32 %add, ptr %flags, align 4
  %and = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %3 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %6, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !249
  %cluster_next_cpu = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 15
  %7 = ptrtoint ptr %cluster_next_cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cluster_next_cpu, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add14 = add i32 %15, %9
  %16 = inttoptr i32 %add14 to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !250
  %19 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i402 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i402 to ptr
  %preempt_count.i.i403 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i403 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i403, align 4
  %sub.i = add i32 %22, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i403, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %cluster_next = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 13
  %23 = ptrtoint ptr %cluster_next to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cluster_next, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %24, %if.else ], [ %18, %if.then ]
  %25 = ptrtoint ptr %scan_base to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %storemerge, ptr %scan_base, align 4
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %storemerge, ptr %offset, align 4
  %cluster_info = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 7
  %27 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cluster_info, align 4
  %tobool21.not = icmp eq ptr %28, null
  br i1 %tobool21.not, label %if.else26, label %if.then22

if.then22:                                        ; preds = %if.end
  %call23 = call fastcc zeroext i1 @scan_swap_map_try_ssd_cluster(ptr noundef %si, ptr noundef nonnull %offset, ptr noundef nonnull %scan_base)
  br i1 %call23, label %if.then22.checks.preheader_crit_edge, label %if.then22.scan_crit_edge

if.then22.scan_crit_edge:                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #21
  br label %scan

if.then22.checks.preheader_crit_edge:             ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #21
  br label %checks.preheader

if.else26:                                        ; preds = %if.end
  %cluster_nr = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 14
  %29 = ptrtoint ptr %cluster_nr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cluster_nr, align 4
  %dec = add i32 %30, -1
  store i32 %dec, ptr %cluster_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool27.not = icmp eq i32 %30, 0
  br i1 %tobool27.not, label %if.then31, label %if.else26.checks.preheader_crit_edge, !prof !245

if.else26.checks.preheader_crit_edge:             ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #21
  br label %checks.preheader

if.then31:                                        ; preds = %if.else26
  %pages = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 11
  %31 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pages, align 4
  %inuse_pages = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 12
  %33 = ptrtoint ptr %inuse_pages to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %inuse_pages, align 4
  %sub = sub i32 %32, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub)
  %cmp = icmp ult i32 %sub, 256
  br i1 %cmp, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #21
  %35 = ptrtoint ptr %cluster_nr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 255, ptr %cluster_nr, align 4
  br label %checks.preheader

if.end34:                                         ; preds = %if.then31
  %lock = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 24
  tail call void @_raw_spin_unlock(ptr noundef %lock) #19
  %lowest_bit = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 9
  %36 = ptrtoint ptr %lowest_bit to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lowest_bit, align 4
  %38 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %offset, align 4
  %39 = ptrtoint ptr %scan_base to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %37, ptr %scan_base, align 4
  %sub36 = add i32 %37, 255
  %highest_bit = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 10
  %40 = ptrtoint ptr %highest_bit to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %highest_bit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub36, i32 %41)
  %cmp37.not495 = icmp ugt i32 %sub36, %41
  br i1 %cmp37.not495, label %if.end34.for.end_crit_edge, label %for.body.lr.ph

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end34
  %swap_map = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %last_in_cluster.0498 = phi i32 [ %sub36, %for.body.lr.ph ], [ %last_in_cluster.1, %for.inc.for.body_crit_edge ]
  %latency_ration.0496 = phi i32 [ 256, %for.body.lr.ph ], [ %latency_ration.1, %for.inc.for.body_crit_edge ]
  %42 = ptrtoint ptr %swap_map to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %swap_map, align 4
  %44 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset, align 4
  %arrayidx38 = getelementptr i8, ptr %43, i32 %45
  %46 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool39.not = icmp eq i8 %47, 0
  br i1 %tobool39.not, label %if.else42, label %if.then40

if.then40:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %add41 = add i32 %45, 256
  br label %if.end50

if.else42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %last_in_cluster.0498)
  %cmp43 = icmp eq i32 %45, %last_in_cluster.0498
  br i1 %cmp43, label %if.then44, label %if.else42.if.end50_crit_edge

if.else42.if.end50_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end50

if.then44:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_lock(ptr noundef %lock) #19
  %48 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset, align 4
  %sub46 = add i32 %49, -255
  store i32 %sub46, ptr %offset, align 4
  %cluster_next47 = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 13
  %50 = ptrtoint ptr %cluster_next47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub46, ptr %cluster_next47, align 4
  %51 = ptrtoint ptr %cluster_nr to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 255, ptr %cluster_nr, align 4
  br label %checks.preheader

if.end50:                                         ; preds = %if.else42.if.end50_crit_edge, %if.then40
  %last_in_cluster.1 = phi i32 [ %add41, %if.then40 ], [ %last_in_cluster.0498, %if.else42.if.end50_crit_edge ]
  %dec51 = add i32 %latency_ration.0496, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec51)
  %cmp52 = icmp slt i32 %dec51, 0
  br i1 %cmp52, label %if.then59, label %if.end50.for.inc_crit_edge, !prof !245

if.end50.for.inc_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.then59:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 845, i32 noundef 0) #19
  %call.i = tail call i32 @__cond_resched() #19
  br label %for.inc

for.inc:                                          ; preds = %if.then59, %if.end50.for.inc_crit_edge
  %latency_ration.1 = phi i32 [ 256, %if.then59 ], [ %dec51, %if.end50.for.inc_crit_edge ]
  %52 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offset, align 4
  %inc = add i32 %53, 1
  store i32 %inc, ptr %offset, align 4
  %54 = ptrtoint ptr %highest_bit to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %highest_bit, align 4
  %cmp37.not = icmp ugt i32 %last_in_cluster.1, %55
  br i1 %cmp37.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end34.for.end_crit_edge
  %latency_ration.0.lcssa = phi i32 [ 256, %if.end34.for.end_crit_edge ], [ %latency_ration.1, %for.inc.for.end_crit_edge ]
  %56 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %37, ptr %offset, align 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #19
  %57 = ptrtoint ptr %cluster_nr to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 255, ptr %cluster_nr, align 4
  br label %checks.preheader

checks.preheader:                                 ; preds = %if.then284, %if.then269, %if.then238, %if.then223, %for.end, %if.then44, %if.then32, %if.else26.checks.preheader_crit_edge, %if.then22.checks.preheader_crit_edge
  %scanned_many.0.off0.ph = phi i1 [ false, %if.then44 ], [ false, %if.then32 ], [ %scanned_many.4.off0515, %if.then284 ], [ %scanned_many.4.off0515, %if.then269 ], [ %scanned_many.2.off0506, %if.then238 ], [ %scanned_many.2.off0506, %if.then223 ], [ false, %if.else26.checks.preheader_crit_edge ], [ false, %for.end ], [ false, %if.then22.checks.preheader_crit_edge ]
  %n_ret.0.ph = phi i32 [ 0, %if.then44 ], [ 0, %if.then32 ], [ %n_ret.2, %if.then284 ], [ %n_ret.2, %if.then269 ], [ %n_ret.2, %if.then238 ], [ %n_ret.2, %if.then223 ], [ 0, %if.else26.checks.preheader_crit_edge ], [ 0, %for.end ], [ 0, %if.then22.checks.preheader_crit_edge ]
  %latency_ration.3.ph = phi i32 [ %latency_ration.0496, %if.then44 ], [ 256, %if.then32 ], [ %latency_ration.11517, %if.then284 ], [ %latency_ration.11517, %if.then269 ], [ %latency_ration.9508, %if.then238 ], [ %latency_ration.9508, %if.then223 ], [ 256, %if.else26.checks.preheader_crit_edge ], [ %latency_ration.0.lcssa, %for.end ], [ 256, %if.then22.checks.preheader_crit_edge ]
  %flags.i.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 8, i32 0, i32 1
  %percpu_cluster4.i = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 16
  %highest_bit83 = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 10
  %lowest_bit90 = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 9
  %swap_map94 = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 6
  %lock99 = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 24
  %data.i12.i.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 8, i32 1, i32 1
  %inuse_pages.i = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 12
  %pages.i = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 11
  %max.i = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 5
  %avail_lists.i.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 28
  %type = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 4
  %cluster_nr163 = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 14
  br label %checks.outer

checks.outer:                                     ; preds = %checks.outer.backedge, %checks.preheader
  %n_ret.0.ph460 = phi i32 [ %n_ret.0.ph, %checks.preheader ], [ %inc126, %checks.outer.backedge ]
  %latency_ration.3.ph461 = phi i32 [ %latency_ration.3.ph, %checks.preheader ], [ %latency_ration.3.ph461.be, %checks.outer.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_ret.0.ph460)
  %tobool71.not = icmp eq i32 %n_ret.0.ph460, 0
  br label %checks

checks:                                           ; preds = %unlock_cluster.exit.checks_crit_edge, %checks.outer
  %58 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cluster_info, align 4
  %tobool68.not = icmp eq ptr %59, null
  br i1 %tobool68.not, label %checks.if.end77_crit_edge, label %checks.while.cond_crit_edge

checks.while.cond_crit_edge:                      ; preds = %checks
  br label %while.cond

checks.if.end77_crit_edge:                        ; preds = %checks
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end77

while.cond:                                       ; preds = %if.end73.while.cond_crit_edge, %checks.while.cond_crit_edge
  %60 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset, align 4
  %div14.i = lshr i32 %61, 8
  %62 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load.i.i.i = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i404 = and i32 %bf.load.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i404)
  %tobool.i.i.i = icmp ne i32 %and.i.i.i404, 0
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div14.i, i32 %bf.lshr.i.i.i)
  %cmp.not.i = icmp eq i32 %div14.i, %bf.lshr.i.i.i
  %or.cond.i = or i1 %tobool.i.i.i, %cmp.not.i
  br i1 %or.cond.i, label %while.cond.if.end77_crit_edge, label %land.end.i

while.cond.if.end77_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end77

land.end.i:                                       ; preds = %while.cond
  %63 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cluster_info, align 4
  %flags.i.i = getelementptr %struct.swap_cluster_info, ptr %64, i32 %div14.i, i32 1
  %65 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %bf.load.i.i = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %bf.load.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %land.end.i.if.end77_crit_edge, label %while.body

land.end.i.if.end77_crit_edge:                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end77

while.body:                                       ; preds = %land.end.i
  %66 = ptrtoint ptr %percpu_cluster4.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %percpu_cluster4.i, align 4
  %68 = ptrtoint ptr %67 to i32
  %69 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i16.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i16.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cpu.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %72
  %73 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx7.i, align 4
  %add.i405 = add i32 %74, %68
  %75 = inttoptr i32 %add.i405 to ptr
  %flags.i17.i = getelementptr inbounds %struct.swap_cluster_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %flags.i17.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %flags.i17.i, align 4
  br i1 %tobool71.not, label %if.end73, label %while.body.done_crit_edge

while.body.done_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %done

if.end73:                                         ; preds = %while.body
  %call74 = call fastcc zeroext i1 @scan_swap_map_try_ssd_cluster(ptr noundef %si, ptr noundef nonnull %offset, ptr noundef nonnull %scan_base)
  br i1 %call74, label %if.end73.while.cond_crit_edge, label %if.end73.scan_crit_edge

if.end73.scan_crit_edge:                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #21
  br label %scan

if.end73.while.cond_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond

if.end77:                                         ; preds = %land.end.i.if.end77_crit_edge, %while.cond.if.end77_crit_edge, %checks.if.end77_crit_edge
  %77 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags, align 4
  %and79 = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end77.cleanup305_crit_edge, label %if.end82

if.end77.cleanup305_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup305

if.end82:                                         ; preds = %if.end77
  %79 = ptrtoint ptr %highest_bit83 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %highest_bit83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool84.not = icmp eq i32 %80, 0
  br i1 %tobool84.not, label %if.end82.cleanup305_crit_edge, label %if.end86

if.end82.cleanup305_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup305

if.end86:                                         ; preds = %if.end82
  %81 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %80)
  %cmp88 = icmp ugt i32 %82, %80
  br i1 %cmp88, label %if.then89, label %if.end86.if.end91_crit_edge

if.end86.if.end91_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end91

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #21
  %83 = ptrtoint ptr %lowest_bit90 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %lowest_bit90, align 4
  %85 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %offset, align 4
  %86 = ptrtoint ptr %scan_base to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %84, ptr %scan_base, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.end86.if.end91_crit_edge
  %87 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cluster_info, align 4
  %tobool.not.i = icmp eq ptr %88, null
  br i1 %tobool.not.i, label %if.end91.lock_cluster.exit_crit_edge, label %if.then.i

if.end91.lock_cluster.exit_crit_edge:             ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #21
  br label %lock_cluster.exit

if.then.i:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #21
  %89 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %offset, align 4
  %div4.i = lshr i32 %90, 8
  %add.ptr.i = getelementptr %struct.swap_cluster_info, ptr %88, i32 %div4.i
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i) #19
  br label %lock_cluster.exit

lock_cluster.exit:                                ; preds = %if.then.i, %if.end91.lock_cluster.exit_crit_edge
  %ci.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.end91.lock_cluster.exit_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nr_swap_pages, i32 noundef 4) #19
  %91 = load volatile i32, ptr @nr_swap_pages, align 4
  %mul.i = shl i32 %91, 1
  %92 = load i32, ptr @total_swap_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %92)
  %cmp.i = icmp slt i32 %mul.i, %92
  br i1 %cmp.i, label %land.lhs.true, label %lock_cluster.exit.if.end105_crit_edge

lock_cluster.exit.if.end105_crit_edge:            ; preds = %lock_cluster.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end105

land.lhs.true:                                    ; preds = %lock_cluster.exit
  %93 = ptrtoint ptr %swap_map94 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %swap_map94, align 4
  %95 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %offset, align 4
  %arrayidx95 = getelementptr i8, ptr %94, i32 %96
  %97 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx95, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %98)
  %cmp96 = icmp eq i8 %98, 64
  br i1 %cmp96, label %if.then98, label %land.lhs.true.if.end105_crit_edge

land.lhs.true.if.end105_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end105

if.then98:                                        ; preds = %land.lhs.true
  %tobool.not.i407 = icmp eq ptr %ci.0.i, null
  br i1 %tobool.not.i407, label %if.then98.unlock_cluster.exit_crit_edge, label %if.then.i408

if.then98.unlock_cluster.exit_crit_edge:          ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #21
  br label %unlock_cluster.exit

if.then.i408:                                     ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull %ci.0.i) #19
  br label %unlock_cluster.exit

unlock_cluster.exit:                              ; preds = %if.then.i408, %if.then98.unlock_cluster.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock99) #19
  %99 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %offset, align 4
  %call100 = tail call fastcc i32 @__try_to_reclaim_swap(ptr noundef %si, i32 noundef %100, i32 noundef 1)
  tail call void @_raw_spin_lock(ptr noundef %lock99) #19
  %tobool102.not = icmp eq i32 %call100, 0
  br i1 %tobool102.not, label %unlock_cluster.exit.scan_crit_edge, label %unlock_cluster.exit.checks_crit_edge

unlock_cluster.exit.checks_crit_edge:             ; preds = %unlock_cluster.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %checks

unlock_cluster.exit.scan_crit_edge:               ; preds = %unlock_cluster.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %scan

if.end105:                                        ; preds = %land.lhs.true.if.end105_crit_edge, %lock_cluster.exit.if.end105_crit_edge
  %101 = ptrtoint ptr %swap_map94 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %swap_map94, align 4
  %103 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %offset, align 4
  %arrayidx107 = getelementptr i8, ptr %102, i32 %104
  %105 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx107, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool108.not = icmp eq i8 %106, 0
  br i1 %tobool108.not, label %do.body118, label %if.then109

if.then109:                                       ; preds = %if.end105
  %tobool.not.i409 = icmp eq ptr %ci.0.i, null
  br i1 %tobool.not.i409, label %if.then109.unlock_cluster.exit411_crit_edge, label %if.then.i410

if.then109.unlock_cluster.exit411_crit_edge:      ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #21
  br label %unlock_cluster.exit411

if.then.i410:                                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull %ci.0.i) #19
  br label %unlock_cluster.exit411

unlock_cluster.exit411:                           ; preds = %if.then.i410, %if.then109.unlock_cluster.exit411_crit_edge
  br i1 %tobool71.not, label %unlock_cluster.exit411.scan_crit_edge, label %unlock_cluster.exit411.done_crit_edge

unlock_cluster.exit411.done_crit_edge:            ; preds = %unlock_cluster.exit411
  call void @__sanitizer_cov_trace_pc() #21
  br label %done

unlock_cluster.exit411.scan_crit_edge:            ; preds = %unlock_cluster.exit411
  call void @__sanitizer_cov_trace_pc() #21
  br label %scan

do.body118:                                       ; preds = %if.end105
  %107 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store1_noabort(i32 %107)
  store volatile i8 %usage, ptr %arrayidx107, align 1
  %108 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cluster_info, align 4
  %110 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %offset, align 4
  %div26.i = lshr i32 %111, 8
  %tobool.not.i412 = icmp eq ptr %109, null
  br i1 %tobool.not.i412, label %do.body118.inc_cluster_info_page.exit_crit_edge, label %if.end.i

do.body118.inc_cluster_info_page.exit_crit_edge:  ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #21
  br label %inc_cluster_info_page.exit

if.end.i:                                         ; preds = %do.body118
  %flags.i.i413 = getelementptr %struct.swap_cluster_info, ptr %109, i32 %div26.i, i32 1
  %112 = ptrtoint ptr %flags.i.i413 to i32
  call void @__asan_load4_noabort(i32 %112)
  %bf.load.i.i414 = load i32, ptr %flags.i.i413, align 4
  %and.i.i415 = and i32 %bf.load.i.i414, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i415)
  %tobool.i.not.i416 = icmp eq i32 %and.i.i415, 0
  br i1 %tobool.i.not.i416, label %do.body.i419, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  %113 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %bf.load.i.i.i.i = load i32, ptr %flags.i.i.i, align 4
  %bf.lshr.i.i.i.i = lshr i32 %bf.load.i.i.i.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i.i.i.i, i32 %div26.i)
  %cmp.not.i.i = icmp eq i32 %bf.lshr.i.i.i.i, %div26.i
  br i1 %cmp.not.i.i, label %do.end7.i.i, label %do.body2.i.i, !prof !251

do.body2.i.i:                                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 526, 0\0A.popsection", ""() #19, !srcloc !252
  unreachable

do.end7.i.i:                                      ; preds = %if.then1.i
  %114 = ptrtoint ptr %data.i12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %bf.load.i13.i.i.i = load i32, ptr %data.i12.i.i.i, align 4
  %bf.lshr.i14.i.i.i = lshr i32 %bf.load.i13.i.i.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i14.i.i.i, i32 %div26.i)
  %cmp.i.i.i = icmp eq i32 %bf.lshr.i14.i.i.i, %div26.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %115 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 2, ptr %flags.i.i.i, align 4
  %116 = ptrtoint ptr %data.i12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 2, ptr %data.i12.i.i.i, align 4
  br label %do.body.i419.thread

if.else.i.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %bf.lshr.i18.i.i.i = and i32 %bf.load.i.i414, -256
  %117 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %bf.lshr.i18.i.i.i, ptr %flags.i.i.i, align 4
  br label %do.body.i419.thread

do.body.i419.thread:                              ; preds = %if.else.i.i.i, %if.then.i.i.i
  %118 = ptrtoint ptr %flags.i.i413 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %flags.i.i413, align 4
  br label %do.end14.i

do.body.i419:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %bf.load.i.i414)
  %cmp.i418 = icmp ugt i32 %bf.load.i.i414, 65535
  br i1 %cmp.i418, label %do.body8.i, label %do.body.i419.do.end14.i_crit_edge, !prof !245

do.body.i419.do.end14.i_crit_edge:                ; preds = %do.body.i419
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end14.i

do.body8.i:                                       ; preds = %do.body.i419
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 564, 0\0A.popsection", ""() #19, !srcloc !253
  unreachable

do.end14.i:                                       ; preds = %do.body.i419.do.end14.i_crit_edge, %do.body.i419.thread
  %bf.load.i27.i451 = phi i32 [ 0, %do.body.i419.thread ], [ %bf.load.i.i414, %do.body.i419.do.end14.i_crit_edge ]
  %119 = add nuw nsw i32 %bf.load.i27.i451, 256
  %120 = ptrtoint ptr %flags.i.i413 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %flags.i.i413, align 4
  br label %inc_cluster_info_page.exit

inc_cluster_info_page.exit:                       ; preds = %do.end14.i, %do.body118.inc_cluster_info_page.exit_crit_edge
  %tobool.not.i420 = icmp eq ptr %ci.0.i, null
  br i1 %tobool.not.i420, label %inc_cluster_info_page.exit.unlock_cluster.exit423_crit_edge, label %if.then.i421

inc_cluster_info_page.exit.unlock_cluster.exit423_crit_edge: ; preds = %inc_cluster_info_page.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %unlock_cluster.exit423

if.then.i421:                                     ; preds = %inc_cluster_info_page.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull %ci.0.i) #19
  br label %unlock_cluster.exit423

unlock_cluster.exit423:                           ; preds = %if.then.i421, %inc_cluster_info_page.exit.unlock_cluster.exit423_crit_edge
  %121 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %offset, align 4
  %123 = ptrtoint ptr %lowest_bit90 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %lowest_bit90, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %122)
  %cmp.i424 = icmp eq i32 %124, %122
  br i1 %cmp.i424, label %if.then.i425, label %unlock_cluster.exit423.if.end.i426_crit_edge

unlock_cluster.exit423.if.end.i426_crit_edge:     ; preds = %unlock_cluster.exit423
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i426

if.then.i425:                                     ; preds = %unlock_cluster.exit423
  call void @__sanitizer_cov_trace_pc() #21
  %add2.i = add i32 %122, 1
  %125 = ptrtoint ptr %lowest_bit90 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %add2.i, ptr %lowest_bit90, align 4
  br label %if.end.i426

if.end.i426:                                      ; preds = %if.then.i425, %unlock_cluster.exit423.if.end.i426_crit_edge
  %126 = ptrtoint ptr %highest_bit83 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %highest_bit83, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %122)
  %cmp3.i = icmp eq i32 %127, %122
  br i1 %cmp3.i, label %do.body6.i, label %if.end.i426.if.end14.i_crit_edge

if.end.i426.if.end14.i_crit_edge:                 ; preds = %if.end.i426
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end14.i

do.body6.i:                                       ; preds = %if.end.i426
  call void @__sanitizer_cov_trace_pc() #21
  %sub8.i = add i32 %122, -1
  %128 = ptrtoint ptr %highest_bit83 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile i32 %sub8.i, ptr %highest_bit83, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.body6.i, %if.end.i426.if.end14.i_crit_edge
  %129 = ptrtoint ptr %inuse_pages.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %inuse_pages.i, align 4
  %add15.i = add i32 %130, 1
  store i32 %add15.i, ptr %inuse_pages.i, align 4
  %131 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %132)
  %cmp17.i = icmp eq i32 %add15.i, %132
  br i1 %cmp17.i, label %if.then18.i, label %if.end14.i.swap_range_alloc.exit_crit_edge

if.end14.i.swap_range_alloc.exit_crit_edge:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %swap_range_alloc.exit

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #21
  %133 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %max.i, align 4
  %135 = ptrtoint ptr %lowest_bit90 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %lowest_bit90, align 4
  %136 = ptrtoint ptr %highest_bit83 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %highest_bit83, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_avail_lock) #19
  %137 = load ptr, ptr @swap_avail_heads, align 4
  tail call void @plist_del(ptr noundef %avail_lists.i.i.i, ptr noundef %137) #19
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_avail_lock) #19
  br label %swap_range_alloc.exit

swap_range_alloc.exit:                            ; preds = %if.then18.i, %if.end14.i.swap_range_alloc.exit_crit_edge
  %inc126 = add i32 %n_ret.0.ph460, 1
  %arrayidx127 = getelementptr %struct.swp_entry_t, ptr %slots, i32 %n_ret.0.ph460
  %138 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %type, align 4
  %conv129456 = zext i8 %139 to i32
  %140 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %offset, align 4
  %shl.i = shl i32 %conv129456, 26
  %and.i427 = and i32 %141, 67108863
  %or.i = or i32 %and.i427, %shl.i
  %142 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %or.i, ptr %arrayidx127, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc126, i32 %nr)
  %cmp131 = icmp eq i32 %inc126, %nr
  br i1 %cmp131, label %swap_range_alloc.exit.done_crit_edge, label %lor.lhs.false

swap_range_alloc.exit.done_crit_edge:             ; preds = %swap_range_alloc.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %done

lor.lhs.false:                                    ; preds = %swap_range_alloc.exit
  %143 = ptrtoint ptr %highest_bit83 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %highest_bit83, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %144)
  %cmp134.not = icmp ult i32 %141, %144
  br i1 %cmp134.not, label %if.end137, label %lor.lhs.false.done_crit_edge

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %done

if.end137:                                        ; preds = %lor.lhs.false
  %dec138 = add i32 %latency_ration.3.ph461, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec138)
  %cmp139 = icmp slt i32 %dec138, 0
  br i1 %cmp139, label %if.then147, label %if.end137.if.end155_crit_edge, !prof !245

if.end137.if.end155_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end155

if.then147:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc126)
  %tobool148.not = icmp eq i32 %inc126, 0
  br i1 %tobool148.not, label %if.end150, label %if.then147.done_crit_edge

if.then147.done_crit_edge:                        ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #21
  br label %done

if.end150:                                        ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock(ptr noundef %lock99) #19
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 912, i32 noundef 0) #19
  %call.i428 = tail call i32 @__cond_resched() #19
  tail call void @_raw_spin_lock(ptr noundef %lock99) #19
  br label %if.end155

if.end155:                                        ; preds = %if.end150, %if.end137.if.end155_crit_edge
  %latency_ration.4 = phi i32 [ 256, %if.end150 ], [ %dec138, %if.end137.if.end155_crit_edge ]
  %145 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cluster_info, align 4
  %tobool157.not = icmp eq ptr %146, null
  br i1 %tobool157.not, label %if.else162, label %if.then158

if.then158:                                       ; preds = %if.end155
  %call159 = call fastcc zeroext i1 @scan_swap_map_try_ssd_cluster(ptr noundef %si, ptr noundef nonnull %offset, ptr noundef nonnull %scan_base)
  br i1 %call159, label %if.then158.checks.outer.backedge_crit_edge, label %if.then158.if.end174_crit_edge

if.then158.if.end174_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end174

if.then158.checks.outer.backedge_crit_edge:       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #21
  br label %checks.outer.backedge

checks.outer.backedge:                            ; preds = %for.body189.checks.outer.backedge_crit_edge, %if.then170, %if.then158.checks.outer.backedge_crit_edge
  %latency_ration.3.ph461.be = phi i32 [ %latency_ration.4, %if.then158.checks.outer.backedge_crit_edge ], [ %latency_ration.4, %if.then170 ], [ %dec186, %for.body189.checks.outer.backedge_crit_edge ]
  br label %checks.outer

if.else162:                                       ; preds = %if.end155
  %147 = ptrtoint ptr %cluster_nr163 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cluster_nr163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool164.not = icmp eq i32 %148, 0
  br i1 %tobool164.not, label %if.else162.if.end174_crit_edge, label %land.lhs.true165

if.else162.if.end174_crit_edge:                   ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end174

land.lhs.true165:                                 ; preds = %if.else162
  %149 = ptrtoint ptr %swap_map94 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %swap_map94, align 4
  %151 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %offset, align 4
  %inc167 = add i32 %152, 1
  store i32 %inc167, ptr %offset, align 4
  %arrayidx168 = getelementptr i8, ptr %150, i32 %inc167
  %153 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx168, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool169.not = icmp eq i8 %154, 0
  br i1 %tobool169.not, label %if.then170, label %land.lhs.true165.if.end174_crit_edge

land.lhs.true165.if.end174_crit_edge:             ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end174

if.then170:                                       ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #21
  %dec172 = add i32 %148, -1
  %155 = ptrtoint ptr %cluster_nr163 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %dec172, ptr %cluster_nr163, align 4
  br label %checks.outer.backedge

if.end174:                                        ; preds = %land.lhs.true165.if.end174_crit_edge, %if.else162.if.end174_crit_edge, %if.then158.if.end174_crit_edge
  br i1 %scanned_many.0.off0.ph, label %if.end174.done_crit_edge, label %if.then176

if.end174.done_crit_edge:                         ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #21
  br label %done

if.then176:                                       ; preds = %if.end174
  %156 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %offset, align 4
  %158 = ptrtoint ptr %scan_base to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %scan_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %159)
  %cmp177 = icmp ult i32 %157, %159
  br i1 %cmp177, label %if.then176.if.end182_crit_edge, label %if.else180

if.then176.if.end182_crit_edge:                   ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end182

if.else180:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #21
  %160 = ptrtoint ptr %highest_bit83 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %highest_bit83, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.else180, %if.then176.if.end182_crit_edge
  %scan_limit.0 = phi i32 [ %161, %if.else180 ], [ %159, %if.then176.if.end182_crit_edge ]
  %162 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %scan_limit.0)
  %cmp184.not499 = icmp ugt i32 %163, %scan_limit.0
  br i1 %cmp184.not499, label %if.end182.done_crit_edge, label %if.end182.land.rhs_crit_edge

if.end182.land.rhs_crit_edge:                     ; preds = %if.end182
  br label %land.rhs

if.end182.done_crit_edge:                         ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #21
  br label %done

land.rhs:                                         ; preds = %for.inc195.land.rhs_crit_edge, %if.end182.land.rhs_crit_edge
  %164 = phi i32 [ %inc196, %for.inc195.land.rhs_crit_edge ], [ %163, %if.end182.land.rhs_crit_edge ]
  %latency_ration.5500 = phi i32 [ %dec186, %for.inc195.land.rhs_crit_edge ], [ %latency_ration.4, %if.end182.land.rhs_crit_edge ]
  %dec186 = add i32 %latency_ration.5500, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec186)
  %cmp187 = icmp sgt i32 %dec186, 0
  br i1 %cmp187, label %for.body189, label %land.rhs.done_crit_edge

land.rhs.done_crit_edge:                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %done

for.body189:                                      ; preds = %land.rhs
  %165 = ptrtoint ptr %swap_map94 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %swap_map94, align 4
  %arrayidx191 = getelementptr i8, ptr %166, i32 %164
  %167 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx191, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool192.not = icmp eq i8 %168, 0
  br i1 %tobool192.not, label %for.body189.checks.outer.backedge_crit_edge, label %for.inc195

for.body189.checks.outer.backedge_crit_edge:      ; preds = %for.body189
  call void @__sanitizer_cov_trace_pc() #21
  br label %checks.outer.backedge

for.inc195:                                       ; preds = %for.body189
  %inc196 = add i32 %164, 1
  %169 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %inc196, ptr %offset, align 4
  %cmp184.not = icmp ugt i32 %inc196, %scan_limit.0
  br i1 %cmp184.not, label %for.inc195.done_crit_edge, label %for.inc195.land.rhs_crit_edge

for.inc195.land.rhs_crit_edge:                    ; preds = %for.inc195
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.rhs

for.inc195.done_crit_edge:                        ; preds = %for.inc195
  call void @__sanitizer_cov_trace_pc() #21
  br label %done

done:                                             ; preds = %for.inc195.done_crit_edge, %land.rhs.done_crit_edge, %if.end182.done_crit_edge, %if.end174.done_crit_edge, %if.then147.done_crit_edge, %lor.lhs.false.done_crit_edge, %swap_range_alloc.exit.done_crit_edge, %unlock_cluster.exit411.done_crit_edge, %while.body.done_crit_edge
  %n_ret.1 = phi i32 [ %n_ret.0.ph460, %unlock_cluster.exit411.done_crit_edge ], [ %n_ret.0.ph460, %while.body.done_crit_edge ], [ %inc126, %land.rhs.done_crit_edge ], [ %inc126, %for.inc195.done_crit_edge ], [ %inc126, %if.end174.done_crit_edge ], [ %inc126, %if.then147.done_crit_edge ], [ %nr, %swap_range_alloc.exit.done_crit_edge ], [ %inc126, %lor.lhs.false.done_crit_edge ], [ %inc126, %if.end182.done_crit_edge ]
  %170 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %offset, align 4
  %add201 = add i32 %171, 1
  %172 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %flags, align 4
  %and.i429 = and i32 %173, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i429)
  %tobool.not.i430 = icmp eq i32 %and.i429, 0
  br i1 %tobool.not.i430, label %if.then.i431, label %if.end.i436

if.then.i431:                                     ; preds = %done
  call void @__sanitizer_cov_trace_pc() #21
  %cluster_next.i = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 13
  %174 = ptrtoint ptr %cluster_next.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %add201, ptr %cluster_next.i, align 4
  br label %cleanup305

if.end.i436:                                      ; preds = %done
  %175 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i = and i32 %175, -16384
  %176 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %178, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !254
  %cluster_next_cpu.i = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 15
  %179 = ptrtoint ptr %cluster_next_cpu.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %cluster_next_cpu.i, align 4
  %181 = ptrtoint ptr %180 to i32
  %182 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i432 = and i32 %182, -16384
  %183 = inttoptr i32 %and.i.i432 to ptr
  %cpu.i433 = getelementptr inbounds %struct.thread_info, ptr %183, i32 0, i32 3
  %184 = ptrtoint ptr %cpu.i433 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cpu.i433, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %185
  %186 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx.i, align 4
  %add.i434 = add i32 %187, %181
  %188 = inttoptr i32 %add.i434 to ptr
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %188, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !255
  %191 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i103.i = and i32 %191, -16384
  %192 = inttoptr i32 %and.i.i.i103.i to ptr
  %preempt_count.i.i104.i = getelementptr inbounds %struct.thread_info, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %preempt_count.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile i32, ptr %preempt_count.i.i104.i, align 4
  %sub.i.i = add i32 %194, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i104.i, align 4
  %cmp.not.unshifted.i = xor i32 %190, %add201
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %cmp.not.unshifted.i)
  %cmp.not.i435 = icmp ult i32 %cmp.not.unshifted.i, 16384
  br i1 %cmp.not.i435, label %if.end.i436.do.body38.i_crit_edge, label %if.then20.i

if.end.i436.do.body38.i_crit_edge:                ; preds = %if.end.i436
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body38.i

if.then20.i:                                      ; preds = %if.end.i436
  %195 = ptrtoint ptr %highest_bit83 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %highest_bit83, align 4
  %197 = ptrtoint ptr %lowest_bit90 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %lowest_bit90, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %196, i32 %198)
  %cmp21.not.i = icmp ugt i32 %196, %198
  br i1 %cmp21.not.i, label %if.end23.i, label %if.then20.i.cleanup305_crit_edge

if.then20.i.cleanup305_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup305

if.end23.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i439 = add i32 %196, 1
  %add27.i = sub i32 %sub.i439, %198
  %call.i.i = tail call i32 @prandom_u32() #19
  %conv.i.i = zext i32 %call.i.i to i64
  %conv1.i.i = zext i32 %add27.i to i64
  %mul.i.i = mul nuw i64 %conv.i.i, %conv1.i.i
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %add29.i = add i32 %198, %conv2.i.i
  %and32.i = and i32 %add29.i, -16384
  %199 = ptrtoint ptr %lowest_bit90 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %lowest_bit90, align 4
  %201 = tail call i32 @llvm.umax.i32(i32 %and32.i, i32 %200) #19
  br label %do.body38.i

do.body38.i:                                      ; preds = %if.end23.i, %if.end.i436.do.body38.i_crit_edge
  %next.addr.0.i = phi i32 [ %201, %if.end23.i ], [ %add201, %if.end.i436.do.body38.i_crit_edge ]
  %202 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !256
  %203 = ptrtoint ptr %cluster_next_cpu.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %cluster_next_cpu.i, align 4
  %205 = ptrtoint ptr %204 to i32
  %206 = ptrtoint ptr %cpu.i433 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %cpu.i433, align 4
  %arrayidx60.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %207
  %208 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx60.i, align 4
  %add61.i = add i32 %209, %205
  %210 = inttoptr i32 %add61.i to ptr
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %next.addr.0.i, ptr %210, align 4
  %212 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !257
  %and.i.i.i440 = and i32 %212, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i440)
  %tobool72.not.i = icmp eq i32 %and.i.i.i440, 0
  br i1 %tobool72.not.i, label %if.then76.i, label %do.body38.i.do.end79.i_crit_edge, !prof !245

do.body38.i.do.end79.i_crit_edge:                 ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end79.i

if.then76.i:                                      ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @warn_bogus_irq_restore() #19
  br label %do.end79.i

do.end79.i:                                       ; preds = %if.then76.i, %do.body38.i.do.end79.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %202) #19, !srcloc !258
  br label %cleanup305

scan:                                             ; preds = %unlock_cluster.exit411.scan_crit_edge, %unlock_cluster.exit.scan_crit_edge, %if.end73.scan_crit_edge, %if.then22.scan_crit_edge
  %scanned_many.1.off0 = phi i1 [ %scanned_many.0.off0.ph, %unlock_cluster.exit411.scan_crit_edge ], [ false, %if.then22.scan_crit_edge ], [ %scanned_many.0.off0.ph, %if.end73.scan_crit_edge ], [ %scanned_many.0.off0.ph, %unlock_cluster.exit.scan_crit_edge ]
  %n_ret.2 = phi i32 [ 0, %unlock_cluster.exit411.scan_crit_edge ], [ 0, %if.then22.scan_crit_edge ], [ 0, %if.end73.scan_crit_edge ], [ %n_ret.0.ph460, %unlock_cluster.exit.scan_crit_edge ]
  %latency_ration.8 = phi i32 [ %latency_ration.3.ph461, %unlock_cluster.exit411.scan_crit_edge ], [ 256, %if.then22.scan_crit_edge ], [ %latency_ration.3.ph461, %if.end73.scan_crit_edge ], [ %latency_ration.3.ph461, %unlock_cluster.exit.scan_crit_edge ]
  %lock204 = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 24
  tail call void @_raw_spin_unlock(ptr noundef %lock204) #19
  %highest_bit211 = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 10
  %213 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %offset, align 4
  %inc206504 = add i32 %214, 1
  store i32 %inc206504, ptr %offset, align 4
  %215 = ptrtoint ptr %highest_bit211 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load volatile i32, ptr %highest_bit211, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc206504, i32 %216)
  %cmp212.not505 = icmp ugt i32 %inc206504, %216
  br i1 %cmp212.not505, label %scan.while.end254_crit_edge, label %while.body214.lr.ph

scan.while.end254_crit_edge:                      ; preds = %scan
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end254

while.body214.lr.ph:                              ; preds = %scan
  %swap_map216 = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 6
  br label %while.body214

while.body214:                                    ; preds = %if.end253.while.body214_crit_edge, %while.body214.lr.ph
  %inc206510 = phi i32 [ %inc206504, %while.body214.lr.ph ], [ %inc206, %if.end253.while.body214_crit_edge ]
  %latency_ration.9508 = phi i32 [ %latency_ration.8, %while.body214.lr.ph ], [ %latency_ration.10, %if.end253.while.body214_crit_edge ]
  %scanned_many.2.off0506 = phi i1 [ %scanned_many.1.off0, %while.body214.lr.ph ], [ %scanned_many.3.off0, %if.end253.while.body214_crit_edge ]
  %217 = ptrtoint ptr %swap_map216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %swap_map216, align 4
  %arrayidx217 = getelementptr i8, ptr %218, i32 %inc206510
  %219 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx217, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool218.not = icmp eq i8 %220, 0
  br i1 %tobool218.not, label %if.then223, label %if.end225

if.then223:                                       ; preds = %while.body214
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_lock(ptr noundef %lock204) #19
  br label %checks.preheader

if.end225:                                        ; preds = %while.body214
  %call.i.i.i441 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nr_swap_pages, i32 noundef 4) #19
  %221 = load volatile i32, ptr @nr_swap_pages, align 4
  %mul.i442 = shl i32 %221, 1
  %222 = load i32, ptr @total_swap_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i442, i32 %222)
  %cmp.i443 = icmp slt i32 %mul.i442, %222
  br i1 %cmp.i443, label %do.end231, label %if.end225.if.end240_crit_edge

if.end225.if.end240_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end240

do.end231:                                        ; preds = %if.end225
  %223 = ptrtoint ptr %swap_map216 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %swap_map216, align 4
  %225 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %offset, align 4
  %arrayidx234 = getelementptr i8, ptr %224, i32 %226
  %227 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load volatile i8, ptr %arrayidx234, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %228)
  %cmp236 = icmp eq i8 %228, 64
  br i1 %cmp236, label %if.then238, label %do.end231.if.end240_crit_edge

do.end231.if.end240_crit_edge:                    ; preds = %do.end231
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end240

if.then238:                                       ; preds = %do.end231
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_lock(ptr noundef %lock204) #19
  br label %checks.preheader

if.end240:                                        ; preds = %do.end231.if.end240_crit_edge, %if.end225.if.end240_crit_edge
  %dec241 = add i32 %latency_ration.9508, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec241)
  %cmp242 = icmp slt i32 %dec241, 0
  br i1 %cmp242, label %if.then250, label %if.end240.if.end253_crit_edge, !prof !245

if.end240.if.end253_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end253

if.then250:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 964, i32 noundef 0) #19
  %call.i444 = tail call i32 @__cond_resched() #19
  br label %if.end253

if.end253:                                        ; preds = %if.then250, %if.end240.if.end253_crit_edge
  %scanned_many.3.off0 = phi i1 [ true, %if.then250 ], [ %scanned_many.2.off0506, %if.end240.if.end253_crit_edge ]
  %latency_ration.10 = phi i32 [ 256, %if.then250 ], [ %dec241, %if.end240.if.end253_crit_edge ]
  %229 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %offset, align 4
  %inc206 = add i32 %230, 1
  store i32 %inc206, ptr %offset, align 4
  %231 = ptrtoint ptr %highest_bit211 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load volatile i32, ptr %highest_bit211, align 4
  %cmp212.not = icmp ugt i32 %inc206, %232
  br i1 %cmp212.not, label %if.end253.while.end254_crit_edge, label %if.end253.while.body214_crit_edge

if.end253.while.body214_crit_edge:                ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body214

if.end253.while.end254_crit_edge:                 ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end254

while.end254:                                     ; preds = %if.end253.while.end254_crit_edge, %scan.while.end254_crit_edge
  %scanned_many.2.off0.lcssa = phi i1 [ %scanned_many.1.off0, %scan.while.end254_crit_edge ], [ %scanned_many.3.off0, %if.end253.while.end254_crit_edge ]
  %latency_ration.9.lcssa = phi i32 [ %latency_ration.8, %scan.while.end254_crit_edge ], [ %latency_ration.10, %if.end253.while.end254_crit_edge ]
  %lowest_bit255 = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 9
  %233 = ptrtoint ptr %lowest_bit255 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %lowest_bit255, align 4
  %235 = ptrtoint ptr %scan_base to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %scan_base, align 4
  %237 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %234, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %234, i32 %236)
  %cmp257513 = icmp ult i32 %234, %236
  br i1 %cmp257513, label %while.body259.lr.ph, label %while.end254.while.end301_crit_edge

while.end254.while.end301_crit_edge:              ; preds = %while.end254
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end301

while.body259.lr.ph:                              ; preds = %while.end254
  %swap_map262 = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 6
  br label %while.body259

while.body259:                                    ; preds = %if.end299.while.body259_crit_edge, %while.body259.lr.ph
  %latency_ration.11517 = phi i32 [ %latency_ration.9.lcssa, %while.body259.lr.ph ], [ %latency_ration.12, %if.end299.while.body259_crit_edge ]
  %scanned_many.4.off0515 = phi i1 [ %scanned_many.2.off0.lcssa, %while.body259.lr.ph ], [ %scanned_many.5.off0, %if.end299.while.body259_crit_edge ]
  %storemerge401514 = phi i32 [ %234, %while.body259.lr.ph ], [ %inc300, %if.end299.while.body259_crit_edge ]
  %238 = ptrtoint ptr %swap_map262 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %swap_map262, align 4
  %arrayidx263 = getelementptr i8, ptr %239, i32 %storemerge401514
  %240 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx263, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool264.not = icmp eq i8 %241, 0
  br i1 %tobool264.not, label %if.then269, label %if.end271

if.then269:                                       ; preds = %while.body259
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_lock(ptr noundef %lock204) #19
  br label %checks.preheader

if.end271:                                        ; preds = %while.body259
  %call.i.i.i445 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nr_swap_pages, i32 noundef 4) #19
  %242 = load volatile i32, ptr @nr_swap_pages, align 4
  %mul.i446 = shl i32 %242, 1
  %243 = load i32, ptr @total_swap_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i446, i32 %243)
  %cmp.i447 = icmp slt i32 %mul.i446, %243
  br i1 %cmp.i447, label %do.end277, label %if.end271.if.end286_crit_edge

if.end271.if.end286_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end286

do.end277:                                        ; preds = %if.end271
  %244 = ptrtoint ptr %swap_map262 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %swap_map262, align 4
  %246 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %offset, align 4
  %arrayidx280 = getelementptr i8, ptr %245, i32 %247
  %248 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load volatile i8, ptr %arrayidx280, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %249)
  %cmp282 = icmp eq i8 %249, 64
  br i1 %cmp282, label %if.then284, label %do.end277.if.end286_crit_edge

do.end277.if.end286_crit_edge:                    ; preds = %do.end277
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end286

if.then284:                                       ; preds = %do.end277
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_lock(ptr noundef %lock204) #19
  br label %checks.preheader

if.end286:                                        ; preds = %do.end277.if.end286_crit_edge, %if.end271.if.end286_crit_edge
  %dec287 = add i32 %latency_ration.11517, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec287)
  %cmp288 = icmp slt i32 %dec287, 0
  br i1 %cmp288, label %if.then296, label %if.end286.if.end299_crit_edge, !prof !245

if.end286.if.end299_crit_edge:                    ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end299

if.then296:                                       ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 981, i32 noundef 0) #19
  %call.i448 = tail call i32 @__cond_resched() #19
  br label %if.end299

if.end299:                                        ; preds = %if.then296, %if.end286.if.end299_crit_edge
  %scanned_many.5.off0 = phi i1 [ true, %if.then296 ], [ %scanned_many.4.off0515, %if.end286.if.end299_crit_edge ]
  %latency_ration.12 = phi i32 [ 256, %if.then296 ], [ %dec287, %if.end286.if.end299_crit_edge ]
  %250 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %offset, align 4
  %inc300 = add i32 %251, 1
  store i32 %inc300, ptr %offset, align 4
  %cmp257 = icmp ult i32 %inc300, %236
  br i1 %cmp257, label %if.end299.while.body259_crit_edge, label %if.end299.while.end301_crit_edge

if.end299.while.end301_crit_edge:                 ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end301

if.end299.while.body259_crit_edge:                ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body259

while.end301:                                     ; preds = %if.end299.while.end301_crit_edge, %while.end254.while.end301_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %lock204) #19
  br label %cleanup305

cleanup305:                                       ; preds = %while.end301, %do.end79.i, %if.then20.i.cleanup305_crit_edge, %if.then.i431, %if.end82.cleanup305_crit_edge, %if.end77.cleanup305_crit_edge
  %retval.0 = phi i32 [ %n_ret.1, %if.then.i431 ], [ %n_ret.1, %if.then20.i.cleanup305_crit_edge ], [ %n_ret.1, %do.end79.i ], [ %n_ret.2, %while.end301 ], [ %n_ret.0.ph460, %if.end82.cleanup305_crit_edge ], [ %n_ret.0.ph460, %if.end77.cleanup305_crit_edge ]
  %252 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %252)
  %storemerge455.in = load i32, ptr %flags, align 4
  %storemerge455 = add i32 %storemerge455.in, -16384
  store i32 %storemerge455, ptr %flags, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scan_base) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_swap_device([1 x i32] %entry.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %entry.coerce.fca.0.extract = extractvalue [1 x i32] %entry.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entry.coerce.fca.0.extract)
  %tobool.not = icmp eq i32 %entry.coerce.fca.0.extract, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2013265919, i32 %entry.coerce.fca.0.extract)
  %cmp.i.i = icmp ugt i32 %entry.coerce.fca.0.extract, 2013265919
  br i1 %cmp.i.i, label %if.end.do.end19_crit_edge, label %swp_swap_info.exit

if.end.do.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end19

swp_swap_info.exit:                               ; preds = %if.end
  %shr.i.i = lshr i32 %entry.coerce.fca.0.extract, 26
  %arrayidx.i.i = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %shr.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %swp_swap_info.exit.do.end19_crit_edge, label %if.end6

swp_swap_info.exit.do.end19_crit_edge:            ; preds = %swp_swap_info.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end19

if.end6:                                          ; preds = %swp_swap_info.exit
  %2 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !259
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #19
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i.i, label %if.end6.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end6.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end6
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #19
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end6.rcu_read_lock.exit.i_crit_edge
  %call.i1.i = tail call i32 @rcu_read_lock_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i2.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i2.i, label %land.rhs.i.i, label %rcu_read_lock.exit.i.if.end29.i.i_crit_edge

rcu_read_lock.exit.i.if.end29.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %rcu_read_lock.exit.i
  %.b104.i.i = load i1, ptr @percpu_ref_tryget_live_rcu.__already_done, align 1
  br i1 %.b104.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i3.i, !prof !251

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end29.i.i

if.then.i3.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @percpu_ref_tryget_live_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 280, i32 noundef 9, ptr noundef null) #19
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i3.i, %land.rhs.i.i.if.end29.i.i_crit_edge, %rcu_read_lock.exit.i.if.end29.i.i_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %1, align 4
  %and.i.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body46.i.i, label %if.else.i.i, !prof !251

do.body46.i.i:                                    ; preds = %if.end29.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !256
  %9 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i105.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i105.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i34 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i34, align 4
  %add.i.i = add i32 %14, %7
  %15 = inttoptr i32 %add.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add63.i.i = add i32 %17, 1
  store i32 %add63.i.i, ptr %15, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !257
  %and.i.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool74.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool74.not.i.i, label %if.then83.i.i, label %do.body46.i.i.do.end86.i.i_crit_edge, !prof !245

do.body46.i.i.do.end86.i.i_crit_edge:             ; preds = %do.body46.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end86.i.i

if.then83.i.i:                                    ; preds = %do.body46.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @warn_bogus_irq_restore() #19
  br label %do.end86.i.i

do.end86.i.i:                                     ; preds = %if.then83.i.i, %do.body46.i.i.do.end86.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #19, !srcloc !258
  br label %percpu_ref_tryget_live_rcu.exit.i

if.else.i.i:                                      ; preds = %if.end29.i.i
  %and.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool93.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool93.not.i.i, label %if.then94.i.i, label %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge

if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %percpu_ref_tryget_live_rcu.exit.i

if.then94.i.i:                                    ; preds = %if.else.i.i
  %data.i.i = getelementptr inbounds %struct.percpu_ref, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %20, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !260
  tail call void @llvm.prefetch.p0(ptr %20, i32 1, i32 3, i32 1) #19
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 0, i32 1, ptr elementtype(i32) %20) #19, !srcloc !261
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge: ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %atomic_long_inc_not_zero.exit.i.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !262
  br label %atomic_long_inc_not_zero.exit.i.i

atomic_long_inc_not_zero.exit.i.i:                ; preds = %do.end11.i.i.i.i.i.i.i, %if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i.i, 0
  br label %percpu_ref_tryget_live_rcu.exit.i

percpu_ref_tryget_live_rcu.exit.i:                ; preds = %atomic_long_inc_not_zero.exit.i.i, %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge, %do.end86.i.i
  %ret.0.off0.i.i = phi i1 [ true, %do.end86.i.i ], [ false, %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge ], [ %cmp.i.i.i.i.i.i, %atomic_long_inc_not_zero.exit.i.i ]
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i4.i, label %percpu_ref_tryget_live_rcu.exit.i.percpu_ref_tryget_live.exit_crit_edge, label %land.lhs.true.i7.i

percpu_ref_tryget_live_rcu.exit.i.percpu_ref_tryget_live.exit_crit_edge: ; preds = %percpu_ref_tryget_live_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %percpu_ref_tryget_live.exit

land.lhs.true.i7.i:                               ; preds = %percpu_ref_tryget_live_rcu.exit.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.percpu_ref_tryget_live.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.percpu_ref_tryget_live.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %percpu_ref_tryget_live.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.percpu_ref_tryget_live.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.percpu_ref_tryget_live.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %percpu_ref_tryget_live.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.19) #19
  br label %percpu_ref_tryget_live.exit

percpu_ref_tryget_live.exit:                      ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.percpu_ref_tryget_live.exit_crit_edge, %land.lhs.true.i7.i.percpu_ref_tryget_live.exit_crit_edge, %percpu_ref_tryget_live_rcu.exit.i.percpu_ref_tryget_live.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !263
  %22 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i.i11.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #19
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  br i1 %ret.0.off0.i.i, label %do.end, label %percpu_ref_tryget_live.exit.cleanup_crit_edge

percpu_ref_tryget_live.exit.cleanup_crit_edge:    ; preds = %percpu_ref_tryget_live.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end:                                           ; preds = %percpu_ref_tryget_live.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !264
  %and.i = and i32 %entry.coerce.fca.0.extract, 67108863
  %max = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %27)
  %cmp.not = icmp ult i32 %and.i, %27
  br i1 %cmp.not, label %do.end.cleanup_crit_edge, label %put_out

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end19:                                         ; preds = %swp_swap_info.exit.do.end19_crit_edge, %if.end.do.end19_crit_edge
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @Bad_file, i32 noundef %entry.coerce.fca.0.extract) #22
  br label %cleanup

put_out:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @percpu_ref_put(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %put_out, %do.end19, %do.end.cleanup_crit_edge, %percpu_ref_tryget_live.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %put_out ], [ %1, %do.end.cleanup_crit_edge ], [ null, %percpu_ref_tryget_live.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %do.end19 ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @swp_swap_info([1 x i32] %entry.coerce) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %entry.coerce.fca.0.extract.i = extractvalue [1 x i32] %entry.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2013265919, i32 %entry.coerce.fca.0.extract.i)
  %cmp.i = icmp ugt i32 %entry.coerce.fca.0.extract.i, 2013265919
  br i1 %cmp.i, label %entry.swap_type_to_swap_info.exit_crit_edge, label %do.end.i

entry.swap_type_to_swap_info.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %swap_type_to_swap_info.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %shr.i = lshr i32 %entry.coerce.fca.0.extract.i, 26
  %arrayidx.i = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %shr.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i, align 4
  br label %swap_type_to_swap_info.exit

swap_type_to_swap_info.exit:                      ; preds = %do.end.i, %entry.swap_type_to_swap_info.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %do.end.i ], [ null, %entry.swap_type_to_swap_info.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @percpu_ref_put(ptr noundef %ref) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %0 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !259
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #19
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #19
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ref, align 4
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i1.i, label %do.body1.i, label %if.else.i, !prof !251

do.body1.i:                                       ; preds = %rcu_read_lock.exit.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !256
  %7 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i2.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i = add i32 %15, -1
  store i32 %add15.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !257
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then29.i, label %do.body1.i.do.end31.i_crit_edge, !prof !245

do.body1.i.do.end31.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end31.i

if.then29.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @warn_bogus_irq_restore() #19
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then29.i, %do.body1.i.do.end31.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #19, !srcloc !258
  br label %if.end48.i

if.else.i:                                        ; preds = %rcu_read_lock.exit.i
  %data.i = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !265
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #19
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #19, !srcloc !266
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then45.i, label %if.else.i.if.end48.i_crit_edge, !prof !245

if.else.i.if.end48.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end48.i

if.then45.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %release.i = getelementptr inbounds %struct.percpu_ref_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release.i, align 4
  tail call void %23(ptr noundef %ref) #19
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then45.i, %if.else.i.if.end48.i_crit_edge, %do.end31.i
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i3.i, label %if.end48.i.percpu_ref_put_many.exit_crit_edge, label %land.lhs.true.i6.i

if.end48.i.percpu_ref_put_many.exit_crit_edge:    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %percpu_ref_put_many.exit

land.lhs.true.i6.i:                               ; preds = %if.end48.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %percpu_ref_put_many.exit

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %percpu_ref_put_many.exit

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.19) #19
  br label %percpu_ref_put_many.exit

percpu_ref_put_many.exit:                         ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge, %land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge, %if.end48.i.percpu_ref_put_many.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !263
  %24 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i.i10.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i11.i, align 4
  tail call void @rcu_read_unlock_strict() #19
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @swap_free([1 x i32] %entry.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %entry.coerce.fca.0.extract.i = extractvalue [1 x i32] %entry.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entry.coerce.fca.0.extract.i)
  %tobool.not.i.i = icmp eq i32 %entry.coerce.fca.0.extract.i, 0
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %if.end.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2013265919, i32 %entry.coerce.fca.0.extract.i)
  %cmp.i.i.i.i = icmp ugt i32 %entry.coerce.fca.0.extract.i, 2013265919
  br i1 %cmp.i.i.i.i, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge, label %swp_swap_info.exit.i.i

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i

swp_swap_info.exit.i.i:                           ; preds = %if.end.i.i
  %shr.i.i.i.i = lshr i32 %entry.coerce.fca.0.extract.i, 26
  %arrayidx.i.i.i.i = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %shr.i.i.i.i
  %0 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i.i.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %1, null
  br i1 %tobool4.not.i.i, label %swp_swap_info.exit.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end6.i.i

swp_swap_info.exit.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %swp_swap_info.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i

if.end6.i.i:                                      ; preds = %swp_swap_info.exit.i.i
  %flags.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end6.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end11.i.i

if.end6.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i

if.end11.i.i:                                     ; preds = %if.end6.i.i
  %and.i.i.i = and i32 %entry.coerce.fca.0.extract.i, 67108863
  %max.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i, i32 %5)
  %cmp.not.i.i = icmp ult i32 %and.i.i.i, %5
  br i1 %cmp.not.i.i, label %if.end.i, label %if.end11.i.i.cleanup.sink.split.i.i_crit_edge

if.end11.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end11.i.i.cleanup.sink.split.i.i_crit_edge, %if.end6.i.i.cleanup.sink.split.i.i_crit_edge, %swp_swap_info.exit.i.i.cleanup.sink.split.i.i_crit_edge, %if.end.i.i.cleanup.sink.split.i.i_crit_edge
  %Bad_offset.sink.i.i = phi ptr [ @Bad_offset, %if.end11.i.i.cleanup.sink.split.i.i_crit_edge ], [ @Unused_file, %if.end6.i.i.cleanup.sink.split.i.i_crit_edge ], [ @Bad_file, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ], [ @Bad_file, %swp_swap_info.exit.i.i.cleanup.sink.split.i.i_crit_edge ]
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.21, ptr noundef nonnull %Bad_offset.sink.i.i, i32 noundef %entry.coerce.fca.0.extract.i) #22
  br label %if.end

if.end.i:                                         ; preds = %if.end11.i.i
  %swap_map.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %swap_map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swap_map.i, align 4
  %arrayidx.i = getelementptr i8, ptr %7, i32 %and.i.i.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not.i = icmp eq i8 %9, 0
  br i1 %tobool6.not.i, label %do.end.i, label %if.then

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20, ptr noundef nonnull @Unused_offset, i32 noundef %entry.coerce.fca.0.extract.i) #22
  br label %if.end

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %call5 = tail call fastcc zeroext i8 @__swap_entry_free(ptr noundef nonnull %1, [1 x i32] %entry.coerce)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.i, %cleanup.sink.split.i.i, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @__swap_entry_free(ptr noundef %p, [1 x i32] %entry.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %entry.coerce.fca.0.extract.i = extractvalue [1 x i32] %entry.coerce, 0
  %and.i = and i32 %entry.coerce.fca.0.extract.i, 67108863
  %cluster_info.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 7
  %0 = ptrtoint ptr %cluster_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.if.then.i_crit_edge, label %lock_cluster.exit.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i

lock_cluster.exit.i:                              ; preds = %entry
  %div4.i.i = lshr i32 %and.i, 8
  %add.ptr.i.i = getelementptr %struct.swap_cluster_info, ptr %1, i32 %div4.i.i
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i.i) #19
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %lock_cluster.exit.i.if.then.i_crit_edge, label %lock_cluster.exit.i.lock_cluster_or_swap_info.exit_crit_edge

lock_cluster.exit.i.lock_cluster_or_swap_info.exit_crit_edge: ; preds = %lock_cluster.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lock_cluster_or_swap_info.exit

lock_cluster.exit.i.if.then.i_crit_edge:          ; preds = %lock_cluster.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i

if.then.i:                                        ; preds = %lock_cluster.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %lock.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #19
  br label %lock_cluster_or_swap_info.exit

lock_cluster_or_swap_info.exit:                   ; preds = %if.then.i, %lock_cluster.exit.i.lock_cluster_or_swap_info.exit_crit_edge
  %ci.0.i5.i = phi ptr [ null, %if.then.i ], [ %add.ptr.i.i, %lock_cluster.exit.i.lock_cluster_or_swap_info.exit_crit_edge ]
  %swap_map.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 6
  %2 = ptrtoint ptr %swap_map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %swap_map.i, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %and.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %and.i16 = and i8 %5, 64
  %6 = and i8 %5, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %6)
  %cmp18.i = icmp eq i8 %6, -65
  br i1 %cmp18.i, label %lock_cluster_or_swap_info.exit.__swap_entry_free_locked.exit_crit_edge, label %if.else21.i

lock_cluster_or_swap_info.exit.__swap_entry_free_locked.exit_crit_edge: ; preds = %lock_cluster_or_swap_info.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %__swap_entry_free_locked.exit

if.else21.i:                                      ; preds = %lock_cluster_or_swap_info.exit
  %7 = and i8 %5, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %7)
  %cmp24.not.i = icmp eq i8 %7, 63
  br i1 %cmp24.not.i, label %if.else21.i.__swap_entry_free_locked.exit_crit_edge, label %if.then26.i

if.else21.i.__swap_entry_free_locked.exit_crit_edge: ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__swap_entry_free_locked.exit

if.then26.i:                                      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %6)
  %cmp28.i = icmp eq i8 %6, -128
  br i1 %cmp28.i, label %if.then30.i, label %if.else34.i

if.then30.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call fastcc zeroext i1 @swap_count_continued(ptr noundef %p, i32 noundef %and.i, i8 noundef zeroext -128) #19
  %..i = select i1 %call.i, i8 -66, i8 62
  br label %__swap_entry_free_locked.exit

if.else34.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #21
  %dec.i = add i8 %6, -1
  br label %__swap_entry_free_locked.exit

__swap_entry_free_locked.exit:                    ; preds = %if.else34.i, %if.then30.i, %if.else21.i.__swap_entry_free_locked.exit_crit_edge, %lock_cluster_or_swap_info.exit.__swap_entry_free_locked.exit_crit_edge
  %count.0.i = phi i8 [ %dec.i, %if.else34.i ], [ %6, %if.else21.i.__swap_entry_free_locked.exit_crit_edge ], [ 0, %lock_cluster_or_swap_info.exit.__swap_entry_free_locked.exit_crit_edge ], [ %..i, %if.then30.i ]
  %or85.i = or i8 %count.0.i, %and.i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or85.i)
  %tobool42.not.i = icmp eq i8 %or85.i, 0
  %8 = ptrtoint ptr %swap_map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %swap_map.i, align 4
  %arrayidx62.i = getelementptr i8, ptr %9, i32 %and.i
  %.or85.i = select i1 %tobool42.not.i, i8 64, i8 %or85.i
  %10 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store volatile i8 %.or85.i, ptr %arrayidx62.i, align 1
  %tobool.not.i17 = icmp eq ptr %ci.0.i5.i, null
  br i1 %tobool.not.i17, label %if.else.i, label %unlock_cluster.exit.i

unlock_cluster.exit.i:                            ; preds = %__swap_entry_free_locked.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull %ci.0.i5.i) #19
  br label %unlock_cluster_or_swap_info.exit

if.else.i:                                        ; preds = %__swap_entry_free_locked.exit
  call void @__sanitizer_cov_trace_pc() #21
  %lock.i18 = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 24
  tail call void @_raw_spin_unlock(ptr noundef %lock.i18) #19
  br label %unlock_cluster_or_swap_info.exit

unlock_cluster_or_swap_info.exit:                 ; preds = %if.else.i, %unlock_cluster.exit.i
  br i1 %tobool42.not.i, label %if.then, label %unlock_cluster_or_swap_info.exit.if.end_crit_edge

unlock_cluster_or_swap_info.exit.if.end_crit_edge: ; preds = %unlock_cluster_or_swap_info.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %unlock_cluster_or_swap_info.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call7 = tail call i32 @free_swap_slot([1 x i32] %entry.coerce) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %unlock_cluster_or_swap_info.exit.if.end_crit_edge
  ret i8 %or85.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_swap_page(ptr nocapture noundef readnone %page, [1 x i32] %entry.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %entry.coerce.fca.0.extract = extractvalue [1 x i32] %entry.coerce, 0
  %and.i = and i32 %entry.coerce.fca.0.extract, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entry.coerce.fca.0.extract)
  %tobool.not.i.i = icmp eq i32 %entry.coerce.fca.0.extract, 0
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2013265919, i32 %entry.coerce.fca.0.extract)
  %cmp.i.i.i.i = icmp ugt i32 %entry.coerce.fca.0.extract, 2013265919
  br i1 %cmp.i.i.i.i, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge, label %swp_swap_info.exit.i.i

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i

swp_swap_info.exit.i.i:                           ; preds = %if.end.i.i
  %shr.i.i.i.i = lshr i32 %entry.coerce.fca.0.extract, 26
  %arrayidx.i.i.i.i = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %shr.i.i.i.i
  %0 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i.i.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %1, null
  br i1 %tobool4.not.i.i, label %swp_swap_info.exit.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end6.i.i

swp_swap_info.exit.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %swp_swap_info.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i

if.end6.i.i:                                      ; preds = %swp_swap_info.exit.i.i
  %flags.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end6.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end11.i.i

if.end6.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i

if.end11.i.i:                                     ; preds = %if.end6.i.i
  %max.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %5)
  %cmp.not.i.i = icmp ult i32 %and.i, %5
  br i1 %cmp.not.i.i, label %if.end.i, label %if.end11.i.i.cleanup.sink.split.i.i_crit_edge

if.end11.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end11.i.i.cleanup.sink.split.i.i_crit_edge, %if.end6.i.i.cleanup.sink.split.i.i_crit_edge, %swp_swap_info.exit.i.i.cleanup.sink.split.i.i_crit_edge, %if.end.i.i.cleanup.sink.split.i.i_crit_edge
  %Bad_offset.sink.i.i = phi ptr [ @Bad_offset, %if.end11.i.i.cleanup.sink.split.i.i_crit_edge ], [ @Unused_file, %if.end6.i.i.cleanup.sink.split.i.i_crit_edge ], [ @Bad_file, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ], [ @Bad_file, %swp_swap_info.exit.i.i.cleanup.sink.split.i.i_crit_edge ]
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.21, ptr noundef nonnull %Bad_offset.sink.i.i, i32 noundef %entry.coerce.fca.0.extract) #22
  br label %cleanup

if.end.i:                                         ; preds = %if.end11.i.i
  %swap_map.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %swap_map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swap_map.i, align 4
  %arrayidx.i = getelementptr i8, ptr %7, i32 %and.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not.i = icmp eq i8 %9, 0
  br i1 %tobool6.not.i, label %do.end.i, label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20, ptr noundef nonnull @Unused_offset, i32 noundef %entry.coerce.fca.0.extract) #22
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %cluster_info.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %cluster_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cluster_info.i.i, align 4
  %tobool.not.i.i124 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i124, label %if.end.if.then.i_crit_edge, label %lock_cluster.exit.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i

lock_cluster.exit.i:                              ; preds = %if.end
  %div4.i.i = lshr i32 %and.i, 8
  %add.ptr.i.i = getelementptr %struct.swap_cluster_info, ptr %11, i32 %div4.i.i
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i.i) #19
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %lock_cluster.exit.i.if.then.i_crit_edge, label %lock_cluster.exit.i.lock_cluster_or_swap_info.exit_crit_edge

lock_cluster.exit.i.lock_cluster_or_swap_info.exit_crit_edge: ; preds = %lock_cluster.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lock_cluster_or_swap_info.exit

lock_cluster.exit.i.if.then.i_crit_edge:          ; preds = %lock_cluster.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i

if.then.i:                                        ; preds = %lock_cluster.exit.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %lock.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #19
  br label %lock_cluster_or_swap_info.exit

lock_cluster_or_swap_info.exit:                   ; preds = %if.then.i, %lock_cluster.exit.i.lock_cluster_or_swap_info.exit_crit_edge
  %ci.0.i5.i = phi ptr [ null, %if.then.i ], [ %add.ptr.i.i, %lock_cluster.exit.i.lock_cluster_or_swap_info.exit_crit_edge ]
  %12 = ptrtoint ptr %swap_map.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %swap_map.i, align 4
  %arrayidx.i127 = getelementptr i8, ptr %13, i32 %and.i
  %14 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i127, align 1
  %and.i128 = and i8 %15, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.i128)
  %tobool.not.i129 = icmp eq i8 %and.i128, 0
  br i1 %tobool.not.i129, label %do.body11.i, label %__swap_entry_free_locked.exit, !prof !245

do.body11.i:                                      ; preds = %lock_cluster_or_swap_info.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1209, 0\0A.popsection", ""() #19, !srcloc !268
  unreachable

__swap_entry_free_locked.exit:                    ; preds = %lock_cluster_or_swap_info.exit
  %16 = and i8 %15, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool42.not.i = icmp eq i8 %16, 0
  %.or85.i = select i1 %tobool42.not.i, i8 64, i8 %16
  %17 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_store1_noabort(i32 %17)
  store volatile i8 %.or85.i, ptr %arrayidx.i127, align 1
  %tobool.not.i130 = icmp eq ptr %ci.0.i5.i, null
  br i1 %tobool42.not.i, label %if.then60, label %for.inc69

if.then60:                                        ; preds = %__swap_entry_free_locked.exit
  br i1 %tobool.not.i130, label %if.else.i, label %unlock_cluster.exit.i

unlock_cluster.exit.i:                            ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull %ci.0.i5.i) #19
  br label %unlock_cluster_or_swap_info.exit

if.else.i:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #21
  %lock.i131 = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_unlock(ptr noundef %lock.i131) #19
  br label %unlock_cluster_or_swap_info.exit

unlock_cluster_or_swap_info.exit:                 ; preds = %if.else.i, %unlock_cluster.exit.i
  %call62 = tail call i32 @free_swap_slot([1 x i32] %entry.coerce) #19
  br label %cleanup

for.inc69:                                        ; preds = %__swap_entry_free_locked.exit
  br i1 %tobool.not.i130, label %if.else.i136, label %unlock_cluster.exit.i134

unlock_cluster.exit.i134:                         ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull %ci.0.i5.i) #19
  br label %cleanup

if.else.i136:                                     ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #21
  %lock.i135 = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_unlock(ptr noundef %lock.i135) #19
  br label %cleanup

cleanup:                                          ; preds = %if.else.i136, %unlock_cluster.exit.i134, %unlock_cluster_or_swap_info.exit, %do.end.i, %cleanup.sink.split.i.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @free_swap_slot([1 x i32]) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @swapcache_free_entries(ptr noundef %entries, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n)
  %cmp = icmp slt i32 %n, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @nr_swapfiles, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp1 = icmp ugt i32 %0, 1
  br i1 %cmp1, label %if.then2, label %if.end.for.body.preheader_crit_edge

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.preheader

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @sort(ptr noundef %entries, i32 noundef %n, i32 noundef 4, ptr noundef nonnull @swp_entry_cmp, ptr noundef null) #19
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then2, %if.end.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.body.preheader
  %i.031 = phi i32 [ %inc, %if.end8.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %prev.030 = phi ptr [ %retval.0.i.i, %if.end8.for.body_crit_edge ], [ null, %for.body.preheader ]
  %arrayidx = getelementptr %struct.swp_entry_t, ptr %entries, i32 %i.031
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %.unpack = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack)
  %tobool.not.i.i.i = icmp eq i32 %.unpack, 0
  br i1 %tobool.not.i.i.i, label %for.body._swap_info_get.exit.i_crit_edge, label %if.end.i.i.i

for.body._swap_info_get.exit.i_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %_swap_info_get.exit.i

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2013265919, i32 %.unpack)
  %cmp.i.i.i.i.i = icmp ugt i32 %.unpack, 2013265919
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %swp_swap_info.exit.i.i.i

if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i.i

swp_swap_info.exit.i.i.i:                         ; preds = %if.end.i.i.i
  %shr.i.i.i.i.i = lshr i32 %.unpack, 26
  %arrayidx.i.i.i.i.i = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %shr.i.i.i.i.i
  %2 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool4.not.i.i.i, label %swp_swap_info.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %if.end6.i.i.i

swp_swap_info.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %swp_swap_info.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i.i

if.end6.i.i.i:                                    ; preds = %swp_swap_info.exit.i.i.i
  %flags.i.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %if.end6.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %if.end11.i.i.i

if.end6.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i.i

if.end11.i.i.i:                                   ; preds = %if.end6.i.i.i
  %and.i.i.i.i = and i32 %.unpack, 67108863
  %max.i.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i.i, i32 %7)
  %cmp.not.i.i.i = icmp ult i32 %and.i.i.i.i, %7
  br i1 %cmp.not.i.i.i, label %if.end.i.i, label %if.end11.i.i.i.cleanup.sink.split.i.i.i_crit_edge

if.end11.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i.i

cleanup.sink.split.i.i.i:                         ; preds = %if.end11.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %if.end6.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %swp_swap_info.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge
  %Bad_offset.sink.i.i.i = phi ptr [ @Bad_offset, %if.end11.i.i.i.cleanup.sink.split.i.i.i_crit_edge ], [ @Unused_file, %if.end6.i.i.i.cleanup.sink.split.i.i.i_crit_edge ], [ @Bad_file, %if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge ], [ @Bad_file, %swp_swap_info.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge ]
  %call18.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.21, ptr noundef nonnull %Bad_offset.sink.i.i.i, i32 noundef %.unpack) #22
  br label %_swap_info_get.exit.i

if.end.i.i:                                       ; preds = %if.end11.i.i.i
  %swap_map.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %swap_map.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %swap_map.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %9, i32 %and.i.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool6.not.i.i, label %do.end.i.i, label %if.end.i.i._swap_info_get.exit.i_crit_edge

if.end.i.i._swap_info_get.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %_swap_info_get.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %call12.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20, ptr noundef nonnull @Unused_offset, i32 noundef %.unpack) #22
  br label %_swap_info_get.exit.i

_swap_info_get.exit.i:                            ; preds = %do.end.i.i, %if.end.i.i._swap_info_get.exit.i_crit_edge, %cleanup.sink.split.i.i.i, %for.body._swap_info_get.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i._swap_info_get.exit.i_crit_edge ], [ null, %do.end.i.i ], [ null, %for.body._swap_info_get.exit.i_crit_edge ], [ null, %cleanup.sink.split.i.i.i ]
  %cmp.not.i = icmp eq ptr %retval.0.i.i, %prev.030
  %tobool.not = icmp eq ptr %prev.030, null
  br i1 %cmp.not.i, label %swap_info_get_cont.exit, label %if.then.i

if.then.i:                                        ; preds = %_swap_info_get.exit.i
  br i1 %tobool.not, label %if.then.i.if.end.i_crit_edge, label %if.then5.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %lock.i = getelementptr inbounds %struct.swap_info_struct, ptr %prev.030, i32 0, i32 24
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #19
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then.i.if.end.i_crit_edge
  %cmp6.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %cmp6.not.i, label %if.end.i.if.end8_crit_edge, label %swap_info_get_cont.exit.thread27

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

swap_info_get_cont.exit.thread27:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %lock8.i = getelementptr inbounds %struct.swap_info_struct, ptr %retval.0.i.i, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock8.i) #19
  br label %if.then5

swap_info_get_cont.exit:                          ; preds = %_swap_info_get.exit.i
  br i1 %tobool.not, label %swap_info_get_cont.exit.if.end8_crit_edge, label %swap_info_get_cont.exit.if.then5_crit_edge

swap_info_get_cont.exit.if.then5_crit_edge:       ; preds = %swap_info_get_cont.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then5

swap_info_get_cont.exit.if.end8_crit_edge:        ; preds = %swap_info_get_cont.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.then5:                                         ; preds = %swap_info_get_cont.exit.if.then5_crit_edge, %swap_info_get_cont.exit.thread27
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack25 = load i32, ptr %arrayidx, align 4
  %13 = insertvalue [1 x i32] undef, i32 %.unpack25, 0
  tail call fastcc void @swap_entry_free(ptr noundef nonnull %retval.0.i.i, [1 x i32] %13)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %swap_info_get_cont.exit.if.end8_crit_edge, %if.end.i.if.end8_crit_edge
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %for.end, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %if.end8
  %tobool9.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool9.not, label %for.end.cleanup_crit_edge, label %if.then10

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  %lock = getelementptr inbounds %struct.swap_info_struct, ptr %retval.0.i.i, i32 0, i32 24
  tail call void @_raw_spin_unlock(ptr noundef %lock) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @swp_entry_cmp(ptr nocapture noundef readonly %ent1, ptr nocapture noundef readonly %ent2) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.unpack = load i32, ptr %ent1, align 4
  %shr.i = lshr i32 %.unpack, 26
  %1 = ptrtoint ptr %ent2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.unpack3 = load i32, ptr %ent2, align 4
  %shr.i4 = lshr i32 %.unpack3, 26
  %sub = sub nsw i32 %shr.i, %shr.i4
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @swap_entry_free(ptr noundef %p, [1 x i32] %entry.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %entry.coerce.fca.0.extract.i = extractvalue [1 x i32] %entry.coerce, 0
  %and.i = and i32 %entry.coerce.fca.0.extract.i, 67108863
  %cluster_info.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 7
  %0 = ptrtoint ptr %cluster_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.lock_cluster.exit_crit_edge, label %if.then.i

entry.lock_cluster.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %lock_cluster.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %div4.i = lshr i32 %and.i, 8
  %add.ptr.i = getelementptr %struct.swap_cluster_info, ptr %1, i32 %div4.i
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i) #19
  br label %lock_cluster.exit

lock_cluster.exit:                                ; preds = %if.then.i, %entry.lock_cluster.exit_crit_edge
  %ci.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %entry.lock_cluster.exit_crit_edge ]
  %swap_map = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 6
  %2 = ptrtoint ptr %swap_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %swap_map, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 %and.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %5)
  %cmp.not = icmp eq i8 %5, 64
  br i1 %cmp.not, label %do.end12, label %do.body7, !prof !251

do.body7:                                         ; preds = %lock_cluster.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1323, 0\0A.popsection", ""() #19, !srcloc !269
  unreachable

do.end12:                                         ; preds = %lock_cluster.exit
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  %7 = ptrtoint ptr %cluster_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cluster_info.i, align 4
  %div27.i = lshr i32 %and.i, 8
  %tobool.not.i29 = icmp eq ptr %8, null
  br i1 %tobool.not.i29, label %do.end12.dec_cluster_info_page.exit_crit_edge, label %do.body.i

do.end12.dec_cluster_info_page.exit_crit_edge:    ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #21
  br label %dec_cluster_info_page.exit

do.body.i:                                        ; preds = %do.end12
  %data.i.i = getelementptr %struct.swap_cluster_info, ptr %8, i32 %div27.i, i32 1
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load.i.i = load i32, ptr %data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %bf.load.i.i)
  %cmp.i = icmp ult i32 %bf.load.i.i, 256
  br i1 %cmp.i, label %do.body4.i, label %do.end10.i, !prof !245

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 582, 0\0A.popsection", ""() #19, !srcloc !270
  unreachable

do.end10.i:                                       ; preds = %do.body.i
  %10 = add i32 %bf.load.i.i, -256
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %10)
  %cmp16.i = icmp ult i32 %10, 256
  br i1 %cmp16.i, label %if.then17.i, label %do.end10.i.dec_cluster_info_page.exit_crit_edge

do.end10.i.dec_cluster_info_page.exit_crit_edge:  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dec_cluster_info_page.exit

if.then17.i:                                      ; preds = %do.end10.i
  %12 = ptrtoint ptr %cluster_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cluster_info.i, align 4
  %data.i.i.i = getelementptr %struct.swap_cluster_info, ptr %13, i32 %div27.i, i32 1
  %14 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load.i.i.i = load i32, ptr %data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %bf.load.i.i.i)
  %cmp.not.i.i = icmp ult i32 %bf.load.i.i.i, 256
  br i1 %cmp.not.i.i, label %do.end7.i.i, label %do.body2.i.i, !prof !251

do.body2.i.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 535, 0\0A.popsection", ""() #19, !srcloc !271
  unreachable

do.end7.i.i:                                      ; preds = %if.then17.i
  %flags.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %16, 1026
  call void @__sanitizer_cov_trace_const_cmp4(i32 1026, i32 %and.i.i)
  %cmp8.i.i = icmp eq i32 %and.i.i, 1026
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.end10.i.i

if.then9.i.i:                                     ; preds = %do.end7.i.i
  %17 = ptrtoint ptr %swap_map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %swap_map, align 4
  %mul.i.i.i = and i32 %entry.coerce.fca.0.extract.i, 67108608
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 %mul.i.i.i
  %19 = call ptr @memset(ptr %add.ptr.i.i.i, i32 63, i32 256)
  %flags.i.i.i.i.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 27, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i.i.i.i.i.i = load i32, ptr %flags.i.i.i.i.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %bf.load.i.i.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.i.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.i.i.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %21 = ptrtoint ptr %flags.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul.i.i.i, ptr %flags.i.i.i.i.i.i, align 4
  %flags.i16.i.i.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 27, i32 1, i32 1
  br label %swap_cluster_schedule_discard.exit.i.i

if.else.i.i.i.i:                                  ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %22 = ptrtoint ptr %cluster_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cluster_info.i, align 4
  %data.i.i.i.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 27, i32 1, i32 1
  %24 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load.i.i.i.i.i = load i32, ptr %data.i.i.i.i.i, align 4
  %bf.lshr.i.i.i.i.i = lshr i32 %bf.load.i.i.i.i.i, 8
  %add.ptr.i.i.i.i = getelementptr %struct.swap_cluster_info, ptr %23, i32 %bf.lshr.i.i.i.i.i
  tail call void @_raw_spin_lock_nested(ptr noundef %add.ptr.i.i.i.i, i32 noundef 1) #19
  %data.i18.i.i.i.i = getelementptr %struct.swap_cluster_info, ptr %23, i32 %bf.lshr.i.i.i.i.i, i32 1
  %25 = ptrtoint ptr %data.i18.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load.i19.i.i.i.i = load i32, ptr %data.i18.i.i.i.i, align 4
  %bf.clear.i.i.i.i.i = and i32 %bf.load.i19.i.i.i.i, 255
  %bf.set.i.i.i.i.i = or i32 %bf.clear.i.i.i.i.i, %mul.i.i.i
  store i32 %bf.set.i.i.i.i.i, ptr %data.i18.i.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i.i.i.i) #19
  br label %swap_cluster_schedule_discard.exit.i.i

swap_cluster_schedule_discard.exit.i.i:           ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %flags.i16.i.sink.i.i.i = phi ptr [ %flags.i16.i.i.i.i, %if.then.i.i.i.i ], [ %data.i.i.i.i.i, %if.else.i.i.i.i ]
  %26 = ptrtoint ptr %flags.i16.i.sink.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul.i.i.i, ptr %flags.i16.i.sink.i.i.i, align 4
  %discard_work.i.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %discard_work.i.i.i) #19
  br label %dec_cluster_info_page.exit

if.end10.i.i:                                     ; preds = %do.end7.i.i
  %bf.clear.i.i.i.i = and i32 %bf.load.i.i.i, -256
  %bf.set.i.i.i.i = or i32 %bf.clear.i.i.i.i, 1
  %28 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %bf.set.i.i.i.i, ptr %data.i.i.i, align 4
  %flags.i.i.i.i17.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 8, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i.i.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load.i.i.i.i18.i.i = load i32, ptr %flags.i.i.i.i17.i.i, align 4
  %and.i.i.i.i19.i.i = and i32 %bf.load.i.i.i.i18.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i19.i.i)
  %tobool.i.i.not.i.i20.i.i = icmp eq i32 %and.i.i.i.i19.i.i, 0
  br i1 %tobool.i.i.not.i.i20.i.i, label %if.else.i.i31.i.i, label %if.then.i.i22.i.i

if.then.i.i22.i.i:                                ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %bf.shl.i.i.i.i.i = and i32 %entry.coerce.fca.0.extract.i, 67108608
  %30 = ptrtoint ptr %flags.i.i.i.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %bf.shl.i.i.i.i.i, ptr %flags.i.i.i.i17.i.i, align 4
  %flags.i16.i.i21.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 8, i32 1, i32 1
  %31 = ptrtoint ptr %flags.i16.i.i21.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %bf.shl.i.i.i.i.i, ptr %flags.i16.i.i21.i.i, align 4
  br label %dec_cluster_info_page.exit

if.else.i.i31.i.i:                                ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %data.i.i.i23.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 8, i32 1, i32 1
  %32 = ptrtoint ptr %data.i.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load.i.i.i24.i.i = load i32, ptr %data.i.i.i23.i.i, align 4
  %bf.lshr.i.i.i25.i.i = lshr i32 %bf.load.i.i.i24.i.i, 8
  %add.ptr.i.i26.i.i = getelementptr %struct.swap_cluster_info, ptr %13, i32 %bf.lshr.i.i.i25.i.i
  tail call void @_raw_spin_lock_nested(ptr noundef %add.ptr.i.i26.i.i, i32 noundef 1) #19
  %data.i18.i.i27.i.i = getelementptr %struct.swap_cluster_info, ptr %13, i32 %bf.lshr.i.i.i25.i.i, i32 1
  %33 = ptrtoint ptr %data.i18.i.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load.i19.i.i28.i.i = load i32, ptr %data.i18.i.i27.i.i, align 4
  %bf.shl.i20.i.i.i.i = and i32 %entry.coerce.fca.0.extract.i, 67108608
  %bf.clear.i.i.i29.i.i = and i32 %bf.load.i19.i.i28.i.i, 255
  %bf.set.i.i.i30.i.i = or i32 %bf.clear.i.i.i29.i.i, %bf.shl.i20.i.i.i.i
  store i32 %bf.set.i.i.i30.i.i, ptr %data.i18.i.i27.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i.i26.i.i) #19
  %34 = ptrtoint ptr %data.i.i.i23.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %bf.shl.i20.i.i.i.i, ptr %data.i.i.i23.i.i, align 4
  br label %dec_cluster_info_page.exit

dec_cluster_info_page.exit:                       ; preds = %if.else.i.i31.i.i, %if.then.i.i22.i.i, %swap_cluster_schedule_discard.exit.i.i, %do.end10.i.dec_cluster_info_page.exit_crit_edge, %do.end12.dec_cluster_info_page.exit_crit_edge
  %tobool.not.i30 = icmp eq ptr %ci.0.i, null
  br i1 %tobool.not.i30, label %dec_cluster_info_page.exit.unlock_cluster.exit_crit_edge, label %if.then.i31

dec_cluster_info_page.exit.unlock_cluster.exit_crit_edge: ; preds = %dec_cluster_info_page.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %unlock_cluster.exit

if.then.i31:                                      ; preds = %dec_cluster_info_page.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull %ci.0.i) #19
  br label %unlock_cluster.exit

unlock_cluster.exit:                              ; preds = %if.then.i31, %dec_cluster_info_page.exit.unlock_cluster.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@swap_entry_free, %mem_cgroup_uncharge_swap.exit)) #19
          to label %if.end.i [label %mem_cgroup_uncharge_swap.exit], !srcloc !246

if.end.i:                                         ; preds = %unlock_cluster.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__mem_cgroup_uncharge_swap([1 x i32] %entry.coerce, i32 noundef 1) #19
  br label %mem_cgroup_uncharge_swap.exit

mem_cgroup_uncharge_swap.exit:                    ; preds = %if.end.i, %unlock_cluster.exit
  tail call fastcc void @swap_range_free(ptr noundef %p, i32 noundef %and.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @page_swapcount(ptr nocapture noundef readonly %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %if.end.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2013265919, i32 %1)
  %cmp.i.i.i.i = icmp ugt i32 %1, 2013265919
  br i1 %cmp.i.i.i.i, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge, label %swp_swap_info.exit.i.i

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i

swp_swap_info.exit.i.i:                           ; preds = %if.end.i.i
  %shr.i.i.i.i = lshr i32 %1, 26
  %arrayidx.i.i.i.i = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %shr.i.i.i.i
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx.i.i.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %3, null
  br i1 %tobool4.not.i.i, label %swp_swap_info.exit.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end6.i.i

swp_swap_info.exit.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %swp_swap_info.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i

if.end6.i.i:                                      ; preds = %swp_swap_info.exit.i.i
  %flags.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end6.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end11.i.i

if.end6.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i

if.end11.i.i:                                     ; preds = %if.end6.i.i
  %and.i.i.i = and i32 %1, 67108863
  %max.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i, i32 %7)
  %cmp.not.i.i = icmp ult i32 %and.i.i.i, %7
  br i1 %cmp.not.i.i, label %if.end.i, label %if.end11.i.i.cleanup.sink.split.i.i_crit_edge

if.end11.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end11.i.i.cleanup.sink.split.i.i_crit_edge, %if.end6.i.i.cleanup.sink.split.i.i_crit_edge, %swp_swap_info.exit.i.i.cleanup.sink.split.i.i_crit_edge, %if.end.i.i.cleanup.sink.split.i.i_crit_edge
  %Bad_offset.sink.i.i = phi ptr [ @Bad_offset, %if.end11.i.i.cleanup.sink.split.i.i_crit_edge ], [ @Unused_file, %if.end6.i.i.cleanup.sink.split.i.i_crit_edge ], [ @Bad_file, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ], [ @Bad_file, %swp_swap_info.exit.i.i.cleanup.sink.split.i.i_crit_edge ]
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.21, ptr noundef nonnull %Bad_offset.sink.i.i, i32 noundef %1) #22
  br label %if.end

if.end.i:                                         ; preds = %if.end11.i.i
  %swap_map.i = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %swap_map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %swap_map.i, align 4
  %arrayidx.i = getelementptr i8, ptr %9, i32 %and.i.i.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not.i = icmp eq i8 %11, 0
  br i1 %tobool6.not.i, label %do.end.i, label %if.then

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20, ptr noundef nonnull @Unused_offset, i32 noundef %1) #22
  br label %if.end

if.then:                                          ; preds = %if.end.i
  %cluster_info.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %cluster_info.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cluster_info.i.i, align 4
  %tobool.not.i.i14 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i14, label %if.then.if.else.i_crit_edge, label %lock_cluster.exit.i

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.i

lock_cluster.exit.i:                              ; preds = %if.then
  %div4.i.i = lshr i32 %and.i.i.i, 8
  %add.ptr.i.i = getelementptr %struct.swap_cluster_info, ptr %13, i32 %div4.i.i
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i.i) #19
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %lock_cluster.exit.i.if.else.i_crit_edge, label %unlock_cluster.exit.i

lock_cluster.exit.i.if.else.i_crit_edge:          ; preds = %lock_cluster.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.i

unlock_cluster.exit.i:                            ; preds = %lock_cluster.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %14 = ptrtoint ptr %swap_map.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %swap_map.i, align 4
  %arrayidx = getelementptr i8, ptr %15, i32 %and.i.i.i
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %18 = and i8 %17, -65
  tail call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr.i.i) #19
  br label %if.end

if.else.i:                                        ; preds = %lock_cluster.exit.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  %lock.i = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #19
  %19 = ptrtoint ptr %swap_map.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %swap_map.i, align 4
  %arrayidx23 = getelementptr i8, ptr %20, i32 %and.i.i.i
  %21 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx23, align 1
  %23 = and i8 %22, -65
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #19
  br label %if.end

if.end:                                           ; preds = %if.else.i, %unlock_cluster.exit.i, %do.end.i, %cleanup.sink.split.i.i, %entry.if.end_crit_edge
  %count.0.shrunk = phi i8 [ %18, %unlock_cluster.exit.i ], [ %23, %if.else.i ], [ 0, %do.end.i ], [ 0, %entry.if.end_crit_edge ], [ 0, %cleanup.sink.split.i.i ]
  %count.0 = zext i8 %count.0.shrunk to i32
  ret i32 %count.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__swap_count([1 x i32] %entry.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call5 = tail call ptr @get_swap_device([1 x i32] %entry.coerce)
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %entry.coerce.fca.0.extract.i = extractvalue [1 x i32] %entry.coerce, 0
  %and.i = and i32 %entry.coerce.fca.0.extract.i, 67108863
  %swap_map = getelementptr inbounds %struct.swap_info_struct, ptr %call5, i32 0, i32 6
  %0 = ptrtoint ptr %swap_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %swap_map, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 %and.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, -65
  %conv = zext i8 %4 to i32
  tail call fastcc void @percpu_ref_put(ptr noundef nonnull %call5) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %count.0 = phi i32 [ %conv, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %count.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__swp_swapcount([1 x i32] %entry.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_swap_device([1 x i32] %entry.coerce)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  %entry.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %entry.coerce, 0
  %and.i.i = and i32 %entry.coerce.fca.0.extract.i.i, 67108863
  %cluster_info.i.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %cluster_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %if.then.if.else.i.i_crit_edge, label %lock_cluster.exit.i.i

if.then.if.else.i.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.i.i

lock_cluster.exit.i.i:                            ; preds = %if.then
  %div4.i.i.i = lshr i32 %and.i.i, 8
  %add.ptr.i.i.i = getelementptr %struct.swap_cluster_info, ptr %1, i32 %div4.i.i.i
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i.i.i) #19
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i, label %lock_cluster.exit.i.i.if.else.i.i_crit_edge, label %unlock_cluster.exit.i.i

lock_cluster.exit.i.i.if.else.i.i_crit_edge:      ; preds = %lock_cluster.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.i.i

unlock_cluster.exit.i.i:                          ; preds = %lock_cluster.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %swap_map.i = getelementptr inbounds %struct.swap_info_struct, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %swap_map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %swap_map.i, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %and.i.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  tail call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr.i.i.i) #19
  br label %swap_swapcount.exit

if.else.i.i:                                      ; preds = %lock_cluster.exit.i.i.if.else.i.i_crit_edge, %if.then.if.else.i.i_crit_edge
  %lock.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %call, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #19
  %swap_map12.i = getelementptr inbounds %struct.swap_info_struct, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %swap_map12.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swap_map12.i, align 4
  %arrayidx13.i = getelementptr i8, ptr %7, i32 %and.i.i
  %8 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx13.i, align 1
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #19
  br label %swap_swapcount.exit

swap_swapcount.exit:                              ; preds = %if.else.i.i, %unlock_cluster.exit.i.i
  %conv16.in.in.i = phi i8 [ %5, %unlock_cluster.exit.i.i ], [ %9, %if.else.i.i ]
  %conv16.in.i = and i8 %conv16.in.in.i, -65
  %conv16.i = zext i8 %conv16.in.i to i32
  tail call fastcc void @percpu_ref_put(ptr noundef nonnull %call) #19
  br label %if.end

if.end:                                           ; preds = %swap_swapcount.exit, %entry.if.end_crit_edge
  %count.0 = phi i32 [ %conv16.i, %swap_swapcount.exit ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %count.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @swp_swapcount([1 x i32] %entry.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %entry.coerce.fca.0.extract.i = extractvalue [1 x i32] %entry.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entry.coerce.fca.0.extract.i)
  %tobool.not.i.i = icmp eq i32 %entry.coerce.fca.0.extract.i, 0
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2013265919, i32 %entry.coerce.fca.0.extract.i)
  %cmp.i.i.i.i = icmp ugt i32 %entry.coerce.fca.0.extract.i, 2013265919
  br i1 %cmp.i.i.i.i, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge, label %swp_swap_info.exit.i.i

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i

swp_swap_info.exit.i.i:                           ; preds = %if.end.i.i
  %shr.i.i.i.i = lshr i32 %entry.coerce.fca.0.extract.i, 26
  %arrayidx.i.i.i.i = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %shr.i.i.i.i
  %0 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i.i.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %1, null
  br i1 %tobool4.not.i.i, label %swp_swap_info.exit.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end6.i.i

swp_swap_info.exit.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %swp_swap_info.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i

if.end6.i.i:                                      ; preds = %swp_swap_info.exit.i.i
  %flags.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end6.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end11.i.i

if.end6.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i

if.end11.i.i:                                     ; preds = %if.end6.i.i
  %and.i.i.i = and i32 %entry.coerce.fca.0.extract.i, 67108863
  %max.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i, i32 %5)
  %cmp.not.i.i = icmp ult i32 %and.i.i.i, %5
  br i1 %cmp.not.i.i, label %if.end.i, label %if.end11.i.i.cleanup.sink.split.i.i_crit_edge

if.end11.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end11.i.i.cleanup.sink.split.i.i_crit_edge, %if.end6.i.i.cleanup.sink.split.i.i_crit_edge, %swp_swap_info.exit.i.i.cleanup.sink.split.i.i_crit_edge, %if.end.i.i.cleanup.sink.split.i.i_crit_edge
  %Bad_offset.sink.i.i = phi ptr [ @Bad_offset, %if.end11.i.i.cleanup.sink.split.i.i_crit_edge ], [ @Unused_file, %if.end6.i.i.cleanup.sink.split.i.i_crit_edge ], [ @Bad_file, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ], [ @Bad_file, %swp_swap_info.exit.i.i.cleanup.sink.split.i.i_crit_edge ]
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.21, ptr noundef nonnull %Bad_offset.sink.i.i, i32 noundef %entry.coerce.fca.0.extract.i) #22
  br label %cleanup

if.end.i:                                         ; preds = %if.end11.i.i
  %swap_map.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %swap_map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swap_map.i, align 4
  %arrayidx.i = getelementptr i8, ptr %7, i32 %and.i.i.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not.i = icmp eq i8 %9, 0
  br i1 %tobool6.not.i, label %do.end.i, label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20, ptr noundef nonnull @Unused_offset, i32 noundef %entry.coerce.fca.0.extract.i) #22
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %cluster_info.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %cluster_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cluster_info.i.i, align 4
  %tobool.not.i.i71 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i71, label %if.end.if.then.i_crit_edge, label %lock_cluster.exit.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i

lock_cluster.exit.i:                              ; preds = %if.end
  %div4.i.i = lshr i32 %and.i.i.i, 8
  %add.ptr.i.i = getelementptr %struct.swap_cluster_info, ptr %11, i32 %div4.i.i
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i.i) #19
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %lock_cluster.exit.i.if.then.i_crit_edge, label %lock_cluster.exit.i.lock_cluster_or_swap_info.exit_crit_edge

lock_cluster.exit.i.lock_cluster_or_swap_info.exit_crit_edge: ; preds = %lock_cluster.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lock_cluster_or_swap_info.exit

lock_cluster.exit.i.if.then.i_crit_edge:          ; preds = %lock_cluster.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i

if.then.i:                                        ; preds = %lock_cluster.exit.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %lock.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #19
  br label %lock_cluster_or_swap_info.exit

lock_cluster_or_swap_info.exit:                   ; preds = %if.then.i, %lock_cluster.exit.i.lock_cluster_or_swap_info.exit_crit_edge
  %ci.0.i5.i = phi ptr [ null, %if.then.i ], [ %add.ptr.i.i, %lock_cluster.exit.i.lock_cluster_or_swap_info.exit_crit_edge ]
  %12 = ptrtoint ptr %swap_map.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %swap_map.i, align 4
  %arrayidx = getelementptr i8, ptr %13, i32 %and.i.i.i
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %16 = and i8 %15, -65
  %conv = zext i8 %16 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %lock_cluster_or_swap_info.exit.out_crit_edge, label %if.end10

lock_cluster_or_swap_info.exit.out_crit_edge:     ; preds = %lock_cluster_or_swap_info.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end10:                                         ; preds = %lock_cluster_or_swap_info.exit
  %call13 = tail call ptr @vmalloc_to_page(ptr noundef %arrayidx) #19
  %and14 = and i32 %entry.coerce.fca.0.extract.i, 4095
  %private = getelementptr inbounds %struct.page, ptr %call13, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %18)
  %cmp.not = icmp eq i32 %18, 32
  br i1 %cmp.not, label %do.body26.preheader, label %do.body19, !prof !251

do.body26.preheader:                              ; preds = %if.end10
  %and11 = and i32 %conv, 63
  br label %do.body26

do.body19:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1545, 0\0A.popsection", ""() #19, !srcloc !272
  unreachable

do.body26:                                        ; preds = %do.body26.do.body26_crit_edge, %do.body26.preheader
  %n.0 = phi i32 [ %mul38, %do.body26.do.body26_crit_edge ], [ 63, %do.body26.preheader ]
  %page.0 = phi ptr [ %add.ptr27, %do.body26.do.body26_crit_edge ], [ %call13, %do.body26.preheader ]
  %count.0 = phi i32 [ %add, %do.body26.do.body26_crit_edge ], [ %and11, %do.body26.preheader ]
  %19 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %add.ptr27 = getelementptr i8, ptr %21, i32 -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %22 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %22, 512
  %23 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !273
  %27 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 213
  %31 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %32, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !274
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr27, i32 noundef %or.i) #19
  %arrayidx29 = getelementptr i8, ptr %call.i.i, i32 %and14
  %33 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %34 to i32
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !275
  %35 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 213
  %39 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %40, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !276
  %41 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %and37 = and i32 %conv30, 127
  %mul = mul i32 %and37, %n.0
  %add = add i32 %mul, %count.0
  %mul38 = shl i32 %n.0, 7
  %and40 = and i32 %conv30, 128
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body26.out_crit_edge, label %do.body26.do.body26_crit_edge

do.body26.do.body26_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body26

do.body26.out_crit_edge:                          ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

out:                                              ; preds = %do.body26.out_crit_edge, %lock_cluster_or_swap_info.exit.out_crit_edge
  %count.1 = phi i32 [ %conv, %lock_cluster_or_swap_info.exit.out_crit_edge ], [ %add, %do.body26.out_crit_edge ]
  %tobool.not.i73 = icmp eq ptr %ci.0.i5.i, null
  br i1 %tobool.not.i73, label %if.else.i, label %unlock_cluster.exit.i

unlock_cluster.exit.i:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull %ci.0.i5.i) #19
  br label %cleanup

if.else.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  %lock.i74 = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_unlock(ptr noundef %lock.i74) #19
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %unlock_cluster.exit.i, %do.end.i, %cleanup.sink.split.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.1, %unlock_cluster.exit.i ], [ %count.1, %if.else.i ], [ 0, %do.end.i ], [ 0, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @reuse_swap_page(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !251

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !245

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !251

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.26) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #19, !srcloc !277
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !251

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  %11 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.then, label %do.end9, !prof !245

if.then:                                          ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.8) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1669, 0\0A.popsection", ""() #19, !srcloc !278
  unreachable

do.end9:                                          ; preds = %PageLocked.exit
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %0, align 4
  %and.i2.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i65 = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i65, label %if.end.i.i68, label %if.then.i.i67, !prof !251

if.then.i.i67:                                    ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i66 = add i32 %16, -1
  br label %PageKsm.exit

if.end.i.i68:                                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #21
  %17 = ptrtoint ptr %page to i32
  br label %PageKsm.exit

PageKsm.exit:                                     ; preds = %if.end.i.i68, %if.then.i.i67
  %retval.0.i.i69 = phi i32 [ %sub.i.i66, %if.then.i.i67 ], [ %17, %if.end.i.i68 ]
  %18 = inttoptr i32 %retval.0.i.i69 to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon.107, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mapping.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  %and.i.i70 = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i70)
  %cmp.i.i = icmp eq i32 %and.i.i70, 3
  br i1 %cmp.i.i, label %PageKsm.exit.cleanup49_crit_edge, label %if.end18, !prof !245

PageKsm.exit.cleanup49_crit_edge:                 ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup49

if.end18:                                         ; preds = %PageKsm.exit
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i110 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i110, label %if.end.i.i.i, label %if.then.i.i.i111, !prof !251

if.then.i.i.i111:                                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i.i = add i32 %23, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  %24 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i111
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i111 ], [ %24, %if.end.i.i.i ]
  %25 = inttoptr i32 %retval.0.i.i.i to ptr
  %26 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i.i.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !251

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.28) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #19, !srcloc !279
  unreachable

folio_test_swapbacked.exit.i.i.i:                 ; preds = %_compound_head.exit.i.i
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %25, align 4
  %31 = and i32 %30, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not.i.i.i = icmp eq i32 %31, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_swapbacked.exit.i.i.i.if.end12.i_crit_edge, label %land.rhs.i.i.i

folio_test_swapbacked.exit.i.i.i.if.end12.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end12.i

land.rhs.i.i.i:                                   ; preds = %folio_test_swapbacked.exit.i.i.i
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %26, align 4
  %and.i.i.i.i.i112 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i112)
  %tobool.not.i.i.i.i113 = icmp eq i32 %and.i.i.i.i.i112, 0
  br i1 %tobool.not.i.i.i.i113, label %PageSwapCache.exit.i, label %if.then.i.i.i.i114, !prof !251

if.then.i.i.i.i114:                               ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.28) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #19, !srcloc !279
  unreachable

PageSwapCache.exit.i:                             ; preds = %land.rhs.i.i.i
  %34 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %25, align 4
  %36 = and i32 %35, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i.i.not.i = icmp eq i32 %36, 0
  br i1 %tobool.i.i.not.i, label %PageSwapCache.exit.i.if.end12.i_crit_edge, label %if.then10.i

PageSwapCache.exit.i.if.end12.i_crit_edge:        ; preds = %PageSwapCache.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end12.i

if.then10.i:                                      ; preds = %PageSwapCache.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %call11.i = tail call i32 @page_swapcount(ptr noundef %page) #19
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %PageSwapCache.exit.i.if.end12.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.if.end12.i_crit_edge
  %swapcount.0.i = phi i32 [ %call11.i, %if.then10.i ], [ 0, %PageSwapCache.exit.i.if.end12.i_crit_edge ], [ 0, %folio_test_swapbacked.exit.i.i.i.if.end12.i_crit_edge ]
  %37 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %page, align 4
  %39 = and i32 %38, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i.i23.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i.i23.i, label %PageCompound.exit.i.i.i, label %if.end12.i.if.then.i.i26.i_crit_edge

if.end12.i.if.then.i.i26.i_crit_edge:             ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i.i26.i

PageCompound.exit.i.i.i:                          ; preds = %if.end12.i
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i24.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i24.i)
  %tobool.not.i.i25.i = icmp eq i32 %and.i.i.i.i24.i, 0
  br i1 %tobool.not.i.i25.i, label %if.end.i.i27.i, label %PageCompound.exit.i.i.i.if.then.i.i26.i_crit_edge, !prof !251

PageCompound.exit.i.i.i.if.then.i.i26.i_crit_edge: ; preds = %PageCompound.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i.i26.i

if.then.i.i26.i:                                  ; preds = %PageCompound.exit.i.i.i.if.then.i.i26.i_crit_edge, %if.end12.i.if.then.i.i26.i_crit_edge
  %call3.i.i.i = tail call i32 @__page_mapcount(ptr noundef %page) #19
  br label %page_trans_huge_map_swapcount.exit

if.end.i.i27.i:                                   ; preds = %PageCompound.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %42 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %42, i32 noundef 4) #19
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %add.i.i.i = add i32 %44, 1
  br label %page_trans_huge_map_swapcount.exit

page_trans_huge_map_swapcount.exit:               ; preds = %if.end.i.i27.i, %if.then.i.i26.i
  %retval.0.i.i28.i = phi i32 [ %call3.i.i.i, %if.then.i.i26.i ], [ %add.i.i.i, %if.end.i.i27.i ]
  %add.i = add i32 %retval.0.i.i28.i, %swapcount.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i)
  %cmp = icmp eq i32 %add.i, 1
  br i1 %cmp, label %land.lhs.true, label %page_trans_huge_map_swapcount.exit.if.end47_crit_edge

page_trans_huge_map_swapcount.exit.if.end47_crit_edge: ; preds = %page_trans_huge_map_swapcount.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end47

land.lhs.true:                                    ; preds = %page_trans_huge_map_swapcount.exit
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %0, align 4
  %and.i.i72 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i72)
  %tobool.not.i.i73 = icmp eq i32 %and.i.i72, 0
  br i1 %tobool.not.i.i73, label %if.end.i.i76, label %if.then.i.i75, !prof !251

if.then.i.i75:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i74 = add i32 %46, -1
  br label %_compound_head.exit.i78

if.end.i.i76:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %47 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i78

_compound_head.exit.i78:                          ; preds = %if.end.i.i76, %if.then.i.i75
  %retval.0.i.i77 = phi i32 [ %sub.i.i74, %if.then.i.i75 ], [ %47, %if.end.i.i76 ]
  %48 = inttoptr i32 %retval.0.i.i77 to ptr
  %49 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  %and.i.i.i.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !251

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i78
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dump_page(ptr noundef %48, ptr noundef nonnull @.str.28) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #19, !srcloc !279
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i78
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %48, align 4
  %54 = and i32 %53, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.i.not.i.i = icmp eq i32 %54, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.end47_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.if.end47_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end47

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %55 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %49, align 4
  %and.i.i.i.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %PageSwapCache.exit, label %if.then.i.i.i, !prof !251

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dump_page(ptr noundef %48, ptr noundef nonnull @.str.28) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #19, !srcloc !279
  unreachable

PageSwapCache.exit:                               ; preds = %land.rhs.i.i
  %57 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %48, align 4
  %59 = and i32 %58, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.i.i.not = icmp eq i32 %59, 0
  br i1 %tobool.i.i.not, label %PageSwapCache.exit.if.end47_crit_edge, label %land.lhs.true21

PageSwapCache.exit.if.end47_crit_edge:            ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end47

land.lhs.true21:                                  ; preds = %PageSwapCache.exit
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %0, align 4
  %and.i.i79 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i79)
  %tobool.not.i.i80 = icmp eq i32 %and.i.i79, 0
  br i1 %tobool.not.i.i80, label %if.end.i.i83, label %if.then.i.i82, !prof !251

if.then.i.i82:                                    ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i81 = add i32 %61, -1
  br label %_compound_head.exit.i88

if.end.i.i83:                                     ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #21
  %62 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i88

_compound_head.exit.i88:                          ; preds = %if.end.i.i83, %if.then.i.i82
  %retval.0.i.i84 = phi i32 [ %sub.i.i81, %if.then.i.i82 ], [ %62, %if.end.i.i83 ]
  %63 = inttoptr i32 %retval.0.i.i84 to ptr
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %cmp.i.not.i85 = icmp eq i32 %65, -1
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %0, align 4
  %and.i16.i86 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i86)
  %tobool.not.i17.i87 = icmp eq i32 %and.i16.i86, 0
  br i1 %cmp.i.not.i85, label %if.then.i89, label %do.end10.i95, !prof !245

if.then.i89:                                      ; preds = %_compound_head.exit.i88
  br i1 %tobool.not.i17.i87, label %if.end.i20.i92, label %if.then.i19.i91, !prof !251

if.then.i19.i91:                                  ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i18.i90 = add i32 %67, -1
  br label %_compound_head.exit22.i94

if.end.i20.i92:                                   ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #21
  %68 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i94

_compound_head.exit22.i94:                        ; preds = %if.end.i20.i92, %if.then.i19.i91
  %retval.0.i21.i93 = phi i32 [ %sub.i18.i90, %if.then.i19.i91 ], [ %68, %if.end.i20.i92 ]
  %69 = inttoptr i32 %retval.0.i21.i93 to ptr
  tail call void @dump_page(ptr noundef %69, ptr noundef nonnull @.str.26) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #19, !srcloc !280
  unreachable

do.end10.i95:                                     ; preds = %_compound_head.exit.i88
  br i1 %tobool.not.i17.i87, label %if.end.i27.i98, label %if.then.i26.i97, !prof !251

if.then.i26.i97:                                  ; preds = %do.end10.i95
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i25.i96 = add i32 %67, -1
  br label %PageWriteback.exit

if.end.i27.i98:                                   ; preds = %do.end10.i95
  call void @__sanitizer_cov_trace_pc() #21
  %70 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i98, %if.then.i26.i97
  %retval.0.i28.i99 = phi i32 [ %sub.i25.i96, %if.then.i26.i97 ], [ %70, %if.end.i27.i98 ]
  %71 = inttoptr i32 %retval.0.i28.i99 to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %71, align 4
  %74 = and i32 %73, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool36.not = icmp eq i32 %74, 0
  br i1 %tobool36.not, label %if.then37, label %if.else

if.then37:                                        ; preds = %PageWriteback.exit
  %75 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i115, !prof !251

if.then.i115:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i = add i32 %76, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #21
  %77 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i115
  %retval.0.i = phi i32 [ %sub.i, %if.then.i115 ], [ %77, %if.end.i ]
  %78 = inttoptr i32 %retval.0.i to ptr
  tail call void @delete_from_swap_cache(ptr noundef %78) #19
  %79 = getelementptr inbounds %struct.page, ptr %78, i32 0, i32 1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %79, align 4
  %and.i.i101 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i101)
  %tobool.not.i.i102 = icmp eq i32 %and.i.i101, 0
  br i1 %tobool.not.i.i102, label %_compound_head.exit._compound_head.exit.i108_crit_edge, label %if.then.i.i104, !prof !251

_compound_head.exit._compound_head.exit.i108_crit_edge: ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %_compound_head.exit.i108

if.then.i.i104:                                   ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i103 = add i32 %81, -1
  %.pre = inttoptr i32 %sub.i.i103 to ptr
  br label %_compound_head.exit.i108

_compound_head.exit.i108:                         ; preds = %if.then.i.i104, %_compound_head.exit._compound_head.exit.i108_crit_edge
  %.pre-phi = phi ptr [ %78, %_compound_head.exit._compound_head.exit.i108_crit_edge ], [ %.pre, %if.then.i.i104 ]
  %82 = ptrtoint ptr %.pre-phi to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %.pre-phi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %cmp.i.not.i107 = icmp eq i32 %83, -1
  %84 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %79, align 4
  %and.i12.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i107, label %if.then.i109, label %do.end8.i, !prof !245

if.then.i109:                                     ; preds = %_compound_head.exit.i108
  br i1 %tobool.not.i13.i, label %if.then.i109._compound_head.exit18.i_crit_edge, label %if.then.i15.i, !prof !251

if.then.i109._compound_head.exit18.i_crit_edge:   ; preds = %if.then.i109
  call void @__sanitizer_cov_trace_pc() #21
  br label %_compound_head.exit18.i

if.then.i15.i:                                    ; preds = %if.then.i109
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i14.i = add i32 %85, -1
  %.pre123 = inttoptr i32 %sub.i14.i to ptr
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.then.i15.i, %if.then.i109._compound_head.exit18.i_crit_edge
  %.pre-phi124 = phi ptr [ %78, %if.then.i109._compound_head.exit18.i_crit_edge ], [ %.pre123, %if.then.i15.i ]
  tail call void @dump_page(ptr noundef %.pre-phi124, ptr noundef nonnull @.str.26) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #19, !srcloc !281
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i108
  br i1 %tobool.not.i13.i, label %do.end8.i.SetPageDirty.exit_crit_edge, label %if.then.i22.i, !prof !251

do.end8.i.SetPageDirty.exit_crit_edge:            ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %SetPageDirty.exit

if.then.i22.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i21.i = add i32 %85, -1
  %.pre125 = inttoptr i32 %sub.i21.i to ptr
  br label %SetPageDirty.exit

SetPageDirty.exit:                                ; preds = %if.then.i22.i, %do.end8.i.SetPageDirty.exit_crit_edge
  %.pre-phi126 = phi ptr [ %78, %do.end8.i.SetPageDirty.exit_crit_edge ], [ %.pre125, %if.then.i22.i ]
  tail call void @_set_bit(i32 noundef 3, ptr noundef %.pre-phi126) #19
  br label %if.end47

if.else:                                          ; preds = %PageWriteback.exit
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %86 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i.i.i116 = icmp eq i32 %87, 0
  br i1 %tobool.not.i.i.i116, label %if.else.swap_info_get.exit_crit_edge, label %if.end.i.i.i117

if.else.swap_info_get.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %swap_info_get.exit

if.end.i.i.i117:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 2013265919, i32 %87)
  %cmp.i.i.i.i.i = icmp ugt i32 %87, 2013265919
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i.i117.cleanup.sink.split.i.i.i_crit_edge, label %swp_swap_info.exit.i.i.i

if.end.i.i.i117.cleanup.sink.split.i.i.i_crit_edge: ; preds = %if.end.i.i.i117
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i.i

swp_swap_info.exit.i.i.i:                         ; preds = %if.end.i.i.i117
  %shr.i.i.i.i.i = lshr i32 %87, 26
  %arrayidx.i.i.i.i.i = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %shr.i.i.i.i.i
  %88 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %89, null
  br i1 %tobool4.not.i.i.i, label %swp_swap_info.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %if.end6.i.i.i

swp_swap_info.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %swp_swap_info.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i.i

if.end6.i.i.i:                                    ; preds = %swp_swap_info.exit.i.i.i
  %flags.i.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i118 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i118)
  %tobool7.not.i.i.i = icmp eq i32 %and.i.i.i118, 0
  br i1 %tobool7.not.i.i.i, label %if.end6.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %if.end11.i.i.i

if.end6.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i.i

if.end11.i.i.i:                                   ; preds = %if.end6.i.i.i
  %and.i.i.i.i119 = and i32 %87, 67108863
  %max.i.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %89, i32 0, i32 5
  %92 = ptrtoint ptr %max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %max.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i.i119, i32 %93)
  %cmp.not.i.i.i = icmp ult i32 %and.i.i.i.i119, %93
  br i1 %cmp.not.i.i.i, label %if.end.i.i120, label %if.end11.i.i.i.cleanup.sink.split.i.i.i_crit_edge

if.end11.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i.i

cleanup.sink.split.i.i.i:                         ; preds = %if.end11.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %if.end6.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %swp_swap_info.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %if.end.i.i.i117.cleanup.sink.split.i.i.i_crit_edge
  %Bad_offset.sink.i.i.i = phi ptr [ @Bad_offset, %if.end11.i.i.i.cleanup.sink.split.i.i.i_crit_edge ], [ @Unused_file, %if.end6.i.i.i.cleanup.sink.split.i.i.i_crit_edge ], [ @Bad_file, %if.end.i.i.i117.cleanup.sink.split.i.i.i_crit_edge ], [ @Bad_file, %swp_swap_info.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge ]
  %call18.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.21, ptr noundef nonnull %Bad_offset.sink.i.i.i, i32 noundef %87) #22
  br label %swap_info_get.exit

if.end.i.i120:                                    ; preds = %if.end11.i.i.i
  %swap_map.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %89, i32 0, i32 6
  %94 = ptrtoint ptr %swap_map.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %swap_map.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %95, i32 %and.i.i.i.i119
  %96 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool6.not.i.i = icmp eq i8 %97, 0
  br i1 %tobool6.not.i.i, label %do.end.i.i, label %if.then.i121

do.end.i.i:                                       ; preds = %if.end.i.i120
  call void @__sanitizer_cov_trace_pc() #21
  %call12.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20, ptr noundef nonnull @Unused_offset, i32 noundef %87) #22
  br label %swap_info_get.exit

if.then.i121:                                     ; preds = %if.end.i.i120
  call void @__sanitizer_cov_trace_pc() #21
  %lock.i = getelementptr inbounds %struct.swap_info_struct, ptr %89, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #19
  br label %swap_info_get.exit

swap_info_get.exit:                               ; preds = %if.then.i121, %do.end.i.i, %cleanup.sink.split.i.i.i, %if.else.swap_info_get.exit_crit_edge
  %retval.0.i8.i = phi ptr [ %89, %if.then.i121 ], [ null, %do.end.i.i ], [ null, %if.else.swap_info_get.exit_crit_edge ], [ null, %cleanup.sink.split.i.i.i ]
  %flags = getelementptr inbounds %struct.swap_info_struct, ptr %retval.0.i8.i, i32 0, i32 1
  %98 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags, align 4
  %and = and i32 %99, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  %lock44 = getelementptr inbounds %struct.swap_info_struct, ptr %retval.0.i8.i, i32 0, i32 24
  tail call void @_raw_spin_unlock(ptr noundef %lock44) #19
  br i1 %tobool41.not, label %swap_info_get.exit.if.end47_crit_edge, label %swap_info_get.exit.cleanup49_crit_edge

swap_info_get.exit.cleanup49_crit_edge:           ; preds = %swap_info_get.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup49

swap_info_get.exit.if.end47_crit_edge:            ; preds = %swap_info_get.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end47

if.end47:                                         ; preds = %swap_info_get.exit.if.end47_crit_edge, %SetPageDirty.exit, %PageSwapCache.exit.if.end47_crit_edge, %folio_test_swapbacked.exit.i.i.if.end47_crit_edge, %page_trans_huge_map_swapcount.exit.if.end47_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i)
  %cmp48 = icmp slt i32 %add.i, 2
  br label %cleanup49

cleanup49:                                        ; preds = %if.end47, %swap_info_get.exit.cleanup49_crit_edge, %PageKsm.exit.cleanup49_crit_edge
  %retval.1 = phi i1 [ %cmp48, %if.end47 ], [ false, %PageKsm.exit.cleanup49_crit_edge ], [ false, %swap_info_get.exit.cleanup49_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delete_from_swap_cache(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @try_to_free_swap(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !251

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !245

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !251

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.26) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #19, !srcloc !277
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !251

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  %11 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.then, label %do.end7, !prof !245

if.then:                                          ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.8) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1704, 0\0A.popsection", ""() #19, !srcloc !282
  unreachable

do.end7:                                          ; preds = %PageLocked.exit
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %0, align 4
  %and.i.i29 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i29)
  %tobool.not.i.i30 = icmp eq i32 %and.i.i29, 0
  br i1 %tobool.not.i.i30, label %if.end.i.i33, label %if.then.i.i32, !prof !251

if.then.i.i32:                                    ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i31 = add i32 %16, -1
  br label %_compound_head.exit.i35

if.end.i.i33:                                     ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #21
  %17 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i35

_compound_head.exit.i35:                          ; preds = %if.end.i.i33, %if.then.i.i32
  %retval.0.i.i34 = phi i32 [ %sub.i.i31, %if.then.i.i32 ], [ %17, %if.end.i.i33 ]
  %18 = inttoptr i32 %retval.0.i.i34 to ptr
  %19 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !251

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i35
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.28) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #19, !srcloc !279
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i35
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %18, align 4
  %24 = and i32 %23, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.return_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.return_crit_edge:  ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %PageSwapCache.exit, label %if.then.i.i.i, !prof !251

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.28) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #19, !srcloc !279
  unreachable

PageSwapCache.exit:                               ; preds = %land.rhs.i.i
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %18, align 4
  %29 = and i32 %28, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.i.not = icmp eq i32 %29, 0
  br i1 %tobool.i.i.not, label %PageSwapCache.exit.return_crit_edge, label %if.end10

PageSwapCache.exit.return_crit_edge:              ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end10:                                         ; preds = %PageSwapCache.exit
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %0, align 4
  %and.i.i36 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i36)
  %tobool.not.i.i37 = icmp eq i32 %and.i.i36, 0
  br i1 %tobool.not.i.i37, label %if.end.i.i40, label %if.then.i.i39, !prof !251

if.then.i.i39:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i38 = add i32 %31, -1
  br label %_compound_head.exit.i45

if.end.i.i40:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  %32 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i45

_compound_head.exit.i45:                          ; preds = %if.end.i.i40, %if.then.i.i39
  %retval.0.i.i41 = phi i32 [ %sub.i.i38, %if.then.i.i39 ], [ %32, %if.end.i.i40 ]
  %33 = inttoptr i32 %retval.0.i.i41 to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.i.not.i42 = icmp eq i32 %35, -1
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %0, align 4
  %and.i16.i43 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i43)
  %tobool.not.i17.i44 = icmp eq i32 %and.i16.i43, 0
  br i1 %cmp.i.not.i42, label %if.then.i46, label %do.end10.i52, !prof !245

if.then.i46:                                      ; preds = %_compound_head.exit.i45
  br i1 %tobool.not.i17.i44, label %if.end.i20.i49, label %if.then.i19.i48, !prof !251

if.then.i19.i48:                                  ; preds = %if.then.i46
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i18.i47 = add i32 %37, -1
  br label %_compound_head.exit22.i51

if.end.i20.i49:                                   ; preds = %if.then.i46
  call void @__sanitizer_cov_trace_pc() #21
  %38 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i51

_compound_head.exit22.i51:                        ; preds = %if.end.i20.i49, %if.then.i19.i48
  %retval.0.i21.i50 = phi i32 [ %sub.i18.i47, %if.then.i19.i48 ], [ %38, %if.end.i20.i49 ]
  %39 = inttoptr i32 %retval.0.i21.i50 to ptr
  tail call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.26) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #19, !srcloc !280
  unreachable

do.end10.i52:                                     ; preds = %_compound_head.exit.i45
  br i1 %tobool.not.i17.i44, label %if.end.i27.i55, label %if.then.i26.i54, !prof !251

if.then.i26.i54:                                  ; preds = %do.end10.i52
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i25.i53 = add i32 %37, -1
  br label %PageWriteback.exit

if.end.i27.i55:                                   ; preds = %do.end10.i52
  call void @__sanitizer_cov_trace_pc() #21
  %40 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i55, %if.then.i26.i54
  %retval.0.i28.i56 = phi i32 [ %sub.i25.i53, %if.then.i26.i54 ], [ %40, %if.end.i27.i55 ]
  %41 = inttoptr i32 %retval.0.i28.i56 to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %44 = and i32 %43, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool12.not = icmp eq i32 %44, 0
  br i1 %tobool12.not, label %if.end14, label %PageWriteback.exit.return_crit_edge

PageWriteback.exit.return_crit_edge:              ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end14:                                         ; preds = %PageWriteback.exit
  %call.i = tail call i32 @page_swapcount(ptr noundef %page) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %if.end17, label %if.end14.return_crit_edge

if.end14.return_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end17:                                         ; preds = %if.end14
  %call18 = tail call zeroext i1 @pm_suspended_storage() #19
  br i1 %call18, label %if.end17.return_crit_edge, label %if.end20

if.end17.return_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end20:                                         ; preds = %if.end17
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i67, !prof !251

if.then.i67:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i = add i32 %46, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  %47 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i67
  %retval.0.i = phi i32 [ %sub.i, %if.then.i67 ], [ %47, %if.end.i ]
  %48 = inttoptr i32 %retval.0.i to ptr
  tail call void @delete_from_swap_cache(ptr noundef %48) #19
  %49 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  %and.i.i58 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i58)
  %tobool.not.i.i59 = icmp eq i32 %and.i.i58, 0
  br i1 %tobool.not.i.i59, label %_compound_head.exit._compound_head.exit.i65_crit_edge, label %if.then.i.i61, !prof !251

_compound_head.exit._compound_head.exit.i65_crit_edge: ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %_compound_head.exit.i65

if.then.i.i61:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i60 = add i32 %51, -1
  %.pre = inttoptr i32 %sub.i.i60 to ptr
  br label %_compound_head.exit.i65

_compound_head.exit.i65:                          ; preds = %if.then.i.i61, %_compound_head.exit._compound_head.exit.i65_crit_edge
  %.pre-phi = phi ptr [ %48, %_compound_head.exit._compound_head.exit.i65_crit_edge ], [ %.pre, %if.then.i.i61 ]
  %52 = ptrtoint ptr %.pre-phi to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %.pre-phi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp.i.not.i64 = icmp eq i32 %53, -1
  %54 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %49, align 4
  %and.i12.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i64, label %if.then.i66, label %do.end8.i, !prof !245

if.then.i66:                                      ; preds = %_compound_head.exit.i65
  br i1 %tobool.not.i13.i, label %if.then.i66._compound_head.exit18.i_crit_edge, label %if.then.i15.i, !prof !251

if.then.i66._compound_head.exit18.i_crit_edge:    ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #21
  br label %_compound_head.exit18.i

if.then.i15.i:                                    ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i14.i = add i32 %55, -1
  %.pre68 = inttoptr i32 %sub.i14.i to ptr
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.then.i15.i, %if.then.i66._compound_head.exit18.i_crit_edge
  %.pre-phi69 = phi ptr [ %48, %if.then.i66._compound_head.exit18.i_crit_edge ], [ %.pre68, %if.then.i15.i ]
  tail call void @dump_page(ptr noundef %.pre-phi69, ptr noundef nonnull @.str.26) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #19, !srcloc !281
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i65
  br i1 %tobool.not.i13.i, label %do.end8.i.SetPageDirty.exit_crit_edge, label %if.then.i22.i, !prof !251

do.end8.i.SetPageDirty.exit_crit_edge:            ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %SetPageDirty.exit

if.then.i22.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i21.i = add i32 %55, -1
  %.pre70 = inttoptr i32 %sub.i21.i to ptr
  br label %SetPageDirty.exit

SetPageDirty.exit:                                ; preds = %if.then.i22.i, %do.end8.i.SetPageDirty.exit_crit_edge
  %.pre-phi71 = phi ptr [ %48, %do.end8.i.SetPageDirty.exit_crit_edge ], [ %.pre70, %if.then.i22.i ]
  tail call void @_set_bit(i32 noundef 3, ptr noundef %.pre-phi71) #19
  br label %return

return:                                           ; preds = %SetPageDirty.exit, %if.end17.return_crit_edge, %if.end14.return_crit_edge, %PageWriteback.exit.return_crit_edge, %PageSwapCache.exit.return_crit_edge, %folio_test_swapbacked.exit.i.i.return_crit_edge
  %retval.0 = phi i32 [ 1, %SetPageDirty.exit ], [ 0, %PageSwapCache.exit.return_crit_edge ], [ 0, %PageWriteback.exit.return_crit_edge ], [ 0, %if.end14.return_crit_edge ], [ 0, %if.end17.return_crit_edge ], [ 0, %folio_test_swapbacked.exit.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pm_suspended_storage() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @free_swap_and_cache([1 x i32] %entry.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %entry.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %entry.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2013265919, i32 %entry.coerce.fca.0.extract.i.i)
  %cmp.i = icmp ugt i32 %entry.coerce.fca.0.extract.i.i, 2013265919
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entry.coerce.fca.0.extract.i.i)
  %tobool.not.i.i = icmp eq i32 %entry.coerce.fca.0.extract.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %swp_swap_info.exit.i.i.critedge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

swp_swap_info.exit.i.i.critedge:                  ; preds = %if.end
  %shr.i.i.i.i = lshr i32 %entry.coerce.fca.0.extract.i.i, 26
  %arrayidx.i.i.i.i = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %shr.i.i.i.i
  %0 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i.i.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %1, null
  br i1 %tobool4.not.i.i, label %swp_swap_info.exit.i.i.critedge.cleanup.sink.split.i.i_crit_edge, label %if.end6.i.i

swp_swap_info.exit.i.i.critedge.cleanup.sink.split.i.i_crit_edge: ; preds = %swp_swap_info.exit.i.i.critedge
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i

if.end6.i.i:                                      ; preds = %swp_swap_info.exit.i.i.critedge
  %flags.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end6.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end11.i.i

if.end6.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i

if.end11.i.i:                                     ; preds = %if.end6.i.i
  %and.i.i.i = and i32 %entry.coerce.fca.0.extract.i.i, 67108863
  %max.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i, i32 %5)
  %cmp.not.i.i = icmp ult i32 %and.i.i.i, %5
  br i1 %cmp.not.i.i, label %if.end.i, label %if.end11.i.i.cleanup.sink.split.i.i_crit_edge

if.end11.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end11.i.i.cleanup.sink.split.i.i_crit_edge, %if.end6.i.i.cleanup.sink.split.i.i_crit_edge, %swp_swap_info.exit.i.i.critedge.cleanup.sink.split.i.i_crit_edge
  %Bad_offset.sink.i.i = phi ptr [ @Bad_offset, %if.end11.i.i.cleanup.sink.split.i.i_crit_edge ], [ @Unused_file, %if.end6.i.i.cleanup.sink.split.i.i_crit_edge ], [ @Bad_file, %swp_swap_info.exit.i.i.critedge.cleanup.sink.split.i.i_crit_edge ]
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.21, ptr noundef nonnull %Bad_offset.sink.i.i, i32 noundef %entry.coerce.fca.0.extract.i.i) #22
  br label %cleanup

if.end.i:                                         ; preds = %if.end11.i.i
  %swap_map.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %swap_map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swap_map.i, align 4
  %arrayidx.i = getelementptr i8, ptr %7, i32 %and.i.i.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not.i = icmp eq i8 %9, 0
  br i1 %tobool6.not.i, label %do.end.i, label %if.then7

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20, ptr noundef nonnull @Unused_offset, i32 noundef %entry.coerce.fca.0.extract.i.i) #22
  br label %cleanup

if.then7:                                         ; preds = %if.end.i
  %call9 = tail call fastcc zeroext i8 @__swap_entry_free(ptr noundef nonnull %1, [1 x i32] %entry.coerce)
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call9)
  %cmp = icmp eq i8 %call9, 64
  br i1 %cmp, label %land.lhs.true, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then7
  %10 = ptrtoint ptr %swap_map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %swap_map.i, align 4
  %cluster_info.i.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %cluster_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cluster_info.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %land.lhs.true.if.else.i.i_crit_edge, label %lock_cluster.exit.i.i

land.lhs.true.if.else.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.i.i

lock_cluster.exit.i.i:                            ; preds = %land.lhs.true
  %and.i = lshr i32 %entry.coerce.fca.0.extract.i.i, 8
  %div4.i.i.i = and i32 %and.i, 262143
  %add.ptr.i.i.i = getelementptr %struct.swap_cluster_info, ptr %13, i32 %div4.i.i.i
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i.i.i) #19
  %tobool.not.i.i45 = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i45, label %lock_cluster.exit.i.i.if.else.i.i_crit_edge, label %unlock_cluster.exit.i.i

lock_cluster.exit.i.i.if.else.i.i_crit_edge:      ; preds = %lock_cluster.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.i.i

unlock_cluster.exit.i.i:                          ; preds = %lock_cluster.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx.i46 = getelementptr i8, ptr %11, i32 %and.i.i.i
  %14 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i46, align 1
  tail call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr.i.i.i) #19
  br label %swap_page_trans_huge_swapped.exit

if.else.i.i:                                      ; preds = %lock_cluster.exit.i.i.if.else.i.i_crit_edge, %land.lhs.true.if.else.i.i_crit_edge
  %lock.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #19
  %arrayidx33.i = getelementptr i8, ptr %11, i32 %and.i.i.i
  %16 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx33.i, align 1
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #19
  br label %swap_page_trans_huge_swapped.exit

swap_page_trans_huge_swapped.exit:                ; preds = %if.else.i.i, %unlock_cluster.exit.i.i
  %.in.in.i = phi i8 [ %15, %unlock_cluster.exit.i.i ], [ %17, %if.else.i.i ]
  %.in.i = and i8 %.in.in.i, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.in.i)
  %.not = icmp eq i8 %.in.i, 0
  br i1 %.not, label %if.then13, label %swap_page_trans_huge_swapped.exit.cleanup_crit_edge

swap_page_trans_huge_swapped.exit.cleanup_crit_edge: ; preds = %swap_page_trans_huge_swapped.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then13:                                        ; preds = %swap_page_trans_huge_swapped.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call16 = tail call fastcc i32 @__try_to_reclaim_swap(ptr noundef nonnull %1, i32 noundef %and.i.i.i, i32 noundef 6)
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %swap_page_trans_huge_swapped.exit.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %do.end.i, %cleanup.sink.split.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.then7.cleanup_crit_edge ], [ 1, %swap_page_trans_huge_swapped.exit.cleanup_crit_edge ], [ 1, %if.then13 ], [ 0, %do.end.i ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__try_to_reclaim_swap(ptr nocapture noundef readonly %si, i32 noundef %offset, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 4
  %2 = and i8 %1, 63
  %shr.i = zext i8 %2 to i32
  %arrayidx = getelementptr [0 x ptr], ptr @swapper_spaces, i32 0, i32 %shr.i
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %and.i = lshr i32 %offset, 14
  %shr = and i32 %and.i, 4095
  %arrayidx6 = getelementptr %struct.address_space, ptr %4, i32 %shr
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %arrayidx6, i32 noundef %offset, i32 noundef 0, i32 noundef 0) #19
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !251

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i = add i32 %7, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %8 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %8, %if.end.i.i ]
  %9 = inttoptr i32 %retval.0.i.i to ptr
  %10 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !251

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.28) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #19, !srcloc !279
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %9, i32 noundef 4) #19
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %9, align 4
  %and.i.i4.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_page.exit, label %folio_flags.exit.i.i.if.end24_crit_edge

folio_flags.exit.i.i.if.end24_crit_edge:          ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

trylock_page.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %9, i32 1, i32 3, i32 1) #19
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #19, !srcloc !283
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !284
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool9.not.not = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool9.not.not, label %if.then10, label %trylock_page.exit.if.end24_crit_edge

trylock_page.exit.if.end24_crit_edge:             ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

if.then10:                                        ; preds = %trylock_page.exit
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %if.then10.if.then21_crit_edge

if.then10.if.then21_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.then10
  %and12 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %lor.lhs.false.lor.lhs.false15_crit_edge, label %land.lhs.true

lor.lhs.false.lor.lhs.false15_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %lor.lhs.false15

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call14 = tail call zeroext i1 @page_mapped(ptr noundef nonnull %call.i) #19
  br i1 %call14, label %land.lhs.true.lor.lhs.false15_crit_edge, label %land.lhs.true.if.then21_crit_edge

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then21

land.lhs.true.lor.lhs.false15_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %land.lhs.true.lor.lhs.false15_crit_edge, %lor.lhs.false.lor.lhs.false15_crit_edge
  %and16 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %lor.lhs.false15.if.end23_crit_edge, label %land.lhs.true18

lor.lhs.false15.if.end23_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end23

land.lhs.true18:                                  ; preds = %lor.lhs.false15
  %call19 = tail call zeroext i1 @mem_cgroup_swap_full(ptr noundef nonnull %call.i) #19
  br i1 %call19, label %land.lhs.true18.if.then21_crit_edge, label %land.lhs.true18.if.end23_crit_edge

land.lhs.true18.if.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end23

land.lhs.true18.if.then21_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then21

if.then21:                                        ; preds = %land.lhs.true18.if.then21_crit_edge, %land.lhs.true.if.then21_crit_edge, %if.then10.if.then21_crit_edge
  %call22 = tail call i32 @try_to_free_swap(ptr noundef nonnull %call.i)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true18.if.end23_crit_edge, %lor.lhs.false15.if.end23_crit_edge
  %ret.0 = phi i32 [ %call22, %if.then21 ], [ 0, %land.lhs.true18.if.end23_crit_edge ], [ 0, %lor.lhs.false15.if.end23_crit_edge ]
  tail call void @unlock_page(ptr noundef nonnull %call.i) #19
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %trylock_page.exit.if.end24_crit_edge, %folio_flags.exit.i.i.if.end24_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end23 ], [ 0, %trylock_page.exit.if.end24_crit_edge ], [ 0, %folio_flags.exit.i.i.if.end24_crit_edge ]
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %5, align 4
  %and.i.i41 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i41)
  %tobool.not.i.i42 = icmp eq i32 %and.i.i41, 0
  br i1 %tobool.not.i.i42, label %if.end.i.i45, label %if.then.i.i44, !prof !251

if.then.i.i44:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i43 = add i32 %17, -1
  br label %_compound_head.exit.i47

if.end.i.i45:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #21
  %18 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i47

_compound_head.exit.i47:                          ; preds = %if.end.i.i45, %if.then.i.i44
  %retval.0.i.i46 = phi i32 [ %sub.i.i43, %if.then.i.i44 ], [ %18, %if.end.i.i45 ]
  %19 = inttoptr i32 %retval.0.i.i46 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #19
  %20 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !245

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i47
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.30) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #19, !srcloc !285
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i47
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !265
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #19
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #19, !srcloc !266
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@__try_to_reclaim_swap, %if.then.i.i.i.i.i)) #19
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !246

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %19, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #19
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__put_page(ptr noundef %19) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.1, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %ret.1, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_swap_page_of_type(i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %retval = alloca %struct.swp_entry_t, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %type)
  %cmp.i = icmp sgt i32 %type, 29
  br i1 %cmp.i, label %swap_type_to_swap_info.exit.thread, label %swap_type_to_swap_info.exit

swap_type_to_swap_info.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %0 = ptrtoint ptr %retval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %retval, align 4
  br label %fail

swap_type_to_swap_info.exit:                      ; preds = %entry
  %arrayidx.i = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %type
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %arrayidx.i, align 4
  %3 = ptrtoint ptr %retval to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %retval, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %swap_type_to_swap_info.exit.fail_crit_edge, label %if.end

swap_type_to_swap_info.exit.fail_crit_edge:       ; preds = %swap_type_to_swap_info.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %fail

if.end:                                           ; preds = %swap_type_to_swap_info.exit
  %lock = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock) #19
  %flags = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %call2 = call fastcc i32 @scan_swap_map_slots(ptr noundef nonnull %2, i8 noundef zeroext 1, i32 noundef 1, ptr noundef nonnull %retval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end5_crit_edge, label %if.then4

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nr_swap_pages, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr nonnull @nr_swap_pages, i32 1, i32 3, i32 1) #19
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_swap_pages, ptr nonnull @nr_swap_pages, i32 1, ptr nonnull elementtype(i32) @nr_swap_pages) #19, !srcloc !244
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #19
  br label %fail

fail:                                             ; preds = %if.end5, %swap_type_to_swap_info.exit.fail_crit_edge, %swap_type_to_swap_info.exit.thread
  %7 = ptrtoint ptr %retval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @swap_type_of(i32 noundef %device, i64 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %device)
  %tobool.not = icmp eq i32 %device, 0
  br i1 %tobool.not, label %entry.cleanup13_crit_edge, label %if.end

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup13

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #19
  %0 = load i32, ptr @nr_swapfiles, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp26.not = icmp eq i32 %0, 0
  br i1 %cmp26.not, label %if.end.cleanup13.sink.split_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup13.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup13.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %type.027 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %type.027
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %flags = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end3:                                          ; preds = %for.body
  %bdev = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 18
  %5 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bd_dev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %device)
  %cmp4 = icmp eq i32 %8, %device
  br i1 %cmp4, label %if.then5, label %if.end3.for.inc_crit_edge

if.end3.for.inc_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.then5:                                         ; preds = %if.end3
  %swap_extent_root.i = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 17
  %call.i = tail call ptr @rb_first(ptr noundef %swap_extent_root.i) #19
  %start_block = getelementptr inbounds %struct.swap_extent, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %start_block to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %start_block, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %offset)
  %cmp6 = icmp eq i64 %10, %offset
  br i1 %cmp6, label %if.then5.cleanup13.sink.split_crit_edge, label %if.then5.for.inc_crit_edge

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.then5.cleanup13.sink.split_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup13.sink.split

for.inc:                                          ; preds = %if.then5.for.inc_crit_edge, %if.end3.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %type.027, 1
  %11 = load i32, ptr @nr_swapfiles, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup13.sink.split_crit_edge

for.inc.cleanup13.sink.split_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup13.sink.split

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

cleanup13.sink.split:                             ; preds = %for.inc.cleanup13.sink.split_crit_edge, %if.then5.cleanup13.sink.split_crit_edge, %if.end.cleanup13.sink.split_crit_edge
  %retval.4.ph = phi i32 [ -19, %if.end.cleanup13.sink.split_crit_edge ], [ %type.027, %if.then5.cleanup13.sink.split_crit_edge ], [ -19, %for.inc.cleanup13.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_lock) #19
  br label %cleanup13

cleanup13:                                        ; preds = %cleanup13.sink.split, %entry.cleanup13_crit_edge
  %retval.4 = phi i32 [ -1, %entry.cleanup13_crit_edge ], [ %retval.4.ph, %cleanup13.sink.split ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @find_first_swap(ptr nocapture noundef writeonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #19
  %0 = load i32, ptr @nr_swapfiles, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp9.not = icmp eq i32 %0, 0
  br i1 %cmp9.not, label %entry.cleanup1_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup1

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %type.010 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %type.010
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %flags = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %bdev = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 18
  %5 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bd_dev, align 4
  %9 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %device, align 4
  br label %cleanup1

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %type.010, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.inc.cleanup1_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.inc.cleanup1_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup1

cleanup1:                                         ; preds = %for.inc.cleanup1_crit_edge, %cleanup, %entry.cleanup1_crit_edge
  %retval.2 = phi i32 [ %type.010, %cleanup ], [ -19, %entry.cleanup1_crit_edge ], [ -19, %for.inc.cleanup1_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_lock) #19
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @swapdev_block(i32 noundef %type, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %type)
  %cmp.i = icmp sgt i32 %type, 29
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %swap_type_to_swap_info.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

swap_type_to_swap_info.exit:                      ; preds = %entry
  %arrayidx.i = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %swap_type_to_swap_info.exit.cleanup_crit_edge, label %lor.lhs.false

swap_type_to_swap_info.exit.cleanup_crit_edge:    ; preds = %swap_type_to_swap_info.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %swap_type_to_swap_info.exit
  %flags = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %swap_extent_root.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %swap_extent_root.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %rb.018.i = load ptr, ptr %swap_extent_root.i, align 4
  %tobool.not19.i = icmp eq ptr %rb.018.i, null
  br i1 %tobool.not19.i, label %if.end.do.body.i_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %rb.020.i = phi ptr [ %rb.0.i, %if.end5.i.while.body.i_crit_edge ], [ %rb.018.i, %if.end.while.body.i_crit_edge ]
  %start_page.i = getelementptr inbounds %struct.swap_extent, ptr %rb.020.i, i32 0, i32 1
  %5 = ptrtoint ptr %start_page.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %start_page.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %offset)
  %cmp.i8 = icmp ugt i32 %6, %offset
  br i1 %cmp.i8, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %rb.020.i, i32 0, i32 2
  br label %if.end5.i

if.else.i:                                        ; preds = %while.body.i
  %nr_pages.i = getelementptr inbounds %struct.swap_extent, ptr %rb.020.i, i32 0, i32 2
  %7 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_pages.i, align 8
  %add.i = add i32 %8, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %offset)
  %cmp2.not.i = icmp ugt i32 %add.i, %offset
  br i1 %cmp2.not.i, label %offset_to_swap_extent.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %rb.020.i, i32 0, i32 1
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.then.i
  %rb.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %9 = ptrtoint ptr %rb.1.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %rb.0.i = load ptr, ptr %rb.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %rb.0.i, null
  br i1 %tobool.not.i, label %if.end5.i.do.body.i_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i

if.end5.i.do.body.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i

do.body.i:                                        ; preds = %if.end5.i.do.body.i_crit_edge, %if.end.do.body.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #19, !srcloc !243
  unreachable

offset_to_swap_extent.exit:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  %start_block = getelementptr inbounds %struct.swap_extent, ptr %rb.020.i, i32 0, i32 3
  %10 = ptrtoint ptr %start_block to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %start_block, align 8
  %sub = sub i32 %offset, %6
  %conv = zext i32 %sub to i64
  %add = add i64 %11, %conv
  br label %cleanup

cleanup:                                          ; preds = %offset_to_swap_extent.exit, %lor.lhs.false.cleanup_crit_edge, %swap_type_to_swap_info.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %add, %offset_to_swap_extent.exit ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %swap_type_to_swap_info.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @count_swap_pages(i32 noundef %type, i32 noundef %free) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #19
  %0 = load i32, ptr @nr_swapfiles, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %type)
  %cmp = icmp ugt i32 %0, %type
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %type
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %lock = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock) #19
  %flags = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %if.then1

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4

if.then1:                                         ; preds = %if.then
  %pages = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 11
  %5 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free)
  %tobool2.not = icmp eq i32 %free, 0
  br i1 %tobool2.not, label %if.then1.if.end4_crit_edge, label %if.then3

if.then1.if.end4_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #21
  %inuse_pages = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 12
  %7 = ptrtoint ptr %inuse_pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inuse_pages, align 4
  %sub = sub i32 %6, %8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then1.if.end4_crit_edge, %if.then.if.end4_crit_edge
  %n.0 = phi i32 [ %sub, %if.then3 ], [ %6, %if.then1.if.end4_crit_edge ], [ 0, %if.then.if.end4_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #19
  br label %if.end6

if.end6:                                          ; preds = %if.end4, %entry.if.end6_crit_edge
  %n.1 = phi i32 [ %n.0, %if.end4 ], [ 0, %entry.if.end6_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_lock) #19
  ret i32 %n.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @add_swap_extent(ptr noundef %sis, i32 noundef %start_page, i32 noundef %nr_pages, i64 noundef %start_block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %swap_extent_root = getelementptr inbounds %struct.swap_info_struct, ptr %sis, i32 0, i32 17
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %parent.0 = phi ptr [ null, %entry ], [ %1, %while.cond.while.cond_crit_edge ]
  %link.0 = phi ptr [ %swap_extent_root, %entry ], [ %rb_right, %while.cond.while.cond_crit_edge ]
  %0 = ptrtoint ptr %link.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link.0, align 4
  %tobool.not = icmp eq ptr %1, null
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 1
  br i1 %tobool.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %tobool1.not = icmp eq ptr %parent.0, null
  br i1 %tobool1.not, label %while.end.if.end22_crit_edge, label %if.then

while.end.if.end22_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end22

if.then:                                          ; preds = %while.end
  %start_page2 = getelementptr inbounds %struct.swap_extent, ptr %parent.0, i32 0, i32 1
  %2 = ptrtoint ptr %start_page2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_page2, align 4
  %nr_pages3 = getelementptr inbounds %struct.swap_extent, ptr %parent.0, i32 0, i32 2
  %4 = ptrtoint ptr %nr_pages3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_pages3, align 8
  %add = add i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %start_page)
  %cmp.not = icmp eq i32 %add, %start_page
  br i1 %cmp.not, label %do.end12, label %do.body7, !prof !251

do.body7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2282, 0\0A.popsection", ""() #19, !srcloc !286
  unreachable

do.end12:                                         ; preds = %if.then
  %start_block13 = getelementptr inbounds %struct.swap_extent, ptr %parent.0, i32 0, i32 3
  %6 = ptrtoint ptr %start_block13 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start_block13, align 8
  %conv = zext i32 %5 to i64
  %add15 = add i64 %7, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add15, i64 %start_block)
  %cmp16 = icmp eq i64 %add15, %start_block
  br i1 %cmp16, label %if.then18, label %do.end12.if.end22_crit_edge

do.end12.if.end22_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end22

if.then18:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #21
  %add20 = add i32 %5, %nr_pages
  %8 = ptrtoint ptr %nr_pages3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add20, ptr %nr_pages3, align 8
  br label %cleanup

if.end22:                                         ; preds = %do.end12.if.end22_crit_edge, %while.end.if.end22_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 32) #23
  %cmp23 = icmp eq ptr %call7.i, null
  br i1 %cmp23, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #21
  %start_page27 = getelementptr inbounds %struct.swap_extent, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %start_page27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %start_page, ptr %start_page27, align 4
  %nr_pages28 = getelementptr inbounds %struct.swap_extent, ptr %call7.i, i32 0, i32 2
  %11 = ptrtoint ptr %nr_pages28 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %nr_pages, ptr %nr_pages28, align 8
  %start_block29 = getelementptr inbounds %struct.swap_extent, ptr %call7.i, i32 0, i32 3
  %12 = ptrtoint ptr %start_block29 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %start_block, ptr %start_block29, align 8
  %13 = ptrtoint ptr %parent.0 to i32
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %call7.i, align 8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %call7.i, i32 0, i32 1
  %15 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %call7.i, i32 0, i32 2
  %16 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rb_left.i, align 8
  %17 = ptrtoint ptr %link.0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i, ptr %link.0, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i, ptr noundef %swap_extent_root) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end22.cleanup_crit_edge, %if.then18
  %retval.0 = phi i32 [ 0, %if.then18 ], [ 1, %if.end26 ], [ -12, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @has_usable_swap() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #19
  %0 = load volatile ptr, ptr @swap_active_head, align 4
  %cmp.i.i = icmp ne ptr %0, @swap_active_head
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_lock) #19
  ret i1 %cmp.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_swapoff(i32 noundef %specialfile) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %specialfile to ptr
  %call = tail call fastcc i32 @__do_sys_swapoff(ptr noundef %0)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__do_sys_swapoff(ptr noundef %specialfile) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %call = tail call zeroext i1 @capable(i32 noundef 21) #19
  br i1 %call, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body6, label %do.end12, !prof !245

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2484, 0\0A.popsection", ""() #19, !srcloc !287
  unreachable

do.end12:                                         ; preds = %do.body
  %call13 = tail call ptr @getname(ptr noundef %specialfile) #19
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end17

if.then15:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #21
  %6 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %do.end12
  %call18 = tail call ptr @file_open_name(ptr noundef %call13, i32 noundef 131074, i16 noundef zeroext 0) #19
  %7 = ptrtoint ptr %call18 to i32
  %cmp.i242 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %if.end17.out_crit_edge, label %if.end22

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end22:                                         ; preds = %if.end17
  %f_mapping = getelementptr inbounds %struct.file, ptr %call18, i32 0, i32 18
  %8 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_mapping, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #19
  %.pn256 = load ptr, ptr @swap_active_head, align 4
  %cmp.not257 = icmp eq ptr %.pn256, @swap_active_head
  br i1 %cmp.not257, label %if.end22.if.then39.critedge_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  br label %for.body

if.end22.if.then39.critedge_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then39.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end22.for.body_crit_edge
  %.pn258 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn256, %if.end22.for.body_crit_edge ]
  %flags = getelementptr i8, ptr %.pn258, i32 -20
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %for.body.for.inc_crit_edge, label %if.then26

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.then26:                                        ; preds = %for.body
  %swap_file27 = getelementptr i8, ptr %.pn258, i32 160
  %12 = ptrtoint ptr %swap_file27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %swap_file27, align 4
  %f_mapping28 = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %f_mapping28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_mapping28, align 4
  %cmp29 = icmp eq ptr %15, %9
  br i1 %cmp29, label %if.end40, label %if.then26.for.inc_crit_edge

if.then26.for.inc_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

for.inc:                                          ; preds = %if.then26.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn258 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn258, align 4
  %cmp.not = icmp eq ptr %.pn, @swap_active_head
  br i1 %cmp.not, label %for.inc.if.then39.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.inc.if.then39.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then39.critedge

if.then39.critedge:                               ; preds = %for.inc.if.then39.critedge_crit_edge, %if.end22.if.then39.critedge_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_lock) #19
  br label %out_dput

if.end40:                                         ; preds = %if.then26
  %flags.le = getelementptr i8, ptr %.pn258, i32 -20
  %swap_file27.le = getelementptr i8, ptr %.pn258, i32 160
  %p.0.le = getelementptr i8, ptr %.pn258, i32 -28
  %list.le = getelementptr i8, ptr %.pn258, i32 -12
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %mm43 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 53
  %19 = ptrtoint ptr %mm43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mm43, align 8
  %pages = getelementptr i8, ptr %.pn258, i32 128
  %21 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pages, align 4
  %call44 = tail call i32 @security_vm_enough_memory_mm(ptr noundef %20, i32 noundef %22) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.end40
  %23 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pages, align 4
  %sub.i = sub i32 0, %24
  %conv.i.i = sext i32 %sub.i to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %25 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i, i32 noundef %25) #19
  tail call fastcc void @del_from_avail_list(ptr noundef %p.0.le)
  %lock = getelementptr i8, ptr %.pn258, i32 232
  tail call void @_raw_spin_lock(ptr noundef %lock) #19
  %prio = getelementptr i8, ptr %.pn258, i32 -16
  %26 = ptrtoint ptr %prio to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %prio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp49 = icmp slt i16 %27, 0
  br i1 %cmp49, label %for.cond58.preheader, label %if.then46.if.end93_crit_edge

if.then46.if.end93_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end93

for.cond58.preheader:                             ; preds = %if.then46
  %28 = ptrtoint ptr %.pn258 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn239259 = load ptr, ptr %.pn258, align 4
  %cmp61.not260 = icmp eq ptr %.pn239259, @swap_active_head
  br i1 %cmp61.not260, label %for.cond58.preheader.for.end91_crit_edge, label %for.cond58.preheader.for.body65_crit_edge

for.cond58.preheader.for.body65_crit_edge:        ; preds = %for.cond58.preheader
  br label %for.body65

for.cond58.preheader.for.end91_crit_edge:         ; preds = %for.cond58.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end91

if.else:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_lock) #19
  br label %out_dput

for.body65:                                       ; preds = %for.inc84.for.body65_crit_edge, %for.cond58.preheader.for.body65_crit_edge
  %.pn239261 = phi ptr [ %.pn239, %for.inc84.for.body65_crit_edge ], [ %.pn239259, %for.cond58.preheader.for.body65_crit_edge ]
  %list59 = getelementptr i8, ptr %.pn239261, i32 -12
  %prio66 = getelementptr i8, ptr %.pn239261, i32 -16
  %29 = ptrtoint ptr %prio66 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %prio66, align 4
  %inc = add i16 %30, 1
  store i16 %inc, ptr %prio66, align 4
  %31 = ptrtoint ptr %list59 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %list59, align 4
  %dec = add i32 %32, -1
  store i32 %dec, ptr %list59, align 4
  %avail_lists = getelementptr i8, ptr %.pn239261, i32 460
  %33 = ptrtoint ptr %avail_lists to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %avail_lists, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp74.not = icmp eq i32 %34, 1
  br i1 %cmp74.not, label %for.body65.for.inc84_crit_edge, label %if.then76

for.body65.for.inc84_crit_edge:                   ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc84

if.then76:                                        ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #21
  %dec80 = add i32 %34, -1
  %35 = ptrtoint ptr %avail_lists to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %dec80, ptr %avail_lists, align 4
  br label %for.inc84

for.inc84:                                        ; preds = %if.then76, %for.body65.for.inc84_crit_edge
  %36 = ptrtoint ptr %.pn239261 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn239 = load ptr, ptr %.pn239261, align 4
  %cmp61.not = icmp eq ptr %.pn239, @swap_active_head
  br i1 %cmp61.not, label %for.inc84.for.end91_crit_edge, label %for.inc84.for.body65_crit_edge

for.inc84.for.body65_crit_edge:                   ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body65

for.inc84.for.end91_crit_edge:                    ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end91

for.end91:                                        ; preds = %for.inc84.for.end91_crit_edge, %for.cond58.preheader.for.end91_crit_edge
  %37 = load i32, ptr @least_priority, align 4
  %inc92 = add i32 %37, 1
  store i32 %inc92, ptr @least_priority, align 4
  br label %if.end93

if.end93:                                         ; preds = %for.end91, %if.then46.if.end93_crit_edge
  tail call void @plist_del(ptr noundef %list.le, ptr noundef nonnull @swap_active_head) #19
  %38 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pages, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nr_swap_pages, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr nonnull @nr_swap_pages, i32 1, i32 3, i32 1) #19
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_swap_pages, ptr nonnull @nr_swap_pages, i32 %39, ptr nonnull elementtype(i32) @nr_swap_pages) #19, !srcloc !244
  %41 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pages, align 4
  %43 = load i32, ptr @total_swap_pages, align 4
  %sub = sub i32 %43, %42
  store i32 %sub, ptr @total_swap_pages, align 4
  %44 = ptrtoint ptr %flags.le to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.le, align 4
  %and98 = and i32 %45, -3
  store i32 %and98, ptr %flags.le, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #19
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_lock) #19
  tail call void @disable_swap_slots_cache_lock() #19
  %46 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 111
  %50 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %signal.i, align 16
  %oom_flag_origin.i = getelementptr inbounds %struct.signal_struct, ptr %51, i32 0, i32 56
  %52 = ptrtoint ptr %oom_flag_origin.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %oom_flag_origin.i, align 4
  %type = getelementptr i8, ptr %.pn258, i32 8
  %53 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %type, align 4
  %conv100 = sext i8 %54 to i32
  %call101 = tail call fastcc i32 @try_to_unuse(i32 noundef %conv100)
  %55 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i243 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i243 to ptr
  %task.i244 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task.i244 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task.i244, align 8
  %signal.i245 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 111
  %59 = ptrtoint ptr %signal.i245 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %signal.i245, align 16
  %oom_flag_origin.i246 = getelementptr inbounds %struct.signal_struct, ptr %60, i32 0, i32 56
  %61 = ptrtoint ptr %oom_flag_origin.i246 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %oom_flag_origin.i246, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.then103

if.then103:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @reinsert_swap_info(ptr noundef %p.0.le)
  tail call void @reenable_swap_slots_cache_unlock() #19
  br label %out_dput

if.end104:                                        ; preds = %if.end93
  tail call void @reenable_swap_slots_cache_unlock() #19
  tail call void @percpu_ref_kill_and_confirm(ptr noundef %p.0.le, ptr noundef null) #19
  tail call void @synchronize_rcu() #19
  %comp = getelementptr i8, ptr %.pn258, i32 168
  tail call void @wait_for_completion(ptr noundef %comp) #19
  %discard_work = getelementptr i8, ptr %.pn258, i32 320
  %call105 = tail call zeroext i1 @flush_work(ptr noundef %discard_work) #19
  tail call fastcc void @destroy_swap_extents(ptr noundef %p.0.le)
  %62 = ptrtoint ptr %flags.le to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.le, align 4
  %and107 = and i32 %63, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end104.if.end110_crit_edge, label %if.then109

if.end104.if.end110_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end110

if.then109:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @free_swap_count_continuations(ptr noundef %p.0.le)
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %if.end104.if.end110_crit_edge
  %bdev = getelementptr i8, ptr %.pn258, i32 156
  %64 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bdev, align 4
  %tobool111.not = icmp eq ptr %65, null
  br i1 %tobool111.not, label %if.end110.if.then116_crit_edge, label %lor.lhs.false

if.end110.if.then116_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then116

lor.lhs.false:                                    ; preds = %if.end110
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %65, i32 0, i32 18
  %66 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bd_queue.i, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %queue_flags, align 4
  %70 = and i32 %69, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool115.not = icmp eq i32 %70, 0
  br i1 %tobool115.not, label %lor.lhs.false.if.then116_crit_edge, label %lor.lhs.false.if.end117_crit_edge

lor.lhs.false.if.end117_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end117

lor.lhs.false.if.then116_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then116

if.then116:                                       ; preds = %lor.lhs.false.if.then116_crit_edge, %if.end110.if.then116_crit_edge
  %call.i.i240 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nr_rotate_swap, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr nonnull @nr_rotate_swap, i32 1, i32 3, i32 1) #19
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_rotate_swap, ptr nonnull @nr_rotate_swap, i32 1, ptr nonnull elementtype(i32) @nr_rotate_swap) #19, !srcloc !244
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %lor.lhs.false.if.end117_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @swapon_mutex, i32 noundef 0) #19
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #19
  tail call void @_raw_spin_lock(ptr noundef %lock) #19
  tail call fastcc void @drain_mmlist()
  %highest_bit = getelementptr i8, ptr %.pn258, i32 124
  %72 = ptrtoint ptr %highest_bit to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %highest_bit, align 4
  %73 = ptrtoint ptr %flags.le to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %74)
  %cmp120262 = icmp ugt i32 %74, 16383
  br i1 %cmp120262, label %if.end117.while.body_crit_edge, label %if.end117.while.end_crit_edge

if.end117.while.end_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

if.end117.while.body_crit_edge:                   ; preds = %if.end117
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end117.while.body_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #19
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_lock) #19
  %call123 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #19
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #19
  tail call void @_raw_spin_lock(ptr noundef %lock) #19
  %75 = ptrtoint ptr %flags.le to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags.le, align 4
  %cmp120 = icmp ugt i32 %76, 16383
  br i1 %cmp120, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end117.while.end_crit_edge
  %77 = ptrtoint ptr %swap_file27.le to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %swap_file27.le, align 4
  %old_block_size126 = getelementptr i8, ptr %.pn258, i32 164
  %79 = ptrtoint ptr %old_block_size126 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %old_block_size126, align 4
  store ptr null, ptr %swap_file27.le, align 4
  %max = getelementptr i8, ptr %.pn258, i32 12
  %81 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %max, align 4
  %swap_map128 = getelementptr i8, ptr %.pn258, i32 16
  %82 = ptrtoint ptr %swap_map128 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %swap_map128, align 4
  store ptr null, ptr %swap_map128, align 4
  %cluster_info130 = getelementptr i8, ptr %.pn258, i32 20
  %84 = ptrtoint ptr %cluster_info130 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cluster_info130, align 4
  store ptr null, ptr %cluster_info130, align 4
  %frontswap_map.i = getelementptr i8, ptr %.pn258, i32 224
  %86 = ptrtoint ptr %frontswap_map.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %frontswap_map.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #19
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_lock) #19
  %88 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %type, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frontswap_enabled_key, ptr blockaddress(@__do_sys_swapoff, %if.then.i)) #19
          to label %frontswap_invalidate_area.exit [label %if.then.i], !srcloc !246

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  %conv137 = sext i8 %89 to i32
  tail call void @__frontswap_invalidate_area(i32 noundef %conv137) #19
  br label %frontswap_invalidate_area.exit

frontswap_invalidate_area.exit:                   ; preds = %if.then.i, %while.end
  %90 = ptrtoint ptr %frontswap_map.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %frontswap_map.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @swapon_mutex) #19
  %percpu_cluster = getelementptr i8, ptr %.pn258, i32 148
  %91 = ptrtoint ptr %percpu_cluster to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %percpu_cluster, align 4
  tail call void @free_percpu(ptr noundef %92) #19
  %93 = ptrtoint ptr %percpu_cluster to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %percpu_cluster, align 4
  %cluster_next_cpu = getelementptr i8, ptr %.pn258, i32 144
  %94 = ptrtoint ptr %cluster_next_cpu to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cluster_next_cpu, align 4
  tail call void @free_percpu(ptr noundef %95) #19
  %96 = ptrtoint ptr %cluster_next_cpu to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %cluster_next_cpu, align 4
  tail call void @vfree(ptr noundef %83) #19
  tail call void @kvfree(ptr noundef %85) #19
  tail call void @kvfree(ptr noundef %87) #19
  %97 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %type, align 4
  %conv141 = sext i8 %98 to i32
  tail call void @swap_cgroup_swapoff(i32 noundef %conv141) #19
  %99 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %type, align 4
  %conv143 = sext i8 %100 to i32
  tail call void @exit_swap_address_space(i32 noundef %conv143) #19
  %101 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %9, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %102, align 8
  %105 = and i16 %104, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %105)
  %cmp146 = icmp eq i16 %105, 24576
  br i1 %cmp146, label %if.then148, label %frontswap_invalidate_area.exit.if.end152_crit_edge

frontswap_invalidate_area.exit.if.end152_crit_edge: ; preds = %frontswap_invalidate_area.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end152

if.then148:                                       ; preds = %frontswap_invalidate_area.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call150 = tail call ptr @I_BDEV(ptr noundef %102) #19
  %call151 = tail call i32 @set_blocksize(ptr noundef %call150, i32 noundef %80) #19
  tail call void @blkdev_put(ptr noundef %call150, i32 noundef 131) #19
  br label %if.end152

if.end152:                                        ; preds = %if.then148, %frontswap_invalidate_area.exit.if.end152_crit_edge
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %102, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #19
  %i_flags = getelementptr inbounds %struct.inode, ptr %102, i32 0, i32 4
  %106 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %i_flags, align 4
  %and153 = and i32 %107, -257
  store i32 %and153, ptr %i_flags, align 4
  tail call void @up_write(ptr noundef %i_rwsem.i) #19
  %call154 = tail call i32 @filp_close(ptr noundef %78, ptr noundef null) #19
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #19
  %108 = ptrtoint ptr %flags.le to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %flags.le, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_lock) #19
  %call.i.i241 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @proc_poll_event, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr nonnull @proc_poll_event, i32 1, i32 3, i32 1) #19
  %109 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @proc_poll_event, ptr nonnull @proc_poll_event, i32 1, ptr nonnull elementtype(i32) @proc_poll_event) #19, !srcloc !247
  tail call void @__wake_up(ptr noundef nonnull @proc_poll_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #19
  br label %out_dput

out_dput:                                         ; preds = %if.end152, %if.then103, %if.else, %if.then39.critedge
  %err.0 = phi i32 [ -12, %if.else ], [ %call101, %if.then103 ], [ 0, %if.end152 ], [ -22, %if.then39.critedge ]
  %call156 = tail call i32 @filp_close(ptr noundef %call18, ptr noundef null) #19
  br label %out

out:                                              ; preds = %out_dput, %if.end17.out_crit_edge
  %err.1 = phi i32 [ %7, %if.end17.out_crit_edge ], [ %err.0, %out_dput ]
  tail call void @putname(ptr noundef %call13) #19
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then15 ], [ %err.1, %out ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @procswaps_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_create(ptr noundef nonnull @.str.39, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @swaps_proc_ops) #19
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max_swapfiles_check() #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @generic_max_swapfile_size() local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 33554432
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @max_swapfile_size() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 33554432
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_swapon(i32 noundef %specialfile, i32 noundef %swap_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %specialfile to ptr
  %call = tail call fastcc i32 @__do_sys_swapon(ptr noundef %0, i32 noundef %swap_flags)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__do_sys_swapon(ptr noundef %specialfile, i32 noundef %swap_flags) unnamed_addr #6 align 64 {
entry:
  %span = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %span) #19
  %0 = ptrtoint ptr %span to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %span, align 8, !annotation !248
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %swap_flags)
  %tobool.not = icmp ult i32 %swap_flags, 524288
  br i1 %tobool.not, label %if.end, label %entry.cleanup299_crit_edge

entry.cleanup299_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup299

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @capable(i32 noundef 21) #19
  br i1 %call, label %if.end2, label %if.end.cleanup299_crit_edge

if.end.cleanup299_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup299

if.end2:                                          ; preds = %if.end
  %1 = load ptr, ptr @swap_avail_heads, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end2.cleanup299_crit_edge, label %if.end5

if.end2.cleanup299_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup299

if.end5:                                          ; preds = %if.end2
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 508, i32 noundef 3520, i32 noundef -1) #24
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.end5.if.then8_crit_edge, label %if.end.i

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then8

if.end.i:                                         ; preds = %if.end5
  %call3.i = tail call i32 @percpu_ref_init(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull @swap_users_ref_free, i32 noundef 2, i32 noundef 3264) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %if.end.i.if.then8.sink.split_crit_edge

if.end.i.if.then8.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then8.sink.split

if.end7.i:                                        ; preds = %if.end.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #19
  %2 = load i32, ptr @nr_swapfiles, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp95.not.i = icmp eq i32 %2, 0
  br i1 %cmp95.not.i, label %if.end7.i.if.then17.i_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  br label %for.body.i

if.end7.i.if.then17.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then17.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.i.for.body.i_crit_edge
  %type.096.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end7.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %type.096.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %flags.i = getelementptr inbounds %struct.swap_info_struct, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %type.096.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.end.thread.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %type.096.i)
  %cmp11.i = icmp ugt i32 %type.096.i, 29
  br i1 %cmp11.i, label %for.end.i.if.then12.i_crit_edge, label %for.end.i.if.end40.i_crit_edge

for.end.i.if.end40.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end40.i

for.end.i.if.then12.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then12.i

for.end.thread.i:                                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %2)
  %cmp1193.i = icmp ugt i32 %2, 29
  br i1 %cmp1193.i, label %for.end.thread.i.if.then12.i_crit_edge, label %for.end.thread.i.if.then17.i_crit_edge

for.end.thread.i.if.then17.i_crit_edge:           ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then17.i

for.end.thread.i.if.then12.i_crit_edge:           ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then12.i

if.then12.i:                                      ; preds = %for.end.thread.i.if.then12.i_crit_edge, %for.end.i.if.then12.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_lock) #19
  tail call void @percpu_ref_exit(ptr noundef nonnull %call.i.i.i) #19
  br label %if.then8.sink.split

if.then17.i:                                      ; preds = %for.end.thread.i.if.then17.i_crit_edge, %if.end7.i.if.then17.i_crit_edge
  %conv.i = trunc i32 %2 to i8
  %type18.i = getelementptr inbounds %struct.swap_info_struct, ptr %call.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %type18.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i, ptr %type18.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !288
  %arrayidx29.i = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %2
  %8 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call.i.i.i, ptr %arrayidx29.i, align 4
  %9 = load i32, ptr @nr_swapfiles, align 4
  %inc38.i = add i32 %9, 1
  store i32 %inc38.i, ptr @nr_swapfiles, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then17.i, %for.end.i.if.end40.i_crit_edge
  %p.0.i = phi ptr [ %call.i.i.i, %if.then17.i ], [ %4, %for.end.i.if.end40.i_crit_edge ]
  %defer.0.i = phi ptr [ null, %if.then17.i ], [ %call.i.i.i, %for.end.i.if.end40.i_crit_edge ]
  %swap_extent_root.i = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 17
  %10 = ptrtoint ptr %swap_extent_root.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %swap_extent_root.i, align 4
  %list.i = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 3
  %11 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %list.i, align 4
  %prio_list.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prio_list.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %prio_list.i.i, ptr %prio_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 3, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %prio_list.i.i, ptr %prev.i.i.i, align 4
  %node_list.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %node_list.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %node_list.i.i, ptr %node_list.i.i, align 4
  %prev.i1.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 3, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %node_list.i.i, ptr %prev.i1.i.i, align 4
  %avail_lists.i = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 28
  %16 = ptrtoint ptr %avail_lists.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %avail_lists.i, align 4
  %prio_list.i89.i = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %prio_list.i89.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %prio_list.i89.i, ptr %prio_list.i89.i, align 4
  %prev.i.i90.i = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i.i90.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %prio_list.i89.i, ptr %prev.i.i90.i, align 4
  %node_list.i91.i = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 1, i32 2
  %19 = ptrtoint ptr %node_list.i91.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %node_list.i91.i, ptr %node_list.i91.i, align 4
  %prev.i1.i92.i = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 1, i32 3
  %20 = ptrtoint ptr %prev.i1.i92.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %node_list.i91.i, ptr %prev.i1.i92.i, align 4
  %flags48.i = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags48.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %flags48.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_lock) #19
  %tobool49.not.i = icmp eq ptr %defer.0.i, null
  br i1 %tobool49.not.i, label %if.end40.i.alloc_swap_info.exit_crit_edge, label %if.then50.i

if.end40.i.alloc_swap_info.exit_crit_edge:        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %alloc_swap_info.exit

if.then50.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @percpu_ref_exit(ptr noundef nonnull %defer.0.i) #19
  tail call void @kvfree(ptr noundef nonnull %defer.0.i) #19
  br label %alloc_swap_info.exit

alloc_swap_info.exit:                             ; preds = %if.then50.i, %if.end40.i.alloc_swap_info.exit_crit_edge
  %lock.i = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 24
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.63, ptr noundef nonnull @alloc_swap_info.__key, i16 noundef signext 3) #19
  %cont_lock.i = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 25
  tail call void @__raw_spin_lock_init(ptr noundef %cont_lock.i, ptr noundef nonnull @.str.65, ptr noundef nonnull @alloc_swap_info.__key.64, i16 noundef signext 3) #19
  %comp.i = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 21
  %22 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %comp.i, align 4
  %wait.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 21, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.66, ptr noundef nonnull @init_completion.__key) #19
  %cmp.i = icmp ugt ptr %p.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_swap_info.exit.if.then8_crit_edge, label %do.body

alloc_swap_info.exit.if.then8_crit_edge:          ; preds = %alloc_swap_info.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then8

if.then8.sink.split:                              ; preds = %if.then12.i, %if.end.i.if.then8.sink.split_crit_edge
  %retval.0.i484.ph = phi ptr [ inttoptr (i32 -1 to ptr), %if.then12.i ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then8.sink.split_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #19
  br label %if.then8

if.then8:                                         ; preds = %if.then8.sink.split, %alloc_swap_info.exit.if.then8_crit_edge, %if.end5.if.then8_crit_edge
  %retval.0.i484 = phi ptr [ %p.0.i, %alloc_swap_info.exit.if.then8_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end5.if.then8_crit_edge ], [ %retval.0.i484.ph, %if.then8.sink.split ]
  %23 = ptrtoint ptr %retval.0.i484 to i32
  br label %cleanup299

do.body:                                          ; preds = %alloc_swap_info.exit
  %discard_work = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 26
  tail call void @__init_work(ptr noundef %discard_work, i32 noundef 0) #19
  %24 = ptrtoint ptr %discard_work to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %discard_work, align 4
  %lockdep_map = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 26, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.50, ptr noundef nonnull @__do_sys_swapon.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #19
  %entry14 = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 26, i32 1
  %25 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 26, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry14, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 26, i32 2
  %27 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @swap_discard_work, ptr %func, align 4
  %call16 = tail call ptr @getname(ptr noundef %specialfile) #19
  %cmp.i454 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i454, label %if.then18, label %if.end20

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %28 = ptrtoint ptr %call16 to i32
  br label %bad_swap

if.end20:                                         ; preds = %do.body
  %call21 = tail call ptr @file_open_name(ptr noundef %call16, i32 noundef 131074, i16 noundef zeroext 0) #19
  %cmp.i455 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i455, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  %29 = ptrtoint ptr %call21 to i32
  br label %bad_swap

if.end25:                                         ; preds = %if.end20
  %swap_file26 = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 19
  %30 = ptrtoint ptr %swap_file26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call21, ptr %swap_file26, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %call21, i32 0, i32 18
  %31 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %f_mapping, align 4
  %dentry27 = getelementptr inbounds %struct.file, ptr %call21, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %dentry27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dentry27, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  %call28 = tail call fastcc i32 @claim_swapfile(ptr noundef %p.0.i, ptr noundef %36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end33, label %if.end25.bad_swap_crit_edge, !prof !251

if.end25.bad_swap_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #21
  br label %bad_swap

if.end33:                                         ; preds = %if.end25
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #19
  %pprev.i.i.i = getelementptr inbounds %struct.dentry, ptr %34, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i.not.i, label %d_unlinked.exit, label %if.end33.lor.lhs.false_crit_edge

if.end33.lor.lhs.false_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #21
  br label %lor.lhs.false

d_unlinked.exit:                                  ; preds = %if.end33
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %34, i32 0, i32 3
  %39 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %d_parent.i, align 8
  %cmp.i456.not = icmp eq ptr %40, %34
  br i1 %cmp.i456.not, label %d_unlinked.exit.lor.lhs.false_crit_edge, label %d_unlinked.exit.bad_swap_unlock_inode_crit_edge

d_unlinked.exit.bad_swap_unlock_inode_crit_edge:  ; preds = %d_unlinked.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %bad_swap_unlock_inode

d_unlinked.exit.lor.lhs.false_crit_edge:          ; preds = %d_unlinked.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %d_unlinked.exit.lor.lhs.false_crit_edge, %if.end33.lor.lhs.false_crit_edge
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %34, align 8
  %and.i457 = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i457)
  %tobool37.not = icmp eq i32 %and.i457, 0
  br i1 %tobool37.not, label %if.end39, label %lor.lhs.false.bad_swap_unlock_inode_crit_edge

lor.lhs.false.bad_swap_unlock_inode_crit_edge:    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %bad_swap_unlock_inode

if.end39:                                         ; preds = %lor.lhs.false
  %i_flags = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 4
  %43 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i_flags, align 4
  %and40 = and i32 %44, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.bad_swap_unlock_inode_crit_edge

if.end39.bad_swap_unlock_inode_crit_edge:         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #21
  br label %bad_swap_unlock_inode

if.end43:                                         ; preds = %if.end39
  %a_ops = getelementptr inbounds %struct.address_space, ptr %32, i32 0, i32 9
  %45 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %a_ops, align 4
  %readpage = getelementptr inbounds %struct.address_space_operations, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %readpage to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %readpage, align 4
  %tobool44.not = icmp eq ptr %48, null
  br i1 %tobool44.not, label %if.end43.bad_swap_unlock_inode_crit_edge, label %if.end46

if.end43.bad_swap_unlock_inode_crit_edge:         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #21
  br label %bad_swap_unlock_inode

if.end46:                                         ; preds = %if.end43
  %call.i = tail call ptr @read_cache_page(ptr noundef %32, i32 noundef 0, ptr noundef null, ptr noundef %call21) #19
  %cmp.i458 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i458, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #21
  %49 = ptrtoint ptr %call.i to i32
  br label %bad_swap_unlock_inode

if.end51:                                         ; preds = %if.end46
  %call52 = tail call fastcc ptr @kmap(ptr noundef %call.i)
  %call53 = tail call fastcc i32 @read_swap_header(ptr noundef %p.0.i, ptr noundef %call52, ptr noundef %36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end51.bad_swap_unlock_inode_crit_edge, label %if.end64, !prof !245

if.end51.bad_swap_unlock_inode_crit_edge:         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #21
  br label %bad_swap_unlock_inode

if.end64:                                         ; preds = %if.end51
  %call65 = tail call noalias ptr @vzalloc(i32 noundef %call53) #24
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.end64.bad_swap_unlock_inode_crit_edge, label %if.end68

if.end64.bad_swap_unlock_inode_crit_edge:         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #21
  br label %bad_swap_unlock_inode

if.end68:                                         ; preds = %if.end64
  %bdev = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 18
  %50 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bdev, align 4
  %tobool69.not = icmp eq ptr %51, null
  br i1 %tobool69.not, label %if.end68.if.else_crit_edge, label %land.lhs.true

if.end68.if.else_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

land.lhs.true:                                    ; preds = %if.end68
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %51, i32 0, i32 17
  %52 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %queue, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %queue_flags, align 4
  %58 = and i32 %57, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool72.not = icmp eq i32 %58, 0
  br i1 %tobool72.not, label %land.lhs.true.if.end74_crit_edge, label %if.then73

land.lhs.true.if.end74_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end74

if.then73:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %59 = ptrtoint ptr %flags48.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags48.i, align 4
  %or = or i32 %60, 2048
  store i32 %or, ptr %flags48.i, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %land.lhs.true.if.end74_crit_edge
  %61 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pr = load ptr, ptr %bdev, align 4
  %tobool76.not = icmp eq ptr %.pr, null
  br i1 %tobool76.not, label %if.end74.if.else_crit_edge, label %land.lhs.true77

if.end74.if.else_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

land.lhs.true77:                                  ; preds = %if.end74
  %bd_disk79 = getelementptr inbounds %struct.block_device, ptr %.pr, i32 0, i32 17
  %62 = ptrtoint ptr %bd_disk79 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bd_disk79, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fops, align 8
  %rw_page = getelementptr inbounds %struct.block_device_operations, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %rw_page to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rw_page, align 4
  %tobool80.not = icmp eq ptr %67, null
  br i1 %tobool80.not, label %land.lhs.true77.if.end84_crit_edge, label %if.then81

land.lhs.true77.if.end84_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end84

if.then81:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #21
  %68 = ptrtoint ptr %flags48.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags48.i, align 4
  %or83 = or i32 %69, 4096
  store i32 %or83, ptr %flags48.i, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %land.lhs.true77.if.end84_crit_edge
  %70 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr487 = load ptr, ptr %bdev, align 4
  %tobool86.not = icmp eq ptr %.pr487, null
  br i1 %tobool86.not, label %if.end84.if.else_crit_edge, label %land.lhs.true87

if.end84.if.else_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

land.lhs.true87:                                  ; preds = %if.end84
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %.pr487, i32 0, i32 18
  %71 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bd_queue.i, align 4
  %queue_flags90 = getelementptr inbounds %struct.request_queue, ptr %72, i32 0, i32 11
  %73 = ptrtoint ptr %queue_flags90 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %queue_flags90, align 4
  %75 = and i32 %74, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool92.not = icmp eq i32 %75, 0
  br i1 %tobool92.not, label %land.lhs.true87.if.else_crit_edge, label %if.then93

land.lhs.true87.if.else_crit_edge:                ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

if.then93:                                        ; preds = %land.lhs.true87
  %76 = ptrtoint ptr %flags48.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags48.i, align 4
  %or95 = or i32 %77, 16
  store i32 %or95, ptr %flags48.i, align 4
  %call96 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #24
  %cluster_next_cpu = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 15
  %78 = ptrtoint ptr %cluster_next_cpu to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call96, ptr %cluster_next_cpu, align 4
  %tobool98.not = icmp eq ptr %call96, null
  br i1 %tobool98.not, label %if.then93.bad_swap_unlock_inode_crit_edge, label %for.cond.preheader

if.then93.bad_swap_unlock_inode_crit_edge:        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #21
  br label %bad_swap_unlock_inode

for.cond.preheader:                               ; preds = %if.then93
  %call101497 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %79 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call101497, i32 %79)
  %cmp498 = icmp ult i32 %call101497, %79
  br i1 %cmp498, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %highest_bit = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call101499 = phi i32 [ %call101497, %for.body.lr.ph ], [ %call101, %for.body.for.body_crit_edge ]
  %80 = ptrtoint ptr %highest_bit to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %highest_bit, align 4
  %call.i459 = tail call i32 @prandom_u32() #19
  %conv.i460 = zext i32 %call.i459 to i64
  %conv1.i = zext i32 %81 to i64
  %mul.i = mul nuw i64 %conv.i460, %conv1.i
  %shr.i461 = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i461 to i32
  %add = add nuw i32 %conv2.i, 1
  %82 = ptrtoint ptr %cluster_next_cpu to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cluster_next_cpu, align 4
  %84 = ptrtoint ptr %83 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call101499
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx, align 4
  %add108 = add i32 %86, %84
  %87 = inttoptr i32 %add108 to ptr
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add, ptr %87, align 4
  %call101 = tail call i32 @cpumask_next(i32 noundef %call101499, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %89 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call101, %89
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %sub = add i32 %call53, 255
  %div449 = lshr i32 %sub, 8
  %90 = mul nuw nsw i32 %div449, 48
  %call.i.i.i462 = tail call noalias ptr @kvmalloc_node(i32 noundef %90, i32 noundef 3520, i32 noundef -1) #24
  %tobool111.not = icmp eq ptr %call.i.i.i462, null
  br i1 %tobool111.not, label %for.end.bad_swap_unlock_inode_crit_edge, label %for.cond114.preheader

for.end.bad_swap_unlock_inode_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %bad_swap_unlock_inode

for.cond114.preheader:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub)
  %cmp115500.not = icmp ult i32 %sub, 256
  br i1 %cmp115500.not, label %for.cond114.preheader.for.end121_crit_edge, label %do.body117.preheader

for.cond114.preheader.for.end121_crit_edge:       ; preds = %for.cond114.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end121

do.body117.preheader:                             ; preds = %for.cond114.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div449, i32 1)
  br label %do.body117

do.body117:                                       ; preds = %do.body117.do.body117_crit_edge, %do.body117.preheader
  %ci.0501 = phi i32 [ %inc, %do.body117.do.body117_crit_edge ], [ 0, %do.body117.preheader ]
  %add.ptr = getelementptr %struct.swap_cluster_info, ptr %call.i.i.i462, i32 %ci.0501
  tail call void @__raw_spin_lock_init(ptr noundef %add.ptr, ptr noundef nonnull @.str.52, ptr noundef nonnull @__do_sys_swapon.__key.51, i16 noundef signext 3) #19
  %inc = add nuw nsw i32 %ci.0501, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %do.body117.for.end121_crit_edge, label %do.body117.do.body117_crit_edge

do.body117.do.body117_crit_edge:                  ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body117

do.body117.for.end121_crit_edge:                  ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end121

for.end121:                                       ; preds = %do.body117.for.end121_crit_edge, %for.cond114.preheader.for.end121_crit_edge
  %call122 = tail call noalias ptr @__alloc_percpu(i32 noundef 52, i32 noundef 4) #24
  %percpu_cluster = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 16
  %91 = ptrtoint ptr %percpu_cluster to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call122, ptr %percpu_cluster, align 4
  %tobool124.not = icmp eq ptr %call122, null
  br i1 %tobool124.not, label %for.end121.bad_swap_unlock_inode_crit_edge, label %for.cond127.preheader

for.end121.bad_swap_unlock_inode_crit_edge:       ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #21
  br label %bad_swap_unlock_inode

for.cond127.preheader:                            ; preds = %for.end121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %92 = load i32, ptr @nr_cpu_ids, align 4
  %call128502 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__sanitizer_cov_trace_cmp4(i32 %call128502, i32 %92)
  %cmp129503 = icmp ult i32 %call128502, %92
  br i1 %cmp129503, label %for.cond127.preheader.for.body130_crit_edge, label %for.cond127.preheader.if.end144_crit_edge

for.cond127.preheader.if.end144_crit_edge:        ; preds = %for.cond127.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end144

for.cond127.preheader.for.body130_crit_edge:      ; preds = %for.cond127.preheader
  br label %for.body130

for.body130:                                      ; preds = %for.body130.for.body130_crit_edge, %for.cond127.preheader.for.body130_crit_edge
  %call128504 = phi i32 [ %call128, %for.body130.for.body130_crit_edge ], [ %call128502, %for.cond127.preheader.for.body130_crit_edge ]
  %93 = ptrtoint ptr %percpu_cluster to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %percpu_cluster, align 4
  %95 = ptrtoint ptr %94 to i32
  %arrayidx139 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call128504
  %96 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx139, align 4
  %add140 = add i32 %97, %95
  %98 = inttoptr i32 %add140 to ptr
  %flags.i463 = getelementptr inbounds %struct.swap_cluster_info, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %flags.i463 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 2, ptr %flags.i463, align 4
  %call128 = tail call i32 @cpumask_next(i32 noundef %call128504, ptr noundef nonnull @__cpu_possible_mask) #25
  %cmp129 = icmp ult i32 %call128, %92
  br i1 %cmp129, label %for.body130.for.body130_crit_edge, label %for.body130.if.end144_crit_edge

for.body130.if.end144_crit_edge:                  ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end144

for.body130.for.body130_crit_edge:                ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body130

if.else:                                          ; preds = %land.lhs.true87.if.else_crit_edge, %if.end84.if.else_crit_edge, %if.end74.if.else_crit_edge, %if.end68.if.else_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nr_rotate_swap, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr nonnull @nr_rotate_swap, i32 1, i32 3, i32 1) #19
  %100 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_rotate_swap, ptr nonnull @nr_rotate_swap, i32 1, ptr nonnull elementtype(i32) @nr_rotate_swap) #19, !srcloc !247
  br label %if.end144

if.end144:                                        ; preds = %if.else, %for.body130.if.end144_crit_edge, %for.cond127.preheader.if.end144_crit_edge
  %cluster_info.1 = phi ptr [ null, %if.else ], [ %call.i.i.i462, %for.cond127.preheader.if.end144_crit_edge ], [ %call.i.i.i462, %for.body130.if.end144_crit_edge ]
  %inced_nr_rotate_swap.0 = phi i1 [ true, %if.else ], [ false, %for.cond127.preheader.if.end144_crit_edge ], [ false, %for.body130.if.end144_crit_edge ]
  %type = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 4
  %101 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %type, align 4
  %conv = sext i8 %102 to i32
  %call145 = tail call i32 @swap_cgroup_swapon(i32 noundef %conv, i32 noundef %call53) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end148, label %if.end144.bad_swap_unlock_inode_crit_edge

if.end144.bad_swap_unlock_inode_crit_edge:        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #21
  br label %bad_swap_unlock_inode

if.end148:                                        ; preds = %if.end144
  %call149 = call fastcc i32 @setup_swap_map_and_extents(ptr noundef %p.0.i, ptr noundef %call52, ptr noundef nonnull %call65, ptr noundef %cluster_info.1, i32 noundef %call53, ptr noundef nonnull %span)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %cmp150 = icmp slt i32 %call149, 0
  br i1 %cmp150, label %if.end148.bad_swap_unlock_inode_crit_edge, label %if.end.i.i465, !prof !245

if.end148.bad_swap_unlock_inode_crit_edge:        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #21
  br label %bad_swap_unlock_inode

if.end.i.i465:                                    ; preds = %if.end148
  %sub161 = add i32 %call53, 31
  %103 = lshr i32 %sub161, 3
  %104 = and i32 %103, 536870908
  %call.i.i.i464 = call noalias ptr @kvmalloc_node(i32 noundef %104, i32 noundef 3520, i32 noundef -1) #24
  %105 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bdev, align 4
  %tobool165.not = icmp eq ptr %106, null
  %and167 = and i32 %swap_flags, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  %or.cond = or i1 %tobool168.not, %tobool165.not
  br i1 %or.cond, label %if.end.i.i465.if.end208_crit_edge, label %land.lhs.true169

if.end.i.i465.if.end208_crit_edge:                ; preds = %if.end.i.i465
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end208

land.lhs.true169:                                 ; preds = %if.end.i.i465
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %106, i32 0, i32 18
  %107 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bd_queue.i.i, align 4
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %108, i32 0, i32 11
  %109 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %queue_flags.i, align 4
  %111 = and i32 %110, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i468.not = icmp eq i32 %111, 0
  br i1 %tobool.not.i468.not, label %land.lhs.true169.if.end208_crit_edge, label %if.then172

land.lhs.true169.if.end208_crit_edge:             ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end208

if.then172:                                       ; preds = %land.lhs.true169
  %112 = ptrtoint ptr %flags48.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flags48.i, align 4
  %or174 = or i32 %113, 1540
  store i32 %or174, ptr %flags48.i, align 4
  %and175 = and i32 %swap_flags, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.else180, label %if.then172.if.end187.sink.split_crit_edge

if.then172.if.end187.sink.split_crit_edge:        ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end187.sink.split

if.else180:                                       ; preds = %if.then172
  %and181 = and i32 %swap_flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %if.else180.if.end187_crit_edge, label %if.else180.if.end187.sink.split_crit_edge

if.else180.if.end187.sink.split_crit_edge:        ; preds = %if.else180
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end187.sink.split

if.else180.if.end187_crit_edge:                   ; preds = %if.else180
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end187

if.end187.sink.split:                             ; preds = %if.else180.if.end187.sink.split_crit_edge, %if.then172.if.end187.sink.split_crit_edge
  %.sink = phi i32 [ -1025, %if.then172.if.end187.sink.split_crit_edge ], [ -513, %if.else180.if.end187.sink.split_crit_edge ]
  %and185 = and i32 %or174, %.sink
  %114 = ptrtoint ptr %flags48.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %and185, ptr %flags48.i, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.end187.sink.split, %if.else180.if.end187_crit_edge
  %115 = ptrtoint ptr %flags48.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %flags48.i, align 4
  %and189 = and i32 %116, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %if.end187.if.end208_crit_edge, label %if.then191

if.end187.if.end208_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end208

if.then191:                                       ; preds = %if.end187
  %call192 = call fastcc i32 @discard_swap(ptr noundef %p.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.then191.if.end208_crit_edge, label %do.end203, !prof !251

if.then191.if.end208_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end208

do.end203:                                        ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #21
  %call205 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %p.0.i, i32 noundef %call192) #22
  br label %if.end208

if.end208:                                        ; preds = %do.end203, %if.then191.if.end208_crit_edge, %if.end187.if.end208_crit_edge, %land.lhs.true169.if.end208_crit_edge, %if.end.i.i465.if.end208_crit_edge
  %117 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %type, align 4
  %conv210 = sext i8 %118 to i32
  %call211 = call i32 @init_swap_address_space(i32 noundef %conv210, i32 noundef %call53) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %if.end214, label %if.end208.bad_swap_unlock_inode_crit_edge

if.end208.bad_swap_unlock_inode_crit_edge:        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #21
  br label %bad_swap_unlock_inode

if.end214:                                        ; preds = %if.end208
  %119 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %i_flags, align 4
  %or216 = or i32 %120, 256
  store i32 %or216, ptr %i_flags, align 4
  %call217 = call fastcc i32 @inode_drain_writes(ptr noundef %36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %if.end222, label %if.then219

if.then219:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #21
  %121 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %i_flags, align 4
  %and221 = and i32 %122, -257
  store i32 %and221, ptr %i_flags, align 4
  %123 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %type, align 4
  %conv255 = sext i8 %124 to i32
  call void @exit_swap_address_space(i32 noundef %conv255) #19
  br label %bad_swap_unlock_inode

if.end222:                                        ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #21
  call void @mutex_lock_nested(ptr noundef nonnull @swapon_mutex, i32 noundef 0) #19
  %and223 = and i32 %swap_flags, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp eq i32 %and223, 0
  %and226 = and i32 %swap_flags, 32767
  %spec.select = select i1 %tobool224.not, i32 -1, i32 %and226
  call fastcc void @enable_swap_info(ptr noundef %p.0.i, i32 noundef %spec.select, ptr noundef nonnull %call65, ptr noundef %cluster_info.1, ptr noundef %call.i.i.i464)
  %pages = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 11
  %125 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %pages, align 4
  %shl = shl i32 %126, 2
  %127 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %call16, align 4
  %prio233 = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 2
  %129 = ptrtoint ptr %prio233 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %prio233, align 4
  %conv234 = sext i16 %130 to i32
  %131 = ptrtoint ptr %span to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %span, align 8
  %shl235 = shl i64 %132, 2
  %133 = ptrtoint ptr %flags48.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %flags48.i, align 4
  %and237 = and i32 %134, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and237)
  %tobool238.not = icmp eq i32 %and237, 0
  %cond = select i1 %tobool238.not, ptr @.str.47, ptr @.str.58
  %and240 = and i32 %134, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240)
  %tobool241.not = icmp eq i32 %and240, 0
  %cond242 = select i1 %tobool241.not, ptr @.str.47, ptr @.str.59
  %and244 = and i32 %134, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %tobool245.not = icmp eq i32 %and244, 0
  %cond246 = select i1 %tobool245.not, ptr @.str.47, ptr @.str.60
  %and248 = and i32 %134, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and248)
  %tobool249.not = icmp eq i32 %and248, 0
  %cond250 = select i1 %tobool249.not, ptr @.str.47, ptr @.str.61
  %tobool251.not = icmp eq ptr %call.i.i.i464, null
  %cond252 = select i1 %tobool251.not, ptr @.str.47, ptr @.str.62
  %call253 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %shl, ptr noundef %128, i32 noundef %conv234, i32 noundef %call149, i64 noundef %shl235, ptr noundef nonnull %cond, ptr noundef nonnull %cond242, ptr noundef nonnull %cond246, ptr noundef nonnull %cond250, ptr noundef nonnull %cond252) #22
  call void @mutex_unlock(ptr noundef nonnull @swapon_mutex) #19
  %call.i.i452 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @proc_poll_event, i32 noundef 4) #19
  call void @llvm.prefetch.p0(ptr nonnull @proc_poll_event, i32 1, i32 3, i32 1) #19
  %135 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @proc_poll_event, ptr nonnull @proc_poll_event, i32 1, ptr nonnull elementtype(i32) @proc_poll_event) #19, !srcloc !247
  call void @__wake_up(ptr noundef nonnull @proc_poll_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #19
  br label %out

bad_swap_unlock_inode:                            ; preds = %if.then219, %if.end208.bad_swap_unlock_inode_crit_edge, %if.end148.bad_swap_unlock_inode_crit_edge, %if.end144.bad_swap_unlock_inode_crit_edge, %for.end121.bad_swap_unlock_inode_crit_edge, %for.end.bad_swap_unlock_inode_crit_edge, %if.then93.bad_swap_unlock_inode_crit_edge, %if.end64.bad_swap_unlock_inode_crit_edge, %if.end51.bad_swap_unlock_inode_crit_edge, %if.then49, %if.end43.bad_swap_unlock_inode_crit_edge, %if.end39.bad_swap_unlock_inode_crit_edge, %lor.lhs.false.bad_swap_unlock_inode_crit_edge, %d_unlinked.exit.bad_swap_unlock_inode_crit_edge
  %cluster_info.2 = phi ptr [ null, %if.then49 ], [ %cluster_info.1, %if.end144.bad_swap_unlock_inode_crit_edge ], [ %cluster_info.1, %if.end208.bad_swap_unlock_inode_crit_edge ], [ %cluster_info.1, %if.then219 ], [ null, %lor.lhs.false.bad_swap_unlock_inode_crit_edge ], [ null, %d_unlinked.exit.bad_swap_unlock_inode_crit_edge ], [ null, %if.end39.bad_swap_unlock_inode_crit_edge ], [ null, %if.end43.bad_swap_unlock_inode_crit_edge ], [ null, %if.end51.bad_swap_unlock_inode_crit_edge ], [ null, %if.end64.bad_swap_unlock_inode_crit_edge ], [ %cluster_info.1, %if.end148.bad_swap_unlock_inode_crit_edge ], [ %call.i.i.i462, %for.end121.bad_swap_unlock_inode_crit_edge ], [ null, %for.end.bad_swap_unlock_inode_crit_edge ], [ null, %if.then93.bad_swap_unlock_inode_crit_edge ]
  %frontswap_map.0 = phi ptr [ null, %if.then49 ], [ null, %if.end144.bad_swap_unlock_inode_crit_edge ], [ %call.i.i.i464, %if.end208.bad_swap_unlock_inode_crit_edge ], [ %call.i.i.i464, %if.then219 ], [ null, %lor.lhs.false.bad_swap_unlock_inode_crit_edge ], [ null, %d_unlinked.exit.bad_swap_unlock_inode_crit_edge ], [ null, %if.end39.bad_swap_unlock_inode_crit_edge ], [ null, %if.end43.bad_swap_unlock_inode_crit_edge ], [ null, %if.end51.bad_swap_unlock_inode_crit_edge ], [ null, %if.end64.bad_swap_unlock_inode_crit_edge ], [ null, %if.end148.bad_swap_unlock_inode_crit_edge ], [ null, %for.end121.bad_swap_unlock_inode_crit_edge ], [ null, %for.end.bad_swap_unlock_inode_crit_edge ], [ null, %if.then93.bad_swap_unlock_inode_crit_edge ]
  %page.0 = phi ptr [ %call.i, %if.then49 ], [ %call.i, %if.end144.bad_swap_unlock_inode_crit_edge ], [ %call.i, %if.end208.bad_swap_unlock_inode_crit_edge ], [ %call.i, %if.then219 ], [ null, %lor.lhs.false.bad_swap_unlock_inode_crit_edge ], [ null, %d_unlinked.exit.bad_swap_unlock_inode_crit_edge ], [ null, %if.end39.bad_swap_unlock_inode_crit_edge ], [ null, %if.end43.bad_swap_unlock_inode_crit_edge ], [ %call.i, %if.end51.bad_swap_unlock_inode_crit_edge ], [ %call.i, %if.end64.bad_swap_unlock_inode_crit_edge ], [ %call.i, %if.end148.bad_swap_unlock_inode_crit_edge ], [ %call.i, %for.end121.bad_swap_unlock_inode_crit_edge ], [ %call.i, %for.end.bad_swap_unlock_inode_crit_edge ], [ %call.i, %if.then93.bad_swap_unlock_inode_crit_edge ]
  %inced_nr_rotate_swap.1.off0 = phi i1 [ false, %if.then49 ], [ %inced_nr_rotate_swap.0, %if.end144.bad_swap_unlock_inode_crit_edge ], [ %inced_nr_rotate_swap.0, %if.end208.bad_swap_unlock_inode_crit_edge ], [ %inced_nr_rotate_swap.0, %if.then219 ], [ false, %lor.lhs.false.bad_swap_unlock_inode_crit_edge ], [ false, %d_unlinked.exit.bad_swap_unlock_inode_crit_edge ], [ false, %if.end39.bad_swap_unlock_inode_crit_edge ], [ false, %if.end43.bad_swap_unlock_inode_crit_edge ], [ false, %if.end51.bad_swap_unlock_inode_crit_edge ], [ false, %if.end64.bad_swap_unlock_inode_crit_edge ], [ %inced_nr_rotate_swap.0, %if.end148.bad_swap_unlock_inode_crit_edge ], [ false, %for.end121.bad_swap_unlock_inode_crit_edge ], [ false, %for.end.bad_swap_unlock_inode_crit_edge ], [ false, %if.then93.bad_swap_unlock_inode_crit_edge ]
  %swap_map.0 = phi ptr [ null, %if.then49 ], [ %call65, %if.end144.bad_swap_unlock_inode_crit_edge ], [ %call65, %if.end208.bad_swap_unlock_inode_crit_edge ], [ %call65, %if.then219 ], [ null, %lor.lhs.false.bad_swap_unlock_inode_crit_edge ], [ null, %d_unlinked.exit.bad_swap_unlock_inode_crit_edge ], [ null, %if.end39.bad_swap_unlock_inode_crit_edge ], [ null, %if.end43.bad_swap_unlock_inode_crit_edge ], [ null, %if.end51.bad_swap_unlock_inode_crit_edge ], [ null, %if.end64.bad_swap_unlock_inode_crit_edge ], [ %call65, %if.end148.bad_swap_unlock_inode_crit_edge ], [ %call65, %for.end121.bad_swap_unlock_inode_crit_edge ], [ %call65, %for.end.bad_swap_unlock_inode_crit_edge ], [ %call65, %if.then93.bad_swap_unlock_inode_crit_edge ]
  %error.1 = phi i32 [ %49, %if.then49 ], [ %call145, %if.end144.bad_swap_unlock_inode_crit_edge ], [ %call211, %if.end208.bad_swap_unlock_inode_crit_edge ], [ %call217, %if.then219 ], [ -2, %lor.lhs.false.bad_swap_unlock_inode_crit_edge ], [ -2, %d_unlinked.exit.bad_swap_unlock_inode_crit_edge ], [ -16, %if.end39.bad_swap_unlock_inode_crit_edge ], [ -22, %if.end43.bad_swap_unlock_inode_crit_edge ], [ -22, %if.end51.bad_swap_unlock_inode_crit_edge ], [ -12, %if.end64.bad_swap_unlock_inode_crit_edge ], [ %call149, %if.end148.bad_swap_unlock_inode_crit_edge ], [ -12, %for.end121.bad_swap_unlock_inode_crit_edge ], [ -12, %for.end.bad_swap_unlock_inode_crit_edge ], [ -12, %if.then93.bad_swap_unlock_inode_crit_edge ]
  call void @up_write(ptr noundef %i_rwsem.i) #19
  br label %bad_swap

bad_swap:                                         ; preds = %bad_swap_unlock_inode, %if.end25.bad_swap_crit_edge, %if.then23, %if.then18
  %cluster_info.3 = phi ptr [ null, %if.then18 ], [ null, %if.then23 ], [ null, %if.end25.bad_swap_crit_edge ], [ %cluster_info.2, %bad_swap_unlock_inode ]
  %frontswap_map.1 = phi ptr [ null, %if.then18 ], [ null, %if.then23 ], [ null, %if.end25.bad_swap_crit_edge ], [ %frontswap_map.0, %bad_swap_unlock_inode ]
  %page.1 = phi ptr [ null, %if.then18 ], [ null, %if.then23 ], [ null, %if.end25.bad_swap_crit_edge ], [ %page.0, %bad_swap_unlock_inode ]
  %inode.0 = phi ptr [ null, %if.then18 ], [ null, %if.then23 ], [ %36, %if.end25.bad_swap_crit_edge ], [ %36, %bad_swap_unlock_inode ]
  %inced_nr_rotate_swap.2.off0 = phi i1 [ false, %if.then18 ], [ false, %if.then23 ], [ false, %if.end25.bad_swap_crit_edge ], [ %inced_nr_rotate_swap.1.off0, %bad_swap_unlock_inode ]
  %swap_map.1 = phi ptr [ null, %if.then18 ], [ null, %if.then23 ], [ null, %if.end25.bad_swap_crit_edge ], [ %swap_map.0, %bad_swap_unlock_inode ]
  %error.2 = phi i32 [ %28, %if.then18 ], [ %29, %if.then23 ], [ %call28, %if.end25.bad_swap_crit_edge ], [ %error.1, %bad_swap_unlock_inode ]
  %swap_file.0 = phi ptr [ null, %if.then18 ], [ null, %if.then23 ], [ %call21, %if.end25.bad_swap_crit_edge ], [ %call21, %bad_swap_unlock_inode ]
  %name.0 = phi ptr [ null, %if.then18 ], [ %call16, %if.then23 ], [ %call16, %if.end25.bad_swap_crit_edge ], [ %call16, %bad_swap_unlock_inode ]
  %percpu_cluster256 = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 16
  %136 = ptrtoint ptr %percpu_cluster256 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %percpu_cluster256, align 4
  call void @free_percpu(ptr noundef %137) #19
  %138 = ptrtoint ptr %percpu_cluster256 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %percpu_cluster256, align 4
  %cluster_next_cpu258 = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 15
  %139 = ptrtoint ptr %cluster_next_cpu258 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %cluster_next_cpu258, align 4
  call void @free_percpu(ptr noundef %140) #19
  %141 = ptrtoint ptr %cluster_next_cpu258 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %cluster_next_cpu258, align 4
  %tobool260.not = icmp eq ptr %inode.0, null
  br i1 %tobool260.not, label %bad_swap.if.end273_crit_edge, label %land.lhs.true261

bad_swap.if.end273_crit_edge:                     ; preds = %bad_swap
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end273

land.lhs.true261:                                 ; preds = %bad_swap
  %142 = ptrtoint ptr %inode.0 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %inode.0, align 8
  %144 = and i16 %143, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %144)
  %cmp264 = icmp eq i16 %144, 24576
  br i1 %cmp264, label %land.lhs.true266, label %land.lhs.true261.if.end273_crit_edge

land.lhs.true261.if.end273_crit_edge:             ; preds = %land.lhs.true261
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end273

land.lhs.true266:                                 ; preds = %land.lhs.true261
  %bdev267 = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 18
  %145 = ptrtoint ptr %bdev267 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %bdev267, align 4
  %tobool268.not = icmp eq ptr %146, null
  br i1 %tobool268.not, label %land.lhs.true266.if.end273_crit_edge, label %if.then269

land.lhs.true266.if.end273_crit_edge:             ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end273

if.then269:                                       ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #21
  %old_block_size = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 20
  %147 = ptrtoint ptr %old_block_size to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %old_block_size, align 4
  %call271 = call i32 @set_blocksize(ptr noundef nonnull %146, i32 noundef %148) #19
  %149 = ptrtoint ptr %bdev267 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %bdev267, align 4
  call void @blkdev_put(ptr noundef %150, i32 noundef 131) #19
  br label %if.end273

if.end273:                                        ; preds = %if.then269, %land.lhs.true266.if.end273_crit_edge, %land.lhs.true261.if.end273_crit_edge, %bad_swap.if.end273_crit_edge
  %151 = ptrtoint ptr %swap_extent_root.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile ptr, ptr %swap_extent_root.i, align 4
  %cmp.not21.i = icmp eq ptr %152, null
  br i1 %cmp.not21.i, label %if.end273.while.end.i_crit_edge, label %if.end273.while.body.i_crit_edge

if.end273.while.body.i_crit_edge:                 ; preds = %if.end273
  br label %while.body.i

if.end273.while.end.i_crit_edge:                  ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end273.while.body.i_crit_edge
  %153 = phi ptr [ %155, %while.body.i.while.body.i_crit_edge ], [ %152, %if.end273.while.body.i_crit_edge ]
  call void @rb_erase(ptr noundef nonnull %153, ptr noundef %swap_extent_root.i) #19
  call void @kfree(ptr noundef nonnull %153) #19
  %154 = ptrtoint ptr %swap_extent_root.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile ptr, ptr %swap_extent_root.i, align 4
  %cmp.not.i = icmp eq ptr %155, null
  br i1 %cmp.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end273.while.end.i_crit_edge
  %156 = ptrtoint ptr %flags48.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %flags48.i, align 4
  %and.i472 = and i32 %157, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i472)
  %tobool.not.i473 = icmp eq i32 %and.i472, 0
  br i1 %tobool.not.i473, label %while.end.i.destroy_swap_extents.exit_crit_edge, label %if.then.i

while.end.i.destroy_swap_extents.exit_crit_edge:  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %destroy_swap_extents.exit

if.then.i:                                        ; preds = %while.end.i
  %swap_file5.i = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 19
  %158 = ptrtoint ptr %swap_file5.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %swap_file5.i, align 4
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %159, i32 0, i32 18
  %160 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %f_mapping.i, align 4
  %and7.i = and i32 %157, -129
  %162 = ptrtoint ptr %flags48.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %and7.i, ptr %flags48.i, align 4
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %161, i32 0, i32 9
  %163 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %a_ops.i, align 4
  %swap_deactivate.i = getelementptr inbounds %struct.address_space_operations, ptr %164, i32 0, i32 21
  %165 = ptrtoint ptr %swap_deactivate.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %swap_deactivate.i, align 4
  %tobool8.not.i474 = icmp eq ptr %166, null
  br i1 %tobool8.not.i474, label %if.then.i.destroy_swap_extents.exit_crit_edge, label %if.then9.i

if.then.i.destroy_swap_extents.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %destroy_swap_extents.exit

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  call void %166(ptr noundef %159) #19
  br label %destroy_swap_extents.exit

destroy_swap_extents.exit:                        ; preds = %if.then9.i, %if.then.i.destroy_swap_extents.exit_crit_edge, %while.end.i.destroy_swap_extents.exit_crit_edge
  %type274 = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 4
  %167 = ptrtoint ptr %type274 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %type274, align 4
  %conv275 = sext i8 %168 to i32
  call void @swap_cgroup_swapoff(i32 noundef %conv275) #19
  call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #19
  %swap_file276 = getelementptr inbounds %struct.swap_info_struct, ptr %p.0.i, i32 0, i32 19
  %169 = ptrtoint ptr %swap_file276 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %swap_file276, align 4
  %170 = ptrtoint ptr %flags48.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %flags48.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @swap_lock) #19
  call void @vfree(ptr noundef %swap_map.1) #19
  call void @kvfree(ptr noundef %cluster_info.3) #19
  call void @kvfree(ptr noundef %frontswap_map.1) #19
  br i1 %inced_nr_rotate_swap.2.off0, label %if.then279, label %destroy_swap_extents.exit.if.end280_crit_edge

destroy_swap_extents.exit.if.end280_crit_edge:    ; preds = %destroy_swap_extents.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end280

if.then279:                                       ; preds = %destroy_swap_extents.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call.i.i453 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nr_rotate_swap, i32 noundef 4) #19
  call void @llvm.prefetch.p0(ptr nonnull @nr_rotate_swap, i32 1, i32 3, i32 1) #19
  %171 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_rotate_swap, ptr nonnull @nr_rotate_swap, i32 1, ptr nonnull elementtype(i32) @nr_rotate_swap) #19, !srcloc !244
  br label %if.end280

if.end280:                                        ; preds = %if.then279, %destroy_swap_extents.exit.if.end280_crit_edge
  %tobool281.not = icmp eq ptr %swap_file.0, null
  br i1 %tobool281.not, label %if.end280.out_crit_edge, label %if.then282

if.end280.out_crit_edge:                          ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.then282:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #21
  %call283 = call i32 @filp_close(ptr noundef nonnull %swap_file.0, ptr noundef null) #19
  br label %out

out:                                              ; preds = %if.then282, %if.end280.out_crit_edge, %if.end222
  %page.2 = phi ptr [ %page.1, %if.then282 ], [ %page.1, %if.end280.out_crit_edge ], [ %call.i, %if.end222 ]
  %inode.1 = phi ptr [ null, %if.then282 ], [ null, %if.end280.out_crit_edge ], [ %36, %if.end222 ]
  %error.3 = phi i32 [ %error.2, %if.then282 ], [ %error.2, %if.end280.out_crit_edge ], [ 0, %if.end222 ]
  %name.1 = phi ptr [ %name.0, %if.then282 ], [ %name.0, %if.end280.out_crit_edge ], [ %call16, %if.end222 ]
  %tobool285.not = icmp eq ptr %page.2, null
  %cmp.i475 = icmp ugt ptr %page.2, inttoptr (i32 -4096 to ptr)
  %or.cond494 = or i1 %tobool285.not, %cmp.i475
  br i1 %or.cond494, label %out.if.end289_crit_edge, label %if.then288

out.if.end289_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end289

if.then288:                                       ; preds = %out
  call void @__might_sleep(ptr noundef nonnull @.str.67, i32 noundef 55) #19
  %172 = ptrtoint ptr %page.2 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %page.2, align 4
  %shr.i.i = lshr i32 %173, 30
  %174 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %174, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %if.then288.kunmap.exit_crit_edge [
    i32 2, label %if.then288.if.end.i476_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then288.if.end.i476_crit_edge:                 ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i476

if.then288.kunmap.exit_crit_edge:                 ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #21
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %if.then288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %175 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %175)
  %cmp2.i.not.i = icmp eq i32 %175, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i476_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i476_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i476

if.end.i476:                                      ; preds = %is_highmem_idx.exit.i.if.end.i476_crit_edge, %if.then288.if.end.i476_crit_edge
  call void @kunmap_high(ptr noundef nonnull %page.2) #19
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i476, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %if.then288.kunmap.exit_crit_edge
  %176 = getelementptr inbounds %struct.page, ptr %page.2, i32 0, i32 1
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %176, align 4
  %and.i.i = and i32 %178, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i477, label %if.then.i.i, !prof !251

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i = add i32 %178, -1
  br label %_compound_head.exit.i

if.end.i.i477:                                    ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #21
  %179 = ptrtoint ptr %page.2 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i477, %if.then.i.i
  %retval.0.i.i478 = phi i32 [ %sub.i.i, %if.then.i.i ], [ %179, %if.end.i.i477 ]
  %180 = inttoptr i32 %retval.0.i.i478 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %180, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #19
  %181 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp.i.i.i.i = icmp eq i32 %182, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !245

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @dump_page(ptr noundef %180, ptr noundef nonnull @.str.30) #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #19, !srcloc !285
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !265
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #19
  %183 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #19, !srcloc !266
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %183, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@__do_sys_swapon, %if.then.i.i.i.i.i)) #19
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !246

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %180, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #19
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end289_crit_edge

folio_put_testzero.exit.i.i.if.end289_crit_edge:  ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end289

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @__put_page(ptr noundef %180) #19
  br label %if.end289

if.end289:                                        ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end289_crit_edge, %out.if.end289_crit_edge
  %tobool290.not = icmp eq ptr %name.1, null
  br i1 %tobool290.not, label %if.end289.if.end292_crit_edge, label %if.then291

if.end289.if.end292_crit_edge:                    ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end292

if.then291:                                       ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #21
  call void @putname(ptr noundef nonnull %name.1) #19
  br label %if.end292

if.end292:                                        ; preds = %if.then291, %if.end289.if.end292_crit_edge
  %tobool293.not = icmp eq ptr %inode.1, null
  br i1 %tobool293.not, label %if.end292.if.end295_crit_edge, label %if.then294

if.end292.if.end295_crit_edge:                    ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end295

if.then294:                                       ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #21
  %i_rwsem.i479 = getelementptr inbounds %struct.inode, ptr %inode.1, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i479) #19
  br label %if.end295

if.end295:                                        ; preds = %if.then294, %if.end292.if.end295_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.3)
  %tobool296.not = icmp eq i32 %error.3, 0
  br i1 %tobool296.not, label %if.then297, label %if.end295.cleanup299_crit_edge

if.end295.cleanup299_crit_edge:                   ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup299

if.then297:                                       ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #21
  call void @enable_swap_slots_cache() #19
  br label %cleanup299

cleanup299:                                       ; preds = %if.then297, %if.end295.cleanup299_crit_edge, %if.then8, %if.end2.cleanup299_crit_edge, %if.end.cleanup299_crit_edge, %entry.cleanup299_crit_edge
  %retval.0 = phi i32 [ %23, %if.then8 ], [ -22, %entry.cleanup299_crit_edge ], [ -1, %if.end.cleanup299_crit_edge ], [ -12, %if.end2.cleanup299_crit_edge ], [ 0, %if.then297 ], [ %error.3, %if.end295.cleanup299_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %span) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @si_swapinfo(ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #19
  %0 = load i32, ptr @nr_swapfiles, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp13.not = icmp eq i32 %0, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %nr_to_be_unused.015 = phi i32 [ %nr_to_be_unused.1, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %type.014 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %type.014
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %flags = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %5 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %inuse_pages = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 12
  %7 = ptrtoint ptr %inuse_pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inuse_pages, align 4
  %add = add i32 %8, %nr_to_be_unused.015
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %nr_to_be_unused.1 = phi i32 [ %add, %if.then ], [ %nr_to_be_unused.015, %for.body.if.end_crit_edge ]
  %inc = add nuw i32 %type.014, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %nr_to_be_unused.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %nr_to_be_unused.1, %if.end.for.end_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nr_swap_pages, i32 noundef 4) #19
  %9 = load volatile i32, ptr @nr_swap_pages, align 4
  %add4 = add i32 %9, %nr_to_be_unused.0.lcssa
  %freeswap = getelementptr inbounds %struct.sysinfo, ptr %val, i32 0, i32 7
  %10 = ptrtoint ptr %freeswap to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add4, ptr %freeswap, align 4
  %11 = load i32, ptr @total_swap_pages, align 4
  %add5 = add i32 %11, %nr_to_be_unused.0.lcssa
  %totalswap = getelementptr inbounds %struct.sysinfo, ptr %val, i32 0, i32 6
  %12 = ptrtoint ptr %totalswap to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add5, ptr %totalswap, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_lock) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @swap_shmem_alloc([1 x i32] %entry.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__swap_duplicate([1 x i32] %entry.coerce, i8 noundef zeroext -65)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__swap_duplicate([1 x i32] %entry.coerce, i8 noundef zeroext %usage) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_swap_device([1 x i32] %entry.coerce)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %entry.coerce.fca.0.extract.i = extractvalue [1 x i32] %entry.coerce, 0
  %and.i = and i32 %entry.coerce.fca.0.extract.i, 67108863
  %cluster_info.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %cluster_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.if.then.i_crit_edge, label %lock_cluster.exit.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i

lock_cluster.exit.i:                              ; preds = %if.end
  %div4.i.i = lshr i32 %and.i, 8
  %add.ptr.i.i = getelementptr %struct.swap_cluster_info, ptr %1, i32 %div4.i.i
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i.i) #19
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %lock_cluster.exit.i.if.then.i_crit_edge, label %lock_cluster.exit.i.lock_cluster_or_swap_info.exit_crit_edge

lock_cluster.exit.i.lock_cluster_or_swap_info.exit_crit_edge: ; preds = %lock_cluster.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lock_cluster_or_swap_info.exit

lock_cluster.exit.i.if.then.i_crit_edge:          ; preds = %lock_cluster.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i

if.then.i:                                        ; preds = %lock_cluster.exit.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %lock.i = getelementptr inbounds %struct.swap_info_struct, ptr %call, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #19
  br label %lock_cluster_or_swap_info.exit

lock_cluster_or_swap_info.exit:                   ; preds = %if.then.i, %lock_cluster.exit.i.lock_cluster_or_swap_info.exit_crit_edge
  %ci.0.i5.i = phi ptr [ null, %if.then.i ], [ %add.ptr.i.i, %lock_cluster.exit.i.lock_cluster_or_swap_info.exit_crit_edge ]
  %swap_map = getelementptr inbounds %struct.swap_info_struct, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %swap_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %swap_map, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 %and.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = and i8 %5, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %6)
  %cmp = icmp eq i8 %6, 63
  br i1 %cmp, label %lock_cluster_or_swap_info.exit.unlock_out_crit_edge, label %if.end12, !prof !245

lock_cluster_or_swap_info.exit.unlock_out_crit_edge: ; preds = %lock_cluster_or_swap_info.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %unlock_out

if.end12:                                         ; preds = %lock_cluster_or_swap_info.exit
  %and = and i8 %5, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %usage)
  %cmp19 = icmp eq i8 %usage, 64
  br i1 %cmp19, label %if.then21, label %if.else31

if.then21:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %tobool22.not = icmp eq i8 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool24.not = icmp ne i8 %6, 0
  %7 = and i1 %tobool22.not, %tobool24.not
  %. = select i1 %tobool22.not, i32 -2, i32 -17
  %spec.select = select i1 %7, i8 64, i8 %and
  %spec.select113 = select i1 %7, i32 0, i32 %.
  br label %do.body62

if.else31:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %8 = icmp eq i8 %5, 0
  br i1 %8, label %if.else31.do.body62_crit_edge, label %if.then36

if.else31.do.body62_crit_edge:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body62

if.then36:                                        ; preds = %if.else31
  %9 = and i8 %5, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %9)
  %cmp39 = icmp ult i8 %9, 62
  br i1 %cmp39, label %if.then41, label %if.else45

if.then41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #21
  %add = add i8 %6, %usage
  br label %do.body62

if.else45:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %9)
  %cmp48 = icmp eq i8 %9, 63
  br i1 %cmp48, label %if.else45.do.body62_crit_edge, label %if.else51

if.else45.do.body62_crit_edge:                    ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body62

if.else51:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #21
  %call52 = tail call fastcc zeroext i1 @swap_count_continued(ptr noundef nonnull %call, i32 noundef %and.i, i8 noundef zeroext %6)
  %.109 = select i1 %call52, i8 -128, i8 %6
  %.110 = select i1 %call52, i32 0, i32 -12
  br label %do.body62

do.body62:                                        ; preds = %if.else51, %if.else45.do.body62_crit_edge, %if.then41, %if.else31.do.body62_crit_edge, %if.then21
  %count.0 = phi i8 [ %add, %if.then41 ], [ %6, %if.else45.do.body62_crit_edge ], [ %.109, %if.else51 ], [ 0, %if.else31.do.body62_crit_edge ], [ %6, %if.then21 ]
  %has_cache.0 = phi i8 [ %and, %if.then41 ], [ %and, %if.else45.do.body62_crit_edge ], [ %and, %if.else51 ], [ 0, %if.else31.do.body62_crit_edge ], [ %spec.select, %if.then21 ]
  %err.0 = phi i32 [ 0, %if.then41 ], [ -22, %if.else45.do.body62_crit_edge ], [ %.110, %if.else51 ], [ -2, %if.else31.do.body62_crit_edge ], [ %spec.select113, %if.then21 ]
  %or107 = or i8 %has_cache.0, %count.0
  %10 = ptrtoint ptr %swap_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %swap_map, align 4
  %arrayidx67 = getelementptr i8, ptr %11, i32 %and.i
  %12 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %12)
  store volatile i8 %or107, ptr %arrayidx67, align 1
  br label %unlock_out

unlock_out:                                       ; preds = %do.body62, %lock_cluster_or_swap_info.exit.unlock_out_crit_edge
  %err.1 = phi i32 [ %err.0, %do.body62 ], [ -2, %lock_cluster_or_swap_info.exit.unlock_out_crit_edge ]
  %tobool.not.i111 = icmp eq ptr %ci.0.i5.i, null
  br i1 %tobool.not.i111, label %if.else.i, label %unlock_cluster.exit.i

unlock_cluster.exit.i:                            ; preds = %unlock_out
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull %ci.0.i5.i) #19
  br label %unlock_cluster_or_swap_info.exit

if.else.i:                                        ; preds = %unlock_out
  call void @__sanitizer_cov_trace_pc() #21
  %lock.i112 = getelementptr inbounds %struct.swap_info_struct, ptr %call, i32 0, i32 24
  tail call void @_raw_spin_unlock(ptr noundef %lock.i112) #19
  br label %unlock_cluster_or_swap_info.exit

unlock_cluster_or_swap_info.exit:                 ; preds = %if.else.i, %unlock_cluster.exit.i
  tail call fastcc void @percpu_ref_put(ptr noundef nonnull %call) #19
  br label %cleanup

cleanup:                                          ; preds = %unlock_cluster_or_swap_info.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %unlock_cluster_or_swap_info.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @swap_duplicate([1 x i32] %entry.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry
  %call = tail call fastcc i32 @__swap_duplicate([1 x i32] %entry.coerce, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call)
  %cmp = icmp eq i32 %call, -12
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call5 = tail call i32 @add_swap_count_continuation([1 x i32] %entry.coerce, i32 noundef 2592)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %while.body.land.rhs_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.rhs

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %err.0.lcssa = phi i32 [ %call5, %while.body.while.end_crit_edge ], [ 0, %land.rhs.while.end_crit_edge ]
  ret i32 %err.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @add_swap_count_continuation([1 x i32] %entry.coerce, i32 noundef %gfp_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %gfp_mask, 2
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %or, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %call4 = tail call ptr @get_swap_device([1 x i32] %entry.coerce)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.outer_crit_edge, label %if.end

entry.outer_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %outer

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.swap_info_struct, ptr %call4, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock) #19
  %entry.coerce.fca.0.extract.i = extractvalue [1 x i32] %entry.coerce, 0
  %and.i = and i32 %entry.coerce.fca.0.extract.i, 67108863
  %cluster_info.i = getelementptr inbounds %struct.swap_info_struct, ptr %call4, i32 0, i32 7
  %0 = ptrtoint ptr %cluster_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.lock_cluster.exit_crit_edge, label %if.then.i

if.end.lock_cluster.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %lock_cluster.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %div4.i = lshr i32 %and.i, 8
  %add.ptr.i = getelementptr %struct.swap_cluster_info, ptr %1, i32 %div4.i
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i) #19
  br label %lock_cluster.exit

lock_cluster.exit:                                ; preds = %if.then.i, %if.end.lock_cluster.exit_crit_edge
  %ci.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.end.lock_cluster.exit_crit_edge ]
  %swap_map = getelementptr inbounds %struct.swap_info_struct, ptr %call4, i32 0, i32 6
  %2 = ptrtoint ptr %swap_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %swap_map, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 %and.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = and i8 %5, -65
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %and)
  %cmp.not = icmp eq i32 %and, 62
  br i1 %cmp.not, label %if.end11, label %lock_cluster.exit.out_crit_edge

lock_cluster.exit.out_crit_edge:                  ; preds = %lock_cluster.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end11:                                         ; preds = %lock_cluster.exit
  %tobool12.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool12.not, label %if.end11.out_crit_edge, label %if.end14

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end14:                                         ; preds = %if.end11
  %call16 = tail call ptr @vmalloc_to_page(ptr noundef %arrayidx) #19
  %and17 = and i32 %entry.coerce.fca.0.extract.i, 4095
  %cont_lock = getelementptr inbounds %struct.swap_info_struct, ptr %call4, i32 0, i32 25
  tail call void @_raw_spin_lock(ptr noundef %cont_lock) #19
  %7 = getelementptr inbounds %struct.page, ptr %call16, i32 0, i32 1
  %private = getelementptr inbounds %struct.page, ptr %call16, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool18.not = icmp eq i32 %9, 0
  br i1 %tobool18.not, label %do.body, label %if.end14.for.cond.preheader_crit_edge

if.end14.for.cond.preheader_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.preheader

do.body:                                          ; preds = %if.end14
  %and21 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.end32, label %do.body26, !prof !251

do.body26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3578, 0\0A.popsection", ""() #19, !srcloc !289
  unreachable

do.end32:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %7, ptr %7, align 4
  %prev.i = getelementptr inbounds %struct.page, ptr %call16, i32 0, i32 1, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %7, ptr %prev.i, align 4
  %12 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %private, align 4
  %flags = getelementptr inbounds %struct.swap_info_struct, ptr %call4, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %or33 = or i32 %14, 32
  store i32 %or33, ptr %flags, align 4
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end32, %if.end14.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %if.end47.for.cond_crit_edge, %for.cond.preheader
  %.pn.in = phi ptr [ %.pn, %if.end47.for.cond_crit_edge ], [ %7, %for.cond.preheader ]
  %count.0 = phi i8 [ %28, %if.end47.for.cond_crit_edge ], [ %6, %for.cond.preheader ]
  %15 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn.in, align 4
  %list_page.0 = getelementptr i8, ptr %.pn, i32 -4
  %cmp39.not = icmp eq ptr %.pn, %7
  br i1 %cmp39.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %count.0)
  %tobool45.not = icmp sgt i8 %count.0, -1
  br i1 %tobool45.not, label %for.body.out_unlock_cont_crit_edge, label %if.end47

for.body.out_unlock_cont_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_unlock_cont

if.end47:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %16 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %16, 512
  %17 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !273
  %21 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 213
  %25 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %26, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !274
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %list_page.0, i32 noundef %or.i) #19
  %add.ptr49 = getelementptr i8, ptr %call.i.i, i32 %and17
  %27 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr49, align 1
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr49) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !275
  %29 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 213
  %33 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %34, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !276
  %35 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %39 = and i8 %28, 127
  %cmp58.not = icmp eq i8 %39, 127
  br i1 %cmp58.not, label %if.end47.for.cond_crit_edge, label %if.end47.out_unlock_cont_crit_edge

if.end47.out_unlock_cont_crit_edge:               ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_unlock_cont

if.end47.for.cond_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %prev.i113 = getelementptr inbounds %struct.page, ptr %call16, i32 0, i32 1, i32 0, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i113, align 4
  %call.i.i114 = tail call zeroext i1 @__list_add_valid(ptr noundef %40, ptr noundef %42, ptr noundef %7) #19
  br i1 %call.i.i114, label %if.end.i.i, label %for.end.out_unlock_cont_crit_edge

for.end.out_unlock_cont_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_unlock_cont

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  %43 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev.i113, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %7, ptr %40, align 4
  %prev3.i.i = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %40, ptr %42, align 4
  br label %out_unlock_cont

out_unlock_cont:                                  ; preds = %if.end.i.i, %for.end.out_unlock_cont_crit_edge, %if.end47.out_unlock_cont_crit_edge, %for.body.out_unlock_cont_crit_edge
  %page.0 = phi ptr [ null, %for.end.out_unlock_cont_crit_edge ], [ null, %if.end.i.i ], [ %call38.i.i.i, %for.body.out_unlock_cont_crit_edge ], [ %call38.i.i.i, %if.end47.out_unlock_cont_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %cont_lock) #19
  br label %out

out:                                              ; preds = %out_unlock_cont, %if.end11.out_crit_edge, %lock_cluster.exit.out_crit_edge
  %page.1 = phi ptr [ %call38.i.i.i, %lock_cluster.exit.out_crit_edge ], [ %page.0, %out_unlock_cont ], [ null, %if.end11.out_crit_edge ]
  %ret.0 = phi i32 [ 0, %lock_cluster.exit.out_crit_edge ], [ 0, %out_unlock_cont ], [ -12, %if.end11.out_crit_edge ]
  %tobool.not.i115 = icmp eq ptr %ci.0.i, null
  br i1 %tobool.not.i115, label %out.unlock_cluster.exit_crit_edge, label %if.then.i116

out.unlock_cluster.exit_crit_edge:                ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  br label %unlock_cluster.exit

if.then.i116:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull %ci.0.i) #19
  br label %unlock_cluster.exit

unlock_cluster.exit:                              ; preds = %if.then.i116, %out.unlock_cluster.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #19
  tail call fastcc void @percpu_ref_put(ptr noundef nonnull %call4) #19
  br label %outer

outer:                                            ; preds = %unlock_cluster.exit, %entry.outer_crit_edge
  %page.2 = phi ptr [ %page.1, %unlock_cluster.exit ], [ %call38.i.i.i, %entry.outer_crit_edge ]
  %ret.1 = phi i32 [ %ret.0, %unlock_cluster.exit ], [ 0, %entry.outer_crit_edge ]
  %tobool71.not = icmp eq ptr %page.2, null
  br i1 %tobool71.not, label %outer.cleanup74_crit_edge, label %if.then72

outer.cleanup74_crit_edge:                        ; preds = %outer
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup74

if.then72:                                        ; preds = %outer
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__free_pages(ptr noundef nonnull %page.2, i32 noundef 0) #19
  br label %cleanup74

cleanup74:                                        ; preds = %if.then72, %outer.cleanup74_crit_edge
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @swapcache_prepare([1 x i32] %entry.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__swap_duplicate([1 x i32] %entry.coerce, i8 noundef zeroext 64)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @swapcache_mapping(ptr nocapture noundef readonly %folio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2013265919, i32 %1)
  %cmp.i.i.i = icmp ugt i32 %1, 2013265919
  br i1 %cmp.i.i.i, label %entry.page_swap_info.exit_crit_edge, label %do.end.i.i.i

entry.page_swap_info.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %page_swap_info.exit

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %shr.i.i.i = lshr i32 %1, 26
  %arrayidx.i.i.i = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %shr.i.i.i
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  br label %page_swap_info.exit

page_swap_info.exit:                              ; preds = %do.end.i.i.i, %entry.page_swap_info.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %3, %do.end.i.i.i ], [ null, %entry.page_swap_info.exit_crit_edge ]
  %swap_file = getelementptr inbounds %struct.swap_info_struct, ptr %retval.0.i.i.i, i32 0, i32 19
  %4 = ptrtoint ptr %swap_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %swap_file, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_mapping, align 4
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__cgroup_throttle_swaprate(ptr noundef %page, i32 noundef %gfp_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %page_to_nid.exit, !prof !245

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.85) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #19, !srcloc !290
  unreachable

page_to_nid.exit:                                 ; preds = %entry
  %and = and i32 %gfp_mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %page_to_nid.exit.cleanup_crit_edge, label %if.end

page_to_nid.exit.cleanup_crit_edge:               ; preds = %page_to_nid.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %page_to_nid.exit
  %2 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !259
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #19
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i.i, label %if.end.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.rcu_read_lock.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #19
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call ptr @kthread_blkcg() #19
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i48, label %rcu_read_lock.exit.i.while.body.i.preheader_crit_edge

rcu_read_lock.exit.i.while.body.i.preheader_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i.preheader

if.then.i48:                                      ; preds = %rcu_read_lock.exit.i
  %6 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %cgroups.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 164
  %10 = ptrtoint ptr %cgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %cgroups.i.i, align 16
  %call.i.i12.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12.i)
  %tobool.not.i13.i = icmp eq i32 %call.i.i12.i, 0
  br i1 %tobool.not.i13.i, label %lor.lhs.false.i.i, label %if.then.i48.if.end.i_crit_edge

if.then.i48.if.end.i_crit_edge:                   ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

lor.lhs.false.i.i:                                ; preds = %if.then.i48
  %call.i2.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.if.end.i_crit_edge

lor.lhs.false.i.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i14.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14.i)
  %tobool5.not.i.i = icmp eq i32 %and.i14.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false4.i.i.if.end.i_crit_edge

lor.lhs.false4.i.i.if.end.i_crit_edge:            ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call7.i.i = tail call i32 @rcu_read_lock_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i15.i, label %lor.lhs.false6.i.i.if.end.i_crit_edge

lor.lhs.false6.i.i.if.end.i_crit_edge:            ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

land.lhs.true.i15.i:                              ; preds = %lor.lhs.false6.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i15.i.if.end.i_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i15.i.if.end.i_crit_edge:           ; preds = %land.lhs.true.i15.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i15.i
  %.b1.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true11.i.i.if.end.i_crit_edge, label %if.then.i16.i

land.lhs.true11.i.i.if.end.i_crit_edge:           ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

if.then.i16.i:                                    ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.86, i32 noundef 494, ptr noundef nonnull @.str.87) #19
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i16.i, %land.lhs.true11.i.i.if.end.i_crit_edge, %land.lhs.true.i15.i.if.end.i_crit_edge, %lor.lhs.false6.i.i.if.end.i_crit_edge, %lor.lhs.false4.i.i.if.end.i_crit_edge, %lor.lhs.false.i.i.if.end.i_crit_edge, %if.then.i48.if.end.i_crit_edge
  %arrayidx.i.i = getelementptr [14 x ptr], ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool3.not26.i = icmp eq ptr %15, null
  br i1 %tobool3.not26.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body.i.preheader_crit_edge

if.end.i.while.body.i.preheader_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i.preheader

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end.i

while.body.i.preheader:                           ; preds = %if.end.i.while.body.i.preheader_crit_edge, %rcu_read_lock.exit.i.while.body.i.preheader_crit_edge
  %css.127.i.ph = phi ptr [ %call.i, %rcu_read_lock.exit.i.while.body.i.preheader_crit_edge ], [ %15, %if.end.i.while.body.i.preheader_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %while.body.i.preheader
  %css.127.i = phi ptr [ %21, %if.end7.i.while.body.i_crit_edge ], [ %css.127.i.ph, %while.body.i.preheader ]
  %16 = ptrtoint ptr %css.127.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %css.127.i, align 8
  %congestion_count.i = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 35
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %congestion_count.i, i32 noundef 4) #19
  %18 = ptrtoint ptr %congestion_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %congestion_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not.i = icmp eq i32 %19, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %while.body.i.while.end.loopexit.i_crit_edge

while.body.i.while.end.loopexit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end.loopexit.i

if.end7.i:                                        ; preds = %while.body.i
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css.127.i, i32 0, i32 12
  %20 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent.i, align 8
  %tobool3.not.i = icmp eq ptr %21, null
  br i1 %tobool3.not.i, label %if.end7.i.while.end.loopexit.i_crit_edge, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i

if.end7.i.while.end.loopexit.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end.loopexit.i

while.end.loopexit.i:                             ; preds = %if.end7.i.while.end.loopexit.i_crit_edge, %while.body.i.while.end.loopexit.i_crit_edge
  %phi.bo.i = xor i1 %tobool5.not.i, true
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.loopexit.i, %if.end.i.while.end.i_crit_edge
  %tobool3.not.lcssa.i = phi i1 [ false, %if.end.i.while.end.i_crit_edge ], [ %phi.bo.i, %while.end.loopexit.i ]
  %call.i17.i = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i17.i, label %while.end.i.blk_cgroup_congested.exit_crit_edge, label %land.lhs.true.i20.i

while.end.i.blk_cgroup_congested.exit_crit_edge:  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %blk_cgroup_congested.exit

land.lhs.true.i20.i:                              ; preds = %while.end.i
  %call1.i18.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call1.i18.i, 0
  br i1 %tobool.not.i19.i, label %land.lhs.true.i20.i.blk_cgroup_congested.exit_crit_edge, label %land.lhs.true2.i22.i

land.lhs.true.i20.i.blk_cgroup_congested.exit_crit_edge: ; preds = %land.lhs.true.i20.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %blk_cgroup_congested.exit

land.lhs.true2.i22.i:                             ; preds = %land.lhs.true.i20.i
  %.b4.i21.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21.i, label %land.lhs.true2.i22.i.blk_cgroup_congested.exit_crit_edge, label %if.then.i23.i

land.lhs.true2.i22.i.blk_cgroup_congested.exit_crit_edge: ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %blk_cgroup_congested.exit

if.then.i23.i:                                    ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.19) #19
  br label %blk_cgroup_congested.exit

blk_cgroup_congested.exit:                        ; preds = %if.then.i23.i, %land.lhs.true2.i22.i.blk_cgroup_congested.exit_crit_edge, %land.lhs.true.i20.i.blk_cgroup_congested.exit_crit_edge, %while.end.i.blk_cgroup_congested.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !263
  %22 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i.i24.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i24.i to ptr
  %preempt_count.i.i.i.i25.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i25.i, align 4
  %sub.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i25.i, align 4
  tail call void @rcu_read_unlock_strict() #19
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  br i1 %tobool3.not.lcssa.i, label %if.end3, label %blk_cgroup_congested.exit.cleanup_crit_edge

blk_cgroup_congested.exit.cleanup_crit_edge:      ; preds = %blk_cgroup_congested.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end3:                                          ; preds = %blk_cgroup_congested.exit
  %26 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %throttle_queue = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 207
  %30 = ptrtoint ptr %throttle_queue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %throttle_queue, align 4
  %tobool5.not = icmp eq ptr %31, null
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_avail_lock) #19
  %32 = load ptr, ptr @swap_avail_heads, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end7
  %.pn.in.in = phi ptr [ %32, %if.end7 ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %33 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, %32
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %for.cond
  %bdev = getelementptr i8, ptr %.pn.in, i32 -316
  %34 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bdev, align 4
  %tobool21.not = icmp eq ptr %35, null
  br i1 %tobool21.not, label %for.body.for.cond_crit_edge, label %if.then22

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %35, i32 0, i32 18
  %36 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bd_queue.i, align 4
  tail call void @blkcg_schedule_throttle(ptr noundef %37, i1 noundef zeroext true) #19
  br label %for.end

for.end:                                          ; preds = %if.then22, %for.cond.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_avail_lock) #19
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end3.cleanup_crit_edge, %blk_cgroup_congested.exit.cleanup_crit_edge, %page_to_nid.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkcg_schedule_throttle(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @swapfile_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #23
  store ptr %call7.i.i, ptr @swap_avail_heads, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #22
  br label %cleanup

for.body:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body, %do.end
  %retval.0 = phi i32 [ 0, %for.body ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_del(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @scan_swap_map_try_ssd_cluster(ptr noundef %si, ptr nocapture noundef writeonly %offset, ptr nocapture noundef writeonly %scan_base) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %percpu_cluster = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 16
  %flags.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 8, i32 0, i32 1
  %flags.i.i101 = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 27, i32 0, i32 1
  %cluster_next_cpu = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 15
  %free_clusters = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 8
  %max43 = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 5
  %cluster_info.i = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 7
  %swap_map = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 6
  br label %new_cluster

new_cluster:                                      ; preds = %new_cluster.backedge, %entry
  %0 = ptrtoint ptr %percpu_cluster to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %percpu_cluster, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %flags.i = getelementptr inbounds %struct.swap_cluster_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i = load i32, ptr %flags.i, align 4
  %and.i99 = and i32 %bf.load.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %tobool.i.not = icmp eq i32 %and.i99, 0
  br i1 %tobool.i.not, label %new_cluster.if.end41_crit_edge, label %if.then

new_cluster.if.end41_crit_edge:                   ; preds = %new_cluster
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end41

if.then:                                          ; preds = %new_cluster
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load.i.i = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %bf.load.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %12 = call ptr @memcpy(ptr %9, ptr %free_clusters, i32 48)
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i100 = load i32, ptr %flags.i, align 4
  %bf.lshr.i = and i32 %bf.load.i100, -256
  %next = getelementptr inbounds %struct.percpu_cluster, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %bf.lshr.i, ptr %next, align 4
  br label %if.end41

if.else:                                          ; preds = %if.then
  %15 = ptrtoint ptr %flags.i.i101 to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load.i.i102 = load i32, ptr %flags.i.i101, align 4
  %and.i.i103 = and i32 %bf.load.i.i102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i103)
  %tobool.i.i104.not = icmp eq i32 %and.i.i103, 0
  br i1 %tobool.i.i104.not, label %if.then11, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @swap_do_scheduled_discard(ptr noundef %si)
  %16 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %19, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !291
  %20 = ptrtoint ptr %cluster_next_cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cluster_next_cpu, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu, align 4
  %arrayidx32 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx32, align 4
  %add33 = add i32 %26, %22
  %27 = inttoptr i32 %add33 to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !292
  %30 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i97 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i97 to ptr
  %preempt_count.i.i98 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i98 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i98, align 4
  %sub.i = add i32 %33, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i98, align 4
  %34 = ptrtoint ptr %scan_base to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %29, ptr %scan_base, align 4
  %35 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %29, ptr %offset, align 4
  br label %new_cluster.backedge

new_cluster.backedge:                             ; preds = %if.then58, %if.then11
  br label %new_cluster

if.end41:                                         ; preds = %if.then5, %new_cluster.if.end41_crit_edge
  %next42 = getelementptr inbounds %struct.percpu_cluster, ptr %9, i32 0, i32 1
  %36 = ptrtoint ptr %next42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %next42, align 4
  %38 = ptrtoint ptr %max43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max43, align 4
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load.i106 = load i32, ptr %flags.i, align 4
  %41 = add i32 %bf.load.i106, 256
  %mul47 = and i32 %41, -256
  %42 = tail call i32 @llvm.umin.i32(i32 %39, i32 %mul47)
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %42)
  %cmp49 = icmp ult i32 %37, %42
  br i1 %cmp49, label %if.then50, label %if.end41.if.end56_crit_edge

if.end41.if.end56_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end56

if.then50:                                        ; preds = %if.end41
  %43 = ptrtoint ptr %cluster_info.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cluster_info.i, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.then50.while.body.lr.ph_crit_edge, label %if.then.i

if.then50.while.body.lr.ph_crit_edge:             ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.lr.ph

if.then.i:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #21
  %div4.i = lshr i32 %37, 8
  %add.ptr.i = getelementptr %struct.swap_cluster_info, ptr %44, i32 %div4.i
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i) #19
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then.i, %if.then50.while.body.lr.ph_crit_edge
  %ci.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.then50.while.body.lr.ph_crit_edge ]
  %45 = ptrtoint ptr %swap_map to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %swap_map, align 4
  br label %while.body

while.body:                                       ; preds = %if.end55.while.body_crit_edge, %while.body.lr.ph
  %tmp.0112 = phi i32 [ %37, %while.body.lr.ph ], [ %inc, %if.end55.while.body_crit_edge ]
  %arrayidx53 = getelementptr i8, ptr %46, i32 %tmp.0112
  %47 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not = icmp eq i8 %48, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end55

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

if.end55:                                         ; preds = %while.body
  %inc = add i32 %tmp.0112, 1
  %exitcond.not = icmp eq i32 %inc, %42
  br i1 %exitcond.not, label %if.end55.while.end_crit_edge, label %if.end55.while.body_crit_edge

if.end55.while.body_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

if.end55.while.end_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.end:                                        ; preds = %if.end55.while.end_crit_edge, %while.body.while.end_crit_edge
  %tmp.0.lcssa.ph = phi i32 [ %42, %if.end55.while.end_crit_edge ], [ %tmp.0112, %while.body.while.end_crit_edge ]
  %tobool.not.i108 = icmp eq ptr %ci.0.i, null
  br i1 %tobool.not.i108, label %while.end.if.end56_crit_edge, label %if.then.i109

while.end.if.end56_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end56

if.then.i109:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull %ci.0.i) #19
  br label %if.end56

if.end56:                                         ; preds = %if.then.i109, %while.end.if.end56_crit_edge, %if.end41.if.end56_crit_edge
  %tmp.1 = phi i32 [ %37, %if.end41.if.end56_crit_edge ], [ %tmp.0.lcssa.ph, %while.end.if.end56_crit_edge ], [ %tmp.0.lcssa.ph, %if.then.i109 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.1, i32 %42)
  %cmp57.not = icmp ult i32 %tmp.1, %42
  br i1 %cmp57.not, label %if.end60, label %if.then58

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #21
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %flags.i, align 4
  br label %new_cluster.backedge

if.end60:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #21
  %50 = inttoptr i32 %add to ptr
  %next42.le = getelementptr inbounds %struct.percpu_cluster, ptr %50, i32 0, i32 1
  %add61 = add nuw i32 %tmp.1, 1
  %51 = ptrtoint ptr %next42.le to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add61, ptr %next42.le, align 4
  %52 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %tmp.1, ptr %offset, align 4
  %53 = ptrtoint ptr %scan_base to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %tmp.1, ptr %scan_base, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.else.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end60 ], [ false, %if.else.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @swap_do_scheduled_discard(ptr noundef %si) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 7
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 4
  %flags.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 27, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i.i30 = load i32, ptr %flags.i.i, align 4
  %and.i.i31 = and i32 %bf.load.i.i30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i31)
  %tobool.i.i.not32 = icmp eq i32 %and.i.i31, 0
  br i1 %tobool.i.i.not32, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %data.i12.i = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 27, i32 1, i32 1
  %lock = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 24
  %swap_extent_root.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 17
  %bdev.i = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 18
  %flags.i.i.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 8, i32 0, i32 1
  %flags.i16.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 8, i32 1, i32 1
  %swap_map = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %unlock_cluster.exit.while.body_crit_edge, %while.body.lr.ph
  %bf.load.i.i33 = phi i32 [ %bf.load.i.i30, %while.body.lr.ph ], [ %bf.load.i.i, %unlock_cluster.exit.while.body_crit_edge ]
  %bf.lshr.i.i = lshr i32 %bf.load.i.i33, 8
  %3 = ptrtoint ptr %data.i12.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load.i13.i = load i32, ptr %data.i12.i, align 4
  %bf.lshr.i14.i = lshr i32 %bf.load.i13.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i14.i, i32 %bf.lshr.i.i)
  %cmp.i = icmp eq i32 %bf.lshr.i14.i, %bf.lshr.i.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %flags.i.i, align 4
  %5 = ptrtoint ptr %data.i12.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %data.i12.i, align 4
  br label %cluster_list_del_first.exit

if.else.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  %data.i16.i = getelementptr %struct.swap_cluster_info, ptr %1, i32 %bf.lshr.i.i, i32 1
  %6 = ptrtoint ptr %data.i16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i17.i = load i32, ptr %data.i16.i, align 4
  %bf.lshr.i18.i = and i32 %bf.load.i17.i, -256
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bf.lshr.i18.i, ptr %flags.i.i, align 4
  br label %cluster_list_del_first.exit

cluster_list_del_first.exit:                      ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock(ptr noundef %lock) #19
  %mul = and i32 %bf.load.i.i33, -256
  %8 = ptrtoint ptr %swap_extent_root.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %rb.018.i.i = load ptr, ptr %swap_extent_root.i.i, align 4
  %tobool.not19.i.i = icmp eq ptr %rb.018.i.i, null
  br i1 %tobool.not19.i.i, label %cluster_list_del_first.exit.do.body.i.i_crit_edge, label %cluster_list_del_first.exit.while.body.i.i_crit_edge

cluster_list_del_first.exit.while.body.i.i_crit_edge: ; preds = %cluster_list_del_first.exit
  br label %while.body.i.i

cluster_list_del_first.exit.do.body.i.i_crit_edge: ; preds = %cluster_list_del_first.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i

while.body.i.i:                                   ; preds = %if.end5.i.i.while.body.i.i_crit_edge, %cluster_list_del_first.exit.while.body.i.i_crit_edge
  %rb.020.i.i = phi ptr [ %rb.0.i.i, %if.end5.i.i.while.body.i.i_crit_edge ], [ %rb.018.i.i, %cluster_list_del_first.exit.while.body.i.i_crit_edge ]
  %start_page.i.i = getelementptr inbounds %struct.swap_extent, ptr %rb.020.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %start_page.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %start_page.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %mul)
  %cmp.i.i = icmp ugt i32 %10, %mul
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %rb.020.i.i, i32 0, i32 2
  br label %if.end5.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %nr_pages.i.i = getelementptr inbounds %struct.swap_extent, ptr %rb.020.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_pages.i.i, align 8
  %add.i.i = add i32 %12, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %mul)
  %cmp2.not.i.i = icmp ugt i32 %add.i.i, %mul
  br i1 %cmp2.not.i.i, label %if.else.i.i.while.body.i_crit_edge, label %if.then3.i.i

if.else.i.i.while.body.i_crit_edge:               ; preds = %if.else.i.i
  br label %while.body.i

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %rb.020.i.i, i32 0, i32 1
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.then.i.i
  %rb.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then3.i.i ]
  %13 = ptrtoint ptr %rb.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %rb.0.i.i = load ptr, ptr %rb.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %rb.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end5.i.i.do.body.i.i_crit_edge, label %if.end5.i.i.while.body.i.i_crit_edge

if.end5.i.i.while.body.i.i_crit_edge:             ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i.i

if.end5.i.i.do.body.i.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end5.i.i.do.body.i.i_crit_edge, %cluster_list_del_first.exit.do.body.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #19, !srcloc !243
  unreachable

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.else.i.i.while.body.i_crit_edge
  %start_page.addr.07.i = phi i32 [ %conv11.i, %cleanup.i.while.body.i_crit_edge ], [ %mul, %if.else.i.i.while.body.i_crit_edge ]
  %se.06.i = phi ptr [ %call.i.i, %cleanup.i.while.body.i_crit_edge ], [ %rb.020.i.i, %if.else.i.i.while.body.i_crit_edge ]
  %nr_pages.addr.05.i = phi i32 [ %conv14.i, %cleanup.i.while.body.i_crit_edge ], [ 256, %if.else.i.i.while.body.i_crit_edge ]
  %start_page1.i = getelementptr inbounds %struct.swap_extent, ptr %se.06.i, i32 0, i32 1
  %14 = ptrtoint ptr %start_page1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %start_page1.i, align 4
  %sub.i = sub i32 %start_page.addr.07.i, %15
  %start_block2.i = getelementptr inbounds %struct.swap_extent, ptr %se.06.i, i32 0, i32 3
  %16 = ptrtoint ptr %start_block2.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %start_block2.i, align 8
  %conv.i = zext i32 %sub.i to i64
  %add.i = add i64 %17, %conv.i
  %nr_pages3.i = getelementptr inbounds %struct.swap_extent, ptr %se.06.i, i32 0, i32 2
  %18 = ptrtoint ptr %nr_pages3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_pages3.i, align 8
  %sub4.i = sub i32 %19, %sub.i
  %20 = tail call i32 @llvm.umin.i32(i32 %sub4.i, i32 %nr_pages.addr.05.i) #19
  %nr_blocks.0.i = zext i32 %20 to i64
  %shl.i = shl i64 %add.i, 3
  %shl15.i = shl nuw nsw i64 %nr_blocks.0.i, 3
  %21 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bdev.i, align 4
  %call16.i = tail call i32 @blkdev_issue_discard(ptr noundef %22, i64 noundef %shl.i, i64 noundef %shl15.i, i32 noundef 3072, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %cleanup.i, label %while.body.i.discard_swap_cluster.exit_crit_edge

while.body.i.discard_swap_cluster.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %discard_swap_cluster.exit

cleanup.i:                                        ; preds = %while.body.i
  %conv14.i = sub i32 %nr_pages.addr.05.i, %20
  %conv11.i = add i32 %20, %start_page.addr.07.i
  %call.i.i = tail call ptr @rb_next(ptr noundef %se.06.i) #19
  %tobool.not.i = icmp eq i32 %conv14.i, 0
  br i1 %tobool.not.i, label %cleanup.i.discard_swap_cluster.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i

cleanup.i.discard_swap_cluster.exit_crit_edge:    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %discard_swap_cluster.exit

discard_swap_cluster.exit:                        ; preds = %cleanup.i.discard_swap_cluster.exit_crit_edge, %while.body.i.discard_swap_cluster.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %lock) #19
  %23 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cluster_info, align 4
  %tobool.not.i19 = icmp eq ptr %24, null
  br i1 %tobool.not.i19, label %discard_swap_cluster.exit.lock_cluster.exit_crit_edge, label %if.then.i20

discard_swap_cluster.exit.lock_cluster.exit_crit_edge: ; preds = %discard_swap_cluster.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %lock_cluster.exit

if.then.i20:                                      ; preds = %discard_swap_cluster.exit
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i = getelementptr %struct.swap_cluster_info, ptr %24, i32 %bf.lshr.i.i
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i) #19
  br label %lock_cluster.exit

lock_cluster.exit:                                ; preds = %if.then.i20, %discard_swap_cluster.exit.lock_cluster.exit_crit_edge
  %ci.0.i = phi ptr [ %add.ptr.i, %if.then.i20 ], [ null, %discard_swap_cluster.exit.lock_cluster.exit_crit_edge ]
  %25 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cluster_info, align 4
  %flags.i.i22 = getelementptr %struct.swap_cluster_info, ptr %26, i32 %bf.lshr.i.i, i32 1
  %27 = ptrtoint ptr %flags.i.i22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load.i.i23 = load i32, ptr %flags.i.i22, align 4
  %bf.clear.i.i = and i32 %bf.load.i.i23, -256
  %bf.set.i.i = or i32 %bf.clear.i.i, 1
  store i32 %bf.set.i.i, ptr %flags.i.i22, align 4
  %28 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load.i.i.i.i = load i32, ptr %flags.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %bf.load.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.i.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.i.not.i.i, label %if.else.i.i25, label %if.then.i.i24

if.then.i.i24:                                    ; preds = %lock_cluster.exit
  call void @__sanitizer_cov_trace_pc() #21
  %29 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul, ptr %flags.i.i.i.i, align 4
  br label %__free_cluster.exit

if.else.i.i25:                                    ; preds = %lock_cluster.exit
  call void @__sanitizer_cov_trace_pc() #21
  %30 = ptrtoint ptr %flags.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load.i.i.i = load i32, ptr %flags.i16.i.i, align 4
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 8
  %add.ptr.i.i = getelementptr %struct.swap_cluster_info, ptr %26, i32 %bf.lshr.i.i.i
  tail call void @_raw_spin_lock_nested(ptr noundef %add.ptr.i.i, i32 noundef 1) #19
  %data.i18.i.i = getelementptr %struct.swap_cluster_info, ptr %26, i32 %bf.lshr.i.i.i, i32 1
  %31 = ptrtoint ptr %data.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load.i19.i.i = load i32, ptr %data.i18.i.i, align 4
  %bf.clear.i.i.i = and i32 %bf.load.i19.i.i, 255
  %bf.set.i.i.i = or i32 %bf.clear.i.i.i, %mul
  store i32 %bf.set.i.i.i, ptr %data.i18.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i.i) #19
  br label %__free_cluster.exit

__free_cluster.exit:                              ; preds = %if.else.i.i25, %if.then.i.i24
  %32 = ptrtoint ptr %flags.i16.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul, ptr %flags.i16.i.i, align 4
  %33 = ptrtoint ptr %swap_map to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %swap_map, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 %mul
  %35 = call ptr @memset(ptr %add.ptr, i32 0, i32 256)
  %tobool.not.i26 = icmp eq ptr %ci.0.i, null
  br i1 %tobool.not.i26, label %__free_cluster.exit.unlock_cluster.exit_crit_edge, label %if.then.i27

__free_cluster.exit.unlock_cluster.exit_crit_edge: ; preds = %__free_cluster.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %unlock_cluster.exit

if.then.i27:                                      ; preds = %__free_cluster.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull %ci.0.i) #19
  br label %unlock_cluster.exit

unlock_cluster.exit:                              ; preds = %if.then.i27, %__free_cluster.exit.unlock_cluster.exit_crit_edge
  %36 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load.i.i = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %bf.load.i.i, 2
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %unlock_cluster.exit.while.body_crit_edge, label %unlock_cluster.exit.while.end_crit_edge

unlock_cluster.exit.while.end_crit_edge:          ; preds = %unlock_cluster.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

unlock_cluster.exit.while.body_crit_edge:         ; preds = %unlock_cluster.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

while.end:                                        ; preds = %unlock_cluster.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @del_from_avail_list(ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_avail_lock) #19
  %avail_lists.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 28
  %0 = load ptr, ptr @swap_avail_heads, align 4
  tail call void @plist_del(ptr noundef %avail_lists.i, ptr noundef %0) #19
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_avail_lock) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mem_cgroup_uncharge_swap([1 x i32], i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @swap_range_free(ptr noundef %si, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %lowest_bit = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 9
  %0 = ptrtoint ptr %lowest_bit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lowest_bit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %offset)
  %cmp = icmp ugt i32 %1, %offset
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %2 = ptrtoint ptr %lowest_bit to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %offset, ptr %lowest_bit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %highest_bit = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 10
  %3 = ptrtoint ptr %highest_bit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %highest_bit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %offset)
  %cmp2 = icmp ult i32 %4, %offset
  br i1 %cmp2, label %if.then3, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %5 = ptrtoint ptr %highest_bit to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %offset, ptr %highest_bit, align 4
  br i1 %tobool.not, label %land.lhs.true, label %if.then3.if.end16_crit_edge

if.then3.if.end16_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16

land.lhs.true:                                    ; preds = %if.then3
  %flags = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end16_crit_edge, label %if.then14

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16

if.then14:                                        ; preds = %land.lhs.true
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_avail_lock) #19
  %node_list.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 1, i32 2
  %8 = ptrtoint ptr %node_list.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %node_list.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %9, %node_list.i.i
  br i1 %cmp.i.i.not.i, label %if.then14.add_to_avail_list.exit_crit_edge, label %do.end.i, !prof !251

if.then14.add_to_avail_list.exit_crit_edge:       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #21
  br label %add_to_avail_list.exit

do.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 710, i32 noundef 9, ptr noundef null) #19
  br label %add_to_avail_list.exit

add_to_avail_list.exit:                           ; preds = %do.end.i, %if.then14.add_to_avail_list.exit_crit_edge
  %avail_lists.i = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 28
  %10 = load ptr, ptr @swap_avail_heads, align 4
  tail call void @plist_add(ptr noundef %avail_lists.i, ptr noundef %10) #19
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_avail_lock) #19
  br label %if.end16

if.end16:                                         ; preds = %add_to_avail_list.exit, %land.lhs.true.if.end16_crit_edge, %if.then3.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nr_swap_pages, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr nonnull @nr_swap_pages, i32 1, i32 3, i32 1) #19
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_swap_pages, ptr nonnull @nr_swap_pages, i32 1, ptr nonnull elementtype(i32) @nr_swap_pages) #19, !srcloc !247
  %inuse_pages = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 12
  %12 = ptrtoint ptr %inuse_pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inuse_pages, align 4
  %sub17 = add i32 %13, -1
  store i32 %sub17, ptr %inuse_pages, align 4
  %flags18 = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 1
  %14 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags18, align 4
  %and19 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end16.if.end23_crit_edge, label %if.then21

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end23

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #21
  %bdev = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 18
  %16 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fops, align 8
  %swap_slot_free_notify22 = getelementptr inbounds %struct.block_device_operations, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %swap_slot_free_notify22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %swap_slot_free_notify22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end16.if.end23_crit_edge
  %swap_slot_free_notify.0 = phi ptr [ %23, %if.then21 ], [ null, %if.end16.if.end23_crit_edge ]
  %type = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 4
  %tobool27.not = icmp eq ptr %swap_slot_free_notify.0, null
  %bdev29 = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 18
  br label %while.body

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %if.end23
  %offset.addr.01 = phi i32 [ %offset, %if.end23 ], [ %inc, %if.end30.while.body_crit_edge ]
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %type, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frontswap_enabled_key, ptr blockaddress(@swap_range_free, %if.then.i)) #19
          to label %frontswap_invalidate_page.exit [label %if.then.i], !srcloc !246

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  %conv26 = sext i8 %25 to i32
  tail call void @__frontswap_invalidate_page(i32 noundef %conv26, i32 noundef %offset.addr.01) #19
  br label %frontswap_invalidate_page.exit

frontswap_invalidate_page.exit:                   ; preds = %if.then.i, %while.body
  br i1 %tobool27.not, label %frontswap_invalidate_page.exit.if.end30_crit_edge, label %if.then28

frontswap_invalidate_page.exit.if.end30_crit_edge: ; preds = %frontswap_invalidate_page.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

if.then28:                                        ; preds = %frontswap_invalidate_page.exit
  call void @__sanitizer_cov_trace_pc() #21
  %26 = ptrtoint ptr %bdev29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bdev29, align 4
  tail call void %swap_slot_free_notify.0(ptr noundef %27, i32 noundef %offset.addr.01) #19
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %frontswap_invalidate_page.exit.if.end30_crit_edge
  %inc = add i32 %offset.addr.01, 1
  %cmp24.not = icmp ugt i32 %inc, %offset
  br i1 %cmp24.not, label %while.end, label %if.end30.while.body_crit_edge

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

while.end:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %type, align 4
  %conv32 = sext i8 %29 to i32
  tail call void @clear_shadow_from_swap_cache(i32 noundef %conv32, i32 noundef %offset, i32 noundef %offset) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_shadow_from_swap_cache(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__frontswap_invalidate_page(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @swap_count_continued(ptr noundef %si, i32 noundef %offset, i8 noundef zeroext %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %swap_map = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 6
  %0 = ptrtoint ptr %swap_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %swap_map, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %call = tail call ptr @vmalloc_to_page(ptr noundef %add.ptr) #19
  %private = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp.not = icmp eq i32 %3, 32
  br i1 %cmp.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %count)
  %tobool.not = icmp sgt i8 %count, -1
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.body4, !prof !251

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3639, 0\0A.popsection", ""() #19, !srcloc !293
  unreachable

if.end10:                                         ; preds = %entry
  %4 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %cont_lock = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 25
  tail call void @_raw_spin_lock(ptr noundef %cont_lock) #19
  %and11 = and i32 %offset, 4095
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %add.ptr12 = getelementptr i8, ptr %6, i32 -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %7 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %7, 512
  %8 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !273
  %12 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 213
  %16 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %17, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !274
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr12, i32 noundef %or.i) #19
  %add.ptr14 = getelementptr i8, ptr %call.i.i, i32 %and11
  %18 = zext i8 %count to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %count, label %do.body117 [
    i8 62, label %if.end10.init_map_crit_edge
    i8 -66, label %if.end10.while.cond_crit_edge
    i8 -128, label %if.end10.while.cond126_crit_edge
  ], !prof !294

if.end10.while.cond126_crit_edge:                 ; preds = %if.end10
  br label %while.cond126

if.end10.while.cond_crit_edge:                    ; preds = %if.end10
  br label %while.cond

if.end10.init_map_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %init_map

while.cond:                                       ; preds = %do.end56, %if.end10.while.cond_crit_edge
  %map.0 = phi ptr [ %add.ptr58, %do.end56 ], [ %add.ptr14, %if.end10.while.cond_crit_edge ]
  %page.0 = phi ptr [ %add.ptr37, %do.end56 ], [ %add.ptr12, %if.end10.while.cond_crit_edge ]
  %19 = ptrtoint ptr %map.0 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %map.0, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %20, label %while.cond.if.end80_crit_edge [
    i8 -1, label %do.end30
    i8 127, label %do.end66
  ]

while.cond.if.end80_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end80

do.end30:                                         ; preds = %while.cond
  tail call void @kunmap_local_indexed(ptr noundef %map.0) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !275
  %22 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 213
  %26 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %27, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !276
  %28 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %32 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %add.ptr37 = getelementptr i8, ptr %34, i32 -4
  %cmp39 = icmp eq ptr %add.ptr37, %call
  br i1 %cmp39, label %do.body48, label %do.end56, !prof !245

do.body48:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3658, 0\0A.popsection", ""() #19, !srcloc !295
  unreachable

do.end56:                                         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %35 = load i32, ptr @pgprot_kernel, align 4
  %or.i275 = or i32 %35, 512
  %36 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i.i276 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i276 to ptr
  %preempt_count.i.i.i.i277 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i277 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i277, align 4
  %add.i.i.i278 = add i32 %39, 1
  store volatile i32 %add.i.i.i278, ptr %preempt_count.i.i.i.i277, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !273
  %40 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i.i279 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i1.i.i279 to ptr
  %task.i.i.i.i280 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task.i.i.i.i280 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i.i.i.i280, align 8
  %pagefault_disabled.i.i.i.i281 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 213
  %44 = ptrtoint ptr %pagefault_disabled.i.i.i.i281 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pagefault_disabled.i.i.i.i281, align 8
  %inc.i.i.i.i282 = add i32 %45, 1
  store i32 %inc.i.i.i.i282, ptr %pagefault_disabled.i.i.i.i281, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !274
  %call.i.i283 = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr37, i32 noundef %or.i275) #19
  %add.ptr58 = getelementptr i8, ptr %call.i.i283, i32 %and11
  br label %while.cond

do.end66:                                         ; preds = %while.cond
  tail call void @kunmap_local_indexed(ptr noundef %map.0) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !275
  %46 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i284 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i1.i284 to ptr
  %task.i.i.i285 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task.i.i.i285 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i.i.i285, align 8
  %pagefault_disabled.i.i.i286 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 213
  %50 = ptrtoint ptr %pagefault_disabled.i.i.i286 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pagefault_disabled.i.i.i286, align 8
  %dec.i.i.i287 = add i32 %51, -1
  store i32 %dec.i.i.i287, ptr %pagefault_disabled.i.i.i286, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !276
  %52 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i288 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i288 to ptr
  %preempt_count.i.i.i289 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i289 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i289, align 4
  %sub.i.i290 = add i32 %55, -1
  store volatile i32 %sub.i.i290, ptr %preempt_count.i.i.i289, align 4
  %56 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %add.ptr73 = getelementptr i8, ptr %58, i32 -4
  %cmp74 = icmp eq ptr %add.ptr73, %call
  br i1 %cmp74, label %do.end66.out_crit_edge, label %if.end77

do.end66.out_crit_edge:                           ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end77:                                         ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %59 = load i32, ptr @pgprot_kernel, align 4
  %or.i291 = or i32 %59, 512
  %60 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i.i292 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i292 to ptr
  %preempt_count.i.i.i.i293 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i293 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i293, align 4
  %add.i.i.i294 = add i32 %63, 1
  store volatile i32 %add.i.i.i294, ptr %preempt_count.i.i.i.i293, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !273
  %64 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i.i295 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i1.i.i295 to ptr
  %task.i.i.i.i296 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task.i.i.i.i296 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task.i.i.i.i296, align 8
  %pagefault_disabled.i.i.i.i297 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 213
  %68 = ptrtoint ptr %pagefault_disabled.i.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pagefault_disabled.i.i.i.i297, align 8
  %inc.i.i.i.i298 = add i32 %69, 1
  store i32 %inc.i.i.i.i298, ptr %pagefault_disabled.i.i.i.i297, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !274
  %call.i.i299 = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr73, i32 noundef %or.i291) #19
  %add.ptr79 = getelementptr i8, ptr %call.i.i299, i32 %and11
  br label %init_map

init_map:                                         ; preds = %if.end77, %if.end10.init_map_crit_edge
  %map.1 = phi ptr [ %add.ptr14, %if.end10.init_map_crit_edge ], [ %add.ptr79, %if.end77 ]
  %page.1 = phi ptr [ %add.ptr12, %if.end10.init_map_crit_edge ], [ %add.ptr73, %if.end77 ]
  %70 = ptrtoint ptr %map.1 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %map.1, align 1
  br label %if.end80

if.end80:                                         ; preds = %init_map, %while.cond.if.end80_crit_edge
  %map.2 = phi ptr [ %map.1, %init_map ], [ %map.0, %while.cond.if.end80_crit_edge ]
  %page.2 = phi ptr [ %page.1, %init_map ], [ %page.0, %while.cond.if.end80_crit_edge ]
  %71 = ptrtoint ptr %map.2 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %map.2, align 1
  %add = add i8 %72, 1
  store i8 %add, ptr %map.2, align 1
  tail call void @kunmap_local_indexed(ptr noundef %map.2) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !275
  %73 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i300 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i1.i300 to ptr
  %task.i.i.i301 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %task.i.i.i301 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task.i.i.i301, align 8
  %pagefault_disabled.i.i.i302 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 213
  %77 = ptrtoint ptr %pagefault_disabled.i.i.i302 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pagefault_disabled.i.i.i302, align 8
  %dec.i.i.i303 = add i32 %78, -1
  store i32 %dec.i.i.i303, ptr %pagefault_disabled.i.i.i302, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !276
  %79 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i304 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i304 to ptr
  %preempt_count.i.i.i305 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %preempt_count.i.i.i305 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %preempt_count.i.i.i305, align 4
  %sub.i.i306 = add i32 %82, -1
  store volatile i32 %sub.i.i306, ptr %preempt_count.i.i.i305, align 4
  %prev377 = getelementptr inbounds %struct.page, ptr %page.2, i32 0, i32 1, i32 0, i32 0, i32 1
  %83 = ptrtoint ptr %prev377 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev377, align 4
  %add.ptr93378 = getelementptr i8, ptr %84, i32 -4
  %cmp94.not379 = icmp eq ptr %add.ptr93378, %call
  br i1 %cmp94.not379, label %if.end80.out_crit_edge, label %if.end80.while.body96_crit_edge

if.end80.while.body96_crit_edge:                  ; preds = %if.end80
  br label %while.body96

if.end80.out_crit_edge:                           ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

while.body96:                                     ; preds = %while.body96.while.body96_crit_edge, %if.end80.while.body96_crit_edge
  %add.ptr93380 = phi ptr [ %add.ptr93, %while.body96.while.body96_crit_edge ], [ %add.ptr93378, %if.end80.while.body96_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %85 = load i32, ptr @pgprot_kernel, align 4
  %or.i307 = or i32 %85, 512
  %86 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i.i308 = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i.i308 to ptr
  %preempt_count.i.i.i.i309 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i.i.i309 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i.i.i309, align 4
  %add.i.i.i310 = add i32 %89, 1
  store volatile i32 %add.i.i.i310, ptr %preempt_count.i.i.i.i309, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !273
  %90 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i.i311 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i1.i.i311 to ptr
  %task.i.i.i.i312 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task.i.i.i.i312 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task.i.i.i.i312, align 8
  %pagefault_disabled.i.i.i.i313 = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 213
  %94 = ptrtoint ptr %pagefault_disabled.i.i.i.i313 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pagefault_disabled.i.i.i.i313, align 8
  %inc.i.i.i.i314 = add i32 %95, 1
  store i32 %inc.i.i.i.i314, ptr %pagefault_disabled.i.i.i.i313, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !274
  %call.i.i315 = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr93380, i32 noundef %or.i307) #19
  %add.ptr98 = getelementptr i8, ptr %call.i.i315, i32 %and11
  %96 = ptrtoint ptr %add.ptr98 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -128, ptr %add.ptr98, align 1
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr98) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !275
  %97 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i316 = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i1.i316 to ptr
  %task.i.i.i317 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %task.i.i.i317 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task.i.i.i317, align 8
  %pagefault_disabled.i.i.i318 = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 213
  %101 = ptrtoint ptr %pagefault_disabled.i.i.i318 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pagefault_disabled.i.i.i318, align 8
  %dec.i.i.i319 = add i32 %102, -1
  store i32 %dec.i.i.i319, ptr %pagefault_disabled.i.i.i318, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !276
  %103 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i320 = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i.i320 to ptr
  %preempt_count.i.i.i321 = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %preempt_count.i.i.i321 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %preempt_count.i.i.i321, align 4
  %sub.i.i322 = add i32 %106, -1
  store volatile i32 %sub.i.i322, ptr %preempt_count.i.i.i321, align 4
  %prev = getelementptr inbounds %struct.page, ptr %add.ptr93380, i32 0, i32 1, i32 0, i32 0, i32 1
  %107 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prev, align 4
  %add.ptr93 = getelementptr i8, ptr %108, i32 -4
  %cmp94.not = icmp eq ptr %add.ptr93, %call
  br i1 %cmp94.not, label %while.body96.out_crit_edge, label %while.body96.while.body96_crit_edge

while.body96.while.body96_crit_edge:              ; preds = %while.body96
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body96

while.body96.out_crit_edge:                       ; preds = %while.body96
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

do.body117:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3684, 0\0A.popsection", ""() #19, !srcloc !296
  unreachable

while.cond126:                                    ; preds = %do.end160, %if.end10.while.cond126_crit_edge
  %map.3 = phi ptr [ %add.ptr162, %do.end160 ], [ %add.ptr14, %if.end10.while.cond126_crit_edge ]
  %page.4 = phi ptr [ %add.ptr141, %do.end160 ], [ %add.ptr12, %if.end10.while.cond126_crit_edge ]
  %109 = ptrtoint ptr %map.3 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %map.3, align 1
  %111 = zext i8 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %110, label %do.end183 [
    i8 -128, label %do.end134
    i8 0, label %do.body175
  ], !prof !297

do.end134:                                        ; preds = %while.cond126
  tail call void @kunmap_local_indexed(ptr noundef %map.3) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !275
  %112 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i323 = and i32 %112, -16384
  %113 = inttoptr i32 %and.i.i.i1.i323 to ptr
  %task.i.i.i324 = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %task.i.i.i324 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %task.i.i.i324, align 8
  %pagefault_disabled.i.i.i325 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 213
  %116 = ptrtoint ptr %pagefault_disabled.i.i.i325 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pagefault_disabled.i.i.i325, align 8
  %dec.i.i.i326 = add i32 %117, -1
  store i32 %dec.i.i.i326, ptr %pagefault_disabled.i.i.i325, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !276
  %118 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i327 = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i.i.i327 to ptr
  %preempt_count.i.i.i328 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %preempt_count.i.i.i328 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %preempt_count.i.i.i328, align 4
  %sub.i.i329 = add i32 %121, -1
  store volatile i32 %sub.i.i329, ptr %preempt_count.i.i.i328, align 4
  %122 = getelementptr inbounds %struct.page, ptr %page.4, i32 0, i32 1
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %add.ptr141 = getelementptr i8, ptr %124, i32 -4
  %cmp143 = icmp eq ptr %add.ptr141, %call
  br i1 %cmp143, label %do.body152, label %do.end160, !prof !245

do.body152:                                       ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3688, 0\0A.popsection", ""() #19, !srcloc !298
  unreachable

do.end160:                                        ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %125 = load i32, ptr @pgprot_kernel, align 4
  %or.i330 = or i32 %125, 512
  %126 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i.i331 = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i.i.i331 to ptr
  %preempt_count.i.i.i.i332 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %preempt_count.i.i.i.i332 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %preempt_count.i.i.i.i332, align 4
  %add.i.i.i333 = add i32 %129, 1
  store volatile i32 %add.i.i.i333, ptr %preempt_count.i.i.i.i332, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !273
  %130 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i.i334 = and i32 %130, -16384
  %131 = inttoptr i32 %and.i.i.i1.i.i334 to ptr
  %task.i.i.i.i335 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %task.i.i.i.i335 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %task.i.i.i.i335, align 8
  %pagefault_disabled.i.i.i.i336 = getelementptr inbounds %struct.task_struct, ptr %133, i32 0, i32 213
  %134 = ptrtoint ptr %pagefault_disabled.i.i.i.i336 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pagefault_disabled.i.i.i.i336, align 8
  %inc.i.i.i.i337 = add i32 %135, 1
  store i32 %inc.i.i.i.i337, ptr %pagefault_disabled.i.i.i.i336, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !274
  %call.i.i338 = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr141, i32 noundef %or.i330) #19
  %add.ptr162 = getelementptr i8, ptr %call.i.i338, i32 %and11
  br label %while.cond126

do.body175:                                       ; preds = %while.cond126
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3691, 0\0A.popsection", ""() #19, !srcloc !299
  unreachable

do.end183:                                        ; preds = %while.cond126
  %sub = add i8 %110, -1
  %136 = ptrtoint ptr %map.3 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %sub, ptr %map.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sub)
  %cmp187 = icmp eq i8 %sub, 0
  %spec.select = select i1 %cmp187, i8 0, i8 -128
  tail call void @kunmap_local_indexed(ptr noundef %map.3) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !275
  %137 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i339 = and i32 %137, -16384
  %138 = inttoptr i32 %and.i.i.i1.i339 to ptr
  %task.i.i.i340 = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %task.i.i.i340 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %task.i.i.i340, align 8
  %pagefault_disabled.i.i.i341 = getelementptr inbounds %struct.task_struct, ptr %140, i32 0, i32 213
  %141 = ptrtoint ptr %pagefault_disabled.i.i.i341 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %pagefault_disabled.i.i.i341, align 8
  %dec.i.i.i342 = add i32 %142, -1
  store i32 %dec.i.i.i342, ptr %pagefault_disabled.i.i.i341, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !276
  %143 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i343 = and i32 %143, -16384
  %144 = inttoptr i32 %and.i.i.i.i343 to ptr
  %preempt_count.i.i.i344 = getelementptr inbounds %struct.thread_info, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %preempt_count.i.i.i344 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %preempt_count.i.i.i344, align 4
  %sub.i.i345 = add i32 %146, -1
  store volatile i32 %sub.i.i345, ptr %preempt_count.i.i.i344, align 4
  %prev200372 = getelementptr inbounds %struct.page, ptr %page.4, i32 0, i32 1, i32 0, i32 0, i32 1
  %147 = ptrtoint ptr %prev200372 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %prev200372, align 4
  %add.ptr202373 = getelementptr i8, ptr %148, i32 -4
  %cmp203.not374 = icmp eq ptr %add.ptr202373, %call
  br i1 %cmp203.not374, label %do.end183.while.end216_crit_edge, label %while.body205.preheader

do.end183.while.end216_crit_edge:                 ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end216

while.body205.preheader:                          ; preds = %do.end183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %149 = load i32, ptr @pgprot_kernel, align 4
  %or.i346.peel = or i32 %149, 512
  %150 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i.i347.peel = and i32 %150, -16384
  %151 = inttoptr i32 %and.i.i.i.i.i347.peel to ptr
  %preempt_count.i.i.i.i348.peel = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %preempt_count.i.i.i.i348.peel to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %preempt_count.i.i.i.i348.peel, align 4
  %add.i.i.i349.peel = add i32 %153, 1
  store volatile i32 %add.i.i.i349.peel, ptr %preempt_count.i.i.i.i348.peel, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !273
  %154 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i.i350.peel = and i32 %154, -16384
  %155 = inttoptr i32 %and.i.i.i1.i.i350.peel to ptr
  %task.i.i.i.i351.peel = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %task.i.i.i.i351.peel to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %task.i.i.i.i351.peel, align 8
  %pagefault_disabled.i.i.i.i352.peel = getelementptr inbounds %struct.task_struct, ptr %157, i32 0, i32 213
  %158 = ptrtoint ptr %pagefault_disabled.i.i.i.i352.peel to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %pagefault_disabled.i.i.i.i352.peel, align 8
  %inc.i.i.i.i353.peel = add i32 %159, 1
  store i32 %inc.i.i.i.i353.peel, ptr %pagefault_disabled.i.i.i.i352.peel, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !274
  %call.i.i354.peel = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr202373, i32 noundef %or.i346.peel) #19
  %add.ptr207.peel = getelementptr i8, ptr %call.i.i354.peel, i32 %and11
  %160 = or i8 %spec.select, 127
  %161 = ptrtoint ptr %add.ptr207.peel to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %add.ptr207.peel, align 1
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr207.peel) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !275
  %162 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i355.peel = and i32 %162, -16384
  %163 = inttoptr i32 %and.i.i.i1.i355.peel to ptr
  %task.i.i.i356.peel = getelementptr inbounds %struct.thread_info, ptr %163, i32 0, i32 2
  %164 = ptrtoint ptr %task.i.i.i356.peel to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %task.i.i.i356.peel, align 8
  %pagefault_disabled.i.i.i357.peel = getelementptr inbounds %struct.task_struct, ptr %165, i32 0, i32 213
  %166 = ptrtoint ptr %pagefault_disabled.i.i.i357.peel to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %pagefault_disabled.i.i.i357.peel, align 8
  %dec.i.i.i358.peel = add i32 %167, -1
  store i32 %dec.i.i.i358.peel, ptr %pagefault_disabled.i.i.i357.peel, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !276
  %168 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i359.peel = and i32 %168, -16384
  %169 = inttoptr i32 %and.i.i.i.i359.peel to ptr
  %preempt_count.i.i.i360.peel = getelementptr inbounds %struct.thread_info, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %preempt_count.i.i.i360.peel to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %preempt_count.i.i.i360.peel, align 4
  %sub.i.i361.peel = add i32 %171, -1
  store volatile i32 %sub.i.i361.peel, ptr %preempt_count.i.i.i360.peel, align 4
  %prev200.peel = getelementptr i8, ptr %148, i32 4
  %172 = ptrtoint ptr %prev200.peel to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %prev200.peel, align 4
  %add.ptr202.peel = getelementptr i8, ptr %173, i32 -4
  %cmp203.not.peel = icmp eq ptr %add.ptr202.peel, %call
  br i1 %cmp203.not.peel, label %while.body205.preheader.while.end216_crit_edge, label %while.body205.preheader.while.body205_crit_edge

while.body205.preheader.while.body205_crit_edge:  ; preds = %while.body205.preheader
  br label %while.body205

while.body205.preheader.while.end216_crit_edge:   ; preds = %while.body205.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end216

while.body205:                                    ; preds = %while.body205.while.body205_crit_edge, %while.body205.preheader.while.body205_crit_edge
  %add.ptr202376 = phi ptr [ %add.ptr202, %while.body205.while.body205_crit_edge ], [ %add.ptr202.peel, %while.body205.preheader.while.body205_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %174 = load i32, ptr @pgprot_kernel, align 4
  %or.i346 = or i32 %174, 512
  %175 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i.i347 = and i32 %175, -16384
  %176 = inttoptr i32 %and.i.i.i.i.i347 to ptr
  %preempt_count.i.i.i.i348 = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %preempt_count.i.i.i.i348 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %preempt_count.i.i.i.i348, align 4
  %add.i.i.i349 = add i32 %178, 1
  store volatile i32 %add.i.i.i349, ptr %preempt_count.i.i.i.i348, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !273
  %179 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i.i350 = and i32 %179, -16384
  %180 = inttoptr i32 %and.i.i.i1.i.i350 to ptr
  %task.i.i.i.i351 = getelementptr inbounds %struct.thread_info, ptr %180, i32 0, i32 2
  %181 = ptrtoint ptr %task.i.i.i.i351 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %task.i.i.i.i351, align 8
  %pagefault_disabled.i.i.i.i352 = getelementptr inbounds %struct.task_struct, ptr %182, i32 0, i32 213
  %183 = ptrtoint ptr %pagefault_disabled.i.i.i.i352 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %pagefault_disabled.i.i.i.i352, align 8
  %inc.i.i.i.i353 = add i32 %184, 1
  store i32 %inc.i.i.i.i353, ptr %pagefault_disabled.i.i.i.i352, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !274
  %call.i.i354 = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr202376, i32 noundef %or.i346) #19
  %add.ptr207 = getelementptr i8, ptr %call.i.i354, i32 %and11
  %185 = ptrtoint ptr %add.ptr207 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 -1, ptr %add.ptr207, align 1
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr207) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !275
  %186 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i355 = and i32 %186, -16384
  %187 = inttoptr i32 %and.i.i.i1.i355 to ptr
  %task.i.i.i356 = getelementptr inbounds %struct.thread_info, ptr %187, i32 0, i32 2
  %188 = ptrtoint ptr %task.i.i.i356 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %task.i.i.i356, align 8
  %pagefault_disabled.i.i.i357 = getelementptr inbounds %struct.task_struct, ptr %189, i32 0, i32 213
  %190 = ptrtoint ptr %pagefault_disabled.i.i.i357 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %pagefault_disabled.i.i.i357, align 8
  %dec.i.i.i358 = add i32 %191, -1
  store i32 %dec.i.i.i358, ptr %pagefault_disabled.i.i.i357, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !276
  %192 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i359 = and i32 %192, -16384
  %193 = inttoptr i32 %and.i.i.i.i359 to ptr
  %preempt_count.i.i.i360 = getelementptr inbounds %struct.thread_info, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %preempt_count.i.i.i360 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load volatile i32, ptr %preempt_count.i.i.i360, align 4
  %sub.i.i361 = add i32 %195, -1
  store volatile i32 %sub.i.i361, ptr %preempt_count.i.i.i360, align 4
  %prev200 = getelementptr inbounds %struct.page, ptr %add.ptr202376, i32 0, i32 1, i32 0, i32 0, i32 1
  %196 = ptrtoint ptr %prev200 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %prev200, align 4
  %add.ptr202 = getelementptr i8, ptr %197, i32 -4
  %cmp203.not = icmp eq ptr %add.ptr202, %call
  br i1 %cmp203.not, label %while.body205.while.end216_crit_edge, label %while.body205.while.body205_crit_edge, !llvm.loop !300

while.body205.while.body205_crit_edge:            ; preds = %while.body205
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body205

while.body205.while.end216_crit_edge:             ; preds = %while.body205
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end216

while.end216:                                     ; preds = %while.body205.while.end216_crit_edge, %while.body205.preheader.while.end216_crit_edge, %do.end183.while.end216_crit_edge
  %count.addr.1.lcssa = phi i8 [ %spec.select, %do.end183.while.end216_crit_edge ], [ -128, %while.body205.preheader.while.end216_crit_edge ], [ -128, %while.body205.while.end216_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %count.addr.1.lcssa)
  %cmp218 = icmp eq i8 %count.addr.1.lcssa, -128
  br label %out

out:                                              ; preds = %while.end216, %while.body96.out_crit_edge, %if.end80.out_crit_edge, %do.end66.out_crit_edge
  %ret.0.off0 = phi i1 [ %cmp218, %while.end216 ], [ false, %do.end66.out_crit_edge ], [ true, %if.end80.out_crit_edge ], [ true, %while.body96.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %cont_lock) #19
  br label %cleanup

cleanup:                                          ; preds = %out, %do.body.cleanup_crit_edge
  %retval.0 = phi i1 [ %ret.0.off0, %out ], [ false, %do.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mem_cgroup_swap_full(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_open_name(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_vm_enough_memory_mm(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_swap_slots_cache_lock() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @try_to_unuse(i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %inuse_pages = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %inuse_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %inuse_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %retry.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

retry.preheader:                                  ; preds = %entry
  %max.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 5
  %swap_map.i = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 6
  %shr.i = and i32 %type, 63
  %arrayidx46 = getelementptr [0 x ptr], ptr @swapper_spaces, i32 0, i32 %shr.i
  br label %retry

retry:                                            ; preds = %signal_pending.exit133.retry_crit_edge, %retry.preheader
  %call = tail call i32 @shmem_unuse(i32 noundef %type) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %retry.cleanup_crit_edge

retry.cleanup_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5:                                          ; preds = %retry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 10), i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 10), i32 1, i32 3, i32 1) #19
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 10), ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 10), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 10)) #19, !srcloc !247
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end22, %if.end5
  %p.0.ph = phi ptr [ %19, %if.end22 ], [ getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 16), %if.end5 ]
  %prev_mm.0.ph = phi ptr [ %add.ptr.le, %if.end22 ], [ @init_mm, %if.end5 ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @mmlist_lock) #19
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.outer
  %p.0 = phi ptr [ %19, %while.body.while.cond_crit_edge ], [ %p.0.ph, %while.cond.outer ]
  %5 = ptrtoint ptr %inuse_pages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %inuse_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not = icmp eq i32 %6, 0
  br i1 %tobool11.not, label %while.cond.while.end_crit_edge, label %land.lhs.true

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

land.lhs.true:                                    ; preds = %while.cond
  %7 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stack.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %land.lhs.true.while.end_crit_edge, !prof !251

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

signal_pending.exit:                              ; preds = %land.lhs.true
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %12, align 4
  %and1.i.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool14.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool14.not, label %land.rhs, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

land.rhs:                                         ; preds = %signal_pending.exit
  %18 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p.0, align 4
  %cmp.not = icmp eq ptr %19, getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 16)
  br i1 %cmp.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %mm_users.i = getelementptr i8, ptr %19, i32 -156
  %call.i.i.i106 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users.i, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !260
  tail call void @llvm.prefetch.p0(ptr %mm_users.i, i32 1, i32 3, i32 1) #19
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %mm_users.i, ptr %mm_users.i, i32 0, i32 1, ptr elementtype(i32) %mm_users.i) #19, !srcloc !261
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %while.body.while.cond_crit_edge, label %if.end18

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond

if.end18:                                         ; preds = %while.body
  %add.ptr.le = getelementptr i8, ptr %19, i32 -200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !262
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mmlist_lock) #19
  tail call void @mmput(ptr noundef %prev_mm.0.ph) #19
  %call19 = tail call fastcc i32 @unuse_mm(ptr noundef %add.ptr.le, i32 noundef %type)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @mmput(ptr noundef %add.ptr.le) #19
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 2163, i32 noundef 0) #19
  %call.i = tail call i32 @__cond_resched() #19
  br label %while.cond.outer

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %signal_pending.exit.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %while.cond.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mmlist_lock) #19
  tail call void @mmput(ptr noundef %prev_mm.0.ph) #19
  %21 = ptrtoint ptr %inuse_pages to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %inuse_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool31.not147 = icmp eq i32 %22, 0
  br i1 %tobool31.not147, label %while.end.do.end58_crit_edge, label %while.end.land.lhs.true32_crit_edge

while.end.land.lhs.true32_crit_edge:              ; preds = %while.end
  br label %land.lhs.true32

while.end.do.end58_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end58

land.lhs.true32:                                  ; preds = %while.cond25.backedge.land.lhs.true32_crit_edge, %while.end.land.lhs.true32_crit_edge
  %i.0148 = phi i32 [ %i.0.lcssa.i, %while.cond25.backedge.land.lhs.true32_crit_edge ], [ 0, %while.end.land.lhs.true32_crit_edge ]
  %23 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i107 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i107 to ptr
  %task34 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task34, align 8
  %stack.i.i108 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %stack.i.i108 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stack.i.i108, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %31 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i109 = icmp eq i32 %31, 0
  br i1 %tobool.not.i109, label %signal_pending.exit113, label %land.lhs.true32.do.end58_crit_edge, !prof !251

land.lhs.true32.do.end58_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end58

signal_pending.exit113:                           ; preds = %land.lhs.true32
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %28, align 4
  %and1.i.i.i.i.i110 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i110)
  %tobool36.not = icmp eq i32 %and1.i.i.i.i.i110, 0
  br i1 %tobool36.not, label %land.rhs37, label %signal_pending.exit113.do.end58_crit_edge

signal_pending.exit113.do.end58_crit_edge:        ; preds = %signal_pending.exit113
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end58

land.rhs37:                                       ; preds = %signal_pending.exit113
  %i.023.i = add i32 %i.0148, 1
  %34 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.023.i, i32 %35)
  %cmp24.i = icmp ult i32 %i.023.i, %35
  br i1 %cmp24.i, label %land.rhs37.do.end.i_crit_edge, label %land.rhs37.find_next_to_unuse.exit_crit_edge

land.rhs37.find_next_to_unuse.exit_crit_edge:     ; preds = %land.rhs37
  call void @__sanitizer_cov_trace_pc() #21
  br label %find_next_to_unuse.exit

land.rhs37.do.end.i_crit_edge:                    ; preds = %land.rhs37
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %land.rhs37.do.end.i_crit_edge
  %36 = phi i32 [ %43, %for.inc.i.do.end.i_crit_edge ], [ %35, %land.rhs37.do.end.i_crit_edge ]
  %i.025.i = phi i32 [ %i.0.i, %for.inc.i.do.end.i_crit_edge ], [ %i.023.i, %land.rhs37.do.end.i_crit_edge ]
  %37 = ptrtoint ptr %swap_map.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %swap_map.i, align 4
  %arrayidx.i = getelementptr i8, ptr %38, i32 %i.025.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load volatile i8, ptr %arrayidx.i, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %40, label %do.end.i.find_next_to_unuse.exit_crit_edge [
    i8 127, label %do.end.i.if.end.i114_crit_edge
    i8 63, label %do.end.i.if.end.i114_crit_edge161
    i8 0, label %do.end.i.if.end.i114_crit_edge162
  ]

do.end.i.if.end.i114_crit_edge162:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i114

do.end.i.if.end.i114_crit_edge161:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i114

do.end.i.if.end.i114_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i114

do.end.i.find_next_to_unuse.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %find_next_to_unuse.exit

if.end.i114:                                      ; preds = %do.end.i.if.end.i114_crit_edge, %do.end.i.if.end.i114_crit_edge161, %do.end.i.if.end.i114_crit_edge162
  %rem.i = and i32 %i.025.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp4.i = icmp eq i32 %rem.i, 0
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i114.for.inc.i_crit_edge

if.end.i114.for.inc.i_crit_edge:                  ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 2110, i32 noundef 0) #19
  %call.i.i = tail call i32 @__cond_resched() #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %if.end.i114.for.inc.i_crit_edge
  %i.0.i = add i32 %i.025.i, 1
  %42 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max.i, align 4
  %cmp.i = icmp ult i32 %i.0.i, %43
  br i1 %cmp.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.find_next_to_unuse.exit_crit_edge

for.inc.i.find_next_to_unuse.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %find_next_to_unuse.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i

find_next_to_unuse.exit:                          ; preds = %for.inc.i.find_next_to_unuse.exit_crit_edge, %do.end.i.find_next_to_unuse.exit_crit_edge, %land.rhs37.find_next_to_unuse.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.023.i, %land.rhs37.find_next_to_unuse.exit_crit_edge ], [ %i.0.i, %for.inc.i.find_next_to_unuse.exit_crit_edge ], [ %i.025.i, %do.end.i.find_next_to_unuse.exit_crit_edge ]
  %.lcssa.i = phi i32 [ %35, %land.rhs37.find_next_to_unuse.exit_crit_edge ], [ %43, %for.inc.i.find_next_to_unuse.exit_crit_edge ], [ %36, %do.end.i.find_next_to_unuse.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %.lcssa.i)
  %cmp11.i = icmp eq i32 %i.0.lcssa.i, %.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i)
  %cmp39.not141 = icmp eq i32 %i.0.lcssa.i, 0
  %cmp39.not = or i1 %cmp39.not141, %cmp11.i
  br i1 %cmp39.not, label %find_next_to_unuse.exit.do.end58_crit_edge, label %while.body41

find_next_to_unuse.exit.do.end58_crit_edge:       ; preds = %find_next_to_unuse.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end58

while.body41:                                     ; preds = %find_next_to_unuse.exit
  %44 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx46, align 4
  %and.i115 = lshr i32 %i.0.lcssa.i, 14
  %shr = and i32 %and.i115, 4095
  %arrayidx49 = getelementptr %struct.address_space, ptr %45, i32 %shr
  %call.i117 = tail call ptr @pagecache_get_page(ptr noundef %arrayidx49, i32 noundef %i.0.lcssa.i, i32 noundef 0, i32 noundef 0) #19
  %tobool51.not = icmp eq ptr %call.i117, null
  br i1 %tobool51.not, label %while.body41.while.cond25.backedge_crit_edge, label %if.end53

while.body41.while.cond25.backedge_crit_edge:     ; preds = %while.body41
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond25.backedge

if.end53:                                         ; preds = %while.body41
  tail call void @__might_sleep(ptr noundef nonnull @.str.35, i32 noundef 788) #19
  %46 = getelementptr inbounds %struct.page, ptr %call.i117, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %and.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !251

if.then.i.i:                                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i = add i32 %48, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #21
  %49 = ptrtoint ptr %call.i117 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %49, %if.end.i.i ]
  %50 = inttoptr i32 %retval.0.i.i to ptr
  %51 = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %and.i.i.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !251

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %54 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %54, ptr noundef nonnull @.str.28) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #19, !srcloc !279
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %50, i32 noundef 4) #19
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %50, align 4
  %and.i.i4.i.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %50, i32 1, i32 3, i32 1) #19
  %57 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #19, !srcloc !283
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %57, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !284
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %50) #19
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  tail call void @wait_on_page_writeback(ptr noundef nonnull %call.i117) #19
  %call54 = tail call i32 @try_to_free_swap(ptr noundef nonnull %call.i117)
  tail call void @unlock_page(ptr noundef nonnull %call.i117) #19
  %58 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %46, align 4
  %and.i.i119 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i119)
  %tobool.not.i.i120 = icmp eq i32 %and.i.i119, 0
  br i1 %tobool.not.i.i120, label %if.end.i.i123, label %if.then.i.i122, !prof !251

if.then.i.i122:                                   ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i121 = add i32 %59, -1
  br label %_compound_head.exit.i126

if.end.i.i123:                                    ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #21
  %60 = ptrtoint ptr %call.i117 to i32
  br label %_compound_head.exit.i126

_compound_head.exit.i126:                         ; preds = %if.end.i.i123, %if.then.i.i122
  %retval.0.i.i124 = phi i32 [ %sub.i.i121, %if.then.i.i122 ], [ %60, %if.end.i.i123 ]
  %61 = inttoptr i32 %retval.0.i.i124 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %61, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #19
  %62 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i.i.i.i125 = icmp eq i32 %63, 0
  br i1 %cmp.i.i.i.i125, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !245

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i126
  call void @__sanitizer_cov_trace_pc() #21
  %64 = inttoptr i32 %retval.0.i.i124 to ptr
  tail call void @dump_page(ptr noundef %64, ptr noundef nonnull @.str.30) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #19, !srcloc !285
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i126
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !265
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #19
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #19, !srcloc !266
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %65, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@try_to_unuse, %if.then.i.i.i.i.i)) #19
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !246

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %61, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #19
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.while.cond25.backedge_crit_edge

folio_put_testzero.exit.i.i.while.cond25.backedge_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond25.backedge

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__put_page(ptr noundef %61) #19
  br label %while.cond25.backedge

while.cond25.backedge:                            ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.while.cond25.backedge_crit_edge, %while.body41.while.cond25.backedge_crit_edge
  %66 = ptrtoint ptr %inuse_pages to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %inuse_pages, align 4
  %tobool31.not = icmp eq i32 %67, 0
  br i1 %tobool31.not, label %while.cond25.backedge.do.end58_crit_edge, label %while.cond25.backedge.land.lhs.true32_crit_edge

while.cond25.backedge.land.lhs.true32_crit_edge:  ; preds = %while.cond25.backedge
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true32

while.cond25.backedge.do.end58_crit_edge:         ; preds = %while.cond25.backedge
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end58

do.end58:                                         ; preds = %while.cond25.backedge.do.end58_crit_edge, %find_next_to_unuse.exit.do.end58_crit_edge, %signal_pending.exit113.do.end58_crit_edge, %land.lhs.true32.do.end58_crit_edge, %while.end.do.end58_crit_edge
  %68 = ptrtoint ptr %inuse_pages to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %inuse_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool61.not = icmp eq i32 %69, 0
  br i1 %tobool61.not, label %do.end58.cleanup_crit_edge, label %if.then62

do.end58.cleanup_crit_edge:                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then62:                                        ; preds = %do.end58
  %70 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i127 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i127 to ptr
  %task64 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task64 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task64, align 8
  %stack.i.i128 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %stack.i.i128 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %stack.i.i128, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %75, align 4
  %78 = and i32 %77, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i129 = icmp eq i32 %78, 0
  br i1 %tobool.not.i129, label %signal_pending.exit133, label %if.then62.cleanup_crit_edge, !prof !251

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

signal_pending.exit133:                           ; preds = %if.then62
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %75, align 4
  %and1.i.i.i.i.i130 = and i32 %80, 1
  %tobool66.not = icmp eq i32 %and1.i.i.i.i.i130, 0
  br i1 %tobool66.not, label %signal_pending.exit133.retry_crit_edge, label %signal_pending.exit133.cleanup_crit_edge

signal_pending.exit133.cleanup_crit_edge:         ; preds = %signal_pending.exit133
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

signal_pending.exit133.retry_crit_edge:           ; preds = %signal_pending.exit133
  call void @__sanitizer_cov_trace_pc() #21
  br label %retry

cleanup:                                          ; preds = %signal_pending.exit133.cleanup_crit_edge, %if.then62.cleanup_crit_edge, %do.end58.cleanup_crit_edge, %if.then21, %retry.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.then21 ], [ 0, %entry.cleanup_crit_edge ], [ -4, %if.then62.cleanup_crit_edge ], [ 0, %do.end58.cleanup_crit_edge ], [ -4, %signal_pending.exit133.cleanup_crit_edge ], [ %call, %retry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reinsert_swap_info(ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #19
  %lock = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock) #19
  %prio = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %prio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prio, align 4
  %conv8 = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp.i = icmp sgt i16 %1, -1
  br i1 %cmp.i, label %entry.if.end.i_crit_edge, label %if.else.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %2 = load i32, ptr @least_priority, align 4
  %dec.i = add i32 %2, -1
  store i32 %dec.i, ptr @least_priority, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %entry.if.end.i_crit_edge
  %conv2.sink.in.i = phi i32 [ %dec.i, %if.else.i ], [ %conv8, %entry.if.end.i_crit_edge ]
  %conv2.sink.i = trunc i32 %conv2.sink.in.i to i16
  %3 = ptrtoint ptr %prio to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv2.sink.i, ptr %prio, align 4
  %sext.i = shl i32 %conv2.sink.in.i, 16
  %conv5.i = ashr exact i32 %sext.i, 16
  %sub.i = sub nsw i32 0, %conv5.i
  %list.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 3
  %4 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub.i, ptr %list.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv2.sink.i)
  %cmp11.i = icmp sgt i16 %conv2.sink.i, -1
  br i1 %cmp11.i, label %if.end.i.setup_swap_info.exit_crit_edge, label %if.else18.i

if.end.i.setup_swap_info.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %setup_swap_info.exit

if.else18.i:                                      ; preds = %if.end.i
  %bdev1.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 18
  %5 = ptrtoint ptr %bdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bdev1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.else18.i.swap_node.exit.i_crit_edge

if.else18.i.swap_node.exit.i_crit_edge:           ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %swap_node.exit.i

if.end.i.i:                                       ; preds = %if.else18.i
  %swap_file.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 19
  %7 = ptrtoint ptr %swap_file.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %swap_file.i.i, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i.i, align 4
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 26
  %13 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_bdev.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %14, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.else25.i_crit_edge, label %if.end.i.i.swap_node.exit.i_crit_edge

if.end.i.i.swap_node.exit.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %swap_node.exit.i

if.end.i.i.if.else25.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else25.i

swap_node.exit.i:                                 ; preds = %if.end.i.i.swap_node.exit.i_crit_edge, %if.else18.i.swap_node.exit.i_crit_edge
  %bdev.09.i.i = phi ptr [ %14, %if.end.i.i.swap_node.exit.i_crit_edge ], [ %6, %if.else18.i.swap_node.exit.i_crit_edge ]
  %bd_disk.i.i = getelementptr inbounds %struct.block_device, ptr %bdev.09.i.i, i32 0, i32 17
  %15 = ptrtoint ptr %bd_disk.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bd_disk.i.i, align 8
  %node_id.i.i = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 23
  %17 = ptrtoint ptr %node_id.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %node_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp19.i = icmp eq i32 %18, 0
  br i1 %cmp19.i, label %swap_node.exit.i.setup_swap_info.exit_crit_edge, label %swap_node.exit.i.if.else25.i_crit_edge

swap_node.exit.i.if.else25.i_crit_edge:           ; preds = %swap_node.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else25.i

swap_node.exit.i.setup_swap_info.exit_crit_edge:  ; preds = %swap_node.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %setup_swap_info.exit

if.else25.i:                                      ; preds = %swap_node.exit.i.if.else25.i_crit_edge, %if.end.i.i.if.else25.i_crit_edge
  br label %setup_swap_info.exit

setup_swap_info.exit:                             ; preds = %if.else25.i, %swap_node.exit.i.setup_swap_info.exit_crit_edge, %if.end.i.setup_swap_info.exit_crit_edge
  %sub.sink.i = phi i32 [ %sub.i, %if.else25.i ], [ %sub.i, %if.end.i.setup_swap_info.exit_crit_edge ], [ 1, %swap_node.exit.i.setup_swap_info.exit_crit_edge ]
  %avail_lists.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 28
  %19 = ptrtoint ptr %avail_lists.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.sink.i, ptr %avail_lists.i, align 4
  tail call fastcc void @_enable_swap_info(ptr noundef %p)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #19
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_lock) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reenable_swap_slots_cache_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_swap_extents(ptr noundef %sis) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %swap_extent_root = getelementptr inbounds %struct.swap_info_struct, ptr %sis, i32 0, i32 17
  %0 = ptrtoint ptr %swap_extent_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %swap_extent_root, align 4
  %cmp.not21 = icmp eq ptr %1, null
  br i1 %cmp.not21, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %4, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  tail call void @rb_erase(ptr noundef nonnull %2, ptr noundef %swap_extent_root) #19
  tail call void @kfree(ptr noundef nonnull %2) #19
  %3 = ptrtoint ptr %swap_extent_root to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %swap_extent_root, align 4
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %flags = getelementptr inbounds %struct.swap_info_struct, ptr %sis, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end.if.end12_crit_edge, label %if.then

while.end.if.end12_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end12

if.then:                                          ; preds = %while.end
  %swap_file5 = getelementptr inbounds %struct.swap_info_struct, ptr %sis, i32 0, i32 19
  %7 = ptrtoint ptr %swap_file5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %swap_file5, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 18
  %9 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_mapping, align 4
  %and7 = and i32 %6, -129
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and7, ptr %flags, align 4
  %a_ops = getelementptr inbounds %struct.address_space, ptr %10, i32 0, i32 9
  %12 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %a_ops, align 4
  %swap_deactivate = getelementptr inbounds %struct.address_space_operations, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %swap_deactivate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %swap_deactivate, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %if.then.if.end12_crit_edge, label %if.then9

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end12

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  tail call void %15(ptr noundef %8) #19
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then.if.end12_crit_edge, %while.end.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_swap_count_continuations(ptr nocapture noundef readonly %si) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %max = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 5
  %0 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp36.not = icmp eq i32 %1, 0
  br i1 %cmp36.not, label %entry.for.end20_crit_edge, label %for.body.lr.ph

entry.for.end20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end20

for.body.lr.ph:                                   ; preds = %entry
  %swap_map = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %offset.037 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %swap_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %swap_map, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %offset.037
  %call = tail call ptr @vmalloc_to_page(ptr noundef %add.ptr) #19
  %private = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %for.body
  %6 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %page.031 = getelementptr i8, ptr %8, i32 -4
  %cmp11.not32 = icmp eq ptr %page.031, %call
  br i1 %cmp11.not32, label %if.then.if.end_crit_edge, label %if.then.for.body12_crit_edge

if.then.for.body12_crit_edge:                     ; preds = %if.then
  br label %for.body12

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

for.body12:                                       ; preds = %list_del.exit.for.body12_crit_edge, %if.then.for.body12_crit_edge
  %page.035 = phi ptr [ %page.0, %list_del.exit.for.body12_crit_edge ], [ %page.031, %if.then.for.body12_crit_edge ]
  %.pn.in33 = phi ptr [ %.pn, %list_del.exit.for.body12_crit_edge ], [ %8, %if.then.for.body12_crit_edge ]
  %9 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in33, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in33) #19
  br i1 %call.i.i, label %if.end.i.i, label %for.body12.list_del.exit_crit_edge

for.body12.list_del.exit_crit_edge:               ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn.in33, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body12.list_del.exit_crit_edge
  %16 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in33, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @__free_pages(ptr noundef %page.035, i32 noundef 0) #19
  %page.0 = getelementptr i8, ptr %.pn, i32 -4
  %cmp11.not = icmp eq ptr %page.0, %call
  br i1 %cmp11.not, label %list_del.exit.if.end_crit_edge, label %list_del.exit.for.body12_crit_edge

list_del.exit.for.body12_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body12

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end:                                           ; preds = %list_del.exit.if.end_crit_edge, %if.then.if.end_crit_edge, %for.body.if.end_crit_edge
  %add = add i32 %offset.037, 4096
  %18 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max, align 4
  %cmp = icmp ult i32 %add, %19
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end20_crit_edge

if.end.for.end20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end20

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end20:                                        ; preds = %if.end.for.end20_crit_edge, %entry.for.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drain_mmlist() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nr_swapfiles, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp15.not = icmp eq i32 %0, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %type.016, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %type.016 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %type.016
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %inuse_pages = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %inuse_pages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %inuse_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @mmlist_lock) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 16) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 16), align 8
  %cmp.i.not18 = icmp eq ptr %5, getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 16)
  br i1 %cmp.i.not18, label %for.end.for.end7_crit_edge, label %for.end.for.body4_crit_edge

for.end.for.body4_crit_edge:                      ; preds = %for.end
  br label %for.body4

for.end.for.end7_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end7

for.body4:                                        ; preds = %list_del_init.exit.for.body4_crit_edge, %for.end.for.body4_crit_edge
  %p.019 = phi ptr [ %next.021, %list_del_init.exit.for.body4_crit_edge ], [ %5, %for.end.for.body4_crit_edge ]
  %6 = ptrtoint ptr %p.019 to i32
  call void @__asan_load4_noabort(i32 %6)
  %next.021 = load ptr, ptr %p.019, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.019) #19
  br i1 %call.i.i, label %if.end.i.i, label %for.body4.list_del_init.exit_crit_edge

for.body4.list_del_init.exit_crit_edge:           ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.019, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %p.019 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p.019, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body4.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %p.019 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %p.019, ptr %p.019, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %p.019, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %p.019, ptr %prev.i3.i, align 4
  %cmp.i.not = icmp eq ptr %next.021, getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 16)
  br i1 %cmp.i.not, label %list_del_init.exit.for.end7_crit_edge, label %list_del_init.exit.for.body4_crit_edge

list_del_init.exit.for.body4_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body4

list_del_init.exit.for.end7_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end7

for.end7:                                         ; preds = %list_del_init.exit.for.end7_crit_edge, %for.end.for.end7_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mmlist_lock) #19
  br label %cleanup

cleanup:                                          ; preds = %for.end7, %for.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @swap_cgroup_swapoff(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_swap_address_space(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @I_BDEV(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @putname(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_unuse(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unuse_mm(ptr noundef %mm, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@unuse_mm, %if.then.i.i)) #19
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !246

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext false) #19
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.23, ptr %mm, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@unuse_mm, %if.then.i3.i)) #19
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !246

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext false, i1 noundef zeroext true) #19
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %vma.017 = load ptr, ptr %mm, align 4
  %tobool.not18 = icmp eq ptr %vma.017, null
  br i1 %tobool.not18, label %mmap_read_lock.exit.for.end_crit_edge, label %mmap_read_lock.exit.for.body_crit_edge

mmap_read_lock.exit.for.body_crit_edge:           ; preds = %mmap_read_lock.exit
  br label %for.body

mmap_read_lock.exit.for.end_crit_edge:            ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %mmap_read_lock.exit.for.body_crit_edge
  %vma.019 = phi ptr [ %vma.0, %if.end4.for.body_crit_edge ], [ %vma.017, %mmap_read_lock.exit.for.body_crit_edge ]
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, ptr %vma.019, i32 0, i32 11
  %1 = ptrtoint ptr %anon_vma to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %anon_vma, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %for.body.if.end4_crit_edge, label %if.then

for.body.if.end4_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4

if.then:                                          ; preds = %for.body
  %3 = ptrtoint ptr %vma.019 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vma.019, align 4
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.019, i32 0, i32 1
  %5 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vm_end.i, align 4
  %vm_mm.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.019, i32 0, i32 6
  %7 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vm_mm.i, align 4
  %pgd1.i = getelementptr inbounds %struct.anon.23, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %pgd1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pgd1.i, align 4
  %shr.i.i = lshr i32 %4, 21
  %add.ptr.i.i = getelementptr [2 x i32], ptr %10, i32 %shr.i.i
  %sub2.i = add i32 %6, -1
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.then
  %pgd.0.i = phi ptr [ %add.ptr.i.i, %if.then ], [ %incdec.ptr.i, %do.cond.i.do.body.i_crit_edge ]
  %addr.0.i = phi i32 [ %4, %if.then ], [ %and..i, %do.cond.i.do.body.i_crit_edge ]
  %add.i = add i32 %addr.0.i, 2097152
  %and.i = and i32 %add.i, -2097152
  %sub.i = add i32 %and.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub2.i)
  %cmp.i = icmp ult i32 %sub.i, %sub2.i
  %and..i = select i1 %cmp.i, i32 %and.i, i32 %6
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1998, i32 noundef 0) #19
  %call.i.i.i.i.i = tail call i32 @__cond_resched() #19
  %11 = ptrtoint ptr %pgd.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pgd.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.do.cond.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.cond.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %do.body.i
  %and.i.i.i.i.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool3.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i.i, label %if.end.i.i.i.i, label %if.then6.i.i.i.i.i, !prof !251

if.then6.i.i.i.i.i:                               ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @pmd_clear_bad(ptr noundef %pgd.0.i) #19
  br label %do.cond.i

if.end.i.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.i.i
  %call3.i.i.i.i = tail call fastcc i32 @unuse_pte_range(ptr noundef nonnull %vma.019, ptr noundef %pgd.0.i, i32 noundef %addr.0.i, i32 noundef %and..i, i32 noundef %type) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call3.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.do.cond.i_crit_edge, label %if.end.i.i.i.i.for.end_crit_edge

if.end.i.i.i.i.for.end_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.end.i.i.i.i.do.cond.i_crit_edge:               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.end.i.i.i.i.do.cond.i_crit_edge, %if.then6.i.i.i.i.i, %do.body.i.do.cond.i_crit_edge
  %incdec.ptr.i = getelementptr [2 x i32], ptr %pgd.0.i, i32 1
  %cmp8.not.i = icmp eq i32 %and..i, %6
  br i1 %cmp8.not.i, label %do.cond.i.if.end4_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i

do.cond.i.if.end4_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4

if.end4:                                          ; preds = %do.cond.i.if.end4_crit_edge, %for.body.if.end4_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 2082, i32 noundef 0) #19
  %call.i = tail call i32 @__cond_resched() #19
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma.019, i32 0, i32 2
  %13 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %13)
  %vma.0 = load ptr, ptr %vm_next, align 4
  %tobool.not = icmp eq ptr %vma.0, null
  br i1 %tobool.not, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %if.end4.for.end_crit_edge, %if.end.i.i.i.i.for.end_crit_edge, %mmap_read_lock.exit.for.end_crit_edge
  %ret.2 = phi i32 [ 0, %mmap_read_lock.exit.for.end_crit_edge ], [ %call3.i.i.i.i, %if.end.i.i.i.i.for.end_crit_edge ], [ 0, %if.end4.for.end_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@unuse_mm, %if.then.i.i12)) #19
          to label %mmap_read_unlock.exit [label %if.then.i.i12], !srcloc !246

if.then.i.i12:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext false) #19
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i12, %for.end
  tail call void @up_read(ptr noundef %mmap_lock.i) #19
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unuse_pte_range(ptr noundef %vma, ptr noundef %pmd, i32 noundef %addr, i32 noundef %end, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %vmf = alloca %struct.vm_fault, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %3 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pmd, align 4
  %shr = lshr i32 %4, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %shr, %5
  %add.ptr = getelementptr %struct.page, ptr %2, i32 %sub
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %6 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %6, 512
  %7 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !273
  %11 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 213
  %15 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %16, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !274
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #19
  %shr.i = lshr i32 %addr, 12
  %and.i = and i32 %shr.i, 511
  %add.ptr3 = getelementptr i32, ptr %call.i.i, i32 %and.i
  %swap_map16 = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 6
  %address = getelementptr inbounds %struct.anon.79, ptr %vmf, i32 0, i32 3
  %pmd23 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 2
  %17 = getelementptr inbounds i8, ptr %vmf, i32 4
  br label %do.body

do.body:                                          ; preds = %do.cond53.do.body_crit_edge, %entry
  %addr.addr.0 = phi i32 [ %addr, %entry ], [ %add, %do.cond53.do.body_crit_edge ]
  %pte.0 = phi ptr [ %add.ptr3, %entry ], [ %incdec.ptr, %do.cond53.do.body_crit_edge ]
  %18 = ptrtoint ptr %pte.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pte.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  %and.i113 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113)
  %tobool.not165 = icmp ne i32 %and.i113, 0
  %tobool.not = or i1 %tobool.not.i, %tobool.not165
  br i1 %tobool.not, label %do.body.do.cond53_crit_edge, label %if.end

do.body.do.cond53_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.cond53

if.end:                                           ; preds = %do.body
  %shr3.i = lshr i32 %19, 7
  %20 = shl i32 %19, 24
  %shl.i.i = and i32 %20, 2080374784
  %or.i.i = or i32 %shl.i.i, %shr3.i
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %or.i.i, 0
  %shr.i114 = lshr exact i32 %shl.i.i, 26
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i114, i32 %type)
  %cmp.not = icmp eq i32 %shr.i114, %type
  br i1 %cmp.not, label %if.end9, label %if.end.do.cond53_crit_edge

if.end.do.cond53_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.cond53

if.end9:                                          ; preds = %if.end
  call void @kunmap_local_indexed(ptr noundef %pte.0) #19
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !275
  %21 = call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 213
  %25 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %26, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !276
  %27 = call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %31 = ptrtoint ptr %swap_map16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %swap_map16, align 4
  %arrayidx17 = getelementptr i8, ptr %32, i32 %shr3.i
  %call19 = call ptr @lookup_swap_cache([1 x i32] %.fca.0.insert, ptr noundef %vma, i32 noundef %addr.addr.0) #19
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end28, label %if.end9.if.end38_crit_edge

if.end9.if.end38_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end38

if.end28:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %vmf) #19
  %33 = call ptr @memset(ptr %17, i32 0, i32 48)
  %34 = ptrtoint ptr %vmf to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %vma, ptr %vmf, align 4
  %35 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %addr.addr.0, ptr %address, align 4
  %36 = ptrtoint ptr %pmd23 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %pmd, ptr %pmd23, align 4
  %call27 = call ptr @swapin_readahead([1 x i32] %.fca.0.insert, i32 noundef 17829066, ptr noundef nonnull %vmf) #19
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %vmf) #19
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %if.then30, label %if.end28.if.end38_crit_edge

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end38

if.then30:                                        ; preds = %if.end28
  %37 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load volatile i8, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp31 = icmp eq i8 %38, 0
  br i1 %cmp31, label %if.then30.try_next_crit_edge, label %lor.lhs.false

if.then30.try_next_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #21
  br label %try_next

lor.lhs.false:                                    ; preds = %if.then30
  %39 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load volatile i8, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %40)
  %cmp34 = icmp eq i8 %40, 63
  br i1 %cmp34, label %lor.lhs.false.try_next_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false.try_next_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %try_next

if.end38:                                         ; preds = %if.end28.if.end38_crit_edge, %if.end9.if.end38_crit_edge
  %page.0164 = phi ptr [ %call27, %if.end28.if.end38_crit_edge ], [ %call19, %if.end9.if.end38_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.35, i32 noundef 788) #19
  %41 = getelementptr inbounds %struct.page, ptr %page.0164, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !251

if.then.i.i:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i115 = add i32 %43, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #21
  %44 = ptrtoint ptr %page.0164 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i115, %if.then.i.i ], [ %44, %if.end.i.i ]
  %45 = inttoptr i32 %retval.0.i.i to ptr
  %46 = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %and.i.i.i.i116 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i116)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i116, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !251

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %49 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %49, ptr noundef nonnull @.str.28) #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #19, !srcloc !279
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %45, i32 noundef 4) #19
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %45, align 4
  %and.i.i4.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %45, i32 1, i32 3, i32 1) #19
  %52 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #19, !srcloc !283
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %52, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !284
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  call void @__folio_lock(ptr noundef %45) #19
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  call void @wait_on_page_writeback(ptr noundef nonnull %page.0164) #19
  %call40 = call fastcc i32 @unuse_pte(ptr noundef %vma, ptr noundef %pmd, i32 noundef %addr.addr.0, [1 x i32] %.fca.0.insert, ptr noundef nonnull %page.0164)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %lock_page.exit
  call void @unlock_page(ptr noundef nonnull %page.0164) #19
  %53 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %41, align 4
  %and.i.i117 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i117)
  %tobool.not.i.i118 = icmp eq i32 %and.i.i117, 0
  br i1 %tobool.not.i.i118, label %if.end.i.i121, label %if.then.i.i120, !prof !251

if.then.i.i120:                                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i119 = add i32 %54, -1
  br label %_compound_head.exit.i123

if.end.i.i121:                                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #21
  %55 = ptrtoint ptr %page.0164 to i32
  br label %_compound_head.exit.i123

_compound_head.exit.i123:                         ; preds = %if.end.i.i121, %if.then.i.i120
  %retval.0.i.i122 = phi i32 [ %sub.i.i119, %if.then.i.i120 ], [ %55, %if.end.i.i121 ]
  %56 = inttoptr i32 %retval.0.i.i122 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #19
  %57 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i.i.i.i = icmp eq i32 %58, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !245

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i123
  call void @__sanitizer_cov_trace_pc() #21
  call void @dump_page(ptr noundef %56, ptr noundef nonnull @.str.30) #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #19, !srcloc !285
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i123
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !265
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #19
  %59 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #19, !srcloc !266
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %59, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@unuse_pte_range, %if.then.i.i.i.i.i)) #19
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !246

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %56, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #19
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @__put_page(ptr noundef %56) #19
  br label %cleanup

if.end44:                                         ; preds = %lock_page.exit
  %call45 = call i32 @try_to_free_swap(ptr noundef nonnull %page.0164)
  call void @unlock_page(ptr noundef nonnull %page.0164) #19
  %60 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %41, align 4
  %and.i.i124 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i124)
  %tobool.not.i.i125 = icmp eq i32 %and.i.i124, 0
  br i1 %tobool.not.i.i125, label %if.end.i.i128, label %if.then.i.i127, !prof !251

if.then.i.i127:                                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i126 = add i32 %61, -1
  br label %_compound_head.exit.i133

if.end.i.i128:                                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #21
  %62 = ptrtoint ptr %page.0164 to i32
  br label %_compound_head.exit.i133

_compound_head.exit.i133:                         ; preds = %if.end.i.i128, %if.then.i.i127
  %retval.0.i.i129 = phi i32 [ %sub.i.i126, %if.then.i.i127 ], [ %62, %if.end.i.i128 ]
  %63 = inttoptr i32 %retval.0.i.i129 to ptr
  %_refcount.i.i.i.i.i130 = getelementptr inbounds %struct.page, ptr %63, i32 0, i32 3
  %call.i.i.i.i.i.i.i131 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i130, i32 noundef 4) #19
  %64 = ptrtoint ptr %_refcount.i.i.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %_refcount.i.i.i.i.i130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i.i.i.i132 = icmp eq i32 %65, 0
  br i1 %cmp.i.i.i.i132, label %if.then.i.i.i.i134, label %do.end5.i.i.i.i138, !prof !245

if.then.i.i.i.i134:                               ; preds = %_compound_head.exit.i133
  call void @__sanitizer_cov_trace_pc() #21
  %66 = inttoptr i32 %retval.0.i.i129 to ptr
  call void @dump_page(ptr noundef %66, ptr noundef nonnull @.str.30) #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #19, !srcloc !285
  unreachable

do.end5.i.i.i.i138:                               ; preds = %_compound_head.exit.i133
  %call.i.i.i10.i.i.i.i135 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i130, i32 noundef 4) #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !265
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i130, i32 1, i32 3, i32 1) #19
  %67 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i130, ptr %_refcount.i.i.i.i.i130, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i130) #19, !srcloc !266
  %asmresult.i.i.i.i.i.i.i.i.i.i136 = extractvalue { i32, i32 } %67, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i136)
  %cmp.i.i.i.i.i.i.i137 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i136, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@unuse_pte_range, %if.then.i.i.i.i.i140)) #19
          to label %folio_put_testzero.exit.i.i141 [label %if.then.i.i.i.i.i140], !srcloc !246

if.then.i.i.i.i.i140:                             ; preds = %do.end5.i.i.i.i138
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i.i.i.i139 = zext i1 %cmp.i.i.i.i.i.i.i137 to i32
  call void @__page_ref_mod_and_test(ptr noundef %63, i32 noundef -1, i32 noundef %conv.i.i.i.i.i139) #19
  br label %folio_put_testzero.exit.i.i141

folio_put_testzero.exit.i.i141:                   ; preds = %if.then.i.i.i.i.i140, %do.end5.i.i.i.i138
  br i1 %cmp.i.i.i.i.i.i.i137, label %if.then.i4.i142, label %folio_put_testzero.exit.i.i141.try_next_crit_edge

folio_put_testzero.exit.i.i141.try_next_crit_edge: ; preds = %folio_put_testzero.exit.i.i141
  call void @__sanitizer_cov_trace_pc() #21
  br label %try_next

if.then.i4.i142:                                  ; preds = %folio_put_testzero.exit.i.i141
  call void @__sanitizer_cov_trace_pc() #21
  call void @__put_page(ptr noundef %63) #19
  br label %try_next

try_next:                                         ; preds = %if.then.i4.i142, %folio_put_testzero.exit.i.i141.try_next_crit_edge, %lor.lhs.false.try_next_crit_edge, %if.then30.try_next_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %68 = load ptr, ptr @mem_map, align 4
  %69 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pmd, align 4
  %shr47 = lshr i32 %70, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %71 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub48 = sub i32 %shr47, %71
  %add.ptr49 = getelementptr %struct.page, ptr %68, i32 %sub48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %72 = load i32, ptr @pgprot_kernel, align 4
  %or.i144 = or i32 %72, 512
  %73 = call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i.i145 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i145 to ptr
  %preempt_count.i.i.i.i146 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i.i.i146, align 4
  %add.i.i.i147 = add i32 %76, 1
  store volatile i32 %add.i.i.i147, ptr %preempt_count.i.i.i.i146, align 4
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !273
  %77 = call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i.i148 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i1.i.i148 to ptr
  %task.i.i.i.i149 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task.i.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task.i.i.i.i149, align 8
  %pagefault_disabled.i.i.i.i150 = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 213
  %81 = ptrtoint ptr %pagefault_disabled.i.i.i.i150 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pagefault_disabled.i.i.i.i150, align 8
  %inc.i.i.i.i151 = add i32 %82, 1
  store i32 %inc.i.i.i.i151, ptr %pagefault_disabled.i.i.i.i150, align 8
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !274
  %call.i.i152 = call ptr @__kmap_local_page_prot(ptr noundef %add.ptr49, i32 noundef %or.i144) #19
  %shr.i153 = lshr i32 %addr.addr.0, 12
  %and.i154 = and i32 %shr.i153, 511
  %add.ptr52 = getelementptr i32, ptr %call.i.i152, i32 %and.i154
  br label %do.cond53

do.cond53:                                        ; preds = %try_next, %if.end.do.cond53_crit_edge, %do.body.do.cond53_crit_edge
  %pte.1 = phi ptr [ %pte.0, %if.end.do.cond53_crit_edge ], [ %add.ptr52, %try_next ], [ %pte.0, %do.body.do.cond53_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %pte.1, i32 1
  %add = add i32 %addr.addr.0, 4096
  %cmp54.not = icmp eq i32 %add, %end
  br i1 %cmp54.not, label %do.end60, label %do.cond53.do.body_crit_edge

do.cond53.do.body_crit_edge:                      ; preds = %do.cond53
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

do.end60:                                         ; preds = %do.cond53
  call void @__sanitizer_cov_trace_pc() #21
  call void @kunmap_local_indexed(ptr noundef %pte.1) #19
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !275
  %83 = call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i155 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i1.i155 to ptr
  %task.i.i.i156 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task.i.i.i156, align 8
  %pagefault_disabled.i.i.i157 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 213
  %87 = ptrtoint ptr %pagefault_disabled.i.i.i157 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pagefault_disabled.i.i.i157, align 8
  %dec.i.i.i158 = add i32 %88, -1
  store i32 %dec.i.i.i158, ptr %pagefault_disabled.i.i.i157, align 8
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !276
  %89 = call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i159 = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i.i159 to ptr
  %preempt_count.i.i.i160 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %preempt_count.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %preempt_count.i.i.i160, align 4
  %sub.i.i161 = add i32 %92, -1
  store volatile i32 %sub.i.i161, ptr %preempt_count.i.i.i160, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end60 ], [ %call40, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %call40, %if.then.i4.i ], [ -12, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmd_clear_bad(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_swap_cache([1 x i32], ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @swapin_readahead([1 x i32], i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unuse_pte(ptr noundef %vma, ptr nocapture noundef readonly %pmd, i32 noundef %addr, [1 x i32] %entry.coerce, ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ksm_might_need_to_copy(ptr noundef %page, ptr noundef %vma, i32 noundef %addr) #19
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !245

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %1 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pmd, align 4
  %shr.i = lshr i32 %2, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %3
  %ptl.i.i = getelementptr %struct.page, ptr %0, i32 %sub.i, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %ptl.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptl.i.i, align 4
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %6 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %6, 512
  %7 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !273
  %11 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 213
  %15 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %16, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !274
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #19
  %shr.i75 = lshr i32 %addr, 12
  %and.i = and i32 %shr.i75, 511
  %add.ptr9 = getelementptr i32, ptr %call.i.i, i32 %and.i
  tail call void @_raw_spin_lock(ptr noundef %5) #19
  %17 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr9, align 4
  %entry.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %entry.coerce, 0
  %19 = lshr i32 %entry.coerce.fca.0.extract.i.i, 24
  %shl.i = and i32 %19, 252
  %shl6.i = shl i32 %entry.coerce.fca.0.extract.i.i, 7
  %or.i76 = or i32 %shl.i, %shl6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %or.i76)
  %cmp.i.i.not = icmp eq i32 %18, %or.i76
  br i1 %cmp.i.i.not, label %if.end23, label %if.end.do.body_crit_edge, !prof !251

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

if.end23:                                         ; preds = %if.end
  %20 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vm_mm, align 4
  %arrayidx.i = getelementptr %struct.anon.23, ptr %21, i32 0, i32 40, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !265
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #19
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #19, !srcloc !266
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !267
  tail call void @mm_trace_rss_stat(ptr noundef %21, i32 noundef 2, i32 noundef %asmresult.i.i.i.i.i.i) #19
  %23 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vm_mm, align 4
  %arrayidx.i77 = getelementptr %struct.anon.23, ptr %24, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i78 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i77, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !302
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i77, i32 1, i32 3, i32 1) #19
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i77, ptr %arrayidx.i77, i32 1, ptr elementtype(i32) %arrayidx.i77) #19, !srcloc !303
  %asmresult.i.i.i.i.i.i79 = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !304
  tail call void @mm_trace_rss_stat(ptr noundef %24, i32 noundef 1, i32 noundef %asmresult.i.i.i.i.i.i79) #19
  %26 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !251

if.then.i.i:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i = add i32 %28, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #21
  %29 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %29, %if.end.i.i ]
  %30 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #19
  %31 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %32, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i80 = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i80, label %if.then.i1.i, label %do.end5.i.i, !prof !245

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dump_page(ptr noundef %30, ptr noundef nonnull @.str.34) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #19, !srcloc !305
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #19
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #19, !srcloc !247
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@unuse_pte, %if.then.i.i.i.i)) #19
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !246

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__page_ref_mod(ptr noundef %30, i32 noundef 1) #19
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %cmp = icmp eq ptr %call, %page
  br i1 %cmp, label %if.then26, label %if.else

if.then26:                                        ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @page_add_anon_rmap(ptr noundef nonnull %page, ptr noundef %vma, i32 noundef %addr, i1 noundef zeroext false) #19
  br label %if.end27

if.else:                                          ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @page_add_new_anon_rmap(ptr noundef nonnull %call, ptr noundef %vma, i32 noundef %addr, i1 noundef zeroext false) #19
  tail call void @lru_cache_add_inactive_or_unevictable(ptr noundef nonnull %call, ptr noundef %vma) #19
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then26
  %34 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vm_mm, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %36 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %37 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %37
  %shl = shl i32 %add, 12
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %38 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vm_page_prot, align 4
  %.masked = and i32 %39, -3
  %and.i.i81 = or i32 %shl, %.masked
  tail call void @set_pte_at(ptr noundef %35, i32 noundef %addr, ptr noundef %add.ptr9, i32 noundef %and.i.i81) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entry.coerce.fca.0.extract.i.i)
  %tobool.not.i.i.i = icmp eq i32 %entry.coerce.fca.0.extract.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end27.do.body_crit_edge, label %if.end.i.i.i

if.end27.do.body_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

if.end.i.i.i:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 2013265919, i32 %entry.coerce.fca.0.extract.i.i)
  %cmp.i.i.i.i.i = icmp ugt i32 %entry.coerce.fca.0.extract.i.i, 2013265919
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %swp_swap_info.exit.i.i.i

if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i.i

swp_swap_info.exit.i.i.i:                         ; preds = %if.end.i.i.i
  %shr.i.i.i.i.i = lshr i32 %entry.coerce.fca.0.extract.i.i, 26
  %arrayidx.i.i.i.i.i = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %shr.i.i.i.i.i
  %40 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %41, null
  br i1 %tobool4.not.i.i.i, label %swp_swap_info.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %if.end6.i.i.i

swp_swap_info.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %swp_swap_info.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i.i

if.end6.i.i.i:                                    ; preds = %swp_swap_info.exit.i.i.i
  %flags.i.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %if.end6.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %if.end11.i.i.i

if.end6.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i.i

if.end11.i.i.i:                                   ; preds = %if.end6.i.i.i
  %and.i.i.i.i = and i32 %entry.coerce.fca.0.extract.i.i, 67108863
  %max.i.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %41, i32 0, i32 5
  %44 = ptrtoint ptr %max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i.i, i32 %45)
  %cmp.not.i.i.i = icmp ult i32 %and.i.i.i.i, %45
  br i1 %cmp.not.i.i.i, label %if.end.i.i83, label %if.end11.i.i.i.cleanup.sink.split.i.i.i_crit_edge

if.end11.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split.i.i.i

cleanup.sink.split.i.i.i:                         ; preds = %if.end11.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %if.end6.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %swp_swap_info.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge
  %Bad_offset.sink.i.i.i = phi ptr [ @Bad_offset, %if.end11.i.i.i.cleanup.sink.split.i.i.i_crit_edge ], [ @Unused_file, %if.end6.i.i.i.cleanup.sink.split.i.i.i_crit_edge ], [ @Bad_file, %if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge ], [ @Bad_file, %swp_swap_info.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge ]
  %call18.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.21, ptr noundef nonnull %Bad_offset.sink.i.i.i, i32 noundef %entry.coerce.fca.0.extract.i.i) #22
  br label %do.body

if.end.i.i83:                                     ; preds = %if.end11.i.i.i
  %swap_map.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %41, i32 0, i32 6
  %46 = ptrtoint ptr %swap_map.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %swap_map.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %47, i32 %and.i.i.i.i
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool6.not.i.i = icmp eq i8 %49, 0
  br i1 %tobool6.not.i.i, label %do.end.i.i, label %if.then.i

do.end.i.i:                                       ; preds = %if.end.i.i83
  call void @__sanitizer_cov_trace_pc() #21
  %call12.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20, ptr noundef nonnull @Unused_offset, i32 noundef %entry.coerce.fca.0.extract.i.i) #22
  br label %do.body

if.then.i:                                        ; preds = %if.end.i.i83
  call void @__sanitizer_cov_trace_pc() #21
  %call5.i = tail call fastcc zeroext i8 @__swap_entry_free(ptr noundef nonnull %41, [1 x i32] %entry.coerce) #19
  br label %do.body

do.body:                                          ; preds = %if.then.i, %do.end.i.i, %cleanup.sink.split.i.i.i, %if.end27.do.body_crit_edge, %if.end.do.body_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.do.body_crit_edge ], [ 1, %if.end27.do.body_crit_edge ], [ 1, %cleanup.sink.split.i.i.i ], [ 1, %do.end.i.i ], [ 1, %if.then.i ]
  tail call void @_raw_spin_unlock(ptr noundef %5) #19
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr9) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !275
  %50 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i1.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 213
  %54 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %55, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !276
  %56 = tail call i32 @llvm.read_register.i32(metadata !233) #19
  %and.i.i.i.i84 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i84 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i85 = add i32 %59, -1
  store volatile i32 %sub.i.i85, ptr %preempt_count.i.i.i, align 4
  %cmp37.not = icmp eq ptr %call, %page
  br i1 %cmp37.not, label %do.body.cleanup_crit_edge, label %if.then38

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then38:                                        ; preds = %do.body
  tail call void @unlock_page(ptr noundef nonnull %call) #19
  %60 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  %and.i.i86 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i86)
  %tobool.not.i.i87 = icmp eq i32 %and.i.i86, 0
  br i1 %tobool.not.i.i87, label %if.end.i.i90, label %if.then.i.i89, !prof !251

if.then.i.i89:                                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i88 = add i32 %62, -1
  br label %_compound_head.exit.i92

if.end.i.i90:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #21
  %63 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i92

_compound_head.exit.i92:                          ; preds = %if.end.i.i90, %if.then.i.i89
  %retval.0.i.i91 = phi i32 [ %sub.i.i88, %if.then.i.i89 ], [ %63, %if.end.i.i90 ]
  %64 = inttoptr i32 %retval.0.i.i91 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %64, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #19
  %65 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.i.i.i.i = icmp eq i32 %66, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i93, label %do.end5.i.i.i.i, !prof !245

if.then.i.i.i.i93:                                ; preds = %_compound_head.exit.i92
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dump_page(ptr noundef %64, ptr noundef nonnull @.str.30) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #19, !srcloc !285
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i92
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !265
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #19
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #19, !srcloc !266
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %67, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@unuse_pte, %if.then.i.i.i.i.i)) #19
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !246

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %64, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #19
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__put_page(ptr noundef %64) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.0, %do.body.cleanup_crit_edge ], [ %ret.0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %ret.0, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksm_might_need_to_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_add_anon_rmap(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_add_new_anon_rmap(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_cache_add_inactive_or_unevictable(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mm_trace_rss_stat(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_enable_swap_info(ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 2
  store i32 %or, ptr %flags, align 4
  %pages = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 11
  %2 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pages, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nr_swap_pages, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr nonnull @nr_swap_pages, i32 1, i32 3, i32 1) #19
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_swap_pages, ptr nonnull @nr_swap_pages, i32 %3, ptr nonnull elementtype(i32) @nr_swap_pages) #19, !srcloc !247
  %5 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pages, align 4
  %7 = load i32, ptr @total_swap_pages, align 4
  %add = add i32 %7, %6
  store i32 %add, ptr @total_swap_pages, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr @swap_lock, align 4
  %8 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body5, label %do.end8, !prof !245

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2409, 0\0A.popsection", ""() #19, !srcloc !306
  unreachable

do.end8:                                          ; preds = %entry
  %list = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 3
  tail call void @plist_add(ptr noundef %list, ptr noundef nonnull @swap_active_head) #19
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_avail_lock) #19
  %node_list.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 1, i32 2
  %9 = ptrtoint ptr %node_list.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %node_list.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %10, %node_list.i.i
  br i1 %cmp.i.i.not.i, label %do.end8.add_to_avail_list.exit_crit_edge, label %do.end.i, !prof !251

do.end8.add_to_avail_list.exit_crit_edge:         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %add_to_avail_list.exit

do.end.i:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 710, i32 noundef 9, ptr noundef null) #19
  br label %add_to_avail_list.exit

add_to_avail_list.exit:                           ; preds = %do.end.i, %do.end8.add_to_avail_list.exit_crit_edge
  %avail_lists.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 28
  %11 = load ptr, ptr @swap_avail_heads, align 4
  tail call void @plist_add(ptr noundef %avail_lists.i, ptr noundef %11) #19
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_avail_lock) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_kill_and_confirm(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__frontswap_invalidate_area(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @swaps_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @swaps_op) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @proc_poll_event, i32 noundef 4) #19
  %2 = load volatile i32, ptr @proc_poll_event, align 4
  %poll_event = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %poll_event to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %poll_event, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @swaps_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void %3(ptr noundef %file, ptr noundef nonnull @proc_poll_wait, ptr noundef nonnull %wait) #19
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %poll_event = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %poll_event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %poll_event, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @proc_poll_event, i32 noundef 4) #19
  %6 = load volatile i32, ptr @proc_poll_event, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %6)
  %cmp.not = icmp eq i32 %5, %6
  br i1 %cmp.not, label %poll_wait.exit.cleanup_crit_edge, label %if.then

poll_wait.exit.cleanup_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then:                                          ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call.i.i5 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @proc_poll_event, i32 noundef 4) #19
  %7 = load volatile i32, ptr @proc_poll_event, align 4
  %8 = ptrtoint ptr %poll_event to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %poll_event, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %poll_wait.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 75, %if.then ], [ 65, %poll_wait.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @swap_start(ptr nocapture noundef readnone %swap, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @swapon_mutex, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.swap_type_to_swap_info.exit_crit_edge

entry.swap_type_to_swap_info.exit_crit_edge:      ; preds = %entry
  br label %swap_type_to_swap_info.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

swap_type_to_swap_info.exit:                      ; preds = %for.inc.swap_type_to_swap_info.exit_crit_edge, %entry.swap_type_to_swap_info.exit_crit_edge
  %l.018 = phi i64 [ %l.1, %for.inc.swap_type_to_swap_info.exit_crit_edge ], [ %1, %entry.swap_type_to_swap_info.exit_crit_edge ]
  %type.017 = phi i32 [ %inc, %for.inc.swap_type_to_swap_info.exit_crit_edge ], [ 0, %entry.swap_type_to_swap_info.exit_crit_edge ]
  %arrayidx.i = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %type.017
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %swap_type_to_swap_info.exit.cleanup_crit_edge, label %for.body

swap_type_to_swap_info.exit.cleanup_crit_edge:    ; preds = %swap_type_to_swap_info.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body:                                         ; preds = %swap_type_to_swap_info.exit
  %flags = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %swap_map = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %swap_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swap_map, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end5

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end5:                                          ; preds = %lor.lhs.false
  %dec = add i64 %l.018, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec)
  %tobool6.not = icmp eq i64 %dec, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end5.for.inc_crit_edge

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc:                                          ; preds = %if.end5.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %l.1 = phi i64 [ %dec, %if.end5.for.inc_crit_edge ], [ %l.018, %lor.lhs.false.for.inc_crit_edge ], [ %l.018, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %type.017, 1
  %exitcond = icmp eq i32 %inc, 30
  br i1 %exitcond, label %for.inc.cleanup_crit_edge, label %for.inc.swap_type_to_swap_info.exit_crit_edge

for.inc.swap_type_to_swap_info.exit_crit_edge:    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %swap_type_to_swap_info.exit

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %swap_type_to_swap_info.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 1 to ptr), %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ null, %swap_type_to_swap_info.exit.cleanup_crit_edge ], [ %3, %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @swap_stop(ptr nocapture noundef readnone %swap, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @swapon_mutex) #19
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @swap_next(ptr nocapture noundef readnone %swap, ptr noundef readonly %v, ptr nocapture noundef %pos) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc20 = add i64 %1, 1
  store i64 %inc20, ptr %pos, align 8
  br label %swap_type_to_swap_info.exit.preheader

if.end:                                           ; preds = %entry
  %type1 = getelementptr inbounds %struct.swap_info_struct, ptr %v, i32 0, i32 4
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type1, align 4
  %conv = sext i8 %3 to i32
  %add = add nsw i32 %conv, 1
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %3)
  %cmp.i15 = icmp sgt i8 %3, 28
  br i1 %cmp.i15, label %if.end.cleanup_crit_edge, label %if.end.swap_type_to_swap_info.exit.preheader_crit_edge

if.end.swap_type_to_swap_info.exit.preheader_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %swap_type_to_swap_info.exit.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

swap_type_to_swap_info.exit.preheader:            ; preds = %if.end.swap_type_to_swap_info.exit.preheader_crit_edge, %if.end.thread
  %type.116.ph = phi i32 [ %add, %if.end.swap_type_to_swap_info.exit.preheader_crit_edge ], [ 0, %if.end.thread ]
  br label %swap_type_to_swap_info.exit

swap_type_to_swap_info.exit:                      ; preds = %for.inc.swap_type_to_swap_info.exit_crit_edge, %swap_type_to_swap_info.exit.preheader
  %type.116 = phi i32 [ %inc6, %for.inc.swap_type_to_swap_info.exit_crit_edge ], [ %type.116.ph, %swap_type_to_swap_info.exit.preheader ]
  %arrayidx.i = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %type.116
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %swap_type_to_swap_info.exit.cleanup_crit_edge, label %for.body

swap_type_to_swap_info.exit.cleanup_crit_edge:    ; preds = %swap_type_to_swap_info.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body:                                         ; preds = %swap_type_to_swap_info.exit
  %flags = getelementptr inbounds %struct.swap_info_struct, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %swap_map = getelementptr inbounds %struct.swap_info_struct, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %swap_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %swap_map, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc6 = add nsw i32 %type.116, 1
  %exitcond = icmp eq i32 %inc6, 30
  br i1 %exitcond, label %for.inc.cleanup_crit_edge, label %for.inc.swap_type_to_swap_info.exit_crit_edge

for.inc.swap_type_to_swap_info.exit_crit_edge:    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %swap_type_to_swap_info.exit

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %swap_type_to_swap_info.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ null, %swap_type_to_swap_info.exit.cleanup_crit_edge ], [ %7, %lor.lhs.false.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @swap_show(ptr noundef %swap, ptr noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @seq_puts(ptr noundef %swap, ptr noundef nonnull @.str.40) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %pages = getelementptr inbounds %struct.swap_info_struct, ptr %v, i32 0, i32 11
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pages, align 4
  %shl = shl i32 %1, 2
  %inuse_pages = getelementptr inbounds %struct.swap_info_struct, ptr %v, i32 0, i32 12
  %2 = ptrtoint ptr %inuse_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inuse_pages, align 4
  %shl1 = shl i32 %3, 2
  %swap_file = getelementptr inbounds %struct.swap_info_struct, ptr %v, i32 0, i32 19
  %4 = ptrtoint ptr %swap_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %swap_file, align 4
  %call = tail call i32 @seq_file_path(ptr noundef %swap, ptr noundef %5, ptr noundef nonnull @.str.41) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %call)
  %cmp2 = icmp slt i32 %call, 40
  %sub = sub i32 40, %call
  %spec.select = select i1 %cmp2, i32 %sub, i32 1
  %f_inode.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 8
  %10 = and i16 %9, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %10)
  %cmp4 = icmp eq i16 %10, 24576
  %cond6 = select i1 %cmp4, ptr @.str.44, ptr @.str.45
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %shl)
  %cmp7 = icmp ult i32 %shl, 10000000
  %cond9 = select i1 %cmp7, ptr @.str.46, ptr @.str.47
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %shl1)
  %cmp10 = icmp ult i32 %shl1, 10000000
  %cond12 = select i1 %cmp10, ptr @.str.46, ptr @.str.47
  %prio = getelementptr inbounds %struct.swap_info_struct, ptr %v, i32 0, i32 2
  %11 = ptrtoint ptr %prio to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %prio, align 4
  %conv13 = sext i16 %12 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %swap, ptr noundef nonnull @.str.42, i32 noundef %spec.select, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond6, i32 noundef %shl, ptr noundef nonnull %cond9, i32 noundef %shl1, ptr noundef nonnull %cond12, i32 noundef %conv13) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_file_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @swap_discard_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -348
  %lock = getelementptr i8, ptr %work, i32 -88
  tail call void @_raw_spin_lock(ptr noundef %lock) #19
  tail call fastcc void @swap_do_scheduled_discard(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @claim_swapfile(ptr noundef %p, ptr nocapture noundef readonly %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.94)
  switch i16 %2, label %entry.cleanup_crit_edge [
    i16 24576, label %if.then
    i16 -32768, label %if.then25
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then:                                          ; preds = %entry
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %4 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_rdev, align 8
  %call = tail call ptr @blkdev_get_by_dev(i32 noundef %5, i32 noundef 131, ptr noundef %p) #19
  %bdev = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 18
  %6 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %bdev, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %7 = ptrtoint ptr %call to i32
  %8 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bdev, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %bd_inode.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 7
  %9 = ptrtoint ptr %bd_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bd_inode.i, align 4
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %old_block_size = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 20
  %13 = ptrtoint ptr %old_block_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shl.i, ptr %old_block_size, align 4
  %call11 = tail call i32 @set_blocksize(ptr noundef %call, i32 noundef 4096) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %14 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %queue, align 4
  %zoned.i.i = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 37, i32 27
  %20 = ptrtoint ptr %zoned.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %zoned.i.i, align 4
  %call.off.i = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i)
  %switch.i = icmp ult i32 %call.off.i, 2
  br i1 %switch.i, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  %flags = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 1
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %or = or i32 %23, 64
  store i32 %or, ptr %flags, align 4
  br label %cleanup

if.then25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 26
  %26 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_bdev, align 4
  %bdev26 = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 18
  %28 = ptrtoint ptr %bdev26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %bdev26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end19, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then4 ], [ %call11, %if.end.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then25 ], [ 0, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kmap(ptr noundef %page) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__might_sleep(ptr noundef nonnull @.str.67, i32 noundef 44) #19
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %shr.i, label %entry.if.then_crit_edge [
    i32 2, label %entry.if.else_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then

is_highmem_idx.exit:                              ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not = icmp eq i32 %3, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.if.else_crit_edge, label %is_highmem_idx.exit.if.then_crit_edge

is_highmem_idx.exit.if.then_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then

is_highmem_idx.exit.if.else_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

if.then:                                          ; preds = %is_highmem_idx.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call5 = tail call ptr @page_address(ptr noundef %page) #19
  br label %if.end

if.else:                                          ; preds = %is_highmem_idx.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %call6 = tail call ptr @kmap_high(ptr noundef %page) #19
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %addr.0 = phi ptr [ %call6, %if.else ], [ %call5, %if.then ]
  ret ptr %addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_swap_header(ptr nocapture noundef writeonly %p, ptr nocapture noundef %swap_header, ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %magic = getelementptr inbounds %struct.anon.111, ptr %swap_header, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @.str.68, ptr noundef dereferenceable(10) %magic, i32 10) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.anon.112, ptr %swap_header, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %1)
  %cmp = icmp eq i32 %1, 16777216
  br i1 %cmp, label %if.then2, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11

if.then2:                                         ; preds = %if.end
  %2 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %version, align 4
  %last_page4 = getelementptr inbounds %struct.anon.112, ptr %swap_header, i32 0, i32 2
  %3 = ptrtoint ptr %last_page4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_page4, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #19
  %6 = ptrtoint ptr %last_page4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %last_page4, align 4
  %nr_badpages = getelementptr inbounds %struct.anon.112, ptr %swap_header, i32 0, i32 3
  %7 = ptrtoint ptr %nr_badpages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_badpages, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #19
  %10 = ptrtoint ptr %nr_badpages to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nr_badpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 637, i32 %9)
  %cmp6 = icmp ugt i32 %9, 637
  br i1 %cmp6, label %if.then2.cleanup_crit_edge, label %for.cond.preheader

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then2
  %11 = ptrtoint ptr %nr_badpages to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_badpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp10109.not = icmp eq i32 %12, 0
  br i1 %cmp10109.not, label %for.cond.preheader.if.end11thread-pre-split_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end11thread-pre-split_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11thread-pre-split

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0110 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.anon.112, ptr %swap_header, i32 0, i32 7, i32 %i.0110
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #19
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0110, 1
  %17 = ptrtoint ptr %nr_badpages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_badpages, align 4
  %cmp10 = icmp ult i32 %inc, %18
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.if.end11thread-pre-split_crit_edge

for.body.if.end11thread-pre-split_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11thread-pre-split

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

if.end11thread-pre-split:                         ; preds = %for.body.if.end11thread-pre-split_crit_edge, %for.cond.preheader.if.end11thread-pre-split_crit_edge
  %19 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %version, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end11thread-pre-split, %if.end.if.end11_crit_edge
  %20 = phi i32 [ %.pr, %if.end11thread-pre-split ], [ %1, %if.end.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp13.not = icmp eq i32 %20, 1
  br i1 %cmp13.not, label %if.end21, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %20) #22
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %lowest_bit = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 9
  %21 = ptrtoint ptr %lowest_bit to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %lowest_bit, align 4
  %cluster_next = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 13
  %22 = ptrtoint ptr %cluster_next to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %cluster_next, align 4
  %cluster_nr = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 14
  %23 = ptrtoint ptr %cluster_nr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %cluster_nr, align 4
  %call22 = tail call i32 @max_swapfile_size()
  %last_page23 = getelementptr inbounds %struct.anon.112, ptr %swap_header, i32 0, i32 2
  %24 = ptrtoint ptr %last_page23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %last_page23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool24.not = icmp eq i32 %25, 0
  br i1 %tobool24.not, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #22
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %call22)
  %cmp32 = icmp ugt i32 %25, %call22
  br i1 %cmp32, label %do.end36, label %if.end31.if.end40_crit_edge

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end40

do.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #21
  %shl = shl i32 %call22, 2
  %shl38 = shl i32 %25, 2
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %shl, i32 noundef %shl38) #22
  br label %if.end40

if.end40:                                         ; preds = %do.end36, %if.end31.if.end40_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %call22, i32 %25)
  %cmp41 = icmp ugt i32 %call22, %25
  %add = add i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp43 = icmp eq i32 %add, 0
  %spec.store.select = select i1 %cmp43, i32 -1, i32 %add
  %maxpages.0 = select i1 %cmp41, i32 %spec.store.select, i32 %call22
  %sub = add i32 %maxpages.0, -1
  %highest_bit = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 10
  %26 = ptrtoint ptr %highest_bit to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %highest_bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxpages.0)
  %tobool47.not = icmp eq i32 %maxpages.0, 0
  br i1 %tobool47.not, label %if.end40.cleanup_crit_edge, label %if.end49

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end49:                                         ; preds = %if.end40
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end49
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !256
  %and.i.i.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @trace_hardirqs_off() #19
  %28 = tail call ptr @llvm.returnaddress(i32 0) #19
  %29 = ptrtoint ptr %28 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %29) #19
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %29) #19
  tail call void @trace_hardirqs_on() #19
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %30 = tail call ptr @llvm.returnaddress(i32 0) #19
  %31 = ptrtoint ptr %30 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %31) #19
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %31) #19
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !257
  %and.i.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !245

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @warn_bogus_irq_restore() #19
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #19, !srcloc !258
  %33 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !307
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #19, !srcloc !308
  %35 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %36, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %34, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %36, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !309
  %37 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !310
  %39 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %40, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %41 = lshr i64 %38, 12
  %conv = trunc i64 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool51.not = icmp ne i32 %conv, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %maxpages.0, i32 %conv)
  %cmp52 = icmp ugt i32 %maxpages.0, %conv
  %or.cond = select i1 %tobool51.not, i1 %cmp52, i1 false
  br i1 %or.cond, label %do.end57, label %if.end60

do.end57:                                         ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #22
  br label %cleanup

if.end60:                                         ; preds = %i_size_read.exit
  %nr_badpages61 = getelementptr inbounds %struct.anon.112, ptr %swap_header, i32 0, i32 3
  %42 = ptrtoint ptr %nr_badpages61 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_badpages61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool62.not = icmp eq i32 %43, 0
  br i1 %tobool62.not, label %if.end60.if.end68_crit_edge, label %land.lhs.true63

if.end60.if.end68_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end68

land.lhs.true63:                                  ; preds = %if.end60
  %44 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %inode, align 8
  %46 = and i16 %45, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %46)
  %cmp65 = icmp eq i16 %46, -32768
  br i1 %cmp65, label %land.lhs.true63.cleanup_crit_edge, label %land.lhs.true63.if.end68_crit_edge

land.lhs.true63.if.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end68

land.lhs.true63.cleanup_crit_edge:                ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end68:                                         ; preds = %land.lhs.true63.if.end68_crit_edge, %if.end60.if.end68_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 637, i32 %43)
  %cmp70 = icmp ugt i32 %43, 637
  %.maxpages.0 = select i1 %cmp70, i32 0, i32 %maxpages.0
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %land.lhs.true63.cleanup_crit_edge, %do.end57, %if.end40.cleanup_crit_edge, %do.end28, %do.end17, %if.then2.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end17 ], [ 0, %do.end57 ], [ 0, %do.end28 ], [ 0, %if.then2.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ], [ 0, %land.lhs.true63.cleanup_crit_edge ], [ %.maxpages.0, %if.end68 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swap_cgroup_swapon(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_swap_map_and_extents(ptr noundef %p, ptr nocapture noundef readonly %swap_header, ptr nocapture noundef writeonly %swap_map, ptr noundef %cluster_info, i32 noundef %maxpages, ptr noundef %span) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %maxpages, 255
  %div115 = lshr i32 %sub, 8
  %cluster_next = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 13
  %0 = ptrtoint ptr %cluster_next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cluster_next, align 4
  %div1116 = lshr i32 %1, 8
  %sub2 = add i32 %maxpages, -1
  %flags.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 8, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %flags.i.i, align 4
  %flags.i2.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 8, i32 1, i32 1
  %3 = ptrtoint ptr %flags.i2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %flags.i2.i, align 4
  %flags.i.i118 = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 27, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i.i118 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %flags.i.i118, align 4
  %flags.i2.i119 = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 27, i32 1, i32 1
  %5 = ptrtoint ptr %flags.i2.i119 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %flags.i2.i119, align 4
  %nr_badpages = getelementptr inbounds %struct.anon.112, ptr %swap_header, i32 0, i32 3
  %6 = ptrtoint ptr %nr_badpages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_badpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp211.not = icmp eq i32 %7, 0
  br i1 %cmp211.not, label %entry.for.cond9.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond9.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond9.preheader

for.body.lr.ph:                                   ; preds = %entry
  %last_page = getelementptr inbounds %struct.anon.112, ptr %swap_header, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %cluster_info, null
  %cluster_info.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 7
  br label %for.body

for.cond9.preheader:                              ; preds = %for.inc.for.cond9.preheader_crit_edge, %entry.for.cond9.preheader_crit_edge
  %nr_good_pages.0.lcssa = phi i32 [ %sub2, %entry.for.cond9.preheader_crit_edge ], [ %nr_good_pages.2.ph, %for.inc.for.cond9.preheader_crit_edge ]
  %or = or i32 %sub2, 255
  %add11 = add i32 %or, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add11, i32 %maxpages)
  %cmp12214 = icmp ugt i32 %add11, %maxpages
  br i1 %cmp12214, label %for.body13.lr.ph, label %for.cond9.preheader.for.end16_crit_edge

for.cond9.preheader.for.end16_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end16

for.body13.lr.ph:                                 ; preds = %for.cond9.preheader
  %tobool.not.i122 = icmp eq ptr %cluster_info, null
  %cluster_info.i.i128 = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 7
  br label %for.body13

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0213 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %nr_good_pages.0212 = phi i32 [ %sub2, %for.body.lr.ph ], [ %nr_good_pages.2.ph, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.anon.112, ptr %swap_header, i32 0, i32 7, i32 %i.0213
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %for.body.cleanup59_crit_edge, label %lor.lhs.false

for.body.cleanup59_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup59

lor.lhs.false:                                    ; preds = %for.body
  %10 = ptrtoint ptr %last_page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp4 = icmp ugt i32 %9, %11
  br i1 %cmp4, label %lor.lhs.false.cleanup59_crit_edge, label %if.end

lor.lhs.false.cleanup59_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup59

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %maxpages)
  %cmp5 = icmp ult i32 %9, %maxpages
  br i1 %cmp5, label %if.then6, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.then6:                                         ; preds = %if.end
  %arrayidx7 = getelementptr i8, ptr %swap_map, i32 %9
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 63, ptr %arrayidx7, align 1
  %dec = add i32 %nr_good_pages.0212, -1
  %div26.i = lshr i32 %9, 8
  br i1 %tobool.not.i, label %if.then6.for.inc_crit_edge, label %if.end.i

if.then6.for.inc_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end.i:                                         ; preds = %if.then6
  %flags.i.i120 = getelementptr %struct.swap_cluster_info, ptr %cluster_info, i32 %div26.i, i32 1
  %13 = ptrtoint ptr %flags.i.i120 to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i.i = load i32, ptr %flags.i.i120, align 4
  %and.i.i = and i32 %bf.load.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i.do.body.i_crit_edge, label %if.then1.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i

if.then1.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %cluster_info.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cluster_info.i.i, align 4
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i.i.i.i = load i32, ptr %flags.i.i, align 4
  %bf.lshr.i.i.i.i = lshr i32 %bf.load.i.i.i.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i.i.i.i, i32 %div26.i)
  %cmp.not.i.i = icmp eq i32 %bf.lshr.i.i.i.i, %div26.i
  br i1 %cmp.not.i.i, label %do.end7.i.i, label %do.body2.i.i, !prof !251

do.body2.i.i:                                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 526, 0\0A.popsection", ""() #19, !srcloc !252
  unreachable

do.end7.i.i:                                      ; preds = %if.then1.i
  %17 = ptrtoint ptr %flags.i2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load.i13.i.i.i = load i32, ptr %flags.i2.i, align 4
  %bf.lshr.i14.i.i.i = lshr i32 %bf.load.i13.i.i.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i14.i.i.i, i32 %div26.i)
  %cmp.i.i.i = icmp eq i32 %bf.lshr.i14.i.i.i, %div26.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %flags.i.i, align 4
  %19 = ptrtoint ptr %flags.i2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %flags.i2.i, align 4
  br label %alloc_cluster.exit.i

if.else.i.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %data.i16.i.i.i = getelementptr %struct.swap_cluster_info, ptr %15, i32 %div26.i, i32 1
  %20 = ptrtoint ptr %data.i16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i17.i.i.i = load i32, ptr %data.i16.i.i.i, align 4
  %bf.lshr.i18.i.i.i = and i32 %bf.load.i17.i.i.i, -256
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %bf.lshr.i18.i.i.i, ptr %flags.i.i, align 4
  br label %alloc_cluster.exit.i

alloc_cluster.exit.i:                             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %flags.i.i.i = getelementptr %struct.swap_cluster_info, ptr %15, i32 %div26.i, i32 1
  %22 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %flags.i.i.i, align 4
  %23 = ptrtoint ptr %flags.i.i120 to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load.i27.pr.i = load i32, ptr %flags.i.i120, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %alloc_cluster.exit.i, %if.end.i.do.body.i_crit_edge
  %bf.load.i27.i = phi i32 [ %bf.load.i.i, %if.end.i.do.body.i_crit_edge ], [ %bf.load.i27.pr.i, %alloc_cluster.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %bf.load.i27.i)
  %cmp.i = icmp ugt i32 %bf.load.i27.i, 65535
  br i1 %cmp.i, label %do.body8.i, label %do.end14.i, !prof !245

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 564, 0\0A.popsection", ""() #19, !srcloc !253
  unreachable

do.end14.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %24 = add nuw nsw i32 %bf.load.i27.i, 256
  %25 = ptrtoint ptr %flags.i.i120 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %flags.i.i120, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end14.i, %if.then6.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %nr_good_pages.2.ph = phi i32 [ %dec, %do.end14.i ], [ %dec, %if.then6.for.inc_crit_edge ], [ %nr_good_pages.0212, %if.end.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0213, 1
  %26 = ptrtoint ptr %nr_badpages to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_badpages, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond9.preheader_crit_edge

for.inc.for.cond9.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond9.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.body13:                                       ; preds = %inc_cluster_info_page.exit153.for.body13_crit_edge, %for.body13.lr.ph
  %i.1215 = phi i32 [ %maxpages, %for.body13.lr.ph ], [ %inc15, %inc_cluster_info_page.exit153.for.body13_crit_edge ]
  %div26.i121 = lshr i32 %i.1215, 8
  br i1 %tobool.not.i122, label %for.body13.inc_cluster_info_page.exit153_crit_edge, label %if.end.i127

for.body13.inc_cluster_info_page.exit153_crit_edge: ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #21
  br label %inc_cluster_info_page.exit153

if.end.i127:                                      ; preds = %for.body13
  %flags.i.i123 = getelementptr %struct.swap_cluster_info, ptr %cluster_info, i32 %div26.i121, i32 1
  %28 = ptrtoint ptr %flags.i.i123 to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load.i.i124 = load i32, ptr %flags.i.i123, align 4
  %and.i.i125 = and i32 %bf.load.i.i124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i125)
  %tobool.i.not.i126 = icmp eq i32 %and.i.i125, 0
  br i1 %tobool.i.not.i126, label %if.end.i127.do.body.i150_crit_edge, label %if.then1.i133

if.end.i127.do.body.i150_crit_edge:               ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i150

if.then1.i133:                                    ; preds = %if.end.i127
  %29 = ptrtoint ptr %cluster_info.i.i128 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cluster_info.i.i128, align 4
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load.i.i.i.i130 = load i32, ptr %flags.i.i, align 4
  %bf.lshr.i.i.i.i131 = lshr i32 %bf.load.i.i.i.i130, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i.i.i.i131, i32 %div26.i121)
  %cmp.not.i.i132 = icmp eq i32 %bf.lshr.i.i.i.i131, %div26.i121
  br i1 %cmp.not.i.i132, label %do.end7.i.i139, label %do.body2.i.i134, !prof !251

do.body2.i.i134:                                  ; preds = %if.then1.i133
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 526, 0\0A.popsection", ""() #19, !srcloc !252
  unreachable

do.end7.i.i139:                                   ; preds = %if.then1.i133
  %32 = ptrtoint ptr %flags.i2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load.i13.i.i.i136 = load i32, ptr %flags.i2.i, align 4
  %bf.lshr.i14.i.i.i137 = lshr i32 %bf.load.i13.i.i.i136, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i14.i.i.i137, i32 %div26.i121)
  %cmp.i.i.i138 = icmp eq i32 %bf.lshr.i14.i.i.i137, %div26.i121
  br i1 %cmp.i.i.i138, label %if.then.i.i.i140, label %if.else.i.i.i144

if.then.i.i.i140:                                 ; preds = %do.end7.i.i139
  call void @__sanitizer_cov_trace_pc() #21
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %flags.i.i, align 4
  %34 = ptrtoint ptr %flags.i2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %flags.i2.i, align 4
  br label %alloc_cluster.exit.i147

if.else.i.i.i144:                                 ; preds = %do.end7.i.i139
  call void @__sanitizer_cov_trace_pc() #21
  %data.i16.i.i.i141 = getelementptr %struct.swap_cluster_info, ptr %30, i32 %div26.i121, i32 1
  %35 = ptrtoint ptr %data.i16.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load.i17.i.i.i142 = load i32, ptr %data.i16.i.i.i141, align 4
  %bf.lshr.i18.i.i.i143 = and i32 %bf.load.i17.i.i.i142, -256
  %36 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %bf.lshr.i18.i.i.i143, ptr %flags.i.i, align 4
  br label %alloc_cluster.exit.i147

alloc_cluster.exit.i147:                          ; preds = %if.else.i.i.i144, %if.then.i.i.i140
  %flags.i.i.i145 = getelementptr %struct.swap_cluster_info, ptr %30, i32 %div26.i121, i32 1
  %37 = ptrtoint ptr %flags.i.i.i145 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %flags.i.i.i145, align 4
  %38 = ptrtoint ptr %flags.i.i123 to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load.i27.pr.i146 = load i32, ptr %flags.i.i123, align 4
  br label %do.body.i150

do.body.i150:                                     ; preds = %alloc_cluster.exit.i147, %if.end.i127.do.body.i150_crit_edge
  %bf.load.i27.i148 = phi i32 [ %bf.load.i.i124, %if.end.i127.do.body.i150_crit_edge ], [ %bf.load.i27.pr.i146, %alloc_cluster.exit.i147 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %bf.load.i27.i148)
  %cmp.i149 = icmp ugt i32 %bf.load.i27.i148, 65535
  br i1 %cmp.i149, label %do.body8.i151, label %do.end14.i152, !prof !245

do.body8.i151:                                    ; preds = %do.body.i150
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 564, 0\0A.popsection", ""() #19, !srcloc !253
  unreachable

do.end14.i152:                                    ; preds = %do.body.i150
  call void @__sanitizer_cov_trace_pc() #21
  %39 = add nuw nsw i32 %bf.load.i27.i148, 256
  %40 = ptrtoint ptr %flags.i.i123 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %flags.i.i123, align 4
  br label %inc_cluster_info_page.exit153

inc_cluster_info_page.exit153:                    ; preds = %do.end14.i152, %for.body13.inc_cluster_info_page.exit153_crit_edge
  %inc15 = add i32 %i.1215, 1
  %exitcond.not = icmp eq i32 %i.1215, %or
  br i1 %exitcond.not, label %inc_cluster_info_page.exit153.for.end16_crit_edge, label %inc_cluster_info_page.exit153.for.body13_crit_edge

inc_cluster_info_page.exit153.for.body13_crit_edge: ; preds = %inc_cluster_info_page.exit153
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body13

inc_cluster_info_page.exit153.for.end16_crit_edge: ; preds = %inc_cluster_info_page.exit153
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end16

for.end16:                                        ; preds = %inc_cluster_info_page.exit153.for.end16_crit_edge, %for.cond9.preheader.for.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_good_pages.0.lcssa)
  %tobool.not = icmp eq i32 %nr_good_pages.0.lcssa, 0
  br i1 %tobool.not, label %for.end16.do.end_crit_edge, label %if.then17

for.end16.do.end_crit_edge:                       ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

if.then17:                                        ; preds = %for.end16
  %41 = ptrtoint ptr %swap_map to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 63, ptr %swap_map, align 1
  %tobool.not.i154 = icmp eq ptr %cluster_info, null
  br i1 %tobool.not.i154, label %if.then17.inc_cluster_info_page.exit185_crit_edge, label %if.end.i159

if.then17.inc_cluster_info_page.exit185_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #21
  br label %inc_cluster_info_page.exit185

if.end.i159:                                      ; preds = %if.then17
  %flags.i.i155 = getelementptr %struct.swap_cluster_info, ptr %cluster_info, i32 0, i32 1
  %42 = ptrtoint ptr %flags.i.i155 to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load.i.i156 = load i32, ptr %flags.i.i155, align 4
  %and.i.i157 = and i32 %bf.load.i.i156, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i157)
  %tobool.i.not.i158 = icmp eq i32 %and.i.i157, 0
  br i1 %tobool.i.not.i158, label %if.end.i159.do.body.i182_crit_edge, label %if.then1.i165

if.end.i159.do.body.i182_crit_edge:               ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i182

if.then1.i165:                                    ; preds = %if.end.i159
  %cluster_info.i.i160 = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 7
  %43 = ptrtoint ptr %cluster_info.i.i160 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cluster_info.i.i160, align 4
  %45 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load.i.i.i.i162 = load i32, ptr %flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %bf.load.i.i.i.i162)
  %cmp.not.i.i164 = icmp ult i32 %bf.load.i.i.i.i162, 256
  br i1 %cmp.not.i.i164, label %do.end7.i.i171, label %do.body2.i.i166, !prof !251

do.body2.i.i166:                                  ; preds = %if.then1.i165
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 526, 0\0A.popsection", ""() #19, !srcloc !252
  unreachable

do.end7.i.i171:                                   ; preds = %if.then1.i165
  %46 = ptrtoint ptr %flags.i2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load.i13.i.i.i168 = load i32, ptr %flags.i2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %bf.load.i13.i.i.i168)
  %cmp.i.i.i170 = icmp ult i32 %bf.load.i13.i.i.i168, 256
  br i1 %cmp.i.i.i170, label %if.then.i.i.i172, label %if.else.i.i.i176

if.then.i.i.i172:                                 ; preds = %do.end7.i.i171
  call void @__sanitizer_cov_trace_pc() #21
  %47 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %flags.i.i, align 4
  %48 = ptrtoint ptr %flags.i2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %flags.i2.i, align 4
  br label %alloc_cluster.exit.i179

if.else.i.i.i176:                                 ; preds = %do.end7.i.i171
  call void @__sanitizer_cov_trace_pc() #21
  %data.i16.i.i.i173 = getelementptr %struct.swap_cluster_info, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %data.i16.i.i.i173 to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load.i17.i.i.i174 = load i32, ptr %data.i16.i.i.i173, align 4
  %bf.lshr.i18.i.i.i175 = and i32 %bf.load.i17.i.i.i174, -256
  %50 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %bf.lshr.i18.i.i.i175, ptr %flags.i.i, align 4
  br label %alloc_cluster.exit.i179

alloc_cluster.exit.i179:                          ; preds = %if.else.i.i.i176, %if.then.i.i.i172
  %flags.i.i.i177 = getelementptr %struct.swap_cluster_info, ptr %44, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i.i.i177 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %flags.i.i.i177, align 4
  %52 = ptrtoint ptr %flags.i.i155 to i32
  call void @__asan_load4_noabort(i32 %52)
  %bf.load.i27.pr.i178 = load i32, ptr %flags.i.i155, align 4
  br label %do.body.i182

do.body.i182:                                     ; preds = %alloc_cluster.exit.i179, %if.end.i159.do.body.i182_crit_edge
  %bf.load.i27.i180 = phi i32 [ %bf.load.i.i156, %if.end.i159.do.body.i182_crit_edge ], [ %bf.load.i27.pr.i178, %alloc_cluster.exit.i179 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %bf.load.i27.i180)
  %cmp.i181 = icmp ugt i32 %bf.load.i27.i180, 65535
  br i1 %cmp.i181, label %do.body8.i183, label %do.end14.i184, !prof !245

do.body8.i183:                                    ; preds = %do.body.i182
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 564, 0\0A.popsection", ""() #19, !srcloc !253
  unreachable

do.end14.i184:                                    ; preds = %do.body.i182
  call void @__sanitizer_cov_trace_pc() #21
  %53 = add nuw nsw i32 %bf.load.i27.i180, 256
  %54 = ptrtoint ptr %flags.i.i155 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %flags.i.i155, align 4
  br label %inc_cluster_info_page.exit185

inc_cluster_info_page.exit185:                    ; preds = %do.end14.i184, %if.then17.inc_cluster_info_page.exit185_crit_edge
  %max = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 5
  %55 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %maxpages, ptr %max, align 4
  %pages = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 11
  %56 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %nr_good_pages.0.lcssa, ptr %pages, align 4
  %swap_file1.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 19
  %57 = ptrtoint ptr %swap_file1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %swap_file1.i, align 4
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %58, i32 0, i32 18
  %59 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %f_mapping.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %62, align 8
  %65 = and i16 %64, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %65)
  %cmp.i186 = icmp eq i16 %65, 24576
  br i1 %cmp.i186, label %if.then.i, label %if.end.i189

if.then.i:                                        ; preds = %inc_cluster_info_page.exit185
  %swap_extent_root.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 17
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.then.i
  %parent.0.i.i = phi ptr [ null, %if.then.i ], [ %67, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %link.0.i.i = phi ptr [ %swap_extent_root.i.i, %if.then.i ], [ %rb_right.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %66 = ptrtoint ptr %link.0.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %link.0.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %67, null
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %67, i32 0, i32 1
  br i1 %tobool.not.i.i, label %while.end.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %tobool1.not.i.i = icmp eq ptr %parent.0.i.i, null
  br i1 %tobool1.not.i.i, label %while.end.i.i.if.end22.i.i_crit_edge, label %if.then.i.i

while.end.i.i.if.end22.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end22.i.i

if.then.i.i:                                      ; preds = %while.end.i.i
  %start_page2.i.i = getelementptr inbounds %struct.swap_extent, ptr %parent.0.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %start_page2.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %start_page2.i.i, align 4
  %nr_pages3.i.i = getelementptr inbounds %struct.swap_extent, ptr %parent.0.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %nr_pages3.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr_pages3.i.i, align 8
  %add.i.i = sub i32 0, %69
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %add.i.i)
  %cmp.not.i.i187 = icmp eq i32 %71, %add.i.i
  br i1 %cmp.not.i.i187, label %do.end12.i.i, label %do.body7.i.i, !prof !251

do.body7.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2282, 0\0A.popsection", ""() #19, !srcloc !286
  unreachable

do.end12.i.i:                                     ; preds = %if.then.i.i
  %start_block13.i.i = getelementptr inbounds %struct.swap_extent, ptr %parent.0.i.i, i32 0, i32 3
  %72 = ptrtoint ptr %start_block13.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %start_block13.i.i, align 8
  %conv.i.i = zext i32 %71 to i64
  %add15.i.i = sub nsw i64 0, %conv.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %73, i64 %add15.i.i)
  %cmp16.i.i = icmp eq i64 %73, %add15.i.i
  br i1 %cmp16.i.i, label %if.then18.i.i, label %do.end12.i.i.if.end22.i.i_crit_edge

do.end12.i.i.if.end22.i.i_crit_edge:              ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end22.i.i

if.then18.i.i:                                    ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %add20.i.i = add i32 %71, %maxpages
  %74 = ptrtoint ptr %nr_pages3.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add20.i.i, ptr %nr_pages3.i.i, align 8
  br label %add_swap_extent.exit.i

if.end22.i.i:                                     ; preds = %do.end12.i.i.if.end22.i.i_crit_edge, %while.end.i.i.if.end22.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %75 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3264, i32 noundef 32) #23
  %cmp23.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp23.i.i, label %if.end22.i.i.add_swap_extent.exit.i_crit_edge, label %if.end26.i.i

if.end22.i.i.add_swap_extent.exit.i_crit_edge:    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %add_swap_extent.exit.i

if.end26.i.i:                                     ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %start_page27.i.i = getelementptr inbounds %struct.swap_extent, ptr %call7.i.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %start_page27.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %start_page27.i.i, align 4
  %nr_pages28.i.i = getelementptr inbounds %struct.swap_extent, ptr %call7.i.i.i, i32 0, i32 2
  %77 = ptrtoint ptr %nr_pages28.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %maxpages, ptr %nr_pages28.i.i, align 8
  %start_block29.i.i = getelementptr inbounds %struct.swap_extent, ptr %call7.i.i.i, i32 0, i32 3
  %78 = ptrtoint ptr %start_block29.i.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 0, ptr %start_block29.i.i, align 8
  %79 = ptrtoint ptr %parent.0.i.i to i32
  %80 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %call7.i.i.i, align 8
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 2
  %82 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %rb_left.i.i.i, align 8
  %83 = ptrtoint ptr %link.0.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call7.i.i.i, ptr %link.0.i.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i, ptr noundef %swap_extent_root.i.i) #19
  br label %add_swap_extent.exit.i

add_swap_extent.exit.i:                           ; preds = %if.end26.i.i, %if.end22.i.i.add_swap_extent.exit.i_crit_edge, %if.then18.i.i
  %retval.0.i.i = phi i32 [ 0, %if.then18.i.i ], [ 1, %if.end26.i.i ], [ -12, %if.end22.i.i.add_swap_extent.exit.i_crit_edge ]
  %84 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pages, align 4
  %conv3.i = zext i32 %85 to i64
  %86 = ptrtoint ptr %span to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %conv3.i, ptr %span, align 8
  br label %setup_swap_extents.exit

if.end.i189:                                      ; preds = %inc_cluster_info_page.exit185
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %60, i32 0, i32 9
  %87 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %a_ops.i, align 4
  %swap_activate.i = getelementptr inbounds %struct.address_space_operations, ptr %88, i32 0, i32 20
  %89 = ptrtoint ptr %swap_activate.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %swap_activate.i, align 4
  %tobool.not.i188 = icmp eq ptr %90, null
  br i1 %tobool.not.i188, label %if.end21.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i189
  %call7.i = tail call i32 %90(ptr noundef %p, ptr noundef %58, ptr noundef %span) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7.i)
  %cmp8.i = icmp sgt i32 %call7.i, -1
  br i1 %cmp8.i, label %if.end11.i, label %if.then4.i.cleanup59_crit_edge

if.then4.i.cleanup59_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup59

if.end11.i:                                       ; preds = %if.then4.i
  %flags.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 1
  %91 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %92, 128
  store i32 %or.i, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool12.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end11.i.if.end23_crit_edge

if.end11.i.if.end23_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end23

if.then13.i:                                      ; preds = %if.end11.i
  %or15.i = or i32 %92, 384
  %93 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %or15.i, ptr %flags.i, align 4
  %94 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %max, align 4
  %swap_extent_root.i46.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 17
  br label %while.cond.i51.i

while.cond.i51.i:                                 ; preds = %while.cond.i51.i.while.cond.i51.i_crit_edge, %if.then13.i
  %parent.0.i47.i = phi ptr [ null, %if.then13.i ], [ %97, %while.cond.i51.i.while.cond.i51.i_crit_edge ]
  %link.0.i48.i = phi ptr [ %swap_extent_root.i46.i, %if.then13.i ], [ %rb_right.i50.i, %while.cond.i51.i.while.cond.i51.i_crit_edge ]
  %96 = ptrtoint ptr %link.0.i48.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %link.0.i48.i, align 4
  %tobool.not.i49.i = icmp eq ptr %97, null
  %rb_right.i50.i = getelementptr inbounds %struct.rb_node, ptr %97, i32 0, i32 1
  br i1 %tobool.not.i49.i, label %while.end.i53.i, label %while.cond.i51.i.while.cond.i51.i_crit_edge

while.cond.i51.i.while.cond.i51.i_crit_edge:      ; preds = %while.cond.i51.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.i51.i

while.end.i53.i:                                  ; preds = %while.cond.i51.i
  %tobool1.not.i52.i = icmp eq ptr %parent.0.i47.i, null
  br i1 %tobool1.not.i52.i, label %while.end.i53.i.if.end22.i69.i_crit_edge, label %if.then.i58.i

while.end.i53.i.if.end22.i69.i_crit_edge:         ; preds = %while.end.i53.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end22.i69.i

if.then.i58.i:                                    ; preds = %while.end.i53.i
  %start_page2.i54.i = getelementptr inbounds %struct.swap_extent, ptr %parent.0.i47.i, i32 0, i32 1
  %98 = ptrtoint ptr %start_page2.i54.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %start_page2.i54.i, align 4
  %nr_pages3.i55.i = getelementptr inbounds %struct.swap_extent, ptr %parent.0.i47.i, i32 0, i32 2
  %100 = ptrtoint ptr %nr_pages3.i55.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %nr_pages3.i55.i, align 8
  %add.i56.i = sub i32 0, %99
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %add.i56.i)
  %cmp.not.i57.i = icmp eq i32 %101, %add.i56.i
  br i1 %cmp.not.i57.i, label %do.end12.i64.i, label %do.body7.i59.i, !prof !251

do.body7.i59.i:                                   ; preds = %if.then.i58.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2282, 0\0A.popsection", ""() #19, !srcloc !286
  unreachable

do.end12.i64.i:                                   ; preds = %if.then.i58.i
  %start_block13.i60.i = getelementptr inbounds %struct.swap_extent, ptr %parent.0.i47.i, i32 0, i32 3
  %102 = ptrtoint ptr %start_block13.i60.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %start_block13.i60.i, align 8
  %conv.i61.i = zext i32 %101 to i64
  %add15.i62.i = sub nsw i64 0, %conv.i61.i
  call void @__sanitizer_cov_trace_cmp8(i64 %103, i64 %add15.i62.i)
  %cmp16.i63.i = icmp eq i64 %103, %add15.i62.i
  br i1 %cmp16.i63.i, label %if.then18.i66.i, label %do.end12.i64.i.if.end22.i69.i_crit_edge

do.end12.i64.i.if.end22.i69.i_crit_edge:          ; preds = %do.end12.i64.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end22.i69.i

if.then18.i66.i:                                  ; preds = %do.end12.i64.i
  call void @__sanitizer_cov_trace_pc() #21
  %add20.i65.i = add i32 %101, %95
  %104 = ptrtoint ptr %nr_pages3.i55.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %add20.i65.i, ptr %nr_pages3.i55.i, align 8
  br label %add_swap_extent.exit77.i

if.end22.i69.i:                                   ; preds = %do.end12.i64.i.if.end22.i69.i_crit_edge, %while.end.i53.i.if.end22.i69.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %105 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i67.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %105, i32 noundef 3264, i32 noundef 32) #23
  %cmp23.i68.i = icmp eq ptr %call7.i.i67.i, null
  br i1 %cmp23.i68.i, label %if.end22.i69.i.add_swap_extent.exit77.i_crit_edge, label %if.end26.i75.i

if.end22.i69.i.add_swap_extent.exit77.i_crit_edge: ; preds = %if.end22.i69.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %add_swap_extent.exit77.i

if.end26.i75.i:                                   ; preds = %if.end22.i69.i
  call void @__sanitizer_cov_trace_pc() #21
  %start_page27.i70.i = getelementptr inbounds %struct.swap_extent, ptr %call7.i.i67.i, i32 0, i32 1
  %106 = ptrtoint ptr %start_page27.i70.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %start_page27.i70.i, align 4
  %nr_pages28.i71.i = getelementptr inbounds %struct.swap_extent, ptr %call7.i.i67.i, i32 0, i32 2
  %107 = ptrtoint ptr %nr_pages28.i71.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %95, ptr %nr_pages28.i71.i, align 8
  %start_block29.i72.i = getelementptr inbounds %struct.swap_extent, ptr %call7.i.i67.i, i32 0, i32 3
  %108 = ptrtoint ptr %start_block29.i72.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 0, ptr %start_block29.i72.i, align 8
  %109 = ptrtoint ptr %parent.0.i47.i to i32
  %110 = ptrtoint ptr %call7.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %call7.i.i67.i, align 8
  %rb_right.i.i73.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i67.i, i32 0, i32 1
  %111 = ptrtoint ptr %rb_right.i.i73.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %rb_right.i.i73.i, align 4
  %rb_left.i.i74.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i67.i, i32 0, i32 2
  %112 = ptrtoint ptr %rb_left.i.i74.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %rb_left.i.i74.i, align 8
  %113 = ptrtoint ptr %link.0.i48.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call7.i.i67.i, ptr %link.0.i48.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i67.i, ptr noundef %swap_extent_root.i46.i) #19
  br label %add_swap_extent.exit77.i

add_swap_extent.exit77.i:                         ; preds = %if.end26.i75.i, %if.end22.i69.i.add_swap_extent.exit77.i_crit_edge, %if.then18.i66.i
  %retval.0.i76.i = phi i32 [ 0, %if.then18.i66.i ], [ 1, %if.end26.i75.i ], [ -12, %if.end22.i69.i.add_swap_extent.exit77.i_crit_edge ]
  %114 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pages, align 4
  %conv19.i = zext i32 %115 to i64
  %116 = ptrtoint ptr %span to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %conv19.i, ptr %span, align 8
  br label %setup_swap_extents.exit

if.end21.i:                                       ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #21
  %call22.i = tail call i32 @generic_swapfile_activate(ptr noundef %p, ptr noundef %58, ptr noundef %span) #19
  br label %setup_swap_extents.exit

setup_swap_extents.exit:                          ; preds = %if.end21.i, %add_swap_extent.exit77.i, %add_swap_extent.exit.i
  %retval.0.i = phi i32 [ %retval.0.i.i, %add_swap_extent.exit.i ], [ %call22.i, %if.end21.i ], [ %retval.0.i76.i, %add_swap_extent.exit77.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp19 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp19, label %setup_swap_extents.exit.cleanup59_crit_edge, label %setup_swap_extents.exit.if.end23_crit_edge

setup_swap_extents.exit.if.end23_crit_edge:       ; preds = %setup_swap_extents.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end23

setup_swap_extents.exit.cleanup59_crit_edge:      ; preds = %setup_swap_extents.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup59

if.end23:                                         ; preds = %setup_swap_extents.exit.if.end23_crit_edge, %if.end11.i.if.end23_crit_edge
  %retval.0.i204 = phi i32 [ %retval.0.i, %setup_swap_extents.exit.if.end23_crit_edge ], [ %call7.i, %if.end11.i.if.end23_crit_edge ]
  %117 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %phi.cmp = icmp eq i32 %118, 0
  br i1 %phi.cmp, label %if.end23.do.end_crit_edge, label %if.end27

if.end23.do.end_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

do.end:                                           ; preds = %if.end23.do.end_crit_edge, %for.end16.do.end_crit_edge
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #22
  br label %cleanup59

if.end27:                                         ; preds = %if.end23
  br i1 %tobool.not.i154, label %if.end27.cleanup59_crit_edge, label %for.cond31.preheader

if.end27.cleanup59_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup59

for.cond31.preheader:                             ; preds = %if.end27
  %sub38 = add nuw nsw i32 %div115, 63
  %div39117 = lshr i32 %sub38, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub)
  %cmp40216.not = icmp ult i32 %sub, 256
  %umax = call i32 @llvm.umax.i32(i32 %div39117, i32 1)
  br label %for.body33

for.body33:                                       ; preds = %for.inc56.for.body33_crit_edge, %for.cond31.preheader
  %k.0218 = phi i32 [ 0, %for.cond31.preheader ], [ %inc57, %for.inc56.for.body33_crit_edge ]
  %add34 = add nuw nsw i32 %k.0218, %div1116
  %rem35 = and i32 %add34, 63
  br i1 %cmp40216.not, label %for.body33.for.inc56_crit_edge, label %for.body33.for.body41_crit_edge

for.body33.for.body41_crit_edge:                  ; preds = %for.body33
  br label %for.body41

for.body33.for.inc56_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc56

for.body41:                                       ; preds = %for.inc53.for.body41_crit_edge, %for.body33.for.body41_crit_edge
  %i.2217 = phi i32 [ %inc54, %for.inc53.for.body41_crit_edge ], [ 0, %for.body33.for.body41_crit_edge ]
  %mul = shl i32 %i.2217, 6
  %add42 = or i32 %mul, %rem35
  call void @__sanitizer_cov_trace_cmp4(i32 %add42, i32 %div115)
  %cmp43.not = icmp ult i32 %add42, %div115
  br i1 %cmp43.not, label %if.end45, label %for.body41.for.inc53_crit_edge

for.body41.for.inc53_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc53

if.end45:                                         ; preds = %for.body41
  %data.i = getelementptr %struct.swap_cluster_info, ptr %cluster_info, i32 %add42, i32 1
  %119 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %bf.load.i = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %bf.load.i)
  %tobool48.not = icmp ult i32 %bf.load.i, 256
  br i1 %tobool48.not, label %if.end50, label %if.end45.for.inc53_crit_edge

if.end45.for.inc53_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc53

if.end50:                                         ; preds = %if.end45
  %bf.clear.i = and i32 %bf.load.i, -256
  %bf.set.i = or i32 %bf.clear.i, 1
  %120 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %bf.set.i, ptr %data.i, align 4
  %121 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %bf.load.i.i.i = load i32, ptr %flags.i.i, align 4
  %and.i.i.i = and i32 %bf.load.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.else.i, label %if.then.i193

if.then.i193:                                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #21
  %bf.shl.i.i = shl i32 %add42, 8
  %122 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %bf.shl.i.i, ptr %flags.i.i, align 4
  br label %for.inc53.sink.split

if.else.i:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #21
  %123 = ptrtoint ptr %flags.i2.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %bf.load.i.i194 = load i32, ptr %flags.i2.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i194, 8
  %add.ptr.i = getelementptr %struct.swap_cluster_info, ptr %cluster_info, i32 %bf.lshr.i.i
  tail call void @_raw_spin_lock_nested(ptr noundef %add.ptr.i, i32 noundef 1) #19
  %data.i18.i = getelementptr %struct.swap_cluster_info, ptr %cluster_info, i32 %bf.lshr.i.i, i32 1
  %124 = ptrtoint ptr %data.i18.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %bf.load.i19.i = load i32, ptr %data.i18.i, align 4
  %bf.shl.i20.i = shl i32 %add42, 8
  %bf.clear.i.i = and i32 %bf.load.i19.i, 255
  %bf.set.i.i = or i32 %bf.clear.i.i, %bf.shl.i20.i
  store i32 %bf.set.i.i, ptr %data.i18.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #19
  br label %for.inc53.sink.split

for.inc53.sink.split:                             ; preds = %if.else.i, %if.then.i193
  %bf.shl.i20.i.sink = phi i32 [ %bf.shl.i20.i, %if.else.i ], [ %bf.shl.i.i, %if.then.i193 ]
  %125 = ptrtoint ptr %flags.i2.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %bf.shl.i20.i.sink, ptr %flags.i2.i, align 4
  br label %for.inc53

for.inc53:                                        ; preds = %for.inc53.sink.split, %if.end45.for.inc53_crit_edge, %for.body41.for.inc53_crit_edge
  %inc54 = add nuw nsw i32 %i.2217, 1
  %exitcond220.not = icmp eq i32 %inc54, %umax
  br i1 %exitcond220.not, label %for.inc53.for.inc56_crit_edge, label %for.inc53.for.body41_crit_edge

for.inc53.for.body41_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body41

for.inc53.for.inc56_crit_edge:                    ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc56

for.inc56:                                        ; preds = %for.inc53.for.inc56_crit_edge, %for.body33.for.inc56_crit_edge
  %inc57 = add nuw nsw i32 %k.0218, 1
  %exitcond221.not = icmp eq i32 %inc57, 64
  br i1 %exitcond221.not, label %for.inc56.cleanup59_crit_edge, label %for.inc56.for.body33_crit_edge

for.inc56.for.body33_crit_edge:                   ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body33

for.inc56.cleanup59_crit_edge:                    ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup59

cleanup59:                                        ; preds = %for.inc56.cleanup59_crit_edge, %if.end27.cleanup59_crit_edge, %do.end, %setup_swap_extents.exit.cleanup59_crit_edge, %if.then4.i.cleanup59_crit_edge, %lor.lhs.false.cleanup59_crit_edge, %for.body.cleanup59_crit_edge
  %retval.2 = phi i32 [ -22, %do.end ], [ %retval.0.i, %setup_swap_extents.exit.cleanup59_crit_edge ], [ %retval.0.i204, %if.end27.cleanup59_crit_edge ], [ %call7.i, %if.then4.i.cleanup59_crit_edge ], [ %retval.0.i204, %for.inc56.cleanup59_crit_edge ], [ -22, %for.body.cleanup59_crit_edge ], [ -22, %lor.lhs.false.cleanup59_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @discard_swap(ptr noundef %si) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %swap_extent_root.i = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 17
  %call.i = tail call ptr @rb_first(ptr noundef %swap_extent_root.i) #19
  %nr_pages = getelementptr inbounds %struct.swap_extent, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_pages, align 8
  %conv = zext i32 %1 to i64
  %sub = shl nuw nsw i64 %conv, 3
  %shl2 = add nsw i64 %sub, -8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl2)
  %tobool.not = icmp eq i64 %shl2, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end7

if.then:                                          ; preds = %entry
  %start_block1 = getelementptr inbounds %struct.swap_extent, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %start_block1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %start_block1, align 8
  %add = shl i64 %3, 3
  %shl = add i64 %add, 8
  %bdev = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 18
  %4 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev, align 4
  %call3 = tail call i32 @blkdev_issue_discard(ptr noundef %5, i64 noundef %shl, i64 noundef %shl2, i32 noundef 3264, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 185, i32 noundef 0) #19
  %call.i40 = tail call i32 @__cond_resched() #19
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %call.i41 = tail call ptr @rb_next(ptr noundef %call.i) #19
  %tobool9.not44 = icmp eq ptr %call.i41, null
  br i1 %tobool9.not44, label %if.end7.cleanup_crit_edge, label %for.body.lr.ph

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end7
  %bdev15 = getelementptr inbounds %struct.swap_info_struct, ptr %si, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %for.body.lr.ph
  %se.045 = phi ptr [ %call.i41, %for.body.lr.ph ], [ %call.i43, %if.end19.for.body_crit_edge ]
  %start_block10 = getelementptr inbounds %struct.swap_extent, ptr %se.045, i32 0, i32 3
  %6 = ptrtoint ptr %start_block10 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start_block10, align 8
  %shl11 = shl i64 %7, 3
  %nr_pages12 = getelementptr inbounds %struct.swap_extent, ptr %se.045, i32 0, i32 2
  %8 = ptrtoint ptr %nr_pages12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_pages12, align 8
  %conv13 = zext i32 %9 to i64
  %shl14 = shl nuw nsw i64 %conv13, 3
  %10 = ptrtoint ptr %bdev15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bdev15, align 4
  %call16 = tail call i32 @blkdev_issue_discard(ptr noundef %11, i64 noundef %shl11, i64 noundef %shl14, i32 noundef 3264, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end19:                                         ; preds = %for.body
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 197, i32 noundef 0) #19
  %call.i42 = tail call i32 @__cond_resched() #19
  %call.i43 = tail call ptr @rb_next(ptr noundef nonnull %se.045) #19
  %tobool9.not = icmp eq ptr %call.i43, null
  br i1 %tobool9.not, label %if.end19.cleanup_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup:                                          ; preds = %if.end19.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %call16, %for.body.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_swap_address_space(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inode_drain_writes(ptr noundef %inode) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @inode_dio_wait(ptr noundef %inode) #19
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %1, i64 noundef 0, i64 noundef 9223372036854775807) #19
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_swap_info(ptr noundef %p, i32 noundef %prio, ptr noundef %swap_map, ptr noundef %cluster_info, ptr noundef %frontswap_map) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 4
  %conv = sext i8 %1 to i32
  tail call void @frontswap_init(i32 noundef %conv, ptr noundef %frontswap_map) #19
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #19
  %lock = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %prio)
  %cmp.i = icmp sgt i32 %prio, -1
  br i1 %cmp.i, label %entry.if.end.i_crit_edge, label %if.else.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %2 = load i32, ptr @least_priority, align 4
  %dec.i = add i32 %2, -1
  store i32 %dec.i, ptr @least_priority, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %entry.if.end.i_crit_edge
  %conv2.sink.in.i = phi i32 [ %dec.i, %if.else.i ], [ %prio, %entry.if.end.i_crit_edge ]
  %conv2.sink.i = trunc i32 %conv2.sink.in.i to i16
  %3 = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv2.sink.i, ptr %3, align 4
  %sext.i = shl i32 %conv2.sink.in.i, 16
  %conv5.i = ashr exact i32 %sext.i, 16
  %sub.i = sub nsw i32 0, %conv5.i
  %list.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 3
  %5 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.i, ptr %list.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv2.sink.i)
  %cmp11.i = icmp sgt i16 %conv2.sink.i, -1
  br i1 %cmp11.i, label %if.end.i.setup_swap_info.exit_crit_edge, label %if.else18.i

if.end.i.setup_swap_info.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %setup_swap_info.exit

if.else18.i:                                      ; preds = %if.end.i
  %bdev1.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 18
  %6 = ptrtoint ptr %bdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdev1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.else18.i.swap_node.exit.i_crit_edge

if.else18.i.swap_node.exit.i_crit_edge:           ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %swap_node.exit.i

if.end.i.i:                                       ; preds = %if.else18.i
  %swap_file.i.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 19
  %8 = ptrtoint ptr %swap_file.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %swap_file.i.i, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i.i, align 4
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 26
  %14 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdev.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.else25.i_crit_edge, label %if.end.i.i.swap_node.exit.i_crit_edge

if.end.i.i.swap_node.exit.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %swap_node.exit.i

if.end.i.i.if.else25.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else25.i

swap_node.exit.i:                                 ; preds = %if.end.i.i.swap_node.exit.i_crit_edge, %if.else18.i.swap_node.exit.i_crit_edge
  %bdev.09.i.i = phi ptr [ %15, %if.end.i.i.swap_node.exit.i_crit_edge ], [ %7, %if.else18.i.swap_node.exit.i_crit_edge ]
  %bd_disk.i.i = getelementptr inbounds %struct.block_device, ptr %bdev.09.i.i, i32 0, i32 17
  %16 = ptrtoint ptr %bd_disk.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bd_disk.i.i, align 8
  %node_id.i.i = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %node_id.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %node_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp19.i = icmp eq i32 %19, 0
  br i1 %cmp19.i, label %swap_node.exit.i.setup_swap_info.exit_crit_edge, label %swap_node.exit.i.if.else25.i_crit_edge

swap_node.exit.i.if.else25.i_crit_edge:           ; preds = %swap_node.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else25.i

swap_node.exit.i.setup_swap_info.exit_crit_edge:  ; preds = %swap_node.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %setup_swap_info.exit

if.else25.i:                                      ; preds = %swap_node.exit.i.if.else25.i_crit_edge, %if.end.i.i.if.else25.i_crit_edge
  br label %setup_swap_info.exit

setup_swap_info.exit:                             ; preds = %if.else25.i, %swap_node.exit.i.setup_swap_info.exit_crit_edge, %if.end.i.setup_swap_info.exit_crit_edge
  %sub.sink.i = phi i32 [ %sub.i, %if.else25.i ], [ %sub.i, %if.end.i.setup_swap_info.exit_crit_edge ], [ 1, %swap_node.exit.i.setup_swap_info.exit_crit_edge ]
  %avail_lists.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 28
  %20 = ptrtoint ptr %avail_lists.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.sink.i, ptr %avail_lists.i, align 4
  %swap_map34.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 6
  %21 = ptrtoint ptr %swap_map34.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %swap_map, ptr %swap_map34.i, align 4
  %cluster_info35.i = getelementptr inbounds %struct.swap_info_struct, ptr %p, i32 0, i32 7
  %22 = ptrtoint ptr %cluster_info35.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cluster_info, ptr %cluster_info35.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #19
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_lock) #19
  tail call void @percpu_ref_resurrect(ptr noundef %p) #19
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #19
  tail call void @_raw_spin_lock(ptr noundef %lock) #19
  tail call fastcc void @_enable_swap_info(ptr noundef %p)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #19
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_lock) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_swap_slots_cache() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @percpu_ref_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @swap_users_ref_free(ptr noundef %ref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %comp = getelementptr inbounds %struct.swap_info_struct, ptr %ref, i32 0, i32 21
  tail call void @complete(ptr noundef %comp) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_dev(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_swapfile_activate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @frontswap_init(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_resurrect(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_blkcg() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #17

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #19

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #20 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #17 = { nounwind readonly }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #21 = { nomerge }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(2) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !34, !35, !37, !39, !41, !42, !43, !44, !45, !46, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !70, !72, !73, !74, !76, !77, !79, !80, !82, !84, !85, !86, !88, !89, !90, !92, !93, !95, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !117, !118, !119, !120, !121, !123, !125, !127, !129, !130, !131, !133, !135, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !159, !160, !161, !162, !164, !165, !167, !168, !170, !171, !172, !173, !175, !176, !177, !178, !179, !180, !181, !182, !184, !185, !187, !188, !190, !191, !193, !195, !197, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !224, !226, !227, !228, !230, !231, !232}
!llvm.named.register.sp = !{!233}
!llvm.module.flags = !{!234, !235, !236, !237, !238, !239, !240, !241}
!llvm.ident = !{!242}

!0 = !{ptr @__ksymtab_nr_swap_pages, !1, !"__ksymtab_nr_swap_pages", i1 false, i1 false}
!1 = !{!"../mm/swapfile.c", i32 60, i32 1}
!2 = !{ptr @nr_rotate_swap, !3, !"nr_rotate_swap", i1 false, i1 false}
!3 = !{!"../mm/swapfile.c", i32 99, i32 10}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../mm/swapfile.c", i32 1048, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../mm/swapfile.c", i32 1075, i32 4}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../mm/swapfile.c", i32 1078, i32 4}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../mm/swapfile.c", i32 1094, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @get_swap_pages.__UNIQUE_ID_ddebug358, !12, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../mm/swapfile.c", i32 1291, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @get_swap_device._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @get_swap_device._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../mm/swapfile.c", i32 1669, i32 2}
!23 = !{ptr @__ksymtab_add_swap_extent, !24, !"__ksymtab_add_swap_extent", i1 false, i1 false}
!24 = !{!"../mm/swapfile.c", i32 2302, i32 1}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../mm/swapfile.c", i32 2468, i32 1}
!27 = !{ptr @event_enter__swapoff, !26, !"event_enter__swapoff", i1 false, i1 false}
!28 = !{ptr @__event_enter__swapoff, !26, !"__event_enter__swapoff", i1 false, i1 false}
!29 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @event_exit__swapoff, !26, !"event_exit__swapoff", i1 false, i1 false}
!31 = !{ptr @__event_exit__swapoff, !26, !"__event_exit__swapoff", i1 false, i1 false}
!32 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @__syscall_meta__swapoff, !26, !"__syscall_meta__swapoff", i1 false, i1 false}
!34 = !{ptr @__p_syscall_meta__swapoff, !26, !"__p_syscall_meta__swapoff", i1 false, i1 false}
!35 = !{ptr @__initcall__kmod_swapfile__374_2773_procswaps_init6, !36, !"__initcall__kmod_swapfile__374_2773_procswaps_init6", i1 false, i1 false}
!36 = !{!"../mm/swapfile.c", i32 2773, i32 1}
!37 = !{ptr @__initcall__kmod_swapfile__376_2782_max_swapfiles_check7, !38, !"__initcall__kmod_swapfile__376_2782_max_swapfiles_check7", i1 false, i1 false}
!38 = !{!"../mm/swapfile.c", i32 2782, i32 1}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../mm/swapfile.c", i32 3077, i32 1}
!41 = !{ptr @event_enter__swapon, !40, !"event_enter__swapon", i1 false, i1 false}
!42 = !{ptr @__event_enter__swapon, !40, !"__event_enter__swapon", i1 false, i1 false}
!43 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @event_exit__swapon, !40, !"event_exit__swapon", i1 false, i1 false}
!45 = !{ptr @__event_exit__swapon, !40, !"__event_exit__swapon", i1 false, i1 false}
!46 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @__syscall_meta__swapon, !40, !"__syscall_meta__swapon", i1 false, i1 false}
!48 = !{ptr @__p_syscall_meta__swapon, !40, !"__p_syscall_meta__swapon", i1 false, i1 false}
!49 = !{ptr @__ksymtab_swapcache_mapping, !50, !"__ksymtab_swapcache_mapping", i1 false, i1 false}
!50 = !{!"../mm/swapfile.c", i32 3493, i32 1}
!51 = !{ptr @__ksymtab___page_file_index, !52, !"__ksymtab___page_file_index", i1 false, i1 false}
!52 = !{!"../mm/swapfile.c", i32 3500, i32 1}
!53 = !{ptr @__initcall__kmod_swapfile__398_3778_swapfile_init4, !54, !"__initcall__kmod_swapfile__398_3778_swapfile_init4", i1 false, i1 false}
!54 = !{!"../mm/swapfile.c", i32 3778, i32 1}
!55 = !{ptr @nr_swapfiles, !56, !"nr_swapfiles", i1 false, i1 false}
!56 = !{!"../mm/swapfile.c", i32 53, i32 21}
!57 = !{ptr @nr_swap_pages, !58, !"nr_swap_pages", i1 false, i1 false}
!58 = !{!"../mm/swapfile.c", i32 54, i32 15}
!59 = !{ptr @total_swap_pages, !60, !"total_swap_pages", i1 false, i1 false}
!60 = !{!"../mm/swapfile.c", i32 62, i32 6}
!61 = !{ptr @swap_avail_heads, !62, !"swap_avail_heads", i1 false, i1 false}
!62 = !{!"../mm/swapfile.c", i32 88, i32 27}
!63 = !{ptr @swap_info, !64, !"swap_info", i1 false, i1 false}
!64 = !{!"../mm/swapfile.c", i32 91, i32 26}
!65 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../mm/swapfile.c", i32 89, i32 8}
!67 = !{ptr @swap_avail_lock, !66, !"swap_avail_lock", i1 false, i1 false}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../mm/swapfile.c", i32 1005, i32 3}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!72 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/percpu-refcount.h", i32 280, i32 2}
!76 = !{ptr @.str.18, !75, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!79 = !{ptr @.str.19, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @Bad_file, !81, !"Bad_file", i1 false, i1 false}
!81 = !{!"../mm/swapfile.c", i32 65, i32 19}
!82 = !{ptr @.str.20, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../mm/swapfile.c", i32 1165, i32 2}
!84 = !{ptr @_swap_info_get._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @_swap_info_get._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.21, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../mm/swapfile.c", i32 1142, i32 2}
!88 = !{ptr @__swap_info_get._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @__swap_info_get._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @__swap_info_get._entry.22, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../mm/swapfile.c", i32 1145, i32 2}
!92 = !{ptr @__swap_info_get._entry_ptr.23, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @__swap_info_get._entry.24, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../mm/swapfile.c", i32 1148, i32 2}
!95 = !{ptr @__swap_info_get._entry_ptr.25, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @Bad_offset, !97, !"Bad_offset", i1 false, i1 false}
!97 = !{!"../mm/swapfile.c", i32 67, i32 19}
!98 = !{ptr @Unused_file, !99, !"Unused_file", i1 false, i1 false}
!99 = !{!"../mm/swapfile.c", i32 66, i32 19}
!100 = !{ptr @Unused_offset, !101, !"Unused_offset", i1 false, i1 false}
!101 = !{!"../mm/swapfile.c", i32 68, i32 19}
!102 = !{ptr @.str.26, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!104 = distinct !{null, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../mm/swapfile.c", i32 1615, i32 2}
!106 = !{ptr @.str.28, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!108 = distinct !{null, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!110 = !{ptr @.str.30, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../include/linux/mm.h", i32 717, i32 2}
!112 = !{ptr @.str.31, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../mm/swapfile.c", i32 52, i32 8}
!114 = !{ptr @swap_lock, !113, !"swap_lock", i1 false, i1 false}
!115 = !{ptr @swap_active_head, !116, !"swap_active_head", i1 false, i1 false}
!116 = !{!"../mm/swapfile.c", i32 74, i32 8}
!117 = !{ptr @.str.32, !26, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @types__swapoff, !26, !"types__swapoff", i1 false, i1 false}
!119 = !{ptr @.str.33, !26, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @args__swapoff, !26, !"args__swapoff", i1 false, i1 false}
!121 = !{ptr @least_priority, !122, !"least_priority", i1 false, i1 false}
!122 = !{!"../mm/swapfile.c", i32 63, i32 12}
!123 = !{ptr @.str.34, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!125 = !{ptr @.str.35, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!127 = !{ptr @.str.36, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../mm/swapfile.c", i32 93, i32 8}
!129 = !{ptr @.str.37, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @swapon_mutex, !128, !"swapon_mutex", i1 false, i1 false}
!131 = !{ptr @proc_poll_event, !132, !"proc_poll_event", i1 false, i1 false}
!132 = !{!"../mm/swapfile.c", i32 97, i32 17}
!133 = !{ptr @.str.38, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../mm/swapfile.c", i32 95, i32 8}
!135 = !{ptr @proc_poll_wait, !134, !"proc_poll_wait", i1 false, i1 false}
!136 = !{ptr @.str.39, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../mm/swapfile.c", i32 2770, i32 14}
!138 = !{ptr @swaps_proc_ops, !139, !"swaps_proc_ops", i1 false, i1 false}
!139 = !{!"../mm/swapfile.c", i32 2759, i32 30}
!140 = !{ptr @swaps_op, !141, !"swaps_op", i1 false, i1 false}
!141 = !{!"../mm/swapfile.c", i32 2738, i32 36}
!142 = !{ptr @.str.40, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../mm/swapfile.c", i32 2719, i32 18}
!144 = !{ptr @.str.41, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../mm/swapfile.c", i32 2727, i32 34}
!146 = !{ptr @.str.42, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../mm/swapfile.c", i32 2728, i32 19}
!148 = !{ptr @.str.43, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../mm/swapfile.c", i32 2729, i32 29}
!150 = !{ptr @.str.44, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../mm/swapfile.c", i32 2731, i32 5}
!152 = !{ptr @.str.45, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../mm/swapfile.c", i32 2731, i32 19}
!154 = !{ptr @.str.46, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../mm/swapfile.c", i32 2732, i32 30}
!156 = !{ptr @.str.47, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../mm/swapfile.c", i32 2732, i32 37}
!158 = !{ptr @.str.48, !40, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @types__swapon, !40, !"types__swapon", i1 false, i1 false}
!160 = !{ptr @.str.49, !40, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @args__swapon, !40, !"args__swapon", i1 false, i1 false}
!162 = !{ptr @__do_sys_swapon.__key, !163, !"__key", i1 false, i1 false}
!163 = !{!"../mm/swapfile.c", i32 3110, i32 2}
!164 = !{ptr @.str.50, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @__do_sys_swapon.__key.51, !166, !"__key", i1 false, i1 false}
!166 = !{!"../mm/swapfile.c", i32 3205, i32 4}
!167 = !{ptr @.str.52, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.53, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../mm/swapfile.c", i32 3263, i32 5}
!170 = !{ptr @.str.54, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @__do_sys_swapon._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @__do_sys_swapon._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.56, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../mm/swapfile.c", i32 3290, i32 2}
!175 = !{ptr @__do_sys_swapon._entry.55, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @__do_sys_swapon._entry_ptr.57, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.58, !174, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.59, !174, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.60, !174, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.61, !174, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.62, !174, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @alloc_swap_info.__key, !183, !"__key", i1 false, i1 false}
!183 = !{!"../mm/swapfile.c", i32 2839, i32 2}
!184 = !{ptr @.str.63, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @alloc_swap_info.__key.64, !186, !"__key", i1 false, i1 false}
!186 = !{!"../mm/swapfile.c", i32 2840, i32 2}
!187 = !{ptr @.str.65, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @init_completion.__key, !189, !"__key", i1 false, i1 false}
!189 = !{!"../include/linux/completion.h", i32 87, i32 2}
!190 = !{ptr @.str.66, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.67, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!193 = !{ptr @.str.68, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../mm/swapfile.c", i32 2915, i32 13}
!195 = !{ptr @.str.69, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../mm/swapfile.c", i32 2916, i32 3}
!197 = !{ptr @.str.70, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @read_swap_header._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @read_swap_header._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.72, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../mm/swapfile.c", i32 2932, i32 3}
!202 = !{ptr @read_swap_header._entry.71, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @read_swap_header._entry_ptr.73, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.75, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../mm/swapfile.c", i32 2944, i32 3}
!206 = !{ptr @read_swap_header._entry.74, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @read_swap_header._entry_ptr.76, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.78, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../mm/swapfile.c", i32 2948, i32 3}
!210 = !{ptr @read_swap_header._entry.77, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @read_swap_header._entry_ptr.79, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.81, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../mm/swapfile.c", i32 2964, i32 3}
!214 = !{ptr @read_swap_header._entry.80, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @read_swap_header._entry_ptr.82, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.83, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../mm/swapfile.c", i32 3035, i32 3}
!218 = !{ptr @setup_swap_map_and_extents._entry, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @setup_swap_map_and_extents._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!220 = distinct !{null, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!222 = !{ptr @.str.85, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!224 = distinct !{null, !225, !"__warned", i1 false, i1 false}
!225 = !{!"../include/linux/cgroup.h", i32 494, i32 9}
!226 = !{ptr @.str.86, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.87, !225, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.88, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../mm/swapfile.c", i32 3769, i32 3}
!230 = !{ptr @.str.89, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @swapfile_init._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @swapfile_init._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{!"sp"}
!234 = !{i32 1, !"wchar_size", i32 2}
!235 = !{i32 1, !"min_enum_size", i32 4}
!236 = !{i32 8, !"branch-target-enforcement", i32 0}
!237 = !{i32 8, !"sign-return-address", i32 0}
!238 = !{i32 8, !"sign-return-address-all", i32 0}
!239 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!240 = !{i32 7, !"uwtable", i32 1}
!241 = !{i32 7, !"frame-pointer", i32 2}
!242 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!243 = !{i64 2156058927, i64 2156059405, i64 2156058964, i64 2156059020, i64 2156059054, i64 2156059078, i64 2156059119, i64 2156059140, i64 2156059168, i64 2156059202}
!244 = !{i64 2148762423, i64 2148762449, i64 2148762478, i64 2148762512, i64 2148762543, i64 2148762566}
!245 = !{!"branch_weights", i32 1, i32 2000}
!246 = !{i64 2148360635, i64 2148360640, i64 2148360653, i64 2148360697, i64 2148360731, i64 2148360752}
!247 = !{i64 2148759958, i64 2148759984, i64 2148760013, i64 2148760047, i64 2148760078, i64 2148760101}
!248 = !{!"auto-init"}
!249 = !{i64 2156306217}
!250 = !{i64 2156323715}
!251 = !{!"branch_weights", i32 2000, i32 1}
!252 = !{i64 2156067271, i64 2156067749, i64 2156067308, i64 2156067364, i64 2156067398, i64 2156067422, i64 2156067463, i64 2156067484, i64 2156067512, i64 2156067546}
!253 = !{i64 2156070569, i64 2156071047, i64 2156070606, i64 2156070662, i64 2156070696, i64 2156070720, i64 2156070761, i64 2156070782, i64 2156070810, i64 2156070844}
!254 = !{i64 2156208168}
!255 = !{i64 2156225666}
!256 = !{i64 1164638, i64 1164699}
!257 = !{i64 1167370}
!258 = !{i64 1167655}
!259 = !{i64 2150095291}
!260 = !{i64 2148759377}
!261 = !{i64 1245977, i64 1246002, i64 1246024, i64 1246040, i64 1246052, i64 1246072, i64 1246096, i64 1246112, i64 1246124}
!262 = !{i64 2148759565}
!263 = !{i64 2150095557}
!264 = !{i64 2156398501}
!265 = !{i64 2148848434}
!266 = !{i64 2148763143, i64 2148763175, i64 2148763204, i64 2148763238, i64 2148763269, i64 2148763292}
!267 = !{i64 2148848663}
!268 = !{i64 2156392517, i64 2156392996, i64 2156392554, i64 2156392610, i64 2156392644, i64 2156392668, i64 2156392709, i64 2156392730, i64 2156392758, i64 2156392792}
!269 = !{i64 2156400388, i64 2156400867, i64 2156400425, i64 2156400481, i64 2156400515, i64 2156400539, i64 2156400580, i64 2156400601, i64 2156400629, i64 2156400663}
!270 = !{i64 2156072239, i64 2156072717, i64 2156072276, i64 2156072332, i64 2156072366, i64 2156072390, i64 2156072431, i64 2156072452, i64 2156072480, i64 2156072514}
!271 = !{i64 2156068889, i64 2156069367, i64 2156068926, i64 2156068982, i64 2156069016, i64 2156069040, i64 2156069081, i64 2156069102, i64 2156069130, i64 2156069164}
!272 = !{i64 2156405469, i64 2156405948, i64 2156405506, i64 2156405562, i64 2156405596, i64 2156405620, i64 2156405661, i64 2156405682, i64 2156405710, i64 2156405744}
!273 = !{i64 2154428666}
!274 = !{i64 2152823005}
!275 = !{i64 2152823212}
!276 = !{i64 2154431437}
!277 = !{i64 2150326450, i64 2150326941, i64 2150326487, i64 2150326543, i64 2150326577, i64 2150326601, i64 2150326642, i64 2150326663, i64 2150326691, i64 2150326725}
!278 = !{i64 2156416532, i64 2156417011, i64 2156416569, i64 2156416625, i64 2156416659, i64 2156416683, i64 2156416724, i64 2156416745, i64 2156416773, i64 2156416807}
!279 = !{i64 2150314956, i64 2150315447, i64 2150314993, i64 2150315049, i64 2150315083, i64 2150315107, i64 2150315148, i64 2150315169, i64 2150315197, i64 2150315231}
!280 = !{i64 2150834871, i64 2150835362, i64 2150834908, i64 2150834964, i64 2150834998, i64 2150835022, i64 2150835063, i64 2150835084, i64 2150835112, i64 2150835146}
!281 = !{i64 2150434854, i64 2150435027, i64 2150435042, i64 2150435094, i64 2150435153, i64 2150435177, i64 2150435218, i64 2150435239, i64 2150435267, i64 2150435299}
!282 = !{i64 2156422510, i64 2156422989, i64 2156422547, i64 2156422603, i64 2156422637, i64 2156422661, i64 2156422702, i64 2156422723, i64 2156422751, i64 2156422785}
!283 = !{i64 2148768816, i64 2148768848, i64 2148768877, i64 2148768911, i64 2148768942, i64 2148768965}
!284 = !{i64 2148857921}
!285 = !{i64 2153205954, i64 2153206437, i64 2153205991, i64 2153206047, i64 2153206081, i64 2153206105, i64 2153206146, i64 2153206167, i64 2153206195, i64 2153206229}
!286 = !{i64 2156455845, i64 2156456324, i64 2156455882, i64 2156455938, i64 2156455972, i64 2156455996, i64 2156456037, i64 2156456058, i64 2156456086, i64 2156456120}
!287 = !{i64 2156469997, i64 2156470476, i64 2156470034, i64 2156470090, i64 2156470124, i64 2156470148, i64 2156470189, i64 2156470210, i64 2156470238, i64 2156470272}
!288 = !{i64 2156493443}
!289 = !{i64 2156557528, i64 2156558007, i64 2156557565, i64 2156557621, i64 2156557655, i64 2156557679, i64 2156557720, i64 2156557741, i64 2156557769, i64 2156557803}
!290 = !{i64 2153235709, i64 2153236193, i64 2153235746, i64 2153235802, i64 2153235836, i64 2153235860, i64 2153235901, i64 2153235922, i64 2153235950, i64 2153235984}
!291 = !{i64 2156118093}
!292 = !{i64 2156135591}
!293 = !{i64 2156564243, i64 2156564722, i64 2156564280, i64 2156564336, i64 2156564370, i64 2156564394, i64 2156564435, i64 2156564456, i64 2156564484, i64 2156564518}
!294 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
!295 = !{i64 2156570475, i64 2156570954, i64 2156570512, i64 2156570568, i64 2156570602, i64 2156570626, i64 2156570667, i64 2156570688, i64 2156570716, i64 2156570750}
!296 = !{i64 2156584102, i64 2156584581, i64 2156584139, i64 2156584195, i64 2156584229, i64 2156584253, i64 2156584294, i64 2156584315, i64 2156584343, i64 2156584377}
!297 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!298 = !{i64 2156588821, i64 2156589300, i64 2156588858, i64 2156588914, i64 2156588948, i64 2156588972, i64 2156589013, i64 2156589034, i64 2156589062, i64 2156589096}
!299 = !{i64 2156590380, i64 2156590859, i64 2156590417, i64 2156590473, i64 2156590507, i64 2156590531, i64 2156590572, i64 2156590593, i64 2156590621, i64 2156590655}
!300 = distinct !{!300, !301}
!301 = !{!"llvm.loop.peeled.count", i32 1}
!302 = !{i64 2148845393}
!303 = !{i64 2148760678, i64 2148760710, i64 2148760739, i64 2148760773, i64 2148760804, i64 2148760827}
!304 = !{i64 2148845622}
!305 = !{i64 2153229927, i64 2153230411, i64 2153229964, i64 2153230020, i64 2153230054, i64 2153230078, i64 2153230119, i64 2153230140, i64 2153230168, i64 2153230202}
!306 = !{i64 2156459466, i64 2156459945, i64 2156459503, i64 2156459559, i64 2156459593, i64 2156459617, i64 2156459658, i64 2156459679, i64 2156459707, i64 2156459741}
!307 = !{i64 2153150540}
!308 = !{i64 2153150382}
!309 = !{i64 2153150710}
!310 = !{i64 2149937819}
