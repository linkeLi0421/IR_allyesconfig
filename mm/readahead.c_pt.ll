; ModuleID = '/llk/IR_all_yes/mm/readahead.c_pt.bc'
source_filename = "../mm/readahead.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+file_ra_state_init\22, \22a\22\09"
module asm "\09.weak\09__crc_file_ra_state_init\09\09\09\09"
module asm "\09.long\09__crc_file_ra_state_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_file_ra_state_init:\09\09\09\09\09"
module asm "\09.asciz \09\22file_ra_state_init\22\09\09\09\09\09"
module asm "__kstrtabns_file_ra_state_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+read_cache_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_read_cache_pages\09\09\09\09"
module asm "\09.long\09__crc_read_cache_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_read_cache_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22read_cache_pages\22\09\09\09\09\09"
module asm "__kstrtabns_read_cache_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+page_cache_ra_unbounded\22, \22a\22\09"
module asm "\09.weak\09__crc_page_cache_ra_unbounded\09\09\09\09"
module asm "\09.long\09__crc_page_cache_ra_unbounded\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_cache_ra_unbounded:\09\09\09\09\09"
module asm "\09.asciz \09\22page_cache_ra_unbounded\22\09\09\09\09\09"
module asm "__kstrtabns_page_cache_ra_unbounded:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+page_cache_sync_ra\22, \22a\22\09"
module asm "\09.weak\09__crc_page_cache_sync_ra\09\09\09\09"
module asm "\09.long\09__crc_page_cache_sync_ra\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_cache_sync_ra:\09\09\09\09\09"
module asm "\09.asciz \09\22page_cache_sync_ra\22\09\09\09\09\09"
module asm "__kstrtabns_page_cache_sync_ra:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+page_cache_async_ra\22, \22a\22\09"
module asm "\09.weak\09__crc_page_cache_async_ra\09\09\09\09"
module asm "\09.long\09__crc_page_cache_async_ra\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_cache_async_ra:\09\09\09\09\09"
module asm "\09.asciz \09\22page_cache_async_ra\22\09\09\09\09\09"
module asm "__kstrtabns_page_cache_async_ra:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+readahead_expand\22, \22a\22\09"
module asm "\09.weak\09__crc_readahead_expand\09\09\09\09"
module asm "\09.long\09__crc_readahead_expand\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_readahead_expand:\09\09\09\09\09"
module asm "\09.asciz \09\22readahead_expand\22\09\09\09\09\09"
module asm "__kstrtabns_readahead_expand:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.25, %struct.trace_event, ptr, ptr, %union.anon.26, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.25 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.26 = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.22 }
%struct.atomic_t = type { i32 }
%union.anon.22 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.47 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.47 = type { %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.101, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%union.anon.101 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.65, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.107 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.102, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.103, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.104, ptr, %struct.address_space, %struct.list_head, %union.anon.105, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.102 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.103 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.104 = type { ptr }
%union.anon.105 = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }

@__kstrtab_file_ra_state_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_file_ra_state_init = external dso_local constant [0 x i8], align 1
@__ksymtab_file_ra_state_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @file_ra_state_init to i32), ptr @__kstrtab_file_ra_state_init, ptr @__kstrtabns_file_ra_state_init }, section "___ksymtab_gpl+file_ra_state_init", align 4
@__kstrtab_read_cache_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_read_cache_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_read_cache_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @read_cache_pages to i32), ptr @__kstrtab_read_cache_pages, ptr @__kstrtabns_read_cache_pages }, section "___ksymtab+read_cache_pages", align 4
@__kstrtab_page_cache_ra_unbounded = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_cache_ra_unbounded = external dso_local constant [0 x i8], align 1
@__ksymtab_page_cache_ra_unbounded = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_cache_ra_unbounded to i32), ptr @__kstrtab_page_cache_ra_unbounded, ptr @__kstrtabns_page_cache_ra_unbounded }, section "___ksymtab_gpl+page_cache_ra_unbounded", align 4
@__kstrtab_page_cache_sync_ra = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_cache_sync_ra = external dso_local constant [0 x i8], align 1
@__ksymtab_page_cache_sync_ra = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_cache_sync_ra to i32), ptr @__kstrtab_page_cache_sync_ra, ptr @__kstrtabns_page_cache_sync_ra }, section "___ksymtab_gpl+page_cache_sync_ra", align 4
@__kstrtab_page_cache_async_ra = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_cache_async_ra = external dso_local constant [0 x i8], align 1
@__ksymtab_page_cache_async_ra = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_cache_async_ra to i32), ptr @__kstrtab_page_cache_async_ra, ptr @__kstrtabns_page_cache_async_ra }, section "___ksymtab_gpl+page_cache_async_ra", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_readahead\00", [44 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__readahead = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 3, ptr @types__readahead, ptr @args__readahead, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__readahead, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__readahead, i64 20) }, ptr @event_enter__readahead, ptr @event_exit__readahead }, align 4
@event_enter__readahead = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.25 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.26 zeroinitializer, ptr @__syscall_meta__readahead, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__readahead = internal global ptr @event_enter__readahead, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_readahead\00", [45 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__readahead = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.25 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.26 zeroinitializer, ptr @__syscall_meta__readahead, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__readahead = internal global ptr @event_exit__readahead, section "_ftrace_events", align 4
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_readahead\00", [18 x i8] zeroinitializer }, align 32
@types__readahead = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16], [20 x i8] zeroinitializer }, align 32
@args__readahead = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__readahead = internal global ptr @__syscall_meta__readahead, section "__syscalls_metadata", align 4
@__kstrtab_readahead_expand = external dso_local constant [0 x i8], align 1
@__kstrtabns_readahead_expand = external dso_local constant [0 x i8], align 1
@__ksymtab_readahead_expand = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @readahead_expand to i32), ptr @__kstrtab_readahead_expand, ptr @__kstrtabns_readahead_expand }, section "___ksymtab+readahead_expand", align 4
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VM_BUG_ON_FOLIO(!folio_test_locked(folio))\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@task_css.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/cgroup.h\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"loff_t\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"count\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [23 x i8] c"event_enter__readahead\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"event_exit__readahead\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"types__readahead\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"args__readahead\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 260, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 1096, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 698, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 717, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 695, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [26 x i8] c"../include/linux/cgroup.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 494, i32 9 }
@___asan_gen_.66 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 723, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [18 x i8] c"../mm/readahead.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 638, i32 1 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__event_enter__readahead, ptr @__event_exit__readahead, ptr @__ksymtab_file_ra_state_init, ptr @__ksymtab_page_cache_async_ra, ptr @__ksymtab_page_cache_ra_unbounded, ptr @__ksymtab_page_cache_sync_ra, ptr @__ksymtab_read_cache_pages, ptr @__ksymtab_readahead_expand, ptr @__p_syscall_meta__readahead, ptr @__syscall_meta__readahead, ptr @event_enter__readahead, ptr @event_exit__readahead, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__readahead, ptr @args__readahead, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__readahead to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__readahead to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__readahead to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__readahead to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_readahead = dso_local alias i32 (i32, i64, i32), ptr @__se_sys_readahead

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @file_ra_state_init(ptr nocapture noundef writeonly %ra, ptr nocapture noundef readonly %mapping) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %call = tail call ptr @inode_to_bdi(ptr noundef %1) #8
  %ra_pages = getelementptr inbounds %struct.backing_dev_info, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %ra_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ra_pages, align 4
  %ra_pages1 = getelementptr inbounds %struct.file_ra_state, ptr %ra, i32 0, i32 3
  %4 = ptrtoint ptr %ra_pages1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ra_pages1, align 4
  %prev_pos = getelementptr inbounds %struct.file_ra_state, ptr %ra, i32 0, i32 5
  %5 = ptrtoint ptr %prev_pos to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %prev_pos, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @read_cache_pages(ptr noundef %mapping, ptr noundef %pages, ptr nocapture noundef readonly %filler, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pages, align 4
  %cmp.i.not25 = icmp eq ptr %1, %pages
  br i1 %cmp.i.not25, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, ptr %pages, i32 0, i32 1
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %index = getelementptr inbounds %struct.anon.3, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %14 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gfp_mask.i.i, align 4
  %or1.i = or i32 %15, 73728
  %call2 = tail call i32 @add_to_page_cache_lru(ptr noundef %add.ptr, ptr noundef %mapping, i32 noundef %13, i32 noundef %or1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @read_cache_pages_invalidate_page(ptr noundef %mapping, ptr noundef %add.ptr)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end10, %if.then
  %16 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %pages, align 4
  %cmp.i.not = icmp eq ptr %17, %pages
  br i1 %cmp.i.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end:                                           ; preds = %list_del.exit
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %3, align 4
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i22, label %if.then.i.i, !prof !63

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %19, -1
  br label %_compound_head.exit.i

if.end.i.i22:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %add.ptr to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i22, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %20, %if.end.i.i22 ]
  %21 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %22 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i.i.i = icmp eq i32 %23, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !64

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !65
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@read_cache_pages, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !69

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %21, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %21) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %call4 = tail call i32 %filler(ptr noundef %data, ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end10, label %if.then9, !prof !63

if.then9:                                         ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @read_cache_pages_invalidate_pages(ptr noundef %mapping, ptr noundef %pages)
  br label %while.end

if.end10:                                         ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  %26 = tail call i32 @llvm.read_register.i32(metadata !53) #8
  %and.i.i23 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i23 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i, align 8
  %read_bytes.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 155, i32 4
  %30 = ptrtoint ptr %read_bytes.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %read_bytes.i, align 8
  %add.i = add i64 %31, 4096
  store i64 %add.i, ptr %read_bytes.i, align 8
  br label %while.cond.backedge

while.end:                                        ; preds = %if.then9, %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  %ret.1 = phi i32 [ %call4, %if.then9 ], [ 0, %entry.while.end_crit_edge ], [ 0, %while.cond.backedge.while.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_to_page_cache_lru(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_cache_pages_invalidate_page(ptr noundef %mapping, ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %and.i = and i32 %1, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !63

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !63

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.3) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !70
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #8
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %6, align 4
  %and.i.i4.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_page.exit, label %folio_flags.exit.i.i.do.body_crit_edge

folio_flags.exit.i.i.do.body_crit_edge:           ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

trylock_page.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #8, !srcloc !71
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !72
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool2.not.not = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool2.not.not, label %if.end, label %trylock_page.exit.do.body_crit_edge

trylock_page.exit.do.body_crit_edge:              ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %trylock_page.exit.do.body_crit_edge, %folio_flags.exit.i.i.do.body_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/readahead.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 52, 0\0A.popsection", ""() #8, !srcloc !73
  unreachable

if.end:                                           ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  %mapping6 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %mapping6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mapping, ptr %mapping6, align 4
  tail call void @do_invalidatepage(ptr noundef %page, i32 noundef 0, i32 noundef 4096) #8
  %14 = ptrtoint ptr %mapping6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %mapping6, align 4
  tail call void @unlock_page(ptr noundef %page) #8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %15 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i15 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i15)
  %tobool.not.i.i16 = icmp eq i32 %and.i.i15, 0
  br i1 %tobool.not.i.i16, label %if.end.i.i19, label %if.then.i.i18, !prof !63

if.then.i.i18:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i17 = add i32 %17, -1
  br label %_compound_head.exit.i21

if.end.i.i19:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i21

_compound_head.exit.i21:                          ; preds = %if.end.i.i19, %if.then.i.i18
  %retval.0.i.i20 = phi i32 [ %sub.i.i17, %if.then.i.i18 ], [ %18, %if.end.i.i19 ]
  %19 = inttoptr i32 %retval.0.i.i20 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %20 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !64

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !65
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i21
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@read_cache_pages_invalidate_page, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !69

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %19, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %19) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_cache_pages_invalidate_pages(ptr noundef %mapping, ptr noundef %pages) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pages, align 4
  %cmp.i.not3 = icmp eq ptr %1, %pages
  br i1 %cmp.i.not3, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, ptr %pages, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %while.body.lr.ph
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @read_cache_pages_invalidate_page(ptr noundef %mapping, ptr noundef %add.ptr)
  %12 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %pages, align 4
  %cmp.i.not = icmp eq ptr %13, %pages
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @page_cache_ra_unbounded(ptr noundef %ractl, i32 noundef %nr_to_read, i32 noundef %lookahead_size) #0 align 64 {
entry:
  %page_pool = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %_index.i = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 3
  %2 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_index.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %page_pool) #8
  %4 = getelementptr inbounds %struct.list_head, ptr %page_pool, i32 0, i32 1
  %5 = ptrtoint ptr %page_pool to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %page_pool, ptr %page_pool, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %page_pool, ptr %4, align 4
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gfp_mask.i.i, align 4
  %or1.i = or i32 %8, 73728
  %9 = call i32 @llvm.read_register.i32(metadata !53) #8
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags1.i, align 4
  %or.i = or i32 %14, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  %invalidate_lock.i = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 2
  call void @down_read(ptr noundef %invalidate_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_to_read)
  %cmp78.not = icmp eq i32 %nr_to_read, 0
  br i1 %cmp78.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %i_pages = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 1
  %_nr_pages = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 4
  %15 = xor i32 %3, -1
  %a_ops = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 9
  %sub27 = sub i32 %nr_to_read, %lookahead_size
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc32, %for.inc.for.body_crit_edge ]
  %add = add i32 %i.079, %3
  %call4 = call ptr @xa_load(ptr noundef %i_pages, i32 noundef %add) #8
  %tobool.not = icmp eq ptr %call4, null
  %16 = ptrtoint ptr %call4 to i32
  %and.i65 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65)
  %tobool.i = icmp ne i32 %and.i65, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool.i
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @read_pages(ptr noundef %ractl, ptr noundef nonnull %page_pool, i1 noundef zeroext true)
  %17 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %_index.i, align 4
  %19 = ptrtoint ptr %_nr_pages to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %_nr_pages, align 4
  %add6 = add i32 %18, %15
  %sub7 = add i32 %add6, %20
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call38.i.i.i = call ptr @__folio_alloc(i32 noundef %or1.i, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %tobool9.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool9.not, label %if.end.for.end_crit_edge, label %if.end11

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end11:                                         ; preds = %if.end
  %21 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %a_ops, align 4
  %readpages = getelementptr inbounds %struct.address_space_operations, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %readpages to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %readpages, align 4
  %tobool12.not = icmp eq ptr %24, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  %index15 = getelementptr inbounds %struct.anon.107, ptr %call38.i.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %index15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %index15, align 4
  %lru = getelementptr inbounds %struct.anon.107, ptr %call38.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %page_pool to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %page_pool, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %lru, ptr noundef nonnull %page_pool, ptr noundef %27) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then13.if.end26_crit_edge

