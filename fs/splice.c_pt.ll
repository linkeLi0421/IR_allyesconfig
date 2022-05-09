; ModuleID = '/llk/IR_all_yes/fs/splice.c_pt.bc'
source_filename = "../fs/splice.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+splice_to_pipe\22, \22a\22\09"
module asm "\09.weak\09__crc_splice_to_pipe\09\09\09\09"
module asm "\09.long\09__crc_splice_to_pipe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_splice_to_pipe:\09\09\09\09\09"
module asm "\09.asciz \09\22splice_to_pipe\22\09\09\09\09\09"
module asm "__kstrtabns_splice_to_pipe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+add_to_pipe\22, \22a\22\09"
module asm "\09.weak\09__crc_add_to_pipe\09\09\09\09"
module asm "\09.long\09__crc_add_to_pipe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_to_pipe:\09\09\09\09\09"
module asm "\09.asciz \09\22add_to_pipe\22\09\09\09\09\09"
module asm "__kstrtabns_add_to_pipe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+generic_file_splice_read\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_file_splice_read\09\09\09\09"
module asm "\09.long\09__crc_generic_file_splice_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_file_splice_read:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_file_splice_read\22\09\09\09\09\09"
module asm "__kstrtabns_generic_file_splice_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nosteal_pipe_buf_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_nosteal_pipe_buf_ops\09\09\09\09"
module asm "\09.long\09__crc_nosteal_pipe_buf_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nosteal_pipe_buf_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22nosteal_pipe_buf_ops\22\09\09\09\09\09"
module asm "__kstrtabns_nosteal_pipe_buf_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__splice_from_pipe\22, \22a\22\09"
module asm "\09.weak\09__crc___splice_from_pipe\09\09\09\09"
module asm "\09.long\09__crc___splice_from_pipe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___splice_from_pipe:\09\09\09\09\09"
module asm "\09.asciz \09\22__splice_from_pipe\22\09\09\09\09\09"
module asm "__kstrtabns___splice_from_pipe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iter_file_splice_write\22, \22a\22\09"
module asm "\09.weak\09__crc_iter_file_splice_write\09\09\09\09"
module asm "\09.long\09__crc_iter_file_splice_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iter_file_splice_write:\09\09\09\09\09"
module asm "\09.asciz \09\22iter_file_splice_write\22\09\09\09\09\09"
module asm "__kstrtabns_iter_file_splice_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+generic_splice_sendpage\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_splice_sendpage\09\09\09\09"
module asm "\09.long\09__crc_generic_splice_sendpage\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_splice_sendpage:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_splice_sendpage\22\09\09\09\09\09"
module asm "__kstrtabns_generic_splice_sendpage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+splice_direct_to_actor\22, \22a\22\09"
module asm "\09.weak\09__crc_splice_direct_to_actor\09\09\09\09"
module asm "\09.long\09__crc_splice_direct_to_actor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_splice_direct_to_actor:\09\09\09\09\09"
module asm "\09.asciz \09\22splice_direct_to_actor\22\09\09\09\09\09"
module asm "__kstrtabns_splice_direct_to_actor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+do_splice_direct\22, \22a\22\09"
module asm "\09.weak\09__crc_do_splice_direct\09\09\09\09"
module asm "\09.long\09__crc_do_splice_direct\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_splice_direct:\09\09\09\09\09"
module asm "\09.asciz \09\22do_splice_direct\22\09\09\09\09\09"
module asm "__kstrtabns_do_splice_direct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pipe_buf_operations = type { ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.66, %struct.trace_event, ptr, ptr, %union.anon.68, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.66 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.68 = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.67 }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.99, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.99 = type { %struct.atomic_t }
%struct.pipe_buffer = type { ptr, i32, i32, ptr, i32, i32 }
%struct.splice_pipe_desc = type { ptr, ptr, i32, i32, ptr, ptr }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.partial_page = type { i32, i32, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.85, %union.anon.86 }
%union.anon.85 = type { ptr }
%union.anon.86 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.100, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.101, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.102, ptr, %struct.address_space, %struct.list_head, %union.anon.103, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.100 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.101 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.102 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.103 = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.72 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.io_context = type { %struct.atomic_t, %struct.atomic_t, i16, %struct.spinlock, %struct.xarray, ptr, %struct.hlist_head, %struct.work_struct }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.splice_desc = type { i32, i32, i32, %union.anon.108, i64, ptr, i32, i8 }
%union.anon.108 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iovec = type { ptr, i32 }

@page_cache_pipe_buf_ops = dso_local constant { %struct.pipe_buf_operations, [16 x i8] } { %struct.pipe_buf_operations { ptr @page_cache_pipe_buf_confirm, ptr @page_cache_pipe_buf_release, ptr @page_cache_pipe_buf_try_steal, ptr @generic_pipe_buf_get }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_splice_to_pipe = external dso_local constant [0 x i8], align 1
@__kstrtabns_splice_to_pipe = external dso_local constant [0 x i8], align 1
@__ksymtab_splice_to_pipe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @splice_to_pipe to i32), ptr @__kstrtab_splice_to_pipe, ptr @__kstrtabns_splice_to_pipe }, section "___ksymtab_gpl+splice_to_pipe", align 4
@__kstrtab_add_to_pipe = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_to_pipe = external dso_local constant [0 x i8], align 1
@__ksymtab_add_to_pipe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_to_pipe to i32), ptr @__kstrtab_add_to_pipe, ptr @__kstrtabns_add_to_pipe }, section "___ksymtab+add_to_pipe", align 4
@__kstrtab_generic_file_splice_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_file_splice_read = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_file_splice_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_file_splice_read to i32), ptr @__kstrtab_generic_file_splice_read, ptr @__kstrtabns_generic_file_splice_read }, section "___ksymtab+generic_file_splice_read", align 4
@default_pipe_buf_ops = dso_local constant { %struct.pipe_buf_operations, [16 x i8] } { %struct.pipe_buf_operations { ptr null, ptr @generic_pipe_buf_release, ptr @generic_pipe_buf_try_steal, ptr @generic_pipe_buf_get }, [16 x i8] zeroinitializer }, align 32
@nosteal_pipe_buf_ops = dso_local constant { %struct.pipe_buf_operations, [16 x i8] } { %struct.pipe_buf_operations { ptr null, ptr @generic_pipe_buf_release, ptr null, ptr @generic_pipe_buf_get }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_nosteal_pipe_buf_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_nosteal_pipe_buf_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_nosteal_pipe_buf_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nosteal_pipe_buf_ops to i32), ptr @__kstrtab_nosteal_pipe_buf_ops, ptr @__kstrtabns_nosteal_pipe_buf_ops }, section "___ksymtab+nosteal_pipe_buf_ops", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fs/splice.c\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab___splice_from_pipe = external dso_local constant [0 x i8], align 1
@__kstrtabns___splice_from_pipe = external dso_local constant [0 x i8], align 1
@__ksymtab___splice_from_pipe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__splice_from_pipe to i32), ptr @__kstrtab___splice_from_pipe, ptr @__kstrtabns___splice_from_pipe }, section "___ksymtab+__splice_from_pipe", align 4
@__kstrtab_iter_file_splice_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_iter_file_splice_write = external dso_local constant [0 x i8], align 1
@__ksymtab_iter_file_splice_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iter_file_splice_write to i32), ptr @__kstrtab_iter_file_splice_write, ptr @__kstrtabns_iter_file_splice_write }, section "___ksymtab+iter_file_splice_write", align 4
@__kstrtab_generic_splice_sendpage = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_splice_sendpage = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_splice_sendpage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_splice_sendpage to i32), ptr @__kstrtab_generic_splice_sendpage, ptr @__kstrtabns_generic_splice_sendpage }, section "___ksymtab+generic_splice_sendpage", align 4
@splice_direct_to_actor.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_splice_direct_to_actor = external dso_local constant [0 x i8], align 1
@__kstrtabns_splice_direct_to_actor = external dso_local constant [0 x i8], align 1
@__ksymtab_splice_direct_to_actor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @splice_direct_to_actor to i32), ptr @__kstrtab_splice_direct_to_actor, ptr @__kstrtabns_splice_direct_to_actor }, section "___ksymtab+splice_direct_to_actor", align 4
@__kstrtab_do_splice_direct = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_splice_direct = external dso_local constant [0 x i8], align 1
@__ksymtab_do_splice_direct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_splice_direct to i32), ptr @__kstrtab_do_splice_direct, ptr @__kstrtabns_do_splice_direct }, section "___ksymtab+do_splice_direct", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_vmsplice\00", [45 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__vmsplice = internal global %struct.syscall_metadata { ptr @.str.3, i32 -1, i32 4, ptr @types__vmsplice, ptr @args__vmsplice, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__vmsplice, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__vmsplice, i64 20) }, ptr @event_enter__vmsplice, ptr @event_exit__vmsplice }, align 4
@event_enter__vmsplice = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.66 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr @__syscall_meta__vmsplice, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__vmsplice = internal global ptr @event_enter__vmsplice, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_vmsplice\00", [46 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__vmsplice = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.66 { ptr @.str.2 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr @__syscall_meta__vmsplice, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__vmsplice = internal global ptr @event_exit__vmsplice, section "_ftrace_events", align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_vmsplice\00", [19 x i8] zeroinitializer }, align 32
@types__vmsplice = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], [16 x i8] zeroinitializer }, align 32
@args__vmsplice = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__vmsplice = internal global ptr @__syscall_meta__vmsplice, section "__syscalls_metadata", align 4
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_splice\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__splice = internal global %struct.syscall_metadata { ptr @.str.6, i32 -1, i32 6, ptr @types__splice, ptr @args__splice, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__splice, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__splice, i64 20) }, ptr @event_enter__splice, ptr @event_exit__splice }, align 4
@event_enter__splice = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.66 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr @__syscall_meta__splice, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__splice = internal global ptr @event_enter__splice, section "_ftrace_events", align 4
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_splice\00", [16 x i8] zeroinitializer }, align 32
@event_exit__splice = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.66 { ptr @.str.5 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr @__syscall_meta__splice, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__splice = internal global ptr @event_exit__splice, section "_ftrace_events", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_splice\00", [21 x i8] zeroinitializer }, align 32
@types__splice = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.23, ptr @.str.31, ptr @.str.23, ptr @.str.31, ptr @.str.32, ptr @.str.26], [40 x i8] zeroinitializer }, align 32
@args__splice = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.30], [40 x i8] zeroinitializer }, align 32
@__p_syscall_meta__splice = internal global ptr @__syscall_meta__splice, section "__syscalls_metadata", align 4
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_enter_tee\00", [18 x i8] zeroinitializer }, align 32
@__syscall_meta__tee = internal global %struct.syscall_metadata { ptr @.str.9, i32 -1, i32 4, ptr @types__tee, ptr @args__tee, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__tee, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__tee, i64 20) }, ptr @event_enter__tee, ptr @event_exit__tee }, align 4
@event_enter__tee = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.66 { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr @__syscall_meta__tee, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__tee = internal global ptr @event_enter__tee, section "_ftrace_events", align 4
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_exit_tee\00", [19 x i8] zeroinitializer }, align 32
@event_exit__tee = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.66 { ptr @.str.8 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr @__syscall_meta__tee, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__tee = internal global ptr @event_exit__tee, section "_ftrace_events", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sys_tee\00", [24 x i8] zeroinitializer }, align 32
@types__tee = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.23, ptr @.str.23, ptr @.str.32, ptr @.str.26], [16 x i8] zeroinitializer }, align 32
@args__tee = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.37, ptr @.str.30], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__tee = internal global ptr @__syscall_meta__tee, section "__syscalls_metadata", align 4
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@warn_unsupported._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@warn_unsupported.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str, ptr @.str.18, i8 0, i8 -68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"splice\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"warn_unsupported\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"splice %s not supported for file %pD4 (pid: %d comm: %.20s)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"const struct iovec *\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uiov\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nr_segs\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@user_page_pipe_buf_ops = internal constant { %struct.pipe_buf_operations, [16 x i8] } { %struct.pipe_buf_operations { ptr null, ptr @page_cache_pipe_buf_release, ptr @user_page_pipe_buf_try_steal, ptr @generic_pipe_buf_get }, [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"loff_t *\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fd_in\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"off_in\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fd_out\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"off_out\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fdin\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fdout\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 16, i64 24576, i64 32768]
@___asan_gen_.45 = private unnamed_addr constant [24 x i8] c"page_cache_pipe_buf_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 140, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"default_pipe_buf_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 331, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [21 x i8] c"nosteal_pipe_buf_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 338, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 559, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [22 x i8] c"event_enter__vmsplice\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [21 x i8] c"event_exit__vmsplice\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"types__vmsplice\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [15 x i8] c"args__vmsplice\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [20 x i8] c"event_enter__splice\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c"event_exit__splice\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [14 x i8] c"types__splice\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"args__splice\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"event_enter__tee\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"event_exit__tee\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [11 x i8] c"types__tee\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [10 x i8] c"args__tee\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 260, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 788, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 717, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 795, i32 31 }
@___asan_gen_.132 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 753, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 49, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 34, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 766, i32 32 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1296, i32 1 }
@___asan_gen_.183 = private unnamed_addr constant [23 x i8] c"user_page_pipe_buf_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 157, i32 41 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1332, i32 1 }
@___asan_gen_.208 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 156, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [15 x i8] c"../fs/splice.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1698, i32 1 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__event_enter__splice, ptr @__event_enter__tee, ptr @__event_enter__vmsplice, ptr @__event_exit__splice, ptr @__event_exit__tee, ptr @__event_exit__vmsplice, ptr @__ksymtab___splice_from_pipe, ptr @__ksymtab_add_to_pipe, ptr @__ksymtab_do_splice_direct, ptr @__ksymtab_generic_file_splice_read, ptr @__ksymtab_generic_splice_sendpage, ptr @__ksymtab_iter_file_splice_write, ptr @__ksymtab_nosteal_pipe_buf_ops, ptr @__ksymtab_splice_direct_to_actor, ptr @__ksymtab_splice_to_pipe, ptr @__p_syscall_meta__splice, ptr @__p_syscall_meta__tee, ptr @__p_syscall_meta__vmsplice, ptr @__syscall_meta__splice, ptr @__syscall_meta__tee, ptr @__syscall_meta__vmsplice, ptr @event_enter__splice, ptr @event_enter__tee, ptr @event_enter__vmsplice, ptr @event_exit__splice, ptr @event_exit__tee, ptr @event_exit__vmsplice, ptr @page_cache_pipe_buf_ops, ptr @default_pipe_buf_ops, ptr @nosteal_pipe_buf_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @types__vmsplice, ptr @args__vmsplice, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @types__splice, ptr @args__splice, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @types__tee, ptr @args__tee, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @warn_unsupported._rs, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @user_page_pipe_buf_ops, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_cache_pipe_buf_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_pipe_buf_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nosteal_pipe_buf_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__vmsplice to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__vmsplice to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__vmsplice to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__vmsplice to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__splice to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__splice to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__splice to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__splice to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__tee to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__tee to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__tee to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__tee to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_unsupported._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_page_pipe_buf_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_vmsplice = dso_local alias i32 (i32, ptr, i32, i32), ptr @__se_sys_vmsplice
@sys_splice = dso_local alias i32 (i32, ptr, i32, ptr, i32, i32), ptr @__se_sys_splice
@sys_tee = dso_local alias i32 (i32, i32, i32, i32), ptr @__se_sys_tee

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @page_cache_pipe_buf_confirm(ptr nocapture noundef readnone %pipe, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !125

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %1 to i32
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
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !125

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.10) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !126
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %6, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %if.then, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !127
  br label %cleanup

if.then:                                          ; preds = %folio_flags.exit.i.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 788) #8
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %2, align 4
  %and.i.i15 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i15)
  %tobool.not.i.i16 = icmp eq i32 %and.i.i15, 0
  br i1 %tobool.not.i.i16, label %if.end.i.i19, label %if.then.i.i18, !prof !125

if.then.i.i18:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i17 = add i32 %14, -1
  br label %_compound_head.exit.i23

if.end.i.i19:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i23

_compound_head.exit.i23:                          ; preds = %if.end.i.i19, %if.then.i.i18
  %retval.0.i.i20 = phi i32 [ %sub.i.i17, %if.then.i.i18 ], [ %15, %if.end.i.i19 ]
  %16 = inttoptr i32 %retval.0.i.i20 to ptr
  %17 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i.i.i21 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i21)
  %tobool.not.i.i.i22 = icmp eq i32 %and.i.i.i.i21, 0
  br i1 %tobool.not.i.i.i22, label %folio_flags.exit.i.i25, label %if.then.i.i.i24, !prof !125

if.then.i.i.i24:                                  ; preds = %_compound_head.exit.i23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.10) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !126
  unreachable

folio_flags.exit.i.i25:                           ; preds = %_compound_head.exit.i23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %16, i32 noundef 4) #8
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %16, align 4
  %and.i.i4.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i25.if.then.i_crit_edge

folio_flags.exit.i.i25.if.then.i_crit_edge:       ; preds = %folio_flags.exit.i.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i25
  tail call void @llvm.prefetch.p0(ptr %16, i32 1, i32 3, i32 1) #8
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #8, !srcloc !128
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !129
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i25.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %16) #8
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %mapping = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mapping, align 4
  %tobool2.not = icmp eq ptr %24, null
  br i1 %tobool2.not, label %lock_page.exit.error_crit_edge, label %if.end

lock_page.exit.error_crit_edge:                   ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end:                                           ; preds = %lock_page.exit
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %2, align 4
  %and.i.i26 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i26)
  %tobool.not.i.i27 = icmp eq i32 %and.i.i26, 0
  br i1 %tobool.not.i.i27, label %if.end.i.i30, label %if.then.i.i29, !prof !125

if.then.i.i29:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i28 = add i32 %26, -1
  br label %_compound_head.exit.i34

if.end.i.i30:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i34

_compound_head.exit.i34:                          ; preds = %if.end.i.i30, %if.then.i.i29
  %retval.0.i.i31 = phi i32 [ %sub.i.i28, %if.then.i.i29 ], [ %27, %if.end.i.i30 ]
  %28 = inttoptr i32 %retval.0.i.i31 to ptr
  %29 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i.i.i32 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i32)
  %tobool.not.i.i.i33 = icmp eq i32 %and.i.i.i.i32, 0
  br i1 %tobool.not.i.i.i33, label %folio_flags.exit.i.i37, label %if.then.i.i.i35, !prof !125

if.then.i.i.i35:                                  ; preds = %_compound_head.exit.i34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %28, ptr noundef nonnull @.str.10) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !126
  unreachable

folio_flags.exit.i.i37:                           ; preds = %_compound_head.exit.i34
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %28, align 4
  %34 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not.i36 = icmp eq i32 %34, 0
  br i1 %tobool.i.not.i36, label %folio_flags.exit.i.i37.error_crit_edge, label %PageUptodate.exit40

folio_flags.exit.i.i37.error_crit_edge:           ; preds = %folio_flags.exit.i.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

PageUptodate.exit40:                              ; preds = %folio_flags.exit.i.i37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @unlock_page(ptr noundef %1) #8
  br label %cleanup

error:                                            ; preds = %folio_flags.exit.i.i37.error_crit_edge, %lock_page.exit.error_crit_edge
  %err.0 = phi i32 [ -61, %lock_page.exit.error_crit_edge ], [ -5, %folio_flags.exit.i.i37.error_crit_edge ]
  tail call void @unlock_page(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %PageUptodate.exit40, %PageUptodate.exit
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %PageUptodate.exit40 ], [ 0, %PageUptodate.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @page_cache_pipe_buf_release(ptr nocapture noundef readnone %pipe, ptr nocapture noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !125

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %7 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i.i.i = icmp eq i32 %8, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !130

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.13) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !131
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !133
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@page_cache_pipe_buf_release, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !135

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %6, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %6) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %flags = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, -2
  store i32 %and, ptr %flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @page_cache_pipe_buf_try_steal(ptr nocapture noundef readnone %pipe, ptr nocapture noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 788) #8
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !125

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %1 to i32
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
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !125

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.10) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !126
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #8
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %6, align 4
  %and.i.i4.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #8, !srcloc !128
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !129
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %6) #8
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call = tail call ptr @page_mapping(ptr noundef %1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %lock_page.exit.out_unlock_crit_edge, label %if.then

lock_page.exit.out_unlock_crit_edge:              ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.then:                                          ; preds = %lock_page.exit
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %2, align 4
  %and.i.i47 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i47)
  %tobool.not.i.i48 = icmp eq i32 %and.i.i47, 0
  br i1 %tobool.not.i.i48, label %if.end.i.i51, label %if.then.i.i50, !prof !125

if.then.i.i50:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i49 = add i32 %14, -1
  br label %_compound_head.exit.i55

if.end.i.i51:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i55

_compound_head.exit.i55:                          ; preds = %if.end.i.i51, %if.then.i.i50
  %retval.0.i.i52 = phi i32 [ %sub.i.i49, %if.then.i.i50 ], [ %15, %if.end.i.i51 ]
  %16 = inttoptr i32 %retval.0.i.i52 to ptr
  %17 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i.i.i53 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i53)
  %tobool.not.i.i.i54 = icmp eq i32 %and.i.i.i.i53, 0
  br i1 %tobool.not.i.i.i54, label %folio_flags.exit.i.i57, label %if.then.i.i.i56, !prof !125

if.then.i.i.i56:                                  ; preds = %_compound_head.exit.i55
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.10) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !126
  unreachable

folio_flags.exit.i.i57:                           ; preds = %_compound_head.exit.i55
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %16, align 4
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i, label %do.end, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !127
  br label %if.end