if.then13.if.end26_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %lru, ptr %prev1.i.i, align 4
  %29 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %lru, align 4
  %prev3.i.i = getelementptr inbounds %struct.anon.107, ptr %call38.i.i.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %page_pool, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %page_pool to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %lru, ptr %page_pool, align 4
  br label %if.end26

if.else:                                          ; preds = %if.end11
  %call17 = call i32 @filemap_add_folio(ptr noundef %1, ptr noundef nonnull %call38.i.i.i, i32 noundef %add, i32 noundef %or1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then19:                                        ; preds = %if.else
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  %32 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i.i = icmp eq i32 %33, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !64

if.then.i.i.i:                                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef nonnull %call38.i.i.i, ptr noundef nonnull @.str.8) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !65
  unreachable

do.end5.i.i.i:                                    ; preds = %if.then19
  %call.i.i.i10.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !66
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #8
  %34 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #8, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %34, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@page_cache_ra_unbounded, %if.then.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !69

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef nonnull %call38.i.i.i, i32 noundef -1, i32 noundef %conv.i.i.i.i) #8
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_put.exit

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef nonnull %call38.i.i.i) #8
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  call fastcc void @read_pages(ptr noundef %ractl, ptr noundef nonnull %page_pool, i1 noundef zeroext true)
  %35 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %_index.i, align 4
  %37 = ptrtoint ptr %_nr_pages to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %_nr_pages, align 4
  %add22 = add i32 %36, %15
  %sub24 = add i32 %add22, %38
  br label %for.inc

if.end26:                                         ; preds = %if.else.if.end26_crit_edge, %if.end.i.i, %if.then13.if.end26_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.079, i32 %sub27)
  %cmp28 = icmp eq i32 %i.079, %sub27
  br i1 %cmp28, label %if.then29, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then29:                                        ; preds = %if.end26
  %39 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %and.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_set_readahead.exit, label %if.then.i.i, !prof !63

if.then.i.i:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef nonnull %call38.i.i.i, ptr noundef nonnull @.str.3) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !70
  unreachable

folio_set_readahead.exit:                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 18, ptr noundef nonnull %call38.i.i.i) #8
  br label %if.end30

if.end30:                                         ; preds = %folio_set_readahead.exit, %if.end26.if.end30_crit_edge
  %42 = ptrtoint ptr %_nr_pages to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %_nr_pages, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %_nr_pages, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end30, %folio_put.exit, %if.then
  %i.1.ph = phi i32 [ %sub7, %if.then ], [ %sub24, %folio_put.exit ], [ %i.079, %if.end30 ]
  %inc32 = add i32 %i.1.ph, 1
  %cmp = icmp ult i32 %inc32, %nr_to_read
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %and.i = and i32 %14, 262144
  call fastcc void @read_pages(ptr noundef %ractl, ptr noundef nonnull %page_pool, i1 noundef zeroext false)
  call void @up_read(ptr noundef %invalidate_lock.i) #8
  %44 = call i32 @llvm.read_register.i32(metadata !53) #8
  %and.i.i67 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i67 to ptr
  %task.i68 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i68 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i68, align 8
  %flags1.i69 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %flags1.i69 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags1.i69, align 4
  %and.i70 = and i32 %49, -262145
  %or.i71 = or i32 %and.i70, %and.i
  store i32 %or.i71, ptr %flags1.i69, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %page_pool) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_pages(ptr noundef %rac, ptr noundef %pages, i1 noundef zeroext %skip_page) unnamed_addr #0 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %a_ops = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %a_ops, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #8
  %4 = call ptr @memset(ptr %plug, i32 255, i32 24)
  %_nr_pages.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 4
  %5 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %_nr_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @blk_start_plug(ptr noundef nonnull %plug) #8
  %readahead = getelementptr inbounds %struct.address_space_operations, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %readahead to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %readahead, align 4
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void %8(ptr noundef %rac) #8
  %_batch_count.i.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 5
  %9 = ptrtoint ptr %_batch_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %_batch_count.i.i, align 4
  %11 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %_nr_pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp.i.i166 = icmp ult i32 %12, %10
  br i1 %cmp.i.i166, label %if.then2.do.body2.i.i_crit_edge, label %do.end7.i.i.lr.ph, !prof !64

if.then2.do.body2.i.i_crit_edge:                  ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i.i

do.end7.i.i.lr.ph:                                ; preds = %if.then2
  %_index.i.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 3
  br label %do.end7.i.i

do.body2.i.i:                                     ; preds = %put_page.exit.do.body2.i.i_crit_edge, %if.then2.do.body2.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1086, 0\0A.popsection", ""() #8, !srcloc !74
  unreachable

do.end7.i.i:                                      ; preds = %put_page.exit.do.end7.i.i_crit_edge, %do.end7.i.i.lr.ph
  %13 = phi i32 [ %12, %do.end7.i.i.lr.ph ], [ %44, %put_page.exit.do.end7.i.i_crit_edge ]
  %14 = phi i32 [ %10, %do.end7.i.i.lr.ph ], [ %42, %put_page.exit.do.end7.i.i_crit_edge ]
  %sub.i.i = sub i32 %13, %14
  %15 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub.i.i, ptr %_nr_pages.i, align 4
  %16 = ptrtoint ptr %_index.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %_index.i.i, align 4
  %add.i.i = add i32 %17, %14
  store i32 %add.i.i, ptr %_index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %14)
  %tobool12.not.i.i = icmp eq i32 %13, %14
  br i1 %tobool12.not.i.i, label %do.end7.i.i.if.end22.sink.split_crit_edge, label %if.end15.i.i

do.end7.i.i.if.end22.sink.split_crit_edge:        ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.sink.split

if.end15.i.i:                                     ; preds = %do.end7.i.i
  %18 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mapping, align 4
  %i_pages.i.i = getelementptr inbounds %struct.address_space, ptr %19, i32 0, i32 1
  %call.i.i = call ptr @xa_load(ptr noundef %i_pages.i.i, i32 noundef %add.i.i) #8
  %20 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_locked.exit.i.i, label %if.then.i.i.i.i, !prof !63

if.then.i.i.i.i:                                  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %call.i.i, ptr noundef nonnull @.str.3) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !70
  unreachable

folio_test_locked.exit.i.i:                       ; preds = %if.end15.i.i
  %23 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %call.i.i, align 4
  %and1.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then27.i.i, label %do.end36.i.i, !prof !64

if.then27.i.i:                                    ; preds = %folio_test_locked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %call.i.i, ptr noundef nonnull @.str.5) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1096, 0\0A.popsection", ""() #8, !srcloc !75
  unreachable

do.end36.i.i:                                     ; preds = %folio_test_locked.exit.i.i
  %25 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %26, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !64

if.then.i.i.i.i.i:                                ; preds = %do.end36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %call.i.i, ptr noundef nonnull @.str.6) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !76
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %do.end36.i.i
  %27 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %call.i.i, align 4
  %29 = and i32 %28, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i53.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i53.i.i, label %PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %readahead_page.exit

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %compound_nr.i.i.i.i = getelementptr %struct.page, ptr %call.i.i, i32 1, i32 1, i32 0, i32 2
  %30 = ptrtoint ptr %compound_nr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %compound_nr.i.i.i.i, align 4
  br label %readahead_page.exit

readahead_page.exit:                              ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge
  %storemerge.i.i = phi i32 [ %31, %if.end.i.i.i.i ], [ 1, %PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge ]
  %32 = ptrtoint ptr %_batch_count.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge.i.i, ptr %_batch_count.i.i, align 4
  %tobool5.not = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not, label %readahead_page.exit.if.end22_crit_edge, label %while.body

readahead_page.exit.if.end22_crit_edge:           ; preds = %readahead_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

while.body:                                       ; preds = %readahead_page.exit
  call void @unlock_page(ptr noundef nonnull %call.i.i) #8
  %33 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %20, align 4
  %and.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !63

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i82 = add i32 %34, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i83 = phi i32 [ %sub.i.i82, %if.then.i.i ], [ %35, %if.end.i.i ]
  %36 = inttoptr i32 %retval.0.i.i83 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %37 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i84, label %do.end5.i.i.i.i, !prof !64

if.then.i.i.i.i84:                                ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = inttoptr i32 %retval.0.i.i83 to ptr
  call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.8) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !65
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !66
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %40 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %40, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@read_pages, %if.then.i.i.i.i.i85)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i85], !srcloc !69

if.then.i.i.i.i.i85:                              ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %36, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i85, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %36) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %41 = ptrtoint ptr %_batch_count.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %_batch_count.i.i, align 4
  %43 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %_nr_pages.i, align 4
  %cmp.i.i = icmp ult i32 %44, %42
  br i1 %cmp.i.i, label %put_page.exit.do.body2.i.i_crit_edge, label %put_page.exit.do.end7.i.i_crit_edge, !prof !64

put_page.exit.do.end7.i.i_crit_edge:              ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

put_page.exit.do.body2.i.i_crit_edge:             ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i.i

if.else:                                          ; preds = %if.end
  %readpages = getelementptr inbounds %struct.address_space_operations, ptr %3, i32 0, i32 4
  %45 = ptrtoint ptr %readpages to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %readpages, align 4
  %tobool6.not = icmp eq ptr %46, null
  br i1 %tobool6.not, label %while.cond14.preheader, label %if.then7

while.cond14.preheader:                           ; preds = %if.else
  %_batch_count.i.i87 = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 5
  %47 = ptrtoint ptr %_batch_count.i.i87 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %_batch_count.i.i87, align 4
  %49 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %_nr_pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %48)
  %cmp.i.i89167 = icmp ult i32 %50, %48
  br i1 %cmp.i.i89167, label %while.cond14.preheader.do.body2.i.i90_crit_edge, label %do.end7.i.i95.lr.ph, !prof !64

while.cond14.preheader.do.body2.i.i90_crit_edge:  ; preds = %while.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i.i90

do.end7.i.i95.lr.ph:                              ; preds = %while.cond14.preheader
  %_index.i.i92 = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 3
  %readpage = getelementptr inbounds %struct.address_space_operations, ptr %3, i32 0, i32 1
  br label %do.end7.i.i95

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %rac to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rac, align 4
  %53 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mapping, align 4
  %55 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %_nr_pages.i, align 4
  %call11 = call i32 %46(ptr noundef %52, ptr noundef %54, ptr noundef %pages, i32 noundef %56) #8
  call void @put_pages_list(ptr noundef %pages) #8
  %57 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %_nr_pages.i, align 4
  %_index = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 3
  %59 = ptrtoint ptr %_index to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %_index, align 4
  %add = add i32 %60, %58
  store i32 %add, ptr %_index, align 4
  br label %if.end22.sink.split

do.body2.i.i90:                                   ; preds = %put_page.exit136.do.body2.i.i90_crit_edge, %while.cond14.preheader.do.body2.i.i90_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1086, 0\0A.popsection", ""() #8, !srcloc !74
  unreachable

do.end7.i.i95:                                    ; preds = %put_page.exit136.do.end7.i.i95_crit_edge, %do.end7.i.i95.lr.ph
  %61 = phi i32 [ %50, %do.end7.i.i95.lr.ph ], [ %96, %put_page.exit136.do.end7.i.i95_crit_edge ]
  %62 = phi i32 [ %48, %do.end7.i.i95.lr.ph ], [ %94, %put_page.exit136.do.end7.i.i95_crit_edge ]
  %sub.i.i91 = sub i32 %61, %62
  %63 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub.i.i91, ptr %_nr_pages.i, align 4
  %64 = ptrtoint ptr %_index.i.i92 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %_index.i.i92, align 4
  %add.i.i93 = add i32 %65, %62
  store i32 %add.i.i93, ptr %_index.i.i92, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %62)
  %tobool12.not.i.i94 = icmp eq i32 %61, %62
  br i1 %tobool12.not.i.i94, label %do.end7.i.i95.if.end22.sink.split_crit_edge, label %if.end15.i.i101

do.end7.i.i95.if.end22.sink.split_crit_edge:      ; preds = %do.end7.i.i95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.sink.split

if.end15.i.i101:                                  ; preds = %do.end7.i.i95
  %66 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mapping, align 4
  %i_pages.i.i97 = getelementptr inbounds %struct.address_space, ptr %67, i32 0, i32 1
  %call.i.i98 = call ptr @xa_load(ptr noundef %i_pages.i.i97, i32 noundef %add.i.i93) #8
  %68 = getelementptr inbounds %struct.page, ptr %call.i.i98, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %68, align 4
  %and.i.i.i.i.i99 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i99)
  %tobool.not.i.i.i.i100 = icmp eq i32 %and.i.i.i.i.i99, 0
  br i1 %tobool.not.i.i.i.i100, label %folio_test_locked.exit.i.i105, label %if.then.i.i.i.i102, !prof !63

if.then.i.i.i.i102:                               ; preds = %if.end15.i.i101
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %call.i.i98, ptr noundef nonnull @.str.3) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !70
  unreachable

folio_test_locked.exit.i.i105:                    ; preds = %if.end15.i.i101
  %71 = ptrtoint ptr %call.i.i98 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %call.i.i98, align 4
  %and1.i.i.i.i103 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i103)
  %tobool.i.not.i.i104 = icmp eq i32 %and1.i.i.i.i103, 0
  br i1 %tobool.i.not.i.i104, label %if.then27.i.i106, label %do.end36.i.i108, !prof !64

if.then27.i.i106:                                 ; preds = %folio_test_locked.exit.i.i105
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %call.i.i98, ptr noundef nonnull @.str.5) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1096, 0\0A.popsection", ""() #8, !srcloc !75
  unreachable

do.end36.i.i108:                                  ; preds = %folio_test_locked.exit.i.i105
  %73 = ptrtoint ptr %call.i.i98 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %call.i.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %cmp.i.not.i.i.i.i.i107 = icmp eq i32 %74, -1
  br i1 %cmp.i.not.i.i.i.i.i107, label %if.then.i.i.i.i.i109, label %PageHead.exit.i.i.i.i111, !prof !64

if.then.i.i.i.i.i109:                             ; preds = %do.end36.i.i108
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %call.i.i98, ptr noundef nonnull @.str.6) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !76
  unreachable

PageHead.exit.i.i.i.i111:                         ; preds = %do.end36.i.i108
  %75 = ptrtoint ptr %call.i.i98 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %call.i.i98, align 4
  %77 = and i32 %76, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i.i53.i.i110 = icmp eq i32 %77, 0
  br i1 %tobool.not.i.i53.i.i110, label %PageHead.exit.i.i.i.i111.readahead_page.exit116_crit_edge, label %if.end.i.i.i.i113

PageHead.exit.i.i.i.i111.readahead_page.exit116_crit_edge: ; preds = %PageHead.exit.i.i.i.i111
  call void @__sanitizer_cov_trace_pc() #10
  br label %readahead_page.exit116

if.end.i.i.i.i113:                                ; preds = %PageHead.exit.i.i.i.i111
  call void @__sanitizer_cov_trace_pc() #10
  %compound_nr.i.i.i.i112 = getelementptr %struct.page, ptr %call.i.i98, i32 1, i32 1, i32 0, i32 2
  %78 = ptrtoint ptr %compound_nr.i.i.i.i112 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %compound_nr.i.i.i.i112, align 4
  br label %readahead_page.exit116

readahead_page.exit116:                           ; preds = %if.end.i.i.i.i113, %PageHead.exit.i.i.i.i111.readahead_page.exit116_crit_edge
  %storemerge.i.i114 = phi i32 [ %79, %if.end.i.i.i.i113 ], [ 1, %PageHead.exit.i.i.i.i111.readahead_page.exit116_crit_edge ]
  %80 = ptrtoint ptr %_batch_count.i.i87 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %storemerge.i.i114, ptr %_batch_count.i.i87, align 4
  %tobool16.not = icmp eq ptr %call.i.i98, null
  br i1 %tobool16.not, label %readahead_page.exit116.if.end22_crit_edge, label %while.body17

readahead_page.exit116.if.end22_crit_edge:        ; preds = %readahead_page.exit116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

while.body17:                                     ; preds = %readahead_page.exit116
  %81 = ptrtoint ptr %readpage to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %readpage, align 4
  %83 = ptrtoint ptr %rac to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rac, align 4
  %call19 = call i32 %82(ptr noundef %84, ptr noundef nonnull %call.i.i98) #8
  %85 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %68, align 4
  %and.i.i117 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i117)
  %tobool.not.i.i118 = icmp eq i32 %and.i.i117, 0
  br i1 %tobool.not.i.i118, label %if.end.i.i121, label %if.then.i.i120, !prof !63

if.then.i.i120:                                   ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i119 = add i32 %86, -1
  br label %_compound_head.exit.i126

if.end.i.i121:                                    ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %call.i.i98 to i32
  br label %_compound_head.exit.i126