do.end:                                           ; preds = %folio_flags.exit.i.i57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %PageUptodate.exit
  tail call void @wait_on_page_writeback(ptr noundef %1) #8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  %and.i = and i32 %24, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end30_crit_edge, label %land.lhs.true

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end
  %call27 = tail call i32 @try_to_release_page(ptr noundef %1, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true.out_unlock_crit_edge, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true.out_unlock_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %call31 = tail call i32 @remove_mapping(ptr noundef nonnull %call, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end30.out_unlock_crit_edge, label %if.then33

if.end30.out_unlock_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 4
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %or = or i32 %26, 1
  store i32 %or, ptr %flags, align 4
  br label %cleanup

out_unlock:                                       ; preds = %if.end30.out_unlock_crit_edge, %land.lhs.true.out_unlock_crit_edge, %lock_page.exit.out_unlock_crit_edge
  tail call void @unlock_page(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.then33
  %retval.0 = phi i1 [ true, %if.then33 ], [ false, %out_unlock ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @generic_pipe_buf_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @splice_to_pipe(ptr nocapture noundef %pipe, ptr noundef %spd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_pages = getelementptr inbounds %struct.splice_pipe_desc, ptr %spd, i32 0, i32 2
  %0 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_pages, align 4
  %tail1 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 4
  %2 = ptrtoint ptr %tail1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail1, align 4
  %head2 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 3
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 6
  %4 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring_size, align 4
  %sub = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup37_crit_edge, label %if.end

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

if.end:                                           ; preds = %entry
  %readers = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 9
  %6 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %readers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.then7, label %while.cond.preheader, !prof !130

while.cond.preheader:                             ; preds = %if.end
  %8 = ptrtoint ptr %head2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %head2, align 4
  %bufs = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 18
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 5
  %partial = getelementptr inbounds %struct.splice_pipe_desc, ptr %spd, i32 0, i32 1
  %ops = getelementptr inbounds %struct.splice_pipe_desc, ptr %spd, i32 0, i32 4
  br label %while.cond

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %call8 = tail call i32 @send_sig(i32 noundef 13, ptr noundef %13, i32 noundef 0) #8
  br label %out

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %head.0 = phi i32 [ %inc, %while.body.while.cond_crit_edge ], [ %9, %while.cond.preheader ]
  %ret.0 = phi i32 [ %add, %while.body.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %page_nr.0 = phi i32 [ %inc24, %while.body.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %14 = ptrtoint ptr %max_usage to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_usage, align 4
  %sub.i.i = sub i32 %head.0, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %15)
  %cmp.i.not = icmp ult i32 %sub.i.i, %15
  br i1 %cmp.i.not, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond
  %16 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bufs, align 4
  %and = and i32 %head.0, %sub
  %arrayidx = getelementptr %struct.pipe_buffer, ptr %17, i32 %and
  %18 = ptrtoint ptr %spd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spd, align 4
  %arrayidx13 = getelementptr ptr, ptr %19, i32 %page_nr.0
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx13, align 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %partial to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %partial, align 4
  %arrayidx14 = getelementptr %struct.partial_page, ptr %24, i32 %page_nr.0
  %25 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx14, align 4
  %offset15 = getelementptr %struct.pipe_buffer, ptr %17, i32 %and, i32 1
  %27 = ptrtoint ptr %offset15 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %offset15, align 4
  %28 = load ptr, ptr %partial, align 4
  %len = getelementptr %struct.partial_page, ptr %28, i32 %page_nr.0, i32 1
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %len18 = getelementptr %struct.pipe_buffer, ptr %17, i32 %and, i32 2
  %31 = ptrtoint ptr %len18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %len18, align 4
  %32 = load ptr, ptr %partial, align 4
  %private = getelementptr %struct.partial_page, ptr %32, i32 %page_nr.0, i32 2
  %33 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %private, align 4
  %private21 = getelementptr %struct.pipe_buffer, ptr %17, i32 %and, i32 5
  %35 = ptrtoint ptr %private21 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %private21, align 4
  %36 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops, align 4
  %ops22 = getelementptr %struct.pipe_buffer, ptr %17, i32 %and, i32 3
  %38 = ptrtoint ptr %ops22 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %ops22, align 4
  %flags = getelementptr %struct.pipe_buffer, ptr %17, i32 %and, i32 4
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %flags, align 4
  %inc = add i32 %head.0, 1
  %40 = ptrtoint ptr %head2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %inc, ptr %head2, align 4
  %inc24 = add i32 %page_nr.0, 1
  %41 = load i32, ptr %len18, align 4
  %add = add i32 %41, %ret.0
  %42 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_pages, align 4
  %dec = add i32 %43, -1
  store i32 %dec, ptr %nr_pages, align 4
  %tobool27.not = icmp eq i32 %dec, 0
  br i1 %tobool27.not, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %ret.1 = phi i32 [ %add, %while.body.while.end_crit_edge ], [ %ret.0, %while.cond.while.end_crit_edge ]
  %page_nr.1 = phi i32 [ %inc24, %while.body.while.end_crit_edge ], [ %page_nr.0, %while.cond.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool30.not = icmp eq i32 %ret.1, 0
  %spec.store.select = select i1 %tobool30.not, i32 -11, i32 %ret.1
  br label %out

out:                                              ; preds = %while.end, %if.then7
  %ret.2 = phi i32 [ -32, %if.then7 ], [ %spec.store.select, %while.end ]
  %page_nr.2 = phi i32 [ 0, %if.then7 ], [ %page_nr.1, %while.end ]
  call void @__sanitizer_cov_trace_cmp4(i32 %page_nr.2, i32 %1)
  %cmp75 = icmp ult i32 %page_nr.2, %1
  br i1 %cmp75, label %while.body34.lr.ph, label %out.cleanup37_crit_edge

out.cleanup37_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

while.body34.lr.ph:                               ; preds = %out
  %spd_release = getelementptr inbounds %struct.splice_pipe_desc, ptr %spd, i32 0, i32 5
  br label %while.body34

while.body34:                                     ; preds = %while.body34.while.body34_crit_edge, %while.body34.lr.ph
  %page_nr.376 = phi i32 [ %page_nr.2, %while.body34.lr.ph ], [ %inc35, %while.body34.while.body34_crit_edge ]
  %44 = ptrtoint ptr %spd_release to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %spd_release, align 4
  %inc35 = add i32 %page_nr.376, 1
  tail call void %45(ptr noundef %spd, i32 noundef %page_nr.376) #8
  %exitcond.not = icmp eq i32 %inc35, %1
  br i1 %exitcond.not, label %while.body34.cleanup37_crit_edge, label %while.body34.while.body34_crit_edge

while.body34.while.body34_crit_edge:              ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body34

while.body34.cleanup37_crit_edge:                 ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

cleanup37:                                        ; preds = %while.body34.cleanup37_crit_edge, %out.cleanup37_crit_edge, %entry.cleanup37_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup37_crit_edge ], [ %ret.2, %out.cleanup37_crit_edge ], [ %ret.2, %while.body34.cleanup37_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @add_to_pipe(ptr noundef %pipe, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %head1 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 3
  %0 = ptrtoint ptr %head1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head1, align 4
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 6
  %2 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring_size, align 4
  %sub = add i32 %3, -1
  %readers = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 9
  %4 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %readers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.else, !prof !130

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %call6 = tail call i32 @send_sig(i32 noundef 13, ptr noundef %9, i32 noundef 0) #8
  br label %if.end11

if.else:                                          ; preds = %entry
  %tail2 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 4
  %10 = ptrtoint ptr %tail2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tail2, align 4
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 5
  %12 = ptrtoint ptr %max_usage to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_usage, align 4
  %sub.i.i = sub i32 %1, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %13)
  %cmp.i.not = icmp ult i32 %sub.i.i, %13
  br i1 %cmp.i.not, label %if.else9, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %bufs = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 18
  %14 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bufs, align 4
  %and = and i32 %sub, %1
  %arrayidx = getelementptr %struct.pipe_buffer, ptr %15, i32 %and
  %16 = call ptr @memcpy(ptr %arrayidx, ptr %buf, i32 24)
  %add = add i32 %1, 1
  %17 = ptrtoint ptr %head1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %head1, align 4
  %len = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 2
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.then
  %ret.0 = phi i32 [ -32, %if.then ], [ -11, %if.else.if.end11_crit_edge ]
  %ops1.i = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 3
  %20 = ptrtoint ptr %ops1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops1.i, align 4
  store ptr null, ptr %ops1.i, align 4
  %release.i = getelementptr inbounds %struct.pipe_buf_operations, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release.i, align 4
  tail call void %23(ptr noundef %pipe, ptr noundef %buf) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else9
  %retval.0 = phi i32 [ %ret.0, %if.end11 ], [ %19, %if.else9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @splice_grow_spd(ptr noundef %pipe, ptr nocapture noundef %spd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_usage1 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 5
  %0 = ptrtoint ptr %max_usage1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %max_usage1, align 4
  %nr_pages_max = getelementptr inbounds %struct.splice_pipe_desc, ptr %spd, i32 0, i32 3
  %2 = ptrtoint ptr %nr_pages_max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %nr_pages_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %cmp = icmp ult i32 %1, 17
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #8
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %if.end.kmalloc_array.exit_crit_edge, label %if.end7.i, !prof !130

if.end.kmalloc_array.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmalloc_array.exit

if.end7.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #11
  br label %kmalloc_array.exit

kmalloc_array.exit:                               ; preds = %if.end7.i, %if.end.kmalloc_array.exit_crit_edge
  %retval.0.i = phi ptr [ %call8.i, %if.end7.i ], [ null, %if.end.kmalloc_array.exit_crit_edge ]
  %6 = ptrtoint ptr %spd to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %retval.0.i, ptr %spd, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 12) #8
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %kmalloc_array.exit51.thread, label %if.end7.i49, !prof !130

kmalloc_array.exit51.thread:                      ; preds = %kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #10
  %partial53 = getelementptr inbounds %struct.splice_pipe_desc, ptr %spd, i32 0, i32 1
  %9 = ptrtoint ptr %partial53 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %partial53, align 4
  %10 = ptrtoint ptr %spd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spd, align 4
  br label %if.end7

if.end7.i49:                                      ; preds = %kmalloc_array.exit
  %12 = extractvalue { i32, i1 } %7, 0
  %call8.i48 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #11
  %partial = getelementptr inbounds %struct.splice_pipe_desc, ptr %spd, i32 0, i32 1
  %13 = ptrtoint ptr %partial to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i48, ptr %partial, align 4
  %14 = ptrtoint ptr %spd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spd, align 4
  %tobool.not = icmp eq ptr %15, null
  %tobool5.not = icmp eq ptr %call8.i48, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.end7.i49.if.end7_crit_edge, label %if.end7.i49.cleanup_crit_edge

if.end7.i49.cleanup_crit_edge:                    ; preds = %if.end7.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i49.if.end7_crit_edge:                    ; preds = %if.end7.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7:                                          ; preds = %if.end7.i49.if.end7_crit_edge, %kmalloc_array.exit51.thread
  %16 = phi ptr [ %11, %kmalloc_array.exit51.thread ], [ %15, %if.end7.i49.if.end7_crit_edge ]
  %partial57 = phi ptr [ %partial53, %kmalloc_array.exit51.thread ], [ %partial, %if.end7.i49.if.end7_crit_edge ]
  tail call void @kfree(ptr noundef %16) #8
  %17 = ptrtoint ptr %partial57 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %partial57, align 4
  tail call void @kfree(ptr noundef %18) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end7.i49.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end7.i49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @splice_shrink_spd(ptr nocapture noundef readonly %spd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_pages_max = getelementptr inbounds %struct.splice_pipe_desc, ptr %spd, i32 0, i32 3
  %0 = ptrtoint ptr %nr_pages_max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_pages_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %cmp = icmp ult i32 %1, 17
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %spd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spd, align 4
  tail call void @kfree(ptr noundef %3) #8
  %partial = getelementptr inbounds %struct.splice_pipe_desc, ptr %spd, i32 0, i32 1
  %4 = ptrtoint ptr %partial to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %partial, align 4
  tail call void @kfree(ptr noundef %5) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_file_splice_read(ptr noundef %in, ptr nocapture noundef %ppos, ptr noundef %pipe, i32 noundef %len, i32 %flags) #0 align 64 {
entry:
  %to = alloca %struct.iov_iter, align 8
  %kiocb = alloca %struct.kiocb, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %to) #8
  %0 = call ptr @memset(ptr %to, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %kiocb) #8
  %1 = call ptr @memset(ptr %kiocb, i32 255, i32 40)
  call void @iov_iter_pipe(ptr noundef nonnull %to, i32 noundef 0, ptr noundef %pipe, i32 noundef %len) #8
  %2 = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 6
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %f_flags.i.i = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 7
  %5 = ptrtoint ptr %f_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_flags.i.i, align 4
  %and.i.i = lshr i32 %6, 6
  %7 = and i32 %and.i.i, 16
  %and2.i.i = shl i32 %6, 1
  %8 = and i32 %and2.i.i, 131072
  %9 = or i32 %8, %7
  %and8.i.i = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %lor.lhs.false.i.i, label %entry.if.then17.i.i_crit_edge

entry.if.then17.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i.i

lor.lhs.false.i.i:                                ; preds = %entry
  %f_mapping.i.i = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 18
  %10 = ptrtoint ptr %f_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_mapping.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i.i, align 4
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_flags.i.i, align 4
  %and10.i.i = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %lor.lhs.false12.i.i, label %lor.lhs.false.i.i.if.then17.i.i_crit_edge

lor.lhs.false.i.i.if.then17.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i.i

lor.lhs.false12.i.i:                              ; preds = %lor.lhs.false.i.i
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 4
  %18 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_flags.i.i, align 4
  %and15.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %lor.lhs.false12.i.i.iocb_flags.exit.i_crit_edge, label %lor.lhs.false12.i.i.if.then17.i.i_crit_edge

lor.lhs.false12.i.i.if.then17.i.i_crit_edge:      ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i.i

lor.lhs.false12.i.i.iocb_flags.exit.i_crit_edge:  ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iocb_flags.exit.i

if.then17.i.i:                                    ; preds = %lor.lhs.false12.i.i.if.then17.i.i_crit_edge, %lor.lhs.false.i.i.if.then17.i.i_crit_edge, %entry.if.then17.i.i_crit_edge
  %or18.i.i = or i32 %9, 2
  br label %iocb_flags.exit.i

iocb_flags.exit.i:                                ; preds = %if.then17.i.i, %lor.lhs.false12.i.i.iocb_flags.exit.i_crit_edge
  %res.2.i.i = phi i32 [ %or18.i.i, %if.then17.i.i ], [ %9, %lor.lhs.false12.i.i.iocb_flags.exit.i_crit_edge ]
  %f_write_hint.i.i = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 5
  %20 = ptrtoint ptr %f_write_hint.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f_write_hint.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i.i = icmp eq i32 %21, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %iocb_flags.exit.i.file_write_hint.exit.i_crit_edge

iocb_flags.exit.i.file_write_hint.exit.i_crit_edge: ; preds = %iocb_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %file_write_hint.exit.i

if.end.i.i:                                       ; preds = %iocb_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 2
  %22 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %f_inode.i.i.i, align 8
  %i_write_hint.i.i = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 21
  %24 = ptrtoint ptr %i_write_hint.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %i_write_hint.i.i, align 1
  %conv.i.i = zext i8 %25 to i32
  br label %file_write_hint.exit.i

file_write_hint.exit.i:                           ; preds = %if.end.i.i, %iocb_flags.exit.i.file_write_hint.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.end.i.i ], [ %21, %iocb_flags.exit.i.file_write_hint.exit.i_crit_edge ]
  %26 = call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i.i, align 8
  %io_context.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 151
  %30 = ptrtoint ptr %io_context.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_context.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %file_write_hint.exit.i.init_sync_kiocb.exit_crit_edge, label %if.then.i.i

file_write_hint.exit.i.init_sync_kiocb.exit_crit_edge: ; preds = %file_write_hint.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_sync_kiocb.exit

if.then.i.i:                                      ; preds = %file_write_hint.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %ioprio.i.i = getelementptr inbounds %struct.io_context, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %ioprio.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ioprio.i.i, align 4
  br label %init_sync_kiocb.exit

init_sync_kiocb.exit:                             ; preds = %if.then.i.i, %file_write_hint.exit.i.init_sync_kiocb.exit_crit_edge
  %retval.0.i8.i = phi i16 [ %33, %if.then.i.i ], [ 16388, %file_write_hint.exit.i.init_sync_kiocb.exit_crit_edge ]
  %34 = call i32 @llvm.umin.i32(i32 %retval.0.i.i, i32 65536) #8
  %35 = trunc i32 %34 to i16
  %and21.i.i = lshr i32 %6, 18
  %36 = and i32 %and21.i.i, 4
  %37 = or i32 %res.2.i.i, %36
  %38 = ptrtoint ptr %kiocb to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %in, ptr %kiocb, align 8
  %.compoundliteral.sroa.24.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 8
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 24
  %39 = getelementptr inbounds i8, ptr %kiocb, i32 16
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 0, ptr %39, align 8
  %41 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %37, ptr %.compoundliteral.sroa.5.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 28
  %42 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %35, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 30
  %43 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %retval.0.i8.i, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 32
  %44 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %.compoundliteral.sroa.8.0..sroa_idx.i, align 8
  %45 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %ppos, align 8
  %47 = ptrtoint ptr %.compoundliteral.sroa.24.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %.compoundliteral.sroa.24.0..sroa_idx.i, align 8
  %f_op.i = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 3
  %48 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %f_op.i, align 4
  %read_iter.i = getelementptr inbounds %struct.file_operations, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %read_iter.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read_iter.i, align 4
  %call.i = call i32 %51(ptr noundef nonnull %kiocb, ptr noundef nonnull %to) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %init_sync_kiocb.exit
  %52 = ptrtoint ptr %.compoundliteral.sroa.24.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %.compoundliteral.sroa.24.0..sroa_idx.i, align 8
  %54 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %ppos, align 8
  %55 = ptrtoint ptr %f_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %f_flags.i.i, align 4
  %and.i = and i32 %56, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %f_path.i = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 1
  call void @touch_atime(ptr noundef %f_path.i) #8
  br label %if.end8

if.else:                                          ; preds = %init_sync_kiocb.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.then3, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %4, ptr %2, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 3
  %58 = ptrtoint ptr %iov_offset to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %iov_offset, align 4
  call void @iov_iter_advance(ptr noundef nonnull %to, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %call.i)
  %cmp5 = icmp eq i32 %call.i, -14
  %spec.store.select = select i1 %cmp5, i32 -11, i32 %call.i
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.else.if.end8_crit_edge, %if.then.i, %if.then.if.end8_crit_edge
  %ret.0 = phi i32 [ %spec.store.select, %if.then3 ], [ 0, %if.else.if.end8_crit_edge ], [ %call.i, %if.then.if.end8_crit_edge ], [ %call.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %kiocb) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %to) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_pipe(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_pipe_buf_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @generic_pipe_buf_try_steal(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__splice_from_pipe(ptr noundef %pipe, ptr noundef %sd, ptr nocapture noundef readonly %actor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_spliced.i = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 6
  %0 = ptrtoint ptr %num_spliced.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %num_spliced.i, align 4
  %need_wakeup.i = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 7
  %1 = ptrtoint ptr %need_wakeup.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %need_wakeup.i, align 8
  %head1.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 3
  %tail2.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 4
  %ring_size.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 6
  %bufs.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 18
  %len3.i = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 1
  %pos.i = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 4
  %files.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 11
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 559, i32 noundef 0) #8
  %call.i = tail call i32 @__cond_resched() #8
  %call1 = tail call fastcc i32 @splice_from_pipe_next(ptr noundef %pipe, ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %do.body
  %2 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head1.i, align 4
  %4 = ptrtoint ptr %tail2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail2.i, align 4
  %6 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ring_size.i, align 4
  %sub.i = add i32 %7, -1
  br label %while.cond.i

while.cond.i:                                     ; preds = %cleanup.i.while.cond.i_crit_edge, %if.then
  %tail.0.i = phi i32 [ %5, %if.then ], [ %tail.1.i, %cleanup.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %tail.0.i)
  %cmp.i.i = icmp eq i32 %3, %tail.0.i
  br i1 %cmp.i.i, label %while.cond.i.do.cond_crit_edge, label %while.body.i

while.cond.i.do.cond_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

while.body.i:                                     ; preds = %while.cond.i
  %8 = ptrtoint ptr %bufs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bufs.i, align 4
  %and.i = and i32 %tail.0.i, %sub.i
  %arrayidx.i = getelementptr %struct.pipe_buffer, ptr %9, i32 %and.i
  %len.i = getelementptr %struct.pipe_buffer, ptr %9, i32 %and.i, i32 2
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  %12 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sd, align 8
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %13) #8
  %15 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %len3.i, align 4
  %ops.i.i = getelementptr %struct.pipe_buffer, ptr %9, i32 %and.i, i32 3
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %while.body.i.if.end15.i_crit_edge, label %pipe_buf_confirm.exit.i

while.body.i.if.end15.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

pipe_buf_confirm.exit.i:                          ; preds = %while.body.i
  %call.i.i = tail call i32 %19(ptr noundef %pipe, ptr noundef %arrayidx.i) #8
  %20 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i.i, label %pipe_buf_confirm.exit.i.do.cond_crit_edge [
    i32 0, label %pipe_buf_confirm.exit.i.if.end15.i_crit_edge
    i32 -61, label %pipe_buf_confirm.exit.i.do.end_crit_edge
  ], !prof !136

pipe_buf_confirm.exit.i.do.end_crit_edge:         ; preds = %pipe_buf_confirm.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

pipe_buf_confirm.exit.i.if.end15.i_crit_edge:     ; preds = %pipe_buf_confirm.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

pipe_buf_confirm.exit.i.do.cond_crit_edge:        ; preds = %pipe_buf_confirm.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

if.end15.i:                                       ; preds = %pipe_buf_confirm.exit.i.if.end15.i_crit_edge, %while.body.i.if.end15.i_crit_edge
  %call16.i = tail call i32 %actor(ptr noundef %pipe, ptr noundef %arrayidx.i, ptr noundef %sd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 1
  br i1 %cmp17.i, label %if.end15.i.do.end_crit_edge, label %if.end19.i

if.end15.i.do.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end19.i:                                       ; preds = %if.end15.i
  %offset.i = getelementptr %struct.pipe_buffer, ptr %9, i32 %and.i, i32 1
  %21 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %22, %call16.i
  store i32 %add.i, ptr %offset.i, align 4
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i, align 4
  %sub21.i = sub i32 %24, %call16.i
  store i32 %sub21.i, ptr %len.i, align 4
  %25 = ptrtoint ptr %num_spliced.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_spliced.i, align 4
  %add22.i = add i32 %26, %call16.i
  store i32 %add22.i, ptr %num_spliced.i, align 4
  %27 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len3.i, align 4
  %sub24.i = sub i32 %28, %call16.i
  store i32 %sub24.i, ptr %len3.i, align 4
  %conv88.i = zext i32 %call16.i to i64
  %29 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %pos.i, align 8
  %add25.i = add i64 %30, %conv88.i
  store i64 %add25.i, ptr %pos.i, align 8
  %31 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sd, align 8
  %sub27.i = sub i32 %32, %call16.i
  store i32 %sub27.i, ptr %sd, align 8
  %33 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool29.not.i = icmp eq i32 %33, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %if.end19.i.cleanup.i_crit_edge

if.end19.i.cleanup.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.then30.i:                                      ; preds = %if.end19.i
  %34 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i.i, align 4
  store ptr null, ptr %ops.i.i, align 4
  %release.i.i = getelementptr inbounds %struct.pipe_buf_operations, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %release.i.i, align 4
  tail call void %37(ptr noundef %pipe, ptr noundef %arrayidx.i) #8
  %inc.i = add i32 %tail.0.i, 1
  %38 = ptrtoint ptr %tail2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %inc.i, ptr %tail2.i, align 4
  %39 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %files.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool32.not.i = icmp eq i32 %40, 0
  br i1 %tobool32.not.i, label %if.then30.i.cleanupthread-pre-split.i_crit_edge, label %if.then33.i

if.then30.i.cleanupthread-pre-split.i_crit_edge:  ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanupthread-pre-split.i

if.then33.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %need_wakeup.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %need_wakeup.i, align 8
  br label %cleanupthread-pre-split.i

cleanupthread-pre-split.i:                        ; preds = %if.then33.i, %if.then30.i.cleanupthread-pre-split.i_crit_edge
  %42 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr.i = load i32, ptr %sd, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanupthread-pre-split.i, %if.end19.i.cleanup.i_crit_edge
  %43 = phi i32 [ %.pr.i, %cleanupthread-pre-split.i ], [ %sub27.i, %if.end19.i.cleanup.i_crit_edge ]
  %tail.1.i = phi i32 [ %inc.i, %cleanupthread-pre-split.i ], [ %tail.0.i, %if.end19.i.cleanup.i_crit_edge ]
  %tobool37.not.i = icmp eq i32 %43, 0
  br i1 %tobool37.not.i, label %cleanup.i.do.end_crit_edge, label %cleanup.i.while.cond.i_crit_edge

cleanup.i.while.cond.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

cleanup.i.do.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.cond:                                          ; preds = %pipe_buf_confirm.exit.i.do.cond_crit_edge, %while.cond.i.do.cond_crit_edge
  %ret.0 = phi i32 [ 1, %while.cond.i.do.cond_crit_edge ], [ %call.i.i, %pipe_buf_confirm.exit.i.do.cond_crit_edge ]
  %cmp3 = icmp sgt i32 %ret.0, 0
  br i1 %cmp3, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %cleanup.i.do.end_crit_edge, %if.end15.i.do.end_crit_edge, %pipe_buf_confirm.exit.i.do.end_crit_edge, %do.body.do.end_crit_edge
  %ret.020 = phi i32 [ 0, %pipe_buf_confirm.exit.i.do.end_crit_edge ], [ %call16.i, %if.end15.i.do.end_crit_edge ], [ 0, %cleanup.i.do.end_crit_edge ], [ %call1, %do.body.do.end_crit_edge ], [ %ret.0, %do.cond.do.end_crit_edge ]
  %44 = ptrtoint ptr %need_wakeup.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %need_wakeup.i, align 8, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i17 = icmp eq i8 %45, 0
  br i1 %tobool.not.i17, label %do.end.splice_from_pipe_end.exit_crit_edge, label %if.then.i

do.end.splice_from_pipe_end.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %splice_from_pipe_end.exit

if.then.i:                                        ; preds = %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !138
  %head.i.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq ptr %47, %head.i.i.i
  br i1 %cmp.i.i.not.i.i, label %if.then.i.wakeup_pipe_writers.exit.i_crit_edge, label %if.then.i.i

if.then.i.wakeup_pipe_writers.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wakeup_pipe_writers.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %wr_wait.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wr_wait.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %wakeup_pipe_writers.exit.i

wakeup_pipe_writers.exit.i:                       ; preds = %if.then.i.i, %if.then.i.wakeup_pipe_writers.exit.i_crit_edge
  %fasync_writers.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 17
  tail call void @kill_fasync(ptr noundef %fasync_writers.i.i, i32 noundef 29, i32 noundef 2) #8
  br label %splice_from_pipe_end.exit

splice_from_pipe_end.exit:                        ; preds = %wakeup_pipe_writers.exit.i, %do.end.splice_from_pipe_end.exit_crit_edge
  %48 = ptrtoint ptr %num_spliced.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_spliced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not = icmp eq i32 %49, 0
  %ret.0. = select i1 %tobool.not, i32 %ret.020, i32 %49
  ret i32 %ret.0.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @splice_from_pipe_next(ptr noundef %pipe, ptr nocapture noundef %sd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %entry.return_crit_edge, !prof !125

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

signal_pending.exit:                              ; preds = %entry
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %5, align 4
  %and1.i.i.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not, label %repeat.preheader, label %signal_pending.exit.return_crit_edge

signal_pending.exit.return_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

repeat.preheader:                                 ; preds = %signal_pending.exit
  %head = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 3
  %tail = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 4
  %writers = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 10
  %num_spliced = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 6
  %flags = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 2
  %need_wakeup = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 7
  %head.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 2, i32 1
  %wr_wait.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 2
  %fasync_writers.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 17
  %ring_size.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 6
  %bufs.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 18
  br label %repeat

repeat:                                           ; preds = %eat_empty_buffer.exit, %repeat.preheader
  %11 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %head, align 4
  %13 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i50 = icmp eq i32 %12, %14
  br i1 %cmp.i50, label %repeat.while.body_crit_edge, label %repeat.while.end_crit_edge

repeat.while.end_crit_edge:                       ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

repeat.while.body_crit_edge:                      ; preds = %repeat
  br label %while.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %repeat.while.body_crit_edge
  %15 = ptrtoint ptr %writers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %writers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not = icmp eq i32 %16, 0
  br i1 %tobool3.not, label %while.body.return_crit_edge, label %if.end5

while.body.return_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end5:                                          ; preds = %while.body
  %17 = ptrtoint ptr %num_spliced to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_spliced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool6.not = icmp eq i32 %18, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.return_crit_edge

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end8:                                          ; preds = %if.end5
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 8
  %and = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end11, label %if.end8.return_crit_edge

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end11:                                         ; preds = %if.end8
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %stack.i.i33 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %stack.i.i33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stack.i.i33, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %27 = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i34 = icmp eq i32 %27, 0
  br i1 %tobool.not.i34, label %signal_pending.exit38, label %if.end11.return_crit_edge, !prof !125

if.end11.return_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

signal_pending.exit38:                            ; preds = %if.end11
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %24, align 4
  %and1.i.i.i.i.i35 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i35)
  %tobool15.not = icmp eq i32 %and1.i.i.i.i.i35, 0
  br i1 %tobool15.not, label %if.end17, label %signal_pending.exit38.return_crit_edge

signal_pending.exit38.return_crit_edge:           ; preds = %signal_pending.exit38
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end17:                                         ; preds = %signal_pending.exit38
  %30 = ptrtoint ptr %need_wakeup to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %need_wakeup, align 8, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool18.not = icmp eq i8 %31, 0
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !138
  %32 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %33, %head.i.i
  br i1 %cmp.i.i.not.i, label %if.then19.wakeup_pipe_writers.exit_crit_edge, label %if.then.i

if.then19.wakeup_pipe_writers.exit_crit_edge:     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %wakeup_pipe_writers.exit

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__wake_up(ptr noundef %wr_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %wakeup_pipe_writers.exit

wakeup_pipe_writers.exit:                         ; preds = %if.then.i, %if.then19.wakeup_pipe_writers.exit_crit_edge
  tail call void @kill_fasync(ptr noundef %fasync_writers.i, i32 noundef 29, i32 noundef 2) #8
  %34 = ptrtoint ptr %need_wakeup to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %need_wakeup, align 8
  br label %if.end21

if.end21:                                         ; preds = %wakeup_pipe_writers.exit, %if.end17.if.end21_crit_edge
  tail call void @pipe_wait_readable(ptr noundef %pipe) #8
  %35 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %head, align 4
  %37 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tail, align 4
  %cmp.i = icmp eq i32 %36, %38
  br i1 %cmp.i, label %if.end21.while.body_crit_edge, label %if.end21.while.end_crit_edge

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end21.while.end_crit_edge, %repeat.while.end_crit_edge
  %.lcssa = phi i32 [ %14, %repeat.while.end_crit_edge ], [ %38, %if.end21.while.end_crit_edge ]
  %39 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ring_size.i, align 4
  %sub.i = add i32 %40, -1
  %41 = ptrtoint ptr %bufs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bufs.i, align 4
  %and.i40 = and i32 %sub.i, %.lcssa
  %len.i = getelementptr %struct.pipe_buffer, ptr %42, i32 %and.i40, i32 2
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i, align 4
  %tobool.not.i41 = icmp eq i32 %44, 0
  br i1 %tobool.not.i41, label %eat_empty_buffer.exit, label %while.end.return_crit_edge, !prof !130

while.end.return_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

eat_empty_buffer.exit:                            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.pipe_buffer, ptr %42, i32 %and.i40
  %ops1.i.i = getelementptr %struct.pipe_buffer, ptr %42, i32 %and.i40, i32 3
  %45 = ptrtoint ptr %ops1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops1.i.i, align 4
  store ptr null, ptr %ops1.i.i, align 4
  %release.i.i = getelementptr inbounds %struct.pipe_buf_operations, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %release.i.i, align 4
  tail call void %48(ptr noundef %pipe, ptr noundef %arrayidx.i) #8
  %add.i = add i32 %.lcssa, 1
  %49 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add.i, ptr %tail, align 4
  br label %repeat

return:                                           ; preds = %while.end.return_crit_edge, %signal_pending.exit38.return_crit_edge, %if.end11.return_crit_edge, %if.end8.return_crit_edge, %if.end5.return_crit_edge, %while.body.return_crit_edge, %signal_pending.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -512, %signal_pending.exit.return_crit_edge ], [ -512, %entry.return_crit_edge ], [ -512, %if.end11.return_crit_edge ], [ -512, %signal_pending.exit38.return_crit_edge ], [ -11, %if.end8.return_crit_edge ], [ 0, %if.end5.return_crit_edge ], [ 0, %while.body.return_crit_edge ], [ 1, %while.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @splice_from_pipe(ptr noundef %pipe, ptr noundef %out, ptr nocapture noundef readonly %ppos, i32 noundef %len, i32 noundef %flags, ptr nocapture noundef readonly %actor) local_unnamed_addr #0 align 64 {
entry:
  %sd = alloca %struct.splice_desc, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sd) #8
  %0 = getelementptr inbounds i8, ptr %sd, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8, !annotation !139
  %2 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %len, ptr %sd, align 8
  %len1 = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 1
  %3 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %len1, align 4
  %flags2 = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 2
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %flags, ptr %flags2, align 8
  %u = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 3
  %5 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %out, ptr %u, align 4
  %pos = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 4
  %6 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ppos, align 8
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %pos, align 8
  %opos = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 5
  %9 = ptrtoint ptr %opos to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %opos, align 8
  %num_spliced = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 6
  %10 = ptrtoint ptr %num_spliced to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %num_spliced, align 4
  %need_wakeup = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 7
  %11 = ptrtoint ptr %need_wakeup to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %need_wakeup, align 8
  tail call void @pipe_lock(ptr noundef %pipe) #8
  %call = call i32 @__splice_from_pipe(ptr noundef %pipe, ptr noundef nonnull %sd, ptr noundef %actor)
  call void @pipe_unlock(ptr noundef %pipe) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sd) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iter_file_splice_write(ptr noundef %pipe, ptr noundef %out, ptr nocapture noundef %ppos, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  %sd = alloca %struct.splice_desc, align 8
  %from = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sd) #8
  %0 = getelementptr inbounds i8, ptr %sd, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8, !annotation !139
  %2 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %len, ptr %sd, align 8
  %len1 = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 1
  %3 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %len1, align 4
  %flags2 = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 2
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %flags, ptr %flags2, align 8
  %u = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 3
  %5 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %out, ptr %u, align 4
  %pos = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 4
  %6 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ppos, align 8
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %pos, align 8
  %opos = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 5
  %9 = ptrtoint ptr %opos to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %opos, align 8
  %num_spliced = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 6
  %need_wakeup = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 7
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 5
  %10 = ptrtoint ptr %max_usage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_usage, align 4
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 12) #8
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %entry.cleanup106_crit_edge, label %if.end7.i.i, !prof !130

entry.cleanup106_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup106

if.end7.i.i:                                      ; preds = %entry
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup106_crit_edge, label %if.end, !prof !130

if.end7.i.i.cleanup106_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup106

if.end:                                           ; preds = %if.end7.i.i
  tail call void @pipe_lock(ptr noundef %pipe) #8
  %15 = ptrtoint ptr %num_spliced to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %num_spliced, align 4
  %16 = ptrtoint ptr %need_wakeup to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %need_wakeup, align 8
  %17 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not262 = icmp eq i32 %18, 0
  br i1 %tobool7.not262, label %if.end.done_crit_edge, label %while.body.lr.ph

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

while.body.lr.ph:                                 ; preds = %if.end
  %head26 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 3
  %tail27 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 4
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 6
  %bufs = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 18
  %files = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %while.cond68.cleanup92_crit_edge.while.body_crit_edge, %while.body.lr.ph
  %array.0264 = phi ptr [ %call8.i.i, %while.body.lr.ph ], [ %array.1, %while.cond68.cleanup92_crit_edge.while.body_crit_edge ]
  %nbufs.0263 = phi i32 [ %11, %while.body.lr.ph ], [ %nbufs.1, %while.cond68.cleanup92_crit_edge.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %from) #8
  %19 = call ptr @memset(ptr %from, i32 255, i32 24)
  %call8 = call fastcc i32 @splice_from_pipe_next(ptr noundef %pipe, ptr noundef nonnull %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp = icmp slt i32 %call8, 1
  br i1 %cmp, label %while.body.cleanup92.thread_crit_edge, label %if.end10

while.body.cleanup92.thread_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92.thread

if.end10:                                         ; preds = %while.body
  %20 = ptrtoint ptr %max_usage to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_usage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %nbufs.0263, i32 %21)
  %cmp12 = icmp ult i32 %nbufs.0263, %21
  br i1 %cmp12, label %if.then19, label %if.end10.if.end25_crit_edge, !prof !130

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then19:                                        ; preds = %if.end10
  call void @kfree(ptr noundef %array.0264) #8
  %22 = ptrtoint ptr %max_usage to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_usage, align 4
  %24 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 12) #8
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %if.then19.cleanup92.thread_crit_edge, label %if.end7.i.i211, !prof !130

if.then19.cleanup92.thread_crit_edge:             ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92.thread

if.end7.i.i211:                                   ; preds = %if.then19
  %26 = extractvalue { i32, i1 } %24, 0
  %call8.i.i210 = call noalias align 128 ptr @__kmalloc(i32 noundef %26, i32 noundef 3520) #11
  %tobool22.not = icmp eq ptr %call8.i.i210, null
  br i1 %tobool22.not, label %if.end7.i.i211.cleanup92.thread_crit_edge, label %if.end7.i.i211.if.end25_crit_edge

if.end7.i.i211.if.end25_crit_edge:                ; preds = %if.end7.i.i211
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end7.i.i211.cleanup92.thread_crit_edge:        ; preds = %if.end7.i.i211
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92.thread

if.end25:                                         ; preds = %if.end7.i.i211.if.end25_crit_edge, %if.end10.if.end25_crit_edge
  %nbufs.1 = phi i32 [ %23, %if.end7.i.i211.if.end25_crit_edge ], [ %nbufs.0263, %if.end10.if.end25_crit_edge ]
  %array.1 = phi ptr [ %call8.i.i210, %if.end7.i.i211.if.end25_crit_edge ], [ %array.0264, %if.end10.if.end25_crit_edge ]
  %27 = ptrtoint ptr %head26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %head26, align 4
  %29 = ptrtoint ptr %tail27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tail27, align 4
  %31 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ring_size, align 4
  %sub = add i32 %32, -1
  %33 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sd, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp.i250 = icmp ne i32 %28, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool30.not251 = icmp ne i32 %34, 0
  %or.cond252 = select i1 %cmp.i250, i1 %tobool30.not251, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbufs.1)
  %cmp31253 = icmp sgt i32 %nbufs.1, 0
  %or.cond180254 = select i1 %or.cond252, i1 %cmp31253, i1 false
  br i1 %or.cond180254, label %if.end25.for.body_crit_edge, label %if.end25.for.end_crit_edge

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end25.for.body_crit_edge
  %n.0257 = phi i32 [ %n.1, %for.inc.for.body_crit_edge ], [ 0, %if.end25.for.body_crit_edge ]
  %left.0256 = phi i32 [ %left.1, %for.inc.for.body_crit_edge ], [ %34, %if.end25.for.body_crit_edge ]
  %tail.0255 = phi i32 [ %inc55, %for.inc.for.body_crit_edge ], [ %30, %if.end25.for.body_crit_edge ]
  %35 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bufs, align 4
  %and = and i32 %tail.0255, %sub
  %arrayidx = getelementptr %struct.pipe_buffer, ptr %36, i32 %and
  %len32 = getelementptr %struct.pipe_buffer, ptr %36, i32 %and, i32 2
  %37 = ptrtoint ptr %len32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool33.not = icmp eq i32 %38, 0
  br i1 %tobool33.not, label %for.body.for.inc_crit_edge, label %if.end35

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end35:                                         ; preds = %for.body
  %39 = call i32 @llvm.umin.i32(i32 %38, i32 %left.0256)
  %ops.i = getelementptr %struct.pipe_buffer, ptr %36, i32 %and, i32 3
  %40 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.end35.if.end49_crit_edge, label %pipe_buf_confirm.exit

if.end35.if.end49_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

pipe_buf_confirm.exit:                            ; preds = %if.end35
  %call.i = call i32 %43(ptr noundef %pipe, ptr noundef %arrayidx) #8
  %44 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call.i, label %cleanup92.thread.loopexit [
    i32 0, label %pipe_buf_confirm.exit.if.end49_crit_edge
    i32 -61, label %pipe_buf_confirm.exit.cleanup92.thread_crit_edge
  ], !prof !136

pipe_buf_confirm.exit.cleanup92.thread_crit_edge: ; preds = %pipe_buf_confirm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92.thread

pipe_buf_confirm.exit.if.end49_crit_edge:         ; preds = %pipe_buf_confirm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.end49:                                         ; preds = %pipe_buf_confirm.exit.if.end49_crit_edge, %if.end35.if.end49_crit_edge
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx, align 4
  %arrayidx50 = getelementptr %struct.bio_vec, ptr %array.1, i32 %n.0257
  %47 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %arrayidx50, align 4
  %bv_len = getelementptr %struct.bio_vec, ptr %array.1, i32 %n.0257, i32 1
  %48 = ptrtoint ptr %bv_len to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %39, ptr %bv_len, align 4
  %offset = getelementptr %struct.pipe_buffer, ptr %36, i32 %and, i32 1
  %49 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offset, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %array.1, i32 %n.0257, i32 2
  %51 = ptrtoint ptr %bv_offset to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %bv_offset, align 4
  %sub53 = sub i32 %left.0256, %39
  %inc = add nsw i32 %n.0257, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end49, %for.body.for.inc_crit_edge
  %left.1 = phi i32 [ %sub53, %if.end49 ], [ %left.0256, %for.body.for.inc_crit_edge ]
  %n.1 = phi i32 [ %inc, %if.end49 ], [ %n.0257, %for.body.for.inc_crit_edge ]
  %inc55 = add i32 %tail.0255, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %inc55)
  %cmp.i = icmp ne i32 %28, %inc55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left.1)
  %tobool30.not = icmp ne i32 %left.1, 0
  %or.cond = select i1 %cmp.i, i1 %tobool30.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %n.1, i32 %nbufs.1)
  %cmp31 = icmp slt i32 %n.1, %nbufs.1
  %or.cond180 = select i1 %or.cond, i1 %cmp31, i1 false
  br i1 %or.cond180, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end25.for.end_crit_edge
  %left.0.lcssa = phi i32 [ %34, %if.end25.for.end_crit_edge ], [ %left.1, %for.inc.for.end_crit_edge ]
  %n.0.lcssa = phi i32 [ 0, %if.end25.for.end_crit_edge ], [ %n.1, %for.inc.for.end_crit_edge ]
  %52 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sd, align 8
  %sub57 = sub i32 %53, %left.0.lcssa
  call void @iov_iter_bvec(ptr noundef nonnull %from, i32 noundef 1, ptr noundef %array.1, i32 noundef %n.0.lcssa, i32 noundef %sub57) #8
  %call59 = call i32 @vfs_iter_write(ptr noundef %out, ptr noundef nonnull %from, ptr noundef %pos, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 1
  br i1 %cmp60, label %for.end.cleanup92.thread_crit_edge, label %if.end62

for.end.cleanup92.thread_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92.thread

if.end62:                                         ; preds = %for.end
  %54 = ptrtoint ptr %num_spliced to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_spliced, align 4
  %add = add i32 %55, %call59
  store i32 %add, ptr %num_spliced, align 4
  %56 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sd, align 8
  %sub65 = sub i32 %57, %call59
  store i32 %sub65, ptr %sd, align 8
  %58 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %pos, align 8
  %60 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %ppos, align 8
  %61 = ptrtoint ptr %tail27 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tail27, align 4
  br label %while.body70

while.body70:                                     ; preds = %if.end91.while.body70_crit_edge, %if.end62
  %tail.1261 = phi i32 [ %62, %if.end62 ], [ %inc81, %if.end91.while.body70_crit_edge ]
  %ret.4260 = phi i32 [ %call59, %if.end62 ], [ %sub79, %if.end91.while.body70_crit_edge ]
  %63 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bufs, align 4
  %and73 = and i32 %tail.1261, %sub
  %len75 = getelementptr %struct.pipe_buffer, ptr %64, i32 %and73, i32 2
  %65 = ptrtoint ptr %len75 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len75, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.4260, i32 %66)
  %cmp76.not = icmp ult i32 %ret.4260, %66
  br i1 %cmp76.not, label %if.end91.thread, label %if.then77

if.then77:                                        ; preds = %while.body70
  %arrayidx74 = getelementptr %struct.pipe_buffer, ptr %64, i32 %and73
  %sub79 = sub i32 %ret.4260, %66
  %67 = ptrtoint ptr %len75 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %len75, align 4
  %ops1.i = getelementptr %struct.pipe_buffer, ptr %64, i32 %and73, i32 3
  %68 = ptrtoint ptr %ops1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops1.i, align 4
  store ptr null, ptr %ops1.i, align 4
  %release.i = getelementptr inbounds %struct.pipe_buf_operations, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %release.i, align 4
  call void %71(ptr noundef %pipe, ptr noundef %arrayidx74) #8
  %inc81 = add i32 %tail.1261, 1
  %72 = ptrtoint ptr %tail27 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %inc81, ptr %tail27, align 4
  %73 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %files, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool83.not = icmp eq i32 %74, 0
  br i1 %tobool83.not, label %if.then77.if.end91_crit_edge, label %if.then84

if.then77.if.end91_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then84:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %need_wakeup to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %need_wakeup, align 8
  br label %if.end91

if.end91.thread:                                  ; preds = %while.body70
  call void @__sanitizer_cov_trace_pc() #10
  %offset87 = getelementptr %struct.pipe_buffer, ptr %64, i32 %and73, i32 1
  %76 = ptrtoint ptr %offset87 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %offset87, align 4
  %add88 = add i32 %77, %ret.4260
  store i32 %add88, ptr %offset87, align 4
  %sub90 = sub i32 %66, %ret.4260
  %78 = ptrtoint ptr %len75 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub90, ptr %len75, align 4
  br label %while.cond68.cleanup92_crit_edge

if.end91:                                         ; preds = %if.then84, %if.then77.if.end91_crit_edge
  %tobool69.not = icmp eq i32 %sub79, 0
  br i1 %tobool69.not, label %if.end91.while.cond68.cleanup92_crit_edge_crit_edge, label %if.end91.while.body70_crit_edge

if.end91.while.body70_crit_edge:                  ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body70

if.end91.while.cond68.cleanup92_crit_edge_crit_edge: ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond68.cleanup92_crit_edge

cleanup92.thread.loopexit:                        ; preds = %pipe_buf_confirm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92.thread

cleanup92.thread:                                 ; preds = %cleanup92.thread.loopexit, %for.end.cleanup92.thread_crit_edge, %pipe_buf_confirm.exit.cleanup92.thread_crit_edge, %if.end7.i.i211.cleanup92.thread_crit_edge, %if.then19.cleanup92.thread_crit_edge, %while.body.cleanup92.thread_crit_edge
  %array.2.ph = phi ptr [ %array.1, %cleanup92.thread.loopexit ], [ %array.1, %pipe_buf_confirm.exit.cleanup92.thread_crit_edge ], [ null, %if.then19.cleanup92.thread_crit_edge ], [ %array.0264, %while.body.cleanup92.thread_crit_edge ], [ null, %if.end7.i.i211.cleanup92.thread_crit_edge ], [ %array.1, %for.end.cleanup92.thread_crit_edge ]
  %ret.6.ph = phi i32 [ %call.i, %cleanup92.thread.loopexit ], [ 0, %pipe_buf_confirm.exit.cleanup92.thread_crit_edge ], [ -12, %if.then19.cleanup92.thread_crit_edge ], [ %call8, %while.body.cleanup92.thread_crit_edge ], [ -12, %if.end7.i.i211.cleanup92.thread_crit_edge ], [ %call59, %for.end.cleanup92.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %from) #8
  br label %done

while.cond68.cleanup92_crit_edge:                 ; preds = %if.end91.while.cond68.cleanup92_crit_edge_crit_edge, %if.end91.thread
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %from) #8
  %79 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sd, align 8
  %tobool7.not = icmp eq i32 %80, 0
  br i1 %tobool7.not, label %while.cond68.cleanup92_crit_edge.done_crit_edge, label %while.cond68.cleanup92_crit_edge.while.body_crit_edge

while.cond68.cleanup92_crit_edge.while.body_crit_edge: ; preds = %while.cond68.cleanup92_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond68.cleanup92_crit_edge.done_crit_edge:  ; preds = %while.cond68.cleanup92_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

done:                                             ; preds = %while.cond68.cleanup92_crit_edge.done_crit_edge, %cleanup92.thread, %if.end.done_crit_edge
  %array.3 = phi ptr [ %array.2.ph, %cleanup92.thread ], [ %call8.i.i, %if.end.done_crit_edge ], [ %array.1, %while.cond68.cleanup92_crit_edge.done_crit_edge ]
  %ret.7 = phi i32 [ %ret.6.ph, %cleanup92.thread ], [ -1, %if.end.done_crit_edge ], [ 0, %while.cond68.cleanup92_crit_edge.done_crit_edge ]
  call void @kfree(ptr noundef %array.3) #8
  %81 = ptrtoint ptr %need_wakeup to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %need_wakeup, align 8, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i215 = icmp eq i8 %82, 0
  br i1 %tobool.not.i215, label %done.splice_from_pipe_end.exit_crit_edge, label %if.then.i

done.splice_from_pipe_end.exit_crit_edge:         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %splice_from_pipe_end.exit

if.then.i:                                        ; preds = %done
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !138
  %head.i.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq ptr %84, %head.i.i.i
  br i1 %cmp.i.i.not.i.i, label %if.then.i.wakeup_pipe_writers.exit.i_crit_edge, label %if.then.i.i

if.then.i.wakeup_pipe_writers.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wakeup_pipe_writers.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %wr_wait.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 2
  call void @__wake_up(ptr noundef %wr_wait.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %wakeup_pipe_writers.exit.i

wakeup_pipe_writers.exit.i:                       ; preds = %if.then.i.i, %if.then.i.wakeup_pipe_writers.exit.i_crit_edge
  %fasync_writers.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 17
  call void @kill_fasync(ptr noundef %fasync_writers.i.i, i32 noundef 29, i32 noundef 2) #8
  br label %splice_from_pipe_end.exit

splice_from_pipe_end.exit:                        ; preds = %wakeup_pipe_writers.exit.i, %done.splice_from_pipe_end.exit_crit_edge
  call void @pipe_unlock(ptr noundef %pipe) #8
  %85 = ptrtoint ptr %num_spliced to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_spliced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool102.not = icmp eq i32 %86, 0
  %spec.select = select i1 %tobool102.not, i32 %ret.7, i32 %86
  br label %cleanup106

cleanup106:                                       ; preds = %splice_from_pipe_end.exit, %if.end7.i.i.cleanup106_crit_edge, %entry.cleanup106_crit_edge
  %retval.0 = phi i32 [ %spec.select, %splice_from_pipe_end.exit ], [ -12, %if.end7.i.i.cleanup106_crit_edge ], [ -12, %entry.cleanup106_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sd) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_iter_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_splice_sendpage(ptr noundef %pipe, ptr noundef %out, ptr nocapture noundef readonly %ppos, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  %sd.i = alloca %struct.splice_desc, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sd.i) #8
  %0 = getelementptr inbounds i8, ptr %sd.i, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 72057594037927935, ptr %0, align 8, !annotation !139
  %2 = ptrtoint ptr %sd.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %len, ptr %sd.i, align 8
  %len1.i = getelementptr inbounds %struct.splice_desc, ptr %sd.i, i32 0, i32 1
  %3 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %len1.i, align 4
  %flags2.i = getelementptr inbounds %struct.splice_desc, ptr %sd.i, i32 0, i32 2
  %4 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %flags, ptr %flags2.i, align 8
  %u.i = getelementptr inbounds %struct.splice_desc, ptr %sd.i, i32 0, i32 3
  %5 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %out, ptr %u.i, align 4
  %pos.i = getelementptr inbounds %struct.splice_desc, ptr %sd.i, i32 0, i32 4
  %6 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ppos, align 8
  %8 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %pos.i, align 8
  %opos.i = getelementptr inbounds %struct.splice_desc, ptr %sd.i, i32 0, i32 5
  %9 = ptrtoint ptr %opos.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %opos.i, align 8
  %num_spliced.i = getelementptr inbounds %struct.splice_desc, ptr %sd.i, i32 0, i32 6
  %10 = ptrtoint ptr %num_spliced.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %num_spliced.i, align 4
  tail call void @pipe_lock(ptr noundef %pipe) #8
  %call.i = call i32 @__splice_from_pipe(ptr noundef %pipe, ptr noundef nonnull %sd.i, ptr noundef nonnull @pipe_to_sendpage) #8
  call void @pipe_unlock(ptr noundef %pipe) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sd.i) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipe_to_sendpage(ptr nocapture noundef readonly %pipe, ptr nocapture noundef readonly %buf, ptr nocapture noundef readonly %sd) #0 align 64 {
entry:
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #8
  %pos1 = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 4
  %2 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos1, align 8
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %pos, align 8
  %f_op = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_op, align 4
  %sendpage = getelementptr inbounds %struct.file_operations, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %sendpage to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sendpage, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !130

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  %and = shl i32 %10, 13
  %11 = and i32 %and, 32768
  %len = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 1
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %14 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sd, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp = icmp ult i32 %13, %15
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %head = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 3
  %16 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 4
  %18 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tail, align 4
  %sub.i = sub i32 %17, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp5 = icmp ugt i32 %sub.i, 1
  %or = or i32 %11, 131072
  %spec.select = select i1 %cmp5, i32 %or, i32 %11
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.end.if.end7_crit_edge
  %more.0 = phi i32 [ %11, %if.end.if.end7_crit_edge ], [ %spec.select, %land.lhs.true ]
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf, align 4
  %offset = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 1
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset, align 4
  %call11 = call i32 %8(ptr noundef %1, ptr noundef %21, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %pos, i32 noundef %more.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @splice_direct_to_actor(ptr noundef %in, ptr noundef %sd, ptr nocapture noundef readonly %actor) #0 align 64 {
entry:
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.44)
  switch i16 %4, label %entry.cleanup139_crit_edge [
    i16 -32768, label %entry.if.end_crit_edge
    i16 24576, label %entry.if.end_crit_edge260
  ]

entry.if.end_crit_edge260:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.cleanup139_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup139

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge260
  %6 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %splice_pipe = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 179
  %10 = ptrtoint ptr %splice_pipe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %splice_pipe, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %if.then19, label %if.end.if.end27_crit_edge, !prof !130

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then19:                                        ; preds = %if.end
  %call20 = tail call ptr @alloc_pipe_info() #8
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.then19.cleanup139_crit_edge, label %if.end23

if.then19.cleanup139_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup139

if.end23:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %readers = getelementptr inbounds %struct.pipe_inode_info, ptr %call20, i32 0, i32 9
  %12 = ptrtoint ptr %readers to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %readers, align 4
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %splice_pipe26 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 179
  %15 = ptrtoint ptr %splice_pipe26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call20, ptr %splice_pipe26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end23, %if.end.if.end27_crit_edge
  %pipe.0 = phi ptr [ %call20, %if.end23 ], [ %11, %if.end.if.end27_crit_edge ]
  %16 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sd, align 8
  %flags28 = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 2
  %18 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags28, align 8
  %and30 = and i32 %19, -3
  store i32 %and30, ptr %flags28, align 8
  %and32 = and i32 %19, 4
  %head = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 3
  %20 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 4
  %22 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.i = icmp eq i32 %21, %23
  br i1 %cmp.i, label %if.end27.if.end75_crit_edge, label %land.rhs42

if.end27.if.end75_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

land.rhs42:                                       ; preds = %if.end27
  %.b193 = load i1, ptr @splice_direct_to_actor.__already_done, align 1
  br i1 %.b193, label %land.rhs42.if.end75_crit_edge, label %if.then53, !prof !125

land.rhs42.if.end75_crit_edge:                    ; preds = %land.rhs42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then53:                                        ; preds = %land.rhs42
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @splice_direct_to_actor.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 864, i32 noundef 9, ptr noundef null) #8
  br label %if.end75