_compound_head.exit.i126:                         ; preds = %if.end.i.i121, %if.then.i.i120
  %retval.0.i.i122 = phi i32 [ %sub.i.i119, %if.then.i.i120 ], [ %87, %if.end.i.i121 ]
  %88 = inttoptr i32 %retval.0.i.i122 to ptr
  %_refcount.i.i.i.i.i123 = getelementptr inbounds %struct.page, ptr %88, i32 0, i32 3
  %call.i.i.i.i.i.i.i124 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i123, i32 noundef 4) #8
  %89 = ptrtoint ptr %_refcount.i.i.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %_refcount.i.i.i.i.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i.i.i.i125 = icmp eq i32 %90, 0
  br i1 %cmp.i.i.i.i125, label %if.then.i.i.i.i127, label %do.end5.i.i.i.i131, !prof !64

if.then.i.i.i.i127:                               ; preds = %_compound_head.exit.i126
  call void @__sanitizer_cov_trace_pc() #10
  %91 = inttoptr i32 %retval.0.i.i122 to ptr
  call void @dump_page(ptr noundef %91, ptr noundef nonnull @.str.8) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !65
  unreachable

do.end5.i.i.i.i131:                               ; preds = %_compound_head.exit.i126
  %call.i.i.i10.i.i.i.i128 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i123, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !66
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i123, i32 1, i32 3, i32 1) #8
  %92 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i123, ptr %_refcount.i.i.i.i.i123, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i123) #8, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i129 = extractvalue { i32, i32 } %92, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i129)
  %cmp.i.i.i.i.i.i.i130 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i129, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@read_pages, %if.then.i.i.i.i.i133)) #8
          to label %folio_put_testzero.exit.i.i134 [label %if.then.i.i.i.i.i133], !srcloc !69

if.then.i.i.i.i.i133:                             ; preds = %do.end5.i.i.i.i131
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i132 = zext i1 %cmp.i.i.i.i.i.i.i130 to i32
  call void @__page_ref_mod_and_test(ptr noundef %88, i32 noundef -1, i32 noundef %conv.i.i.i.i.i132) #8
  br label %folio_put_testzero.exit.i.i134

folio_put_testzero.exit.i.i134:                   ; preds = %if.then.i.i.i.i.i133, %do.end5.i.i.i.i131
  br i1 %cmp.i.i.i.i.i.i.i130, label %if.then.i4.i135, label %folio_put_testzero.exit.i.i134.put_page.exit136_crit_edge

folio_put_testzero.exit.i.i134.put_page.exit136_crit_edge: ; preds = %folio_put_testzero.exit.i.i134
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit136

if.then.i4.i135:                                  ; preds = %folio_put_testzero.exit.i.i134
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %88) #8
  br label %put_page.exit136

put_page.exit136:                                 ; preds = %if.then.i4.i135, %folio_put_testzero.exit.i.i134.put_page.exit136_crit_edge
  %93 = ptrtoint ptr %_batch_count.i.i87 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %_batch_count.i.i87, align 4
  %95 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %_nr_pages.i, align 4
  %cmp.i.i89 = icmp ult i32 %96, %94
  br i1 %cmp.i.i89, label %put_page.exit136.do.body2.i.i90_crit_edge, label %put_page.exit136.do.end7.i.i95_crit_edge, !prof !64

put_page.exit136.do.end7.i.i95_crit_edge:         ; preds = %put_page.exit136
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i95

put_page.exit136.do.body2.i.i90_crit_edge:        ; preds = %put_page.exit136
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i.i90

if.end22.sink.split:                              ; preds = %do.end7.i.i95.if.end22.sink.split_crit_edge, %if.then7, %do.end7.i.i.if.end22.sink.split_crit_edge
  %_batch_count.i.i87.sink = phi ptr [ %_nr_pages.i, %if.then7 ], [ %_batch_count.i.i87, %do.end7.i.i95.if.end22.sink.split_crit_edge ], [ %_batch_count.i.i, %do.end7.i.i.if.end22.sink.split_crit_edge ]
  %97 = ptrtoint ptr %_batch_count.i.i87.sink to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %_batch_count.i.i87.sink, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %readahead_page.exit116.if.end22_crit_edge, %readahead_page.exit.if.end22_crit_edge
  call void @blk_finish_plug(ptr noundef nonnull %plug) #8
  %98 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile ptr, ptr %pages, align 4
  %cmp.i.not = icmp eq ptr %99, %pages
  br i1 %cmp.i.not, label %do.body36, label %do.body29, !prof !63

do.body29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/readahead.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 151, 0\0A.popsection", ""() #8, !srcloc !77
  unreachable

do.body36:                                        ; preds = %if.end22
  %100 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %_nr_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool38.not = icmp eq i32 %101, 0
  br i1 %tobool38.not, label %do.body36.out_crit_edge, label %do.body46, !prof !63

do.body36.out_crit_edge:                          ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body46:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/readahead.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 152, 0\0A.popsection", ""() #8, !srcloc !78
  unreachable

out:                                              ; preds = %do.body36.out_crit_edge, %entry.out_crit_edge
  br i1 %skip_page, label %if.then56, label %out.if.end58_crit_edge

out.if.end58_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then56:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %_index57 = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 3
  %102 = ptrtoint ptr %_index57 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %_index57, align 4
  %inc = add i32 %103, 1
  store i32 %inc, ptr %_index57, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %out.if.end58_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_add_folio(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_page_cache_ra(ptr noundef %ractl, i32 noundef %nr_to_read, i32 noundef %lookahead_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %_index.i = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 3
  %4 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %_index.i, align 4
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !79
  %and.i.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %7 = tail call ptr @llvm.returnaddress(i32 0) #8
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %8) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %8) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call ptr @llvm.returnaddress(i32 0) #8
  %10 = ptrtoint ptr %9 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %10) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %10) #8
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !80
  %and.i.i.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !64

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #8, !srcloc !81
  %12 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !83
  %14 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %15, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %13, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %15, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !84
  %16 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  %18 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %19, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp = icmp eq i64 %17, 0
  br i1 %cmp, label %i_size_read.exit.cleanup_crit_edge, label %if.end

i_size_read.exit.cleanup_crit_edge:               ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %i_size_read.exit
  %sub = add i64 %17, 17592186044415
  %20 = lshr i64 %sub, 12
  %conv = trunc i64 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp2 = icmp ugt i32 %5, %conv
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub6 = sub i32 %conv, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6, i32 %nr_to_read)
  %cmp7 = icmp ult i32 %sub6, %nr_to_read
  %add = add i32 %sub6, 1
  %spec.select = select i1 %cmp7, i32 %add, i32 %nr_to_read
  tail call void @page_cache_ra_unbounded(ptr noundef %ractl, i32 noundef %spec.select, i32 noundef %lookahead_size)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %i_size_read.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @force_page_cache_ra(ptr noundef %ractl, i32 noundef %nr_to_read) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %ra2 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 2
  %2 = ptrtoint ptr %ra2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ra2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call = tail call ptr @inode_to_bdi(ptr noundef %5) #8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %a_ops, align 4
  %readpage = getelementptr inbounds %struct.address_space_operations, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %readpage to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %readpage, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %readpages = getelementptr inbounds %struct.address_space_operations, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %readpages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %readpages, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %land.rhs, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %land.lhs.true
  %readahead = getelementptr inbounds %struct.address_space_operations, ptr %7, i32 0, i32 5
  %12 = ptrtoint ptr %readahead to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %readahead, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.if.end_crit_edge, !prof !64

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %_index.i = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 3
  %io_pages = getelementptr inbounds %struct.backing_dev_info, ptr %call, i32 0, i32 4
  %14 = ptrtoint ptr %io_pages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_pages, align 8
  %ra_pages = getelementptr inbounds %struct.file_ra_state, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %ra_pages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ra_pages, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %15, i32 %17)
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 %nr_to_read)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool17.not46 = icmp eq i32 %19, 0
  br i1 %tobool17.not46, label %if.end.cleanup_crit_edge, label %while.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.preheader:                             ; preds = %if.end
  %20 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %_index.i, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %nr_to_read.addr.048 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %19, %while.body.preheader ]
  %index.047 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ %21, %while.body.preheader ]
  %22 = tail call i32 @llvm.umin.i32(i32 %nr_to_read.addr.048, i32 512)
  %23 = ptrtoint ptr %_index.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %index.047, ptr %_index.i, align 4
  tail call void @do_page_cache_ra(ptr noundef %ractl, i32 noundef %22, i32 noundef 0)
  %add = add i32 %22, %index.047
  %sub = sub i32 %nr_to_read.addr.048, %22
  %tobool17.not = icmp eq i32 %sub, 0
  br i1 %tobool17.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @page_cache_sync_ra(ptr noundef %ractl, i32 noundef %req_count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ractl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ractl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %f_mode = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode, align 8
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool2, %land.rhs ]
  %ra = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 2
  %5 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ra, align 4
  %ra_pages = getelementptr inbounds %struct.file_ra_state, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ra_pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ra_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %land.end.if.then_crit_edge, label %lor.lhs.false

land.end.if.then_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %land.end
  %call = tail call fastcc zeroext i1 @blk_cgroup_congested()
  br i1 %call, label %lor.lhs.false.if.then_crit_edge, label %if.end7

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.end.if.then_crit_edge
  %9 = ptrtoint ptr %ractl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ractl, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.then.if.then9_crit_edge

if.then.if.then9_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  br i1 %4, label %if.end7.if.then9_crit_edge, label %if.end10

if.end7.if.then9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.then9:                                         ; preds = %if.end7.if.then9_crit_edge, %if.then.if.then9_crit_edge
  %req_count.addr.019 = phi i32 [ %req_count, %if.end7.if.then9_crit_edge ], [ 1, %if.then.if.then9_crit_edge ]
  %mapping1.i = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 1
  %11 = ptrtoint ptr %mapping1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mapping1.i, align 4
  %13 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ra, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %call.i = tail call ptr @inode_to_bdi(ptr noundef %16) #8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %12, i32 0, i32 9
  %17 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %a_ops.i, align 4
  %readpage.i = getelementptr inbounds %struct.address_space_operations, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %readpage.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %readpage.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then9.if.end.i_crit_edge