if.end75:                                         ; preds = %if.then53, %land.rhs42.if.end75_crit_edge, %if.end27.if.end75_crit_edge
  %pos84 = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 4
  %f_mode.i = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 8
  %max_usage.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 5
  %f_op.i = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool101.not = icmp eq i32 %and32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool83.not235 = icmp eq i32 %17, 0
  br i1 %tobool83.not235, label %if.end75.done_crit_edge, label %if.end75.while.body_crit_edge

if.end75.while.body_crit_edge:                    ; preds = %if.end75
  br label %while.body

if.end75.done_crit_edge:                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end75.while.body_crit_edge
  %len.0237 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %17, %if.end75.while.body_crit_edge ]
  %bytes.0236 = phi i32 [ %add, %cleanup.while.body_crit_edge ], [ 0, %if.end75.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #8
  %24 = ptrtoint ptr %pos84 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %pos84, align 8
  %26 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %pos, align 8
  %27 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %f_mode.i, align 8
  %and.i195 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i195)
  %tobool.not.i = icmp eq i32 %and.i195, 0
  br i1 %tobool.not.i, label %while.body.for.cond.preheader_crit_edge, label %if.end.i, !prof !130

while.body.for.cond.preheader_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

if.end.i:                                         ; preds = %while.body
  %29 = ptrtoint ptr %max_usage.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_usage.i, align 4
  %31 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %head, align 4
  %33 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tail, align 4
  %sub.i.neg.i = sub i32 %30, %32
  %sub.i = add i32 %sub.i.neg.i, %34
  %shl.i = shl i32 %sub.i, 12
  %35 = call i32 @llvm.umin.i32(i32 %shl.i, i32 %len.0237) #8
  %call4.i = call i32 @rw_verify_area(i32 noundef 0, ptr noundef %in, ptr noundef nonnull %pos, i32 noundef %35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.for.cond.preheader_crit_edge, label %if.end13.i, !prof !130

if.end.i.for.cond.preheader_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

if.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479552, i32 %35)
  %cmp14.i = icmp ugt i32 %35, 2147479552
  br i1 %cmp14.i, label %if.then21.i, label %if.end13.i.if.end22.i_crit_edge, !prof !130