if.then9.if.end.i_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then9
  %readpages.i = getelementptr inbounds %struct.address_space_operations, ptr %18, i32 0, i32 4
  %21 = ptrtoint ptr %readpages.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %readpages.i, align 4
  %tobool4.not.i = icmp eq ptr %22, null
  br i1 %tobool4.not.i, label %land.rhs.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %readahead.i = getelementptr inbounds %struct.address_space_operations, ptr %18, i32 0, i32 5
  %23 = ptrtoint ptr %readahead.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %readahead.i, align 4
  %tobool6.not.i = icmp eq ptr %24, null
  br i1 %tobool6.not.i, label %land.rhs.i.cleanup_crit_edge, label %land.rhs.i.if.end.i_crit_edge, !prof !64

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %land.rhs.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.then9.if.end.i_crit_edge
  %_index.i.i = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 3
  %io_pages.i = getelementptr inbounds %struct.backing_dev_info, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %io_pages.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io_pages.i, align 8
  %ra_pages.i = getelementptr inbounds %struct.file_ra_state, ptr %14, i32 0, i32 3
  %27 = ptrtoint ptr %ra_pages.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ra_pages.i, align 4
  %29 = tail call i32 @llvm.umax.i32(i32 %26, i32 %28) #8
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %req_count.addr.019) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool17.not46.i = icmp eq i32 %30, 0
  br i1 %tobool17.not46.i, label %if.end.i.cleanup_crit_edge, label %while.body.preheader.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.preheader.i:                           ; preds = %if.end.i
  %31 = ptrtoint ptr %_index.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %_index.i.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %nr_to_read.addr.048.i = phi i32 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %30, %while.body.preheader.i ]
  %index.047.i = phi i32 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ %32, %while.body.preheader.i ]
  %33 = tail call i32 @llvm.umin.i32(i32 %nr_to_read.addr.048.i, i32 512) #8
  %34 = ptrtoint ptr %_index.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %index.047.i, ptr %_index.i.i, align 4
  tail call void @do_page_cache_ra(ptr noundef %ractl, i32 noundef %33, i32 noundef 0) #8
  %add.i = add i32 %33, %index.047.i
  %sub.i = sub i32 %nr_to_read.addr.048.i, %33
  %tobool17.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool17.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ondemand_readahead(ptr noundef %ractl, i1 noundef zeroext false, i32 noundef %req_count)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %while.body.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @blk_cgroup_congested() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !53) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !86
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @kthread_blkcg() #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %rcu_read_lock.exit.while.body.preheader_crit_edge

rcu_read_lock.exit.while.body.preheader_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader

if.then:                                          ; preds = %rcu_read_lock.exit
  %4 = tail call i32 @llvm.read_register.i32(metadata !53) #8
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cgroups.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 164
  %8 = ptrtoint ptr %cgroups.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %cgroups.i, align 16
  %call.i.i12 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12)
  %tobool.not.i13 = icmp eq i32 %call.i.i12, 0
  br i1 %tobool.not.i13, label %lor.lhs.false.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.then
  %call.i2.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool3.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i14 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14)
  %tobool5.not.i = icmp eq i32 %and.i14, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false4.i.if.end_crit_edge

lor.lhs.false4.i.if.end_crit_edge:                ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false4.i
  %call7.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i15, label %lor.lhs.false6.i.if.end_crit_edge

lor.lhs.false6.i.if.end_crit_edge:                ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.i15:                                ; preds = %lor.lhs.false6.i
  %call9.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i15.if.end_crit_edge, label %land.lhs.true11.i

land.lhs.true.i15.if.end_crit_edge:               ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true11.i:                                ; preds = %land.lhs.true.i15
  %.b1.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true11.i.if.end_crit_edge, label %if.then.i16

land.lhs.true11.i.if.end_crit_edge:               ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i16:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 494, ptr noundef nonnull @.str.12) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i16, %land.lhs.true11.i.if.end_crit_edge, %land.lhs.true.i15.if.end_crit_edge, %lor.lhs.false6.i.if.end_crit_edge, %lor.lhs.false4.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %arrayidx.i = getelementptr [14 x ptr], ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not26 = icmp eq ptr %13, null
  br i1 %tobool3.not26, label %if.end.while.end_crit_edge, label %if.end.while.body.preheader_crit_edge

if.end.while.body.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.preheader:                             ; preds = %if.end.while.body.preheader_crit_edge, %rcu_read_lock.exit.while.body.preheader_crit_edge
  %css.127.ph = phi ptr [ %call, %rcu_read_lock.exit.while.body.preheader_crit_edge ], [ %13, %if.end.while.body.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %while.body.preheader
  %css.127 = phi ptr [ %19, %if.end7.while.body_crit_edge ], [ %css.127.ph, %while.body.preheader ]
  %14 = ptrtoint ptr %css.127 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %css.127, align 8
  %congestion_count = getelementptr inbounds %struct.cgroup, ptr %15, i32 0, i32 35
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %congestion_count, i32 noundef 4) #8
  %16 = ptrtoint ptr %congestion_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %congestion_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not = icmp eq i32 %17, 0
  br i1 %tobool5.not, label %if.end7, label %while.body.while.end.loopexit_crit_edge

while.body.while.end.loopexit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.loopexit

if.end7:                                          ; preds = %while.body
  %parent = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css.127, i32 0, i32 12
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent, align 8
  %tobool3.not = icmp eq ptr %19, null
  br i1 %tobool3.not, label %if.end7.while.end.loopexit_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end7.while.end.loopexit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.loopexit

while.end.loopexit:                               ; preds = %if.end7.while.end.loopexit_crit_edge, %while.body.while.end.loopexit_crit_edge
  %phi.bo = xor i1 %tobool5.not, true
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end.while.end_crit_edge
  %tobool3.not.lcssa = phi i1 [ false, %if.end.while.end_crit_edge ], [ %phi.bo, %while.end.loopexit ]
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i17, label %while.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

while.end.rcu_read_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %while.end
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.13) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %while.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !87
  %20 = tail call i32 @llvm.read_register.i32(metadata !53) #8
  %and.i.i.i.i.i24 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i1 %tobool3.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ondemand_readahead(ptr noundef %ractl, i1 noundef zeroext %hit_readahead_marker, i32 noundef %req_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call ptr @inode_to_bdi(ptr noundef %3) #8
  %ra1 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 2
  %4 = ptrtoint ptr %ra1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ra1, align 4
  %ra_pages = getelementptr inbounds %struct.file_ra_state, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ra_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ra_pages, align 4
  %_index.i = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 3
  %8 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %req_size)
  %cmp = icmp ult i32 %7, %req_size
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %io_pages = getelementptr inbounds %struct.backing_dev_info, ptr %call, i32 0, i32 4
  %10 = ptrtoint ptr %io_pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_pages, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp3 = icmp ugt i32 %11, %7
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %req_size)
  %spec.select = select i1 %cmp3, i32 %12, i32 %7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %max_pages.0 = phi i32 [ %7, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end.initial_readahead_crit_edge, label %if.end7

if.end.initial_readahead_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %initial_readahead

if.end7:                                          ; preds = %if.end
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %5, align 8
  %size = getelementptr inbounds %struct.file_ra_state, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %add = add i32 %16, %14
  %async_size = getelementptr inbounds %struct.file_ra_state, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %async_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %async_size, align 8
  %sub = sub i32 %add, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %sub)
  %cmp8 = icmp eq i32 %9, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add)
  %cmp12 = icmp eq i32 %9, %add
  %or.cond = or i1 %cmp12, %cmp8
  br i1 %or.cond, label %if.then13, label %if.end21

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %5, align 8
  %div11.i = lshr i32 %max_pages.0, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %div11.i)
  %cmp.i = icmp ult i32 %16, %div11.i
  %mul.i = shl i32 %16, 2
  %div112.i = lshr i32 %max_pages.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %div112.i)
  %cmp2.not.i = icmp ugt i32 %16, %div112.i
  %mul4.i = shl i32 %16, 1
  %spec.select.i = select i1 %cmp2.not.i, i32 %max_pages.0, i32 %mul4.i
  %retval.0.i = select i1 %cmp.i, i32 %mul.i, i32 %spec.select.i
  %20 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i, ptr %size, align 4
  %21 = ptrtoint ptr %async_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i, ptr %async_size, align 8
  br label %readit

if.end21:                                         ; preds = %if.end7
  br i1 %hit_readahead_marker, label %if.then23, label %if.end43

if.then23:                                        ; preds = %if.end21
  %22 = tail call i32 @llvm.read_register.i32(metadata !53) #8
  %and.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !86
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.then23.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then23.rcu_read_lock.exit_crit_edge:           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then23
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then23.rcu_read_lock.exit_crit_edge
  %26 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mapping, align 4
  %add26 = add i32 %9, 1
  %call27 = tail call i32 @page_cache_next_miss(ptr noundef %27, i32 noundef %add26, i32 noundef %max_pages.0) #8
  %call.i188 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i188, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i191

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i191:                               ; preds = %rcu_read_lock.exit
  %call1.i189 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i189)
  %tobool.not.i190 = icmp eq i32 %call1.i189, 0
  br i1 %tobool.not.i190, label %land.lhs.true.i191.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i193

land.lhs.true.i191.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i191
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i193:                              ; preds = %land.lhs.true.i191
  %.b4.i192 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i192, label %land.lhs.true2.i193.rcu_read_unlock.exit_crit_edge, label %if.then.i194

land.lhs.true2.i193.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i193
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i194:                                     ; preds = %land.lhs.true2.i193
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.13) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i194, %land.lhs.true2.i193.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i191.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !87
  %28 = tail call i32 @llvm.read_register.i32(metadata !53) #8
  %and.i.i.i.i.i195 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i195 to ptr
  %preempt_count.i.i.i.i196 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i196 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i196, align 4
  %sub.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i196, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %rcu_read_unlock.exit.cleanup97_crit_edge, label %lor.lhs.false29

rcu_read_unlock.exit.cleanup97_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup97

lor.lhs.false29:                                  ; preds = %rcu_read_unlock.exit
  %sub30 = sub i32 %call27, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub30, i32 %max_pages.0)
  %cmp31 = icmp ugt i32 %sub30, %max_pages.0
  br i1 %cmp31, label %lor.lhs.false29.cleanup97_crit_edge, label %if.end33

lor.lhs.false29.cleanup97_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup97

if.end33:                                         ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call27, ptr %5, align 8
  %add38 = add i32 %sub30, %req_size
  %div11.i198 = lshr i32 %max_pages.0, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add38, i32 %div11.i198)
  %cmp.i199 = icmp ult i32 %add38, %div11.i198
  %mul.i200 = shl i32 %add38, 2
  %div112.i201 = lshr i32 %max_pages.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add38, i32 %div112.i201)
  %cmp2.not.i202 = icmp ugt i32 %add38, %div112.i201
  %mul4.i203 = shl i32 %add38, 1
  %spec.select.i204 = select i1 %cmp2.not.i202, i32 %max_pages.0, i32 %mul4.i203
  %retval.0.i205 = select i1 %cmp.i199, i32 %mul.i200, i32 %spec.select.i204
  %33 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i205, ptr %size, align 4
  %34 = ptrtoint ptr %async_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i205, ptr %async_size, align 8
  br label %readit