if.end13.i.if.end22.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %if.end13.i.if.end22.i_crit_edge
  %len.addr.0.i = phi i32 [ 2147479552, %if.then21.i ], [ %35, %if.end13.i.if.end22.i_crit_edge ]
  %36 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %f_op.i, align 4
  %splice_read.i = getelementptr inbounds %struct.file_operations, ptr %37, i32 0, i32 25
  %38 = ptrtoint ptr %splice_read.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %splice_read.i, align 4
  %tobool23.not.i = icmp eq ptr %39, null
  br i1 %tobool23.not.i, label %if.then32.i, label %do_splice_to.exit, !prof !130

if.then32.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @warn_unsupported(ptr noundef %in, ptr noundef nonnull @.str.14) #8
  br label %for.cond.preheader

do_splice_to.exit:                                ; preds = %if.end22.i
  %call37.i = call i32 %39(ptr noundef %in, ptr noundef nonnull %pos, ptr noundef %pipe.0, i32 noundef %len.addr.0.i, i32 noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call37.i)
  %cmp86 = icmp slt i32 %call37.i, 1
  br i1 %cmp86, label %do_splice_to.exit.for.cond.preheader_crit_edge, label %if.end95, !prof !130

do_splice_to.exit.for.cond.preheader_crit_edge:   ; preds = %do_splice_to.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

if.end95:                                         ; preds = %do_splice_to.exit
  %40 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call37.i, ptr %sd, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call37.i, i32 %len.0237)
  %cmp97 = icmp ult i32 %call37.i, %len.0237
  br i1 %cmp97, label %if.then99, label %if.else

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags28, align 8
  %or = or i32 %42, 4
  br label %if.end106.sink.split

if.else:                                          ; preds = %if.end95
  br i1 %tobool101.not, label %if.then102, label %if.else.if.end106_crit_edge

if.else.if.end106_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.then102:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags28, align 8
  %and104 = and i32 %44, -5
  br label %if.end106.sink.split

if.end106.sink.split:                             ; preds = %if.then102, %if.then99
  %and104.sink = phi i32 [ %and104, %if.then102 ], [ %or, %if.then99 ]
  %45 = ptrtoint ptr %flags28 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and104.sink, ptr %flags28, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.end106.sink.split, %if.else.if.end106_crit_edge
  %call107 = call i32 %actor(ptr noundef %pipe.0, ptr noundef %sd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 1
  br i1 %cmp108, label %if.then116, label %if.end118, !prof !130

if.then116:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %pos84 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %25, ptr %pos84, align 8
  br label %for.cond.preheader

if.end118:                                        ; preds = %if.end106
  %add = add i32 %call107, %bytes.0236
  %47 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %pos, align 8
  %49 = ptrtoint ptr %pos84 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %pos84, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call107, i32 %call37.i)
  %cmp120 = icmp ult i32 %call107, %call37.i
  br i1 %cmp120, label %if.then122, label %cleanup

if.then122:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  %conv123201 = zext i32 %call107 to i64
  %add124 = add i64 %25, %conv123201
  %50 = ptrtoint ptr %pos84 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %add124, ptr %pos84, align 8
  br label %for.cond.preheader

cleanup:                                          ; preds = %if.end118
  %sub = sub i32 %len.0237, %call107
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #8
  %tobool83.not = icmp eq i32 %sub, 0
  br i1 %tobool83.not, label %cleanup.done_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.done_crit_edge:                           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

for.cond.preheader:                               ; preds = %if.then122, %if.then116, %do_splice_to.exit.for.cond.preheader_crit_edge, %if.then32.i, %if.end.i.for.cond.preheader_crit_edge, %while.body.for.cond.preheader_crit_edge
  %ret.0.ph = phi i32 [ -22, %if.then32.i ], [ %call107, %if.then122 ], [ %call107, %if.then116 ], [ %call37.i, %do_splice_to.exit.for.cond.preheader_crit_edge ], [ %call4.i, %if.end.i.for.cond.preheader_crit_edge ], [ -9, %while.body.for.cond.preheader_crit_edge ]
  %bytes.1.ph = phi i32 [ %bytes.0236, %if.then32.i ], [ %add, %if.then122 ], [ %bytes.0236, %if.then116 ], [ %bytes.0236, %while.body.for.cond.preheader_crit_edge ], [ %bytes.0236, %if.end.i.for.cond.preheader_crit_edge ], [ %bytes.0236, %do_splice_to.exit.for.cond.preheader_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #8
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 6
  %51 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ring_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp131206.not = icmp eq i32 %52, 0
  br i1 %cmp131206.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bufs = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 18
  br label %for.body

done:                                             ; preds = %for.end, %cleanup.done_crit_edge, %if.end75.done_crit_edge
  %bytes.2 = phi i32 [ %spec.select194, %for.end ], [ 0, %if.end75.done_crit_edge ], [ %add, %cleanup.done_crit_edge ]
  %53 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %head, align 4
  %54 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %tail, align 4
  %f_flags.i = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 7
  %55 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %f_flags.i, align 4
  %and.i196 = and i32 %56, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i196)
  %tobool.not.i197 = icmp eq i32 %and.i196, 0
  br i1 %tobool.not.i197, label %if.then.i, label %done.cleanup139_crit_edge

done.cleanup139_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup139

if.then.i:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  %f_path.i = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 1
  call void @touch_atime(ptr noundef %f_path.i) #8
  br label %cleanup139

for.body:                                         ; preds = %if.end135.for.body_crit_edge, %for.body.lr.ph
  %i.0207 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end135.for.body_crit_edge ]
  %57 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bufs, align 4
  %ops = getelementptr %struct.pipe_buffer, ptr %58, i32 %i.0207, i32 3
  %59 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops, align 4
  %tobool133.not = icmp eq ptr %60, null
  br i1 %tobool133.not, label %for.body.if.end135_crit_edge, label %if.then134

for.body.if.end135_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.then134:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.pipe_buffer, ptr %58, i32 %i.0207
  %61 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops, align 4
  store ptr null, ptr %ops, align 4
  %release.i = getelementptr inbounds %struct.pipe_buf_operations, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %release.i, align 4
  call void %64(ptr noundef %pipe.0, ptr noundef %arrayidx) #8
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %for.body.if.end135_crit_edge
  %inc = add nuw i32 %i.0207, 1
  %65 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ring_size, align 4
  %cmp131 = icmp ult i32 %inc, %66
  br i1 %cmp131, label %if.end135.for.body_crit_edge, label %if.end135.for.end_crit_edge

if.end135.for.end_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end135.for.body_crit_edge:                     ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end135.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.1.ph)
  %tobool136.not = icmp eq i32 %bytes.1.ph, 0
  %spec.select194 = select i1 %tobool136.not, i32 %ret.0.ph, i32 %bytes.1.ph
  br label %done

cleanup139:                                       ; preds = %if.then.i, %done.cleanup139_crit_edge, %if.then19.cleanup139_crit_edge, %entry.cleanup139_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup139_crit_edge ], [ -12, %if.then19.cleanup139_crit_edge ], [ %bytes.2, %done.cleanup139_crit_edge ], [ %bytes.2, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_pipe_info() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_splice_direct(ptr noundef %in, ptr nocapture noundef %ppos, ptr noundef %out, ptr noundef %opos, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  %sd = alloca %struct.splice_desc, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sd) #8
  %0 = getelementptr inbounds i8, ptr %sd, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8, !annotation !139
  %2 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %len, ptr %sd, align 8
  %len1 = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 1
  %3 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %len, ptr %len1, align 4
  %flags2 = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 2
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %flags, ptr %flags2, align 8
  %u = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 3
  %5 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %out, ptr %u, align 4
  %pos = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 4
  %6 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ppos, align 8
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %pos, align 8
  %opos3 = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 5
  %9 = ptrtoint ptr %opos3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %opos, ptr %opos3, align 8
  %num_spliced = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 6
  %10 = ptrtoint ptr %num_spliced to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %num_spliced, align 4
  %need_wakeup = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 7
  %11 = ptrtoint ptr %need_wakeup to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %need_wakeup, align 8
  %f_mode = getelementptr inbounds %struct.file, ptr %out, i32 0, i32 8
  %12 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f_mode, align 8
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !130

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %out, i32 0, i32 7
  %14 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f_flags, align 4
  %and7 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end16, label %if.end.cleanup_crit_edge, !prof !125

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call = tail call i32 @rw_verify_area(i32 noundef 1, ptr noundef %out, ptr noundef %opos, i32 noundef %len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end16.cleanup_crit_edge, label %if.end24, !prof !130

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %call25 = call i32 @splice_direct_to_actor(ptr noundef %in, ptr noundef nonnull %sd, ptr noundef nonnull @direct_splice_actor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp sgt i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pos, align 8
  %18 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end24.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %if.end16.cleanup_crit_edge ], [ %call25, %if.then27 ], [ %call25, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sd) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rw_verify_area(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @direct_splice_actor(ptr noundef %pipe, ptr nocapture noundef readonly %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %f_op.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_op.i, align 4
  %splice_write.i = getelementptr inbounds %struct.file_operations, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %splice_write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %splice_write.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !prof !130

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @warn_unsupported.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@direct_splice_actor, %land.lhs.true.i)) #8
          to label %do_splice_from.exit [label %land.lhs.true.i], !srcloc !135

land.lhs.true.i:                                  ; preds = %if.then.i
  %call3.i = tail call i32 @___ratelimit(ptr noundef nonnull @warn_unsupported._rs, ptr noundef nonnull @.str.17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do_splice_from.exit_crit_edge, label %if.then.i4

land.lhs.true.i.do_splice_from.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_splice_from.exit

if.then.i4:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @warn_unsupported.descriptor, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.22, ptr noundef %1, i32 noundef %11, ptr noundef %comm.i) #8
  br label %do_splice_from.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %14 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sd, align 8
  %opos = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 5
  %16 = ptrtoint ptr %opos to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %opos, align 8
  %call6.i = tail call i32 %5(ptr noundef %pipe, ptr noundef %1, ptr noundef %17, i32 noundef %15, i32 noundef %13) #8
  br label %do_splice_from.exit

do_splice_from.exit:                              ; preds = %if.end.i, %if.then.i4, %land.lhs.true.i.do_splice_from.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %call6.i, %if.end.i ], [ -22, %if.then.i ], [ -22, %land.lhs.true.i.do_splice_from.exit_crit_edge ], [ -22, %if.then.i4 ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @splice_file_to_pipe(ptr noundef %in, ptr noundef %opipe, ptr noundef %offset, i32 noundef %len, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pipe_lock(ptr noundef %opipe) #8
  %readers.i = getelementptr inbounds %struct.pipe_inode_info, ptr %opipe, i32 0, i32 9
  %0 = ptrtoint ptr %readers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %readers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not24.i = icmp eq i32 %1, 0
  br i1 %tobool.not24.i, label %entry.if.then.i_crit_edge, label %if.end.lr.ph.i, !prof !130

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.lr.ph.i:                                   ; preds = %entry
  %head.i = getelementptr inbounds %struct.pipe_inode_info, ptr %opipe, i32 0, i32 3
  %tail.i = getelementptr inbounds %struct.pipe_inode_info, ptr %opipe, i32 0, i32 4
  %max_usage.i = getelementptr inbounds %struct.pipe_inode_info, ptr %opipe, i32 0, i32 5
  %and.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp ne i32 %and.i, 0
  br label %if.end.i

if.then.i:                                        ; preds = %if.end16.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %call4.i = tail call i32 @send_sig(i32 noundef 13, ptr noundef %5, i32 noundef 0) #8
  br label %if.end.thread

if.end.i:                                         ; preds = %if.end16.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head.i, align 4
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail.i, align 4
  %10 = ptrtoint ptr %max_usage.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_usage.i, align 4
  %sub.i.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %11)
  %cmp.i.not.i = icmp ult i32 %sub.i.i.i, %11
  %brmerge.i = or i1 %tobool8.not.i, %cmp.i.not.i
  br i1 %brmerge.i, label %return.loopexit.split.loop.exit.i, label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i
  %12 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i21.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i21.i to ptr
  %task12.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task12.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task12.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stack.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %20 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end10.i.if.end.thread_crit_edge, !prof !125

if.end10.i.if.end.thread_crit_edge:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

signal_pending.exit.i:                            ; preds = %if.end10.i
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %17, align 4
  %and1.i.i.i.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool14.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %signal_pending.exit.i.if.end.thread_crit_edge

signal_pending.exit.i.if.end.thread_crit_edge:    ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

if.end16.i:                                       ; preds = %signal_pending.exit.i
  tail call void @pipe_wait_writable(ptr noundef %opipe) #8
  %23 = ptrtoint ptr %readers.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %readers.i, align 4
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.end16.i.if.then.i_crit_edge, label %if.end16.i.if.end.i_crit_edge, !prof !130

if.end16.i.if.end.i_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end16.i.if.then.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

return.loopexit.split.loop.exit.i:                ; preds = %if.end.i
  br i1 %cmp.i.not.i, label %if.then, label %return.loopexit.split.loop.exit.i.if.end.thread_crit_edge

return.loopexit.split.loop.exit.i.if.end.thread_crit_edge: ; preds = %return.loopexit.split.loop.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

if.then:                                          ; preds = %return.loopexit.split.loop.exit.i
  %f_mode.i = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 8
  %25 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %f_mode.i, align 8
  %and.i11 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11)
  %tobool.not.i12 = icmp eq i32 %and.i11, 0
  br i1 %tobool.not.i12, label %if.then.if.end.thread_crit_edge, label %if.end.i17, !prof !130

if.then.if.end.thread_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

if.end.i17:                                       ; preds = %if.then
  %27 = ptrtoint ptr %max_usage.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_usage.i, align 4
  %29 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %head.i, align 4
  %31 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tail.i, align 4
  %sub.i.neg.i = sub i32 %28, %30
  %sub.i = add i32 %sub.i.neg.i, %32
  %shl.i = shl i32 %sub.i, 12
  %33 = tail call i32 @llvm.umin.i32(i32 %shl.i, i32 %len) #8
  %call4.i16 = tail call i32 @rw_verify_area(i32 noundef 0, ptr noundef %in, ptr noundef %offset, i32 noundef %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i16)
  %cmp5.i = icmp slt i32 %call4.i16, 0
  br i1 %cmp5.i, label %if.end.i17.if.end.thread_crit_edge, label %if.end13.i, !prof !130

if.end.i17.if.end.thread_crit_edge:               ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

if.end13.i:                                       ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479552, i32 %33)
  %cmp14.i = icmp ugt i32 %33, 2147479552
  br i1 %cmp14.i, label %if.then21.i, label %if.end13.i.if.end22.i_crit_edge, !prof !130

if.end13.i.if.end22.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %if.end13.i.if.end22.i_crit_edge
  %len.addr.0.i = phi i32 [ 2147479552, %if.then21.i ], [ %33, %if.end13.i.if.end22.i_crit_edge ]
  %f_op.i = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 3
  %34 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %f_op.i, align 4
  %splice_read.i = getelementptr inbounds %struct.file_operations, ptr %35, i32 0, i32 25
  %36 = ptrtoint ptr %splice_read.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %splice_read.i, align 4
  %tobool23.not.i = icmp eq ptr %37, null
  br i1 %tobool23.not.i, label %if.then32.i, label %if.end34.i, !prof !130

if.then32.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @warn_unsupported.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@splice_file_to_pipe, %land.lhs.true.i)) #8
          to label %if.end [label %land.lhs.true.i], !srcloc !135

land.lhs.true.i:                                  ; preds = %if.then32.i
  %call3.i = tail call i32 @___ratelimit(ptr noundef nonnull @warn_unsupported._rs, ptr noundef nonnull @.str.17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end.thread_crit_edge, label %if.then.i23

land.lhs.true.i.if.end.thread_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

if.then.i23:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i21 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i21 to ptr
  %task.i22 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i22, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 68
  %42 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pid.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 101
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @warn_unsupported.descriptor, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.14, ptr noundef %in, i32 noundef %43, ptr noundef %comm.i) #8
  br label %if.end.thread

if.end34.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %call37.i = tail call i32 %37(ptr noundef %in, ptr noundef %offset, ptr noundef %opipe, i32 noundef %len.addr.0.i, i32 noundef %flags) #8
  br label %if.end

if.end.thread:                                    ; preds = %if.then.i23, %land.lhs.true.i.if.end.thread_crit_edge, %if.end.i17.if.end.thread_crit_edge, %if.then.if.end.thread_crit_edge, %return.loopexit.split.loop.exit.i.if.end.thread_crit_edge, %signal_pending.exit.i.if.end.thread_crit_edge, %if.end10.i.if.end.thread_crit_edge, %if.then.i
  %ret.0.ph = phi i32 [ -22, %if.then.i23 ], [ -22, %land.lhs.true.i.if.end.thread_crit_edge ], [ %call4.i16, %if.end.i17.if.end.thread_crit_edge ], [ -9, %if.then.if.end.thread_crit_edge ], [ -11, %return.loopexit.split.loop.exit.i.if.end.thread_crit_edge ], [ -32, %if.then.i ], [ -512, %if.end10.i.if.end.thread_crit_edge ], [ -512, %signal_pending.exit.i.if.end.thread_crit_edge ]
  tail call void @pipe_unlock(ptr noundef %opipe) #8
  br label %if.end3

if.end:                                           ; preds = %if.end34.i, %if.then32.i
  %ret.0 = phi i32 [ %call37.i, %if.end34.i ], [ -22, %if.then32.i ]
  tail call void @pipe_unlock(ptr noundef %opipe) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp sgt i32 %ret.0, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !140
  %head.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %opipe, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %45, %head.i.i
  br i1 %cmp.i.i.not.i, label %if.then2.wakeup_pipe_readers.exit_crit_edge, label %if.then.i19

if.then2.wakeup_pipe_readers.exit_crit_edge:      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %wakeup_pipe_readers.exit

if.then.i19:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %rd_wait.i = getelementptr inbounds %struct.pipe_inode_info, ptr %opipe, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %rd_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %wakeup_pipe_readers.exit

wakeup_pipe_readers.exit:                         ; preds = %if.then.i19, %if.then2.wakeup_pipe_readers.exit_crit_edge
  %fasync_readers.i = getelementptr inbounds %struct.pipe_inode_info, ptr %opipe, i32 0, i32 16
  tail call void @kill_fasync(ptr noundef %fasync_readers.i, i32 noundef 29, i32 noundef 1) #8
  br label %if.end3