if.end43:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_cmp4(i32 %max_pages.0, i32 %req_size)
  %cmp44 = icmp ult i32 %max_pages.0, %req_size
  br i1 %cmp44, label %if.end43.initial_readahead_crit_edge, label %if.end46

if.end43.initial_readahead_crit_edge:             ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %initial_readahead

if.end46:                                         ; preds = %if.end43
  %prev_pos = getelementptr inbounds %struct.file_ra_state, ptr %5, i32 0, i32 5
  %35 = ptrtoint ptr %prev_pos to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %prev_pos, align 8
  %shr = lshr i64 %36, 12
  %conv = trunc i64 %shr to i32
  %sub47 = sub i32 %9, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub47)
  %cmp48 = icmp ult i32 %sub47, 2
  br i1 %cmp48, label %if.end46.initial_readahead_crit_edge, label %if.end51

if.end46.initial_readahead_crit_edge:             ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %initial_readahead

if.end51:                                         ; preds = %if.end46
  %37 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mapping, align 4
  %39 = tail call i32 @llvm.read_register.i32(metadata !53) #8
  %and.i.i.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %42, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !86
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i.i, label %if.end51.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end51.rcu_read_lock.exit.i.i_crit_edge:        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end51
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #8
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end51.rcu_read_lock.exit.i.i_crit_edge
  %sub.i.i = add i32 %9, -1
  %call.i.i = tail call i32 @page_cache_prev_miss(ptr noundef %38, i32 noundef %sub.i.i, i32 noundef %max_pages.0) #8
  %call.i4.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i4.i.i, label %rcu_read_lock.exit.i.i.count_history_pages.exit.i_crit_edge, label %land.lhs.true.i7.i.i

rcu_read_lock.exit.i.i.count_history_pages.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %count_history_pages.exit.i

land.lhs.true.i7.i.i:                             ; preds = %rcu_read_lock.exit.i.i
  %call1.i5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i.i)
  %tobool.not.i6.i.i = icmp eq i32 %call1.i5.i.i, 0
  br i1 %tobool.not.i6.i.i, label %land.lhs.true.i7.i.i.count_history_pages.exit.i_crit_edge, label %land.lhs.true2.i9.i.i

land.lhs.true.i7.i.i.count_history_pages.exit.i_crit_edge: ; preds = %land.lhs.true.i7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %count_history_pages.exit.i

land.lhs.true2.i9.i.i:                            ; preds = %land.lhs.true.i7.i.i
  %.b4.i8.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i.i, label %land.lhs.true2.i9.i.i.count_history_pages.exit.i_crit_edge, label %if.then.i10.i.i

land.lhs.true2.i9.i.i.count_history_pages.exit.i_crit_edge: ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %count_history_pages.exit.i

if.then.i10.i.i:                                  ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.13) #8
  br label %count_history_pages.exit.i

count_history_pages.exit.i:                       ; preds = %if.then.i10.i.i, %land.lhs.true2.i9.i.i.count_history_pages.exit.i_crit_edge, %land.lhs.true.i7.i.i.count_history_pages.exit.i_crit_edge, %rcu_read_lock.exit.i.i.count_history_pages.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !87
  %43 = tail call i32 @llvm.read_register.i32(metadata !53) #8
  %and.i.i.i.i.i11.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i11.i.i to ptr
  %preempt_count.i.i.i.i12.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i12.i.i, align 4
  %sub.i.i.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i12.i.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %sub2.i.i = sub i32 %sub.i.i, %call.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub2.i.i, i32 %req_size)
  %cmp.not.i = icmp ugt i32 %sub2.i.i, %req_size
  br i1 %cmp.not.i, label %try_context_readahead.exit, label %if.end56

try_context_readahead.exit:                       ; preds = %count_history_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub2.i.i, i32 %9)
  %cmp1.not.i = icmp uge i32 %sub2.i.i, %9
  %mul.i206 = zext i1 %cmp1.not.i to i32
  %spec.select.i207 = shl i32 %sub2.i.i, %mul.i206
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %9, ptr %5, align 8
  %add.i = add i32 %spec.select.i207, %req_size
  %48 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %max_pages.0) #8
  %49 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %size, align 4
  %50 = ptrtoint ptr %async_size to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %async_size, align 8
  br label %readit

if.end56:                                         ; preds = %count_history_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @do_page_cache_ra(ptr noundef %ractl, i32 noundef %req_size, i32 noundef 0)
  br label %cleanup97

initial_readahead:                                ; preds = %if.end46.initial_readahead_crit_edge, %if.end43.initial_readahead_crit_edge, %if.end.initial_readahead_crit_edge
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %9, ptr %5, align 8
  %sub.i42.i = add i32 %req_size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i42.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i42.i, 0
  %52 = tail call i32 @llvm.ctlz.i32(i32 %sub.i42.i, i1 true) #8, !range !88
  %sub.i.i.i.i = sub nuw nsw i32 32, %52
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %shl.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i
  %div40.i = lshr i32 %max_pages.0, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %div40.i)
  %cmp19.not.i = icmp ugt i32 %shl.i.i, %div40.i
  %mul.i211 = shl i32 %shl.i.i, 2
  %div2141.i = lshr i32 %max_pages.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %div2141.i)
  %cmp22.not.i = icmp ugt i32 %shl.i.i, %div2141.i
  %mul25.i = shl i32 %shl.i.i, 1
  %spec.select.i212 = select i1 %cmp22.not.i, i32 %max_pages.0, i32 %mul25.i
  %newsize.0.i = select i1 %cmp19.not.i, i32 %spec.select.i212, i32 %mul.i211
  %size59 = getelementptr inbounds %struct.file_ra_state, ptr %5, i32 0, i32 1
  %53 = ptrtoint ptr %size59 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %newsize.0.i, ptr %size59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %newsize.0.i, i32 %req_size)
  %cmp61 = icmp ugt i32 %newsize.0.i, %req_size
  %sub65 = select i1 %cmp61, i32 %req_size, i32 0
  %cond69 = sub i32 %newsize.0.i, %sub65
  %async_size70 = getelementptr inbounds %struct.file_ra_state, ptr %5, i32 0, i32 2
  %54 = ptrtoint ptr %async_size70 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %cond69, ptr %async_size70, align 8
  br label %readit

readit:                                           ; preds = %initial_readahead, %try_context_readahead.exit, %if.end33, %if.then13
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %56)
  %cmp72 = icmp eq i32 %9, %56
  br i1 %cmp72, label %land.lhs.true74, label %readit.if.end93_crit_edge

readit.if.end93_crit_edge:                        ; preds = %readit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

land.lhs.true74:                                  ; preds = %readit
  %size75 = getelementptr inbounds %struct.file_ra_state, ptr %5, i32 0, i32 1
  %57 = ptrtoint ptr %size75 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size75, align 4
  %async_size76 = getelementptr inbounds %struct.file_ra_state, ptr %5, i32 0, i32 2
  %59 = ptrtoint ptr %async_size76 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %async_size76, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp77 = icmp eq i32 %58, %60
  br i1 %cmp77, label %if.then79, label %land.lhs.true74.if.end93_crit_edge

land.lhs.true74.if.end93_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then79:                                        ; preds = %land.lhs.true74
  %div11.i214 = lshr i32 %max_pages.0, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %div11.i214)
  %cmp.i215 = icmp ult i32 %58, %div11.i214
  %mul.i216 = shl i32 %58, 2
  %div112.i217 = lshr i32 %max_pages.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %div112.i217)
  %cmp2.not.i218 = icmp ugt i32 %58, %div112.i217
  %mul4.i219 = shl i32 %58, 1
  %spec.select.i220 = select i1 %cmp2.not.i218, i32 %max_pages.0, i32 %mul4.i219
  %retval.0.i221 = select i1 %cmp.i215, i32 %mul.i216, i32 %spec.select.i220
  %add82 = add i32 %retval.0.i221, %58
  call void @__sanitizer_cov_trace_cmp4(i32 %add82, i32 %max_pages.0)
  %cmp83.not = icmp ugt i32 %add82, %max_pages.0
  br i1 %cmp83.not, label %if.else, label %if.then85

if.then85:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %async_size76 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i221, ptr %async_size76, align 8
  %62 = ptrtoint ptr %size75 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add82, ptr %size75, align 4
  br label %if.end93

if.else:                                          ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %size75 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %max_pages.0, ptr %size75, align 4
  %64 = ptrtoint ptr %async_size76 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %div112.i217, ptr %async_size76, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.else, %if.then85, %land.lhs.true74.if.end93_crit_edge, %readit.if.end93_crit_edge
  %65 = ptrtoint ptr %_index.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %56, ptr %_index.i, align 4
  %size95 = getelementptr inbounds %struct.file_ra_state, ptr %5, i32 0, i32 1
  %66 = ptrtoint ptr %size95 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size95, align 4
  %async_size96 = getelementptr inbounds %struct.file_ra_state, ptr %5, i32 0, i32 2
  %68 = ptrtoint ptr %async_size96 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %async_size96, align 8
  tail call void @do_page_cache_ra(ptr noundef %ractl, i32 noundef %67, i32 noundef %69)
  br label %cleanup97

cleanup97:                                        ; preds = %if.end93, %if.end56, %lor.lhs.false29.cleanup97_crit_edge, %rcu_read_unlock.exit.cleanup97_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @page_cache_async_ra(ptr noundef %ractl, ptr noundef %folio, i32 noundef %req_count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ra = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 2
  %0 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ra, align 4
  %ra_pages = getelementptr inbounds %struct.file_ra_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ra_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ra_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_writeback.exit, label %if.then.i.i, !prof !63

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.3) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !70
  unreachable

folio_test_writeback.exit:                        ; preds = %if.end
  %7 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %folio, align 4
  %9 = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %if.end2, label %folio_test_writeback.exit.return_crit_edge

folio_test_writeback.exit.return_crit_edge:       ; preds = %folio_test_writeback.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end2:                                          ; preds = %folio_test_writeback.exit
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %4, align 4
  %and.i.i.i13 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i13)
  %tobool.not.i.i14 = icmp eq i32 %and.i.i.i13, 0
  br i1 %tobool.not.i.i14, label %folio_clear_readahead.exit, label %if.then.i.i15, !prof !63