if.end3:                                          ; preds = %wakeup_pipe_readers.exit, %if.end.if.end3_crit_edge, %if.end.thread
  %ret.028 = phi i32 [ %ret.0.ph, %if.end.thread ], [ %ret.0, %wakeup_pipe_readers.exit ], [ %ret.0, %if.end.if.end3_crit_edge ]
  ret i32 %ret.028
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_splice(ptr noundef %in, ptr noundef %off_in, ptr noundef %out, ptr noundef %off_out, i32 noundef %len, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %offset = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #8
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %offset, align 8, !annotation !139
  %f_mode = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 8
  %1 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f_mode, align 8
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.rhs, !prof !130

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs:                                          ; preds = %entry
  %f_mode1 = getelementptr inbounds %struct.file, ptr %out, i32 0, i32 8
  %3 = ptrtoint ptr %f_mode1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_mode1, align 8
  %and2 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %lor.rhs.cleanup_crit_edge, label %if.end, !prof !130

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %call = tail call ptr @get_pipe_info(ptr noundef %in, i1 noundef zeroext true) #8
  %call7 = tail call ptr @get_pipe_info(ptr noundef %out, i1 noundef zeroext true) #8
  %tobool8.not = icmp eq ptr %call, null
  %tobool9.not = icmp eq ptr %call7, null
  %or.cond = select i1 %tobool8.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.end24, label %if.then10

if.then10:                                        ; preds = %if.end
  %tobool11.not = icmp eq ptr %off_in, null
  %tobool12.not = icmp eq ptr %off_out, null
  %or.cond151 = and i1 %tobool11.not, %tobool12.not
  br i1 %or.cond151, label %if.end14, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.then10
  %cmp = icmp eq ptr %call, %call7
  br i1 %cmp, label %if.end14.cleanup_crit_edge, label %if.end16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end14
  %f_flags = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 7
  %5 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_flags, align 4
  %f_flags17 = getelementptr inbounds %struct.file, ptr %out, i32 0, i32 7
  %7 = ptrtoint ptr %f_flags17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_flags17, align 4
  %or = or i32 %8, %6
  %and18 = lshr i32 %or, 10
  %9 = and i32 %and18, 2
  %10 = or i32 %9, %flags
  %head.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call, i32 0, i32 3
  %tail.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call, i32 0, i32 4
  %writers.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call, i32 0, i32 10
  %and.i.i = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool11.not.i.i = icmp ne i32 %and.i.i, 0
  %ring_size.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call, i32 0, i32 6
  %head.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call7, i32 0, i32 3
  %ring_size5.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call7, i32 0, i32 6
  %readers.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call7, i32 0, i32 9
  %tail16.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call7, i32 0, i32 4
  %max_usage.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call7, i32 0, i32 5
  %bufs.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call, i32 0, i32 18
  %bufs32.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call7, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool27.not.i = icmp ne i32 %and.i.i, 0
  br label %retry.i

retry.i:                                          ; preds = %cleanup.i, %if.end16
  %len.addr.0.i = phi i32 [ %len, %if.end16 ], [ %len.addr.1.i, %cleanup.i ]
  %input_wakeup.0.off0.i = phi i1 [ false, %if.end16 ], [ %input_wakeup.1.off0.i, %cleanup.i ]
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %head.i.i, align 4
  %13 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tail.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i.i.i = icmp eq i32 %12, %14
  br i1 %cmp.i.i.i, label %if.end.i.i, label %retry.i.if.end.i_crit_edge

retry.i.if.end.i_crit_edge:                       ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i.i:                                       ; preds = %retry.i
  tail call void @pipe_lock(ptr noundef %call) #8
  %15 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %head.i.i, align 4
  %17 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tail.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.i2124.i.i = icmp eq i32 %16, %18
  br i1 %cmp.i2124.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.ipipe_prep.exit.thread159.i_crit_edge

if.end.i.i.ipipe_prep.exit.thread159.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipipe_prep.exit.thread159.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end13.i.i.while.body.i.i_crit_edge, %if.end.i.i.while.body.i.i_crit_edge
  %19 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stack.i.i.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %27 = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i, label %signal_pending.exit.i.i, label %while.body.i.i.ipipe_prep.exit.i_crit_edge, !prof !125

while.body.i.i.ipipe_prep.exit.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipipe_prep.exit.i

signal_pending.exit.i.i:                          ; preds = %while.body.i.i
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %24, align 4
  %and1.i.i.i.i.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end7.i.i, label %signal_pending.exit.i.i.ipipe_prep.exit.i_crit_edge

signal_pending.exit.i.i.ipipe_prep.exit.i_crit_edge: ; preds = %signal_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipipe_prep.exit.i

if.end7.i.i:                                      ; preds = %signal_pending.exit.i.i
  %30 = ptrtoint ptr %writers.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %writers.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool8.not.i.i = icmp eq i32 %31, 0
  %brmerge.i.i = or i1 %tobool11.not.i.i, %tobool8.not.i.i
  br i1 %brmerge.i.i, label %while.end.loopexit.split.loop.exit33.i.i, label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.end7.i.i
  tail call void @pipe_wait_readable(ptr noundef %call) #8
  %32 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %head.i.i, align 4
  %34 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tail.i.i, align 4
  %cmp.i21.i.i = icmp eq i32 %33, %35
  br i1 %cmp.i21.i.i, label %if.end13.i.i.while.body.i.i_crit_edge, label %if.end13.i.i.ipipe_prep.exit.thread159.i_crit_edge

if.end13.i.i.ipipe_prep.exit.thread159.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipipe_prep.exit.thread159.i

if.end13.i.i.while.body.i.i_crit_edge:            ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.loopexit.split.loop.exit33.i.i:         ; preds = %if.end7.i.i
  br i1 %tobool8.not.i.i, label %while.end.loopexit.split.loop.exit33.i.i.ipipe_prep.exit.thread159.i_crit_edge, label %while.end.loopexit.split.loop.exit33.i.i.ipipe_prep.exit.i_crit_edge

while.end.loopexit.split.loop.exit33.i.i.ipipe_prep.exit.i_crit_edge: ; preds = %while.end.loopexit.split.loop.exit33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipipe_prep.exit.i

while.end.loopexit.split.loop.exit33.i.i.ipipe_prep.exit.thread159.i_crit_edge: ; preds = %while.end.loopexit.split.loop.exit33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipipe_prep.exit.thread159.i

ipipe_prep.exit.thread159.i:                      ; preds = %while.end.loopexit.split.loop.exit33.i.i.ipipe_prep.exit.thread159.i_crit_edge, %if.end13.i.i.ipipe_prep.exit.thread159.i_crit_edge, %if.end.i.i.ipipe_prep.exit.thread159.i_crit_edge
  tail call void @pipe_unlock(ptr noundef %call) #8
  br label %if.end.i

ipipe_prep.exit.i:                                ; preds = %while.end.loopexit.split.loop.exit33.i.i.ipipe_prep.exit.i_crit_edge, %signal_pending.exit.i.i.ipipe_prep.exit.i_crit_edge, %while.body.i.i.ipipe_prep.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ -512, %while.body.i.i.ipipe_prep.exit.i_crit_edge ], [ -512, %signal_pending.exit.i.i.ipipe_prep.exit.i_crit_edge ], [ -11, %while.end.loopexit.split.loop.exit33.i.i.ipipe_prep.exit.i_crit_edge ]
  tail call void @pipe_unlock(ptr noundef %call) #8
  br label %cleanup

if.end.i:                                         ; preds = %ipipe_prep.exit.thread159.i, %retry.i.if.end.i_crit_edge
  %call1.i = tail call fastcc i32 @opipe_prep(ptr noundef %call7, i32 noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  tail call void @pipe_double_lock(ptr noundef %call, ptr noundef %call7) #8
  %36 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tail.i.i, align 4
  %38 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ring_size.i, align 4
  %sub.i = add i32 %39, -1
  %40 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %head.i, align 4
  %42 = ptrtoint ptr %ring_size5.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ring_size5.i, align 4
  %sub6.i = add i32 %43, -1
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end4.i
  %len.addr.1.i = phi i32 [ %len.addr.0.i, %if.end4.i ], [ %sub58.i, %do.cond.i.do.body.i_crit_edge ]
  %o_head.0.i = phi i32 [ %41, %if.end4.i ], [ %storemerge.i, %do.cond.i.do.body.i_crit_edge ]
  %i_tail.0.i = phi i32 [ %37, %if.end4.i ], [ %i_tail.1.i, %do.cond.i.do.body.i_crit_edge ]
  %ret.0.i = phi i32 [ 0, %if.end4.i ], [ %add57.i, %do.cond.i.do.body.i_crit_edge ]
  %input_wakeup.1.off0.i = phi i1 [ %input_wakeup.0.off0.i, %if.end4.i ], [ %input_wakeup.2.off0.i, %do.cond.i.do.body.i_crit_edge ]
  %44 = ptrtoint ptr %readers.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %readers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool7.not.i = icmp eq i32 %45, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end14.i

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i149.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i149.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i, align 8
  %call10.i = tail call i32 @send_sig(i32 noundef 13, ptr noundef %49, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool11.not.i = icmp eq i32 %ret.0.i, 0
  %spec.select = select i1 %tobool11.not.i, i32 -32, i32 %ret.0.i
  br label %do.end.i

if.end14.i:                                       ; preds = %do.body.i
  %50 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %head.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %i_tail.0.i)
  %cmp.i.i = icmp eq i32 %51, %i_tail.0.i
  br i1 %cmp.i.i, label %land.lhs.true.i, label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.end14.i
  %52 = ptrtoint ptr %writers.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %writers.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool18.not.i = icmp eq i32 %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool24.not.i = icmp ne i32 %ret.0.i, 0
  %or.cond.i = select i1 %tobool18.not.i, i1 true, i1 %tobool24.not.i
  %brmerge167 = select i1 %or.cond.i, i1 true, i1 %tobool27.not.i
  br i1 %brmerge167, label %do.end.i.loopexit171.split.loop.exit192, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %if.end14.i
  %54 = ptrtoint ptr %tail16.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tail16.i, align 4
  %56 = ptrtoint ptr %max_usage.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_usage.i, align 4
  %sub.i.i.i = sub i32 %o_head.0.i, %55
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %57)
  %cmp.i151.not.i = icmp ult i32 %sub.i.i.i, %57
  br i1 %cmp.i151.not.i, label %if.end30.i, label %if.then23.i

if.then23.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool24.not.old.i = icmp ne i32 %ret.0.i, 0
  %brmerge = select i1 %tobool24.not.old.i, i1 true, i1 %tobool27.not.i
  br i1 %brmerge, label %do.end.i.loopexit171.split.loop.exit, label %if.then23.i.cleanup.i_crit_edge

if.then23.i.cleanup.i_crit_edge:                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end30.i:                                       ; preds = %lor.lhs.false.i
  %58 = ptrtoint ptr %bufs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bufs.i, align 4
  %and31.i = and i32 %i_tail.0.i, %sub.i
  %arrayidx.i = getelementptr %struct.pipe_buffer, ptr %59, i32 %and31.i
  %60 = ptrtoint ptr %bufs32.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bufs32.i, align 4
  %and33.i = and i32 %o_head.0.i, %sub6.i
  %arrayidx34.i = getelementptr %struct.pipe_buffer, ptr %61, i32 %and33.i
  %len35.i = getelementptr %struct.pipe_buffer, ptr %59, i32 %and31.i, i32 2
  %62 = ptrtoint ptr %len35.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len35.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.1.i, i32 %63)
  %cmp.not.i = icmp ult i32 %len.addr.1.i, %63
  br i1 %cmp.not.i, label %if.else.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = call ptr @memcpy(ptr %arrayidx34.i, ptr %arrayidx.i, i32 24)
  %ops.i = getelementptr %struct.pipe_buffer, ptr %59, i32 %and31.i, i32 3
  %65 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %ops.i, align 4
  %inc.i = add i32 %i_tail.0.i, 1
  %66 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %inc.i, ptr %tail.i.i, align 4
  %len38.i = getelementptr %struct.pipe_buffer, ptr %61, i32 %and33.i, i32 2
  %67 = ptrtoint ptr %len38.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len38.i, align 4
  br label %do.cond.i

if.else.i:                                        ; preds = %if.end30.i
  %ops.i.i = getelementptr %struct.pipe_buffer, ptr %59, i32 %and31.i, i32 3
  %69 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i.i, align 4
  %get.i.i = getelementptr inbounds %struct.pipe_buf_operations, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %get.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %get.i.i, align 4
  %call.i.i = tail call zeroext i1 %72(ptr noundef %call, ptr noundef %arrayidx.i) #8
  br i1 %call.i.i, label %if.end46.i, label %if.then42.i

if.then42.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp43.i = icmp eq i32 %ret.0.i, 0
  %spec.select240 = select i1 %cmp43.i, i32 -14, i32 %ret.0.i
  br label %do.end.i

if.end46.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %73 = call ptr @memcpy(ptr %arrayidx34.i, ptr %arrayidx.i, i32 24)
  %flags47.i = getelementptr %struct.pipe_buffer, ptr %61, i32 %and33.i, i32 4
  %74 = ptrtoint ptr %flags47.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags47.i, align 4
  %and50.i = and i32 %75, -21
  store i32 %and50.i, ptr %flags47.i, align 4
  %len51.i = getelementptr %struct.pipe_buffer, ptr %61, i32 %and33.i, i32 2
  %76 = ptrtoint ptr %len51.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %len.addr.1.i, ptr %len51.i, align 4
  %offset.i = getelementptr %struct.pipe_buffer, ptr %59, i32 %and31.i, i32 1
  %77 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %78, %len.addr.1.i
  store i32 %add.i, ptr %offset.i, align 4
  %79 = ptrtoint ptr %len35.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len35.i, align 4
  %sub53.i = sub i32 %80, %len.addr.1.i
  store i32 %sub53.i, ptr %len35.i, align 4
  br label %do.cond.i

cleanup.i:                                        ; preds = %if.then23.i.cleanup.i_crit_edge, %land.lhs.true.i.cleanup.i_crit_edge
  tail call void @pipe_unlock(ptr noundef %call) #8
  tail call void @pipe_unlock(ptr noundef %call7) #8
  br label %retry.i

do.cond.i:                                        ; preds = %if.end46.i, %if.then36.i
  %i_tail.1.i = phi i32 [ %i_tail.0.i, %if.end46.i ], [ %inc.i, %if.then36.i ]
  %input_wakeup.2.off0.i = phi i1 [ %input_wakeup.1.off0.i, %if.end46.i ], [ true, %if.then36.i ]
  %o_len.0.i = phi i32 [ %len.addr.1.i, %if.end46.i ], [ %68, %if.then36.i ]
  %storemerge.i = add i32 %o_head.0.i, 1
  %81 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %storemerge.i, ptr %head.i, align 4
  %add57.i = add i32 %o_len.0.i, %ret.0.i
  %sub58.i = sub i32 %len.addr.1.i, %o_len.0.i
  %tobool59.not.i = icmp eq i32 %sub58.i, 0
  br i1 %tobool59.not.i, label %do.cond.i.do.end.i_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.cond.i.do.end.i_crit_edge:                     ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.loopexit171.split.loop.exit:             ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select241 = select i1 %tobool24.not.old.i, i32 %ret.0.i, i32 -11
  br label %do.end.i

do.end.i.loopexit171.split.loop.exit192:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select242 = select i1 %or.cond.i, i32 %ret.0.i, i32 -11
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.loopexit171.split.loop.exit192, %do.end.i.loopexit171.split.loop.exit, %do.cond.i.do.end.i_crit_edge, %if.then42.i, %if.then8.i
  %input_wakeup.3.off0169.i = phi i1 [ %input_wakeup.1.off0.i, %if.then8.i ], [ %input_wakeup.1.off0.i, %if.then42.i ], [ %input_wakeup.1.off0.i, %do.end.i.loopexit171.split.loop.exit ], [ %input_wakeup.1.off0.i, %do.end.i.loopexit171.split.loop.exit192 ], [ %input_wakeup.2.off0.i, %do.cond.i.do.end.i_crit_edge ]
  %ret.1168.i = phi i32 [ %spec.select, %if.then8.i ], [ %spec.select240, %if.then42.i ], [ %spec.select241, %do.end.i.loopexit171.split.loop.exit ], [ %spec.select242, %do.end.i.loopexit171.split.loop.exit192 ], [ %add57.i, %do.cond.i.do.end.i_crit_edge ]
  tail call void @pipe_unlock(ptr noundef %call) #8
  tail call void @pipe_unlock(ptr noundef %call7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1168.i)
  %cmp60.i = icmp sgt i32 %ret.1168.i, 0
  br i1 %cmp60.i, label %if.then61.i, label %do.end.i.if.end62.i_crit_edge

do.end.i.if.end62.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

if.then61.i:                                      ; preds = %do.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !140
  %head.i.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call7, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq ptr %83, %head.i.i.i
  br i1 %cmp.i.i.not.i.i, label %if.then61.i.wakeup_pipe_readers.exit.i_crit_edge, label %if.then.i.i

if.then61.i.wakeup_pipe_readers.exit.i_crit_edge: ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wakeup_pipe_readers.exit.i

if.then.i.i:                                      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  %rd_wait.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call7, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %rd_wait.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %wakeup_pipe_readers.exit.i

wakeup_pipe_readers.exit.i:                       ; preds = %if.then.i.i, %if.then61.i.wakeup_pipe_readers.exit.i_crit_edge
  %fasync_readers.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call7, i32 0, i32 16
  tail call void @kill_fasync(ptr noundef %fasync_readers.i.i, i32 noundef 29, i32 noundef 1) #8
  br label %if.end62.i

if.end62.i:                                       ; preds = %wakeup_pipe_readers.exit.i, %do.end.i.if.end62.i_crit_edge
  br i1 %input_wakeup.3.off0169.i, label %if.then64.i, label %if.end62.i.cleanup_crit_edge

if.end62.i.cleanup_crit_edge:                     ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then64.i:                                      ; preds = %if.end62.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !138
  %head.i.i153.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call, i32 0, i32 2, i32 1
  %84 = ptrtoint ptr %head.i.i153.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %head.i.i153.i, align 4
  %cmp.i.i.not.i154.i = icmp eq ptr %85, %head.i.i153.i
  br i1 %cmp.i.i.not.i154.i, label %if.then64.i.wakeup_pipe_writers.exit.i_crit_edge, label %if.then.i155.i

if.then64.i.wakeup_pipe_writers.exit.i_crit_edge: ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wakeup_pipe_writers.exit.i

if.then.i155.i:                                   ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #10
  %wr_wait.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wr_wait.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %wakeup_pipe_writers.exit.i

wakeup_pipe_writers.exit.i:                       ; preds = %if.then.i155.i, %if.then64.i.wakeup_pipe_writers.exit.i_crit_edge
  %fasync_writers.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call, i32 0, i32 17
  tail call void @kill_fasync(ptr noundef %fasync_writers.i.i, i32 noundef 29, i32 noundef 2) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end
  br i1 %tobool8.not, label %if.end71, label %if.then26

if.then26:                                        ; preds = %if.end24
  %tobool27.not = icmp eq ptr %off_in, null
  br i1 %tobool27.not, label %if.end29, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.then26
  %tobool30.not = icmp eq ptr %off_out, null
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end29
  %86 = ptrtoint ptr %f_mode1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %f_mode1, align 8
  %and33 = and i32 %87, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.then31.cleanup_crit_edge, label %if.then31.if.end37_crit_edge

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %f_pos = getelementptr inbounds %struct.file, ptr %out, i32 0, i32 10
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then31.if.end37_crit_edge
  %storemerge150.in = phi ptr [ %f_pos, %if.else ], [ %off_out, %if.then31.if.end37_crit_edge ]
  %88 = ptrtoint ptr %storemerge150.in to i32
  call void @__asan_load8_noabort(i32 %88)
  %storemerge150 = load i64, ptr %storemerge150.in, align 8
  %89 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %storemerge150, ptr %offset, align 8
  %f_flags38 = getelementptr inbounds %struct.file, ptr %out, i32 0, i32 7
  %90 = ptrtoint ptr %f_flags38 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %f_flags38, align 4
  %and39 = and i32 %91, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end48, label %if.end37.cleanup_crit_edge, !prof !125

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %if.end37
  %call49 = call i32 @rw_verify_area(i32 noundef 1, ptr noundef %out, ptr noundef nonnull %offset, i32 noundef %len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end48.cleanup_crit_edge, label %if.end58, !prof !130

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end58:                                         ; preds = %if.end48
  %f_flags59 = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 7
  %92 = ptrtoint ptr %f_flags59 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %f_flags59, align 4
  %and60 = lshr i32 %93, 10
  %94 = and i32 %and60, 2
  %95 = or i32 %94, %flags
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %out, i32 0, i32 2
  %96 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %f_inode.i.i, align 8
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %97, align 8
  %100 = and i16 %99, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %100)
  %cmp.i = icmp eq i16 %100, -32768
  br i1 %cmp.i, label %if.end.i154, label %if.end58.file_start_write.exit_crit_edge

if.end58.file_start_write.exit_crit_edge:         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %file_start_write.exit

if.end.i154:                                      ; preds = %if.end58
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %97, i32 0, i32 8
  %101 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %i_sb.i, align 4
  %add.ptr1.i.i.i = getelementptr %struct.super_block, ptr %102, i32 0, i32 32, i32 2
  call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 49) #8
  %dep_map.i.i.i.i = getelementptr %struct.super_block, ptr %102, i32 0, i32 32, i32 2, i32 0, i32 5
  %103 = call ptr @llvm.returnaddress(i32 0) #8
  %104 = ptrtoint ptr %103 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %104) #8
  %105 = call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i.i.i.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %108, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !141
  %call.i.i.i.i.i = call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %if.end.i154.rcu_sync_is_idle.exit.i.i.i.i_crit_edge

if.end.i154.rcu_sync_is_idle.exit.i.i.i.i_crit_edge: ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end.i154
  %call1.i.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool2.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i.i

land.lhs.true3.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b8.i.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i.i, label %land.lhs.true3.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true3.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 35, ptr noundef nonnull @.str.21) #8
  br label %rcu_sync_is_idle.exit.i.i.i.i

rcu_sync_is_idle.exit.i.i.i.i:                    ; preds = %if.then.i.i.i.i.i, %land.lhs.true3.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge, %if.end.i154.rcu_sync_is_idle.exit.i.i.i.i_crit_edge
  %109 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %add.ptr1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool7.not.i.i.i.i.i = icmp eq i32 %110, 0
  br i1 %tobool7.not.i.i.i.i.i, label %do.body7.i.i.i.i, label %if.else.i.i.i.i, !prof !125

do.body7.i.i.i.i:                                 ; preds = %rcu_sync_is_idle.exit.i.i.i.i
  %111 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !142
  %read_count.i.i.i.i = getelementptr %struct.super_block, ptr %102, i32 0, i32 32, i32 2, i32 0, i32 1
  %112 = ptrtoint ptr %read_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %read_count.i.i.i.i, align 4
  %114 = ptrtoint ptr %113 to i32
  %115 = call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i.i = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %118
  %119 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %120, %114
  %121 = inttoptr i32 %add.i.i.i.i to ptr
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 4
  %add21.i.i.i.i = add i32 %123, 1
  store i32 %add21.i.i.i.i, ptr %121, align 4
  %124 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !143
  %and.i.i.i.i.i.i = and i32 %124, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool32.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i.i, label %if.then41.i.i.i.i, label %do.body7.i.i.i.i.do.end43.i.i.i.i_crit_edge, !prof !130

do.body7.i.i.i.i.do.end43.i.i.i.i_crit_edge:      ; preds = %do.body7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43.i.i.i.i

if.then41.i.i.i.i:                                ; preds = %do.body7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %do.end43.i.i.i.i

do.end43.i.i.i.i:                                 ; preds = %if.then41.i.i.i.i, %do.body7.i.i.i.i.do.end43.i.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %111) #8, !srcloc !144
  br label %sb_start_write.exit.i

if.else.i.i.i.i:                                  ; preds = %rcu_sync_is_idle.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call50.i.i.i.i = call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i.i, i1 noundef zeroext false) #8
  br label %sb_start_write.exit.i

sb_start_write.exit.i:                            ; preds = %if.else.i.i.i.i, %do.end43.i.i.i.i
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !145
  %125 = call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i58.i.i.i.i = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i.i58.i.i.i.i to ptr
  %preempt_count.i.i59.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %preempt_count.i.i59.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %preempt_count.i.i59.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %128, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i59.i.i.i.i, align 4
  br label %file_start_write.exit

file_start_write.exit:                            ; preds = %sb_start_write.exit.i, %if.end58.file_start_write.exit_crit_edge
  %f_op.i = getelementptr inbounds %struct.file, ptr %out, i32 0, i32 3
  %129 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %f_op.i, align 4
  %splice_write.i = getelementptr inbounds %struct.file_operations, ptr %130, i32 0, i32 24
  %131 = ptrtoint ptr %splice_write.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %splice_write.i, align 4
  %tobool.not.i = icmp eq ptr %132, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i155, !prof !130

if.then.i:                                        ; preds = %file_start_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @warn_unsupported(ptr noundef %out, ptr noundef nonnull @.str.22) #8
  br label %do_splice_from.exit

if.end.i155:                                      ; preds = %file_start_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = call i32 %132(ptr noundef nonnull %call, ptr noundef %out, ptr noundef nonnull %offset, i32 noundef %len, i32 noundef %95) #8
  br label %do_splice_from.exit

do_splice_from.exit:                              ; preds = %if.end.i155, %if.then.i
  %retval.0.i156 = phi i32 [ -22, %if.then.i ], [ %call6.i, %if.end.i155 ]
  %133 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %f_inode.i.i, align 8
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %134, align 8
  %137 = and i16 %136, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %137)
  %cmp.i158 = icmp eq i16 %137, -32768
  br i1 %cmp.i158, label %if.end.i162, label %do_splice_from.exit.file_end_write.exit_crit_edge

do_splice_from.exit.file_end_write.exit_crit_edge: ; preds = %do_splice_from.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %file_end_write.exit

if.end.i162:                                      ; preds = %do_splice_from.exit
  %i_sb.i159 = getelementptr inbounds %struct.inode, ptr %134, i32 0, i32 8
  %138 = ptrtoint ptr %i_sb.i159 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %i_sb.i159, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %139, i32 0, i32 32, i32 2
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %139, i32 0, i32 32, i32 2, i32 0, i32 5
  %140 = call ptr @llvm.returnaddress(i32 0) #8
  %141 = ptrtoint ptr %140 to i32
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %141) #8
  %142 = call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i.i.i160 = and i32 %142, -16384
  %143 = inttoptr i32 %and.i.i.i.i.i.i160 to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i161 = add i32 %145, 1
  store volatile i32 %add.i.i.i.i161, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !146
  %call.i.i.i.i = call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i162.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.end.i162.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i162
  %call1.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 35, ptr noundef nonnull @.str.21) #8
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.end.i162.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %146 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool7.not.i.i.i.i = icmp eq i32 %147, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body3.i.i.i, label %do.end49.i.i.i, !prof !125