if.then.i.i15:                                    ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.3) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !70
  unreachable

folio_clear_readahead.exit:                       ; preds = %if.end2
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %folio) #8
  %mapping = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 1
  %12 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mapping, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call.i = tail call i32 @inode_congested(ptr noundef %15, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %folio_clear_readahead.exit.return_crit_edge

folio_clear_readahead.exit.return_crit_edge:      ; preds = %folio_clear_readahead.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end6:                                          ; preds = %folio_clear_readahead.exit
  %call7 = tail call fastcc zeroext i1 @blk_cgroup_congested()
  br i1 %call7, label %if.end6.return_crit_edge, label %if.end9

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ondemand_readahead(ptr noundef %ractl, i1 noundef zeroext true, i32 noundef %req_count)
  br label %return

return:                                           ; preds = %if.end9, %if.end6.return_crit_edge, %folio_clear_readahead.exit.return_crit_edge, %folio_test_writeback.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_readahead(i32 noundef %fd, i64 noundef %offset, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__fdget(i32 noundef %fd) #8, !noalias !89
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f_mode, align 8
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %f_mapping = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 18
  %3 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_mapping, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %if.end.out_crit_edge, label %lor.lhs.false5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false5:                                   ; preds = %if.end
  %a_ops = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %a_ops, align 4
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %lor.lhs.false5.out_crit_edge, label %lor.lhs.false9

lor.lhs.false5.out_crit_edge:                     ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %f_inode.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_inode.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %11)
  %cmp = icmp eq i16 %11, -32768
  br i1 %cmp, label %if.end14, label %lor.lhs.false9.out_crit_edge

lor.lhs.false9.out_crit_edge:                     ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end14:                                         ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  %conv16 = zext i32 %count to i64
  %call17 = tail call i32 @vfs_fadvise(ptr noundef nonnull %0, i64 noundef %offset, i64 noundef %conv16, i32 noundef 3) #8
  br label %out

out:                                              ; preds = %if.end14, %lor.lhs.false9.out_crit_edge, %lor.lhs.false5.out_crit_edge, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call17, %if.end14 ], [ -22, %lor.lhs.false9.out_crit_edge ], [ -22, %lor.lhs.false5.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ -9, %lor.lhs.false.out_crit_edge ], [ -9, %entry.out_crit_edge ]
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %out.fdput.exit_crit_edge, label %if.then.i

out.fdput.exit_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdput.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fput(ptr noundef %0) #8
  br label %fdput.exit

fdput.exit:                                       ; preds = %if.then.i, %out.fdput.exit_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fadvise(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_readahead(i32 noundef %fd, i64 noundef %offset, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call i32 @__fdget(i32 noundef %fd) #8, !noalias !92
  %and.i.i.i.i = and i32 %call.i.i.i, -4
  %0 = inttoptr i32 %and.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.out.i.i_crit_edge, label %lor.lhs.false.i.i

entry.out.i.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i.i

lor.lhs.false.i.i:                                ; preds = %entry
  %f_mode.i.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f_mode.i.i, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.out.i.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.out.i.i_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %f_mapping.i.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 18
  %3 = ptrtoint ptr %f_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_mapping.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %4, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.out.i.i_crit_edge, label %lor.lhs.false5.i.i

if.end.i.i.out.i.i_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i.i

lor.lhs.false5.i.i:                               ; preds = %if.end.i.i
  %a_ops.i.i = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %a_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %a_ops.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %6, null
  br i1 %tobool8.not.i.i, label %lor.lhs.false5.i.i.out.i.i_crit_edge, label %lor.lhs.false9.i.i

lor.lhs.false5.i.i.out.i.i_crit_edge:             ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i.i

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_inode.i.i.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %11)
  %cmp.i.i = icmp eq i16 %11, -32768
  br i1 %cmp.i.i, label %if.end14.i.i, label %lor.lhs.false9.i.i.out.i.i_crit_edge

lor.lhs.false9.i.i.out.i.i_crit_edge:             ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i.i

if.end14.i.i:                                     ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv16.i.i = zext i32 %count to i64
  %call17.i.i = tail call i32 @vfs_fadvise(ptr noundef nonnull %0, i64 noundef %offset, i64 noundef %conv16.i.i, i32 noundef 3) #8
  br label %out.i.i

out.i.i:                                          ; preds = %if.end14.i.i, %lor.lhs.false9.i.i.out.i.i_crit_edge, %lor.lhs.false5.i.i.out.i.i_crit_edge, %if.end.i.i.out.i.i_crit_edge, %lor.lhs.false.i.i.out.i.i_crit_edge, %entry.out.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call17.i.i, %if.end14.i.i ], [ -22, %lor.lhs.false9.i.i.out.i.i_crit_edge ], [ -22, %lor.lhs.false5.i.i.out.i.i_crit_edge ], [ -22, %if.end.i.i.out.i.i_crit_edge ], [ -9, %lor.lhs.false.i.i.out.i.i_crit_edge ], [ -9, %entry.out.i.i_crit_edge ]
  %and.i.i.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %out.i.i.__do_sys_readahead.exit_crit_edge, label %if.then.i.i.i

out.i.i.__do_sys_readahead.exit_crit_edge:        ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_readahead.exit

if.then.i.i.i:                                    ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fput(ptr noundef %0) #8
  br label %__do_sys_readahead.exit

__do_sys_readahead.exit:                          ; preds = %if.then.i.i.i, %out.i.i.__do_sys_readahead.exit_crit_edge
  ret i32 %ret.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @readahead_expand(ptr nocapture noundef %ractl, i64 noundef %new_start, i32 noundef %new_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %ra2 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 2
  %2 = ptrtoint ptr %ra2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ra2, align 4
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gfp_mask.i.i, align 4
  %or1.i = or i32 %5, 73728
  %div = sdiv i64 %new_start, 4096
  %conv = trunc i64 %div to i32
  %_index = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 3
  %6 = ptrtoint ptr %_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp139 = icmp ugt i32 %7, %conv
  br i1 %cmp139, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %i_pages = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 1
  %_nr_pages = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %while.body.lr.ph
  %8 = phi i32 [ %7, %while.body.lr.ph ], [ %21, %if.end15.while.body_crit_edge ]
  %sub = add i32 %8, -1
  %call5 = tail call ptr @xa_load(ptr noundef %i_pages, i32 noundef %sub) #8
  %tobool.not = icmp eq ptr %call5, null
  %9 = ptrtoint ptr %call5 to i32
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool.i
  br i1 %or.cond, label %if.end, label %while.body.cleanup64_crit_edge

while.body.cleanup64_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

if.end:                                           ; preds = %while.body
  %call38.i.i.i.i = tail call ptr @__folio_alloc(i32 noundef %or1.i, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %tobool8.not = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool8.not, label %if.end.cleanup64_crit_edge, label %if.end10

if.end.cleanup64_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @add_to_page_cache_lru(ptr noundef nonnull %call38.i.i.i.i, ptr noundef %1, i32 noundef %sub, i32 noundef %or1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  %10 = getelementptr inbounds %struct.page, ptr %call38.i.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !63

if.then.i.i:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %12, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call38.i.i.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %15 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !64

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !65
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@readahead_expand, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !69

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %14, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %folio_put_testzero.exit.i.i.cleanup64.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.cleanup64_crit_edge

folio_put_testzero.exit.i.i.cleanup64_crit_edge:  ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

folio_put_testzero.exit.i.i.cleanup64.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64.sink.split

if.end15:                                         ; preds = %if.end10
  %18 = ptrtoint ptr %_nr_pages to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %_nr_pages, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %_nr_pages, align 4
  %index16 = getelementptr inbounds %struct.page, ptr %call38.i.i.i.i, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index16, align 4
  %22 = ptrtoint ptr %_index to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %_index, align 4
  %cmp = icmp ugt i32 %21, %conv
  br i1 %cmp, label %if.end15.while.body_crit_edge, label %if.end15.while.end_crit_edge

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end15.while.end_crit_edge, %entry.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %entry.while.end_crit_edge ], [ %21, %if.end15.while.end_crit_edge ]
  %conv.i = zext i32 %.lcssa to i64
  %mul.i.neg = mul nuw i64 %conv.i, 4294963200
  %sub20 = add i64 %mul.i.neg, %new_start
  %23 = trunc i64 %sub20 to i32
  %conv22 = add i32 %new_len, 4095
  %sub24 = add i32 %conv22, %23
  %div25107 = lshr i32 %sub24, 12
  %_nr_pages27 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 4
  %24 = ptrtoint ptr %_nr_pages27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %_nr_pages27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %div25107)
  %cmp28141 = icmp ult i32 %25, %div25107
  br i1 %cmp28141, label %while.body30.lr.ph, label %while.end.cleanup64_crit_edge

while.end.cleanup64_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

while.body30.lr.ph:                               ; preds = %while.end
  %i_pages36 = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 1
  %tobool54.not = icmp eq ptr %3, null
  %size = getelementptr inbounds %struct.file_ra_state, ptr %3, i32 0, i32 1
  %async_size = getelementptr inbounds %struct.file_ra_state, ptr %3, i32 0, i32 2
  br label %while.body30

while.body30:                                     ; preds = %cleanup59.while.body30_crit_edge, %while.body30.lr.ph
  %26 = phi i32 [ %25, %while.body30.lr.ph ], [ %45, %cleanup59.while.body30_crit_edge ]
  %27 = ptrtoint ptr %_index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %_index, align 4
  %add34 = add i32 %28, %26
  %call37 = tail call ptr @xa_load(ptr noundef %i_pages36, i32 noundef %add34) #8
  %tobool38.not = icmp eq ptr %call37, null
  %29 = ptrtoint ptr %call37 to i32
  %and.i110 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110)
  %tobool.i111 = icmp ne i32 %and.i110, 0
  %or.cond133 = select i1 %tobool38.not, i1 true, i1 %tobool.i111
  br i1 %or.cond133, label %if.end42, label %while.body30.cleanup64_crit_edge

while.body30.cleanup64_crit_edge:                 ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

if.end42:                                         ; preds = %while.body30
  %call38.i.i.i.i112 = tail call ptr @__folio_alloc(i32 noundef %or1.i, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %tobool44.not = icmp eq ptr %call38.i.i.i.i112, null
  br i1 %tobool44.not, label %if.end42.cleanup64_crit_edge, label %if.end46

if.end42.cleanup64_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

if.end46:                                         ; preds = %if.end42
  %call47 = tail call i32 @add_to_page_cache_lru(ptr noundef nonnull %call38.i.i.i.i112, ptr noundef %1, i32 noundef %add34, i32 noundef %or1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end46
  %30 = getelementptr inbounds %struct.page, ptr %call38.i.i.i.i112, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %and.i.i113 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i113)
  %tobool.not.i.i114 = icmp eq i32 %and.i.i113, 0
  br i1 %tobool.not.i.i114, label %if.end.i.i117, label %if.then.i.i116, !prof !63

if.then.i.i116:                                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i115 = add i32 %32, -1
  br label %_compound_head.exit.i122

if.end.i.i117:                                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %call38.i.i.i.i112 to i32
  br label %_compound_head.exit.i122

_compound_head.exit.i122:                         ; preds = %if.end.i.i117, %if.then.i.i116
  %retval.0.i.i118 = phi i32 [ %sub.i.i115, %if.then.i.i116 ], [ %33, %if.end.i.i117 ]
  %34 = inttoptr i32 %retval.0.i.i118 to ptr
  %_refcount.i.i.i.i.i119 = getelementptr inbounds %struct.page, ptr %34, i32 0, i32 3
  %call.i.i.i.i.i.i.i120 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i119, i32 noundef 4) #8
  %35 = ptrtoint ptr %_refcount.i.i.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %_refcount.i.i.i.i.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i.i.i121 = icmp eq i32 %36, 0
  br i1 %cmp.i.i.i.i121, label %if.then.i.i.i.i123, label %do.end5.i.i.i.i127, !prof !64

if.then.i.i.i.i123:                               ; preds = %_compound_head.exit.i122
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %34, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !65
  unreachable

do.end5.i.i.i.i127:                               ; preds = %_compound_head.exit.i122
  %call.i.i.i10.i.i.i.i124 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i119, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i119, i32 1, i32 3, i32 1) #8
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i119, ptr %_refcount.i.i.i.i.i119, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i119) #8, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i125 = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i125)
  %cmp.i.i.i.i.i.i.i126 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i125, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@readahead_expand, %if.then.i.i.i.i.i129)) #8
          to label %folio_put_testzero.exit.i.i130 [label %if.then.i.i.i.i.i129], !srcloc !69

if.then.i.i.i.i.i129:                             ; preds = %do.end5.i.i.i.i127
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i128 = zext i1 %cmp.i.i.i.i.i.i.i126 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %34, i32 noundef -1, i32 noundef %conv.i.i.i.i.i128) #8
  br label %folio_put_testzero.exit.i.i130

folio_put_testzero.exit.i.i130:                   ; preds = %if.then.i.i.i.i.i129, %do.end5.i.i.i.i127
  br i1 %cmp.i.i.i.i.i.i.i126, label %folio_put_testzero.exit.i.i130.cleanup64.sink.split_crit_edge, label %folio_put_testzero.exit.i.i130.cleanup64_crit_edge

folio_put_testzero.exit.i.i130.cleanup64_crit_edge: ; preds = %folio_put_testzero.exit.i.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

folio_put_testzero.exit.i.i130.cleanup64.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64.sink.split

if.end51:                                         ; preds = %if.end46
  %38 = ptrtoint ptr %_nr_pages27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %_nr_pages27, align 4
  %inc53 = add i32 %39, 1
  store i32 %inc53, ptr %_nr_pages27, align 4
  br i1 %tobool54.not, label %if.end51.cleanup59_crit_edge, label %if.then55

if.end51.cleanup59_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup59

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size, align 4
  %inc56 = add i32 %41, 1
  store i32 %inc56, ptr %size, align 4
  %42 = ptrtoint ptr %async_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %async_size, align 8
  %inc57 = add i32 %43, 1
  store i32 %inc57, ptr %async_size, align 8
  br label %cleanup59

cleanup59:                                        ; preds = %if.then55, %if.end51.cleanup59_crit_edge
  %44 = ptrtoint ptr %_nr_pages27 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %_nr_pages27, align 4
  %cmp28 = icmp ult i32 %45, %div25107
  br i1 %cmp28, label %cleanup59.while.body30_crit_edge, label %cleanup59.cleanup64_crit_edge

cleanup59.cleanup64_crit_edge:                    ; preds = %cleanup59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

cleanup59.while.body30_crit_edge:                 ; preds = %cleanup59
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body30

cleanup64.sink.split:                             ; preds = %folio_put_testzero.exit.i.i130.cleanup64.sink.split_crit_edge, %folio_put_testzero.exit.i.i.cleanup64.sink.split_crit_edge
  %.sink = phi ptr [ %14, %folio_put_testzero.exit.i.i.cleanup64.sink.split_crit_edge ], [ %34, %folio_put_testzero.exit.i.i130.cleanup64.sink.split_crit_edge ]
  tail call void @__put_page(ptr noundef %.sink) #8
  br label %cleanup64

cleanup64:                                        ; preds = %cleanup64.sink.split, %cleanup59.cleanup64_crit_edge, %folio_put_testzero.exit.i.i130.cleanup64_crit_edge, %if.end42.cleanup64_crit_edge, %while.body30.cleanup64_crit_edge, %while.end.cleanup64_crit_edge, %folio_put_testzero.exit.i.i.cleanup64_crit_edge, %if.end.cleanup64_crit_edge, %while.body.cleanup64_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_invalidatepage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pages_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__folio_alloc(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_blkcg() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @page_cache_next_miss(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @page_cache_prev_miss(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_congested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__ksymtab_file_ra_state_init, !1, !"__ksymtab_file_ra_state_init", i1 false, i1 false}
!1 = !{!"../mm/readahead.c", i32 38, i32 1}
!2 = !{ptr @__ksymtab_read_cache_pages, !3, !"__ksymtab_read_cache_pages", i1 false, i1 false}
!3 = !{!"../mm/readahead.c", i32 114, i32 1}
!4 = !{ptr @__ksymtab_page_cache_ra_unbounded, !5, !"__ksymtab_page_cache_ra_unbounded", i1 false, i1 false}
!5 = !{!"../mm/readahead.c", i32 242, i32 1}
!6 = !{ptr @__ksymtab_page_cache_sync_ra, !7, !"__ksymtab_page_cache_sync_ra", i1 false, i1 false}
!7 = !{!"../mm/readahead.c", i32 581, i32 1}
!8 = !{ptr @__ksymtab_page_cache_async_ra, !9, !"__ksymtab_page_cache_async_ra", i1 false, i1 false}
!9 = !{!"../mm/readahead.c", i32 610, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../mm/readahead.c", i32 638, i32 1}
!12 = !{ptr @event_enter__readahead, !11, !"event_enter__readahead", i1 false, i1 false}
!13 = !{ptr @__event_enter__readahead, !11, !"__event_enter__readahead", i1 false, i1 false}
!14 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_exit__readahead, !11, !"event_exit__readahead", i1 false, i1 false}
!16 = !{ptr @__event_exit__readahead, !11, !"__event_exit__readahead", i1 false, i1 false}
!17 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__syscall_meta__readahead, !11, !"__syscall_meta__readahead", i1 false, i1 false}
!19 = !{ptr @__p_syscall_meta__readahead, !11, !"__p_syscall_meta__readahead", i1 false, i1 false}
!20 = !{ptr @__ksymtab_readahead_expand, !21, !"__ksymtab_readahead_expand", i1 false, i1 false}
!21 = !{!"../mm/readahead.c", i32 716, i32 1}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/pagemap.h", i32 1096, i32 2}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/gfp.h", i32 579, i32 2}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/mm.h", i32 717, i32 2}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/cgroup.h", i32 494, i32 9}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.14, !11, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.15, !11, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.16, !11, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @types__readahead, !11, !"types__readahead", i1 false, i1 false}
!49 = !{ptr @.str.17, !11, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.18, !11, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.19, !11, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @args__readahead, !11, !"args__readahead", i1 false, i1 false}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{i64 2153135517, i64 2153136000, i64 2153135554, i64 2153135610, i64 2153135644, i64 2153135668, i64 2153135709, i64 2153135730, i64 2153135758, i64 2153135792}
!66 = !{i64 2148316249}
!67 = !{i64 2148230982, i64 2148231014, i64 2148231043, i64 2148231077, i64 2148231108, i64 2148231131}
!68 = !{i64 2148316478}
!69 = !{i64 2148709612, i64 2148709617, i64 2148709630, i64 2148709674, i64 2148709708, i64 2148709729}
!70 = !{i64 2150585226, i64 2150585717, i64 2150585263, i64 2150585319, i64 2150585353, i64 2150585377, i64 2150585418, i64 2150585439, i64 2150585467, i64 2150585501}
!71 = !{i64 2148236655, i64 2148236687, i64 2148236716, i64 2148236750, i64 2148236781, i64 2148236804}
!72 = !{i64 2148325736}
!73 = !{i64 2155807332, i64 2155807810, i64 2155807369, i64 2155807425, i64 2155807459, i64 2155807483, i64 2155807524, i64 2155807545, i64 2155807573, i64 2155807607}
!74 = !{i64 2154646318, i64 2154646807, i64 2154646355, i64 2154646411, i64 2154646445, i64 2154646469, i64 2154646510, i64 2154646531, i64 2154646559, i64 2154646593}
!75 = !{i64 2154648164, i64 2154648653, i64 2154648201, i64 2154648257, i64 2154648291, i64 2154648315, i64 2154648356, i64 2154648377, i64 2154648405, i64 2154648439}
!76 = !{i64 2151347951, i64 2151348442, i64 2151347988, i64 2151348044, i64 2151348078, i64 2151348102, i64 2151348143, i64 2151348164, i64 2151348192, i64 2151348226}
!77 = !{i64 2155813167, i64 2155813646, i64 2155813204, i64 2155813260, i64 2155813294, i64 2155813318, i64 2155813359, i64 2155813380, i64 2155813408, i64 2155813442}
!78 = !{i64 2155814748, i64 2155815227, i64 2155814785, i64 2155814841, i64 2155814875, i64 2155814899, i64 2155814940, i64 2155814961, i64 2155814989, i64 2155815023}
!79 = !{i64 620278, i64 620339}
!80 = !{i64 623010}
!81 = !{i64 623295}
!82 = !{i64 2152519312}
!83 = !{i64 2152519154}
!84 = !{i64 2152519482}
!85 = !{i64 2150105296}
!86 = !{i64 2149488927}
!87 = !{i64 2149489193}
!88 = !{i32 0, i32 33}
!89 = !{!90}
!90 = distinct !{!90, !91, !"fdget: %agg.result"}
!91 = distinct !{!91, !"fdget"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"fdget: %agg.result"}
!94 = distinct !{!94, !"fdget"}