do.body3.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %148 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !142
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %139, i32 0, i32 32, i32 2, i32 0, i32 1
  %149 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %read_count.i.i.i, align 4
  %151 = ptrtoint ptr %150 to i32
  %152 = call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i = and i32 %152, -16384
  %153 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %153, i32 0, i32 3
  %154 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %155
  %156 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %157, %151
  %158 = inttoptr i32 %add.i.i.i to ptr
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %158, align 4
  %add17.i.i.i = add i32 %160, -1
  store i32 %add17.i.i.i, ptr %158, align 4
  %161 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !143
  %and.i.i.i.i.i163 = and i32 %161, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i163)
  %tobool28.not.i.i.i = icmp eq i32 %and.i.i.i.i.i163, 0
  br i1 %tobool28.not.i.i.i, label %if.then37.i.i.i, label %do.body3.i.i.i.do.end39.i.i.i_crit_edge, !prof !130

do.body3.i.i.i.do.end39.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %do.body3.i.i.i.do.end39.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %148) #8, !srcloc !144
  br label %__sb_end_write.exit.i

do.end49.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !147
  %162 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !142
  %read_count75.i.i.i = getelementptr %struct.super_block, ptr %139, i32 0, i32 32, i32 2, i32 0, i32 1
  %163 = ptrtoint ptr %read_count75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %read_count75.i.i.i, align 4
  %165 = ptrtoint ptr %164 to i32
  %166 = call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i122.i.i.i = and i32 %166, -16384
  %167 = inttoptr i32 %and.i122.i.i.i to ptr
  %cpu78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %167, i32 0, i32 3
  %168 = ptrtoint ptr %cpu78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %cpu78.i.i.i, align 4
  %arrayidx79.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %169
  %170 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx79.i.i.i, align 4
  %add80.i.i.i = add i32 %171, %165
  %172 = inttoptr i32 %add80.i.i.i to ptr
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %172, align 4
  %add81.i.i.i = add i32 %174, -1
  store i32 %add81.i.i.i, ptr %172, align 4
  %175 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !143
  %and.i.i123.i.i.i = and i32 %175, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i)
  %tobool92.not.i.i.i = icmp eq i32 %and.i.i123.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %if.then101.i.i.i, label %do.end49.i.i.i.do.end104.i.i.i_crit_edge, !prof !130

do.end49.i.i.i.do.end104.i.i.i_crit_edge:         ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end104.i.i.i

if.then101.i.i.i:                                 ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %do.end104.i.i.i

do.end104.i.i.i:                                  ; preds = %if.then101.i.i.i, %do.end49.i.i.i.do.end104.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %162) #8, !srcloc !144
  %writer.i.i.i = getelementptr %struct.super_block, ptr %139, i32 0, i32 32, i32 2, i32 0, i32 2
  %call111.i.i.i = call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i) #8
  br label %__sb_end_write.exit.i

__sb_end_write.exit.i:                            ; preds = %do.end104.i.i.i, %do.end39.i.i.i
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !148
  %176 = call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i120.i.i.i = and i32 %176, -16384
  %177 = inttoptr i32 %and.i.i.i120.i.i.i to ptr
  %preempt_count.i.i121.i.i.i = getelementptr inbounds %struct.thread_info, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %preempt_count.i.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %preempt_count.i.i121.i.i.i, align 4
  %sub.i.i.i.i = add i32 %179, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i121.i.i.i, align 4
  br label %file_end_write.exit

file_end_write.exit:                              ; preds = %__sb_end_write.exit.i, %do_splice_from.exit.file_end_write.exit_crit_edge
  %180 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %offset, align 8
  br i1 %tobool30.not, label %if.then67, label %if.else69

if.then67:                                        ; preds = %file_end_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %f_pos68 = getelementptr inbounds %struct.file, ptr %out, i32 0, i32 10
  %182 = ptrtoint ptr %f_pos68 to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 %181, ptr %f_pos68, align 8
  br label %cleanup

if.else69:                                        ; preds = %file_end_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %183 = ptrtoint ptr %off_out to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 %181, ptr %off_out, align 8
  br label %cleanup

if.end71:                                         ; preds = %if.end24
  br i1 %tobool9.not, label %if.end71.cleanup_crit_edge, label %if.then73

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then73:                                        ; preds = %if.end71
  %tobool74.not = icmp eq ptr %off_out, null
  br i1 %tobool74.not, label %if.end76, label %if.then73.cleanup_crit_edge

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end76:                                         ; preds = %if.then73
  %tobool77.not = icmp eq ptr %off_in, null
  br i1 %tobool77.not, label %if.else84, label %if.then78

if.then78:                                        ; preds = %if.end76
  %184 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %f_mode, align 8
  %and80 = and i32 %185, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.then78.cleanup_crit_edge, label %if.then78.if.end86_crit_edge

if.then78.if.end86_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else84:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %f_pos85 = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 10
  br label %if.end86

if.end86:                                         ; preds = %if.else84, %if.then78.if.end86_crit_edge
  %storemerge.in = phi ptr [ %f_pos85, %if.else84 ], [ %off_in, %if.then78.if.end86_crit_edge ]
  %186 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load8_noabort(i32 %186)
  %storemerge = load i64, ptr %storemerge.in, align 8
  %187 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %storemerge, ptr %offset, align 8
  %f_flags87 = getelementptr inbounds %struct.file, ptr %out, i32 0, i32 7
  %188 = ptrtoint ptr %f_flags87 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %f_flags87, align 4
  %and88 = lshr i32 %189, 10
  %190 = and i32 %and88, 2
  %191 = or i32 %190, %flags
  %call93 = call i32 @splice_file_to_pipe(ptr noundef %in, ptr noundef nonnull %call7, ptr noundef nonnull %offset, i32 noundef %len, i32 noundef %191)
  %192 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %offset, align 8
  br i1 %tobool77.not, label %if.then95, label %if.else97

if.then95:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %f_pos96 = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 10
  %194 = ptrtoint ptr %f_pos96 to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %193, ptr %f_pos96, align 8
  br label %cleanup

if.else97:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %195 = ptrtoint ptr %off_in to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 %193, ptr %off_in, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else97, %if.then95, %if.then78.cleanup_crit_edge, %if.then73.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.else69, %if.then67, %if.end48.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %wakeup_pipe_writers.exit.i, %if.end62.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %ipipe_prep.exit.i, %if.end14.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %lor.rhs.cleanup_crit_edge ], [ -29, %if.then10.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -29, %if.then26.cleanup_crit_edge ], [ -22, %if.then31.cleanup_crit_edge ], [ -22, %if.end37.cleanup_crit_edge ], [ %call49, %if.end48.cleanup_crit_edge ], [ %retval.0.i156, %if.else69 ], [ %retval.0.i156, %if.then67 ], [ -29, %if.then73.cleanup_crit_edge ], [ -22, %if.then78.cleanup_crit_edge ], [ %call93, %if.else97 ], [ %call93, %if.then95 ], [ -22, %if.end71.cleanup_crit_edge ], [ -9, %entry.cleanup_crit_edge ], [ %ret.0.i.i, %ipipe_prep.exit.i ], [ %ret.1168.i, %wakeup_pipe_writers.exit.i ], [ %ret.1168.i, %if.end62.i.cleanup_crit_edge ], [ %call1.i, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pipe_info(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_vmsplice(i32 noundef %fd, i32 noundef %uiov, i32 noundef %nr_segs, i32 noundef %flags) #0 align 64 {
entry:
  %sd.i.i = alloca %struct.splice_desc, align 8
  %iovstack.i = alloca [8 x %struct.iovec], align 4
  %iov.i = alloca ptr, align 4
  %iter.i = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %uiov to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %iovstack.i) #8
  %1 = call ptr @memset(ptr %iovstack.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iov.i) #8
  %2 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %iovstack.i, ptr %iov.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #8
  %3 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %flags)
  %tobool.not.i = icmp ult i32 %flags, 16
  br i1 %tobool.not.i, label %if.end.i, label %entry.__do_sys_vmsplice.exit_crit_edge, !prof !125

entry.__do_sys_vmsplice.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_vmsplice.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @__fdget(i32 noundef %fd) #8, !noalias !149
  %and.i.i.i = and i32 %call.i.i, -4
  %4 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.__do_sys_vmsplice.exit_crit_edge, label %if.end.i.i

if.end.i.__do_sys_vmsplice.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_vmsplice.exit

if.end.i.i:                                       ; preds = %if.end.i
  %f_mode.i.i = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_mode.i.i, align 8
  %and.i.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %if.else.i.i, label %if.end.i.i.if.end5.i_crit_edge

if.end.i.i.if.end5.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %and6.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.else9.i.i, label %if.else.i.i.if.end5.i_crit_edge

if.else.i.i.if.end5.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.else9.i.i:                                     ; preds = %if.else.i.i
  %and.i.i40.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i40.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i40.i, 0
  br i1 %tobool.not.i.i.i, label %if.else9.i.i.__do_sys_vmsplice.exit_crit_edge, label %if.else9.i.i.cleanup.sink.split.i_crit_edge

if.else9.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.else9.i.i.__do_sys_vmsplice.exit_crit_edge:    ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_vmsplice.exit

if.end5.i:                                        ; preds = %if.else.i.i.if.end5.i_crit_edge, %if.end.i.i.if.end5.i_crit_edge
  %type.0.i = phi i32 [ 1, %if.end.i.i.if.end5.i_crit_edge ], [ 0, %if.else.i.i.if.end5.i_crit_edge ]
  %call6.i = call i32 @import_iovec(i32 noundef %type.0.i, ptr noundef %0, i32 noundef %nr_segs, i32 noundef 8, ptr noundef nonnull %iov.i, ptr noundef nonnull %iter.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.end5.i.out_fdput.i_crit_edge, label %if.end8.i

if.end5.i.out_fdput.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_fdput.i

if.end8.i:                                        ; preds = %if.end5.i
  %count.i.i = getelementptr inbounds %struct.iov_iter, ptr %iter.i, i32 0, i32 4
  %7 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not.i = icmp eq i32 %8, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end21.i_crit_edge, label %if.else.i

if.end8.i.if.end21.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.else.i:                                        ; preds = %if.end8.i
  %data_source.i.i = getelementptr inbounds %struct.iov_iter, ptr %iter.i, i32 0, i32 2
  %9 = ptrtoint ptr %data_source.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data_source.i.i, align 2, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp13.i = icmp eq i8 %10, 1
  br i1 %cmp13.i, label %if.then15.i, label %if.else17.i

if.then15.i:                                      ; preds = %if.else.i
  %and.i41.i = lshr i32 %flags, 1
  %11 = and i32 %and.i41.i, 4
  %call.i42.i = call ptr @get_pipe_info(ptr noundef nonnull %4, i1 noundef zeroext true) #8
  %tobool1.not.i.i = icmp eq ptr %call.i42.i, null
  br i1 %tobool1.not.i.i, label %if.then15.i.if.end21.i_crit_edge, label %if.end3.i.i

if.then15.i.if.end21.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.end3.i.i:                                      ; preds = %if.then15.i
  call void @pipe_lock(ptr noundef nonnull %call.i42.i) #8
  %readers.i.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call.i42.i, i32 0, i32 9
  %12 = ptrtoint ptr %readers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %readers.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not24.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not24.i.i.i, label %if.end3.i.i.if.then.i.i44.i_crit_edge, label %if.end.lr.ph.i.i.i, !prof !130

if.end3.i.i.if.then.i.i44.i_crit_edge:            ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i44.i

if.end.lr.ph.i.i.i:                               ; preds = %if.end3.i.i
  %head.i.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call.i42.i, i32 0, i32 3
  %tail.i.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call.i42.i, i32 0, i32 4
  %max_usage.i.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call.i42.i, i32 0, i32 5
  %and.i.i43.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i43.i)
  %tobool8.not.i.i.i = icmp ne i32 %and.i.i43.i, 0
  br label %if.end.i.i.i

if.then.i.i44.i:                                  ; preds = %if.end16.i.i.i.if.then.i.i44.i_crit_edge, %if.end3.i.i.if.then.i.i44.i_crit_edge
  %14 = call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i.i.i, align 8
  %call4.i.i.i = call i32 @send_sig(i32 noundef 13, ptr noundef %17, i32 noundef 0) #8
  br label %if.end8.thread.i.i

if.end.i.i.i:                                     ; preds = %if.end16.i.i.i.if.end.i.i.i_crit_edge, %if.end.lr.ph.i.i.i
  %18 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %head.i.i.i, align 4
  %20 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tail.i.i.i, align 4
  %22 = ptrtoint ptr %max_usage.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_usage.i.i.i, align 4
  %sub.i.i.i.i.i = sub i32 %19, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i.i, i32 %23)
  %cmp.i.not.i.i.i = icmp ult i32 %sub.i.i.i.i.i, %23
  %brmerge.i.i.i = or i1 %tobool8.not.i.i.i, %cmp.i.not.i.i.i
  br i1 %brmerge.i.i.i, label %return.loopexit.split.loop.exit.i.i.i, label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %if.end.i.i.i
  %24 = call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i21.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i21.i.i.i to ptr
  %task12.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task12.i.i.i, align 8
  %stack.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %stack.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stack.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %32 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i.i.i, label %signal_pending.exit.i.i.i, label %if.end10.i.i.i.if.end8.thread.i.i_crit_edge, !prof !125

if.end10.i.i.i.if.end8.thread.i.i_crit_edge:      ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.thread.i.i

signal_pending.exit.i.i.i:                        ; preds = %if.end10.i.i.i
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %29, align 4
  %and1.i.i.i.i.i.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i.i.i)
  %tobool14.not.i.i.i = icmp eq i32 %and1.i.i.i.i.i.i.i.i, 0
  br i1 %tobool14.not.i.i.i, label %if.end16.i.i.i, label %signal_pending.exit.i.i.i.if.end8.thread.i.i_crit_edge

signal_pending.exit.i.i.i.if.end8.thread.i.i_crit_edge: ; preds = %signal_pending.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.thread.i.i

if.end16.i.i.i:                                   ; preds = %signal_pending.exit.i.i.i
  call void @pipe_wait_writable(ptr noundef nonnull %call.i42.i) #8
  %35 = ptrtoint ptr %readers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %readers.i.i.i, align 4
  %tobool.not.i.i45.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i45.i, label %if.end16.i.i.i.if.then.i.i44.i_crit_edge, label %if.end16.i.i.i.if.end.i.i.i_crit_edge, !prof !130

if.end16.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.end16.i.i.i.if.then.i.i44.i_crit_edge:         ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i44.i

return.loopexit.split.loop.exit.i.i.i:            ; preds = %if.end.i.i.i
  br i1 %cmp.i.not.i.i.i, label %if.end8.i.i, label %return.loopexit.split.loop.exit.i.i.i.if.end8.thread.i.i_crit_edge

return.loopexit.split.loop.exit.i.i.i.if.end8.thread.i.i_crit_edge: ; preds = %return.loopexit.split.loop.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.thread.i.i

if.end8.thread.i.i:                               ; preds = %return.loopexit.split.loop.exit.i.i.i.if.end8.thread.i.i_crit_edge, %signal_pending.exit.i.i.i.if.end8.thread.i.i_crit_edge, %if.end10.i.i.i.if.end8.thread.i.i_crit_edge, %if.then.i.i44.i
  %retval.0.i.ph.i.i = phi i32 [ -11, %return.loopexit.split.loop.exit.i.i.i.if.end8.thread.i.i_crit_edge ], [ -32, %if.then.i.i44.i ], [ -512, %if.end10.i.i.i.if.end8.thread.i.i_crit_edge ], [ -512, %signal_pending.exit.i.i.i.if.end8.thread.i.i_crit_edge ]
  call void @pipe_unlock(ptr noundef nonnull %call.i42.i) #8
  br label %if.end21.i

if.end8.i.i:                                      ; preds = %return.loopexit.split.loop.exit.i.i.i
  %call7.i.i = call fastcc i32 @iter_to_pipe(ptr noundef nonnull %iter.i, ptr noundef nonnull %call.i42.i, i32 noundef %11) #8
  call void @pipe_unlock(ptr noundef nonnull %call.i42.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp.i.i = icmp sgt i32 %call7.i.i, 0
  br i1 %cmp.i.i, label %if.then9.i.i, label %if.end8.i.i.if.end21.i_crit_edge

if.end8.i.i.if.end21.i_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then9.i.i:                                     ; preds = %if.end8.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !140
  %head.i.i.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call.i42.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %head.i.i.i.i, align 4
  %cmp.i.i.not.i.i.i = icmp eq ptr %38, %head.i.i.i.i
  br i1 %cmp.i.i.not.i.i.i, label %if.then9.i.i.wakeup_pipe_readers.exit.i.i_crit_edge, label %if.then.i21.i.i

if.then9.i.i.wakeup_pipe_readers.exit.i.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wakeup_pipe_readers.exit.i.i

if.then.i21.i.i:                                  ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rd_wait.i.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call.i42.i, i32 0, i32 1
  call void @__wake_up(ptr noundef %rd_wait.i.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %wakeup_pipe_readers.exit.i.i

wakeup_pipe_readers.exit.i.i:                     ; preds = %if.then.i21.i.i, %if.then9.i.i.wakeup_pipe_readers.exit.i.i_crit_edge
  %fasync_readers.i.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call.i42.i, i32 0, i32 16
  call void @kill_fasync(ptr noundef %fasync_readers.i.i.i, i32 noundef 29, i32 noundef 1) #8
  br label %if.end21.i

if.else17.i:                                      ; preds = %if.else.i
  %call.i47.i = call ptr @get_pipe_info(ptr noundef nonnull %4, i1 noundef zeroext true) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sd.i.i) #8
  %39 = getelementptr inbounds i8, ptr %sd.i.i, i32 32
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 -1, ptr %39, align 8, !annotation !139
  %41 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count.i.i, align 8
  %43 = ptrtoint ptr %sd.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %sd.i.i, align 8
  %len.i.i = getelementptr inbounds %struct.splice_desc, ptr %sd.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %len.i.i, align 4
  %flags2.i.i = getelementptr inbounds %struct.splice_desc, ptr %sd.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %flags, ptr %flags2.i.i, align 8
  %u.i.i = getelementptr inbounds %struct.splice_desc, ptr %sd.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %iter.i, ptr %u.i.i, align 4
  %pos.i.i = getelementptr inbounds %struct.splice_desc, ptr %sd.i.i, i32 0, i32 4
  %tobool.not.i48.i = icmp eq ptr %call.i47.i, null
  %47 = call ptr @memset(ptr %pos.i.i, i32 0, i32 17)
  br i1 %tobool.not.i48.i, label %if.else17.i.vmsplice_to_user.exit.i_crit_edge, label %if.end.i49.i

if.else17.i.vmsplice_to_user.exit.i_crit_edge:    ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vmsplice_to_user.exit.i

if.end.i49.i:                                     ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool4.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool4.not.i.i, label %if.end.i49.i.vmsplice_to_user.exit.i_crit_edge, label %if.then5.i.i

if.end.i49.i.vmsplice_to_user.exit.i_crit_edge:   ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vmsplice_to_user.exit.i

if.then5.i.i:                                     ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @pipe_lock(ptr noundef nonnull %call.i47.i) #8
  %call6.i.i = call i32 @__splice_from_pipe(ptr noundef nonnull %call.i47.i, ptr noundef nonnull %sd.i.i, ptr noundef nonnull @pipe_to_user) #8
  call void @pipe_unlock(ptr noundef nonnull %call.i47.i) #8
  br label %vmsplice_to_user.exit.i

vmsplice_to_user.exit.i:                          ; preds = %if.then5.i.i, %if.end.i49.i.vmsplice_to_user.exit.i_crit_edge, %if.else17.i.vmsplice_to_user.exit.i_crit_edge
  %retval.0.i50.i = phi i32 [ -9, %if.else17.i.vmsplice_to_user.exit.i_crit_edge ], [ %call6.i.i, %if.then5.i.i ], [ 0, %if.end.i49.i.vmsplice_to_user.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sd.i.i) #8
  br label %if.end21.i

if.end21.i:                                       ; preds = %vmsplice_to_user.exit.i, %wakeup_pipe_readers.exit.i.i, %if.end8.i.i.if.end21.i_crit_edge, %if.end8.thread.i.i, %if.then15.i.if.end21.i_crit_edge, %if.end8.i.if.end21.i_crit_edge
  %error.0.i = phi i32 [ %retval.0.i50.i, %vmsplice_to_user.exit.i ], [ 0, %if.end8.i.if.end21.i_crit_edge ], [ -9, %if.then15.i.if.end21.i_crit_edge ], [ %call7.i.i, %wakeup_pipe_readers.exit.i.i ], [ %call7.i.i, %if.end8.i.i.if.end21.i_crit_edge ], [ %retval.0.i.ph.i.i, %if.end8.thread.i.i ]
  %48 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iov.i, align 4
  call void @kfree(ptr noundef %49) #8
  br label %out_fdput.i

out_fdput.i:                                      ; preds = %if.end21.i, %if.end5.i.out_fdput.i_crit_edge
  %error.1.i = phi i32 [ %call6.i, %if.end5.i.out_fdput.i_crit_edge ], [ %error.0.i, %if.end21.i ]
  %and.i51.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51.i)
  %tobool.not.i52.i = icmp eq i32 %and.i51.i, 0
  br i1 %tobool.not.i52.i, label %out_fdput.i.__do_sys_vmsplice.exit_crit_edge, label %out_fdput.i.cleanup.sink.split.i_crit_edge

out_fdput.i.cleanup.sink.split.i_crit_edge:       ; preds = %out_fdput.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

out_fdput.i.__do_sys_vmsplice.exit_crit_edge:     ; preds = %out_fdput.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_vmsplice.exit

cleanup.sink.split.i:                             ; preds = %out_fdput.i.cleanup.sink.split.i_crit_edge, %if.else9.i.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ -9, %if.else9.i.i.cleanup.sink.split.i_crit_edge ], [ %error.1.i, %out_fdput.i.cleanup.sink.split.i_crit_edge ]
  call void @fput(ptr noundef nonnull %4) #8
  br label %__do_sys_vmsplice.exit

__do_sys_vmsplice.exit:                           ; preds = %cleanup.sink.split.i, %out_fdput.i.__do_sys_vmsplice.exit_crit_edge, %if.else9.i.i.__do_sys_vmsplice.exit_crit_edge, %if.end.i.__do_sys_vmsplice.exit_crit_edge, %entry.__do_sys_vmsplice.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__do_sys_vmsplice.exit_crit_edge ], [ %error.1.i, %out_fdput.i.__do_sys_vmsplice.exit_crit_edge ], [ -9, %if.end.i.__do_sys_vmsplice.exit_crit_edge ], [ -9, %if.else9.i.i.__do_sys_vmsplice.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iov.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %iovstack.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_splice(i32 noundef %fd_in, i32 noundef %off_in, i32 noundef %fd_out, i32 noundef %off_out, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  %offset.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %off_in to ptr
  %1 = inttoptr i32 %off_out to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not.i = icmp eq i32 %len, 0
  br i1 %tobool.not.i, label %entry.__do_sys_splice.exit_crit_edge, label %if.end.i, !prof !130

entry.__do_sys_splice.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_splice.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %flags)
  %tobool4.not.i = icmp ult i32 %flags, 16
  br i1 %tobool4.not.i, label %if.end12.i, label %if.end.i.__do_sys_splice.exit_crit_edge, !prof !125

if.end.i.__do_sys_splice.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_splice.exit

if.end12.i:                                       ; preds = %if.end.i
  %call.i.i = tail call i32 @__fdget(i32 noundef %fd_in) #8, !noalias !152
  %and.i.i.i = and i32 %call.i.i, -4
  %2 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool13.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool13.not.i, label %if.end12.i.__do_sys_splice.exit_crit_edge, label %if.then14.i

if.end12.i.__do_sys_splice.exit_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_splice.exit

if.then14.i:                                      ; preds = %if.end12.i
  %call.i31.i = tail call i32 @__fdget(i32 noundef %fd_out) #8, !noalias !155
  %and.i.i32.i = and i32 %call.i31.i, -4
  %3 = inttoptr i32 %and.i.i32.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i32.i)
  %tobool17.not.i = icmp eq i32 %and.i.i32.i, 0
  br i1 %tobool17.not.i, label %if.then14.i.if.end21.i_crit_edge, label %if.then18.i

if.then14.i.if.end21.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.then14.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset.i.i) #8
  %4 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %offset.i.i, align 8, !annotation !139
  %call.i35.i = tail call ptr @get_pipe_info(ptr noundef nonnull %2, i1 noundef zeroext true) #8
  %call1.i.i = tail call ptr @get_pipe_info(ptr noundef nonnull %3, i1 noundef zeroext true) #8
  %tobool.not.i.i = icmp eq ptr %call.i35.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %off_in)
  %tobool2.not.i.i = icmp eq i32 %off_in, 0
  %or.cond.i.i = or i1 %tobool2.not.i.i, %tobool.not.i.i
  br i1 %or.cond.i.i, label %if.end.i.i, label %if.then18.i.__do_splice.exit.i_crit_edge

if.then18.i.__do_splice.exit.i_crit_edge:         ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_splice.exit.i

if.end.i.i:                                       ; preds = %if.then18.i
  %tobool3.not.i.i = icmp eq ptr %call1.i.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %off_out)
  %tobool5.not.i.i = icmp eq i32 %off_out, 0
  %or.cond56.i.i = or i1 %tobool5.not.i.i, %tobool3.not.i.i
  br i1 %or.cond56.i.i, label %if.end7.i.i, label %if.end.i.i.__do_splice.exit.i_crit_edge

if.end.i.i.__do_splice.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_splice.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  br i1 %tobool5.not.i.i, label %if.end7.i.i.if.end14.i.i_crit_edge, label %if.then.i.i.i

if.end7.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i

if.then.i.i.i:                                    ; preds = %if.end7.i.i
  tail call void @__might_fault(ptr noundef nonnull @.str.40, i32 noundef 156) #8
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i.i, label %if.then.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.if.then11.i.i.i.i_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 8, i32 -1226833920) #12, !srcloc !158
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !125

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %offset.i.i, i32 noundef 8) #8
  %6 = call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #4, !srcloc !159
  %and.i.i.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %offset.i.i, ptr noundef nonnull %1, i32 noundef 8) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end14.i.i_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !125

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end14.i.i_crit_edge:            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.03.i.i.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 8, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 8, %res.03.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %offset.i.i, i32 %sub.i.i.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.03.i.i.i.i)
  br label %__do_splice.exit.i

if.end14.i.i:                                     ; preds = %if.end.i.i.i.i.if.end14.i.i_crit_edge, %if.end7.i.i.if.end14.i.i_crit_edge
  %__off_out.0.i.i = phi ptr [ null, %if.end7.i.i.if.end14.i.i_crit_edge ], [ %offset.i.i, %if.end.i.i.i.i.if.end14.i.i_crit_edge ]
  br i1 %tobool2.not.i.i, label %if.end14.i.i.if.end21.i.i_crit_edge, label %if.then.i60.i.i

if.end14.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i

if.then.i60.i.i:                                  ; preds = %if.end14.i.i
  call void @__might_fault(ptr noundef nonnull @.str.40, i32 noundef 156) #8
  %call.i.i59.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i59.i.i, label %if.then.i60.i.i.if.then11.i.i75.i.i_crit_edge, label %land.lhs.true.i.i63.i.i

if.then.i60.i.i.if.then11.i.i75.i.i_crit_edge:    ; preds = %if.then.i60.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i75.i.i

land.lhs.true.i.i63.i.i:                          ; preds = %if.then.i60.i.i
  %10 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %0, i32 8, i32 -1226833920) #12, !srcloc !158
  %asmresult.i.i61.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i61.i.i)
  %cmp.i.i62.i.i = icmp eq i32 %asmresult.i.i61.i.i, 0
  br i1 %cmp.i.i62.i.i, label %if.end.i.i71.i.i, label %land.lhs.true.i.i63.i.i.if.then11.i.i75.i.i_crit_edge, !prof !125

land.lhs.true.i.i63.i.i.if.then11.i.i75.i.i_crit_edge: ; preds = %land.lhs.true.i.i63.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i75.i.i

if.end.i.i71.i.i:                                 ; preds = %land.lhs.true.i.i63.i.i
  %call.i.i.i64.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %offset.i.i, i32 noundef 8) #8
  %11 = call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i.i.i65.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i65.i.i to ptr
  %cpu_domain.i.i.i.i.i66.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i66.i.i) #4, !srcloc !159
  %and.i.i.i.i67.i.i = and i32 %13, -13
  %or.i.i.i.i68.i.i = or i32 %and.i.i.i.i67.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i68.i.i) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  %call1.i.i.i69.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %offset.i.i, ptr noundef nonnull %0, i32 noundef 8) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i69.i.i)
  %tobool4.not.i.i70.i.i = icmp eq i32 %call1.i.i.i69.i.i, 0
  br i1 %tobool4.not.i.i70.i.i, label %if.end.i.i71.i.i.if.end21.i.i_crit_edge, label %if.end.i.i71.i.i.if.then11.i.i75.i.i_crit_edge, !prof !125

if.end.i.i71.i.i.if.then11.i.i75.i.i_crit_edge:   ; preds = %if.end.i.i71.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i75.i.i

if.end.i.i71.i.i.if.end21.i.i_crit_edge:          ; preds = %if.end.i.i71.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i

if.then11.i.i75.i.i:                              ; preds = %if.end.i.i71.i.i.if.then11.i.i75.i.i_crit_edge, %land.lhs.true.i.i63.i.i.if.then11.i.i75.i.i_crit_edge, %if.then.i60.i.i.if.then11.i.i75.i.i_crit_edge
  %res.03.i.i72.i.i = phi i32 [ %call1.i.i.i69.i.i, %if.end.i.i71.i.i.if.then11.i.i75.i.i_crit_edge ], [ 8, %if.then.i60.i.i.if.then11.i.i75.i.i_crit_edge ], [ 8, %land.lhs.true.i.i63.i.i.if.then11.i.i75.i.i_crit_edge ]
  %sub.i.i73.i.i = sub i32 8, %res.03.i.i72.i.i
  %add.ptr.i.i74.i.i = getelementptr i8, ptr %offset.i.i, i32 %sub.i.i73.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i74.i.i, i32 0, i32 %res.03.i.i72.i.i)
  br label %__do_splice.exit.i

if.end21.i.i:                                     ; preds = %if.end.i.i71.i.i.if.end21.i.i_crit_edge, %if.end14.i.i.if.end21.i.i_crit_edge
  %__off_in.0.i.i = phi ptr [ null, %if.end14.i.i.if.end21.i.i_crit_edge ], [ %offset.i.i, %if.end.i.i71.i.i.if.end21.i.i_crit_edge ]
  %call22.i.i = call i32 @do_splice(ptr noundef nonnull %2, ptr noundef %__off_in.0.i.i, ptr noundef nonnull %3, ptr noundef %__off_out.0.i.i, i32 noundef %len, i32 noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %cmp.i.i = icmp slt i32 %call22.i.i, 0
  br i1 %cmp.i.i, label %if.end21.i.i.__do_splice.exit.i_crit_edge, label %if.end24.i.i

if.end21.i.i.__do_splice.exit.i_crit_edge:        ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_splice.exit.i

if.end24.i.i:                                     ; preds = %if.end21.i.i
  %tobool25.not.i.i = icmp eq ptr %__off_out.0.i.i, null
  br i1 %tobool25.not.i.i, label %if.end24.i.i.if.end30.i.i_crit_edge, label %if.then.i81.i.i

if.end24.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i.i

if.then.i81.i.i:                                  ; preds = %if.end24.i.i
  call void @__might_fault(ptr noundef nonnull @.str.40, i32 noundef 174) #8
  %call.i.i80.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i80.i.i, label %if.then.i81.i.i.__do_splice.exit.i_crit_edge, label %if.end.i.i84.i.i

if.then.i81.i.i.__do_splice.exit.i_crit_edge:     ; preds = %if.then.i81.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_splice.exit.i

if.end.i.i84.i.i:                                 ; preds = %if.then.i81.i.i
  %15 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1226833920) #12, !srcloc !162
  %asmresult.i.i82.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i82.i.i)
  %cmp.i.i83.i.i = icmp eq i32 %asmresult.i.i82.i.i, 0
  br i1 %cmp.i.i83.i.i, label %copy_to_user.exit.i.i, label %if.end.i.i84.i.i.__do_splice.exit.i_crit_edge

if.end.i.i84.i.i.__do_splice.exit.i_crit_edge:    ; preds = %if.end.i.i84.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_splice.exit.i

copy_to_user.exit.i.i:                            ; preds = %if.end.i.i84.i.i
  %call.i.i.i85.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %__off_out.0.i.i, i32 noundef 8) #8
  %call.i1.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %__off_out.0.i.i, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i.i)
  %tobool28.not.i.i = icmp eq i32 %call.i1.i.i.i.i, 0
  br i1 %tobool28.not.i.i, label %copy_to_user.exit.i.i.if.end30.i.i_crit_edge, label %copy_to_user.exit.i.i.__do_splice.exit.i_crit_edge

copy_to_user.exit.i.i.__do_splice.exit.i_crit_edge: ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_splice.exit.i

copy_to_user.exit.i.i.if.end30.i.i_crit_edge:     ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %copy_to_user.exit.i.i.if.end30.i.i_crit_edge, %if.end24.i.i.if.end30.i.i_crit_edge
  %tobool31.not.i.i = icmp eq ptr %__off_in.0.i.i, null
  br i1 %tobool31.not.i.i, label %if.end30.i.i.if.end36.i.i_crit_edge, label %if.then.i90.i.i

if.end30.i.i.if.end36.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i.i

if.then.i90.i.i:                                  ; preds = %if.end30.i.i
  call void @__might_fault(ptr noundef nonnull @.str.40, i32 noundef 174) #8
  %call.i.i89.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i89.i.i, label %if.then.i90.i.i.__do_splice.exit.i_crit_edge, label %if.end.i.i93.i.i

if.then.i90.i.i.__do_splice.exit.i_crit_edge:     ; preds = %if.then.i90.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_splice.exit.i

if.end.i.i93.i.i:                                 ; preds = %if.then.i90.i.i
  %16 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #12, !srcloc !162
  %asmresult.i.i91.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i91.i.i)
  %cmp.i.i92.i.i = icmp eq i32 %asmresult.i.i91.i.i, 0
  br i1 %cmp.i.i92.i.i, label %copy_to_user.exit98.i.i, label %if.end.i.i93.i.i.__do_splice.exit.i_crit_edge

if.end.i.i93.i.i.__do_splice.exit.i_crit_edge:    ; preds = %if.end.i.i93.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_splice.exit.i

copy_to_user.exit98.i.i:                          ; preds = %if.end.i.i93.i.i
  %call.i.i.i94.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %__off_in.0.i.i, i32 noundef 8) #8
  %call.i1.i.i95.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %__off_in.0.i.i, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i95.i.i)
  %tobool34.not.i.i = icmp eq i32 %call.i1.i.i95.i.i, 0
  br i1 %tobool34.not.i.i, label %copy_to_user.exit98.i.i.if.end36.i.i_crit_edge, label %copy_to_user.exit98.i.i.__do_splice.exit.i_crit_edge

copy_to_user.exit98.i.i.__do_splice.exit.i_crit_edge: ; preds = %copy_to_user.exit98.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_splice.exit.i

copy_to_user.exit98.i.i.if.end36.i.i_crit_edge:   ; preds = %copy_to_user.exit98.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %copy_to_user.exit98.i.i.if.end36.i.i_crit_edge, %if.end30.i.i.if.end36.i.i_crit_edge
  br label %__do_splice.exit.i

__do_splice.exit.i:                               ; preds = %if.end36.i.i, %copy_to_user.exit98.i.i.__do_splice.exit.i_crit_edge, %if.end.i.i93.i.i.__do_splice.exit.i_crit_edge, %if.then.i90.i.i.__do_splice.exit.i_crit_edge, %copy_to_user.exit.i.i.__do_splice.exit.i_crit_edge, %if.end.i.i84.i.i.__do_splice.exit.i_crit_edge, %if.then.i81.i.i.__do_splice.exit.i_crit_edge, %if.end21.i.i.__do_splice.exit.i_crit_edge, %if.then11.i.i75.i.i, %if.then11.i.i.i.i, %if.end.i.i.__do_splice.exit.i_crit_edge, %if.then18.i.__do_splice.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call22.i.i, %if.end36.i.i ], [ -29, %if.then18.i.__do_splice.exit.i_crit_edge ], [ -29, %if.end.i.i.__do_splice.exit.i_crit_edge ], [ %call22.i.i, %if.end21.i.i.__do_splice.exit.i_crit_edge ], [ -14, %copy_to_user.exit.i.i.__do_splice.exit.i_crit_edge ], [ -14, %copy_to_user.exit98.i.i.__do_splice.exit.i_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ -14, %if.then11.i.i75.i.i ], [ -14, %if.then.i81.i.i.__do_splice.exit.i_crit_edge ], [ -14, %if.end.i.i84.i.i.__do_splice.exit.i_crit_edge ], [ -14, %if.then.i90.i.i.__do_splice.exit.i_crit_edge ], [ -14, %if.end.i.i93.i.i.__do_splice.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset.i.i) #8
  %and.i.i = and i32 %call.i31.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i36.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i36.i, label %__do_splice.exit.i.if.end21.i_crit_edge, label %if.then.i.i

__do_splice.exit.i.if.end21.i_crit_edge:          ; preds = %__do_splice.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then.i.i:                                      ; preds = %__do_splice.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @fput(ptr noundef nonnull %3) #8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then.i.i, %__do_splice.exit.i.if.end21.i_crit_edge, %if.then14.i.if.end21.i_crit_edge
  %error.0.i = phi i32 [ -9, %if.then14.i.if.end21.i_crit_edge ], [ %retval.0.i.i, %__do_splice.exit.i.if.end21.i_crit_edge ], [ %retval.0.i.i, %if.then.i.i ]
  %and.i38.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38.i)
  %tobool.not.i39.i = icmp eq i32 %and.i38.i, 0
  br i1 %tobool.not.i39.i, label %if.end21.i.__do_sys_splice.exit_crit_edge, label %if.then.i40.i

if.end21.i.__do_sys_splice.exit_crit_edge:        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_splice.exit

if.then.i40.i:                                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @fput(ptr noundef nonnull %2) #8
  br label %__do_sys_splice.exit

__do_sys_splice.exit:                             ; preds = %if.then.i40.i, %if.end21.i.__do_sys_splice.exit_crit_edge, %if.end12.i.__do_sys_splice.exit_crit_edge, %if.end.i.__do_sys_splice.exit_crit_edge, %entry.__do_sys_splice.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.__do_sys_splice.exit_crit_edge ], [ -22, %if.end.i.__do_sys_splice.exit_crit_edge ], [ -9, %if.end12.i.__do_sys_splice.exit_crit_edge ], [ %error.0.i, %if.end21.i.__do_sys_splice.exit_crit_edge ], [ %error.0.i, %if.then.i40.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_tee(ptr noundef %in, ptr noundef %out, i32 noundef %len, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_pipe_info(ptr noundef %in, i1 noundef zeroext true) #8
  %call1 = tail call ptr @get_pipe_info(ptr noundef %out, i1 noundef zeroext true) #8
  %f_mode = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.rhs, !prof !130

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs:                                          ; preds = %entry
  %f_mode2 = getelementptr inbounds %struct.file, ptr %out, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode2, align 8
  %and3 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %lor.rhs.cleanup_crit_edge, label %if.end, !prof !130

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %tobool8.not = icmp eq ptr %call, null
  %tobool9.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool8.not, i1 true, i1 %tobool9.not
  %cmp.not = icmp eq ptr %call, %call1
  %or.cond45 = select i1 %or.cond, i1 true, i1 %cmp.not
  br i1 %or.cond45, label %if.end.cleanup_crit_edge, label %if.then11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %f_flags12 = getelementptr inbounds %struct.file, ptr %out, i32 0, i32 7
  %6 = ptrtoint ptr %f_flags12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags12, align 4
  %or = or i32 %7, %5
  %and13 = lshr i32 %or, 10
  %8 = and i32 %and13, 2
  %9 = or i32 %8, %flags
  %head.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.i.i = icmp eq i32 %11, %13
  br i1 %cmp.i.i, label %if.end.i, label %if.then11.if.then20_crit_edge

if.then11.if.then20_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.end.i:                                         ; preds = %if.then11
  tail call void @pipe_lock(ptr noundef nonnull %call) #8
  %writers.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call, i32 0, i32 10
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %head.i, align 4
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.i2124.i = icmp eq i32 %15, %17
  br i1 %cmp.i2124.i, label %while.body.lr.ph.i, label %if.end.i.ipipe_prep.exit.thread56_crit_edge

if.end.i.ipipe_prep.exit.thread56_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipipe_prep.exit.thread56

while.body.lr.ph.i:                               ; preds = %if.end.i
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp ne i32 %and.i, 0
  br label %while.body.i

while.body.i:                                     ; preds = %if.end13.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stack.i.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %while.body.i.ipipe_prep.exit_crit_edge, !prof !125

while.body.i.ipipe_prep.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipipe_prep.exit

signal_pending.exit.i:                            ; preds = %while.body.i
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %23, align 4
  %and1.i.i.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %signal_pending.exit.i.ipipe_prep.exit_crit_edge

signal_pending.exit.i.ipipe_prep.exit_crit_edge:  ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipipe_prep.exit

if.end7.i:                                        ; preds = %signal_pending.exit.i
  %29 = ptrtoint ptr %writers.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %writers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool8.not.i = icmp eq i32 %30, 0
  %brmerge.i = or i1 %tobool11.not.i, %tobool8.not.i
  br i1 %brmerge.i, label %while.end.loopexit.split.loop.exit33.i, label %if.end13.i

if.end13.i:                                       ; preds = %if.end7.i
  tail call void @pipe_wait_readable(ptr noundef %call) #8
  %31 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %head.i, align 4
  %33 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tail.i, align 4
  %cmp.i21.i = icmp eq i32 %32, %34
  br i1 %cmp.i21.i, label %if.end13.i.while.body.i_crit_edge, label %if.end13.i.ipipe_prep.exit.thread56_crit_edge

if.end13.i.ipipe_prep.exit.thread56_crit_edge:    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipipe_prep.exit.thread56

if.end13.i.while.body.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.loopexit.split.loop.exit33.i:           ; preds = %if.end7.i
  br i1 %tobool8.not.i, label %while.end.loopexit.split.loop.exit33.i.ipipe_prep.exit.thread56_crit_edge, label %while.end.loopexit.split.loop.exit33.i.ipipe_prep.exit_crit_edge

while.end.loopexit.split.loop.exit33.i.ipipe_prep.exit_crit_edge: ; preds = %while.end.loopexit.split.loop.exit33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipipe_prep.exit

while.end.loopexit.split.loop.exit33.i.ipipe_prep.exit.thread56_crit_edge: ; preds = %while.end.loopexit.split.loop.exit33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipipe_prep.exit.thread56

ipipe_prep.exit.thread56:                         ; preds = %while.end.loopexit.split.loop.exit33.i.ipipe_prep.exit.thread56_crit_edge, %if.end13.i.ipipe_prep.exit.thread56_crit_edge, %if.end.i.ipipe_prep.exit.thread56_crit_edge
  tail call void @pipe_unlock(ptr noundef %call) #8
  br label %if.then20

ipipe_prep.exit:                                  ; preds = %while.end.loopexit.split.loop.exit33.i.ipipe_prep.exit_crit_edge, %signal_pending.exit.i.ipipe_prep.exit_crit_edge, %while.body.i.ipipe_prep.exit_crit_edge
  %ret.0.i = phi i32 [ -11, %while.end.loopexit.split.loop.exit33.i.ipipe_prep.exit_crit_edge ], [ -512, %signal_pending.exit.i.ipipe_prep.exit_crit_edge ], [ -512, %while.body.i.ipipe_prep.exit_crit_edge ]
  tail call void @pipe_unlock(ptr noundef %call) #8
  br label %cleanup

if.then20:                                        ; preds = %ipipe_prep.exit.thread56, %if.then11.if.then20_crit_edge
  %call21 = tail call fastcc i32 @opipe_prep(ptr noundef nonnull %call1, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %if.then20
  tail call void @pipe_double_lock(ptr noundef %call, ptr noundef %call1) #8
  %35 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tail.i, align 4
  %ring_size.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call, i32 0, i32 6
  %37 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ring_size.i, align 4
  %sub.i = add i32 %38, -1
  %head.i47 = getelementptr inbounds %struct.pipe_inode_info, ptr %call1, i32 0, i32 3
  %39 = ptrtoint ptr %head.i47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %head.i47, align 4
  %ring_size1.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call1, i32 0, i32 6
  %41 = ptrtoint ptr %ring_size1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ring_size1.i, align 4
  %sub2.i = add i32 %42, -1
  %readers.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call1, i32 0, i32 9
  %tail8.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call1, i32 0, i32 4
  %max_usage.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call1, i32 0, i32 5
  %bufs.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call, i32 0, i32 18
  %bufs13.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call1, i32 0, i32 18
  br label %do.body.i

do.body.i:                                        ; preds = %if.end29.i.do.body.i_crit_edge, %if.then23
  %len.addr.0.i = phi i32 [ %len, %if.then23 ], [ %sub32.i, %if.end29.i.do.body.i_crit_edge ]
  %o_head.0.i = phi i32 [ %40, %if.then23 ], [ %inc.i, %if.end29.i.do.body.i_crit_edge ]
  %i_tail.0.i = phi i32 [ %36, %if.then23 ], [ %inc34.i, %if.end29.i.do.body.i_crit_edge ]
  %ret.0.i48 = phi i32 [ 0, %if.then23 ], [ %add.i, %if.end29.i.do.body.i_crit_edge ]
  %43 = ptrtoint ptr %readers.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %readers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i49 = icmp eq i32 %44, 0
  br i1 %tobool.not.i49, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i50 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i50 to ptr
  %task.i51 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task.i51 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task.i51, align 8
  %call3.i = tail call i32 @send_sig(i32 noundef 13, ptr noundef %48, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i48)
  %tobool4.not.i = icmp eq i32 %ret.0.i48, 0
  %spec.select = select i1 %tobool4.not.i, i32 -32, i32 %ret.0.i48
  br label %do.end.i

if.end6.i:                                        ; preds = %do.body.i
  %49 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %i_tail.0.i)
  %cmp.i.i52 = icmp eq i32 %50, %i_tail.0.i
  br i1 %cmp.i.i52, label %if.end6.i.do.end.i_crit_edge, label %lor.lhs.false.i

if.end6.i.do.end.i_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %51 = ptrtoint ptr %tail8.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tail8.i, align 4
  %53 = ptrtoint ptr %max_usage.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_usage.i, align 4
  %sub.i.i.i = sub i32 %o_head.0.i, %52
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %54)
  %cmp.i1.not.i = icmp ult i32 %sub.i.i.i, %54
  br i1 %cmp.i1.not.i, label %if.end12.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end12.i:                                       ; preds = %lor.lhs.false.i
  %55 = ptrtoint ptr %bufs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bufs.i, align 4
  %and.i53 = and i32 %i_tail.0.i, %sub.i
  %arrayidx.i = getelementptr %struct.pipe_buffer, ptr %56, i32 %and.i53
  %57 = ptrtoint ptr %bufs13.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bufs13.i, align 4
  %ops.i.i = getelementptr %struct.pipe_buffer, ptr %56, i32 %and.i53, i32 3
  %59 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i.i, align 4
  %get.i.i = getelementptr inbounds %struct.pipe_buf_operations, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %get.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %get.i.i, align 4
  %call.i.i = tail call zeroext i1 %62(ptr noundef %call, ptr noundef %arrayidx.i) #8
  br i1 %call.i.i, label %if.end20.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i48)
  %cmp.i = icmp eq i32 %ret.0.i48, 0
  %spec.select73 = select i1 %cmp.i, i32 -14, i32 %ret.0.i48
  br label %do.end.i

if.end20.i:                                       ; preds = %if.end12.i
  %and14.i = and i32 %o_head.0.i, %sub2.i
  %arrayidx15.i = getelementptr %struct.pipe_buffer, ptr %58, i32 %and14.i
  %63 = call ptr @memcpy(ptr %arrayidx15.i, ptr %arrayidx.i, i32 24)
  %flags21.i = getelementptr %struct.pipe_buffer, ptr %58, i32 %and14.i, i32 4
  %64 = ptrtoint ptr %flags21.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags21.i, align 4
  %and24.i = and i32 %65, -21
  store i32 %and24.i, ptr %flags21.i, align 4
  %len25.i = getelementptr %struct.pipe_buffer, ptr %58, i32 %and14.i, i32 2
  %66 = ptrtoint ptr %len25.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len25.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %len.addr.0.i)
  %cmp26.i = icmp ugt i32 %67, %len.addr.0.i
  br i1 %cmp26.i, label %if.then27.i, label %if.end20.i.if.end29.i_crit_edge

if.end20.i.if.end29.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then27.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %len25.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %len.addr.0.i, ptr %len25.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %if.end20.i.if.end29.i_crit_edge
  %69 = ptrtoint ptr %len25.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len25.i, align 4
  %add.i = add i32 %70, %ret.0.i48
  %sub32.i = sub i32 %len.addr.0.i, %70
  %inc.i = add i32 %o_head.0.i, 1
  %71 = ptrtoint ptr %head.i47 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %inc.i, ptr %head.i47, align 4
  %inc34.i = add i32 %i_tail.0.i, 1
  %tobool35.not.i = icmp eq i32 %sub32.i, 0
  br i1 %tobool35.not.i, label %if.end29.i.do.end.i_crit_edge, label %if.end29.i.do.body.i_crit_edge

if.end29.i.do.body.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end29.i.do.end.i_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.end29.i.do.end.i_crit_edge, %if.then17.i, %lor.lhs.false.i.do.end.i_crit_edge, %if.end6.i.do.end.i_crit_edge, %if.then.i
  %ret.1.i = phi i32 [ %spec.select73, %if.then17.i ], [ %spec.select, %if.then.i ], [ %ret.0.i48, %if.end6.i.do.end.i_crit_edge ], [ %ret.0.i48, %lor.lhs.false.i.do.end.i_crit_edge ], [ %add.i, %if.end29.i.do.end.i_crit_edge ]
  tail call void @pipe_unlock(ptr noundef %call) #8
  tail call void @pipe_unlock(ptr noundef %call1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp36.i = icmp sgt i32 %ret.1.i, 0
  br i1 %cmp36.i, label %if.then37.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then37.i:                                      ; preds = %do.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !140
  %head.i.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call1, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq ptr %73, %head.i.i.i
  br i1 %cmp.i.i.not.i.i, label %if.then37.i.wakeup_pipe_readers.exit.i_crit_edge, label %if.then.i.i

if.then37.i.wakeup_pipe_readers.exit.i_crit_edge: ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wakeup_pipe_readers.exit.i

if.then.i.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  %rd_wait.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call1, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %rd_wait.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %wakeup_pipe_readers.exit.i

wakeup_pipe_readers.exit.i:                       ; preds = %if.then.i.i, %if.then37.i.wakeup_pipe_readers.exit.i_crit_edge
  %fasync_readers.i.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call1, i32 0, i32 16
  tail call void @kill_fasync(ptr noundef %fasync_readers.i.i, i32 noundef 29, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %wakeup_pipe_readers.exit.i, %do.end.i.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %ipipe_prep.exit, %if.end.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %lor.rhs.cleanup_crit_edge ], [ %ret.0.i, %ipipe_prep.exit ], [ %call21, %if.then20.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -9, %entry.cleanup_crit_edge ], [ %ret.1.i, %do.end.i.cleanup_crit_edge ], [ %ret.1.i, %wakeup_pipe_readers.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @opipe_prep(ptr noundef %pipe, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %head = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 3
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 4
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail, align 4
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 5
  %4 = ptrtoint ptr %max_usage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_usage, align 4
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %5)
  %cmp.i.not = icmp ult i32 %sub.i.i, %5
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pipe_lock(ptr noundef %pipe) #8
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head, align 4
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail, align 4
  %10 = ptrtoint ptr %max_usage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_usage, align 4
  %sub.i.i2732 = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i2732, i32 %11)
  %cmp.i28.not33 = icmp ult i32 %sub.i.i2732, %11
  br i1 %cmp.i28.not33, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %readers = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 9
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br label %while.body

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.body.lr.ph
  %12 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %readers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.then5, label %if.end8

if.then5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %call7 = tail call i32 @send_sig(i32 noundef 13, ptr noundef %17, i32 noundef 0) #8
  br label %while.end

if.end8:                                          ; preds = %while.body
  br i1 %tobool9.not, label %if.end11, label %if.end8.while.end_crit_edge

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end11:                                         ; preds = %if.end8
  %18 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i29 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i29 to ptr
  %task13 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task13, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stack.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end11.while.end_crit_edge, !prof !125

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

signal_pending.exit:                              ; preds = %if.end11
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %23, align 4
  %and1.i.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool15.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool15.not, label %if.end17, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end17:                                         ; preds = %signal_pending.exit
  tail call void @pipe_wait_writable(ptr noundef %pipe) #8
  %29 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %head, align 4
  %31 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tail, align 4
  %33 = ptrtoint ptr %max_usage to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_usage, align 4
  %sub.i.i27 = sub i32 %30, %32
  %cmp.i28.not = icmp ult i32 %sub.i.i27, %34
  br i1 %cmp.i28.not, label %if.end17.while.end_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %signal_pending.exit.while.end_crit_edge, %if.end11.while.end_crit_edge, %if.end8.while.end_crit_edge, %if.then5, %if.end.while.end_crit_edge
  %ret.0 = phi i32 [ -32, %if.then5 ], [ 0, %if.end.while.end_crit_edge ], [ 0, %if.end17.while.end_crit_edge ], [ -11, %if.end8.while.end_crit_edge ], [ -512, %signal_pending.exit.while.end_crit_edge ], [ -512, %if.end11.while.end_crit_edge ]
  tail call void @pipe_unlock(ptr noundef %pipe) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %while.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_tee(i32 noundef %fdin, i32 noundef %fdout, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %flags)
  %tobool.not.i = icmp ult i32 %flags, 16
  br i1 %tobool.not.i, label %if.end.i, label %entry.__do_sys_tee.exit_crit_edge, !prof !125

entry.__do_sys_tee.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_tee.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool3.not.i = icmp eq i32 %len, 0
  br i1 %tobool3.not.i, label %if.end.i.__do_sys_tee.exit_crit_edge, label %if.end13.i, !prof !130

if.end.i.__do_sys_tee.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_tee.exit

if.end13.i:                                       ; preds = %if.end.i
  %call.i.i = tail call i32 @__fdget(i32 noundef %fdin) #8, !noalias !163
  %and.i.i.i = and i32 %call.i.i, -4
  %0 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool14.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool14.not.i, label %if.end13.i.__do_sys_tee.exit_crit_edge, label %if.then15.i

if.end13.i.__do_sys_tee.exit_crit_edge:           ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_tee.exit

if.then15.i:                                      ; preds = %if.end13.i
  %call.i32.i = tail call i32 @__fdget(i32 noundef %fdout) #8, !noalias !166
  %and.i.i33.i = and i32 %call.i32.i, -4
  %1 = inttoptr i32 %and.i.i33.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i33.i)
  %tobool18.not.i = icmp eq i32 %and.i.i33.i, 0
  br i1 %tobool18.not.i, label %if.then15.i.if.end22.i_crit_edge, label %if.then19.i

if.then15.i.if.end22.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then19.i:                                      ; preds = %if.then15.i
  %call.i = tail call i32 @do_tee(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %len, i32 noundef %flags) #8
  %and.i.i = and i32 %call.i32.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then19.i.if.end22.i_crit_edge, label %if.then.i.i

if.then19.i.if.end22.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then.i.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fput(ptr noundef nonnull %1) #8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then.i.i, %if.then19.i.if.end22.i_crit_edge, %if.then15.i.if.end22.i_crit_edge
  %error.0.i = phi i32 [ -9, %if.then15.i.if.end22.i_crit_edge ], [ %call.i, %if.then19.i.if.end22.i_crit_edge ], [ %call.i, %if.then.i.i ]
  %and.i36.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.i)
  %tobool.not.i37.i = icmp eq i32 %and.i36.i, 0
  br i1 %tobool.not.i37.i, label %if.end22.i.__do_sys_tee.exit_crit_edge, label %if.then.i38.i

if.end22.i.__do_sys_tee.exit_crit_edge:           ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_tee.exit

if.then.i38.i:                                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fput(ptr noundef nonnull %0) #8
  br label %__do_sys_tee.exit

__do_sys_tee.exit:                                ; preds = %if.then.i38.i, %if.end22.i.__do_sys_tee.exit_crit_edge, %if.end13.i.__do_sys_tee.exit_crit_edge, %if.end.i.__do_sys_tee.exit_crit_edge, %entry.__do_sys_tee.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__do_sys_tee.exit_crit_edge ], [ 0, %if.end.i.__do_sys_tee.exit_crit_edge ], [ -9, %if.end13.i.__do_sys_tee.exit_crit_edge ], [ %error.0.i, %if.end22.i.__do_sys_tee.exit_crit_edge ], [ %error.0.i, %if.then.i38.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_release_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_mapping(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_wait_readable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @warn_unsupported(ptr noundef %file, ptr noundef %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @warn_unsupported.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@warn_unsupported, %land.lhs.true)) #8
          to label %do.end [label %land.lhs.true], !srcloc !135

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @warn_unsupported._rs, ptr noundef nonnull @.str.17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 101
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @warn_unsupported.descriptor, ptr noundef nonnull @.str.18, ptr noundef %op, ptr noundef %file, i32 noundef %5, ptr noundef %comm) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true.do.end_crit_edge, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_wait_writable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_iovec(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iter_to_pipe(ptr noundef %from, ptr noundef %pipe, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %buf = alloca %struct.pipe_buffer, align 4
  %pages = alloca [16 x ptr], align 4
  %start = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf) #8
  %0 = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 5
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %buf, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @user_page_pipe_buf_ops, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %flags, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %4, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not83 = icmp eq i32 %12, 0
  br i1 %tobool.not83, label %entry.while.end.thread_crit_edge, label %while.body.lr.ph

entry.while.end.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.thread

while.body.lr.ph:                                 ; preds = %entry
  %head1.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 3
  %ring_size.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 6
  %readers.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 9
  %tail2.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 4
  %max_usage.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 5
  %bufs.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 18
  br label %while.body

while.body:                                       ; preds = %for.cond.cleanup_crit_edge.while.body_crit_edge, %while.body.lr.ph
  %total.086 = phi i32 [ 0, %while.body.lr.ph ], [ %total.2, %for.cond.cleanup_crit_edge.while.body_crit_edge ]
  %ret.084 = phi i32 [ 0, %while.body.lr.ph ], [ %ret.2, %for.cond.cleanup_crit_edge.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pages) #8
  %13 = call ptr @memset(ptr %pages, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #8
  %14 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %start, align 4, !annotation !139
  %call3 = call i32 @iov_iter_get_pages(ptr noundef %from, ptr noundef nonnull %pages, i32 noundef -1, i32 noundef 16, ptr noundef nonnull %start) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp = icmp slt i32 %call3, 1
  br i1 %cmp, label %cleanup.thread, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pages) #8
  br label %while.end

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %while.body.for.body_crit_edge
  %total.180 = phi i32 [ %total.2, %if.end20.for.body_crit_edge ], [ %total.086, %while.body.for.body_crit_edge ]
  %n.078 = phi i32 [ %inc, %if.end20.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  %copied.077 = phi i32 [ %sub21, %if.end20.for.body_crit_edge ], [ %call3, %while.body.for.body_crit_edge ]
  %failed.1.off076 = phi i1 [ %failed.2.off0, %if.end20.for.body_crit_edge ], [ false, %while.body.for.body_crit_edge ]
  %ret.175 = phi i32 [ %ret.2, %if.end20.for.body_crit_edge ], [ %ret.084, %while.body.for.body_crit_edge ]
  %15 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %start, align 4
  %sub = sub i32 4096, %16
  %17 = call i32 @llvm.smin.i32(i32 %copied.077, i32 %sub)
  %arrayidx19 = getelementptr [16 x ptr], ptr %pages, i32 0, i32 %n.078
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx19, align 4
  br i1 %failed.1.off076, label %if.else18, label %if.then7

if.then7:                                         ; preds = %for.body
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %buf, align 4
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %16, ptr %0, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %17, ptr %1, align 4
  %23 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %head1.i, align 4
  %25 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ring_size.i, align 4
  %sub.i = add i32 %26, -1
  %27 = ptrtoint ptr %readers.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %readers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i, !prof !130

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %29 = call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i, align 8
  %call6.i = call i32 @send_sig(i32 noundef 13, ptr noundef %32, i32 noundef 0) #8
  br label %add_to_pipe.exit.thread

if.else.i:                                        ; preds = %if.then7
  %33 = ptrtoint ptr %tail2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tail2.i, align 4
  %35 = ptrtoint ptr %max_usage.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_usage.i, align 4
  %sub.i.i.i = sub i32 %24, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %36)
  %cmp.i.not.i = icmp ult i32 %sub.i.i.i, %36
  br i1 %cmp.i.not.i, label %add_to_pipe.exit, label %if.else.i.add_to_pipe.exit.thread_crit_edge

if.else.i.add_to_pipe.exit.thread_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_to_pipe.exit.thread

add_to_pipe.exit.thread:                          ; preds = %if.else.i.add_to_pipe.exit.thread_crit_edge, %if.then.i
  %ret.0.i = phi i32 [ -32, %if.then.i ], [ -11, %if.else.i.add_to_pipe.exit.thread_crit_edge ]
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  %release.i.i = getelementptr inbounds %struct.pipe_buf_operations, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %release.i.i, align 4
  call void %40(ptr noundef %pipe, ptr noundef nonnull %buf) #8
  br label %if.end20

add_to_pipe.exit:                                 ; preds = %if.else.i
  %41 = ptrtoint ptr %bufs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bufs.i, align 4
  %and.i = and i32 %sub.i, %24
  %arrayidx.i = getelementptr %struct.pipe_buffer, ptr %42, i32 %and.i
  %43 = call ptr @memcpy(ptr %arrayidx.i, ptr %buf, i32 24)
  %add.i = add i32 %24, 1
  %44 = ptrtoint ptr %head1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add.i, ptr %head1.i, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp12 = icmp slt i32 %46, 0
  br i1 %cmp12, label %add_to_pipe.exit.if.end20_crit_edge, label %if.else, !prof !130

add_to_pipe.exit.if.end20_crit_edge:              ; preds = %add_to_pipe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else:                                          ; preds = %add_to_pipe.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @iov_iter_advance(ptr noundef %from, i32 noundef %46) #8
  %add = add i32 %46, %total.180
  br label %if.end20

if.else18:                                        ; preds = %for.body
  %47 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  %and.i.i57 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i57)
  %tobool.not.i.i = icmp eq i32 %and.i.i57, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !125

if.then.i.i:                                      ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %49, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %19 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %50, %if.end.i.i ]
  %51 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %52 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i.i.i.i = icmp eq i32 %53, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !130

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %54, ptr noundef nonnull @.str.13) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !131
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !132
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %55 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !133
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %55, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@iter_to_pipe, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !135

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %51, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end20_crit_edge

folio_put_testzero.exit.i.i.if.end20_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %51) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end20_crit_edge, %if.else, %add_to_pipe.exit.if.end20_crit_edge, %add_to_pipe.exit.thread
  %ret.2 = phi i32 [ %46, %if.else ], [ %46, %add_to_pipe.exit.if.end20_crit_edge ], [ %ret.0.i, %add_to_pipe.exit.thread ], [ %ret.175, %folio_put_testzero.exit.i.i.if.end20_crit_edge ], [ %ret.175, %if.then.i4.i ]
  %failed.2.off0 = phi i1 [ false, %if.else ], [ true, %add_to_pipe.exit.if.end20_crit_edge ], [ true, %add_to_pipe.exit.thread ], [ true, %folio_put_testzero.exit.i.i.if.end20_crit_edge ], [ true, %if.then.i4.i ]
  %total.2 = phi i32 [ %add, %if.else ], [ %total.180, %add_to_pipe.exit.if.end20_crit_edge ], [ %total.180, %add_to_pipe.exit.thread ], [ %total.180, %folio_put_testzero.exit.i.i.if.end20_crit_edge ], [ %total.180, %if.then.i4.i ]
  %sub21 = sub i32 %copied.077, %17
  %inc = add i32 %n.078, 1
  %56 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %start, align 4
  %tobool4.not = icmp eq i32 %sub21, 0
  br i1 %tobool4.not, label %for.cond.cleanup_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %if.end20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pages) #8
  %57 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not = icmp eq i32 %58, 0
  %brmerge = or i1 %tobool.not, %failed.2.off0
  br i1 %brmerge, label %for.cond.cleanup_crit_edge.while.end_crit_edge, label %for.cond.cleanup_crit_edge.while.body_crit_edge

for.cond.cleanup_crit_edge.while.body_crit_edge:  ; preds = %for.cond.cleanup_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

for.cond.cleanup_crit_edge.while.end_crit_edge:   ; preds = %for.cond.cleanup_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %for.cond.cleanup_crit_edge.while.end_crit_edge, %cleanup.thread
  %total.070 = phi i32 [ %total.086, %cleanup.thread ], [ %total.2, %for.cond.cleanup_crit_edge.while.end_crit_edge ]
  %ret.4 = phi i32 [ %call3, %cleanup.thread ], [ %ret.2, %for.cond.cleanup_crit_edge.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total.070)
  %tobool25.not = icmp eq i32 %total.070, 0
  br i1 %tobool25.not, label %while.end.while.end.thread_crit_edge, label %while.end._crit_edge

while.end._crit_edge:                             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %59

while.end.while.end.thread_crit_edge:             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.thread

while.end.thread:                                 ; preds = %while.end.while.end.thread_crit_edge, %entry.while.end.thread_crit_edge
  %ret.496 = phi i32 [ %ret.4, %while.end.while.end.thread_crit_edge ], [ 0, %entry.while.end.thread_crit_edge ]
  br label %59

59:                                               ; preds = %while.end.thread, %while.end._crit_edge
  %60 = phi i32 [ %ret.496, %while.end.thread ], [ %total.070, %while.end._crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf) #8
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_get_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @user_page_pipe_buf_try_steal(ptr noundef %pipe, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %1, 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %flags, align 4
  %call = tail call zeroext i1 @generic_pipe_buf_try_steal(ptr noundef %pipe, ptr noundef %buf) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipe_to_user(ptr nocapture noundef readnone %pipe, ptr nocapture noundef readonly %buf, ptr nocapture noundef readonly %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %offset = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %len = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %u = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 3
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %u, align 4
  %call = tail call i32 @copy_page_to_iter(ptr noundef %1, i32 noundef %3, i32 noundef %5, ptr noundef %7) #8
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %9)
  %cmp = icmp eq i32 %call, %9
  %spec.select = select i1 %cmp, i32 %call, i32 -14
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_to_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_double_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !54, !55, !56, !57, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !74, !75, !77, !79, !80, !81, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !106, !107, !109, !111, !112, !113, !114}
!llvm.named.register.sp = !{!115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @page_cache_pipe_buf_ops, !1, !"page_cache_pipe_buf_ops", i1 false, i1 false}
!1 = !{!"../fs/splice.c", i32 140, i32 34}
!2 = !{ptr @__ksymtab_splice_to_pipe, !3, !"__ksymtab_splice_to_pipe", i1 false, i1 false}
!3 = !{!"../fs/splice.c", i32 228, i32 1}
!4 = !{ptr @__ksymtab_add_to_pipe, !5, !"__ksymtab_add_to_pipe", i1 false, i1 false}
!5 = !{!"../fs/splice.c", i32 250, i32 1}
!6 = !{ptr @__ksymtab_generic_file_splice_read, !7, !"__ksymtab_generic_file_splice_read", i1 false, i1 false}
!7 = !{!"../fs/splice.c", i32 329, i32 1}
!8 = !{ptr @default_pipe_buf_ops, !9, !"default_pipe_buf_ops", i1 false, i1 false}
!9 = !{!"../fs/splice.c", i32 331, i32 34}
!10 = !{ptr @nosteal_pipe_buf_ops, !11, !"nosteal_pipe_buf_ops", i1 false, i1 false}
!11 = !{!"../fs/splice.c", i32 338, i32 34}
!12 = !{ptr @__ksymtab_nosteal_pipe_buf_ops, !13, !"__ksymtab_nosteal_pipe_buf_ops", i1 false, i1 false}
!13 = !{!"../fs/splice.c", i32 342, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/splice.c", i32 559, i32 3}
!16 = !{ptr @__ksymtab___splice_from_pipe, !17, !"__ksymtab___splice_from_pipe", i1 false, i1 false}
!17 = !{!"../fs/splice.c", i32 568, i32 1}
!18 = !{ptr @__ksymtab_iter_file_splice_write, !19, !"__ksymtab_iter_file_splice_write", i1 false, i1 false}
!19 = !{!"../fs/splice.c", i32 728, i32 1}
!20 = !{ptr @__ksymtab_generic_splice_sendpage, !21, !"__ksymtab_generic_splice_sendpage", i1 false, i1 false}
!21 = !{!"../fs/splice.c", i32 749, i32 1}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../fs/splice.c", i32 864, i32 2}
!24 = !{ptr @__ksymtab_splice_direct_to_actor, !25, !"__ksymtab_splice_direct_to_actor", i1 false, i1 false}
!25 = !{!"../fs/splice.c", i32 929, i32 1}
!26 = !{ptr @__ksymtab_do_splice_direct, !27, !"__ksymtab_do_splice_direct", i1 false, i1 false}
!27 = !{!"../fs/splice.c", i32 985, i32 1}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/splice.c", i32 1296, i32 1}
!30 = !{ptr @event_enter__vmsplice, !29, !"event_enter__vmsplice", i1 false, i1 false}
!31 = !{ptr @__event_enter__vmsplice, !29, !"__event_enter__vmsplice", i1 false, i1 false}
!32 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @event_exit__vmsplice, !29, !"event_exit__vmsplice", i1 false, i1 false}
!34 = !{ptr @__event_exit__vmsplice, !29, !"__event_exit__vmsplice", i1 false, i1 false}
!35 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @__syscall_meta__vmsplice, !29, !"__syscall_meta__vmsplice", i1 false, i1 false}
!37 = !{ptr @__p_syscall_meta__vmsplice, !29, !"__p_syscall_meta__vmsplice", i1 false, i1 false}
!38 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/splice.c", i32 1332, i32 1}
!40 = !{ptr @event_enter__splice, !39, !"event_enter__splice", i1 false, i1 false}
!41 = !{ptr @__event_enter__splice, !39, !"__event_enter__splice", i1 false, i1 false}
!42 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @event_exit__splice, !39, !"event_exit__splice", i1 false, i1 false}
!44 = !{ptr @__event_exit__splice, !39, !"__event_exit__splice", i1 false, i1 false}
!45 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__syscall_meta__splice, !39, !"__syscall_meta__splice", i1 false, i1 false}
!47 = !{ptr @__p_syscall_meta__splice, !39, !"__p_syscall_meta__splice", i1 false, i1 false}
!48 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/splice.c", i32 1698, i32 1}
!50 = !{ptr @event_enter__tee, !49, !"event_enter__tee", i1 false, i1 false}
!51 = !{ptr @__event_enter__tee, !49, !"__event_enter__tee", i1 false, i1 false}
!52 = !{ptr @.str.8, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @event_exit__tee, !49, !"event_exit__tee", i1 false, i1 false}
!54 = !{ptr @__event_exit__tee, !49, !"__event_exit__tee", i1 false, i1 false}
!55 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @__syscall_meta__tee, !49, !"__syscall_meta__tee", i1 false, i1 false}
!57 = !{ptr @__p_syscall_meta__tee, !49, !"__p_syscall_meta__tee", i1 false, i1 false}
!58 = !{ptr @.str.10, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!62 = !{ptr @.str.12, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!64 = !{ptr @.str.13, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/mm.h", i32 717, i32 2}
!66 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/splice.c", i32 795, i32 31}
!68 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/splice.c", i32 753, i32 2}
!70 = !{ptr @warn_unsupported._rs, !69, !"_rs", i1 false, i1 false}
!71 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @warn_unsupported.descriptor, !69, !"descriptor", i1 false, i1 false}
!75 = !{ptr @.str.19, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!79 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/splice.c", i32 766, i32 32}
!83 = !{ptr @.str.23, !29, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.24, !29, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.25, !29, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.26, !29, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @types__vmsplice, !29, !"types__vmsplice", i1 false, i1 false}
!88 = !{ptr @.str.27, !29, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.28, !29, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.29, !29, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.30, !29, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @args__vmsplice, !29, !"args__vmsplice", i1 false, i1 false}
!93 = !{ptr @user_page_pipe_buf_ops, !94, !"user_page_pipe_buf_ops", i1 false, i1 false}
!94 = !{!"../fs/splice.c", i32 157, i32 41}
!95 = !{ptr @.str.31, !39, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.32, !39, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @types__splice, !39, !"types__splice", i1 false, i1 false}
!98 = !{ptr @.str.33, !39, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.34, !39, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.35, !39, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.36, !39, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.37, !39, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @args__splice, !39, !"args__splice", i1 false, i1 false}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!106 = distinct !{null, !105, !"<string literal>", i1 false, i1 false}
!107 = distinct !{null, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!109 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!111 = !{ptr @types__tee, !49, !"types__tee", i1 false, i1 false}
!112 = !{ptr @.str.41, !49, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.42, !49, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @args__tee, !49, !"args__tee", i1 false, i1 false}
!115 = !{!"sp"}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i64 2150616754, i64 2150617245, i64 2150616791, i64 2150616847, i64 2150616881, i64 2150616905, i64 2150616946, i64 2150616967, i64 2150616995, i64 2150617029}
!127 = !{i64 2151366646}
!128 = !{i64 2148716867, i64 2148716899, i64 2148716928, i64 2148716962, i64 2148716993, i64 2148717016}
!129 = !{i64 2148805972}
!130 = !{!"branch_weights", i32 1, i32 2000}
!131 = !{i64 2153183295, i64 2153183778, i64 2153183332, i64 2153183388, i64 2153183422, i64 2153183446, i64 2153183487, i64 2153183508, i64 2153183536, i64 2153183570}
!132 = !{i64 2148796485}
!133 = !{i64 2148711194, i64 2148711226, i64 2148711255, i64 2148711289, i64 2148711320, i64 2148711343}
!134 = !{i64 2148796714}
!135 = !{i64 2148532607, i64 2148532612, i64 2148532625, i64 2148532669, i64 2148532703, i64 2148532724}
!136 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!137 = !{i8 0, i8 2}
!138 = !{i64 2155512598}
!139 = !{!"auto-init"}
!140 = !{i64 2155502899}
!141 = !{i64 2152391151}
!142 = !{i64 1112689, i64 1112750}
!143 = !{i64 1115421}
!144 = !{i64 1115706}
!145 = !{i64 2152400001}
!146 = !{i64 2152409955}
!147 = !{i64 2152419450}
!148 = !{i64 2152428927}
!149 = !{!150}
!150 = distinct !{!150, !151, !"fdget: %agg.result"}
!151 = distinct !{!151, !"fdget"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"fdget: %agg.result"}
!154 = distinct !{!154, !"fdget"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"fdget: %agg.result"}
!157 = distinct !{!157, !"fdget"}
!158 = !{i64 2152220488, i64 2152220513}
!159 = !{i64 4716043}
!160 = !{i64 4716240}
!161 = !{i64 2152201473}
!162 = !{i64 2152221169, i64 2152221194}
!163 = !{!164}
!164 = distinct !{!164, !165, !"fdget: %agg.result"}
!165 = distinct !{!165, !"fdget"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"fdget: %agg.result"}
!168 = distinct !{!168, !"fdget"}
